package sdktest

import (
	"encoding/json"
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"testing"
	"time"

	sdk "github.com/voxgig-sdk/rest-countries-sdk/go"
	"github.com/voxgig-sdk/rest-countries-sdk/go/core"

	vs "github.com/voxgig-sdk/rest-countries-sdk/go/utility/struct"
)

func TestAlphaEntity(t *testing.T) {
	t.Run("instance", func(t *testing.T) {
		testsdk := sdk.TestSDK(nil, nil)
		ent := testsdk.Alpha(nil)
		if ent == nil {
			t.Fatal("expected non-nil AlphaEntity")
		}
	})

	t.Run("basic", func(t *testing.T) {
		setup := alphaBasicSetup(nil)
		// Per-op sdk-test-control.json skip — basic test exercises a flow
		// with multiple ops; skipping any op skips the whole flow.
		_mode := "unit"
		if setup.live {
			_mode = "live"
		}
		for _, _op := range []string{"load"} {
			if _shouldSkip, _reason := isControlSkipped("entityOp", "alpha." + _op, _mode); _shouldSkip {
				if _reason == "" {
					_reason = "skipped via sdk-test-control.json"
				}
				t.Skip(_reason)
				return
			}
		}
		// The basic flow consumes synthetic IDs from the fixture. In live mode
		// without an *_ENTID env override, those IDs hit the live API and 4xx.
		if setup.syntheticOnly {
			t.Skip("live entity test uses synthetic IDs from fixture — set RESTCOUNTRIES_TEST_ALPHA_ENTID JSON to run live")
			return
		}
		client := setup.client

		// Bootstrap entity data from existing test data (no create step in flow).
		alphaRef01DataRaw := vs.Items(core.ToMapAny(vs.GetPath("existing.alpha", setup.data)))
		var alphaRef01Data map[string]any
		if len(alphaRef01DataRaw) > 0 {
			alphaRef01Data = core.ToMapAny(alphaRef01DataRaw[0][1])
		}
		// Discard guards against Go's unused-var check when the flow's steps
		// happen not to consume the bootstrap data (e.g. list-only flows).
		_ = alphaRef01Data

		// LOAD
		alphaRef01Ent := client.Alpha(nil)
		alphaRef01MatchDt0 := map[string]any{}
		alphaRef01DataDt0Loaded, err := alphaRef01Ent.Load(alphaRef01MatchDt0, nil)
		if err != nil {
			t.Fatalf("load failed: %v", err)
		}
		if alphaRef01DataDt0Loaded == nil {
			t.Fatal("expected load result to be non-nil")
		}

	})
}

func alphaBasicSetup(extra map[string]any) *entityTestSetup {
	loadEnvLocal()

	_, filename, _, _ := runtime.Caller(0)
	dir := filepath.Dir(filename)

	entityDataFile := filepath.Join(dir, "..", "..", ".sdk", "test", "entity", "alpha", "AlphaTestData.json")

	entityDataSource, err := os.ReadFile(entityDataFile)
	if err != nil {
		panic("failed to read alpha test data: " + err.Error())
	}

	var entityData map[string]any
	if err := json.Unmarshal(entityDataSource, &entityData); err != nil {
		panic("failed to parse alpha test data: " + err.Error())
	}

	options := map[string]any{}
	options["entity"] = entityData["existing"]

	client := sdk.TestSDK(options, extra)

	// Generate idmap via transform, matching TS pattern.
	idmap := vs.Transform(
		[]any{"alpha01", "alpha02", "alpha03"},
		map[string]any{
			"`$PACK`": []any{"", map[string]any{
				"`$KEY`": "`$COPY`",
				"`$VAL`": []any{"`$FORMAT`", "upper", "`$COPY`"},
			}},
		},
	)

	// Detect ENTID env override before envOverride consumes it. When live
	// mode is on without a real override, the basic test runs against synthetic
	// IDs from the fixture and 4xx's. Surface this so the test can skip.
	entidEnvRaw := os.Getenv("RESTCOUNTRIES_TEST_ALPHA_ENTID")
	idmapOverridden := entidEnvRaw != "" && strings.HasPrefix(strings.TrimSpace(entidEnvRaw), "{")

	env := envOverride(map[string]any{
		"RESTCOUNTRIES_TEST_ALPHA_ENTID": idmap,
		"RESTCOUNTRIES_TEST_LIVE":      "FALSE",
		"RESTCOUNTRIES_TEST_EXPLAIN":   "FALSE",
		"RESTCOUNTRIES_APIKEY":         "NONE",
	})

	idmapResolved := core.ToMapAny(env["RESTCOUNTRIES_TEST_ALPHA_ENTID"])
	if idmapResolved == nil {
		idmapResolved = core.ToMapAny(idmap)
	}

	if env["RESTCOUNTRIES_TEST_LIVE"] == "TRUE" {
		mergedOpts := vs.Merge([]any{
			map[string]any{
				"apikey": env["RESTCOUNTRIES_APIKEY"],
			},
			extra,
		})
		client = sdk.NewRestCountriesSDK(core.ToMapAny(mergedOpts))
	}

	live := env["RESTCOUNTRIES_TEST_LIVE"] == "TRUE"
	return &entityTestSetup{
		client:        client,
		data:          entityData,
		idmap:         idmapResolved,
		env:           env,
		explain:       env["RESTCOUNTRIES_TEST_EXPLAIN"] == "TRUE",
		live:          live,
		syntheticOnly: live && !idmapOverridden,
		now:           time.Now().UnixMilli(),
	}
}

<?php
declare(strict_types=1);

// Alpha entity test

require_once __DIR__ . '/../restcountries_sdk.php';
require_once __DIR__ . '/Runner.php';

use PHPUnit\Framework\TestCase;
use Voxgig\Struct\Struct as Vs;

class AlphaEntityTest extends TestCase
{
    public function test_create_instance(): void
    {
        $testsdk = RestCountriesSDK::test(null, null);
        $ent = $testsdk->Alpha(null);
        $this->assertNotNull($ent);
    }

    public function test_basic_flow(): void
    {
        $setup = alpha_basic_setup(null);
        // Per-op sdk-test-control.json skip.
        $_live = !empty($setup["live"]);
        foreach (["load"] as $_op) {
            [$_shouldSkip, $_reason] = Runner::is_control_skipped("entityOp", "alpha." . $_op, $_live ? "live" : "unit");
            if ($_shouldSkip) {
                $this->markTestSkipped($_reason ?? "skipped via sdk-test-control.json");
                return;
            }
        }
        // The basic flow consumes synthetic IDs from the fixture. In live mode
        // without an *_ENTID env override, those IDs hit the live API and 4xx.
        if (!empty($setup["synthetic_only"])) {
            $this->markTestSkipped("live entity test uses synthetic IDs from fixture — set REST_COUNTRIES_TEST_ALPHA_ENTID JSON to run live");
            return;
        }
        $client = $setup["client"];

        // Bootstrap entity data from existing test data.
        $alpha_ref01_data_raw = Vs::items(Helpers::to_map(
            Vs::getpath($setup["data"], "existing.alpha")));
        $alpha_ref01_data = null;
        if (count($alpha_ref01_data_raw) > 0) {
            $alpha_ref01_data = Helpers::to_map($alpha_ref01_data_raw[0][1]);
        }

        // LOAD
        $alpha_ref01_ent = $client->Alpha(null);
        $alpha_ref01_match_dt0 = [
            "id" => $alpha_ref01_data["id"],
        ];
        $alpha_ref01_data_dt0_loaded = $alpha_ref01_ent->load($alpha_ref01_match_dt0, null);
        $alpha_ref01_data_dt0_load_result = Helpers::to_map(is_object($alpha_ref01_data_dt0_loaded) && method_exists($alpha_ref01_data_dt0_loaded, 'data_get') ? $alpha_ref01_data_dt0_loaded->data_get() : $alpha_ref01_data_dt0_loaded);
        $this->assertNotNull($alpha_ref01_data_dt0_load_result);
        $this->assertEquals($alpha_ref01_data_dt0_load_result["id"], $alpha_ref01_data["id"]);

    }
}

function alpha_basic_setup($extra)
{
    Runner::load_env_local();

    $entity_data_file = __DIR__ . '/../../.sdk/test/entity/alpha/AlphaTestData.json';
    $entity_data_source = file_get_contents($entity_data_file);
    $entity_data = json_decode($entity_data_source, true);

    $options = [];
    $options["entity"] = $entity_data["existing"];

    $client = RestCountriesSDK::test($options, $extra);

    // Generate idmap.
    $idmap = [];
    foreach (["alpha01", "alpha02", "alpha03"] as $k) {
        $idmap[$k] = strtoupper($k);
    }

    // Detect ENTID env override before envOverride consumes it. When live
    // mode is on without a real override, the basic test runs against synthetic
    // IDs from the fixture and 4xx's. Surface this so the test can skip.
    $entid_env_raw = getenv("REST_COUNTRIES_TEST_ALPHA_ENTID");
    $idmap_overridden = $entid_env_raw !== false && str_starts_with(trim($entid_env_raw), "{");

    $env = Runner::env_override([
        "REST_COUNTRIES_TEST_ALPHA_ENTID" => $idmap,
        "REST_COUNTRIES_TEST_LIVE" => "FALSE",
        "REST_COUNTRIES_TEST_EXPLAIN" => "FALSE",
    ]);

    $idmap_resolved = Helpers::to_map(
        $env["REST_COUNTRIES_TEST_ALPHA_ENTID"]);
    if ($idmap_resolved === null) {
        $idmap_resolved = Helpers::to_map($idmap);
    }

    if ($env["REST_COUNTRIES_TEST_LIVE"] === "TRUE") {
        $merged_opts = Vs::merge([
            [
            ],
            $extra ?? [],
        ]);
        $client = new RestCountriesSDK(Helpers::to_map($merged_opts));
    }

    $live = $env["REST_COUNTRIES_TEST_LIVE"] === "TRUE";
    return [
        "client" => $client,
        "data" => $entity_data,
        "idmap" => $idmap_resolved,
        "env" => $env,
        "explain" => $env["REST_COUNTRIES_TEST_EXPLAIN"] === "TRUE",
        "live" => $live,
        "synthetic_only" => $live && !$idmap_overridden,
        "now" => (int)(microtime(true) * 1000),
    ];
}

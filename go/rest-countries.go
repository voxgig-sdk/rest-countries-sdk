package voxgigrestcountriessdk

import (
	"github.com/voxgig-sdk/rest-countries-sdk/go/core"
	"github.com/voxgig-sdk/rest-countries-sdk/go/entity"
	"github.com/voxgig-sdk/rest-countries-sdk/go/feature"
	_ "github.com/voxgig-sdk/rest-countries-sdk/go/utility"
)

// Type aliases preserve external API.
type RestCountriesSDK = core.RestCountriesSDK
type Context = core.Context
type Utility = core.Utility
type Feature = core.Feature
type Entity = core.Entity
type RestCountriesEntity = core.RestCountriesEntity
type FetcherFunc = core.FetcherFunc
type Spec = core.Spec
type Result = core.Result
type Response = core.Response
type Operation = core.Operation
type Control = core.Control
type RestCountriesError = core.RestCountriesError

// BaseFeature from feature package.
type BaseFeature = feature.BaseFeature

func init() {
	core.NewBaseFeatureFunc = func() core.Feature {
		return feature.NewBaseFeature()
	}
	core.NewTestFeatureFunc = func() core.Feature {
		return feature.NewTestFeature()
	}
	core.NewAllEntityFunc = func(client *core.RestCountriesSDK, entopts map[string]any) core.RestCountriesEntity {
		return entity.NewAllEntity(client, entopts)
	}
	core.NewAlphaEntityFunc = func(client *core.RestCountriesSDK, entopts map[string]any) core.RestCountriesEntity {
		return entity.NewAlphaEntity(client, entopts)
	}
	core.NewCapitalEntityFunc = func(client *core.RestCountriesSDK, entopts map[string]any) core.RestCountriesEntity {
		return entity.NewCapitalEntity(client, entopts)
	}
	core.NewNameEntityFunc = func(client *core.RestCountriesSDK, entopts map[string]any) core.RestCountriesEntity {
		return entity.NewNameEntity(client, entopts)
	}
}

// Constructor re-exports.
var NewRestCountriesSDK = core.NewRestCountriesSDK
var TestSDK = core.TestSDK
var NewContext = core.NewContext
var NewSpec = core.NewSpec
var NewResult = core.NewResult
var NewResponse = core.NewResponse
var NewOperation = core.NewOperation
var MakeConfig = core.MakeConfig

// No-arg convenience constructors. Go has no default-argument syntax,
// so these aliases let callers write `sdk.New()` / `sdk.Test()`
// instead of `sdk.NewRestCountriesSDK(nil)` / `sdk.TestSDK(nil, nil)`
// for the common no-options case.
func New() *RestCountriesSDK  { return NewRestCountriesSDK(nil) }
func Test() *RestCountriesSDK { return TestSDK(nil, nil) }
var NewBaseFeature = feature.NewBaseFeature
var NewTestFeature = feature.NewTestFeature

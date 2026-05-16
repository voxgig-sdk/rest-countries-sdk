package core

var UtilityRegistrar func(u *Utility)

var NewBaseFeatureFunc func() Feature

var NewTestFeatureFunc func() Feature

var NewAllEntityFunc func(client *RestCountriesSDK, entopts map[string]any) RestCountriesEntity

var NewAlphaEntityFunc func(client *RestCountriesSDK, entopts map[string]any) RestCountriesEntity

var NewCapitalEntityFunc func(client *RestCountriesSDK, entopts map[string]any) RestCountriesEntity

var NewNameEntityFunc func(client *RestCountriesSDK, entopts map[string]any) RestCountriesEntity


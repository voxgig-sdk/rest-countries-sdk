package core

import (
	"sync"
)

// MakeConfig builds a fresh, fully materialised config map. Every call
// rebuilds the whole structure, so prefer SharedConfig unless you need a
// private copy you intend to mutate.
func MakeConfig() map[string]any {
	return map[string]any{
		"main": map[string]any{
			"name": "RestCountries",
			"slug": "rest-countries",
			"version": "0.0.1",
			"target": "go",
		},
		"feature": map[string]any{
			"test": map[string]any{
				"options": map[string]any{
					"active": false,
				},
				"transport": "base",
			},
		},
		"options": map[string]any{
			"base": "https://restcountries.com/v3.1",
			"headers": map[string]any{
				"content-type": "application/json",
			},
			"entity": map[string]any{
				"all": map[string]any{},
				"alpha": map[string]any{},
				"capital": map[string]any{},
				"name": map[string]any{},
			},
		},
		"entity": map[string]any{
			"all": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "altSpellings",
						"short": "Alternative country name spellings",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "area",
						"short": "Country area in square kilometers",
						"type": "`$NUMBER`",
					},
					map[string]any{
						"name": "borders",
						"short": "Border countries (ISO 3166-1 alpha-3 codes)",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "capital",
						"short": "Capital city or cities",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "capitalInfo",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "car",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "cca2",
						"short": "ISO 3166-1 alpha-2 code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cca3",
						"short": "ISO 3166-1 alpha-3 code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "ccn3",
						"short": "ISO 3166-1 numeric code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cioc",
						"short": "International Olympic Committee code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "coatOfArms",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "continents",
						"short": "Continents",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "currencies",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "demonyms",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "fifa",
						"short": "FIFA country code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "flag",
						"short": "Flag emoji",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "flags",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "gini",
						"short": "Gini coefficient",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "idd",
						"short": "International direct dialing",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "independent",
						"short": "Independence status",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "landlocked",
						"short": "Landlocked status",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "languages",
						"short": "Languages spoken",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "latlng",
						"short": "Latitude and longitude",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "maps",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "name",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "population",
						"short": "Country population",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "postalCode",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "region",
						"short": "Geographic region",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "startOfWeek",
						"short": "Start of week day",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "status",
						"short": "ISO 3166-1 assignment status",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "subregion",
						"short": "Geographic subregion",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "timezones",
						"short": "Timezones",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "tld",
						"short": "Top-level domains",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "translations",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "unMember",
						"short": "UN membership status",
						"type": "`$BOOLEAN`",
					},
				},
				"name": "all",
				"op": map[string]any{
					"list": map[string]any{
						"input": "data",
						"name": "list",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"query": []any{
										map[string]any{
											"example": "name,capital,population",
											"kind": "query",
											"name": "field",
											"orig": "field",
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "GET",
								"orig": "/all",
								"parts": []any{
									"all",
								},
								"select": map[string]any{
									"exist": []any{
										"field",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"alpha": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "altSpellings",
						"short": "Alternative country name spellings",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "area",
						"short": "Country area in square kilometers",
						"type": "`$NUMBER`",
					},
					map[string]any{
						"name": "borders",
						"short": "Border countries (ISO 3166-1 alpha-3 codes)",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "capital",
						"short": "Capital city or cities",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "capitalInfo",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "car",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "cca2",
						"short": "ISO 3166-1 alpha-2 code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cca3",
						"short": "ISO 3166-1 alpha-3 code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "ccn3",
						"short": "ISO 3166-1 numeric code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cioc",
						"short": "International Olympic Committee code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "coatOfArms",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "continents",
						"short": "Continents",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "currencies",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "demonyms",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "fifa",
						"short": "FIFA country code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "flag",
						"short": "Flag emoji",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "flags",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "gini",
						"short": "Gini coefficient",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "idd",
						"short": "International direct dialing",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "independent",
						"short": "Independence status",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "landlocked",
						"short": "Landlocked status",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "languages",
						"short": "Languages spoken",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "latlng",
						"short": "Latitude and longitude",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "maps",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "name",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "population",
						"short": "Country population",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "postalCode",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "region",
						"short": "Geographic region",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "startOfWeek",
						"short": "Start of week day",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "status",
						"short": "ISO 3166-1 assignment status",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "subregion",
						"short": "Geographic subregion",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "timezones",
						"short": "Timezones",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "tld",
						"short": "Top-level domains",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "translations",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "unMember",
						"short": "UN membership status",
						"type": "`$BOOLEAN`",
					},
				},
				"name": "alpha",
				"op": map[string]any{
					"load": map[string]any{
						"input": "data",
						"name": "load",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"params": []any{
										map[string]any{
											"example": "de",
											"kind": "param",
											"name": "id",
											"orig": "code",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
									"query": []any{
										map[string]any{
											"kind": "query",
											"name": "field",
											"orig": "field",
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "GET",
								"orig": "/alpha/{code}",
								"parts": []any{
									"alpha",
									"{id}",
								},
								"rename": map[string]any{
									"param": map[string]any{
										"code": "id",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"field",
										"id",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"capital": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "altSpellings",
						"short": "Alternative country name spellings",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "area",
						"short": "Country area in square kilometers",
						"type": "`$NUMBER`",
					},
					map[string]any{
						"name": "borders",
						"short": "Border countries (ISO 3166-1 alpha-3 codes)",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "capital",
						"short": "Capital city or cities",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "capitalInfo",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "car",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "cca2",
						"short": "ISO 3166-1 alpha-2 code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cca3",
						"short": "ISO 3166-1 alpha-3 code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "ccn3",
						"short": "ISO 3166-1 numeric code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cioc",
						"short": "International Olympic Committee code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "coatOfArms",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "continents",
						"short": "Continents",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "currencies",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "demonyms",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "fifa",
						"short": "FIFA country code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "flag",
						"short": "Flag emoji",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "flags",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "gini",
						"short": "Gini coefficient",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "idd",
						"short": "International direct dialing",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "independent",
						"short": "Independence status",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "landlocked",
						"short": "Landlocked status",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "languages",
						"short": "Languages spoken",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "latlng",
						"short": "Latitude and longitude",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "maps",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "name",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "population",
						"short": "Country population",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "postalCode",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "region",
						"short": "Geographic region",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "startOfWeek",
						"short": "Start of week day",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "status",
						"short": "ISO 3166-1 assignment status",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "subregion",
						"short": "Geographic subregion",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "timezones",
						"short": "Timezones",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "tld",
						"short": "Top-level domains",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "translations",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "unMember",
						"short": "UN membership status",
						"type": "`$BOOLEAN`",
					},
				},
				"name": "capital",
				"op": map[string]any{
					"load": map[string]any{
						"input": "data",
						"name": "load",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"params": []any{
										map[string]any{
											"example": "berlin",
											"kind": "param",
											"name": "id",
											"orig": "capital",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
									"query": []any{
										map[string]any{
											"kind": "query",
											"name": "field",
											"orig": "field",
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "GET",
								"orig": "/capital/{capital}",
								"parts": []any{
									"capital",
									"{id}",
								},
								"rename": map[string]any{
									"param": map[string]any{
										"capital": "id",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"field",
										"id",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"name": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "altSpellings",
						"short": "Alternative country name spellings",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "area",
						"short": "Country area in square kilometers",
						"type": "`$NUMBER`",
					},
					map[string]any{
						"name": "borders",
						"short": "Border countries (ISO 3166-1 alpha-3 codes)",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "capital",
						"short": "Capital city or cities",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "capitalInfo",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "car",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "cca2",
						"short": "ISO 3166-1 alpha-2 code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cca3",
						"short": "ISO 3166-1 alpha-3 code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "ccn3",
						"short": "ISO 3166-1 numeric code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "cioc",
						"short": "International Olympic Committee code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "coatOfArms",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "continents",
						"short": "Continents",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "currencies",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "demonyms",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "fifa",
						"short": "FIFA country code",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "flag",
						"short": "Flag emoji",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "flags",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "gini",
						"short": "Gini coefficient",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "idd",
						"short": "International direct dialing",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "independent",
						"short": "Independence status",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "landlocked",
						"short": "Landlocked status",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "languages",
						"short": "Languages spoken",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "latlng",
						"short": "Latitude and longitude",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "maps",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "name",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "population",
						"short": "Country population",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "postalCode",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "region",
						"short": "Geographic region",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "startOfWeek",
						"short": "Start of week day",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "status",
						"short": "ISO 3166-1 assignment status",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "subregion",
						"short": "Geographic subregion",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "timezones",
						"short": "Timezones",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "tld",
						"short": "Top-level domains",
						"type": "`$ARRAY`",
					},
					map[string]any{
						"name": "translations",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "unMember",
						"short": "UN membership status",
						"type": "`$BOOLEAN`",
					},
				},
				"name": "name",
				"op": map[string]any{
					"load": map[string]any{
						"input": "data",
						"name": "load",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"params": []any{
										map[string]any{
											"example": "germany",
											"kind": "param",
											"name": "id",
											"orig": "name",
											"reqd": true,
											"type": "`$STRING`",
										},
									},
									"query": []any{
										map[string]any{
											"kind": "query",
											"name": "field",
											"orig": "field",
											"type": "`$STRING`",
										},
										map[string]any{
											"example": false,
											"kind": "query",
											"name": "full_text",
											"orig": "full_text",
											"type": "`$BOOLEAN`",
										},
									},
								},
								"kind": "http",
								"method": "GET",
								"orig": "/name/{name}",
								"parts": []any{
									"name",
									"{id}",
								},
								"rename": map[string]any{
									"param": map[string]any{
										"name": "id",
									},
								},
								"select": map[string]any{
									"exist": []any{
										"field",
										"full_text",
										"id",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
		},
	}
}

var (
	sharedConfigOnce sync.Once
	sharedConfigVal  map[string]any
)

// SharedConfig returns the process-wide config, built once on first use.
// The SDK reads the config on every request and never writes to it, so one
// instance is shared by every client rather than rebuilt per client.
//
// The returned map is shared: treat it as read-only. Callers that need to
// mutate should use MakeConfig, which always returns a fresh copy.
func SharedConfig() map[string]any {
	sharedConfigOnce.Do(func() {
		sharedConfigVal = MakeConfig()
	})
	return sharedConfigVal
}

func makeFeature(name string) Feature {
	switch name {
	case "test":
		if NewTestFeatureFunc != nil {
			return NewTestFeatureFunc()
		}
	default:
		if NewBaseFeatureFunc != nil {
			return NewBaseFeatureFunc()
		}
	}
	return nil
}

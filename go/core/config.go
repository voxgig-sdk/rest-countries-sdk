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
			"ratelimit": map[string]any{
				"options": map[string]any{
					"active": false,
					"burst": 5,
					"rate": 5,
				},
				"optspec": map[string]any{
					"now": "`$FUNCTION`",
					"sleep": "`$FUNCTION`",
				},
				"strict": false,
				"transport": "wrap",
			},
			"retry": map[string]any{
				"options": map[string]any{
					"active": false,
					"factor": 2,
					"maxDelay": 2000,
					"minDelay": 50,
					"retries": 2,
					"statuses": []any{
						408,
						425,
						429,
						500,
						502,
						503,
						504,
					},
				},
				"optspec": map[string]any{
					"jitter": "`$BOOLEAN`",
					"sleep": "`$FUNCTION`",
				},
				"strict": false,
				"transport": "wrap",
			},
			"test": map[string]any{
				"options": map[string]any{
					"active": false,
				},
				"optspec": map[string]any{
					"entity": "`$MAP`",
					"net": "`$MAP`",
				},
				"strict": false,
				"transport": "base",
			},
			"timeout": map[string]any{
				"options": map[string]any{
					"active": false,
					"ms": 30000,
				},
				"optspec": map[string]any{
					"clearTimer": "`$FUNCTION`",
					"setTimer": "`$FUNCTION`",
				},
				"strict": false,
				"transport": "wrap",
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
						"title": "Alt Spellings",
						"type": "`$ARRAY`",
						"short": "Alternative country name spellings",
					},
					map[string]any{
						"name": "area",
						"title": "Area",
						"type": "`$NUMBER`",
						"short": "Country area in square kilometers",
					},
					map[string]any{
						"name": "borders",
						"title": "Borders",
						"type": "`$ARRAY`",
						"short": "Border countries (ISO 3166-1 alpha-3 codes)",
					},
					map[string]any{
						"name": "capital",
						"title": "Capital",
						"type": "`$ARRAY`",
						"short": "Capital city or cities",
					},
					map[string]any{
						"name": "capitalInfo",
						"title": "Capital Info",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "car",
						"title": "Car",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "cca2",
						"title": "Cca2",
						"type": "`$STRING`",
						"short": "ISO 3166-1 alpha-2 code",
					},
					map[string]any{
						"name": "cca3",
						"title": "Cca3",
						"type": "`$STRING`",
						"short": "ISO 3166-1 alpha-3 code",
					},
					map[string]any{
						"name": "ccn3",
						"title": "Ccn3",
						"type": "`$STRING`",
						"short": "ISO 3166-1 numeric code",
					},
					map[string]any{
						"name": "cioc",
						"title": "Cioc",
						"type": "`$STRING`",
						"short": "International Olympic Committee code",
					},
					map[string]any{
						"name": "coatOfArms",
						"title": "Coat Of Arms",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "continents",
						"title": "Continents",
						"type": "`$ARRAY`",
						"short": "Continents",
					},
					map[string]any{
						"name": "currencies",
						"title": "Currencies",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "demonyms",
						"title": "Demonyms",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "fifa",
						"title": "Fifa",
						"type": "`$STRING`",
						"short": "FIFA country code",
					},
					map[string]any{
						"name": "flag",
						"title": "Flag",
						"type": "`$STRING`",
						"short": "Flag emoji",
					},
					map[string]any{
						"name": "flags",
						"title": "Flags",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "gini",
						"title": "Gini",
						"type": "`$OBJECT`",
						"short": "Gini coefficient",
					},
					map[string]any{
						"name": "idd",
						"title": "Idd",
						"type": "`$OBJECT`",
						"short": "International direct dialing",
					},
					map[string]any{
						"name": "independent",
						"title": "Independent",
						"type": "`$BOOLEAN`",
						"short": "Independence status",
					},
					map[string]any{
						"name": "landlocked",
						"title": "Landlocked",
						"type": "`$BOOLEAN`",
						"short": "Landlocked status",
					},
					map[string]any{
						"name": "languages",
						"title": "Languages",
						"type": "`$OBJECT`",
						"short": "Languages spoken",
					},
					map[string]any{
						"name": "latlng",
						"title": "Latlng",
						"type": "`$ARRAY`",
						"short": "Latitude and longitude",
					},
					map[string]any{
						"name": "maps",
						"title": "Maps",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "name",
						"title": "Name",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "population",
						"title": "Population",
						"type": "`$INTEGER`",
						"short": "Country population",
					},
					map[string]any{
						"name": "postalCode",
						"title": "Postal Code",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "region",
						"title": "Region",
						"type": "`$STRING`",
						"short": "Geographic region",
					},
					map[string]any{
						"name": "startOfWeek",
						"title": "Start Of Week",
						"type": "`$STRING`",
						"short": "Start of week day",
					},
					map[string]any{
						"name": "status",
						"title": "Status",
						"type": "`$STRING`",
						"short": "ISO 3166-1 assignment status",
					},
					map[string]any{
						"name": "subregion",
						"title": "Subregion",
						"type": "`$STRING`",
						"short": "Geographic subregion",
					},
					map[string]any{
						"name": "timezones",
						"title": "Timezones",
						"type": "`$ARRAY`",
						"short": "Timezones",
					},
					map[string]any{
						"name": "tld",
						"title": "Tld",
						"type": "`$ARRAY`",
						"short": "Top-level domains",
					},
					map[string]any{
						"name": "translations",
						"title": "Translations",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "unMember",
						"title": "Un Member",
						"type": "`$BOOLEAN`",
						"short": "UN membership status",
					},
				},
				"name": "all",
				"op": map[string]any{
					"list": map[string]any{
						"input": "data",
						"name": "list",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "GET",
								"orig": "/all",
								"segments": []any{
									map[string]any{
										"lit": "all",
									},
								},
								"parts": []any{
									"all",
								},
								"rename": map[string]any{},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"query": []any{
										map[string]any{
											"name": "field",
											"orig": "field",
											"type": "`$STRING`",
											"kind": "query",
											"example": "name,capital,population",
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"field",
									},
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
						"title": "Alt Spellings",
						"type": "`$ARRAY`",
						"short": "Alternative country name spellings",
					},
					map[string]any{
						"name": "area",
						"title": "Area",
						"type": "`$NUMBER`",
						"short": "Country area in square kilometers",
					},
					map[string]any{
						"name": "borders",
						"title": "Borders",
						"type": "`$ARRAY`",
						"short": "Border countries (ISO 3166-1 alpha-3 codes)",
					},
					map[string]any{
						"name": "capital",
						"title": "Capital",
						"type": "`$ARRAY`",
						"short": "Capital city or cities",
					},
					map[string]any{
						"name": "capitalInfo",
						"title": "Capital Info",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "car",
						"title": "Car",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "cca2",
						"title": "Cca2",
						"type": "`$STRING`",
						"short": "ISO 3166-1 alpha-2 code",
					},
					map[string]any{
						"name": "cca3",
						"title": "Cca3",
						"type": "`$STRING`",
						"short": "ISO 3166-1 alpha-3 code",
					},
					map[string]any{
						"name": "ccn3",
						"title": "Ccn3",
						"type": "`$STRING`",
						"short": "ISO 3166-1 numeric code",
					},
					map[string]any{
						"name": "cioc",
						"title": "Cioc",
						"type": "`$STRING`",
						"short": "International Olympic Committee code",
					},
					map[string]any{
						"name": "coatOfArms",
						"title": "Coat Of Arms",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "continents",
						"title": "Continents",
						"type": "`$ARRAY`",
						"short": "Continents",
					},
					map[string]any{
						"name": "currencies",
						"title": "Currencies",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "demonyms",
						"title": "Demonyms",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "fifa",
						"title": "Fifa",
						"type": "`$STRING`",
						"short": "FIFA country code",
					},
					map[string]any{
						"name": "flag",
						"title": "Flag",
						"type": "`$STRING`",
						"short": "Flag emoji",
					},
					map[string]any{
						"name": "flags",
						"title": "Flags",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "gini",
						"title": "Gini",
						"type": "`$OBJECT`",
						"short": "Gini coefficient",
					},
					map[string]any{
						"name": "id",
						"title": "Id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "idd",
						"title": "Idd",
						"type": "`$OBJECT`",
						"short": "International direct dialing",
					},
					map[string]any{
						"name": "independent",
						"title": "Independent",
						"type": "`$BOOLEAN`",
						"short": "Independence status",
					},
					map[string]any{
						"name": "landlocked",
						"title": "Landlocked",
						"type": "`$BOOLEAN`",
						"short": "Landlocked status",
					},
					map[string]any{
						"name": "languages",
						"title": "Languages",
						"type": "`$OBJECT`",
						"short": "Languages spoken",
					},
					map[string]any{
						"name": "latlng",
						"title": "Latlng",
						"type": "`$ARRAY`",
						"short": "Latitude and longitude",
					},
					map[string]any{
						"name": "maps",
						"title": "Maps",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "name",
						"title": "Name",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "population",
						"title": "Population",
						"type": "`$INTEGER`",
						"short": "Country population",
					},
					map[string]any{
						"name": "postalCode",
						"title": "Postal Code",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "region",
						"title": "Region",
						"type": "`$STRING`",
						"short": "Geographic region",
					},
					map[string]any{
						"name": "startOfWeek",
						"title": "Start Of Week",
						"type": "`$STRING`",
						"short": "Start of week day",
					},
					map[string]any{
						"name": "status",
						"title": "Status",
						"type": "`$STRING`",
						"short": "ISO 3166-1 assignment status",
					},
					map[string]any{
						"name": "subregion",
						"title": "Subregion",
						"type": "`$STRING`",
						"short": "Geographic subregion",
					},
					map[string]any{
						"name": "timezones",
						"title": "Timezones",
						"type": "`$ARRAY`",
						"short": "Timezones",
					},
					map[string]any{
						"name": "tld",
						"title": "Tld",
						"type": "`$ARRAY`",
						"short": "Top-level domains",
					},
					map[string]any{
						"name": "translations",
						"title": "Translations",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "unMember",
						"title": "Un Member",
						"type": "`$BOOLEAN`",
						"short": "UN membership status",
					},
				},
				"id": map[string]any{
					"field": "id",
					"name": "id",
				},
				"name": "alpha",
				"op": map[string]any{
					"load": map[string]any{
						"input": "data",
						"name": "load",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "GET",
								"orig": "/alpha/{code}",
								"segments": []any{
									map[string]any{
										"lit": "alpha",
									},
									map[string]any{
										"var": "id",
									},
								},
								"parts": []any{
									"alpha",
									"{id}",
								},
								"rename": map[string]any{
									"param": map[string]any{
										"code": "id",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"params": []any{
										map[string]any{
											"name": "id",
											"orig": "code",
											"type": "`$STRING`",
											"kind": "param",
											"reqd": true,
											"example": "de",
										},
									},
									"query": []any{
										map[string]any{
											"name": "field",
											"orig": "field",
											"type": "`$STRING`",
											"kind": "query",
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"field",
										"id",
									},
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
						"title": "Alt Spellings",
						"type": "`$ARRAY`",
						"short": "Alternative country name spellings",
					},
					map[string]any{
						"name": "area",
						"title": "Area",
						"type": "`$NUMBER`",
						"short": "Country area in square kilometers",
					},
					map[string]any{
						"name": "borders",
						"title": "Borders",
						"type": "`$ARRAY`",
						"short": "Border countries (ISO 3166-1 alpha-3 codes)",
					},
					map[string]any{
						"name": "capital",
						"title": "Capital",
						"type": "`$ARRAY`",
						"short": "Capital city or cities",
					},
					map[string]any{
						"name": "capitalInfo",
						"title": "Capital Info",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "car",
						"title": "Car",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "cca2",
						"title": "Cca2",
						"type": "`$STRING`",
						"short": "ISO 3166-1 alpha-2 code",
					},
					map[string]any{
						"name": "cca3",
						"title": "Cca3",
						"type": "`$STRING`",
						"short": "ISO 3166-1 alpha-3 code",
					},
					map[string]any{
						"name": "ccn3",
						"title": "Ccn3",
						"type": "`$STRING`",
						"short": "ISO 3166-1 numeric code",
					},
					map[string]any{
						"name": "cioc",
						"title": "Cioc",
						"type": "`$STRING`",
						"short": "International Olympic Committee code",
					},
					map[string]any{
						"name": "coatOfArms",
						"title": "Coat Of Arms",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "continents",
						"title": "Continents",
						"type": "`$ARRAY`",
						"short": "Continents",
					},
					map[string]any{
						"name": "currencies",
						"title": "Currencies",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "demonyms",
						"title": "Demonyms",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "fifa",
						"title": "Fifa",
						"type": "`$STRING`",
						"short": "FIFA country code",
					},
					map[string]any{
						"name": "flag",
						"title": "Flag",
						"type": "`$STRING`",
						"short": "Flag emoji",
					},
					map[string]any{
						"name": "flags",
						"title": "Flags",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "gini",
						"title": "Gini",
						"type": "`$OBJECT`",
						"short": "Gini coefficient",
					},
					map[string]any{
						"name": "id",
						"title": "Id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "idd",
						"title": "Idd",
						"type": "`$OBJECT`",
						"short": "International direct dialing",
					},
					map[string]any{
						"name": "independent",
						"title": "Independent",
						"type": "`$BOOLEAN`",
						"short": "Independence status",
					},
					map[string]any{
						"name": "landlocked",
						"title": "Landlocked",
						"type": "`$BOOLEAN`",
						"short": "Landlocked status",
					},
					map[string]any{
						"name": "languages",
						"title": "Languages",
						"type": "`$OBJECT`",
						"short": "Languages spoken",
					},
					map[string]any{
						"name": "latlng",
						"title": "Latlng",
						"type": "`$ARRAY`",
						"short": "Latitude and longitude",
					},
					map[string]any{
						"name": "maps",
						"title": "Maps",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "name",
						"title": "Name",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "population",
						"title": "Population",
						"type": "`$INTEGER`",
						"short": "Country population",
					},
					map[string]any{
						"name": "postalCode",
						"title": "Postal Code",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "region",
						"title": "Region",
						"type": "`$STRING`",
						"short": "Geographic region",
					},
					map[string]any{
						"name": "startOfWeek",
						"title": "Start Of Week",
						"type": "`$STRING`",
						"short": "Start of week day",
					},
					map[string]any{
						"name": "status",
						"title": "Status",
						"type": "`$STRING`",
						"short": "ISO 3166-1 assignment status",
					},
					map[string]any{
						"name": "subregion",
						"title": "Subregion",
						"type": "`$STRING`",
						"short": "Geographic subregion",
					},
					map[string]any{
						"name": "timezones",
						"title": "Timezones",
						"type": "`$ARRAY`",
						"short": "Timezones",
					},
					map[string]any{
						"name": "tld",
						"title": "Tld",
						"type": "`$ARRAY`",
						"short": "Top-level domains",
					},
					map[string]any{
						"name": "translations",
						"title": "Translations",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "unMember",
						"title": "Un Member",
						"type": "`$BOOLEAN`",
						"short": "UN membership status",
					},
				},
				"id": map[string]any{
					"field": "id",
					"name": "id",
				},
				"name": "capital",
				"op": map[string]any{
					"load": map[string]any{
						"input": "data",
						"name": "load",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "GET",
								"orig": "/capital/{capital}",
								"segments": []any{
									map[string]any{
										"lit": "capital",
									},
									map[string]any{
										"var": "id",
									},
								},
								"parts": []any{
									"capital",
									"{id}",
								},
								"rename": map[string]any{
									"param": map[string]any{
										"capital": "id",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"params": []any{
										map[string]any{
											"name": "id",
											"orig": "capital",
											"type": "`$STRING`",
											"kind": "param",
											"reqd": true,
											"example": "berlin",
										},
									},
									"query": []any{
										map[string]any{
											"name": "field",
											"orig": "field",
											"type": "`$STRING`",
											"kind": "query",
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"field",
										"id",
									},
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
						"title": "Alt Spellings",
						"type": "`$ARRAY`",
						"short": "Alternative country name spellings",
					},
					map[string]any{
						"name": "area",
						"title": "Area",
						"type": "`$NUMBER`",
						"short": "Country area in square kilometers",
					},
					map[string]any{
						"name": "borders",
						"title": "Borders",
						"type": "`$ARRAY`",
						"short": "Border countries (ISO 3166-1 alpha-3 codes)",
					},
					map[string]any{
						"name": "capital",
						"title": "Capital",
						"type": "`$ARRAY`",
						"short": "Capital city or cities",
					},
					map[string]any{
						"name": "capitalInfo",
						"title": "Capital Info",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "car",
						"title": "Car",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "cca2",
						"title": "Cca2",
						"type": "`$STRING`",
						"short": "ISO 3166-1 alpha-2 code",
					},
					map[string]any{
						"name": "cca3",
						"title": "Cca3",
						"type": "`$STRING`",
						"short": "ISO 3166-1 alpha-3 code",
					},
					map[string]any{
						"name": "ccn3",
						"title": "Ccn3",
						"type": "`$STRING`",
						"short": "ISO 3166-1 numeric code",
					},
					map[string]any{
						"name": "cioc",
						"title": "Cioc",
						"type": "`$STRING`",
						"short": "International Olympic Committee code",
					},
					map[string]any{
						"name": "coatOfArms",
						"title": "Coat Of Arms",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "continents",
						"title": "Continents",
						"type": "`$ARRAY`",
						"short": "Continents",
					},
					map[string]any{
						"name": "currencies",
						"title": "Currencies",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "demonyms",
						"title": "Demonyms",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "fifa",
						"title": "Fifa",
						"type": "`$STRING`",
						"short": "FIFA country code",
					},
					map[string]any{
						"name": "flag",
						"title": "Flag",
						"type": "`$STRING`",
						"short": "Flag emoji",
					},
					map[string]any{
						"name": "flags",
						"title": "Flags",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "gini",
						"title": "Gini",
						"type": "`$OBJECT`",
						"short": "Gini coefficient",
					},
					map[string]any{
						"name": "id",
						"title": "Id",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "idd",
						"title": "Idd",
						"type": "`$OBJECT`",
						"short": "International direct dialing",
					},
					map[string]any{
						"name": "independent",
						"title": "Independent",
						"type": "`$BOOLEAN`",
						"short": "Independence status",
					},
					map[string]any{
						"name": "landlocked",
						"title": "Landlocked",
						"type": "`$BOOLEAN`",
						"short": "Landlocked status",
					},
					map[string]any{
						"name": "languages",
						"title": "Languages",
						"type": "`$OBJECT`",
						"short": "Languages spoken",
					},
					map[string]any{
						"name": "latlng",
						"title": "Latlng",
						"type": "`$ARRAY`",
						"short": "Latitude and longitude",
					},
					map[string]any{
						"name": "maps",
						"title": "Maps",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "name",
						"title": "Name",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "population",
						"title": "Population",
						"type": "`$INTEGER`",
						"short": "Country population",
					},
					map[string]any{
						"name": "postalCode",
						"title": "Postal Code",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "region",
						"title": "Region",
						"type": "`$STRING`",
						"short": "Geographic region",
					},
					map[string]any{
						"name": "startOfWeek",
						"title": "Start Of Week",
						"type": "`$STRING`",
						"short": "Start of week day",
					},
					map[string]any{
						"name": "status",
						"title": "Status",
						"type": "`$STRING`",
						"short": "ISO 3166-1 assignment status",
					},
					map[string]any{
						"name": "subregion",
						"title": "Subregion",
						"type": "`$STRING`",
						"short": "Geographic subregion",
					},
					map[string]any{
						"name": "timezones",
						"title": "Timezones",
						"type": "`$ARRAY`",
						"short": "Timezones",
					},
					map[string]any{
						"name": "tld",
						"title": "Tld",
						"type": "`$ARRAY`",
						"short": "Top-level domains",
					},
					map[string]any{
						"name": "translations",
						"title": "Translations",
						"type": "`$OBJECT`",
					},
					map[string]any{
						"name": "unMember",
						"title": "Un Member",
						"type": "`$BOOLEAN`",
						"short": "UN membership status",
					},
				},
				"id": map[string]any{
					"field": "id",
					"name": "id",
				},
				"name": "name",
				"op": map[string]any{
					"load": map[string]any{
						"input": "data",
						"name": "load",
						"points": []any{
							map[string]any{
								"kind": "http",
								"method": "GET",
								"orig": "/name/{name}",
								"segments": []any{
									map[string]any{
										"lit": "name",
									},
									map[string]any{
										"var": "id",
									},
								},
								"parts": []any{
									"name",
									"{id}",
								},
								"rename": map[string]any{
									"param": map[string]any{
										"name": "id",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
								"args": map[string]any{
									"params": []any{
										map[string]any{
											"name": "id",
											"orig": "name",
											"type": "`$STRING`",
											"kind": "param",
											"reqd": true,
											"example": "germany",
										},
									},
									"query": []any{
										map[string]any{
											"name": "field",
											"orig": "field",
											"type": "`$STRING`",
											"kind": "query",
										},
										map[string]any{
											"name": "full_text",
											"orig": "full_text",
											"type": "`$BOOLEAN`",
											"kind": "query",
											"example": false,
										},
									},
								},
								"select": map[string]any{
									"exist": []any{
										"field",
										"full_text",
										"id",
									},
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

// The plugin definitions the model selected per feature, as []any so a
// feature package can consume them without core naming its types. Empty
// when no active feature declares active plugin groups for this target.
var featurePlugins = map[string][]any{
}

// FeaturePlugins is the definitions list for one feature's chain.
func FeaturePlugins(name string) []any {
	return featurePlugins[name]
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
	case "ratelimit":
		if NewRatelimitFeatureFunc != nil {
			return NewRatelimitFeatureFunc()
		}
	case "retry":
		if NewRetryFeatureFunc != nil {
			return NewRetryFeatureFunc()
		}
	case "test":
		if NewTestFeatureFunc != nil {
			return NewTestFeatureFunc()
		}
	case "timeout":
		if NewTimeoutFeatureFunc != nil {
			return NewTimeoutFeatureFunc()
		}
	default:
		if NewBaseFeatureFunc != nil {
			return NewBaseFeatureFunc()
		}
	}
	return nil
}

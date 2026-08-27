
import { BaseFeature } from './feature/base/BaseFeature'
import { TestFeature } from './feature/test/TestFeature'



const FEATURE_CLASS: Record<string, typeof BaseFeature> = {
   test: TestFeature,

}


class Config {

  makeFeature(this: any, fn: string) {
    const fc = FEATURE_CLASS[fn]
    const fi = new fc()
    // TODO: errors etc
    return fi
  }

  // False for a feature added at runtime via options.extend (station's
  // adopt path) - the constructor uses this to skip makeFeature for names
  // no generated class backs.
  hasFeature(this: any, fn: string) {
    return null != FEATURE_CLASS[fn]
  }


  main = {
    name: 'RestCountries',
        slug: "rest-countries",
    version: "0.0.1",
    target: "ts",

  }


  feature = {
     test:     {
      "options": {
        "active": false
      },
      "transport": "base"
    },

  }


  options = {
    base: "https://restcountries.com/v3.1",

    headers: {
      "content-type": "application/json"
    },

    entity: {
      
      all: {
      },

      alpha: {
      },

      capital: {
      },

      name: {
      },

    }
  }


  entity = {
    "all": {
      "fields": [
        {
          "name": "altSpellings",
          "short": "Alternative country name spellings",
          "type": "`$ARRAY`"
        },
        {
          "name": "area",
          "short": "Country area in square kilometers",
          "type": "`$NUMBER`"
        },
        {
          "name": "borders",
          "short": "Border countries (ISO 3166-1 alpha-3 codes)",
          "type": "`$ARRAY`"
        },
        {
          "name": "capital",
          "short": "Capital city or cities",
          "type": "`$ARRAY`"
        },
        {
          "name": "capitalInfo",
          "type": "`$OBJECT`"
        },
        {
          "name": "car",
          "type": "`$OBJECT`"
        },
        {
          "name": "cca2",
          "short": "ISO 3166-1 alpha-2 code",
          "type": "`$STRING`"
        },
        {
          "name": "cca3",
          "short": "ISO 3166-1 alpha-3 code",
          "type": "`$STRING`"
        },
        {
          "name": "ccn3",
          "short": "ISO 3166-1 numeric code",
          "type": "`$STRING`"
        },
        {
          "name": "cioc",
          "short": "International Olympic Committee code",
          "type": "`$STRING`"
        },
        {
          "name": "coatOfArms",
          "type": "`$OBJECT`"
        },
        {
          "name": "continents",
          "short": "Continents",
          "type": "`$ARRAY`"
        },
        {
          "name": "currencies",
          "type": "`$OBJECT`"
        },
        {
          "name": "demonyms",
          "type": "`$OBJECT`"
        },
        {
          "name": "fifa",
          "short": "FIFA country code",
          "type": "`$STRING`"
        },
        {
          "name": "flag",
          "short": "Flag emoji",
          "type": "`$STRING`"
        },
        {
          "name": "flags",
          "type": "`$OBJECT`"
        },
        {
          "name": "gini",
          "short": "Gini coefficient",
          "type": "`$OBJECT`"
        },
        {
          "name": "idd",
          "short": "International direct dialing",
          "type": "`$OBJECT`"
        },
        {
          "name": "independent",
          "short": "Independence status",
          "type": "`$BOOLEAN`"
        },
        {
          "name": "landlocked",
          "short": "Landlocked status",
          "type": "`$BOOLEAN`"
        },
        {
          "name": "languages",
          "short": "Languages spoken",
          "type": "`$OBJECT`"
        },
        {
          "name": "latlng",
          "short": "Latitude and longitude",
          "type": "`$ARRAY`"
        },
        {
          "name": "maps",
          "type": "`$OBJECT`"
        },
        {
          "name": "name",
          "type": "`$OBJECT`"
        },
        {
          "name": "population",
          "short": "Country population",
          "type": "`$INTEGER`"
        },
        {
          "name": "postalCode",
          "type": "`$OBJECT`"
        },
        {
          "name": "region",
          "short": "Geographic region",
          "type": "`$STRING`"
        },
        {
          "name": "startOfWeek",
          "short": "Start of week day",
          "type": "`$STRING`"
        },
        {
          "name": "status",
          "short": "ISO 3166-1 assignment status",
          "type": "`$STRING`"
        },
        {
          "name": "subregion",
          "short": "Geographic subregion",
          "type": "`$STRING`"
        },
        {
          "name": "timezones",
          "short": "Timezones",
          "type": "`$ARRAY`"
        },
        {
          "name": "tld",
          "short": "Top-level domains",
          "type": "`$ARRAY`"
        },
        {
          "name": "translations",
          "type": "`$OBJECT`"
        },
        {
          "name": "unMember",
          "short": "UN membership status",
          "type": "`$BOOLEAN`"
        }
      ],
      "name": "all",
      "op": {
        "list": {
          "input": "data",
          "name": "list",
          "points": [
            {
              "args": {
                "query": [
                  {
                    "example": "name,capital,population",
                    "kind": "query",
                    "name": "field",
                    "orig": "field",
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "GET",
              "orig": "/all",
              "parts": [
                "all"
              ],
              "select": {
                "exist": [
                  "field"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "alpha": {
      "fields": [
        {
          "name": "altSpellings",
          "short": "Alternative country name spellings",
          "type": "`$ARRAY`"
        },
        {
          "name": "area",
          "short": "Country area in square kilometers",
          "type": "`$NUMBER`"
        },
        {
          "name": "borders",
          "short": "Border countries (ISO 3166-1 alpha-3 codes)",
          "type": "`$ARRAY`"
        },
        {
          "name": "capital",
          "short": "Capital city or cities",
          "type": "`$ARRAY`"
        },
        {
          "name": "capitalInfo",
          "type": "`$OBJECT`"
        },
        {
          "name": "car",
          "type": "`$OBJECT`"
        },
        {
          "name": "cca2",
          "short": "ISO 3166-1 alpha-2 code",
          "type": "`$STRING`"
        },
        {
          "name": "cca3",
          "short": "ISO 3166-1 alpha-3 code",
          "type": "`$STRING`"
        },
        {
          "name": "ccn3",
          "short": "ISO 3166-1 numeric code",
          "type": "`$STRING`"
        },
        {
          "name": "cioc",
          "short": "International Olympic Committee code",
          "type": "`$STRING`"
        },
        {
          "name": "coatOfArms",
          "type": "`$OBJECT`"
        },
        {
          "name": "continents",
          "short": "Continents",
          "type": "`$ARRAY`"
        },
        {
          "name": "currencies",
          "type": "`$OBJECT`"
        },
        {
          "name": "demonyms",
          "type": "`$OBJECT`"
        },
        {
          "name": "fifa",
          "short": "FIFA country code",
          "type": "`$STRING`"
        },
        {
          "name": "flag",
          "short": "Flag emoji",
          "type": "`$STRING`"
        },
        {
          "name": "flags",
          "type": "`$OBJECT`"
        },
        {
          "name": "gini",
          "short": "Gini coefficient",
          "type": "`$OBJECT`"
        },
        {
          "name": "id",
          "type": "`$STRING`"
        },
        {
          "name": "idd",
          "short": "International direct dialing",
          "type": "`$OBJECT`"
        },
        {
          "name": "independent",
          "short": "Independence status",
          "type": "`$BOOLEAN`"
        },
        {
          "name": "landlocked",
          "short": "Landlocked status",
          "type": "`$BOOLEAN`"
        },
        {
          "name": "languages",
          "short": "Languages spoken",
          "type": "`$OBJECT`"
        },
        {
          "name": "latlng",
          "short": "Latitude and longitude",
          "type": "`$ARRAY`"
        },
        {
          "name": "maps",
          "type": "`$OBJECT`"
        },
        {
          "name": "name",
          "type": "`$OBJECT`"
        },
        {
          "name": "population",
          "short": "Country population",
          "type": "`$INTEGER`"
        },
        {
          "name": "postalCode",
          "type": "`$OBJECT`"
        },
        {
          "name": "region",
          "short": "Geographic region",
          "type": "`$STRING`"
        },
        {
          "name": "startOfWeek",
          "short": "Start of week day",
          "type": "`$STRING`"
        },
        {
          "name": "status",
          "short": "ISO 3166-1 assignment status",
          "type": "`$STRING`"
        },
        {
          "name": "subregion",
          "short": "Geographic subregion",
          "type": "`$STRING`"
        },
        {
          "name": "timezones",
          "short": "Timezones",
          "type": "`$ARRAY`"
        },
        {
          "name": "tld",
          "short": "Top-level domains",
          "type": "`$ARRAY`"
        },
        {
          "name": "translations",
          "type": "`$OBJECT`"
        },
        {
          "name": "unMember",
          "short": "UN membership status",
          "type": "`$BOOLEAN`"
        }
      ],
      "name": "alpha",
      "op": {
        "load": {
          "input": "data",
          "name": "load",
          "points": [
            {
              "args": {
                "params": [
                  {
                    "example": "de",
                    "kind": "param",
                    "name": "id",
                    "orig": "code",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ],
                "query": [
                  {
                    "kind": "query",
                    "name": "field",
                    "orig": "field",
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "GET",
              "orig": "/alpha/{code}",
              "parts": [
                "alpha",
                "{id}"
              ],
              "rename": {
                "param": {
                  "code": "id"
                }
              },
              "select": {
                "exist": [
                  "field",
                  "id"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "capital": {
      "fields": [
        {
          "name": "altSpellings",
          "short": "Alternative country name spellings",
          "type": "`$ARRAY`"
        },
        {
          "name": "area",
          "short": "Country area in square kilometers",
          "type": "`$NUMBER`"
        },
        {
          "name": "borders",
          "short": "Border countries (ISO 3166-1 alpha-3 codes)",
          "type": "`$ARRAY`"
        },
        {
          "name": "capital",
          "short": "Capital city or cities",
          "type": "`$ARRAY`"
        },
        {
          "name": "capitalInfo",
          "type": "`$OBJECT`"
        },
        {
          "name": "car",
          "type": "`$OBJECT`"
        },
        {
          "name": "cca2",
          "short": "ISO 3166-1 alpha-2 code",
          "type": "`$STRING`"
        },
        {
          "name": "cca3",
          "short": "ISO 3166-1 alpha-3 code",
          "type": "`$STRING`"
        },
        {
          "name": "ccn3",
          "short": "ISO 3166-1 numeric code",
          "type": "`$STRING`"
        },
        {
          "name": "cioc",
          "short": "International Olympic Committee code",
          "type": "`$STRING`"
        },
        {
          "name": "coatOfArms",
          "type": "`$OBJECT`"
        },
        {
          "name": "continents",
          "short": "Continents",
          "type": "`$ARRAY`"
        },
        {
          "name": "currencies",
          "type": "`$OBJECT`"
        },
        {
          "name": "demonyms",
          "type": "`$OBJECT`"
        },
        {
          "name": "fifa",
          "short": "FIFA country code",
          "type": "`$STRING`"
        },
        {
          "name": "flag",
          "short": "Flag emoji",
          "type": "`$STRING`"
        },
        {
          "name": "flags",
          "type": "`$OBJECT`"
        },
        {
          "name": "gini",
          "short": "Gini coefficient",
          "type": "`$OBJECT`"
        },
        {
          "name": "id",
          "type": "`$STRING`"
        },
        {
          "name": "idd",
          "short": "International direct dialing",
          "type": "`$OBJECT`"
        },
        {
          "name": "independent",
          "short": "Independence status",
          "type": "`$BOOLEAN`"
        },
        {
          "name": "landlocked",
          "short": "Landlocked status",
          "type": "`$BOOLEAN`"
        },
        {
          "name": "languages",
          "short": "Languages spoken",
          "type": "`$OBJECT`"
        },
        {
          "name": "latlng",
          "short": "Latitude and longitude",
          "type": "`$ARRAY`"
        },
        {
          "name": "maps",
          "type": "`$OBJECT`"
        },
        {
          "name": "name",
          "type": "`$OBJECT`"
        },
        {
          "name": "population",
          "short": "Country population",
          "type": "`$INTEGER`"
        },
        {
          "name": "postalCode",
          "type": "`$OBJECT`"
        },
        {
          "name": "region",
          "short": "Geographic region",
          "type": "`$STRING`"
        },
        {
          "name": "startOfWeek",
          "short": "Start of week day",
          "type": "`$STRING`"
        },
        {
          "name": "status",
          "short": "ISO 3166-1 assignment status",
          "type": "`$STRING`"
        },
        {
          "name": "subregion",
          "short": "Geographic subregion",
          "type": "`$STRING`"
        },
        {
          "name": "timezones",
          "short": "Timezones",
          "type": "`$ARRAY`"
        },
        {
          "name": "tld",
          "short": "Top-level domains",
          "type": "`$ARRAY`"
        },
        {
          "name": "translations",
          "type": "`$OBJECT`"
        },
        {
          "name": "unMember",
          "short": "UN membership status",
          "type": "`$BOOLEAN`"
        }
      ],
      "name": "capital",
      "op": {
        "load": {
          "input": "data",
          "name": "load",
          "points": [
            {
              "args": {
                "params": [
                  {
                    "example": "berlin",
                    "kind": "param",
                    "name": "id",
                    "orig": "capital",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ],
                "query": [
                  {
                    "kind": "query",
                    "name": "field",
                    "orig": "field",
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "GET",
              "orig": "/capital/{capital}",
              "parts": [
                "capital",
                "{id}"
              ],
              "rename": {
                "param": {
                  "capital": "id"
                }
              },
              "select": {
                "exist": [
                  "field",
                  "id"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "name": {
      "fields": [
        {
          "name": "altSpellings",
          "short": "Alternative country name spellings",
          "type": "`$ARRAY`"
        },
        {
          "name": "area",
          "short": "Country area in square kilometers",
          "type": "`$NUMBER`"
        },
        {
          "name": "borders",
          "short": "Border countries (ISO 3166-1 alpha-3 codes)",
          "type": "`$ARRAY`"
        },
        {
          "name": "capital",
          "short": "Capital city or cities",
          "type": "`$ARRAY`"
        },
        {
          "name": "capitalInfo",
          "type": "`$OBJECT`"
        },
        {
          "name": "car",
          "type": "`$OBJECT`"
        },
        {
          "name": "cca2",
          "short": "ISO 3166-1 alpha-2 code",
          "type": "`$STRING`"
        },
        {
          "name": "cca3",
          "short": "ISO 3166-1 alpha-3 code",
          "type": "`$STRING`"
        },
        {
          "name": "ccn3",
          "short": "ISO 3166-1 numeric code",
          "type": "`$STRING`"
        },
        {
          "name": "cioc",
          "short": "International Olympic Committee code",
          "type": "`$STRING`"
        },
        {
          "name": "coatOfArms",
          "type": "`$OBJECT`"
        },
        {
          "name": "continents",
          "short": "Continents",
          "type": "`$ARRAY`"
        },
        {
          "name": "currencies",
          "type": "`$OBJECT`"
        },
        {
          "name": "demonyms",
          "type": "`$OBJECT`"
        },
        {
          "name": "fifa",
          "short": "FIFA country code",
          "type": "`$STRING`"
        },
        {
          "name": "flag",
          "short": "Flag emoji",
          "type": "`$STRING`"
        },
        {
          "name": "flags",
          "type": "`$OBJECT`"
        },
        {
          "name": "gini",
          "short": "Gini coefficient",
          "type": "`$OBJECT`"
        },
        {
          "name": "id",
          "type": "`$STRING`"
        },
        {
          "name": "idd",
          "short": "International direct dialing",
          "type": "`$OBJECT`"
        },
        {
          "name": "independent",
          "short": "Independence status",
          "type": "`$BOOLEAN`"
        },
        {
          "name": "landlocked",
          "short": "Landlocked status",
          "type": "`$BOOLEAN`"
        },
        {
          "name": "languages",
          "short": "Languages spoken",
          "type": "`$OBJECT`"
        },
        {
          "name": "latlng",
          "short": "Latitude and longitude",
          "type": "`$ARRAY`"
        },
        {
          "name": "maps",
          "type": "`$OBJECT`"
        },
        {
          "name": "name",
          "type": "`$OBJECT`"
        },
        {
          "name": "population",
          "short": "Country population",
          "type": "`$INTEGER`"
        },
        {
          "name": "postalCode",
          "type": "`$OBJECT`"
        },
        {
          "name": "region",
          "short": "Geographic region",
          "type": "`$STRING`"
        },
        {
          "name": "startOfWeek",
          "short": "Start of week day",
          "type": "`$STRING`"
        },
        {
          "name": "status",
          "short": "ISO 3166-1 assignment status",
          "type": "`$STRING`"
        },
        {
          "name": "subregion",
          "short": "Geographic subregion",
          "type": "`$STRING`"
        },
        {
          "name": "timezones",
          "short": "Timezones",
          "type": "`$ARRAY`"
        },
        {
          "name": "tld",
          "short": "Top-level domains",
          "type": "`$ARRAY`"
        },
        {
          "name": "translations",
          "type": "`$OBJECT`"
        },
        {
          "name": "unMember",
          "short": "UN membership status",
          "type": "`$BOOLEAN`"
        }
      ],
      "name": "name",
      "op": {
        "load": {
          "input": "data",
          "name": "load",
          "points": [
            {
              "args": {
                "params": [
                  {
                    "example": "germany",
                    "kind": "param",
                    "name": "id",
                    "orig": "name",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ],
                "query": [
                  {
                    "kind": "query",
                    "name": "field",
                    "orig": "field",
                    "type": "`$STRING`"
                  },
                  {
                    "example": false,
                    "kind": "query",
                    "name": "full_text",
                    "orig": "full_text",
                    "type": "`$BOOLEAN`"
                  }
                ]
              },
              "kind": "http",
              "method": "GET",
              "orig": "/name/{name}",
              "parts": [
                "name",
                "{id}"
              ],
              "rename": {
                "param": {
                  "name": "id"
                }
              },
              "select": {
                "exist": [
                  "field",
                  "full_text",
                  "id"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    }
  }
}


const config = new Config()

export {
  config
}


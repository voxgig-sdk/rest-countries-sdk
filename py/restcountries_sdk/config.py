# RestCountries SDK configuration


# The sekreto plugin DEFINITIONS the model selected per feature, imported
# above by name from the modules the catalogue's active `plugin.def`
# entries declare. Handed to each feature (secrets builds its Sekreto
# with them): a provider kind not listed here is unknown to that SDK.
FEATURE_PLUGINS = {
}


_shared_config = None


def shared_config():
    """Return the process-wide config, built once on first use.

    The SDK reads the config on every request and never writes to it, so one
    instance is shared by every client rather than rebuilt per client.

    The returned dict is shared: treat it as read-only. Callers that need to
    mutate should use make_config, which always returns a fresh copy.
    """
    global _shared_config
    if _shared_config is None:
        _shared_config = make_config()
    return _shared_config


def make_config():
    """Build a fresh, fully materialised config dict.

    Every call rebuilds the whole structure, so prefer shared_config unless
    you need a private copy you intend to mutate.
    """
    return {
        "main": {
            "name": "RestCountries",
            "slug": "rest-countries",
            "version": "0.0.1",
            "target": "py",
        },
        "feature": {
            "ratelimit": {
        "options": {
          "active": False,
          "burst": 5,
          "rate": 5,
        },
        "optspec": {
          "now": "`$FUNCTION`",
          "sleep": "`$FUNCTION`",
        },
        "strict": False,
        "transport": "wrap",
      },
            "retry": {
        "options": {
          "active": False,
          "factor": 2,
          "maxDelay": 2000,
          "minDelay": 50,
          "retries": 2,
          "statuses": [
            408,
            425,
            429,
            500,
            502,
            503,
            504,
          ],
        },
        "optspec": {
          "jitter": "`$BOOLEAN`",
          "sleep": "`$FUNCTION`",
        },
        "strict": False,
        "transport": "wrap",
      },
            "test": {
        "options": {
          "active": False,
        },
        "optspec": {
          "entity": "`$MAP`",
          "net": "`$MAP`",
        },
        "strict": False,
        "transport": "base",
      },
            "timeout": {
        "options": {
          "active": False,
          "ms": 30000,
        },
        "optspec": {
          "clearTimer": "`$FUNCTION`",
          "setTimer": "`$FUNCTION`",
        },
        "strict": False,
        "transport": "wrap",
      },
        },
        "options": {
            "base": "https://restcountries.com/v3.1",
            "headers": {
        "content-type": "application/json",
      },
            "entity": {
                "all": {},
                "alpha": {},
                "capital": {},
                "name": {},
            },
        },
        "entity": {
      "all": {
        "fields": [
          {
            "name": "altSpellings",
            "short": "Alternative country name spellings",
            "type": "`$ARRAY`",
          },
          {
            "name": "area",
            "short": "Country area in square kilometers",
            "type": "`$NUMBER`",
          },
          {
            "name": "borders",
            "short": "Border countries (ISO 3166-1 alpha-3 codes)",
            "type": "`$ARRAY`",
          },
          {
            "name": "capital",
            "short": "Capital city or cities",
            "type": "`$ARRAY`",
          },
          {
            "name": "capitalInfo",
            "type": "`$OBJECT`",
          },
          {
            "name": "car",
            "type": "`$OBJECT`",
          },
          {
            "name": "cca2",
            "short": "ISO 3166-1 alpha-2 code",
            "type": "`$STRING`",
          },
          {
            "name": "cca3",
            "short": "ISO 3166-1 alpha-3 code",
            "type": "`$STRING`",
          },
          {
            "name": "ccn3",
            "short": "ISO 3166-1 numeric code",
            "type": "`$STRING`",
          },
          {
            "name": "cioc",
            "short": "International Olympic Committee code",
            "type": "`$STRING`",
          },
          {
            "name": "coatOfArms",
            "type": "`$OBJECT`",
          },
          {
            "name": "continents",
            "short": "Continents",
            "type": "`$ARRAY`",
          },
          {
            "name": "currencies",
            "type": "`$OBJECT`",
          },
          {
            "name": "demonyms",
            "type": "`$OBJECT`",
          },
          {
            "name": "fifa",
            "short": "FIFA country code",
            "type": "`$STRING`",
          },
          {
            "name": "flag",
            "short": "Flag emoji",
            "type": "`$STRING`",
          },
          {
            "name": "flags",
            "type": "`$OBJECT`",
          },
          {
            "name": "gini",
            "short": "Gini coefficient",
            "type": "`$OBJECT`",
          },
          {
            "name": "idd",
            "short": "International direct dialing",
            "type": "`$OBJECT`",
          },
          {
            "name": "independent",
            "short": "Independence status",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "landlocked",
            "short": "Landlocked status",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "languages",
            "short": "Languages spoken",
            "type": "`$OBJECT`",
          },
          {
            "name": "latlng",
            "short": "Latitude and longitude",
            "type": "`$ARRAY`",
          },
          {
            "name": "maps",
            "type": "`$OBJECT`",
          },
          {
            "name": "name",
            "type": "`$OBJECT`",
          },
          {
            "name": "population",
            "short": "Country population",
            "type": "`$INTEGER`",
          },
          {
            "name": "postalCode",
            "type": "`$OBJECT`",
          },
          {
            "name": "region",
            "short": "Geographic region",
            "type": "`$STRING`",
          },
          {
            "name": "startOfWeek",
            "short": "Start of week day",
            "type": "`$STRING`",
          },
          {
            "name": "status",
            "short": "ISO 3166-1 assignment status",
            "type": "`$STRING`",
          },
          {
            "name": "subregion",
            "short": "Geographic subregion",
            "type": "`$STRING`",
          },
          {
            "name": "timezones",
            "short": "Timezones",
            "type": "`$ARRAY`",
          },
          {
            "name": "tld",
            "short": "Top-level domains",
            "type": "`$ARRAY`",
          },
          {
            "name": "translations",
            "type": "`$OBJECT`",
          },
          {
            "name": "unMember",
            "short": "UN membership status",
            "type": "`$BOOLEAN`",
          },
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
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "GET",
                "orig": "/all",
                "segments": [
                  {
                    "lit": "all",
                  },
                ],
                "select": {
                  "exist": [
                    "field",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "parts": [
                  "all",
                ],
              },
            ],
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "alpha": {
        "fields": [
          {
            "name": "altSpellings",
            "short": "Alternative country name spellings",
            "type": "`$ARRAY`",
          },
          {
            "name": "area",
            "short": "Country area in square kilometers",
            "type": "`$NUMBER`",
          },
          {
            "name": "borders",
            "short": "Border countries (ISO 3166-1 alpha-3 codes)",
            "type": "`$ARRAY`",
          },
          {
            "name": "capital",
            "short": "Capital city or cities",
            "type": "`$ARRAY`",
          },
          {
            "name": "capitalInfo",
            "type": "`$OBJECT`",
          },
          {
            "name": "car",
            "type": "`$OBJECT`",
          },
          {
            "name": "cca2",
            "short": "ISO 3166-1 alpha-2 code",
            "type": "`$STRING`",
          },
          {
            "name": "cca3",
            "short": "ISO 3166-1 alpha-3 code",
            "type": "`$STRING`",
          },
          {
            "name": "ccn3",
            "short": "ISO 3166-1 numeric code",
            "type": "`$STRING`",
          },
          {
            "name": "cioc",
            "short": "International Olympic Committee code",
            "type": "`$STRING`",
          },
          {
            "name": "coatOfArms",
            "type": "`$OBJECT`",
          },
          {
            "name": "continents",
            "short": "Continents",
            "type": "`$ARRAY`",
          },
          {
            "name": "currencies",
            "type": "`$OBJECT`",
          },
          {
            "name": "demonyms",
            "type": "`$OBJECT`",
          },
          {
            "name": "fifa",
            "short": "FIFA country code",
            "type": "`$STRING`",
          },
          {
            "name": "flag",
            "short": "Flag emoji",
            "type": "`$STRING`",
          },
          {
            "name": "flags",
            "type": "`$OBJECT`",
          },
          {
            "name": "gini",
            "short": "Gini coefficient",
            "type": "`$OBJECT`",
          },
          {
            "name": "id",
            "type": "`$STRING`",
          },
          {
            "name": "idd",
            "short": "International direct dialing",
            "type": "`$OBJECT`",
          },
          {
            "name": "independent",
            "short": "Independence status",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "landlocked",
            "short": "Landlocked status",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "languages",
            "short": "Languages spoken",
            "type": "`$OBJECT`",
          },
          {
            "name": "latlng",
            "short": "Latitude and longitude",
            "type": "`$ARRAY`",
          },
          {
            "name": "maps",
            "type": "`$OBJECT`",
          },
          {
            "name": "name",
            "type": "`$OBJECT`",
          },
          {
            "name": "population",
            "short": "Country population",
            "type": "`$INTEGER`",
          },
          {
            "name": "postalCode",
            "type": "`$OBJECT`",
          },
          {
            "name": "region",
            "short": "Geographic region",
            "type": "`$STRING`",
          },
          {
            "name": "startOfWeek",
            "short": "Start of week day",
            "type": "`$STRING`",
          },
          {
            "name": "status",
            "short": "ISO 3166-1 assignment status",
            "type": "`$STRING`",
          },
          {
            "name": "subregion",
            "short": "Geographic subregion",
            "type": "`$STRING`",
          },
          {
            "name": "timezones",
            "short": "Timezones",
            "type": "`$ARRAY`",
          },
          {
            "name": "tld",
            "short": "Top-level domains",
            "type": "`$ARRAY`",
          },
          {
            "name": "translations",
            "type": "`$OBJECT`",
          },
          {
            "name": "unMember",
            "short": "UN membership status",
            "type": "`$BOOLEAN`",
          },
        ],
        "id": {
          "field": "id",
          "name": "id",
        },
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
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                  "query": [
                    {
                      "kind": "query",
                      "name": "field",
                      "orig": "field",
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "GET",
                "orig": "/alpha/{code}",
                "rename": {
                  "param": {
                    "code": "id",
                  },
                },
                "segments": [
                  {
                    "lit": "alpha",
                  },
                  {
                    "var": "id",
                  },
                ],
                "select": {
                  "exist": [
                    "field",
                    "id",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "parts": [
                  "alpha",
                  "{id}",
                ],
              },
            ],
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "capital": {
        "fields": [
          {
            "name": "altSpellings",
            "short": "Alternative country name spellings",
            "type": "`$ARRAY`",
          },
          {
            "name": "area",
            "short": "Country area in square kilometers",
            "type": "`$NUMBER`",
          },
          {
            "name": "borders",
            "short": "Border countries (ISO 3166-1 alpha-3 codes)",
            "type": "`$ARRAY`",
          },
          {
            "name": "capital",
            "short": "Capital city or cities",
            "type": "`$ARRAY`",
          },
          {
            "name": "capitalInfo",
            "type": "`$OBJECT`",
          },
          {
            "name": "car",
            "type": "`$OBJECT`",
          },
          {
            "name": "cca2",
            "short": "ISO 3166-1 alpha-2 code",
            "type": "`$STRING`",
          },
          {
            "name": "cca3",
            "short": "ISO 3166-1 alpha-3 code",
            "type": "`$STRING`",
          },
          {
            "name": "ccn3",
            "short": "ISO 3166-1 numeric code",
            "type": "`$STRING`",
          },
          {
            "name": "cioc",
            "short": "International Olympic Committee code",
            "type": "`$STRING`",
          },
          {
            "name": "coatOfArms",
            "type": "`$OBJECT`",
          },
          {
            "name": "continents",
            "short": "Continents",
            "type": "`$ARRAY`",
          },
          {
            "name": "currencies",
            "type": "`$OBJECT`",
          },
          {
            "name": "demonyms",
            "type": "`$OBJECT`",
          },
          {
            "name": "fifa",
            "short": "FIFA country code",
            "type": "`$STRING`",
          },
          {
            "name": "flag",
            "short": "Flag emoji",
            "type": "`$STRING`",
          },
          {
            "name": "flags",
            "type": "`$OBJECT`",
          },
          {
            "name": "gini",
            "short": "Gini coefficient",
            "type": "`$OBJECT`",
          },
          {
            "name": "id",
            "type": "`$STRING`",
          },
          {
            "name": "idd",
            "short": "International direct dialing",
            "type": "`$OBJECT`",
          },
          {
            "name": "independent",
            "short": "Independence status",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "landlocked",
            "short": "Landlocked status",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "languages",
            "short": "Languages spoken",
            "type": "`$OBJECT`",
          },
          {
            "name": "latlng",
            "short": "Latitude and longitude",
            "type": "`$ARRAY`",
          },
          {
            "name": "maps",
            "type": "`$OBJECT`",
          },
          {
            "name": "name",
            "type": "`$OBJECT`",
          },
          {
            "name": "population",
            "short": "Country population",
            "type": "`$INTEGER`",
          },
          {
            "name": "postalCode",
            "type": "`$OBJECT`",
          },
          {
            "name": "region",
            "short": "Geographic region",
            "type": "`$STRING`",
          },
          {
            "name": "startOfWeek",
            "short": "Start of week day",
            "type": "`$STRING`",
          },
          {
            "name": "status",
            "short": "ISO 3166-1 assignment status",
            "type": "`$STRING`",
          },
          {
            "name": "subregion",
            "short": "Geographic subregion",
            "type": "`$STRING`",
          },
          {
            "name": "timezones",
            "short": "Timezones",
            "type": "`$ARRAY`",
          },
          {
            "name": "tld",
            "short": "Top-level domains",
            "type": "`$ARRAY`",
          },
          {
            "name": "translations",
            "type": "`$OBJECT`",
          },
          {
            "name": "unMember",
            "short": "UN membership status",
            "type": "`$BOOLEAN`",
          },
        ],
        "id": {
          "field": "id",
          "name": "id",
        },
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
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                  "query": [
                    {
                      "kind": "query",
                      "name": "field",
                      "orig": "field",
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "GET",
                "orig": "/capital/{capital}",
                "rename": {
                  "param": {
                    "capital": "id",
                  },
                },
                "segments": [
                  {
                    "lit": "capital",
                  },
                  {
                    "var": "id",
                  },
                ],
                "select": {
                  "exist": [
                    "field",
                    "id",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "parts": [
                  "capital",
                  "{id}",
                ],
              },
            ],
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "name": {
        "fields": [
          {
            "name": "altSpellings",
            "short": "Alternative country name spellings",
            "type": "`$ARRAY`",
          },
          {
            "name": "area",
            "short": "Country area in square kilometers",
            "type": "`$NUMBER`",
          },
          {
            "name": "borders",
            "short": "Border countries (ISO 3166-1 alpha-3 codes)",
            "type": "`$ARRAY`",
          },
          {
            "name": "capital",
            "short": "Capital city or cities",
            "type": "`$ARRAY`",
          },
          {
            "name": "capitalInfo",
            "type": "`$OBJECT`",
          },
          {
            "name": "car",
            "type": "`$OBJECT`",
          },
          {
            "name": "cca2",
            "short": "ISO 3166-1 alpha-2 code",
            "type": "`$STRING`",
          },
          {
            "name": "cca3",
            "short": "ISO 3166-1 alpha-3 code",
            "type": "`$STRING`",
          },
          {
            "name": "ccn3",
            "short": "ISO 3166-1 numeric code",
            "type": "`$STRING`",
          },
          {
            "name": "cioc",
            "short": "International Olympic Committee code",
            "type": "`$STRING`",
          },
          {
            "name": "coatOfArms",
            "type": "`$OBJECT`",
          },
          {
            "name": "continents",
            "short": "Continents",
            "type": "`$ARRAY`",
          },
          {
            "name": "currencies",
            "type": "`$OBJECT`",
          },
          {
            "name": "demonyms",
            "type": "`$OBJECT`",
          },
          {
            "name": "fifa",
            "short": "FIFA country code",
            "type": "`$STRING`",
          },
          {
            "name": "flag",
            "short": "Flag emoji",
            "type": "`$STRING`",
          },
          {
            "name": "flags",
            "type": "`$OBJECT`",
          },
          {
            "name": "gini",
            "short": "Gini coefficient",
            "type": "`$OBJECT`",
          },
          {
            "name": "id",
            "type": "`$STRING`",
          },
          {
            "name": "idd",
            "short": "International direct dialing",
            "type": "`$OBJECT`",
          },
          {
            "name": "independent",
            "short": "Independence status",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "landlocked",
            "short": "Landlocked status",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "languages",
            "short": "Languages spoken",
            "type": "`$OBJECT`",
          },
          {
            "name": "latlng",
            "short": "Latitude and longitude",
            "type": "`$ARRAY`",
          },
          {
            "name": "maps",
            "type": "`$OBJECT`",
          },
          {
            "name": "name",
            "type": "`$OBJECT`",
          },
          {
            "name": "population",
            "short": "Country population",
            "type": "`$INTEGER`",
          },
          {
            "name": "postalCode",
            "type": "`$OBJECT`",
          },
          {
            "name": "region",
            "short": "Geographic region",
            "type": "`$STRING`",
          },
          {
            "name": "startOfWeek",
            "short": "Start of week day",
            "type": "`$STRING`",
          },
          {
            "name": "status",
            "short": "ISO 3166-1 assignment status",
            "type": "`$STRING`",
          },
          {
            "name": "subregion",
            "short": "Geographic subregion",
            "type": "`$STRING`",
          },
          {
            "name": "timezones",
            "short": "Timezones",
            "type": "`$ARRAY`",
          },
          {
            "name": "tld",
            "short": "Top-level domains",
            "type": "`$ARRAY`",
          },
          {
            "name": "translations",
            "type": "`$OBJECT`",
          },
          {
            "name": "unMember",
            "short": "UN membership status",
            "type": "`$BOOLEAN`",
          },
        ],
        "id": {
          "field": "id",
          "name": "id",
        },
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
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                  "query": [
                    {
                      "kind": "query",
                      "name": "field",
                      "orig": "field",
                      "type": "`$STRING`",
                    },
                    {
                      "example": False,
                      "kind": "query",
                      "name": "full_text",
                      "orig": "full_text",
                      "type": "`$BOOLEAN`",
                    },
                  ],
                },
                "kind": "http",
                "method": "GET",
                "orig": "/name/{name}",
                "rename": {
                  "param": {
                    "name": "id",
                  },
                },
                "segments": [
                  {
                    "lit": "name",
                  },
                  {
                    "var": "id",
                  },
                ],
                "select": {
                  "exist": [
                    "field",
                    "full_text",
                    "id",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "parts": [
                  "name",
                  "{id}",
                ],
              },
            ],
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
    },
    }

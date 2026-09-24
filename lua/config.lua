-- RestCountries SDK configuration

-- Build a fresh, fully materialised config table. Every call rebuilds the
-- whole structure, so prefer require("config_shared") unless you need a
-- private copy you intend to mutate.
local function make_config()
  return {
    main = {
      name = "RestCountries",
      slug = "rest-countries",
      version = "0.0.1",
      target = "lua",
    },
    feature = {
      ["ratelimit"] = {
        ["options"] = {
          ["active"] = false,
          ["burst"] = 5,
          ["rate"] = 5,
        },
        ["optspec"] = {
          ["now"] = "`$FUNCTION`",
          ["sleep"] = "`$FUNCTION`",
        },
        ["strict"] = false,
        ["transport"] = "wrap",
      },
      ["retry"] = {
        ["options"] = {
          ["active"] = false,
          ["factor"] = 2,
          ["maxDelay"] = 2000,
          ["minDelay"] = 50,
          ["retries"] = 2,
          ["statuses"] = {
            408,
            425,
            429,
            500,
            502,
            503,
            504,
          },
        },
        ["optspec"] = {
          ["jitter"] = "`$BOOLEAN`",
          ["sleep"] = "`$FUNCTION`",
        },
        ["strict"] = false,
        ["transport"] = "wrap",
      },
      ["test"] = {
        ["options"] = {
          ["active"] = false,
        },
        ["optspec"] = {
          ["entity"] = "`$MAP`",
          ["net"] = "`$MAP`",
        },
        ["strict"] = false,
        ["transport"] = "base",
      },
      ["timeout"] = {
        ["options"] = {
          ["active"] = false,
          ["ms"] = 30000,
        },
        ["optspec"] = {
          ["clearTimer"] = "`$FUNCTION`",
          ["setTimer"] = "`$FUNCTION`",
        },
        ["strict"] = false,
        ["transport"] = "wrap",
      },
    },
    options = {
      base = "https://restcountries.com/v3.1",
      headers = {
        ["content-type"] = "application/json",
      },
      entity = {
        ["all"] = {},
        ["alpha"] = {},
        ["capital"] = {},
        ["name"] = {},
      },
    },
    entity = {
      ["all"] = {
        ["fields"] = {
          {
            ["name"] = "altSpellings",
            ["title"] = "Alt Spellings",
            ["type"] = "`$ARRAY`",
            ["short"] = "Alternative country name spellings",
          },
          {
            ["name"] = "area",
            ["title"] = "Area",
            ["type"] = "`$NUMBER`",
            ["short"] = "Country area in square kilometers",
          },
          {
            ["name"] = "borders",
            ["title"] = "Borders",
            ["type"] = "`$ARRAY`",
            ["short"] = "Border countries (ISO 3166-1 alpha-3 codes)",
          },
          {
            ["name"] = "capital",
            ["title"] = "Capital",
            ["type"] = "`$ARRAY`",
            ["short"] = "Capital city or cities",
          },
          {
            ["name"] = "capitalInfo",
            ["title"] = "Capital Info",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "car",
            ["title"] = "Car",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "cca2",
            ["title"] = "Cca2",
            ["type"] = "`$STRING`",
            ["short"] = "ISO 3166-1 alpha-2 code",
          },
          {
            ["name"] = "cca3",
            ["title"] = "Cca3",
            ["type"] = "`$STRING`",
            ["short"] = "ISO 3166-1 alpha-3 code",
          },
          {
            ["name"] = "ccn3",
            ["title"] = "Ccn3",
            ["type"] = "`$STRING`",
            ["short"] = "ISO 3166-1 numeric code",
          },
          {
            ["name"] = "cioc",
            ["title"] = "Cioc",
            ["type"] = "`$STRING`",
            ["short"] = "International Olympic Committee code",
          },
          {
            ["name"] = "coatOfArms",
            ["title"] = "Coat Of Arms",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "continents",
            ["title"] = "Continents",
            ["type"] = "`$ARRAY`",
            ["short"] = "Continents",
          },
          {
            ["name"] = "currencies",
            ["title"] = "Currencies",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "demonyms",
            ["title"] = "Demonyms",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "fifa",
            ["title"] = "Fifa",
            ["type"] = "`$STRING`",
            ["short"] = "FIFA country code",
          },
          {
            ["name"] = "flag",
            ["title"] = "Flag",
            ["type"] = "`$STRING`",
            ["short"] = "Flag emoji",
          },
          {
            ["name"] = "flags",
            ["title"] = "Flags",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "gini",
            ["title"] = "Gini",
            ["type"] = "`$OBJECT`",
            ["short"] = "Gini coefficient",
          },
          {
            ["name"] = "idd",
            ["title"] = "Idd",
            ["type"] = "`$OBJECT`",
            ["short"] = "International direct dialing",
          },
          {
            ["name"] = "independent",
            ["title"] = "Independent",
            ["type"] = "`$BOOLEAN`",
            ["short"] = "Independence status",
          },
          {
            ["name"] = "landlocked",
            ["title"] = "Landlocked",
            ["type"] = "`$BOOLEAN`",
            ["short"] = "Landlocked status",
          },
          {
            ["name"] = "languages",
            ["title"] = "Languages",
            ["type"] = "`$OBJECT`",
            ["short"] = "Languages spoken",
          },
          {
            ["name"] = "latlng",
            ["title"] = "Latlng",
            ["type"] = "`$ARRAY`",
            ["short"] = "Latitude and longitude",
          },
          {
            ["name"] = "maps",
            ["title"] = "Maps",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "name",
            ["title"] = "Name",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "population",
            ["title"] = "Population",
            ["type"] = "`$INTEGER`",
            ["short"] = "Country population",
          },
          {
            ["name"] = "postalCode",
            ["title"] = "Postal Code",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "region",
            ["title"] = "Region",
            ["type"] = "`$STRING`",
            ["short"] = "Geographic region",
          },
          {
            ["name"] = "startOfWeek",
            ["title"] = "Start Of Week",
            ["type"] = "`$STRING`",
            ["short"] = "Start of week day",
          },
          {
            ["name"] = "status",
            ["title"] = "Status",
            ["type"] = "`$STRING`",
            ["short"] = "ISO 3166-1 assignment status",
          },
          {
            ["name"] = "subregion",
            ["title"] = "Subregion",
            ["type"] = "`$STRING`",
            ["short"] = "Geographic subregion",
          },
          {
            ["name"] = "timezones",
            ["title"] = "Timezones",
            ["type"] = "`$ARRAY`",
            ["short"] = "Timezones",
          },
          {
            ["name"] = "tld",
            ["title"] = "Tld",
            ["type"] = "`$ARRAY`",
            ["short"] = "Top-level domains",
          },
          {
            ["name"] = "translations",
            ["title"] = "Translations",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "unMember",
            ["title"] = "Un Member",
            ["type"] = "`$BOOLEAN`",
            ["short"] = "UN membership status",
          },
        },
        ["name"] = "all",
        ["op"] = {
          ["list"] = {
            ["input"] = "data",
            ["name"] = "list",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/all",
                ["segments"] = {
                  {
                    ["lit"] = "all",
                  },
                },
                ["parts"] = {
                  "all",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["query"] = {
                    {
                      ["name"] = "field",
                      ["orig"] = "field",
                      ["type"] = "`$STRING`",
                      ["kind"] = "query",
                      ["example"] = "name,capital,population",
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "field",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["alpha"] = {
        ["fields"] = {
          {
            ["name"] = "altSpellings",
            ["title"] = "Alt Spellings",
            ["type"] = "`$ARRAY`",
            ["short"] = "Alternative country name spellings",
          },
          {
            ["name"] = "area",
            ["title"] = "Area",
            ["type"] = "`$NUMBER`",
            ["short"] = "Country area in square kilometers",
          },
          {
            ["name"] = "borders",
            ["title"] = "Borders",
            ["type"] = "`$ARRAY`",
            ["short"] = "Border countries (ISO 3166-1 alpha-3 codes)",
          },
          {
            ["name"] = "capital",
            ["title"] = "Capital",
            ["type"] = "`$ARRAY`",
            ["short"] = "Capital city or cities",
          },
          {
            ["name"] = "capitalInfo",
            ["title"] = "Capital Info",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "car",
            ["title"] = "Car",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "cca2",
            ["title"] = "Cca2",
            ["type"] = "`$STRING`",
            ["short"] = "ISO 3166-1 alpha-2 code",
          },
          {
            ["name"] = "cca3",
            ["title"] = "Cca3",
            ["type"] = "`$STRING`",
            ["short"] = "ISO 3166-1 alpha-3 code",
          },
          {
            ["name"] = "ccn3",
            ["title"] = "Ccn3",
            ["type"] = "`$STRING`",
            ["short"] = "ISO 3166-1 numeric code",
          },
          {
            ["name"] = "cioc",
            ["title"] = "Cioc",
            ["type"] = "`$STRING`",
            ["short"] = "International Olympic Committee code",
          },
          {
            ["name"] = "coatOfArms",
            ["title"] = "Coat Of Arms",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "continents",
            ["title"] = "Continents",
            ["type"] = "`$ARRAY`",
            ["short"] = "Continents",
          },
          {
            ["name"] = "currencies",
            ["title"] = "Currencies",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "demonyms",
            ["title"] = "Demonyms",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "fifa",
            ["title"] = "Fifa",
            ["type"] = "`$STRING`",
            ["short"] = "FIFA country code",
          },
          {
            ["name"] = "flag",
            ["title"] = "Flag",
            ["type"] = "`$STRING`",
            ["short"] = "Flag emoji",
          },
          {
            ["name"] = "flags",
            ["title"] = "Flags",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "gini",
            ["title"] = "Gini",
            ["type"] = "`$OBJECT`",
            ["short"] = "Gini coefficient",
          },
          {
            ["name"] = "id",
            ["title"] = "Id",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "idd",
            ["title"] = "Idd",
            ["type"] = "`$OBJECT`",
            ["short"] = "International direct dialing",
          },
          {
            ["name"] = "independent",
            ["title"] = "Independent",
            ["type"] = "`$BOOLEAN`",
            ["short"] = "Independence status",
          },
          {
            ["name"] = "landlocked",
            ["title"] = "Landlocked",
            ["type"] = "`$BOOLEAN`",
            ["short"] = "Landlocked status",
          },
          {
            ["name"] = "languages",
            ["title"] = "Languages",
            ["type"] = "`$OBJECT`",
            ["short"] = "Languages spoken",
          },
          {
            ["name"] = "latlng",
            ["title"] = "Latlng",
            ["type"] = "`$ARRAY`",
            ["short"] = "Latitude and longitude",
          },
          {
            ["name"] = "maps",
            ["title"] = "Maps",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "name",
            ["title"] = "Name",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "population",
            ["title"] = "Population",
            ["type"] = "`$INTEGER`",
            ["short"] = "Country population",
          },
          {
            ["name"] = "postalCode",
            ["title"] = "Postal Code",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "region",
            ["title"] = "Region",
            ["type"] = "`$STRING`",
            ["short"] = "Geographic region",
          },
          {
            ["name"] = "startOfWeek",
            ["title"] = "Start Of Week",
            ["type"] = "`$STRING`",
            ["short"] = "Start of week day",
          },
          {
            ["name"] = "status",
            ["title"] = "Status",
            ["type"] = "`$STRING`",
            ["short"] = "ISO 3166-1 assignment status",
          },
          {
            ["name"] = "subregion",
            ["title"] = "Subregion",
            ["type"] = "`$STRING`",
            ["short"] = "Geographic subregion",
          },
          {
            ["name"] = "timezones",
            ["title"] = "Timezones",
            ["type"] = "`$ARRAY`",
            ["short"] = "Timezones",
          },
          {
            ["name"] = "tld",
            ["title"] = "Tld",
            ["type"] = "`$ARRAY`",
            ["short"] = "Top-level domains",
          },
          {
            ["name"] = "translations",
            ["title"] = "Translations",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "unMember",
            ["title"] = "Un Member",
            ["type"] = "`$BOOLEAN`",
            ["short"] = "UN membership status",
          },
        },
        ["id"] = {
          ["field"] = "id",
          ["name"] = "id",
        },
        ["name"] = "alpha",
        ["op"] = {
          ["load"] = {
            ["input"] = "data",
            ["name"] = "load",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/alpha/{code}",
                ["segments"] = {
                  {
                    ["lit"] = "alpha",
                  },
                  {
                    ["var"] = "id",
                  },
                },
                ["parts"] = {
                  "alpha",
                  "{id}",
                },
                ["rename"] = {
                  ["param"] = {
                    ["code"] = "id",
                  },
                },
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["params"] = {
                    {
                      ["name"] = "id",
                      ["orig"] = "code",
                      ["type"] = "`$STRING`",
                      ["kind"] = "param",
                      ["reqd"] = true,
                      ["example"] = "de",
                    },
                  },
                  ["query"] = {
                    {
                      ["name"] = "field",
                      ["orig"] = "field",
                      ["type"] = "`$STRING`",
                      ["kind"] = "query",
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "field",
                    "id",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["capital"] = {
        ["fields"] = {
          {
            ["name"] = "altSpellings",
            ["title"] = "Alt Spellings",
            ["type"] = "`$ARRAY`",
            ["short"] = "Alternative country name spellings",
          },
          {
            ["name"] = "area",
            ["title"] = "Area",
            ["type"] = "`$NUMBER`",
            ["short"] = "Country area in square kilometers",
          },
          {
            ["name"] = "borders",
            ["title"] = "Borders",
            ["type"] = "`$ARRAY`",
            ["short"] = "Border countries (ISO 3166-1 alpha-3 codes)",
          },
          {
            ["name"] = "capital",
            ["title"] = "Capital",
            ["type"] = "`$ARRAY`",
            ["short"] = "Capital city or cities",
          },
          {
            ["name"] = "capitalInfo",
            ["title"] = "Capital Info",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "car",
            ["title"] = "Car",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "cca2",
            ["title"] = "Cca2",
            ["type"] = "`$STRING`",
            ["short"] = "ISO 3166-1 alpha-2 code",
          },
          {
            ["name"] = "cca3",
            ["title"] = "Cca3",
            ["type"] = "`$STRING`",
            ["short"] = "ISO 3166-1 alpha-3 code",
          },
          {
            ["name"] = "ccn3",
            ["title"] = "Ccn3",
            ["type"] = "`$STRING`",
            ["short"] = "ISO 3166-1 numeric code",
          },
          {
            ["name"] = "cioc",
            ["title"] = "Cioc",
            ["type"] = "`$STRING`",
            ["short"] = "International Olympic Committee code",
          },
          {
            ["name"] = "coatOfArms",
            ["title"] = "Coat Of Arms",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "continents",
            ["title"] = "Continents",
            ["type"] = "`$ARRAY`",
            ["short"] = "Continents",
          },
          {
            ["name"] = "currencies",
            ["title"] = "Currencies",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "demonyms",
            ["title"] = "Demonyms",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "fifa",
            ["title"] = "Fifa",
            ["type"] = "`$STRING`",
            ["short"] = "FIFA country code",
          },
          {
            ["name"] = "flag",
            ["title"] = "Flag",
            ["type"] = "`$STRING`",
            ["short"] = "Flag emoji",
          },
          {
            ["name"] = "flags",
            ["title"] = "Flags",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "gini",
            ["title"] = "Gini",
            ["type"] = "`$OBJECT`",
            ["short"] = "Gini coefficient",
          },
          {
            ["name"] = "id",
            ["title"] = "Id",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "idd",
            ["title"] = "Idd",
            ["type"] = "`$OBJECT`",
            ["short"] = "International direct dialing",
          },
          {
            ["name"] = "independent",
            ["title"] = "Independent",
            ["type"] = "`$BOOLEAN`",
            ["short"] = "Independence status",
          },
          {
            ["name"] = "landlocked",
            ["title"] = "Landlocked",
            ["type"] = "`$BOOLEAN`",
            ["short"] = "Landlocked status",
          },
          {
            ["name"] = "languages",
            ["title"] = "Languages",
            ["type"] = "`$OBJECT`",
            ["short"] = "Languages spoken",
          },
          {
            ["name"] = "latlng",
            ["title"] = "Latlng",
            ["type"] = "`$ARRAY`",
            ["short"] = "Latitude and longitude",
          },
          {
            ["name"] = "maps",
            ["title"] = "Maps",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "name",
            ["title"] = "Name",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "population",
            ["title"] = "Population",
            ["type"] = "`$INTEGER`",
            ["short"] = "Country population",
          },
          {
            ["name"] = "postalCode",
            ["title"] = "Postal Code",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "region",
            ["title"] = "Region",
            ["type"] = "`$STRING`",
            ["short"] = "Geographic region",
          },
          {
            ["name"] = "startOfWeek",
            ["title"] = "Start Of Week",
            ["type"] = "`$STRING`",
            ["short"] = "Start of week day",
          },
          {
            ["name"] = "status",
            ["title"] = "Status",
            ["type"] = "`$STRING`",
            ["short"] = "ISO 3166-1 assignment status",
          },
          {
            ["name"] = "subregion",
            ["title"] = "Subregion",
            ["type"] = "`$STRING`",
            ["short"] = "Geographic subregion",
          },
          {
            ["name"] = "timezones",
            ["title"] = "Timezones",
            ["type"] = "`$ARRAY`",
            ["short"] = "Timezones",
          },
          {
            ["name"] = "tld",
            ["title"] = "Tld",
            ["type"] = "`$ARRAY`",
            ["short"] = "Top-level domains",
          },
          {
            ["name"] = "translations",
            ["title"] = "Translations",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "unMember",
            ["title"] = "Un Member",
            ["type"] = "`$BOOLEAN`",
            ["short"] = "UN membership status",
          },
        },
        ["id"] = {
          ["field"] = "id",
          ["name"] = "id",
        },
        ["name"] = "capital",
        ["op"] = {
          ["load"] = {
            ["input"] = "data",
            ["name"] = "load",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/capital/{capital}",
                ["segments"] = {
                  {
                    ["lit"] = "capital",
                  },
                  {
                    ["var"] = "id",
                  },
                },
                ["parts"] = {
                  "capital",
                  "{id}",
                },
                ["rename"] = {
                  ["param"] = {
                    ["capital"] = "id",
                  },
                },
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["params"] = {
                    {
                      ["name"] = "id",
                      ["orig"] = "capital",
                      ["type"] = "`$STRING`",
                      ["kind"] = "param",
                      ["reqd"] = true,
                      ["example"] = "berlin",
                    },
                  },
                  ["query"] = {
                    {
                      ["name"] = "field",
                      ["orig"] = "field",
                      ["type"] = "`$STRING`",
                      ["kind"] = "query",
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "field",
                    "id",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["name"] = {
        ["fields"] = {
          {
            ["name"] = "altSpellings",
            ["title"] = "Alt Spellings",
            ["type"] = "`$ARRAY`",
            ["short"] = "Alternative country name spellings",
          },
          {
            ["name"] = "area",
            ["title"] = "Area",
            ["type"] = "`$NUMBER`",
            ["short"] = "Country area in square kilometers",
          },
          {
            ["name"] = "borders",
            ["title"] = "Borders",
            ["type"] = "`$ARRAY`",
            ["short"] = "Border countries (ISO 3166-1 alpha-3 codes)",
          },
          {
            ["name"] = "capital",
            ["title"] = "Capital",
            ["type"] = "`$ARRAY`",
            ["short"] = "Capital city or cities",
          },
          {
            ["name"] = "capitalInfo",
            ["title"] = "Capital Info",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "car",
            ["title"] = "Car",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "cca2",
            ["title"] = "Cca2",
            ["type"] = "`$STRING`",
            ["short"] = "ISO 3166-1 alpha-2 code",
          },
          {
            ["name"] = "cca3",
            ["title"] = "Cca3",
            ["type"] = "`$STRING`",
            ["short"] = "ISO 3166-1 alpha-3 code",
          },
          {
            ["name"] = "ccn3",
            ["title"] = "Ccn3",
            ["type"] = "`$STRING`",
            ["short"] = "ISO 3166-1 numeric code",
          },
          {
            ["name"] = "cioc",
            ["title"] = "Cioc",
            ["type"] = "`$STRING`",
            ["short"] = "International Olympic Committee code",
          },
          {
            ["name"] = "coatOfArms",
            ["title"] = "Coat Of Arms",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "continents",
            ["title"] = "Continents",
            ["type"] = "`$ARRAY`",
            ["short"] = "Continents",
          },
          {
            ["name"] = "currencies",
            ["title"] = "Currencies",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "demonyms",
            ["title"] = "Demonyms",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "fifa",
            ["title"] = "Fifa",
            ["type"] = "`$STRING`",
            ["short"] = "FIFA country code",
          },
          {
            ["name"] = "flag",
            ["title"] = "Flag",
            ["type"] = "`$STRING`",
            ["short"] = "Flag emoji",
          },
          {
            ["name"] = "flags",
            ["title"] = "Flags",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "gini",
            ["title"] = "Gini",
            ["type"] = "`$OBJECT`",
            ["short"] = "Gini coefficient",
          },
          {
            ["name"] = "id",
            ["title"] = "Id",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "idd",
            ["title"] = "Idd",
            ["type"] = "`$OBJECT`",
            ["short"] = "International direct dialing",
          },
          {
            ["name"] = "independent",
            ["title"] = "Independent",
            ["type"] = "`$BOOLEAN`",
            ["short"] = "Independence status",
          },
          {
            ["name"] = "landlocked",
            ["title"] = "Landlocked",
            ["type"] = "`$BOOLEAN`",
            ["short"] = "Landlocked status",
          },
          {
            ["name"] = "languages",
            ["title"] = "Languages",
            ["type"] = "`$OBJECT`",
            ["short"] = "Languages spoken",
          },
          {
            ["name"] = "latlng",
            ["title"] = "Latlng",
            ["type"] = "`$ARRAY`",
            ["short"] = "Latitude and longitude",
          },
          {
            ["name"] = "maps",
            ["title"] = "Maps",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "name",
            ["title"] = "Name",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "population",
            ["title"] = "Population",
            ["type"] = "`$INTEGER`",
            ["short"] = "Country population",
          },
          {
            ["name"] = "postalCode",
            ["title"] = "Postal Code",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "region",
            ["title"] = "Region",
            ["type"] = "`$STRING`",
            ["short"] = "Geographic region",
          },
          {
            ["name"] = "startOfWeek",
            ["title"] = "Start Of Week",
            ["type"] = "`$STRING`",
            ["short"] = "Start of week day",
          },
          {
            ["name"] = "status",
            ["title"] = "Status",
            ["type"] = "`$STRING`",
            ["short"] = "ISO 3166-1 assignment status",
          },
          {
            ["name"] = "subregion",
            ["title"] = "Subregion",
            ["type"] = "`$STRING`",
            ["short"] = "Geographic subregion",
          },
          {
            ["name"] = "timezones",
            ["title"] = "Timezones",
            ["type"] = "`$ARRAY`",
            ["short"] = "Timezones",
          },
          {
            ["name"] = "tld",
            ["title"] = "Tld",
            ["type"] = "`$ARRAY`",
            ["short"] = "Top-level domains",
          },
          {
            ["name"] = "translations",
            ["title"] = "Translations",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "unMember",
            ["title"] = "Un Member",
            ["type"] = "`$BOOLEAN`",
            ["short"] = "UN membership status",
          },
        },
        ["id"] = {
          ["field"] = "id",
          ["name"] = "id",
        },
        ["name"] = "name",
        ["op"] = {
          ["load"] = {
            ["input"] = "data",
            ["name"] = "load",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/name/{name}",
                ["segments"] = {
                  {
                    ["lit"] = "name",
                  },
                  {
                    ["var"] = "id",
                  },
                },
                ["parts"] = {
                  "name",
                  "{id}",
                },
                ["rename"] = {
                  ["param"] = {
                    ["name"] = "id",
                  },
                },
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["params"] = {
                    {
                      ["name"] = "id",
                      ["orig"] = "name",
                      ["type"] = "`$STRING`",
                      ["kind"] = "param",
                      ["reqd"] = true,
                      ["example"] = "germany",
                    },
                  },
                  ["query"] = {
                    {
                      ["name"] = "field",
                      ["orig"] = "field",
                      ["type"] = "`$STRING`",
                      ["kind"] = "query",
                    },
                    {
                      ["name"] = "full_text",
                      ["orig"] = "full_text",
                      ["type"] = "`$BOOLEAN`",
                      ["kind"] = "query",
                      ["example"] = false,
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "field",
                    "full_text",
                    "id",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
    },
  }
end


local function make_feature(name)
  local features = require("features")
  local factory = features[name]
  if factory ~= nil then
    return factory()
  end
  return features.base()
end


-- Attach make_feature to the SDK class
local function setup_sdk(SDK)
  SDK._make_feature = make_feature
end


return make_config

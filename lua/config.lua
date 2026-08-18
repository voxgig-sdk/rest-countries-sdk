-- RestCountries SDK configuration

-- Build a fresh, fully materialised config table. Every call rebuilds the
-- whole structure, so prefer require("config_shared") unless you need a
-- private copy you intend to mutate.
local function make_config()
  return {
    main = {
      name = "RestCountries",
    },
    feature = {
      ["test"] = {
        ["options"] = {
          ["active"] = false,
        },
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
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "area",
            ["type"] = "`$NUMBER`",
          },
          {
            ["name"] = "borders",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "capital",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "capitalInfo",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "car",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "cca2",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "cca3",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "ccn3",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "cioc",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "coatOfArms",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "continents",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "currencies",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "demonyms",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "fifa",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "flag",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "flags",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "gini",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "idd",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "independent",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "landlocked",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "languages",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "latlng",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "maps",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "name",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "population",
            ["type"] = "`$INTEGER`",
          },
          {
            ["name"] = "postalCode",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "region",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "startOfWeek",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "status",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "subregion",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "timezones",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "tld",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "translations",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "unMember",
            ["type"] = "`$BOOLEAN`",
          },
        },
        ["name"] = "all",
        ["op"] = {
          ["list"] = {
            ["input"] = "data",
            ["name"] = "list",
            ["points"] = {
              {
                ["args"] = {
                  ["query"] = {
                    {
                      ["example"] = "name,capital,population",
                      ["kind"] = "query",
                      ["name"] = "field",
                      ["orig"] = "field",
                      ["type"] = "`$STRING`",
                    },
                  },
                },
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/all",
                ["parts"] = {
                  "all",
                },
                ["select"] = {
                  ["exist"] = {
                    "field",
                  },
                },
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
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
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "area",
            ["type"] = "`$NUMBER`",
          },
          {
            ["name"] = "borders",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "capital",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "capitalInfo",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "car",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "cca2",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "cca3",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "ccn3",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "cioc",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "coatOfArms",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "continents",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "currencies",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "demonyms",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "fifa",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "flag",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "flags",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "gini",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "idd",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "independent",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "landlocked",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "languages",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "latlng",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "maps",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "name",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "population",
            ["type"] = "`$INTEGER`",
          },
          {
            ["name"] = "postalCode",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "region",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "startOfWeek",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "status",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "subregion",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "timezones",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "tld",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "translations",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "unMember",
            ["type"] = "`$BOOLEAN`",
          },
        },
        ["name"] = "alpha",
        ["op"] = {
          ["load"] = {
            ["input"] = "data",
            ["name"] = "load",
            ["points"] = {
              {
                ["args"] = {
                  ["params"] = {
                    {
                      ["example"] = "de",
                      ["kind"] = "param",
                      ["name"] = "id",
                      ["orig"] = "code",
                      ["reqd"] = true,
                      ["type"] = "`$STRING`",
                    },
                  },
                  ["query"] = {
                    {
                      ["kind"] = "query",
                      ["name"] = "field",
                      ["orig"] = "field",
                      ["type"] = "`$STRING`",
                    },
                  },
                },
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/alpha/{code}",
                ["parts"] = {
                  "alpha",
                  "{id}",
                },
                ["rename"] = {
                  ["param"] = {
                    ["code"] = "id",
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "field",
                    "id",
                  },
                },
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
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
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "area",
            ["type"] = "`$NUMBER`",
          },
          {
            ["name"] = "borders",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "capital",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "capitalInfo",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "car",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "cca2",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "cca3",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "ccn3",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "cioc",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "coatOfArms",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "continents",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "currencies",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "demonyms",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "fifa",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "flag",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "flags",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "gini",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "idd",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "independent",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "landlocked",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "languages",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "latlng",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "maps",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "name",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "population",
            ["type"] = "`$INTEGER`",
          },
          {
            ["name"] = "postalCode",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "region",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "startOfWeek",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "status",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "subregion",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "timezones",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "tld",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "translations",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "unMember",
            ["type"] = "`$BOOLEAN`",
          },
        },
        ["name"] = "capital",
        ["op"] = {
          ["load"] = {
            ["input"] = "data",
            ["name"] = "load",
            ["points"] = {
              {
                ["args"] = {
                  ["params"] = {
                    {
                      ["example"] = "berlin",
                      ["kind"] = "param",
                      ["name"] = "id",
                      ["orig"] = "capital",
                      ["reqd"] = true,
                      ["type"] = "`$STRING`",
                    },
                  },
                  ["query"] = {
                    {
                      ["kind"] = "query",
                      ["name"] = "field",
                      ["orig"] = "field",
                      ["type"] = "`$STRING`",
                    },
                  },
                },
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/capital/{capital}",
                ["parts"] = {
                  "capital",
                  "{id}",
                },
                ["rename"] = {
                  ["param"] = {
                    ["capital"] = "id",
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "field",
                    "id",
                  },
                },
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
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
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "area",
            ["type"] = "`$NUMBER`",
          },
          {
            ["name"] = "borders",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "capital",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "capitalInfo",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "car",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "cca2",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "cca3",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "ccn3",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "cioc",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "coatOfArms",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "continents",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "currencies",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "demonyms",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "fifa",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "flag",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "flags",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "gini",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "idd",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "independent",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "landlocked",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "languages",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "latlng",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "maps",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "name",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "population",
            ["type"] = "`$INTEGER`",
          },
          {
            ["name"] = "postalCode",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "region",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "startOfWeek",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "status",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "subregion",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "timezones",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "tld",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "translations",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "unMember",
            ["type"] = "`$BOOLEAN`",
          },
        },
        ["name"] = "name",
        ["op"] = {
          ["load"] = {
            ["input"] = "data",
            ["name"] = "load",
            ["points"] = {
              {
                ["args"] = {
                  ["params"] = {
                    {
                      ["example"] = "germany",
                      ["kind"] = "param",
                      ["name"] = "id",
                      ["orig"] = "name",
                      ["reqd"] = true,
                      ["type"] = "`$STRING`",
                    },
                  },
                  ["query"] = {
                    {
                      ["kind"] = "query",
                      ["name"] = "field",
                      ["orig"] = "field",
                      ["type"] = "`$STRING`",
                    },
                    {
                      ["example"] = false,
                      ["kind"] = "query",
                      ["name"] = "full_text",
                      ["orig"] = "full_text",
                      ["type"] = "`$BOOLEAN`",
                    },
                  },
                },
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/name/{name}",
                ["parts"] = {
                  "name",
                  "{id}",
                },
                ["rename"] = {
                  ["param"] = {
                    ["name"] = "id",
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "field",
                    "full_text",
                    "id",
                  },
                },
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
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

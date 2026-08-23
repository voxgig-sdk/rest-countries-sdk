# RestCountries SDK configuration

module RestCountriesConfig
  # Return the process-wide config, built once on first use. The SDK reads
  # the config on every request and never writes to it, so one instance is
  # shared by every client rather than rebuilt per client.
  #
  # The returned hash is shared: treat it as read-only. Callers that need to
  # mutate should use make_config, which always returns a fresh copy.
  def self.shared_config
    @shared_config ||= make_config
  end


  # Build a fresh, fully materialised config hash. Every call rebuilds the
  # whole structure, so prefer shared_config unless you need a private copy
  # you intend to mutate.
  def self.make_config
    {
      "main" => {
        "name" => "RestCountries",
        "slug" => "rest-countries",
        "version" => "0.0.1",
        "target" => "rb",
      },
      "feature" => {
        "test" => {
          "options" => {
            "active" => false,
          },
        },
      },
      "options" => {
        "base" => "https://restcountries.com/v3.1",
        "headers" => {
          "content-type" => "application/json",
        },
        "entity" => {
          "all" => {},
          "alpha" => {},
          "capital" => {},
          "name" => {},
        },
      },
      "entity" => {
        "all" => {
          "fields" => [
            {
              "name" => "altSpellings",
              "short" => "Alternative country name spellings",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "area",
              "short" => "Country area in square kilometers",
              "type" => "`$NUMBER`",
            },
            {
              "name" => "borders",
              "short" => "Border countries (ISO 3166-1 alpha-3 codes)",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "capital",
              "short" => "Capital city or cities",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "capitalInfo",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "car",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "cca2",
              "short" => "ISO 3166-1 alpha-2 code",
              "type" => "`$STRING`",
            },
            {
              "name" => "cca3",
              "short" => "ISO 3166-1 alpha-3 code",
              "type" => "`$STRING`",
            },
            {
              "name" => "ccn3",
              "short" => "ISO 3166-1 numeric code",
              "type" => "`$STRING`",
            },
            {
              "name" => "cioc",
              "short" => "International Olympic Committee code",
              "type" => "`$STRING`",
            },
            {
              "name" => "coatOfArms",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "continents",
              "short" => "Continents",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "currencies",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "demonyms",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "fifa",
              "short" => "FIFA country code",
              "type" => "`$STRING`",
            },
            {
              "name" => "flag",
              "short" => "Flag emoji",
              "type" => "`$STRING`",
            },
            {
              "name" => "flags",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "gini",
              "short" => "Gini coefficient",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "idd",
              "short" => "International direct dialing",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "independent",
              "short" => "Independence status",
              "type" => "`$BOOLEAN`",
            },
            {
              "name" => "landlocked",
              "short" => "Landlocked status",
              "type" => "`$BOOLEAN`",
            },
            {
              "name" => "languages",
              "short" => "Languages spoken",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "latlng",
              "short" => "Latitude and longitude",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "maps",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "name",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "population",
              "short" => "Country population",
              "type" => "`$INTEGER`",
            },
            {
              "name" => "postalCode",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "region",
              "short" => "Geographic region",
              "type" => "`$STRING`",
            },
            {
              "name" => "startOfWeek",
              "short" => "Start of week day",
              "type" => "`$STRING`",
            },
            {
              "name" => "status",
              "short" => "ISO 3166-1 assignment status",
              "type" => "`$STRING`",
            },
            {
              "name" => "subregion",
              "short" => "Geographic subregion",
              "type" => "`$STRING`",
            },
            {
              "name" => "timezones",
              "short" => "Timezones",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "tld",
              "short" => "Top-level domains",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "translations",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "unMember",
              "short" => "UN membership status",
              "type" => "`$BOOLEAN`",
            },
          ],
          "name" => "all",
          "op" => {
            "list" => {
              "input" => "data",
              "name" => "list",
              "points" => [
                {
                  "args" => {
                    "query" => [
                      {
                        "example" => "name,capital,population",
                        "kind" => "query",
                        "name" => "field",
                        "orig" => "field",
                        "type" => "`$STRING`",
                      },
                    ],
                  },
                  "kind" => "http",
                  "method" => "GET",
                  "orig" => "/all",
                  "parts" => [
                    "all",
                  ],
                  "select" => {
                    "exist" => [
                      "field",
                    ],
                  },
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                },
              ],
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
        "alpha" => {
          "fields" => [
            {
              "name" => "altSpellings",
              "short" => "Alternative country name spellings",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "area",
              "short" => "Country area in square kilometers",
              "type" => "`$NUMBER`",
            },
            {
              "name" => "borders",
              "short" => "Border countries (ISO 3166-1 alpha-3 codes)",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "capital",
              "short" => "Capital city or cities",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "capitalInfo",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "car",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "cca2",
              "short" => "ISO 3166-1 alpha-2 code",
              "type" => "`$STRING`",
            },
            {
              "name" => "cca3",
              "short" => "ISO 3166-1 alpha-3 code",
              "type" => "`$STRING`",
            },
            {
              "name" => "ccn3",
              "short" => "ISO 3166-1 numeric code",
              "type" => "`$STRING`",
            },
            {
              "name" => "cioc",
              "short" => "International Olympic Committee code",
              "type" => "`$STRING`",
            },
            {
              "name" => "coatOfArms",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "continents",
              "short" => "Continents",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "currencies",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "demonyms",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "fifa",
              "short" => "FIFA country code",
              "type" => "`$STRING`",
            },
            {
              "name" => "flag",
              "short" => "Flag emoji",
              "type" => "`$STRING`",
            },
            {
              "name" => "flags",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "gini",
              "short" => "Gini coefficient",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "idd",
              "short" => "International direct dialing",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "independent",
              "short" => "Independence status",
              "type" => "`$BOOLEAN`",
            },
            {
              "name" => "landlocked",
              "short" => "Landlocked status",
              "type" => "`$BOOLEAN`",
            },
            {
              "name" => "languages",
              "short" => "Languages spoken",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "latlng",
              "short" => "Latitude and longitude",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "maps",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "name",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "population",
              "short" => "Country population",
              "type" => "`$INTEGER`",
            },
            {
              "name" => "postalCode",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "region",
              "short" => "Geographic region",
              "type" => "`$STRING`",
            },
            {
              "name" => "startOfWeek",
              "short" => "Start of week day",
              "type" => "`$STRING`",
            },
            {
              "name" => "status",
              "short" => "ISO 3166-1 assignment status",
              "type" => "`$STRING`",
            },
            {
              "name" => "subregion",
              "short" => "Geographic subregion",
              "type" => "`$STRING`",
            },
            {
              "name" => "timezones",
              "short" => "Timezones",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "tld",
              "short" => "Top-level domains",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "translations",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "unMember",
              "short" => "UN membership status",
              "type" => "`$BOOLEAN`",
            },
          ],
          "name" => "alpha",
          "op" => {
            "load" => {
              "input" => "data",
              "name" => "load",
              "points" => [
                {
                  "args" => {
                    "params" => [
                      {
                        "example" => "de",
                        "kind" => "param",
                        "name" => "id",
                        "orig" => "code",
                        "reqd" => true,
                        "type" => "`$STRING`",
                      },
                    ],
                    "query" => [
                      {
                        "kind" => "query",
                        "name" => "field",
                        "orig" => "field",
                        "type" => "`$STRING`",
                      },
                    ],
                  },
                  "kind" => "http",
                  "method" => "GET",
                  "orig" => "/alpha/{code}",
                  "parts" => [
                    "alpha",
                    "{id}",
                  ],
                  "rename" => {
                    "param" => {
                      "code" => "id",
                    },
                  },
                  "select" => {
                    "exist" => [
                      "field",
                      "id",
                    ],
                  },
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                },
              ],
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
        "capital" => {
          "fields" => [
            {
              "name" => "altSpellings",
              "short" => "Alternative country name spellings",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "area",
              "short" => "Country area in square kilometers",
              "type" => "`$NUMBER`",
            },
            {
              "name" => "borders",
              "short" => "Border countries (ISO 3166-1 alpha-3 codes)",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "capital",
              "short" => "Capital city or cities",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "capitalInfo",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "car",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "cca2",
              "short" => "ISO 3166-1 alpha-2 code",
              "type" => "`$STRING`",
            },
            {
              "name" => "cca3",
              "short" => "ISO 3166-1 alpha-3 code",
              "type" => "`$STRING`",
            },
            {
              "name" => "ccn3",
              "short" => "ISO 3166-1 numeric code",
              "type" => "`$STRING`",
            },
            {
              "name" => "cioc",
              "short" => "International Olympic Committee code",
              "type" => "`$STRING`",
            },
            {
              "name" => "coatOfArms",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "continents",
              "short" => "Continents",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "currencies",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "demonyms",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "fifa",
              "short" => "FIFA country code",
              "type" => "`$STRING`",
            },
            {
              "name" => "flag",
              "short" => "Flag emoji",
              "type" => "`$STRING`",
            },
            {
              "name" => "flags",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "gini",
              "short" => "Gini coefficient",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "idd",
              "short" => "International direct dialing",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "independent",
              "short" => "Independence status",
              "type" => "`$BOOLEAN`",
            },
            {
              "name" => "landlocked",
              "short" => "Landlocked status",
              "type" => "`$BOOLEAN`",
            },
            {
              "name" => "languages",
              "short" => "Languages spoken",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "latlng",
              "short" => "Latitude and longitude",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "maps",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "name",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "population",
              "short" => "Country population",
              "type" => "`$INTEGER`",
            },
            {
              "name" => "postalCode",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "region",
              "short" => "Geographic region",
              "type" => "`$STRING`",
            },
            {
              "name" => "startOfWeek",
              "short" => "Start of week day",
              "type" => "`$STRING`",
            },
            {
              "name" => "status",
              "short" => "ISO 3166-1 assignment status",
              "type" => "`$STRING`",
            },
            {
              "name" => "subregion",
              "short" => "Geographic subregion",
              "type" => "`$STRING`",
            },
            {
              "name" => "timezones",
              "short" => "Timezones",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "tld",
              "short" => "Top-level domains",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "translations",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "unMember",
              "short" => "UN membership status",
              "type" => "`$BOOLEAN`",
            },
          ],
          "name" => "capital",
          "op" => {
            "load" => {
              "input" => "data",
              "name" => "load",
              "points" => [
                {
                  "args" => {
                    "params" => [
                      {
                        "example" => "berlin",
                        "kind" => "param",
                        "name" => "id",
                        "orig" => "capital",
                        "reqd" => true,
                        "type" => "`$STRING`",
                      },
                    ],
                    "query" => [
                      {
                        "kind" => "query",
                        "name" => "field",
                        "orig" => "field",
                        "type" => "`$STRING`",
                      },
                    ],
                  },
                  "kind" => "http",
                  "method" => "GET",
                  "orig" => "/capital/{capital}",
                  "parts" => [
                    "capital",
                    "{id}",
                  ],
                  "rename" => {
                    "param" => {
                      "capital" => "id",
                    },
                  },
                  "select" => {
                    "exist" => [
                      "field",
                      "id",
                    ],
                  },
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                },
              ],
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
        "name" => {
          "fields" => [
            {
              "name" => "altSpellings",
              "short" => "Alternative country name spellings",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "area",
              "short" => "Country area in square kilometers",
              "type" => "`$NUMBER`",
            },
            {
              "name" => "borders",
              "short" => "Border countries (ISO 3166-1 alpha-3 codes)",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "capital",
              "short" => "Capital city or cities",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "capitalInfo",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "car",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "cca2",
              "short" => "ISO 3166-1 alpha-2 code",
              "type" => "`$STRING`",
            },
            {
              "name" => "cca3",
              "short" => "ISO 3166-1 alpha-3 code",
              "type" => "`$STRING`",
            },
            {
              "name" => "ccn3",
              "short" => "ISO 3166-1 numeric code",
              "type" => "`$STRING`",
            },
            {
              "name" => "cioc",
              "short" => "International Olympic Committee code",
              "type" => "`$STRING`",
            },
            {
              "name" => "coatOfArms",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "continents",
              "short" => "Continents",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "currencies",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "demonyms",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "fifa",
              "short" => "FIFA country code",
              "type" => "`$STRING`",
            },
            {
              "name" => "flag",
              "short" => "Flag emoji",
              "type" => "`$STRING`",
            },
            {
              "name" => "flags",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "gini",
              "short" => "Gini coefficient",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "idd",
              "short" => "International direct dialing",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "independent",
              "short" => "Independence status",
              "type" => "`$BOOLEAN`",
            },
            {
              "name" => "landlocked",
              "short" => "Landlocked status",
              "type" => "`$BOOLEAN`",
            },
            {
              "name" => "languages",
              "short" => "Languages spoken",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "latlng",
              "short" => "Latitude and longitude",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "maps",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "name",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "population",
              "short" => "Country population",
              "type" => "`$INTEGER`",
            },
            {
              "name" => "postalCode",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "region",
              "short" => "Geographic region",
              "type" => "`$STRING`",
            },
            {
              "name" => "startOfWeek",
              "short" => "Start of week day",
              "type" => "`$STRING`",
            },
            {
              "name" => "status",
              "short" => "ISO 3166-1 assignment status",
              "type" => "`$STRING`",
            },
            {
              "name" => "subregion",
              "short" => "Geographic subregion",
              "type" => "`$STRING`",
            },
            {
              "name" => "timezones",
              "short" => "Timezones",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "tld",
              "short" => "Top-level domains",
              "type" => "`$ARRAY`",
            },
            {
              "name" => "translations",
              "type" => "`$OBJECT`",
            },
            {
              "name" => "unMember",
              "short" => "UN membership status",
              "type" => "`$BOOLEAN`",
            },
          ],
          "name" => "name",
          "op" => {
            "load" => {
              "input" => "data",
              "name" => "load",
              "points" => [
                {
                  "args" => {
                    "params" => [
                      {
                        "example" => "germany",
                        "kind" => "param",
                        "name" => "id",
                        "orig" => "name",
                        "reqd" => true,
                        "type" => "`$STRING`",
                      },
                    ],
                    "query" => [
                      {
                        "kind" => "query",
                        "name" => "field",
                        "orig" => "field",
                        "type" => "`$STRING`",
                      },
                      {
                        "example" => false,
                        "kind" => "query",
                        "name" => "full_text",
                        "orig" => "full_text",
                        "type" => "`$BOOLEAN`",
                      },
                    ],
                  },
                  "kind" => "http",
                  "method" => "GET",
                  "orig" => "/name/{name}",
                  "parts" => [
                    "name",
                    "{id}",
                  ],
                  "rename" => {
                    "param" => {
                      "name" => "id",
                    },
                  },
                  "select" => {
                    "exist" => [
                      "field",
                      "full_text",
                      "id",
                    ],
                  },
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                },
              ],
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
      },
    }
  end


  def self.make_feature(name)
    require_relative 'features'
    RestCountriesFeatures.make_feature(name)
  end
end

# RestCountries Lua SDK



The Lua SDK for the RestCountries API — an entity-oriented client using Lua conventions.

It exposes the API as capitalised, semantic **Entities** — e.g. `client:All()` — each with the same small set of operations (`list`, `load`) instead of raw URL paths and query strings. You call meaning, not endpoints, which keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to LuaRocks. Install it from the
GitHub release tag (`lua/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/rest-countries-sdk/releases)),
or add the source directory to your `LUA_PATH`:

```bash
export LUA_PATH="path/to/lua/?.lua;path/to/lua/?/init.lua;;"
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```lua
local sdk = require("rest-countries_sdk")

local client = sdk.new()
```

### 2. List all records

Entity operations return `(value, err)`. For `list`, `value` is the
array of records itself — iterate it directly (there is no wrapper).

```lua
local alls, err = client:All():list()
if err then error(err) end

for _, item in ipairs(alls) do
  print(item["cca2"])
end
```


## Error handling

Entity operations return `(value, err)`. Check `err` before using
the value:

```lua
local alpha, err = client:Alpha():load({ id = "example_id" })
if err then error(err) end
```

`direct` follows the same `(value, err)` convention:

```lua
local result, err = client:direct({
  path = "/api/resource/{id}",
  method = "GET",
  params = { id = "example_id" },
})
if err then error(err) end
```


## How-to guides

### Make a direct HTTP request

For endpoints not covered by entity methods:

```lua
local result, err = client:direct({
  path = "/api/resource/{id}",
  method = "GET",
  params = { id = "example" },
})
if err then error(err) end

if result["ok"] then
  print(result["status"])  -- 200
  print(result["data"])    -- response body
end
```

### Prepare a request without sending it

```lua
local fetchdef, err = client:prepare({
  path = "/api/resource/{id}",
  method = "DELETE",
  params = { id = "example" },
})
if err then error(err) end

print(fetchdef["url"])
print(fetchdef["method"])
print(fetchdef["headers"])
```

### Use test mode

Create a mock client for unit testing — no server required:

```lua
local client = sdk.test()

local result, err = client:Alpha():load({ id = "test01" })
-- result is the returned data; err is set on failure
```

### Use a custom fetch function

Replace the HTTP transport with your own function:

```lua
local function mock_fetch(url, init)
  return {
    status = 200,
    statusText = "OK",
    headers = {},
    json = function()
      return { id = "mock01" }
    end,
  }, nil
end

local client = sdk.new({
  base = "http://localhost:8080",
  system = {
    fetch = mock_fetch,
  },
})
```

### Run live tests

Create a `.env.local` file at the project root:

```
REST_COUNTRIES_TEST_LIVE=TRUE
```

Then run:

```bash
cd lua && busted test/
```


## Reference

### RestCountriesSDK

```lua
local sdk = require("rest-countries_sdk")
local client = sdk.new(options)
```

Creates a new SDK client.

| Option | Type | Description |
| --- | --- | --- |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `table` | Feature activation flags. |
| `extend` | `table` | Additional Feature instances to load. |
| `system` | `table` | System overrides (e.g. custom `fetch` function). |

### test

```lua
local client = sdk.test(testopts, sdkopts)
```

Creates a test-mode client with mock transport. Both arguments may be `nil`.

### RestCountriesSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `options_map` | `() -> table` | Deep copy of current SDK options. |
| `get_utility` | `() -> Utility` | Copy of the SDK utility object. |
| `prepare` | `(fetchargs) -> table, err` | Build an HTTP request definition without sending. |
| `direct` | `(fetchargs) -> table, err` | Build and send an HTTP request. |
| `All` | `(data) -> AllEntity` | Create an All entity instance. |
| `Alpha` | `(data) -> AlphaEntity` | Create an Alpha entity instance. |
| `Capital` | `(data) -> CapitalEntity` | Create a Capital entity instance. |
| `Name` | `(data) -> NameEntity` | Create a Name entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(reqmatch, ctrl) -> any, err` | Load a single entity by match criteria. |
| `list` | `(reqmatch, ctrl) -> any, err` | List entities matching the criteria. |
| `data_get` | `() -> table` | Get entity data. |
| `data_set` | `(data)` | Set entity data. |
| `match_get` | `() -> table` | Get entity match criteria. |
| `match_set` | `(match)` | Set entity match criteria. |
| `make` | `() -> Entity` | Create a new instance with the same options. |
| `get_name` | `() -> string` | Return the entity name. |

### Result shape

Entity operations return `(value, err)`. The `value` is the operation's
data **directly** — there is no wrapper:

| Operation | `value` |
| --- | --- |
| `load` | the entity record (a `table`) |
| `list` | an array (`table`) of entity records |

Check `err` first (it is non-`nil` on failure), then use `value`:

    local alpha, err = client:Alpha():load({ id = "example_id" })
    if err then error(err) end
    -- alpha is the loaded record

Only `direct()` returns a response envelope — a `table` with `ok`,
`status`, `headers`, and `data` keys.

### Entities

#### All

| Field | Description |
| --- | --- |
| `altSpellings` | Alternative country name spellings |
| `area` | Country area in square kilometers |
| `borders` | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | Capital city or cities |
| `capitalInfo` |  |
| `car` |  |
| `cca2` | ISO 3166-1 alpha-2 code |
| `cca3` | ISO 3166-1 alpha-3 code |
| `ccn3` | ISO 3166-1 numeric code |
| `cioc` | International Olympic Committee code |
| `coatOfArms` |  |
| `continents` | Continents |
| `currencies` |  |
| `demonyms` |  |
| `fifa` | FIFA country code |
| `flag` | Flag emoji |
| `flags` |  |
| `gini` | Gini coefficient |
| `idd` | International direct dialing |
| `independent` | Independence status |
| `landlocked` | Landlocked status |
| `languages` | Languages spoken |
| `latlng` | Latitude and longitude |
| `maps` |  |
| `name` |  |
| `population` | Country population |
| `postalCode` |  |
| `region` | Geographic region |
| `startOfWeek` | Start of week day |
| `status` | ISO 3166-1 assignment status |
| `subregion` | Geographic subregion |
| `timezones` | Timezones |
| `tld` | Top-level domains |
| `translations` |  |
| `unMember` | UN membership status |

Operations: List.

API path: `/all`

#### Alpha

| Field | Description |
| --- | --- |
| `altSpellings` | Alternative country name spellings |
| `area` | Country area in square kilometers |
| `borders` | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | Capital city or cities |
| `capitalInfo` |  |
| `car` |  |
| `cca2` | ISO 3166-1 alpha-2 code |
| `cca3` | ISO 3166-1 alpha-3 code |
| `ccn3` | ISO 3166-1 numeric code |
| `cioc` | International Olympic Committee code |
| `coatOfArms` |  |
| `continents` | Continents |
| `currencies` |  |
| `demonyms` |  |
| `fifa` | FIFA country code |
| `flag` | Flag emoji |
| `flags` |  |
| `gini` | Gini coefficient |
| `id` |  |
| `idd` | International direct dialing |
| `independent` | Independence status |
| `landlocked` | Landlocked status |
| `languages` | Languages spoken |
| `latlng` | Latitude and longitude |
| `maps` |  |
| `name` |  |
| `population` | Country population |
| `postalCode` |  |
| `region` | Geographic region |
| `startOfWeek` | Start of week day |
| `status` | ISO 3166-1 assignment status |
| `subregion` | Geographic subregion |
| `timezones` | Timezones |
| `tld` | Top-level domains |
| `translations` |  |
| `unMember` | UN membership status |

Operations: Load.

API path: `/alpha/{code}`

#### Capital

| Field | Description |
| --- | --- |
| `altSpellings` | Alternative country name spellings |
| `area` | Country area in square kilometers |
| `borders` | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | Capital city or cities |
| `capitalInfo` |  |
| `car` |  |
| `cca2` | ISO 3166-1 alpha-2 code |
| `cca3` | ISO 3166-1 alpha-3 code |
| `ccn3` | ISO 3166-1 numeric code |
| `cioc` | International Olympic Committee code |
| `coatOfArms` |  |
| `continents` | Continents |
| `currencies` |  |
| `demonyms` |  |
| `fifa` | FIFA country code |
| `flag` | Flag emoji |
| `flags` |  |
| `gini` | Gini coefficient |
| `id` |  |
| `idd` | International direct dialing |
| `independent` | Independence status |
| `landlocked` | Landlocked status |
| `languages` | Languages spoken |
| `latlng` | Latitude and longitude |
| `maps` |  |
| `name` |  |
| `population` | Country population |
| `postalCode` |  |
| `region` | Geographic region |
| `startOfWeek` | Start of week day |
| `status` | ISO 3166-1 assignment status |
| `subregion` | Geographic subregion |
| `timezones` | Timezones |
| `tld` | Top-level domains |
| `translations` |  |
| `unMember` | UN membership status |

Operations: Load.

API path: `/capital/{capital}`

#### Name

| Field | Description |
| --- | --- |
| `altSpellings` | Alternative country name spellings |
| `area` | Country area in square kilometers |
| `borders` | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | Capital city or cities |
| `capitalInfo` |  |
| `car` |  |
| `cca2` | ISO 3166-1 alpha-2 code |
| `cca3` | ISO 3166-1 alpha-3 code |
| `ccn3` | ISO 3166-1 numeric code |
| `cioc` | International Olympic Committee code |
| `coatOfArms` |  |
| `continents` | Continents |
| `currencies` |  |
| `demonyms` |  |
| `fifa` | FIFA country code |
| `flag` | Flag emoji |
| `flags` |  |
| `gini` | Gini coefficient |
| `id` |  |
| `idd` | International direct dialing |
| `independent` | Independence status |
| `landlocked` | Landlocked status |
| `languages` | Languages spoken |
| `latlng` | Latitude and longitude |
| `maps` |  |
| `name` |  |
| `population` | Country population |
| `postalCode` |  |
| `region` | Geographic region |
| `startOfWeek` | Start of week day |
| `status` | ISO 3166-1 assignment status |
| `subregion` | Geographic subregion |
| `timezones` | Timezones |
| `tld` | Top-level domains |
| `translations` |  |
| `unMember` | UN membership status |

Operations: Load.

API path: `/name/{name}`



## Entities


### All

Create an instance: `local all = client:All(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `list(match)` | List entities matching the criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `altSpellings` | `table` | Alternative country name spellings |
| `area` | `number` | Country area in square kilometers |
| `borders` | `table` | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | `table` | Capital city or cities |
| `capitalInfo` | `table` |  |
| `car` | `table` |  |
| `cca2` | `string` | ISO 3166-1 alpha-2 code |
| `cca3` | `string` | ISO 3166-1 alpha-3 code |
| `ccn3` | `string` | ISO 3166-1 numeric code |
| `cioc` | `string` | International Olympic Committee code |
| `coatOfArms` | `table` |  |
| `continents` | `table` | Continents |
| `currencies` | `table` |  |
| `demonyms` | `table` |  |
| `fifa` | `string` | FIFA country code |
| `flag` | `string` | Flag emoji |
| `flags` | `table` |  |
| `gini` | `table` | Gini coefficient |
| `idd` | `table` | International direct dialing |
| `independent` | `boolean` | Independence status |
| `landlocked` | `boolean` | Landlocked status |
| `languages` | `table` | Languages spoken |
| `latlng` | `table` | Latitude and longitude |
| `maps` | `table` |  |
| `name` | `table` |  |
| `population` | `number` | Country population |
| `postalCode` | `table` |  |
| `region` | `string` | Geographic region |
| `startOfWeek` | `string` | Start of week day |
| `status` | `string` | ISO 3166-1 assignment status |
| `subregion` | `string` | Geographic subregion |
| `timezones` | `table` | Timezones |
| `tld` | `table` | Top-level domains |
| `translations` | `table` |  |
| `unMember` | `boolean` | UN membership status |

#### Example: List

```lua
local alls, err = client:All():list()
```


### Alpha

Create an instance: `local alpha = client:Alpha(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `altSpellings` | `table` | Alternative country name spellings |
| `area` | `number` | Country area in square kilometers |
| `borders` | `table` | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | `table` | Capital city or cities |
| `capitalInfo` | `table` |  |
| `car` | `table` |  |
| `cca2` | `string` | ISO 3166-1 alpha-2 code |
| `cca3` | `string` | ISO 3166-1 alpha-3 code |
| `ccn3` | `string` | ISO 3166-1 numeric code |
| `cioc` | `string` | International Olympic Committee code |
| `coatOfArms` | `table` |  |
| `continents` | `table` | Continents |
| `currencies` | `table` |  |
| `demonyms` | `table` |  |
| `fifa` | `string` | FIFA country code |
| `flag` | `string` | Flag emoji |
| `flags` | `table` |  |
| `gini` | `table` | Gini coefficient |
| `id` | `string` |  |
| `idd` | `table` | International direct dialing |
| `independent` | `boolean` | Independence status |
| `landlocked` | `boolean` | Landlocked status |
| `languages` | `table` | Languages spoken |
| `latlng` | `table` | Latitude and longitude |
| `maps` | `table` |  |
| `name` | `table` |  |
| `population` | `number` | Country population |
| `postalCode` | `table` |  |
| `region` | `string` | Geographic region |
| `startOfWeek` | `string` | Start of week day |
| `status` | `string` | ISO 3166-1 assignment status |
| `subregion` | `string` | Geographic subregion |
| `timezones` | `table` | Timezones |
| `tld` | `table` | Top-level domains |
| `translations` | `table` |  |
| `unMember` | `boolean` | UN membership status |

#### Example: Load

```lua
local alpha, err = client:Alpha():load({ id = "alpha_id" })
```


### Capital

Create an instance: `local capital = client:Capital(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `altSpellings` | `table` | Alternative country name spellings |
| `area` | `number` | Country area in square kilometers |
| `borders` | `table` | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | `table` | Capital city or cities |
| `capitalInfo` | `table` |  |
| `car` | `table` |  |
| `cca2` | `string` | ISO 3166-1 alpha-2 code |
| `cca3` | `string` | ISO 3166-1 alpha-3 code |
| `ccn3` | `string` | ISO 3166-1 numeric code |
| `cioc` | `string` | International Olympic Committee code |
| `coatOfArms` | `table` |  |
| `continents` | `table` | Continents |
| `currencies` | `table` |  |
| `demonyms` | `table` |  |
| `fifa` | `string` | FIFA country code |
| `flag` | `string` | Flag emoji |
| `flags` | `table` |  |
| `gini` | `table` | Gini coefficient |
| `id` | `string` |  |
| `idd` | `table` | International direct dialing |
| `independent` | `boolean` | Independence status |
| `landlocked` | `boolean` | Landlocked status |
| `languages` | `table` | Languages spoken |
| `latlng` | `table` | Latitude and longitude |
| `maps` | `table` |  |
| `name` | `table` |  |
| `population` | `number` | Country population |
| `postalCode` | `table` |  |
| `region` | `string` | Geographic region |
| `startOfWeek` | `string` | Start of week day |
| `status` | `string` | ISO 3166-1 assignment status |
| `subregion` | `string` | Geographic subregion |
| `timezones` | `table` | Timezones |
| `tld` | `table` | Top-level domains |
| `translations` | `table` |  |
| `unMember` | `boolean` | UN membership status |

#### Example: Load

```lua
local capital, err = client:Capital():load({ id = "capital_id" })
```


### Name

Create an instance: `local name = client:Name(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `altSpellings` | `table` | Alternative country name spellings |
| `area` | `number` | Country area in square kilometers |
| `borders` | `table` | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | `table` | Capital city or cities |
| `capitalInfo` | `table` |  |
| `car` | `table` |  |
| `cca2` | `string` | ISO 3166-1 alpha-2 code |
| `cca3` | `string` | ISO 3166-1 alpha-3 code |
| `ccn3` | `string` | ISO 3166-1 numeric code |
| `cioc` | `string` | International Olympic Committee code |
| `coatOfArms` | `table` |  |
| `continents` | `table` | Continents |
| `currencies` | `table` |  |
| `demonyms` | `table` |  |
| `fifa` | `string` | FIFA country code |
| `flag` | `string` | Flag emoji |
| `flags` | `table` |  |
| `gini` | `table` | Gini coefficient |
| `id` | `string` |  |
| `idd` | `table` | International direct dialing |
| `independent` | `boolean` | Independence status |
| `landlocked` | `boolean` | Landlocked status |
| `languages` | `table` | Languages spoken |
| `latlng` | `table` | Latitude and longitude |
| `maps` | `table` |  |
| `name` | `table` |  |
| `population` | `number` | Country population |
| `postalCode` | `table` |  |
| `region` | `string` | Geographic region |
| `startOfWeek` | `string` | Start of week day |
| `status` | `string` | ISO 3166-1 assignment status |
| `subregion` | `string` | Geographic subregion |
| `timezones` | `table` | Timezones |
| `tld` | `table` | Top-level domains |
| `translations` | `table` |  |
| `unMember` | `boolean` | UN membership status |

#### Example: Load

```lua
local name, err = client:Name():load({ id = "name_id" })
```

## Features

This SDK ships 1 optional features. Each is **inactive until you
switch it on**, so an SDK you have not configured behaves exactly as if none of
them existed — no retries, no cache, no logging, no measurable overhead.

Activate a feature by name in the client options, alongside the options shown
above:

| Feature | What it does |
|---|---|
| [`test`](#test) | In-memory mock transport for testing without a live server |

### test

In-memory mock transport for testing without a live server.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.test.active` to enable it, then override any of the options above.


## Advanced

> The sections above cover everyday use. The material below explains the
> SDK's internals — useful when extending it with custom features, but not
> needed for normal use.

### The operation pipeline

Every entity operation follows a six-stage pipeline. Each stage fires a
feature hook before executing:

```
PrePoint → PreSpec → PreRequest → PreResponse → PreResult → PreDone
```

- **PrePoint**: Resolves which API endpoint to call based on the
  operation name and entity configuration.
- **PreSpec**: Builds the HTTP spec — URL, method, headers, body —
  from the resolved point and the caller's parameters.
- **PreRequest**: Sends the HTTP request. Features can intercept here
  to replace the transport (as TestFeature does with mocks).
- **PreResponse**: Parses the raw HTTP response.
- **PreResult**: Extracts the business data from the parsed response.
- **PreDone**: Final stage before returning to the caller. Entity
  state (match, data) is updated here.

If any stage errors, the pipeline short-circuits and the error surfaces
to the caller — see [Error handling](#error-handling) for how that looks
in this language.

### Features and hooks

Features are the extension mechanism. A feature is a Lua table
with hook methods named after pipeline stages (e.g. `PrePoint`,
`PreSpec`). Each method receives the context.

The SDK ships with built-in features:

- **TestFeature**: In-memory mock transport for testing without a live server

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Data as tables

The Lua SDK uses plain Lua tables throughout rather than typed
objects. This mirrors the dynamic nature of the API and keeps the
SDK flexible — no code generation is needed when the API schema
changes.

Use `helpers.to_map()` to safely validate that a value is a table.

### Module structure

```
lua/
├── rest-countries_sdk.lua    -- Main SDK module
├── config.lua               -- Configuration
├── features.lua             -- Feature factory
├── core/                    -- Core types and context
├── entity/                  -- Entity implementations
├── feature/                 -- Built-in features (Base, Test, Log)
├── utility/                 -- Utility functions and struct library
└── test/                    -- Test suites
```

The main module (`rest-countries_sdk`) exports the SDK constructor
and test helper. Import entity or utility modules directly only
when needed.

### Entity state

Entity instances are stateful. After a successful `load`, the entity
stores the returned data and match criteria internally.

```lua
local alpha = client:Alpha()
alpha:load({ id = "example_id" })

-- alpha:data_get() now returns the alpha data from the last load
-- alpha:match_get() returns the last match criteria
```

Call `make()` to create a fresh instance with the same configuration
but no stored state.

### Direct vs entity access

The entity interface handles URL construction, parameter placement,
and response parsing automatically. Use it for standard CRUD operations.

`direct()` gives full control over the HTTP request. Use it for
non-standard endpoints, bulk operations, or any path not modelled as
an entity. `prepare()` builds the request without sending it — useful
for debugging or custom transport.


## Full Reference

See [REFERENCE.md](REFERENCE.md) for complete API reference
documentation including all method signatures, entity field schemas,
and detailed usage examples.

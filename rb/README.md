# RestCountries Ruby SDK

The Ruby SDK for the RestCountries API. Provides an entity-oriented interface using idiomatic Ruby conventions.


## Install
```bash
gem install rest-countries-sdk
```

Or add to your `Gemfile`:

```ruby
gem "rest-countries-sdk"
```

Then run:

```bash
bundle install
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```ruby
require_relative "RestCountries_sdk"

client = RestCountriesSDK.new({})
```

### 2. List alls

```ruby
result, err = client.All(nil).list(nil, nil)
raise err if err

if result.is_a?(Array)
  result.each do |item|
    d = item.data_get
    puts "#{d["id"]} #{d["name"]}"
  end
end
```


## How-to guides

### Make a direct HTTP request

For endpoints not covered by entity methods:

```ruby
result, err = client.direct({
  "path" => "/api/resource/{id}",
  "method" => "GET",
  "params" => { "id" => "example" },
})
raise err if err

if result["ok"]
  puts result["status"]  # 200
  puts result["data"]    # response body
end
```

### Prepare a request without sending it

```ruby
fetchdef, err = client.prepare({
  "path" => "/api/resource/{id}",
  "method" => "DELETE",
  "params" => { "id" => "example" },
})
raise err if err

puts fetchdef["url"]
puts fetchdef["method"]
puts fetchdef["headers"]
```

### Use test mode

Create a mock client for unit testing — no server required:

```ruby
client = RestCountriesSDK.test(nil, nil)

result, err = client.RestCountries(nil).load(
  { "id" => "test01" }, nil
)
# result contains mock response data
```

### Use a custom fetch function

Replace the HTTP transport with your own function:

```ruby
mock_fetch = ->(url, init) {
  return {
    "status" => 200,
    "statusText" => "OK",
    "headers" => {},
    "json" => ->() { { "id" => "mock01" } },
  }, nil
}

client = RestCountriesSDK.new({
  "base" => "http://localhost:8080",
  "system" => {
    "fetch" => mock_fetch,
  },
})
```

### Run live tests

Create a `.env.local` file at the project root:

```
REST-COUNTRIES_TEST_LIVE=TRUE
```

Then run:

```bash
cd rb && ruby -Itest -e "Dir['test/*_test.rb'].each { |f| require_relative f }"
```


## Reference

### RestCountriesSDK

```ruby
require_relative "RestCountries_sdk"
client = RestCountriesSDK.new(options)
```

Creates a new SDK client.

| Option | Type | Description |
| --- | --- | --- |
| `base` | `String` | Base URL of the API server. |
| `prefix` | `String` | URL path prefix prepended to all requests. |
| `suffix` | `String` | URL path suffix appended to all requests. |
| `feature` | `Hash` | Feature activation flags. |
| `extend` | `Hash` | Additional Feature instances to load. |
| `system` | `Hash` | System overrides (e.g. custom `fetch` lambda). |

### test

```ruby
client = RestCountriesSDK.test(testopts, sdkopts)
```

Creates a test-mode client with mock transport. Both arguments may be `nil`.

### RestCountriesSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `options_map` | `() -> Hash` | Deep copy of current SDK options. |
| `get_utility` | `() -> Utility` | Copy of the SDK utility object. |
| `prepare` | `(fetchargs) -> [Hash, err]` | Build an HTTP request definition without sending. |
| `direct` | `(fetchargs) -> [Hash, err]` | Build and send an HTTP request. |
| `All` | `(data) -> AllEntity` | Create a All entity instance. |
| `Alpha` | `(data) -> AlphaEntity` | Create a Alpha entity instance. |
| `Capital` | `(data) -> CapitalEntity` | Create a Capital entity instance. |
| `Name` | `(data) -> NameEntity` | Create a Name entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(reqmatch, ctrl) -> [any, err]` | Load a single entity by match criteria. |
| `list` | `(reqmatch, ctrl) -> [any, err]` | List entities matching the criteria. |
| `create` | `(reqdata, ctrl) -> [any, err]` | Create a new entity. |
| `update` | `(reqdata, ctrl) -> [any, err]` | Update an existing entity. |
| `remove` | `(reqmatch, ctrl) -> [any, err]` | Remove an entity. |
| `data_get` | `() -> Hash` | Get entity data. |
| `data_set` | `(data)` | Set entity data. |
| `match_get` | `() -> Hash` | Get entity match criteria. |
| `match_set` | `(match)` | Set entity match criteria. |
| `make` | `() -> Entity` | Create a new instance with the same options. |
| `get_name` | `() -> String` | Return the entity name. |

### Result shape

Entity operations return `[any, err]`. The first value is a
`Hash` with these keys:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `Boolean` | `true` if the HTTP status is 2xx. |
| `status` | `Integer` | HTTP status code. |
| `headers` | `Hash` | Response headers. |
| `data` | `any` | Parsed JSON response body. |

On error, `ok` is `false` and `err` contains the error value.

### Entities

#### All

| Field | Description |
| --- | --- |
| `alt_spelling` |  |
| `area` |  |
| `border` |  |
| `capital` |  |
| `capital_info` |  |
| `car` |  |
| `cca2` |  |
| `cca3` |  |
| `ccn3` |  |
| `cioc` |  |
| `coat_of_arm` |  |
| `continent` |  |
| `currency` |  |
| `demonym` |  |
| `fifa` |  |
| `flag` |  |
| `gini` |  |
| `idd` |  |
| `independent` |  |
| `landlocked` |  |
| `language` |  |
| `latlng` |  |
| `map` |  |
| `name` |  |
| `population` |  |
| `postal_code` |  |
| `region` |  |
| `start_of_week` |  |
| `status` |  |
| `subregion` |  |
| `timezone` |  |
| `tld` |  |
| `translation` |  |
| `un_member` |  |

Operations: List.

API path: `/all`

#### Alpha

| Field | Description |
| --- | --- |
| `alt_spelling` |  |
| `area` |  |
| `border` |  |
| `capital` |  |
| `capital_info` |  |
| `car` |  |
| `cca2` |  |
| `cca3` |  |
| `ccn3` |  |
| `cioc` |  |
| `coat_of_arm` |  |
| `continent` |  |
| `currency` |  |
| `demonym` |  |
| `fifa` |  |
| `flag` |  |
| `gini` |  |
| `idd` |  |
| `independent` |  |
| `landlocked` |  |
| `language` |  |
| `latlng` |  |
| `map` |  |
| `name` |  |
| `population` |  |
| `postal_code` |  |
| `region` |  |
| `start_of_week` |  |
| `status` |  |
| `subregion` |  |
| `timezone` |  |
| `tld` |  |
| `translation` |  |
| `un_member` |  |

Operations: Load.

API path: `/alpha/{code}`

#### Capital

| Field | Description |
| --- | --- |
| `alt_spelling` |  |
| `area` |  |
| `border` |  |
| `capital` |  |
| `capital_info` |  |
| `car` |  |
| `cca2` |  |
| `cca3` |  |
| `ccn3` |  |
| `cioc` |  |
| `coat_of_arm` |  |
| `continent` |  |
| `currency` |  |
| `demonym` |  |
| `fifa` |  |
| `flag` |  |
| `gini` |  |
| `idd` |  |
| `independent` |  |
| `landlocked` |  |
| `language` |  |
| `latlng` |  |
| `map` |  |
| `name` |  |
| `population` |  |
| `postal_code` |  |
| `region` |  |
| `start_of_week` |  |
| `status` |  |
| `subregion` |  |
| `timezone` |  |
| `tld` |  |
| `translation` |  |
| `un_member` |  |

Operations: Load.

API path: `/capital/{capital}`

#### Name

| Field | Description |
| --- | --- |
| `alt_spelling` |  |
| `area` |  |
| `border` |  |
| `capital` |  |
| `capital_info` |  |
| `car` |  |
| `cca2` |  |
| `cca3` |  |
| `ccn3` |  |
| `cioc` |  |
| `coat_of_arm` |  |
| `continent` |  |
| `currency` |  |
| `demonym` |  |
| `fifa` |  |
| `flag` |  |
| `gini` |  |
| `idd` |  |
| `independent` |  |
| `landlocked` |  |
| `language` |  |
| `latlng` |  |
| `map` |  |
| `name` |  |
| `population` |  |
| `postal_code` |  |
| `region` |  |
| `start_of_week` |  |
| `status` |  |
| `subregion` |  |
| `timezone` |  |
| `tld` |  |
| `translation` |  |
| `un_member` |  |

Operations: Load.

API path: `/name/{name}`



## Entities


### All

Create an instance: `const all = client.All()`

#### Operations

| Method | Description |
| --- | --- |
| `list(match)` | List entities matching the criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `alt_spelling` | ``$ARRAY`` |  |
| `area` | ``$NUMBER`` |  |
| `border` | ``$ARRAY`` |  |
| `capital` | ``$ARRAY`` |  |
| `capital_info` | ``$OBJECT`` |  |
| `car` | ``$OBJECT`` |  |
| `cca2` | ``$STRING`` |  |
| `cca3` | ``$STRING`` |  |
| `ccn3` | ``$STRING`` |  |
| `cioc` | ``$STRING`` |  |
| `coat_of_arm` | ``$OBJECT`` |  |
| `continent` | ``$ARRAY`` |  |
| `currency` | ``$OBJECT`` |  |
| `demonym` | ``$OBJECT`` |  |
| `fifa` | ``$STRING`` |  |
| `flag` | ``$STRING`` |  |
| `gini` | ``$OBJECT`` |  |
| `idd` | ``$OBJECT`` |  |
| `independent` | ``$BOOLEAN`` |  |
| `landlocked` | ``$BOOLEAN`` |  |
| `language` | ``$OBJECT`` |  |
| `latlng` | ``$ARRAY`` |  |
| `map` | ``$OBJECT`` |  |
| `name` | ``$OBJECT`` |  |
| `population` | ``$INTEGER`` |  |
| `postal_code` | ``$OBJECT`` |  |
| `region` | ``$STRING`` |  |
| `start_of_week` | ``$STRING`` |  |
| `status` | ``$STRING`` |  |
| `subregion` | ``$STRING`` |  |
| `timezone` | ``$ARRAY`` |  |
| `tld` | ``$ARRAY`` |  |
| `translation` | ``$OBJECT`` |  |
| `un_member` | ``$BOOLEAN`` |  |

#### Example: List

```ts
const alls = await client.All().list()
```


### Alpha

Create an instance: `const alpha = client.Alpha()`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `alt_spelling` | ``$ARRAY`` |  |
| `area` | ``$NUMBER`` |  |
| `border` | ``$ARRAY`` |  |
| `capital` | ``$ARRAY`` |  |
| `capital_info` | ``$OBJECT`` |  |
| `car` | ``$OBJECT`` |  |
| `cca2` | ``$STRING`` |  |
| `cca3` | ``$STRING`` |  |
| `ccn3` | ``$STRING`` |  |
| `cioc` | ``$STRING`` |  |
| `coat_of_arm` | ``$OBJECT`` |  |
| `continent` | ``$ARRAY`` |  |
| `currency` | ``$OBJECT`` |  |
| `demonym` | ``$OBJECT`` |  |
| `fifa` | ``$STRING`` |  |
| `flag` | ``$STRING`` |  |
| `gini` | ``$OBJECT`` |  |
| `idd` | ``$OBJECT`` |  |
| `independent` | ``$BOOLEAN`` |  |
| `landlocked` | ``$BOOLEAN`` |  |
| `language` | ``$OBJECT`` |  |
| `latlng` | ``$ARRAY`` |  |
| `map` | ``$OBJECT`` |  |
| `name` | ``$OBJECT`` |  |
| `population` | ``$INTEGER`` |  |
| `postal_code` | ``$OBJECT`` |  |
| `region` | ``$STRING`` |  |
| `start_of_week` | ``$STRING`` |  |
| `status` | ``$STRING`` |  |
| `subregion` | ``$STRING`` |  |
| `timezone` | ``$ARRAY`` |  |
| `tld` | ``$ARRAY`` |  |
| `translation` | ``$OBJECT`` |  |
| `un_member` | ``$BOOLEAN`` |  |

#### Example: Load

```ts
const alpha = await client.Alpha().load({ id: 'alpha_id' })
```


### Capital

Create an instance: `const capital = client.Capital()`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `alt_spelling` | ``$ARRAY`` |  |
| `area` | ``$NUMBER`` |  |
| `border` | ``$ARRAY`` |  |
| `capital` | ``$ARRAY`` |  |
| `capital_info` | ``$OBJECT`` |  |
| `car` | ``$OBJECT`` |  |
| `cca2` | ``$STRING`` |  |
| `cca3` | ``$STRING`` |  |
| `ccn3` | ``$STRING`` |  |
| `cioc` | ``$STRING`` |  |
| `coat_of_arm` | ``$OBJECT`` |  |
| `continent` | ``$ARRAY`` |  |
| `currency` | ``$OBJECT`` |  |
| `demonym` | ``$OBJECT`` |  |
| `fifa` | ``$STRING`` |  |
| `flag` | ``$STRING`` |  |
| `gini` | ``$OBJECT`` |  |
| `idd` | ``$OBJECT`` |  |
| `independent` | ``$BOOLEAN`` |  |
| `landlocked` | ``$BOOLEAN`` |  |
| `language` | ``$OBJECT`` |  |
| `latlng` | ``$ARRAY`` |  |
| `map` | ``$OBJECT`` |  |
| `name` | ``$OBJECT`` |  |
| `population` | ``$INTEGER`` |  |
| `postal_code` | ``$OBJECT`` |  |
| `region` | ``$STRING`` |  |
| `start_of_week` | ``$STRING`` |  |
| `status` | ``$STRING`` |  |
| `subregion` | ``$STRING`` |  |
| `timezone` | ``$ARRAY`` |  |
| `tld` | ``$ARRAY`` |  |
| `translation` | ``$OBJECT`` |  |
| `un_member` | ``$BOOLEAN`` |  |

#### Example: Load

```ts
const capital = await client.Capital().load({ id: 'capital_id' })
```


### Name

Create an instance: `const name = client.Name()`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `alt_spelling` | ``$ARRAY`` |  |
| `area` | ``$NUMBER`` |  |
| `border` | ``$ARRAY`` |  |
| `capital` | ``$ARRAY`` |  |
| `capital_info` | ``$OBJECT`` |  |
| `car` | ``$OBJECT`` |  |
| `cca2` | ``$STRING`` |  |
| `cca3` | ``$STRING`` |  |
| `ccn3` | ``$STRING`` |  |
| `cioc` | ``$STRING`` |  |
| `coat_of_arm` | ``$OBJECT`` |  |
| `continent` | ``$ARRAY`` |  |
| `currency` | ``$OBJECT`` |  |
| `demonym` | ``$OBJECT`` |  |
| `fifa` | ``$STRING`` |  |
| `flag` | ``$STRING`` |  |
| `gini` | ``$OBJECT`` |  |
| `idd` | ``$OBJECT`` |  |
| `independent` | ``$BOOLEAN`` |  |
| `landlocked` | ``$BOOLEAN`` |  |
| `language` | ``$OBJECT`` |  |
| `latlng` | ``$ARRAY`` |  |
| `map` | ``$OBJECT`` |  |
| `name` | ``$OBJECT`` |  |
| `population` | ``$INTEGER`` |  |
| `postal_code` | ``$OBJECT`` |  |
| `region` | ``$STRING`` |  |
| `start_of_week` | ``$STRING`` |  |
| `status` | ``$STRING`` |  |
| `subregion` | ``$STRING`` |  |
| `timezone` | ``$ARRAY`` |  |
| `tld` | ``$ARRAY`` |  |
| `translation` | ``$OBJECT`` |  |
| `un_member` | ``$BOOLEAN`` |  |

#### Example: Load

```ts
const name = await client.Name().load({ id: 'name_id' })
```


## Explanation

### The operation pipeline

Every entity operation (load, list, create, update, remove) follows a
six-stage pipeline. Each stage fires a feature hook before executing:

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

If any stage returns an error, the pipeline short-circuits and the
error is returned to the caller as a second return value.

### Features and hooks

Features are the extension mechanism. A feature is a Ruby class
with hook methods named after pipeline stages (e.g. `PrePoint`,
`PreSpec`). Each method receives the context.

The SDK ships with built-in features:

- **TestFeature**: In-memory mock transport for testing without a live server

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Data as hashes

The Ruby SDK uses plain Ruby hashes throughout rather than typed
objects. This mirrors the dynamic nature of the API and keeps the
SDK flexible — no code generation is needed when the API schema
changes.

Use `Helpers.to_map()` to safely validate that a value is a hash.

### Module structure

```
rb/
├── RestCountries_sdk.rb       -- Main SDK module
├── config.rb                  -- Configuration
├── features.rb                -- Feature factory
├── core/                      -- Core types and context
├── entity/                    -- Entity implementations
├── feature/                   -- Built-in features (Base, Test, Log)
├── utility/                   -- Utility functions and struct library
└── test/                      -- Test suites
```

The main module (`RestCountries_sdk`) exports the SDK class
and test helper. Import entity or utility modules directly only
when needed.

### Entity state

Entity instances are stateful. After a successful `load`, the entity
stores the returned data and match criteria internally.

```ruby
moon = client.Moon
moon.load({ "planet_id" => "earth", "id" => "luna" })

# moon.data_get now returns the loaded moon data
# moon.match_get returns the last match criteria
```

Call `make` to create a fresh instance with the same configuration
but no stored state.

### Direct vs entity access

The entity interface handles URL construction, parameter placement,
and response parsing automatically. Use it for standard CRUD operations.

`direct` gives full control over the HTTP request. Use it for
non-standard endpoints, bulk operations, or any path not modelled as
an entity. `prepare` builds the request without sending it — useful
for debugging or custom transport.


## Full Reference

See [REFERENCE.md](REFERENCE.md) for complete API reference
documentation including all method signatures, entity field schemas,
and detailed usage examples.

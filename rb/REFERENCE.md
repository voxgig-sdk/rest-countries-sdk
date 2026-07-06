# RestCountries Ruby SDK Reference

Complete API reference for the RestCountries Ruby SDK.


## RestCountriesSDK

### Constructor

```ruby
require_relative 'RestCountries_sdk'

client = RestCountriesSDK.new(options)
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `Hash` | SDK configuration options. |
| `options["base"]` | `String` | Base URL for API requests. |
| `options["prefix"]` | `String` | URL prefix appended after base. |
| `options["suffix"]` | `String` | URL suffix appended after path. |
| `options["headers"]` | `Hash` | Custom headers for all requests. |
| `options["feature"]` | `Hash` | Feature configuration. |
| `options["system"]` | `Hash` | System overrides (e.g. custom fetch). |


### Static Methods

#### `RestCountriesSDK.test(testopts = nil, sdkopts = nil)`

Create a test client with mock features active. Both arguments may be `nil`.

```ruby
client = RestCountriesSDK.test
```


### Instance Methods

#### `All(data = nil)`

Create a new `All` entity instance. Pass `nil` for no initial data.

#### `Alpha(data = nil)`

Create a new `Alpha` entity instance. Pass `nil` for no initial data.

#### `Capital(data = nil)`

Create a new `Capital` entity instance. Pass `nil` for no initial data.

#### `Name(data = nil)`

Create a new `Name` entity instance. Pass `nil` for no initial data.

#### `options_map -> Hash`

Return a deep copy of the current SDK options.

#### `get_utility -> Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs = {}) -> Hash`

Make a direct HTTP request to any API endpoint. Returns a result hash
(`{ "ok" => ..., "status" => ..., "data" => ..., "err" => ... }`); it
does not raise — inspect `result["ok"]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `String` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `String` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `Hash` | Path parameter values for `{param}` substitution. |
| `fetchargs["query"]` | `Hash` | Query string parameters. |
| `fetchargs["headers"]` | `Hash` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `any` | Request body (hashes are JSON-serialized). |
| `fetchargs["ctrl"]` | `Hash` | Control options (e.g. `{ "explain" => true }`). |

**Returns:** `Hash`

#### `prepare(fetchargs = {}) -> Hash`

Prepare a fetch definition without sending the request. Accepts the
same parameters as `direct()`. Raises on error.

**Returns:** `Hash` (the fetch definition; raises on error)


---

## AllEntity

```ruby
all = client.All
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `alt_spelling` | `Array` | No |  |
| `area` | `Float` | No |  |
| `border` | `Array` | No |  |
| `capital` | `Array` | No |  |
| `capital_info` | `Hash` | No |  |
| `car` | `Hash` | No |  |
| `cca2` | `String` | No |  |
| `cca3` | `String` | No |  |
| `ccn3` | `String` | No |  |
| `cioc` | `String` | No |  |
| `coat_of_arm` | `Hash` | No |  |
| `continent` | `Array` | No |  |
| `currency` | `Hash` | No |  |
| `demonym` | `Hash` | No |  |
| `fifa` | `String` | No |  |
| `flag` | `String` | No |  |
| `gini` | `Hash` | No |  |
| `idd` | `Hash` | No |  |
| `independent` | `Boolean` | No |  |
| `landlocked` | `Boolean` | No |  |
| `language` | `Hash` | No |  |
| `latlng` | `Array` | No |  |
| `map` | `Hash` | No |  |
| `name` | `Hash` | No |  |
| `population` | `Integer` | No |  |
| `postal_code` | `Hash` | No |  |
| `region` | `String` | No |  |
| `start_of_week` | `String` | No |  |
| `status` | `String` | No |  |
| `subregion` | `String` | No |  |
| `timezone` | `Array` | No |  |
| `tld` | `Array` | No |  |
| `translation` | `Hash` | No |  |
| `un_member` | `Boolean` | No |  |

### Operations

#### `list(reqmatch = nil, ctrl = nil) -> Array`

List entities matching the given criteria (call with no argument to list all). Returns an array. Raises on error.

```ruby
results = client.All.list
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `AllEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## AlphaEntity

```ruby
alpha = client.Alpha
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `alt_spelling` | `Array` | No |  |
| `area` | `Float` | No |  |
| `border` | `Array` | No |  |
| `capital` | `Array` | No |  |
| `capital_info` | `Hash` | No |  |
| `car` | `Hash` | No |  |
| `cca2` | `String` | No |  |
| `cca3` | `String` | No |  |
| `ccn3` | `String` | No |  |
| `cioc` | `String` | No |  |
| `coat_of_arm` | `Hash` | No |  |
| `continent` | `Array` | No |  |
| `currency` | `Hash` | No |  |
| `demonym` | `Hash` | No |  |
| `fifa` | `String` | No |  |
| `flag` | `String` | No |  |
| `gini` | `Hash` | No |  |
| `idd` | `Hash` | No |  |
| `independent` | `Boolean` | No |  |
| `landlocked` | `Boolean` | No |  |
| `language` | `Hash` | No |  |
| `latlng` | `Array` | No |  |
| `map` | `Hash` | No |  |
| `name` | `Hash` | No |  |
| `population` | `Integer` | No |  |
| `postal_code` | `Hash` | No |  |
| `region` | `String` | No |  |
| `start_of_week` | `String` | No |  |
| `status` | `String` | No |  |
| `subregion` | `String` | No |  |
| `timezone` | `Array` | No |  |
| `tld` | `Array` | No |  |
| `translation` | `Hash` | No |  |
| `un_member` | `Boolean` | No |  |

### Operations

#### `load(reqmatch, ctrl = nil) -> result`

Load a single entity matching the given criteria. Raises on error.

```ruby
result = client.Alpha.load({ "id" => "alpha_id" })
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `AlphaEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## CapitalEntity

```ruby
capital = client.Capital
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `alt_spelling` | `Array` | No |  |
| `area` | `Float` | No |  |
| `border` | `Array` | No |  |
| `capital` | `Array` | No |  |
| `capital_info` | `Hash` | No |  |
| `car` | `Hash` | No |  |
| `cca2` | `String` | No |  |
| `cca3` | `String` | No |  |
| `ccn3` | `String` | No |  |
| `cioc` | `String` | No |  |
| `coat_of_arm` | `Hash` | No |  |
| `continent` | `Array` | No |  |
| `currency` | `Hash` | No |  |
| `demonym` | `Hash` | No |  |
| `fifa` | `String` | No |  |
| `flag` | `String` | No |  |
| `gini` | `Hash` | No |  |
| `idd` | `Hash` | No |  |
| `independent` | `Boolean` | No |  |
| `landlocked` | `Boolean` | No |  |
| `language` | `Hash` | No |  |
| `latlng` | `Array` | No |  |
| `map` | `Hash` | No |  |
| `name` | `Hash` | No |  |
| `population` | `Integer` | No |  |
| `postal_code` | `Hash` | No |  |
| `region` | `String` | No |  |
| `start_of_week` | `String` | No |  |
| `status` | `String` | No |  |
| `subregion` | `String` | No |  |
| `timezone` | `Array` | No |  |
| `tld` | `Array` | No |  |
| `translation` | `Hash` | No |  |
| `un_member` | `Boolean` | No |  |

### Operations

#### `load(reqmatch, ctrl = nil) -> result`

Load a single entity matching the given criteria. Raises on error.

```ruby
result = client.Capital.load({ "id" => "capital_id" })
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `CapitalEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## NameEntity

```ruby
name = client.Name
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `alt_spelling` | `Array` | No |  |
| `area` | `Float` | No |  |
| `border` | `Array` | No |  |
| `capital` | `Array` | No |  |
| `capital_info` | `Hash` | No |  |
| `car` | `Hash` | No |  |
| `cca2` | `String` | No |  |
| `cca3` | `String` | No |  |
| `ccn3` | `String` | No |  |
| `cioc` | `String` | No |  |
| `coat_of_arm` | `Hash` | No |  |
| `continent` | `Array` | No |  |
| `currency` | `Hash` | No |  |
| `demonym` | `Hash` | No |  |
| `fifa` | `String` | No |  |
| `flag` | `String` | No |  |
| `gini` | `Hash` | No |  |
| `idd` | `Hash` | No |  |
| `independent` | `Boolean` | No |  |
| `landlocked` | `Boolean` | No |  |
| `language` | `Hash` | No |  |
| `latlng` | `Array` | No |  |
| `map` | `Hash` | No |  |
| `name` | `Hash` | No |  |
| `population` | `Integer` | No |  |
| `postal_code` | `Hash` | No |  |
| `region` | `String` | No |  |
| `start_of_week` | `String` | No |  |
| `status` | `String` | No |  |
| `subregion` | `String` | No |  |
| `timezone` | `Array` | No |  |
| `tld` | `Array` | No |  |
| `translation` | `Hash` | No |  |
| `un_member` | `Boolean` | No |  |

### Operations

#### `load(reqmatch, ctrl = nil) -> result`

Load a single entity matching the given criteria. Raises on error.

```ruby
result = client.Name.load({ "id" => "name_id" })
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `NameEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```ruby
client = RestCountriesSDK.new({
  "feature" => {
    "test" => { "active" => true },
  },
})
```


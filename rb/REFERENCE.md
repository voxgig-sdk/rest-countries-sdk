# RestCountries Ruby SDK Reference

Complete API reference for the RestCountries Ruby SDK.


## RestCountriesSDK

### Constructor

```ruby
require_relative 'rest-countries_sdk'

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
| `alt_spelling` | ``$ARRAY`` | No |  |
| `area` | ``$NUMBER`` | No |  |
| `border` | ``$ARRAY`` | No |  |
| `capital` | ``$ARRAY`` | No |  |
| `capital_info` | ``$OBJECT`` | No |  |
| `car` | ``$OBJECT`` | No |  |
| `cca2` | ``$STRING`` | No |  |
| `cca3` | ``$STRING`` | No |  |
| `ccn3` | ``$STRING`` | No |  |
| `cioc` | ``$STRING`` | No |  |
| `coat_of_arm` | ``$OBJECT`` | No |  |
| `continent` | ``$ARRAY`` | No |  |
| `currency` | ``$OBJECT`` | No |  |
| `demonym` | ``$OBJECT`` | No |  |
| `fifa` | ``$STRING`` | No |  |
| `flag` | ``$STRING`` | No |  |
| `gini` | ``$OBJECT`` | No |  |
| `idd` | ``$OBJECT`` | No |  |
| `independent` | ``$BOOLEAN`` | No |  |
| `landlocked` | ``$BOOLEAN`` | No |  |
| `language` | ``$OBJECT`` | No |  |
| `latlng` | ``$ARRAY`` | No |  |
| `map` | ``$OBJECT`` | No |  |
| `name` | ``$OBJECT`` | No |  |
| `population` | ``$INTEGER`` | No |  |
| `postal_code` | ``$OBJECT`` | No |  |
| `region` | ``$STRING`` | No |  |
| `start_of_week` | ``$STRING`` | No |  |
| `status` | ``$STRING`` | No |  |
| `subregion` | ``$STRING`` | No |  |
| `timezone` | ``$ARRAY`` | No |  |
| `tld` | ``$ARRAY`` | No |  |
| `translation` | ``$OBJECT`` | No |  |
| `un_member` | ``$BOOLEAN`` | No |  |

### Operations

#### `list(reqmatch, ctrl = nil) -> Array`

List entities matching the given criteria. Returns an array. Raises on error.

```ruby
results = client.All.list(nil)
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
| `alt_spelling` | ``$ARRAY`` | No |  |
| `area` | ``$NUMBER`` | No |  |
| `border` | ``$ARRAY`` | No |  |
| `capital` | ``$ARRAY`` | No |  |
| `capital_info` | ``$OBJECT`` | No |  |
| `car` | ``$OBJECT`` | No |  |
| `cca2` | ``$STRING`` | No |  |
| `cca3` | ``$STRING`` | No |  |
| `ccn3` | ``$STRING`` | No |  |
| `cioc` | ``$STRING`` | No |  |
| `coat_of_arm` | ``$OBJECT`` | No |  |
| `continent` | ``$ARRAY`` | No |  |
| `currency` | ``$OBJECT`` | No |  |
| `demonym` | ``$OBJECT`` | No |  |
| `fifa` | ``$STRING`` | No |  |
| `flag` | ``$STRING`` | No |  |
| `gini` | ``$OBJECT`` | No |  |
| `idd` | ``$OBJECT`` | No |  |
| `independent` | ``$BOOLEAN`` | No |  |
| `landlocked` | ``$BOOLEAN`` | No |  |
| `language` | ``$OBJECT`` | No |  |
| `latlng` | ``$ARRAY`` | No |  |
| `map` | ``$OBJECT`` | No |  |
| `name` | ``$OBJECT`` | No |  |
| `population` | ``$INTEGER`` | No |  |
| `postal_code` | ``$OBJECT`` | No |  |
| `region` | ``$STRING`` | No |  |
| `start_of_week` | ``$STRING`` | No |  |
| `status` | ``$STRING`` | No |  |
| `subregion` | ``$STRING`` | No |  |
| `timezone` | ``$ARRAY`` | No |  |
| `tld` | ``$ARRAY`` | No |  |
| `translation` | ``$OBJECT`` | No |  |
| `un_member` | ``$BOOLEAN`` | No |  |

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
| `alt_spelling` | ``$ARRAY`` | No |  |
| `area` | ``$NUMBER`` | No |  |
| `border` | ``$ARRAY`` | No |  |
| `capital` | ``$ARRAY`` | No |  |
| `capital_info` | ``$OBJECT`` | No |  |
| `car` | ``$OBJECT`` | No |  |
| `cca2` | ``$STRING`` | No |  |
| `cca3` | ``$STRING`` | No |  |
| `ccn3` | ``$STRING`` | No |  |
| `cioc` | ``$STRING`` | No |  |
| `coat_of_arm` | ``$OBJECT`` | No |  |
| `continent` | ``$ARRAY`` | No |  |
| `currency` | ``$OBJECT`` | No |  |
| `demonym` | ``$OBJECT`` | No |  |
| `fifa` | ``$STRING`` | No |  |
| `flag` | ``$STRING`` | No |  |
| `gini` | ``$OBJECT`` | No |  |
| `idd` | ``$OBJECT`` | No |  |
| `independent` | ``$BOOLEAN`` | No |  |
| `landlocked` | ``$BOOLEAN`` | No |  |
| `language` | ``$OBJECT`` | No |  |
| `latlng` | ``$ARRAY`` | No |  |
| `map` | ``$OBJECT`` | No |  |
| `name` | ``$OBJECT`` | No |  |
| `population` | ``$INTEGER`` | No |  |
| `postal_code` | ``$OBJECT`` | No |  |
| `region` | ``$STRING`` | No |  |
| `start_of_week` | ``$STRING`` | No |  |
| `status` | ``$STRING`` | No |  |
| `subregion` | ``$STRING`` | No |  |
| `timezone` | ``$ARRAY`` | No |  |
| `tld` | ``$ARRAY`` | No |  |
| `translation` | ``$OBJECT`` | No |  |
| `un_member` | ``$BOOLEAN`` | No |  |

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
| `alt_spelling` | ``$ARRAY`` | No |  |
| `area` | ``$NUMBER`` | No |  |
| `border` | ``$ARRAY`` | No |  |
| `capital` | ``$ARRAY`` | No |  |
| `capital_info` | ``$OBJECT`` | No |  |
| `car` | ``$OBJECT`` | No |  |
| `cca2` | ``$STRING`` | No |  |
| `cca3` | ``$STRING`` | No |  |
| `ccn3` | ``$STRING`` | No |  |
| `cioc` | ``$STRING`` | No |  |
| `coat_of_arm` | ``$OBJECT`` | No |  |
| `continent` | ``$ARRAY`` | No |  |
| `currency` | ``$OBJECT`` | No |  |
| `demonym` | ``$OBJECT`` | No |  |
| `fifa` | ``$STRING`` | No |  |
| `flag` | ``$STRING`` | No |  |
| `gini` | ``$OBJECT`` | No |  |
| `idd` | ``$OBJECT`` | No |  |
| `independent` | ``$BOOLEAN`` | No |  |
| `landlocked` | ``$BOOLEAN`` | No |  |
| `language` | ``$OBJECT`` | No |  |
| `latlng` | ``$ARRAY`` | No |  |
| `map` | ``$OBJECT`` | No |  |
| `name` | ``$OBJECT`` | No |  |
| `population` | ``$INTEGER`` | No |  |
| `postal_code` | ``$OBJECT`` | No |  |
| `region` | ``$STRING`` | No |  |
| `start_of_week` | ``$STRING`` | No |  |
| `status` | ``$STRING`` | No |  |
| `subregion` | ``$STRING`` | No |  |
| `timezone` | ``$ARRAY`` | No |  |
| `tld` | ``$ARRAY`` | No |  |
| `translation` | ``$OBJECT`` | No |  |
| `un_member` | ``$BOOLEAN`` | No |  |

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


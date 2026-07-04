# RestCountries Lua SDK Reference

Complete API reference for the RestCountries Lua SDK.


## RestCountriesSDK

### Constructor

```lua
local sdk = require("rest-countries_sdk")
local client = sdk.new(options)
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `table` | SDK configuration options. |
| `options.base` | `string` | Base URL for API requests. |
| `options.prefix` | `string` | URL prefix appended after base. |
| `options.suffix` | `string` | URL suffix appended after path. |
| `options.headers` | `table` | Custom headers for all requests. |
| `options.feature` | `table` | Feature configuration. |
| `options.system` | `table` | System overrides (e.g. custom fetch). |


### Static Methods

#### `sdk.test(testopts?, sdkopts?)`

Create a test client with mock features active. Both arguments are optional.

```lua
local client = sdk.test()
```


### Instance Methods

#### `All(data)`

Create a new `All` entity instance. Pass `nil` for no initial data.

#### `Alpha(data)`

Create a new `Alpha` entity instance. Pass `nil` for no initial data.

#### `Capital(data)`

Create a new `Capital` entity instance. Pass `nil` for no initial data.

#### `Name(data)`

Create a new `Name` entity instance. Pass `nil` for no initial data.

#### `options_map() -> table`

Return a deep copy of the current SDK options.

#### `get_utility() -> Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs) -> table, err`

Make a direct HTTP request to any API endpoint.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs.path` | `string` | URL path with optional `{param}` placeholders. |
| `fetchargs.method` | `string` | HTTP method (default: `"GET"`). |
| `fetchargs.params` | `table` | Path parameter values for `{param}` substitution. |
| `fetchargs.query` | `table` | Query string parameters. |
| `fetchargs.headers` | `table` | Request headers (merged with defaults). |
| `fetchargs.body` | `any` | Request body (tables are JSON-serialized). |
| `fetchargs.ctrl` | `table` | Control options (e.g. `{ explain = true }`). |

**Returns:** `table, err`

#### `prepare(fetchargs) -> table, err`

Prepare a fetch definition without sending the request. Accepts the
same parameters as `direct()`.

**Returns:** `table, err`


---

## AllEntity

```lua
local all = client:All(nil)
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

#### `list(reqmatch, ctrl) -> any, err`

List entities matching the given criteria. Returns an array.

```lua
local results, err = client:All():list()
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `AllEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## AlphaEntity

```lua
local alpha = client:Alpha(nil)
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

#### `load(reqmatch, ctrl) -> any, err`

Load a single entity matching the given criteria.

```lua
local result, err = client:Alpha():load({ id = "alpha_id" })
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `AlphaEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## CapitalEntity

```lua
local capital = client:Capital(nil)
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

#### `load(reqmatch, ctrl) -> any, err`

Load a single entity matching the given criteria.

```lua
local result, err = client:Capital():load({ id = "capital_id" })
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `CapitalEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## NameEntity

```lua
local name = client:Name(nil)
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

#### `load(reqmatch, ctrl) -> any, err`

Load a single entity matching the given criteria.

```lua
local result, err = client:Name():load({ id = "name_id" })
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `NameEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```lua
local client = sdk.new({
  feature = {
    test = { active = true },
  },
})
```


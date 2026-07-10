# RestCountries Golang SDK Reference

Complete API reference for the RestCountries Golang SDK.


## RestCountriesSDK

### Constructor

```go
func NewRestCountriesSDK(options map[string]any) *RestCountriesSDK
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `map[string]any` | SDK configuration options. |
| `options["base"]` | `string` | Base URL for API requests. |
| `options["prefix"]` | `string` | URL prefix appended after base. |
| `options["suffix"]` | `string` | URL suffix appended after path. |
| `options["headers"]` | `map[string]any` | Custom headers for all requests. |
| `options["feature"]` | `map[string]any` | Feature configuration. |
| `options["system"]` | `map[string]any` | System overrides (e.g. custom fetch). |


### Static Methods

#### `Test() *RestCountriesSDK`

No-arg convenience constructor for the common no-options test case.

```go
client := sdk.Test()
```

#### `TestSDK(testopts, sdkopts map[string]any) *RestCountriesSDK`

Test client with options. Both arguments may be `nil`.

```go
client := sdk.TestSDK(testopts, sdkopts)
```


### Instance Methods

#### `All(data map[string]any) RestCountriesEntity`

Create a new `All` entity instance. Pass `nil` for no initial data.

#### `Alpha(data map[string]any) RestCountriesEntity`

Create a new `Alpha` entity instance. Pass `nil` for no initial data.

#### `Capital(data map[string]any) RestCountriesEntity`

Create a new `Capital` entity instance. Pass `nil` for no initial data.

#### `Name(data map[string]any) RestCountriesEntity`

Create a new `Name` entity instance. Pass `nil` for no initial data.

#### `OptionsMap() map[string]any`

Return a deep copy of the current SDK options.

#### `GetUtility() *Utility`

Return a copy of the SDK utility object.

#### `Direct(fetchargs map[string]any) (map[string]any, error)`

Make a direct HTTP request to any API endpoint.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `string` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `string` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `map[string]any` | Path parameter values for `{param}` substitution. |
| `fetchargs["query"]` | `map[string]any` | Query string parameters. |
| `fetchargs["headers"]` | `map[string]any` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `any` | Request body (maps are JSON-serialized). |
| `fetchargs["ctrl"]` | `map[string]any` | Control options (e.g. `map[string]any{"explain": true}`). |

**Returns:** `(map[string]any, error)`

#### `Prepare(fetchargs map[string]any) (map[string]any, error)`

Prepare a fetch definition without sending the request. Accepts the
same parameters as `Direct()`.

**Returns:** `(map[string]any, error)`


---

## AllEntity

```go
all := client.All(nil)
fmt.Println(all.GetName()) // "all"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `alt_spelling` | `[]any` | No |  |
| `area` | `float64` | No |  |
| `border` | `[]any` | No |  |
| `capital` | `[]any` | No |  |
| `capital_info` | `map[string]any` | No |  |
| `car` | `map[string]any` | No |  |
| `cca2` | `string` | No |  |
| `cca3` | `string` | No |  |
| `ccn3` | `string` | No |  |
| `cioc` | `string` | No |  |
| `coat_of_arm` | `map[string]any` | No |  |
| `continent` | `[]any` | No |  |
| `currency` | `map[string]any` | No |  |
| `demonym` | `map[string]any` | No |  |
| `fifa` | `string` | No |  |
| `flag` | `string` | No |  |
| `gini` | `map[string]any` | No |  |
| `idd` | `map[string]any` | No |  |
| `independent` | `bool` | No |  |
| `landlocked` | `bool` | No |  |
| `language` | `map[string]any` | No |  |
| `latlng` | `[]any` | No |  |
| `map` | `map[string]any` | No |  |
| `name` | `map[string]any` | No |  |
| `population` | `int` | No |  |
| `postal_code` | `map[string]any` | No |  |
| `region` | `string` | No |  |
| `start_of_week` | `string` | No |  |
| `status` | `string` | No |  |
| `subregion` | `string` | No |  |
| `timezone` | `[]any` | No |  |
| `tld` | `[]any` | No |  |
| `translation` | `map[string]any` | No |  |
| `un_member` | `bool` | No |  |

### Operations

#### `List(reqmatch, ctrl map[string]any) (any, error)`

List entities matching the given criteria. Returns an array.

```go
results, err := client.All(nil).List(nil, nil)
if err != nil {
    panic(err)
}
fmt.Println(results)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `AllEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## AlphaEntity

```go
alpha := client.Alpha(nil)
fmt.Println(alpha.GetName()) // "alpha"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `alt_spelling` | `[]any` | No |  |
| `area` | `float64` | No |  |
| `border` | `[]any` | No |  |
| `capital` | `[]any` | No |  |
| `capital_info` | `map[string]any` | No |  |
| `car` | `map[string]any` | No |  |
| `cca2` | `string` | No |  |
| `cca3` | `string` | No |  |
| `ccn3` | `string` | No |  |
| `cioc` | `string` | No |  |
| `coat_of_arm` | `map[string]any` | No |  |
| `continent` | `[]any` | No |  |
| `currency` | `map[string]any` | No |  |
| `demonym` | `map[string]any` | No |  |
| `fifa` | `string` | No |  |
| `flag` | `string` | No |  |
| `gini` | `map[string]any` | No |  |
| `idd` | `map[string]any` | No |  |
| `independent` | `bool` | No |  |
| `landlocked` | `bool` | No |  |
| `language` | `map[string]any` | No |  |
| `latlng` | `[]any` | No |  |
| `map` | `map[string]any` | No |  |
| `name` | `map[string]any` | No |  |
| `population` | `int` | No |  |
| `postal_code` | `map[string]any` | No |  |
| `region` | `string` | No |  |
| `start_of_week` | `string` | No |  |
| `status` | `string` | No |  |
| `subregion` | `string` | No |  |
| `timezone` | `[]any` | No |  |
| `tld` | `[]any` | No |  |
| `translation` | `map[string]any` | No |  |
| `un_member` | `bool` | No |  |

### Operations

#### `Load(reqmatch, ctrl map[string]any) (any, error)`

Load a single entity matching the given criteria.

```go
result, err := client.Alpha(nil).Load(map[string]any{"id": "alpha_id"}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `AlphaEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## CapitalEntity

```go
capital := client.Capital(nil)
fmt.Println(capital.GetName()) // "capital"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `alt_spelling` | `[]any` | No |  |
| `area` | `float64` | No |  |
| `border` | `[]any` | No |  |
| `capital` | `[]any` | No |  |
| `capital_info` | `map[string]any` | No |  |
| `car` | `map[string]any` | No |  |
| `cca2` | `string` | No |  |
| `cca3` | `string` | No |  |
| `ccn3` | `string` | No |  |
| `cioc` | `string` | No |  |
| `coat_of_arm` | `map[string]any` | No |  |
| `continent` | `[]any` | No |  |
| `currency` | `map[string]any` | No |  |
| `demonym` | `map[string]any` | No |  |
| `fifa` | `string` | No |  |
| `flag` | `string` | No |  |
| `gini` | `map[string]any` | No |  |
| `idd` | `map[string]any` | No |  |
| `independent` | `bool` | No |  |
| `landlocked` | `bool` | No |  |
| `language` | `map[string]any` | No |  |
| `latlng` | `[]any` | No |  |
| `map` | `map[string]any` | No |  |
| `name` | `map[string]any` | No |  |
| `population` | `int` | No |  |
| `postal_code` | `map[string]any` | No |  |
| `region` | `string` | No |  |
| `start_of_week` | `string` | No |  |
| `status` | `string` | No |  |
| `subregion` | `string` | No |  |
| `timezone` | `[]any` | No |  |
| `tld` | `[]any` | No |  |
| `translation` | `map[string]any` | No |  |
| `un_member` | `bool` | No |  |

### Operations

#### `Load(reqmatch, ctrl map[string]any) (any, error)`

Load a single entity matching the given criteria.

```go
result, err := client.Capital(nil).Load(map[string]any{"id": "capital_id"}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `CapitalEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## NameEntity

```go
name := client.Name(nil)
fmt.Println(name.GetName()) // "name"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `alt_spelling` | `[]any` | No |  |
| `area` | `float64` | No |  |
| `border` | `[]any` | No |  |
| `capital` | `[]any` | No |  |
| `capital_info` | `map[string]any` | No |  |
| `car` | `map[string]any` | No |  |
| `cca2` | `string` | No |  |
| `cca3` | `string` | No |  |
| `ccn3` | `string` | No |  |
| `cioc` | `string` | No |  |
| `coat_of_arm` | `map[string]any` | No |  |
| `continent` | `[]any` | No |  |
| `currency` | `map[string]any` | No |  |
| `demonym` | `map[string]any` | No |  |
| `fifa` | `string` | No |  |
| `flag` | `string` | No |  |
| `gini` | `map[string]any` | No |  |
| `idd` | `map[string]any` | No |  |
| `independent` | `bool` | No |  |
| `landlocked` | `bool` | No |  |
| `language` | `map[string]any` | No |  |
| `latlng` | `[]any` | No |  |
| `map` | `map[string]any` | No |  |
| `name` | `map[string]any` | No |  |
| `population` | `int` | No |  |
| `postal_code` | `map[string]any` | No |  |
| `region` | `string` | No |  |
| `start_of_week` | `string` | No |  |
| `status` | `string` | No |  |
| `subregion` | `string` | No |  |
| `timezone` | `[]any` | No |  |
| `tld` | `[]any` | No |  |
| `translation` | `map[string]any` | No |  |
| `un_member` | `bool` | No |  |

### Operations

#### `Load(reqmatch, ctrl map[string]any) (any, error)`

Load a single entity matching the given criteria.

```go
result, err := client.Name(nil).Load(map[string]any{"id": "name_id"}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `NameEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```go
client := sdk.NewRestCountriesSDK(map[string]any{
    "feature": map[string]any{
        "test": map[string]any{"active": true},
    },
})
```


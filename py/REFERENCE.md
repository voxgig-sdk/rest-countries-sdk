# RestCountries Python SDK Reference

Complete API reference for the RestCountries Python SDK.


## RestCountriesSDK

### Constructor

```python
from rest-countries_sdk import RestCountriesSDK

client = RestCountriesSDK(options)
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `dict` | SDK configuration options. |
| `options["base"]` | `str` | Base URL for API requests. |
| `options["prefix"]` | `str` | URL prefix appended after base. |
| `options["suffix"]` | `str` | URL suffix appended after path. |
| `options["headers"]` | `dict` | Custom headers for all requests. |
| `options["feature"]` | `dict` | Feature configuration. |
| `options["system"]` | `dict` | System overrides (e.g. custom fetch). |


### Static Methods

#### `RestCountriesSDK.test(testopts=None, sdkopts=None)`

Create a test client with mock features active. Both arguments may be `None`.

```python
client = RestCountriesSDK.test()
```


### Instance Methods

#### `All(data=None)`

Create a new `AllEntity` instance. Pass `None` for no initial data.

#### `Alpha(data=None)`

Create a new `AlphaEntity` instance. Pass `None` for no initial data.

#### `Capital(data=None)`

Create a new `CapitalEntity` instance. Pass `None` for no initial data.

#### `Name(data=None)`

Create a new `NameEntity` instance. Pass `None` for no initial data.

#### `options_map() -> dict`

Return a deep copy of the current SDK options.

#### `get_utility() -> Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs=None) -> dict`

Make a direct HTTP request to any API endpoint. Returns a result `dict` with `ok`, `status`, `headers`, and `data` (or `err` on failure). This escape hatch never raises — branch on `result["ok"]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `str` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `str` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `dict` | Path parameter values. |
| `fetchargs["query"]` | `dict` | Query string parameters. |
| `fetchargs["headers"]` | `dict` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `any` | Request body (dicts are JSON-serialized). |

**Returns:** `result_dict`

#### `prepare(fetchargs=None) -> dict`

Prepare a fetch definition without sending. Returns the `fetchdef` and raises on error.


---

## AllEntity

```python
all = client.all
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

#### `list(reqmatch, ctrl=None) -> list`

List entities matching the given criteria. Returns a list and raises on error.

```python
results = client.all.list({})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `AllEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## AlphaEntity

```python
alpha = client.alpha
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

#### `load(reqmatch, ctrl=None) -> dict`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```python
result = client.alpha.load({"id": "alpha_id"})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `AlphaEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## CapitalEntity

```python
capital = client.capital
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

#### `load(reqmatch, ctrl=None) -> dict`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```python
result = client.capital.load({"id": "capital_id"})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `CapitalEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## NameEntity

```python
name = client.name
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

#### `load(reqmatch, ctrl=None) -> dict`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```python
result = client.name.load({"id": "name_id"})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `NameEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```python
client = RestCountriesSDK({
    "feature": {
        "test": {"active": True},
    },
})
```


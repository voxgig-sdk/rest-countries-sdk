# RestCountries Python SDK Reference

Complete API reference for the RestCountries Python SDK.


## RestCountriesSDK

### Constructor

```python
from restcountries_sdk import RestCountriesSDK

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
all = client.All()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `altSpellings` | `list` | No | Alternative country name spellings |
| `area` | `float` | No | Country area in square kilometers |
| `borders` | `list` | No | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | `list` | No | Capital city or cities |
| `capitalInfo` | `dict` | No |  |
| `car` | `dict` | No |  |
| `cca2` | `str` | No | ISO 3166-1 alpha-2 code |
| `cca3` | `str` | No | ISO 3166-1 alpha-3 code |
| `ccn3` | `str` | No | ISO 3166-1 numeric code |
| `cioc` | `str` | No | International Olympic Committee code |
| `coatOfArms` | `dict` | No |  |
| `continents` | `list` | No | Continents |
| `currencies` | `dict` | No |  |
| `demonyms` | `dict` | No |  |
| `fifa` | `str` | No | FIFA country code |
| `flag` | `str` | No | Flag emoji |
| `flags` | `dict` | No |  |
| `gini` | `dict` | No | Gini coefficient |
| `idd` | `dict` | No | International direct dialing |
| `independent` | `bool` | No | Independence status |
| `landlocked` | `bool` | No | Landlocked status |
| `languages` | `dict` | No | Languages spoken |
| `latlng` | `list` | No | Latitude and longitude |
| `maps` | `dict` | No |  |
| `name` | `dict` | No |  |
| `population` | `int` | No | Country population |
| `postalCode` | `dict` | No |  |
| `region` | `str` | No | Geographic region |
| `startOfWeek` | `str` | No | Start of week day |
| `status` | `str` | No | ISO 3166-1 assignment status |
| `subregion` | `str` | No | Geographic subregion |
| `timezones` | `list` | No | Timezones |
| `tld` | `list` | No | Top-level domains |
| `translations` | `dict` | No |  |
| `unMember` | `bool` | No | UN membership status |

### Operations

#### `list(reqmatch=None, ctrl=None) -> list`

List entities matching the given criteria. The match is optional — call `list()` with no argument to list all records. Returns a list and raises on error.

```python
results = client.All().list()
for all in results:
    print(all)
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
alpha = client.Alpha()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `altSpellings` | `list` | No | Alternative country name spellings |
| `area` | `float` | No | Country area in square kilometers |
| `borders` | `list` | No | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | `list` | No | Capital city or cities |
| `capitalInfo` | `dict` | No |  |
| `car` | `dict` | No |  |
| `cca2` | `str` | No | ISO 3166-1 alpha-2 code |
| `cca3` | `str` | No | ISO 3166-1 alpha-3 code |
| `ccn3` | `str` | No | ISO 3166-1 numeric code |
| `cioc` | `str` | No | International Olympic Committee code |
| `coatOfArms` | `dict` | No |  |
| `continents` | `list` | No | Continents |
| `currencies` | `dict` | No |  |
| `demonyms` | `dict` | No |  |
| `fifa` | `str` | No | FIFA country code |
| `flag` | `str` | No | Flag emoji |
| `flags` | `dict` | No |  |
| `gini` | `dict` | No | Gini coefficient |
| `idd` | `dict` | No | International direct dialing |
| `independent` | `bool` | No | Independence status |
| `landlocked` | `bool` | No | Landlocked status |
| `languages` | `dict` | No | Languages spoken |
| `latlng` | `list` | No | Latitude and longitude |
| `maps` | `dict` | No |  |
| `name` | `dict` | No |  |
| `population` | `int` | No | Country population |
| `postalCode` | `dict` | No |  |
| `region` | `str` | No | Geographic region |
| `startOfWeek` | `str` | No | Start of week day |
| `status` | `str` | No | ISO 3166-1 assignment status |
| `subregion` | `str` | No | Geographic subregion |
| `timezones` | `list` | No | Timezones |
| `tld` | `list` | No | Top-level domains |
| `translations` | `dict` | No |  |
| `unMember` | `bool` | No | UN membership status |

### Operations

#### `load(reqmatch, ctrl=None) -> dict`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```python
result = client.Alpha().load({"id": "alpha_id"})
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
capital = client.Capital()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `altSpellings` | `list` | No | Alternative country name spellings |
| `area` | `float` | No | Country area in square kilometers |
| `borders` | `list` | No | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | `list` | No | Capital city or cities |
| `capitalInfo` | `dict` | No |  |
| `car` | `dict` | No |  |
| `cca2` | `str` | No | ISO 3166-1 alpha-2 code |
| `cca3` | `str` | No | ISO 3166-1 alpha-3 code |
| `ccn3` | `str` | No | ISO 3166-1 numeric code |
| `cioc` | `str` | No | International Olympic Committee code |
| `coatOfArms` | `dict` | No |  |
| `continents` | `list` | No | Continents |
| `currencies` | `dict` | No |  |
| `demonyms` | `dict` | No |  |
| `fifa` | `str` | No | FIFA country code |
| `flag` | `str` | No | Flag emoji |
| `flags` | `dict` | No |  |
| `gini` | `dict` | No | Gini coefficient |
| `idd` | `dict` | No | International direct dialing |
| `independent` | `bool` | No | Independence status |
| `landlocked` | `bool` | No | Landlocked status |
| `languages` | `dict` | No | Languages spoken |
| `latlng` | `list` | No | Latitude and longitude |
| `maps` | `dict` | No |  |
| `name` | `dict` | No |  |
| `population` | `int` | No | Country population |
| `postalCode` | `dict` | No |  |
| `region` | `str` | No | Geographic region |
| `startOfWeek` | `str` | No | Start of week day |
| `status` | `str` | No | ISO 3166-1 assignment status |
| `subregion` | `str` | No | Geographic subregion |
| `timezones` | `list` | No | Timezones |
| `tld` | `list` | No | Top-level domains |
| `translations` | `dict` | No |  |
| `unMember` | `bool` | No | UN membership status |

### Operations

#### `load(reqmatch, ctrl=None) -> dict`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```python
result = client.Capital().load({"id": "capital_id"})
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
name = client.Name()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `altSpellings` | `list` | No | Alternative country name spellings |
| `area` | `float` | No | Country area in square kilometers |
| `borders` | `list` | No | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | `list` | No | Capital city or cities |
| `capitalInfo` | `dict` | No |  |
| `car` | `dict` | No |  |
| `cca2` | `str` | No | ISO 3166-1 alpha-2 code |
| `cca3` | `str` | No | ISO 3166-1 alpha-3 code |
| `ccn3` | `str` | No | ISO 3166-1 numeric code |
| `cioc` | `str` | No | International Olympic Committee code |
| `coatOfArms` | `dict` | No |  |
| `continents` | `list` | No | Continents |
| `currencies` | `dict` | No |  |
| `demonyms` | `dict` | No |  |
| `fifa` | `str` | No | FIFA country code |
| `flag` | `str` | No | Flag emoji |
| `flags` | `dict` | No |  |
| `gini` | `dict` | No | Gini coefficient |
| `idd` | `dict` | No | International direct dialing |
| `independent` | `bool` | No | Independence status |
| `landlocked` | `bool` | No | Landlocked status |
| `languages` | `dict` | No | Languages spoken |
| `latlng` | `list` | No | Latitude and longitude |
| `maps` | `dict` | No |  |
| `name` | `dict` | No |  |
| `population` | `int` | No | Country population |
| `postalCode` | `dict` | No |  |
| `region` | `str` | No | Geographic region |
| `startOfWeek` | `str` | No | Start of week day |
| `status` | `str` | No | ISO 3166-1 assignment status |
| `subregion` | `str` | No | Geographic subregion |
| `timezones` | `list` | No | Timezones |
| `tld` | `list` | No | Top-level domains |
| `translations` | `dict` | No |  |
| `unMember` | `bool` | No | UN membership status |

### Operations

#### `load(reqmatch, ctrl=None) -> dict`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```python
result = client.Name().load({"id": "name_id"})
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


# RestCountries Python SDK



The Python SDK for the RestCountries API — an entity-oriented client following Pythonic conventions.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to PyPI. Install it from the GitHub
release tag (`py/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/rest-countries-sdk/releases)) or
from a source checkout:

```bash
pip install -e .
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```python
from restcountries_sdk import RestCountriesSDK

client = RestCountriesSDK()
```

### 2. List alls

```python
try:
    result = client.all.list()
    for item in result:
        d = item.data_get()
        print(d["id"], d["name"])
except Exception as err:
    print(f"list failed: {err}")
```


## How-to guides

### Make a direct HTTP request

For endpoints not covered by entity methods:

```python
result = client.direct({
    "path": "/api/resource/{id}",
    "method": "GET",
    "params": {"id": "example"},
})

if result["ok"]:
    print(result["status"])  # 200
    print(result["data"])    # response body
else:
    print(result["err"])     # error value
```

### Prepare a request without sending it

```python
# prepare() returns the fetch definition and raises on error.
fetchdef = client.prepare({
    "path": "/api/resource/{id}",
    "method": "DELETE",
    "params": {"id": "example"},
})

print(fetchdef["url"])
print(fetchdef["method"])
print(fetchdef["headers"])
```

### Use test mode

Create a mock client for unit testing — no server required:

```python
client = RestCountriesSDK.test()

result = client.all.load({"id": "test01"})
# result contains mock response data
```

### Use a custom fetch function

Replace the HTTP transport with your own function:

```python
def mock_fetch(url, init):
    return {
        "status": 200,
        "statusText": "OK",
        "headers": {},
        "json": lambda: {"id": "mock01"},
    }, None

client = RestCountriesSDK({
    "base": "http://localhost:8080",
    "system": {
        "fetch": mock_fetch,
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
cd py && pytest test/
```


## Reference

### RestCountriesSDK

```python
from restcountries_sdk import RestCountriesSDK

client = RestCountriesSDK(options)
```

Creates a new SDK client.

| Option | Type | Description |
| --- | --- | --- |
| `base` | `str` | Base URL of the API server. |
| `prefix` | `str` | URL path prefix prepended to all requests. |
| `suffix` | `str` | URL path suffix appended to all requests. |
| `feature` | `dict` | Feature activation flags. |
| `extend` | `list` | Additional Feature instances to load. |
| `system` | `dict` | System overrides (e.g. custom `fetch` function). |

### test

```python
client = RestCountriesSDK.test(testopts, sdkopts)
```

Creates a test-mode client with mock transport. Both arguments may be `None`.

### RestCountriesSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `options_map` | `() -> dict` | Deep copy of current SDK options. |
| `get_utility` | `() -> Utility` | Copy of the SDK utility object. |
| `prepare` | `(fetchargs) -> dict` | Build an HTTP request definition without sending. Raises on error. |
| `direct` | `(fetchargs) -> dict` | Build and send an HTTP request. Returns a result dict (branch on `ok`). |
| `All` | `(data) -> AllEntity` | Create a All entity instance. |
| `Alpha` | `(data) -> AlphaEntity` | Create a Alpha entity instance. |
| `Capital` | `(data) -> CapitalEntity` | Create a Capital entity instance. |
| `Name` | `(data) -> NameEntity` | Create a Name entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(reqmatch, ctrl) -> any` | Load a single entity by match criteria. Raises on error. |
| `list` | `(reqmatch, ctrl) -> list` | List entities matching the criteria. Raises on error. |
| `create` | `(reqdata, ctrl) -> any` | Create a new entity. Raises on error. |
| `update` | `(reqdata, ctrl) -> any` | Update an existing entity. Raises on error. |
| `remove` | `(reqmatch, ctrl) -> any` | Remove an entity. Raises on error. |
| `data_get` | `() -> dict` | Get entity data. |
| `data_set` | `(data)` | Set entity data. |
| `match_get` | `() -> dict` | Get entity match criteria. |
| `match_set` | `(match)` | Set entity match criteria. |
| `make` | `() -> Entity` | Create a new instance with the same options. |
| `get_name` | `() -> str` | Return the entity name. |

### Result shape

Entity operations return the bare result data (a `dict` for single-entity
ops, a `list` for `list`) and raise on error. Wrap calls in
`try`/`except` to handle failures.

The `direct()` escape hatch never raises — it returns a result `dict`
you branch on via `result["ok"]`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `bool` | `True` if the HTTP status is 2xx. |
| `status` | `int` | HTTP status code. |
| `headers` | `dict` | Response headers. |
| `data` | `any` | Parsed JSON response body. |

On error, `ok` is `False` and `err` contains the error value.

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

Create an instance: `const all = client.all`

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
const alls = await client.all.list()
```


### Alpha

Create an instance: `const alpha = client.alpha`

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
const alpha = await client.alpha.load({ id: 'alpha_id' })
```


### Capital

Create an instance: `const capital = client.capital`

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
const capital = await client.capital.load({ id: 'capital_id' })
```


### Name

Create an instance: `const name = client.name`

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
const name = await client.name.load({ id: 'name_id' })
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
error is returned to the caller as the second element in the return tuple.

### Features and hooks

Features are the extension mechanism. A feature is a Python class
with hook methods named after pipeline stages (e.g. `PrePoint`,
`PreSpec`). Each method receives the context.

The SDK ships with built-in features:

- **TestFeature**: In-memory mock transport for testing without a live server

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Data as dicts

The Python SDK uses plain dicts throughout rather than typed
objects. This mirrors the dynamic nature of the API and keeps the
SDK flexible — no code generation is needed when the API schema
changes.

Use `helpers.to_map()` to safely validate that a value is a dict.

### Module structure

```
py/
├── restcountries_sdk.py         -- Main SDK module
├── config.py                    -- Configuration
├── features.py                  -- Feature factory
├── core/                        -- Core types and context
├── entity/                      -- Entity implementations
├── feature/                     -- Built-in features (Base, Test, Log)
├── utility/                     -- Utility functions and struct library
└── test/                        -- Test suites
```

The main module (`restcountries_sdk`) exports the SDK class.
Import entity or utility modules directly only when needed.

### Entity state

Entity instances are stateful. After a successful `load`, the entity
stores the returned data and match criteria internally.

```python
all = client.all
all.load({"id": "example_id"})

# all.data_get() now returns the loaded all data
# all.match_get() returns the last match criteria
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

# RestCountries PHP SDK



The PHP SDK for the RestCountries API — an entity-oriented client using PHP conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `$client->All()` — with named operations (`list`/`load`) instead of raw URL paths and query strings. Working with resources and verbs keeps call sites self-describing and reduces cognitive load.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to Packagist. Install it from the
GitHub release tag (`php/vX.Y.Z`):

- Releases: [https://github.com/voxgig-sdk/rest-countries-sdk/releases](https://github.com/voxgig-sdk/rest-countries-sdk/releases)


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```php
<?php
require_once 'restcountries_sdk.php';

$client = new RestCountriesSDK();
```

### 2. List all records

```php
try {
    // list() returns an array of All records — iterate directly.
    $alls = $client->All()->list();
    foreach ($alls as $item) {
        echo $item["altSpellings"] . "\n";
    }
} catch (\Throwable $err) {
    echo "Error: " . $err->getMessage();
}
```


## Error handling

Entity operations throw a `\Throwable` on failure, so wrap them in
`try` / `catch`:

```php
try {
    $alpha = $client->Alpha()->load(["id" => "example_id"]);
} catch (\Throwable $err) {
    echo "Error: " . $err->getMessage();
}
```

`direct()` does **not** throw — it returns the result array. Branch on
`ok`; on failure `status` holds the HTTP status (for error responses) and
`err` holds a transport error, so read both defensively:

```php
$result = $client->direct([
    "path" => "/api/resource/{id}",
    "method" => "GET",
    "params" => ["id" => "example_id"],
]);

if (! $result["ok"]) {
    $err = $result["err"] ?? null;
    echo "request failed: " . ($err ? $err->getMessage() : "HTTP " . $result["status"]);
}
```


## How-to guides

### Make a direct HTTP request

For endpoints not covered by entity methods:

```php
// direct() is the raw-HTTP escape hatch: it returns a result array
// (it does not throw). Branch on $result["ok"].
$result = $client->direct([
    "path" => "/api/resource/{id}",
    "method" => "GET",
    "params" => ["id" => "example"],
]);

if ($result["ok"]) {
    echo $result["status"];  // 200
    print_r($result["data"]);  // response body
} else {
    // On an HTTP error status there is no err (only a transport failure sets
    // it), so fall back to the status code.
    $err = $result["err"] ?? null;
    echo "Error: " . ($err ? $err->getMessage() : "HTTP " . $result["status"]);
}
```

### Prepare a request without sending it

```php
// prepare() throws on error and returns the fetch definition.
$fetchdef = $client->prepare([
    "path" => "/api/resource/{id}",
    "method" => "DELETE",
    "params" => ["id" => "example"],
]);

echo $fetchdef["url"];
echo $fetchdef["method"];
print_r($fetchdef["headers"]);
```

### Use test mode

Create a mock client for unit testing — no server required. Seed fixture
data via the `entity` option so offline calls resolve without a live server:

```php
$client = RestCountriesSDK::test([
    "entity" => ["alpha" => ["test01" => ["id" => "test01"]]],
]);

// Entity ops return the ENTITY (throws on error);
// call data_get() for the mock record.
$alpha = $client->Alpha()->load(["id" => "test01"]);
print_r($alpha);
```

### Use a custom fetch function

Replace the HTTP transport with your own function:

```php
$mock_fetch = function ($url, $init) {
    return [
        [
            "status" => 200,
            "statusText" => "OK",
            "headers" => [],
            "json" => function () { return ["id" => "mock01"]; },
        ],
        null,
    ];
};

$client = new RestCountriesSDK([
    "base" => "http://localhost:8080",
    "system" => [
        "fetch" => $mock_fetch,
    ],
]);
```

### Run live tests

Create a `.env.local` file at the project root:

```
REST_COUNTRIES_TEST_LIVE=TRUE
```

Then run:

```bash
cd php && ./vendor/bin/phpunit test/
```


## Reference

### RestCountriesSDK

```php
require_once 'restcountries_sdk.php';
$client = new RestCountriesSDK($options);
```

Creates a new SDK client.

| Option | Type | Description |
| --- | --- | --- |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `array` | Feature activation flags. |
| `extend` | `array` | Additional Feature instances to load. |
| `system` | `array` | System overrides (e.g. custom `fetch` callable). |

### test

```php
$client = RestCountriesSDK::test($testopts, $sdkopts);
```

Creates a test-mode client with mock transport. Both arguments may be `null`.

### RestCountriesSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `options_map` | `(): array` | Deep copy of current SDK options. |
| `get_utility` | `(): Utility` | Copy of the SDK utility object. |
| `prepare` | `(array $fetchargs): array` | Build an HTTP request definition without sending. |
| `direct` | `(array $fetchargs): array` | Build and send an HTTP request. |
| `All` | `($data): AllEntity` | Create an All entity instance. |
| `Alpha` | `($data): AlphaEntity` | Create an Alpha entity instance. |
| `Capital` | `($data): CapitalEntity` | Create a Capital entity instance. |
| `Name` | `($data): NameEntity` | Create a Name entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `($reqmatch, $ctrl): array` | Load a single entity by match criteria. |
| `list` | `(?array $reqmatch = null, $ctrl): array` | List entities matching the criteria (call with no argument to list all). |
| `data_get` | `(): array` | Get entity data. |
| `data_set` | `($data): void` | Set entity data. |
| `match_get` | `(): array` | Get entity match criteria. |
| `match_set` | `($match): void` | Set entity match criteria. |
| `make` | `(): Entity` | Create a new instance with the same options. |
| `get_name` | `(): string` | Return the entity name. |

### Result shape

Entity operations return the ENTITY (call data_get() for the record) (an `array` for single-entity
ops, a `list` for `list`) and throw on error. Wrap calls in
`try`/`catch` to handle failures.

The `direct()` escape hatch never throws — it returns a result `array`
you branch on via `$result["ok"]`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `bool` | `true` if the HTTP status is 2xx. |
| `status` | `int` | HTTP status code. |
| `headers` | `array` | Response headers. |
| `data` | `mixed` | Parsed JSON response body. |

On error, `ok` is `false` and `$err` contains the error value.

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

Create an instance: `$all = $client->All();`

#### Operations

| Method | Description |
| --- | --- |
| `list(match)` | List entities matching the criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `altSpellings` | `array` | Alternative country name spellings |
| `area` | `float` | Country area in square kilometers |
| `borders` | `array` | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | `array` | Capital city or cities |
| `capitalInfo` | `array` |  |
| `car` | `array` |  |
| `cca2` | `string` | ISO 3166-1 alpha-2 code |
| `cca3` | `string` | ISO 3166-1 alpha-3 code |
| `ccn3` | `string` | ISO 3166-1 numeric code |
| `cioc` | `string` | International Olympic Committee code |
| `coatOfArms` | `array` |  |
| `continents` | `array` | Continents |
| `currencies` | `array` |  |
| `demonyms` | `array` |  |
| `fifa` | `string` | FIFA country code |
| `flag` | `string` | Flag emoji |
| `flags` | `array` |  |
| `gini` | `array` | Gini coefficient |
| `idd` | `array` | International direct dialing |
| `independent` | `bool` | Independence status |
| `landlocked` | `bool` | Landlocked status |
| `languages` | `array` | Languages spoken |
| `latlng` | `array` | Latitude and longitude |
| `maps` | `array` |  |
| `name` | `array` |  |
| `population` | `int` | Country population |
| `postalCode` | `array` |  |
| `region` | `string` | Geographic region |
| `startOfWeek` | `string` | Start of week day |
| `status` | `string` | ISO 3166-1 assignment status |
| `subregion` | `string` | Geographic subregion |
| `timezones` | `array` | Timezones |
| `tld` | `array` | Top-level domains |
| `translations` | `array` |  |
| `unMember` | `bool` | UN membership status |

#### Example: List

```php
// list() returns an array of All records (throws on error).
$alls = $client->All()->list();
```


### Alpha

Create an instance: `$alpha = $client->Alpha();`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `altSpellings` | `array` | Alternative country name spellings |
| `area` | `float` | Country area in square kilometers |
| `borders` | `array` | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | `array` | Capital city or cities |
| `capitalInfo` | `array` |  |
| `car` | `array` |  |
| `cca2` | `string` | ISO 3166-1 alpha-2 code |
| `cca3` | `string` | ISO 3166-1 alpha-3 code |
| `ccn3` | `string` | ISO 3166-1 numeric code |
| `cioc` | `string` | International Olympic Committee code |
| `coatOfArms` | `array` |  |
| `continents` | `array` | Continents |
| `currencies` | `array` |  |
| `demonyms` | `array` |  |
| `fifa` | `string` | FIFA country code |
| `flag` | `string` | Flag emoji |
| `flags` | `array` |  |
| `gini` | `array` | Gini coefficient |
| `idd` | `array` | International direct dialing |
| `independent` | `bool` | Independence status |
| `landlocked` | `bool` | Landlocked status |
| `languages` | `array` | Languages spoken |
| `latlng` | `array` | Latitude and longitude |
| `maps` | `array` |  |
| `name` | `array` |  |
| `population` | `int` | Country population |
| `postalCode` | `array` |  |
| `region` | `string` | Geographic region |
| `startOfWeek` | `string` | Start of week day |
| `status` | `string` | ISO 3166-1 assignment status |
| `subregion` | `string` | Geographic subregion |
| `timezones` | `array` | Timezones |
| `tld` | `array` | Top-level domains |
| `translations` | `array` |  |
| `unMember` | `bool` | UN membership status |

#### Example: Load

```php
// load() returns the ENTITY — call data_get() for the Alpha record (throws on error).
$alpha = $client->Alpha()->load(["id" => "alpha_id"]);
```


### Capital

Create an instance: `$capital = $client->Capital();`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `altSpellings` | `array` | Alternative country name spellings |
| `area` | `float` | Country area in square kilometers |
| `borders` | `array` | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | `array` | Capital city or cities |
| `capitalInfo` | `array` |  |
| `car` | `array` |  |
| `cca2` | `string` | ISO 3166-1 alpha-2 code |
| `cca3` | `string` | ISO 3166-1 alpha-3 code |
| `ccn3` | `string` | ISO 3166-1 numeric code |
| `cioc` | `string` | International Olympic Committee code |
| `coatOfArms` | `array` |  |
| `continents` | `array` | Continents |
| `currencies` | `array` |  |
| `demonyms` | `array` |  |
| `fifa` | `string` | FIFA country code |
| `flag` | `string` | Flag emoji |
| `flags` | `array` |  |
| `gini` | `array` | Gini coefficient |
| `idd` | `array` | International direct dialing |
| `independent` | `bool` | Independence status |
| `landlocked` | `bool` | Landlocked status |
| `languages` | `array` | Languages spoken |
| `latlng` | `array` | Latitude and longitude |
| `maps` | `array` |  |
| `name` | `array` |  |
| `population` | `int` | Country population |
| `postalCode` | `array` |  |
| `region` | `string` | Geographic region |
| `startOfWeek` | `string` | Start of week day |
| `status` | `string` | ISO 3166-1 assignment status |
| `subregion` | `string` | Geographic subregion |
| `timezones` | `array` | Timezones |
| `tld` | `array` | Top-level domains |
| `translations` | `array` |  |
| `unMember` | `bool` | UN membership status |

#### Example: Load

```php
// load() returns the ENTITY — call data_get() for the Capital record (throws on error).
$capital = $client->Capital()->load(["id" => "capital_id"]);
```


### Name

Create an instance: `$name = $client->Name();`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `altSpellings` | `array` | Alternative country name spellings |
| `area` | `float` | Country area in square kilometers |
| `borders` | `array` | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | `array` | Capital city or cities |
| `capitalInfo` | `array` |  |
| `car` | `array` |  |
| `cca2` | `string` | ISO 3166-1 alpha-2 code |
| `cca3` | `string` | ISO 3166-1 alpha-3 code |
| `ccn3` | `string` | ISO 3166-1 numeric code |
| `cioc` | `string` | International Olympic Committee code |
| `coatOfArms` | `array` |  |
| `continents` | `array` | Continents |
| `currencies` | `array` |  |
| `demonyms` | `array` |  |
| `fifa` | `string` | FIFA country code |
| `flag` | `string` | Flag emoji |
| `flags` | `array` |  |
| `gini` | `array` | Gini coefficient |
| `idd` | `array` | International direct dialing |
| `independent` | `bool` | Independence status |
| `landlocked` | `bool` | Landlocked status |
| `languages` | `array` | Languages spoken |
| `latlng` | `array` | Latitude and longitude |
| `maps` | `array` |  |
| `name` | `array` |  |
| `population` | `int` | Country population |
| `postalCode` | `array` |  |
| `region` | `string` | Geographic region |
| `startOfWeek` | `string` | Start of week day |
| `status` | `string` | ISO 3166-1 assignment status |
| `subregion` | `string` | Geographic subregion |
| `timezones` | `array` | Timezones |
| `tld` | `array` | Top-level domains |
| `translations` | `array` |  |
| `unMember` | `bool` | UN membership status |

#### Example: Load

```php
// load() returns the ENTITY — call data_get() for the Name record (throws on error).
$name = $client->Name()->load(["id" => "name_id"]);
```


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

Features are the extension mechanism. A feature is a PHP class
with hook methods named after pipeline stages (e.g. `PrePoint`,
`PreSpec`). Each method receives the context.

The SDK ships with built-in features:

- **TestFeature**: In-memory mock transport for testing without a live server

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Data as arrays

The PHP SDK uses plain PHP associative arrays throughout rather than typed
objects. This mirrors the dynamic nature of the API and keeps the
SDK flexible — no code generation is needed when the API schema
changes.

Use `Helpers::to_map()` to safely validate that a value is an array.

### Directory structure

```
php/
├── restcountries_sdk.php          -- Main SDK class
├── config.php                     -- Configuration
├── features.php                   -- Feature factory
├── core/                          -- Core types and context
├── entity/                        -- Entity implementations
├── feature/                       -- Built-in features (Base, Test, Log)
├── utility/                       -- Utility functions and struct library
└── test/                          -- Test suites
```

The main class (`restcountries_sdk.php`) exports the SDK class
and test helper. Import entity or utility modules directly only
when needed.

### Entity state

Entity instances are stateful. After a successful `load`, the entity
stores the returned data and match criteria internally.

```php
$alpha = $client->Alpha();
$alpha->load(["id" => "example_id"]);

// $alpha->data_get() now returns the alpha data from the last load
// $alpha->match_get() returns the last match criteria
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

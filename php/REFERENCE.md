# RestCountries PHP SDK Reference

Complete API reference for the RestCountries PHP SDK.


## RestCountriesSDK

### Constructor

```php
require_once __DIR__ . '/restcountries_sdk.php';

$client = new RestCountriesSDK($options);
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `$options` | `array` | SDK configuration options. |
| `$options["base"]` | `string` | Base URL for API requests. |
| `$options["prefix"]` | `string` | URL prefix appended after base. |
| `$options["suffix"]` | `string` | URL suffix appended after path. |
| `$options["headers"]` | `array` | Custom headers for all requests. |
| `$options["feature"]` | `array` | Feature configuration. |
| `$options["system"]` | `array` | System overrides (e.g. custom fetch). |


### Static Methods

#### `RestCountriesSDK::test($testopts = null, $sdkopts = null)`

Create a test client with mock features active. Both arguments may be `null`.

```php
$client = RestCountriesSDK::test();
```


### Instance Methods

#### `All($data = null)`

Create a new `AllEntity` instance. Pass `null` for no initial data.

#### `Alpha($data = null)`

Create a new `AlphaEntity` instance. Pass `null` for no initial data.

#### `Capital($data = null)`

Create a new `CapitalEntity` instance. Pass `null` for no initial data.

#### `Name($data = null)`

Create a new `NameEntity` instance. Pass `null` for no initial data.

#### `options_map(): array`

Return a deep copy of the current SDK options.

#### `get_utility(): RestCountriesUtility`

Return a copy of the SDK utility object.

#### `direct(array $fetchargs = []): array`

Make a direct HTTP request to any API endpoint. This is the raw-HTTP escape
hatch: it does **not** throw. It returns a result array
`["ok" => bool, "status" => int, "headers" => array, "data" => mixed]`, or
`["ok" => false, "err" => \Exception]` on failure. Branch on `$result["ok"]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `$fetchargs["path"]` | `string` | URL path with optional `{param}` placeholders. |
| `$fetchargs["method"]` | `string` | HTTP method (default: `"GET"`). |
| `$fetchargs["params"]` | `array` | Path parameter values for `{param}` substitution. |
| `$fetchargs["query"]` | `array` | Query string parameters. |
| `$fetchargs["headers"]` | `array` | Request headers (merged with defaults). |
| `$fetchargs["body"]` | `mixed` | Request body (arrays are JSON-serialized). |
| `$fetchargs["ctrl"]` | `array` | Control options. |

**Returns:** `array` — the result dict (see above); never throws.

#### `prepare(array $fetchargs = []): mixed`

Prepare a fetch definition without sending the request. Returns the
`$fetchdef` array. Throws on error.


---

## AllEntity

```php
$all = $client->All();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `altSpellings` | `array` | No | Alternative country name spellings |
| `area` | `float` | No | Country area in square kilometers |
| `borders` | `array` | No | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | `array` | No | Capital city or cities |
| `capitalInfo` | `array` | No |  |
| `car` | `array` | No |  |
| `cca2` | `string` | No | ISO 3166-1 alpha-2 code |
| `cca3` | `string` | No | ISO 3166-1 alpha-3 code |
| `ccn3` | `string` | No | ISO 3166-1 numeric code |
| `cioc` | `string` | No | International Olympic Committee code |
| `coatOfArms` | `array` | No |  |
| `continents` | `array` | No | Continents |
| `currencies` | `array` | No |  |
| `demonyms` | `array` | No |  |
| `fifa` | `string` | No | FIFA country code |
| `flag` | `string` | No | Flag emoji |
| `flags` | `array` | No |  |
| `gini` | `array` | No | Gini coefficient |
| `idd` | `array` | No | International direct dialing |
| `independent` | `bool` | No | Independence status |
| `landlocked` | `bool` | No | Landlocked status |
| `languages` | `array` | No | Languages spoken |
| `latlng` | `array` | No | Latitude and longitude |
| `maps` | `array` | No |  |
| `name` | `array` | No |  |
| `population` | `int` | No | Country population |
| `postalCode` | `array` | No |  |
| `region` | `string` | No | Geographic region |
| `startOfWeek` | `string` | No | Start of week day |
| `status` | `string` | No | ISO 3166-1 assignment status |
| `subregion` | `string` | No | Geographic subregion |
| `timezones` | `array` | No | Timezones |
| `tld` | `array` | No | Top-level domains |
| `translations` | `array` | No |  |
| `unMember` | `bool` | No | UN membership status |

### Operations

#### `list(?array $reqmatch = null, ?array $ctrl = null): mixed`

List entities matching the given criteria (call with no argument to list all). Returns an array. Throws on error.

```php
$results = $client->All()->list();
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): AllEntity`

Create a new `AllEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## AlphaEntity

```php
$alpha = $client->Alpha();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `altSpellings` | `array` | No | Alternative country name spellings |
| `area` | `float` | No | Country area in square kilometers |
| `borders` | `array` | No | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | `array` | No | Capital city or cities |
| `capitalInfo` | `array` | No |  |
| `car` | `array` | No |  |
| `cca2` | `string` | No | ISO 3166-1 alpha-2 code |
| `cca3` | `string` | No | ISO 3166-1 alpha-3 code |
| `ccn3` | `string` | No | ISO 3166-1 numeric code |
| `cioc` | `string` | No | International Olympic Committee code |
| `coatOfArms` | `array` | No |  |
| `continents` | `array` | No | Continents |
| `currencies` | `array` | No |  |
| `demonyms` | `array` | No |  |
| `fifa` | `string` | No | FIFA country code |
| `flag` | `string` | No | Flag emoji |
| `flags` | `array` | No |  |
| `gini` | `array` | No | Gini coefficient |
| `id` | `string` | No |  |
| `idd` | `array` | No | International direct dialing |
| `independent` | `bool` | No | Independence status |
| `landlocked` | `bool` | No | Landlocked status |
| `languages` | `array` | No | Languages spoken |
| `latlng` | `array` | No | Latitude and longitude |
| `maps` | `array` | No |  |
| `name` | `array` | No |  |
| `population` | `int` | No | Country population |
| `postalCode` | `array` | No |  |
| `region` | `string` | No | Geographic region |
| `startOfWeek` | `string` | No | Start of week day |
| `status` | `string` | No | ISO 3166-1 assignment status |
| `subregion` | `string` | No | Geographic subregion |
| `timezones` | `array` | No | Timezones |
| `tld` | `array` | No | Top-level domains |
| `translations` | `array` | No |  |
| `unMember` | `bool` | No | UN membership status |

### Operations

#### `load(array $reqmatch, ?array $ctrl = null): mixed`

Load a single entity matching the given criteria. Throws on error.

```php
$result = $client->Alpha()->load(["id" => "alpha_id"]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): AlphaEntity`

Create a new `AlphaEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## CapitalEntity

```php
$capital = $client->Capital();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `altSpellings` | `array` | No | Alternative country name spellings |
| `area` | `float` | No | Country area in square kilometers |
| `borders` | `array` | No | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | `array` | No | Capital city or cities |
| `capitalInfo` | `array` | No |  |
| `car` | `array` | No |  |
| `cca2` | `string` | No | ISO 3166-1 alpha-2 code |
| `cca3` | `string` | No | ISO 3166-1 alpha-3 code |
| `ccn3` | `string` | No | ISO 3166-1 numeric code |
| `cioc` | `string` | No | International Olympic Committee code |
| `coatOfArms` | `array` | No |  |
| `continents` | `array` | No | Continents |
| `currencies` | `array` | No |  |
| `demonyms` | `array` | No |  |
| `fifa` | `string` | No | FIFA country code |
| `flag` | `string` | No | Flag emoji |
| `flags` | `array` | No |  |
| `gini` | `array` | No | Gini coefficient |
| `id` | `string` | No |  |
| `idd` | `array` | No | International direct dialing |
| `independent` | `bool` | No | Independence status |
| `landlocked` | `bool` | No | Landlocked status |
| `languages` | `array` | No | Languages spoken |
| `latlng` | `array` | No | Latitude and longitude |
| `maps` | `array` | No |  |
| `name` | `array` | No |  |
| `population` | `int` | No | Country population |
| `postalCode` | `array` | No |  |
| `region` | `string` | No | Geographic region |
| `startOfWeek` | `string` | No | Start of week day |
| `status` | `string` | No | ISO 3166-1 assignment status |
| `subregion` | `string` | No | Geographic subregion |
| `timezones` | `array` | No | Timezones |
| `tld` | `array` | No | Top-level domains |
| `translations` | `array` | No |  |
| `unMember` | `bool` | No | UN membership status |

### Operations

#### `load(array $reqmatch, ?array $ctrl = null): mixed`

Load a single entity matching the given criteria. Throws on error.

```php
$result = $client->Capital()->load(["id" => "capital_id"]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): CapitalEntity`

Create a new `CapitalEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## NameEntity

```php
$name = $client->Name();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `altSpellings` | `array` | No | Alternative country name spellings |
| `area` | `float` | No | Country area in square kilometers |
| `borders` | `array` | No | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | `array` | No | Capital city or cities |
| `capitalInfo` | `array` | No |  |
| `car` | `array` | No |  |
| `cca2` | `string` | No | ISO 3166-1 alpha-2 code |
| `cca3` | `string` | No | ISO 3166-1 alpha-3 code |
| `ccn3` | `string` | No | ISO 3166-1 numeric code |
| `cioc` | `string` | No | International Olympic Committee code |
| `coatOfArms` | `array` | No |  |
| `continents` | `array` | No | Continents |
| `currencies` | `array` | No |  |
| `demonyms` | `array` | No |  |
| `fifa` | `string` | No | FIFA country code |
| `flag` | `string` | No | Flag emoji |
| `flags` | `array` | No |  |
| `gini` | `array` | No | Gini coefficient |
| `id` | `string` | No |  |
| `idd` | `array` | No | International direct dialing |
| `independent` | `bool` | No | Independence status |
| `landlocked` | `bool` | No | Landlocked status |
| `languages` | `array` | No | Languages spoken |
| `latlng` | `array` | No | Latitude and longitude |
| `maps` | `array` | No |  |
| `name` | `array` | No |  |
| `population` | `int` | No | Country population |
| `postalCode` | `array` | No |  |
| `region` | `string` | No | Geographic region |
| `startOfWeek` | `string` | No | Start of week day |
| `status` | `string` | No | ISO 3166-1 assignment status |
| `subregion` | `string` | No | Geographic subregion |
| `timezones` | `array` | No | Timezones |
| `tld` | `array` | No | Top-level domains |
| `translations` | `array` | No |  |
| `unMember` | `bool` | No | UN membership status |

### Operations

#### `load(array $reqmatch, ?array $ctrl = null): mixed`

Load a single entity matching the given criteria. Throws on error.

```php
$result = $client->Name()->load(["id" => "name_id"]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): NameEntity`

Create a new `NameEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```php
$client = new RestCountriesSDK([
  "feature" => [
    "test" => ["active" => true],
  ],
]);
```


### Configuring features

Each feature is inactive until switched on, and an SDK with no feature
configured does no feature work at all. Every option below keeps its default
unless you name it.

The array form of \`feature\` is significant: several features wrap the
transport, and the order you list them in is the order they nest.

#### `test`

In-memory mock transport for testing without a live server.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.test.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Installs the BASE transport that the wrapping features wrap, so it must be
  activated before them.
- Inactive by default: leaving it out costs nothing at runtime.


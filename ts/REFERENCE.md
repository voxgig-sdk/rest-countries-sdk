# RestCountries TypeScript SDK Reference

Complete API reference for the RestCountries TypeScript SDK.


## RestCountriesSDK

### Constructor

```ts
new RestCountriesSDK(options?: object)
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `object` | SDK configuration options. |
| `options.base` | `string` | Base URL for API requests. |
| `options.prefix` | `string` | URL prefix appended after base. |
| `options.suffix` | `string` | URL suffix appended after path. |
| `options.headers` | `object` | Custom headers for all requests. |
| `options.feature` | `object` | Feature configuration. |
| `options.system` | `object` | System overrides (e.g. custom fetch). |


### Static Methods

#### `RestCountriesSDK.test(testopts?, sdkopts?)`

Create a test client with mock features active.

```ts
const client = RestCountriesSDK.test()
```

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `testopts` | `object` | Test feature options. |
| `sdkopts` | `object` | Additional SDK options merged with test defaults. |

**Returns:** `RestCountriesSDK` instance in test mode.


### Instance Methods

#### `All(data?: object)`

Create a new `All` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `AllEntity` instance.

#### `Alpha(data?: object)`

Create a new `Alpha` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `AlphaEntity` instance.

#### `Capital(data?: object)`

Create a new `Capital` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `CapitalEntity` instance.

#### `Name(data?: object)`

Create a new `Name` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `NameEntity` instance.

#### `options()`

Return a deep copy of the current SDK options.

**Returns:** `object`

#### `utility()`

Return a copy of the SDK utility object.

**Returns:** `object`

#### `direct(fetchargs?: object)`

Make a direct HTTP request to any API endpoint.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs.path` | `string` | URL path with optional `{param}` placeholders. |
| `fetchargs.method` | `string` | HTTP method (default: `GET`). |
| `fetchargs.params` | `object` | Path parameter values for `{param}` substitution. |
| `fetchargs.query` | `object` | Query string parameters. |
| `fetchargs.headers` | `object` | Request headers (merged with defaults). |
| `fetchargs.body` | `any` | Request body (objects are JSON-serialized). |
| `fetchargs.ctrl` | `object` | Control options (e.g. `{ explain: true }`). |

**Returns:** `Promise<{ ok, status, headers, data } | Error>`

#### `prepare(fetchargs?: object)`

Prepare a fetch definition without sending the request. Accepts the
same parameters as `direct()`.

**Returns:** `Promise<{ url, method, headers, body } | Error>`

#### `tester(testopts?, sdkopts?)`

Alias for `RestCountriesSDK.test()`.

**Returns:** `RestCountriesSDK` instance in test mode.


---

## AllEntity

```ts
const all = client.All()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `altSpellings` | `any[]` | No | Alternative country name spellings |
| `area` | `number` | No | Country area in square kilometers |
| `borders` | `any[]` | No | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | `any[]` | No | Capital city or cities |
| `capitalInfo` | `Record<string, any>` | No |  |
| `car` | `Record<string, any>` | No |  |
| `cca2` | `string` | No | ISO 3166-1 alpha-2 code |
| `cca3` | `string` | No | ISO 3166-1 alpha-3 code |
| `ccn3` | `string` | No | ISO 3166-1 numeric code |
| `cioc` | `string` | No | International Olympic Committee code |
| `coatOfArms` | `Record<string, any>` | No |  |
| `continents` | `any[]` | No | Continents |
| `currencies` | `Record<string, any>` | No |  |
| `demonyms` | `Record<string, any>` | No |  |
| `fifa` | `string` | No | FIFA country code |
| `flag` | `string` | No | Flag emoji |
| `flags` | `Record<string, any>` | No |  |
| `gini` | `Record<string, any>` | No | Gini coefficient |
| `idd` | `Record<string, any>` | No | International direct dialing |
| `independent` | `boolean` | No | Independence status |
| `landlocked` | `boolean` | No | Landlocked status |
| `languages` | `Record<string, any>` | No | Languages spoken |
| `latlng` | `any[]` | No | Latitude and longitude |
| `maps` | `Record<string, any>` | No |  |
| `name` | `Record<string, any>` | No |  |
| `population` | `number` | No | Country population |
| `postalCode` | `Record<string, any>` | No |  |
| `region` | `string` | No | Geographic region |
| `startOfWeek` | `string` | No | Start of week day |
| `status` | `string` | No | ISO 3166-1 assignment status |
| `subregion` | `string` | No | Geographic subregion |
| `timezones` | `any[]` | No | Timezones |
| `tld` | `any[]` | No | Top-level domains |
| `translations` | `Record<string, any>` | No |  |
| `unMember` | `boolean` | No | UN membership status |

### Operations

#### `list(match: object, ctrl?: object)`

List entities matching the given criteria. Returns an array.

```ts
const results = await client.All().list()
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `AllEntity` instance with the same client and
options.

#### `client()`

Return the parent `RestCountriesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## AlphaEntity

```ts
const alpha = client.Alpha()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `altSpellings` | `any[]` | No | Alternative country name spellings |
| `area` | `number` | No | Country area in square kilometers |
| `borders` | `any[]` | No | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | `any[]` | No | Capital city or cities |
| `capitalInfo` | `Record<string, any>` | No |  |
| `car` | `Record<string, any>` | No |  |
| `cca2` | `string` | No | ISO 3166-1 alpha-2 code |
| `cca3` | `string` | No | ISO 3166-1 alpha-3 code |
| `ccn3` | `string` | No | ISO 3166-1 numeric code |
| `cioc` | `string` | No | International Olympic Committee code |
| `coatOfArms` | `Record<string, any>` | No |  |
| `continents` | `any[]` | No | Continents |
| `currencies` | `Record<string, any>` | No |  |
| `demonyms` | `Record<string, any>` | No |  |
| `fifa` | `string` | No | FIFA country code |
| `flag` | `string` | No | Flag emoji |
| `flags` | `Record<string, any>` | No |  |
| `gini` | `Record<string, any>` | No | Gini coefficient |
| `id` | `string` | No |  |
| `idd` | `Record<string, any>` | No | International direct dialing |
| `independent` | `boolean` | No | Independence status |
| `landlocked` | `boolean` | No | Landlocked status |
| `languages` | `Record<string, any>` | No | Languages spoken |
| `latlng` | `any[]` | No | Latitude and longitude |
| `maps` | `Record<string, any>` | No |  |
| `name` | `Record<string, any>` | No |  |
| `population` | `number` | No | Country population |
| `postalCode` | `Record<string, any>` | No |  |
| `region` | `string` | No | Geographic region |
| `startOfWeek` | `string` | No | Start of week day |
| `status` | `string` | No | ISO 3166-1 assignment status |
| `subregion` | `string` | No | Geographic subregion |
| `timezones` | `any[]` | No | Timezones |
| `tld` | `any[]` | No | Top-level domains |
| `translations` | `Record<string, any>` | No |  |
| `unMember` | `boolean` | No | UN membership status |

### Operations

#### `load(match: object, ctrl?: object)`

Load a single entity matching the given criteria.

```ts
const result = await client.Alpha().load({ id: 'alpha_id' })
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `AlphaEntity` instance with the same client and
options.

#### `client()`

Return the parent `RestCountriesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## CapitalEntity

```ts
const capital = client.Capital()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `altSpellings` | `any[]` | No | Alternative country name spellings |
| `area` | `number` | No | Country area in square kilometers |
| `borders` | `any[]` | No | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | `any[]` | No | Capital city or cities |
| `capitalInfo` | `Record<string, any>` | No |  |
| `car` | `Record<string, any>` | No |  |
| `cca2` | `string` | No | ISO 3166-1 alpha-2 code |
| `cca3` | `string` | No | ISO 3166-1 alpha-3 code |
| `ccn3` | `string` | No | ISO 3166-1 numeric code |
| `cioc` | `string` | No | International Olympic Committee code |
| `coatOfArms` | `Record<string, any>` | No |  |
| `continents` | `any[]` | No | Continents |
| `currencies` | `Record<string, any>` | No |  |
| `demonyms` | `Record<string, any>` | No |  |
| `fifa` | `string` | No | FIFA country code |
| `flag` | `string` | No | Flag emoji |
| `flags` | `Record<string, any>` | No |  |
| `gini` | `Record<string, any>` | No | Gini coefficient |
| `id` | `string` | No |  |
| `idd` | `Record<string, any>` | No | International direct dialing |
| `independent` | `boolean` | No | Independence status |
| `landlocked` | `boolean` | No | Landlocked status |
| `languages` | `Record<string, any>` | No | Languages spoken |
| `latlng` | `any[]` | No | Latitude and longitude |
| `maps` | `Record<string, any>` | No |  |
| `name` | `Record<string, any>` | No |  |
| `population` | `number` | No | Country population |
| `postalCode` | `Record<string, any>` | No |  |
| `region` | `string` | No | Geographic region |
| `startOfWeek` | `string` | No | Start of week day |
| `status` | `string` | No | ISO 3166-1 assignment status |
| `subregion` | `string` | No | Geographic subregion |
| `timezones` | `any[]` | No | Timezones |
| `tld` | `any[]` | No | Top-level domains |
| `translations` | `Record<string, any>` | No |  |
| `unMember` | `boolean` | No | UN membership status |

### Operations

#### `load(match: object, ctrl?: object)`

Load a single entity matching the given criteria.

```ts
const result = await client.Capital().load({ id: 'capital_id' })
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `CapitalEntity` instance with the same client and
options.

#### `client()`

Return the parent `RestCountriesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## NameEntity

```ts
const name = client.Name()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `altSpellings` | `any[]` | No | Alternative country name spellings |
| `area` | `number` | No | Country area in square kilometers |
| `borders` | `any[]` | No | Border countries (ISO 3166-1 alpha-3 codes) |
| `capital` | `any[]` | No | Capital city or cities |
| `capitalInfo` | `Record<string, any>` | No |  |
| `car` | `Record<string, any>` | No |  |
| `cca2` | `string` | No | ISO 3166-1 alpha-2 code |
| `cca3` | `string` | No | ISO 3166-1 alpha-3 code |
| `ccn3` | `string` | No | ISO 3166-1 numeric code |
| `cioc` | `string` | No | International Olympic Committee code |
| `coatOfArms` | `Record<string, any>` | No |  |
| `continents` | `any[]` | No | Continents |
| `currencies` | `Record<string, any>` | No |  |
| `demonyms` | `Record<string, any>` | No |  |
| `fifa` | `string` | No | FIFA country code |
| `flag` | `string` | No | Flag emoji |
| `flags` | `Record<string, any>` | No |  |
| `gini` | `Record<string, any>` | No | Gini coefficient |
| `id` | `string` | No |  |
| `idd` | `Record<string, any>` | No | International direct dialing |
| `independent` | `boolean` | No | Independence status |
| `landlocked` | `boolean` | No | Landlocked status |
| `languages` | `Record<string, any>` | No | Languages spoken |
| `latlng` | `any[]` | No | Latitude and longitude |
| `maps` | `Record<string, any>` | No |  |
| `name` | `Record<string, any>` | No |  |
| `population` | `number` | No | Country population |
| `postalCode` | `Record<string, any>` | No |  |
| `region` | `string` | No | Geographic region |
| `startOfWeek` | `string` | No | Start of week day |
| `status` | `string` | No | ISO 3166-1 assignment status |
| `subregion` | `string` | No | Geographic subregion |
| `timezones` | `any[]` | No | Timezones |
| `tld` | `any[]` | No | Top-level domains |
| `translations` | `Record<string, any>` | No |  |
| `unMember` | `boolean` | No | UN membership status |

### Operations

#### `load(match: object, ctrl?: object)`

Load a single entity matching the given criteria.

```ts
const result = await client.Name().load({ id: 'name_id' })
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `NameEntity` instance with the same client and
options.

#### `client()`

Return the parent `RestCountriesSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```ts
const client = new RestCountriesSDK({
  feature: {
    test: { active: true },
  }
})
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


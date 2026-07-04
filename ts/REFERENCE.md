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
const all = client.all
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

#### `list(match: object, ctrl?: object)`

List entities matching the given criteria. Returns an array.

```ts
const results = await client.all.list()
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
const alpha = client.alpha
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

#### `load(match: object, ctrl?: object)`

Load a single entity matching the given criteria.

```ts
const result = await client.alpha.load({ id: 'alpha_id' })
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
const capital = client.capital
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

#### `load(match: object, ctrl?: object)`

Load a single entity matching the given criteria.

```ts
const result = await client.capital.load({ id: 'capital_id' })
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
const name = client.name
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

#### `load(match: object, ctrl?: object)`

Load a single entity matching the given criteria.

```ts
const result = await client.name.load({ id: 'name_id' })
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


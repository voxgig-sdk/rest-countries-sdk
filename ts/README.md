# RestCountries TypeScript SDK



The TypeScript SDK for the RestCountries API — a type-safe, entity-oriented client with full async/await support.

The API is exposed as capitalised, semantic **Entities** — e.g.
`client.All()` — each with a small set of operations (`list`, `load`)
instead of raw URL paths and query parameters. This keeps the surface
predictable and low-friction for both humans and AI agents.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to npm. Install it from the GitHub
release tag (`ts/vX.Y.Z`):

- Releases: [https://github.com/voxgig-sdk/rest-countries-sdk/releases](https://github.com/voxgig-sdk/rest-countries-sdk/releases)


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```ts
import { RestCountriesSDK } from '@voxgig-sdk/rest-countries'

const client = new RestCountriesSDK()
```

### 2. List all records

`list()` resolves to an array of All ENTITIES — every operation
resolves to entities, not raw records. Iterate them directly, and call
`.data()` on one for the record it holds:

```ts
const alls = await client.All().list()

for (const all of alls) {
  console.log(all)
}
```


## Error handling

Entity operations reject on failure, so wrap them in `try` / `catch`:

```ts
try {
  const alpha = await client.Alpha().load({ id: "example_id" })
  console.log(alpha)
} catch (err) {
  console.error('load failed:', err)
}
```

The low-level `direct()` method does **not** throw — it returns the
value or an `Error`, so check the result before using it:

```ts
const result = await client.direct({
  path: '/api/resource/{id}',
  method: 'GET',
  params: { id: 'example_id' },
})

if (result instanceof Error) {
  throw result
}
```


## How-to guides

### Make a direct HTTP request

For endpoints not covered by entity methods:

```ts
const result = await client.direct({
  path: '/api/resource/{id}',
  method: 'GET',
  params: { id: 'example' },
})

if (result instanceof Error) {
  throw result
}
if (result.ok) {
  console.log(result.status)  // 200
  console.log(result.data)    // response body
}
```

### Prepare a request without sending it

```ts
const fetchdef = await client.prepare({
  path: '/api/resource/{id}',
  method: 'DELETE',
  params: { id: 'example' },
})

// Inspect before sending
console.log(fetchdef.url)
console.log(fetchdef.method)
console.log(fetchdef.headers)
```

### Use test mode

Create a mock client for unit testing — no server required:

```ts
const client = RestCountriesSDK.test()

const alpha = await client.Alpha().load({ id: 'test01' })
// alpha is the entity, populated with mock response data
// — call alpha.data() for the record itself
console.log(alpha)
```

You can also use the instance method:

```ts
const client = new RestCountriesSDK()
const testClient = client.tester()
```

### Retain entity state across calls

Entity instances remember their last match and data:

```ts
const entity = client.Alpha()

// First call runs the operation and stores its result
await entity.load({ id: 'example' })

// Subsequent calls reuse the stored state
const data = entity.data()
console.log(data)
```

### Add custom middleware

Pass features via the `extend` option:

```ts
const logger = {
  hooks: {
    PreRequest: (ctx: any) => {
      console.log('Requesting:', ctx.spec.method, ctx.spec.path)
    },
    PreResponse: (ctx: any) => {
      console.log('Status:', ctx.out.request?.status)
    },
  },
}

const client = new RestCountriesSDK({
  extend: [logger],
})
```

### Run live tests

Create a `.env.local` file at the project root:

```
REST_COUNTRIES_TEST_LIVE=TRUE
```

Then run:

```bash
cd ts && npm test
```


## Reference

### RestCountriesSDK

#### Constructor

```ts
new RestCountriesSDK(options?: {
  base?: string
  prefix?: string
  suffix?: string
  feature?: Record<string, { active: boolean }>
  extend?: Feature[]
})
```

| Option | Type | Description |
| --- | --- | --- |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `object` | Feature activation flags (e.g. `{ test: { active: true } }`). |
| `extend` | `Feature[]` | Additional feature instances to load. |

#### Methods

| Method | Returns | Description |
| --- | --- | --- |
| `options()` | `object` | Deep copy of current SDK options. |
| `utility()` | `Utility` | Deep copy of the SDK utility object. |
| `prepare(fetchargs?)` | `Promise<FetchDef>` | Build an HTTP request definition without sending it. |
| `direct(fetchargs?)` | `Promise<DirectResult>` | Build and send an HTTP request. |
| `All(data?)` | `AllEntity` | Create an All entity instance. |
| `Alpha(data?)` | `AlphaEntity` | Create an Alpha entity instance. |
| `Capital(data?)` | `CapitalEntity` | Create a Capital entity instance. |
| `Name(data?)` | `NameEntity` | Create a Name entity instance. |
| `tester(testopts?, sdkopts?)` | `RestCountriesSDK` | Create a test-mode client instance. |

#### Static methods

| Method | Returns | Description |
| --- | --- | --- |
| `RestCountriesSDK.test(testopts?, sdkopts?)` | `RestCountriesSDK` | Create a test-mode client. |

### Entity interface

All entities share the same interface.

#### Methods

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `load(reqmatch?, ctrl?): Promise<Entity>` | Load a single entity by match criteria. |
| `list` | `list(reqmatch?, ctrl?): Promise<Entity[]>` | List entities matching the criteria. |
| `data` | `data(data?: Partial<Entity>): Entity` | Get or set entity data. |
| `match` | `match(match?: Partial<Entity>): Partial<Entity>` | Get or set entity match criteria. |
| `make` | `make(): Entity` | Create a new instance with the same options. |
| `client` | `client(): RestCountriesSDK` | Return the parent SDK client. |
| `entopts` | `entopts(): object` | Return a copy of the entity options. |

#### Return values

Entity operations resolve to the entity data directly — there is no
result envelope:

- `load` resolves to a single entity object.
- `list` resolves to an **array** of entity objects (iterate it directly;
  there is no `.data` and no `.ok`).

On a failed request these methods **throw**, so wrap calls in
`try`/`catch` to handle errors. Only `direct()` returns the result
envelope described below.

### DirectResult shape

The `direct()` method returns:

```ts
{
  ok: boolean
  status: number
  headers: object
  data: any
}
```

On error, `ok` is `false` and an `err` property contains the error.

### FetchDef shape

The `prepare()` method returns:

```ts
{
  url: string
  method: string
  headers: Record<string, string>
  body?: any
}
```

### Entities

#### All

| Field | Description |
| --- | --- |
| `altSpellings` |  |
| `area` |  |
| `borders` |  |
| `capital` |  |
| `capitalInfo` |  |
| `car` |  |
| `cca2` |  |
| `cca3` |  |
| `ccn3` |  |
| `cioc` |  |
| `coatOfArms` |  |
| `continents` |  |
| `currencies` |  |
| `demonyms` |  |
| `fifa` |  |
| `flag` |  |
| `flags` |  |
| `gini` |  |
| `idd` |  |
| `independent` |  |
| `landlocked` |  |
| `languages` |  |
| `latlng` |  |
| `maps` |  |
| `name` |  |
| `population` |  |
| `postalCode` |  |
| `region` |  |
| `startOfWeek` |  |
| `status` |  |
| `subregion` |  |
| `timezones` |  |
| `tld` |  |
| `translations` |  |
| `unMember` |  |

Operations: list.

API path: `/all`

#### Alpha

| Field | Description |
| --- | --- |
| `altSpellings` |  |
| `area` |  |
| `borders` |  |
| `capital` |  |
| `capitalInfo` |  |
| `car` |  |
| `cca2` |  |
| `cca3` |  |
| `ccn3` |  |
| `cioc` |  |
| `coatOfArms` |  |
| `continents` |  |
| `currencies` |  |
| `demonyms` |  |
| `fifa` |  |
| `flag` |  |
| `flags` |  |
| `gini` |  |
| `idd` |  |
| `independent` |  |
| `landlocked` |  |
| `languages` |  |
| `latlng` |  |
| `maps` |  |
| `name` |  |
| `population` |  |
| `postalCode` |  |
| `region` |  |
| `startOfWeek` |  |
| `status` |  |
| `subregion` |  |
| `timezones` |  |
| `tld` |  |
| `translations` |  |
| `unMember` |  |

Operations: load.

API path: `/alpha/{code}`

#### Capital

| Field | Description |
| --- | --- |
| `altSpellings` |  |
| `area` |  |
| `borders` |  |
| `capital` |  |
| `capitalInfo` |  |
| `car` |  |
| `cca2` |  |
| `cca3` |  |
| `ccn3` |  |
| `cioc` |  |
| `coatOfArms` |  |
| `continents` |  |
| `currencies` |  |
| `demonyms` |  |
| `fifa` |  |
| `flag` |  |
| `flags` |  |
| `gini` |  |
| `idd` |  |
| `independent` |  |
| `landlocked` |  |
| `languages` |  |
| `latlng` |  |
| `maps` |  |
| `name` |  |
| `population` |  |
| `postalCode` |  |
| `region` |  |
| `startOfWeek` |  |
| `status` |  |
| `subregion` |  |
| `timezones` |  |
| `tld` |  |
| `translations` |  |
| `unMember` |  |

Operations: load.

API path: `/capital/{capital}`

#### Name

| Field | Description |
| --- | --- |
| `altSpellings` |  |
| `area` |  |
| `borders` |  |
| `capital` |  |
| `capitalInfo` |  |
| `car` |  |
| `cca2` |  |
| `cca3` |  |
| `ccn3` |  |
| `cioc` |  |
| `coatOfArms` |  |
| `continents` |  |
| `currencies` |  |
| `demonyms` |  |
| `fifa` |  |
| `flag` |  |
| `flags` |  |
| `gini` |  |
| `idd` |  |
| `independent` |  |
| `landlocked` |  |
| `languages` |  |
| `latlng` |  |
| `maps` |  |
| `name` |  |
| `population` |  |
| `postalCode` |  |
| `region` |  |
| `startOfWeek` |  |
| `status` |  |
| `subregion` |  |
| `timezones` |  |
| `tld` |  |
| `translations` |  |
| `unMember` |  |

Operations: load.

API path: `/name/{name}`



## Entities


### All

Create an instance: `const all = client.All()`

#### Operations

| Method | Description |
| --- | --- |
| `list(match)` | List entities matching the criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `altSpellings` | `any[]` |  |
| `area` | `number` |  |
| `borders` | `any[]` |  |
| `capital` | `any[]` |  |
| `capitalInfo` | `Record<string, any>` |  |
| `car` | `Record<string, any>` |  |
| `cca2` | `string` |  |
| `cca3` | `string` |  |
| `ccn3` | `string` |  |
| `cioc` | `string` |  |
| `coatOfArms` | `Record<string, any>` |  |
| `continents` | `any[]` |  |
| `currencies` | `Record<string, any>` |  |
| `demonyms` | `Record<string, any>` |  |
| `fifa` | `string` |  |
| `flag` | `string` |  |
| `flags` | `Record<string, any>` |  |
| `gini` | `Record<string, any>` |  |
| `idd` | `Record<string, any>` |  |
| `independent` | `boolean` |  |
| `landlocked` | `boolean` |  |
| `languages` | `Record<string, any>` |  |
| `latlng` | `any[]` |  |
| `maps` | `Record<string, any>` |  |
| `name` | `Record<string, any>` |  |
| `population` | `number` |  |
| `postalCode` | `Record<string, any>` |  |
| `region` | `string` |  |
| `startOfWeek` | `string` |  |
| `status` | `string` |  |
| `subregion` | `string` |  |
| `timezones` | `any[]` |  |
| `tld` | `any[]` |  |
| `translations` | `Record<string, any>` |  |
| `unMember` | `boolean` |  |

#### Example: List

```ts
const alls = await client.All().list()
```


### Alpha

Create an instance: `const alpha = client.Alpha()`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `altSpellings` | `any[]` |  |
| `area` | `number` |  |
| `borders` | `any[]` |  |
| `capital` | `any[]` |  |
| `capitalInfo` | `Record<string, any>` |  |
| `car` | `Record<string, any>` |  |
| `cca2` | `string` |  |
| `cca3` | `string` |  |
| `ccn3` | `string` |  |
| `cioc` | `string` |  |
| `coatOfArms` | `Record<string, any>` |  |
| `continents` | `any[]` |  |
| `currencies` | `Record<string, any>` |  |
| `demonyms` | `Record<string, any>` |  |
| `fifa` | `string` |  |
| `flag` | `string` |  |
| `flags` | `Record<string, any>` |  |
| `gini` | `Record<string, any>` |  |
| `idd` | `Record<string, any>` |  |
| `independent` | `boolean` |  |
| `landlocked` | `boolean` |  |
| `languages` | `Record<string, any>` |  |
| `latlng` | `any[]` |  |
| `maps` | `Record<string, any>` |  |
| `name` | `Record<string, any>` |  |
| `population` | `number` |  |
| `postalCode` | `Record<string, any>` |  |
| `region` | `string` |  |
| `startOfWeek` | `string` |  |
| `status` | `string` |  |
| `subregion` | `string` |  |
| `timezones` | `any[]` |  |
| `tld` | `any[]` |  |
| `translations` | `Record<string, any>` |  |
| `unMember` | `boolean` |  |

#### Example: Load

```ts
const alpha = await client.Alpha().load({ id: 'alpha_id' })
```


### Capital

Create an instance: `const capital = client.Capital()`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `altSpellings` | `any[]` |  |
| `area` | `number` |  |
| `borders` | `any[]` |  |
| `capital` | `any[]` |  |
| `capitalInfo` | `Record<string, any>` |  |
| `car` | `Record<string, any>` |  |
| `cca2` | `string` |  |
| `cca3` | `string` |  |
| `ccn3` | `string` |  |
| `cioc` | `string` |  |
| `coatOfArms` | `Record<string, any>` |  |
| `continents` | `any[]` |  |
| `currencies` | `Record<string, any>` |  |
| `demonyms` | `Record<string, any>` |  |
| `fifa` | `string` |  |
| `flag` | `string` |  |
| `flags` | `Record<string, any>` |  |
| `gini` | `Record<string, any>` |  |
| `idd` | `Record<string, any>` |  |
| `independent` | `boolean` |  |
| `landlocked` | `boolean` |  |
| `languages` | `Record<string, any>` |  |
| `latlng` | `any[]` |  |
| `maps` | `Record<string, any>` |  |
| `name` | `Record<string, any>` |  |
| `population` | `number` |  |
| `postalCode` | `Record<string, any>` |  |
| `region` | `string` |  |
| `startOfWeek` | `string` |  |
| `status` | `string` |  |
| `subregion` | `string` |  |
| `timezones` | `any[]` |  |
| `tld` | `any[]` |  |
| `translations` | `Record<string, any>` |  |
| `unMember` | `boolean` |  |

#### Example: Load

```ts
const capital = await client.Capital().load({ id: 'capital_id' })
```


### Name

Create an instance: `const name = client.Name()`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `altSpellings` | `any[]` |  |
| `area` | `number` |  |
| `borders` | `any[]` |  |
| `capital` | `any[]` |  |
| `capitalInfo` | `Record<string, any>` |  |
| `car` | `Record<string, any>` |  |
| `cca2` | `string` |  |
| `cca3` | `string` |  |
| `ccn3` | `string` |  |
| `cioc` | `string` |  |
| `coatOfArms` | `Record<string, any>` |  |
| `continents` | `any[]` |  |
| `currencies` | `Record<string, any>` |  |
| `demonyms` | `Record<string, any>` |  |
| `fifa` | `string` |  |
| `flag` | `string` |  |
| `flags` | `Record<string, any>` |  |
| `gini` | `Record<string, any>` |  |
| `idd` | `Record<string, any>` |  |
| `independent` | `boolean` |  |
| `landlocked` | `boolean` |  |
| `languages` | `Record<string, any>` |  |
| `latlng` | `any[]` |  |
| `maps` | `Record<string, any>` |  |
| `name` | `Record<string, any>` |  |
| `population` | `number` |  |
| `postalCode` | `Record<string, any>` |  |
| `region` | `string` |  |
| `startOfWeek` | `string` |  |
| `status` | `string` |  |
| `subregion` | `string` |  |
| `timezones` | `any[]` |  |
| `tld` | `any[]` |  |
| `translations` | `Record<string, any>` |  |
| `unMember` | `boolean` |  |

#### Example: Load

```ts
const name = await client.Name().load({ id: 'name_id' })
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

Features are the extension mechanism. A feature is an object with a
`hooks` map. Each hook key is a pipeline stage name, and the value is
a function that receives the context.

The SDK ships with built-in features:

- **TestFeature**: In-memory mock transport for testing without a live server

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Module structure

```
rest-countries/
├── src/
│   ├── RestCountriesSDK.ts        # Main SDK class
│   ├── entity/             # Entity implementations
│   ├── feature/            # Built-in features (Base, Test, Log)
│   └── utility/            # Utility functions
├── test/                   # Test suites
└── dist/                   # Compiled output
```

Import the SDK from the package root:

```ts
import { RestCountriesSDK } from '@voxgig-sdk/rest-countries'
```

### Entity state

Entity instances are stateful. After a successful `load`, the entity
stores the returned data and match criteria internally. Subsequent
calls on the same instance can rely on this state.

```ts
const alpha = client.Alpha()
await alpha.load({ id: "example_id" })

// alpha.data() now returns the alpha data from the last `load`
// alpha.match() returns { id: "example_id" }
```

Call `make()` to create a fresh instance with the same configuration
but no stored state.

### Direct vs entity access

The entity interface handles URL construction, parameter placement,
and response parsing automatically. Use it for standard CRUD operations.

The `direct` method gives full control over the HTTP request. Use it
for non-standard endpoints, bulk operations, or any path not modelled
as an entity. The `prepare` method is useful for debugging — it
shows exactly what `direct` would send.


## Full Reference

See [REFERENCE.md](REFERENCE.md) for complete API reference
documentation including all method signatures, entity field schemas,
and detailed usage examples.

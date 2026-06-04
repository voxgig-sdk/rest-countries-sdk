# RestCountries SDK

Look up countries by name, code, capital, currency, language, or region with a simple REST API

> TypeScript, Python, PHP, Golang, Ruby, Lua SDKs, a CLI, an interactive REPL, and an MCP server for AI agents — all generated from one OpenAPI spec by [@voxgig/sdkgen](https://github.com/voxgig/sdkgen).

## About REST Countries API

REST Countries is an open-source public API that returns information about the world's countries. It is maintained by the [REST Countries](https://restcountries.com/) project, which was inspired by the original restcountries.eu service, and serves several million requests per day.

What you get from the API:

- Lookup by name, full or partial: `/v3.1/name/{name}`
- Lookup by ISO code (cca2, cca3, ccn3, cioc) singly or in batches: `/v3.1/alpha/{code}` and `/v3.1/alpha?codes={code},{code}`
- Lookup by capital city: `/v3.1/capital/{capital}`
- Filter by currency, language, region, subregion, demonym, or translation: `/v3.1/currency/{currency}`, `/v3.1/lang/{language}`, `/v3.1/region/{region}`, `/v3.1/subregion/{subregion}`, `/v3.1/demonym/{demonym}`, `/v3.1/translation/{translation}`
- Bulk listing: `/v3.1/all` (a `fields` parameter is required)

Operational notes: no authentication is required. The `/all` endpoint requires a `fields` query parameter, and individual requests may return up to 10 fields. CORS is reported as disabled, so browser callers may need a proxy. The current production version is v3.1; a v4 preview exists but is not yet production-ready.

## Try it

**TypeScript**
```bash
npm install rest-countries
```

**Python**
```bash
pip install rest-countries-sdk
```

**PHP**
```bash
composer require voxgig/rest-countries-sdk
```

**Golang**
```bash
go get github.com/voxgig-sdk/rest-countries-sdk/go
```

**Ruby**
```bash
gem install rest-countries-sdk
```

**Lua**
```bash
luarocks install rest-countries-sdk
```

## 30-second quickstart

### TypeScript

```ts
import { RestCountriesSDK } from 'rest-countries'

const client = new RestCountriesSDK({})

// List all alls
const alls = await client.All().list()
```

See the [TypeScript README](ts/README.md) for the
full guide, or scroll down for the same example in other languages.

## What's in the box

| Surface | Use it for | Path |
| --- | --- | --- |
| **SDK** (TypeScript, Python, PHP, Golang, Ruby, Lua) | App integration | `ts/` `py/` `php/` `go/` `rb/` `lua/` |
| **CLI** | Scripts, CI, ops, one-off API calls | `go-cli/` |
| **MCP server** | AI agents (Claude, Cursor, Cline) | `go-mcp/` |

## Use it from an AI agent (MCP)

The generated MCP server exposes every operation in this SDK as an
[MCP](https://modelcontextprotocol.io) tool that Claude, Cursor or Cline
can call directly. Build and register it:

```bash
cd go-mcp && go build -o rest-countries-mcp .
```

Then add it to your agent's MCP config (Claude Desktop, Cursor, etc.):

```json
{
  "mcpServers": {
    "rest-countries": {
      "command": "/abs/path/to/rest-countries-mcp"
    }
  }
}
```

## Entities

The API exposes 4 entities:

| Entity | Description | API path |
| --- | --- | --- |
| **All** | Bulk listing of every country; served by `/v3.1/all` and requires a `fields` query parameter selecting which fields to return. | `/all` |
| **Alpha** | Lookup by ISO country code (cca2, cca3, ccn3, or cioc) via `/v3.1/alpha/{code}`, with batch lookups via `/v3.1/alpha?codes={code},{code}`. | `/alpha/{code}` |
| **Capital** | Lookup of countries by capital city via `/v3.1/capital/{capital}`. | `/capital/{capital}` |
| **Name** | Lookup of countries by full or partial name via `/v3.1/name/{name}`. | `/name/{name}` |

Each entity supports the following operations where available: **load**,
**list**, **create**, **update**, and **remove**.

## Quickstart in other languages

### Python

```python
from restcountries_sdk import RestCountriesSDK

client = RestCountriesSDK({})

# List all alls
alls, err = client.All(None).list(None, None)
```

### PHP

```php
<?php
require_once 'restcountries_sdk.php';

$client = new RestCountriesSDK([]);

// List all alls
[$alls, $err] = $client->All(null)->list(null, null);
```

### Golang

```go
import sdk "github.com/voxgig-sdk/rest-countries-sdk/go"

client := sdk.NewRestCountriesSDK(map[string]any{})

// List all alls
alls, err := client.All(nil).List(nil, nil)
```

### Ruby

```ruby
require_relative "RestCountries_sdk"

client = RestCountriesSDK.new({})

# List all alls
alls, err = client.All(nil).list(nil, nil)
```

### Lua

```lua
local sdk = require("rest-countries_sdk")

local client = sdk.new({})

-- List all alls
local alls, err = client:All(nil):list(nil, nil)
```

## Unit testing in offline mode

Every SDK ships a test mode that swaps the HTTP transport for an
in-memory mock, so unit tests run offline.

### TypeScript

```ts
const client = RestCountriesSDK.test()
const result = await client.All().load({ id: 'test01' })
// result.ok === true, result.data contains mock data
```

### Python

```python
client = RestCountriesSDK.test(None, None)
result, err = client.All(None).load(
    {"id": "test01"}, None
)
```

### PHP

```php
$client = RestCountriesSDK::test(null, null);
[$result, $err] = $client->All(null)->load(
    ["id" => "test01"], null
);
```

### Golang

```go
client := sdk.TestSDK(nil, nil)
result, err := client.All(nil).Load(
    map[string]any{"id": "test01"}, nil,
)
```

### Ruby

```ruby
client = RestCountriesSDK.test(nil, nil)
result, err = client.All(nil).load(
  { "id" => "test01" }, nil
)
```

### Lua

```lua
local client = sdk.test(nil, nil)
local result, err = client:All(nil):load(
  { id = "test01" }, nil
)
```

## How it works

Every SDK call runs the same five-stage pipeline:

1. **Point** — resolve the API endpoint from the operation definition.
2. **Spec** — build the HTTP specification (URL, method, headers, body).
3. **Request** — send the HTTP request.
4. **Response** — receive and parse the response.
5. **Result** — extract the result data for the caller.

A feature hook fires at each stage (e.g. `PrePoint`, `PreSpec`,
`PreRequest`), so features can inspect or modify the pipeline without
forking the SDK.

### Features

| Feature | Purpose |
| --- | --- |
| **TestFeature** | In-memory mock transport for testing without a live server |

Pass custom features via the `extend` option at construction time.

### Direct and Prepare

For endpoints the entity model doesn't cover, use the low-level methods:

- **`direct(fetchargs)`** — build and send an HTTP request in one step.
- **`prepare(fetchargs)`** — build the request without sending it.

Both accept a map with `path`, `method`, `params`, `query`,
`headers`, and `body`. See the [How-to guides](#how-to-guides) below.

## How-to guides

### Make a direct API call

When the entity interface does not cover an endpoint, use `direct`:

**TypeScript:**
```ts
const result = await client.direct({
  path: '/api/resource/{id}',
  method: 'GET',
  params: { id: 'example' },
})
console.log(result.data)
```

**Python:**
```python
result, err = client.direct({
    "path": "/api/resource/{id}",
    "method": "GET",
    "params": {"id": "example"},
})
```

**PHP:**
```php
[$result, $err] = $client->direct([
    "path" => "/api/resource/{id}",
    "method" => "GET",
    "params" => ["id" => "example"],
]);
```

**Go:**
```go
result, err := client.Direct(map[string]any{
    "path":   "/api/resource/{id}",
    "method": "GET",
    "params": map[string]any{"id": "example"},
})
```

**Ruby:**
```ruby
result, err = client.direct({
  "path" => "/api/resource/{id}",
  "method" => "GET",
  "params" => { "id" => "example" },
})
```

**Lua:**
```lua
local result, err = client:direct({
  path = "/api/resource/{id}",
  method = "GET",
  params = { id = "example" },
})
```

## Per-language documentation

- [TypeScript](ts/README.md)
- [Python](py/README.md)
- [PHP](php/README.md)
- [Golang](go/README.md)
- [Ruby](rb/README.md)
- [Lua](lua/README.md)

## Using the REST Countries API

- Upstream: [https://restcountries.com/](https://restcountries.com/)

- Licensed under the Mozilla Public License 2.0 (MPL-2.0).
- Free to use without authentication or API keys.
- The project is community-maintained and runs on donations; consider supporting it if you depend on the service.

---

Generated from the REST Countries API OpenAPI spec by [@voxgig/sdkgen](https://github.com/voxgig/sdkgen).

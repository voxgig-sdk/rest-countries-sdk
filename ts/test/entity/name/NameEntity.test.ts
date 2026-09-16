

import Path from 'node:path'
import * as Fs from 'node:fs'

import { test, describe, afterEach } from 'node:test'
import assert from 'node:assert'
import { createLiveTransport } from '../../live-runner'
import { runLiveEntity } from '../../live-entity'


import { RestCountriesSDK, BaseFeature, stdutil } from '../../..'

import {
  envOverride,
  liveClientOptions,
  liveDelay,
  loadEnvLocal,
  makeCtrl,
  makeMatch,
  makeReqdata,
  makeStepData,
  makeValid,
  maybeSkipControl,
} from '../../utility'


// AFTER the imports on purpose: TypeScript hoists `import` above any
// statement in the emitted CommonJS, so a loader placed above them would
// run only after every imported module had already been evaluated - and
// anything reading process.env at module scope would miss these values.
loadEnvLocal(__dirname + '/../../../.env.local')


describe('NameEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when REST_COUNTRIES_TEST_LIVE=TRUE.
  afterEach(liveDelay('REST_COUNTRIES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = RestCountriesSDK.test()
    const ent = testsdk.Name()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.REST_COUNTRIES_TEST_LIVE
    for (const op of ['load']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'name.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":[{"active":true,"name":"altSpellings","req":false,"short":"Alternative country name spellings","type":"`$ARRAY`","index$":0},{"active":true,"name":"area","req":false,"short":"Country area in square kilometers","type":"`$NUMBER`","index$":1},{"active":true,"name":"borders","req":false,"short":"Border countries (ISO 3166-1 alpha-3 codes)","type":"`$ARRAY`","index$":2},{"active":true,"name":"capital","req":false,"short":"Capital city or cities","type":"`$ARRAY`","index$":3},{"active":true,"name":"capitalInfo","req":false,"type":"`$OBJECT`","index$":4},{"active":true,"name":"car","req":false,"type":"`$OBJECT`","index$":5},{"active":true,"name":"cca2","req":false,"short":"ISO 3166-1 alpha-2 code","type":"`$STRING`","index$":6},{"active":true,"name":"cca3","req":false,"short":"ISO 3166-1 alpha-3 code","type":"`$STRING`","index$":7},{"active":true,"name":"ccn3","req":false,"short":"ISO 3166-1 numeric code","type":"`$STRING`","index$":8},{"active":true,"name":"cioc","req":false,"short":"International Olympic Committee code","type":"`$STRING`","index$":9},{"active":true,"name":"coatOfArms","req":false,"type":"`$OBJECT`","index$":10},{"active":true,"name":"continents","req":false,"short":"Continents","type":"`$ARRAY`","index$":11},{"active":true,"name":"currencies","req":false,"type":"`$OBJECT`","index$":12},{"active":true,"name":"demonyms","req":false,"type":"`$OBJECT`","index$":13},{"active":true,"name":"fifa","req":false,"short":"FIFA country code","type":"`$STRING`","index$":14},{"active":true,"name":"flag","req":false,"short":"Flag emoji","type":"`$STRING`","index$":15},{"active":true,"name":"flags","req":false,"type":"`$OBJECT`","index$":16},{"active":true,"name":"gini","req":false,"short":"Gini coefficient","type":"`$OBJECT`","index$":17},{"active":true,"name":"id","req":false,"type":"`$STRING`","index$":18},{"active":true,"name":"idd","req":false,"short":"International direct dialing","type":"`$OBJECT`","index$":19},{"active":true,"name":"independent","req":false,"short":"Independence status","type":"`$BOOLEAN`","index$":20},{"active":true,"name":"landlocked","req":false,"short":"Landlocked status","type":"`$BOOLEAN`","index$":21},{"active":true,"name":"languages","req":false,"short":"Languages spoken","type":"`$OBJECT`","index$":22},{"active":true,"name":"latlng","req":false,"short":"Latitude and longitude","type":"`$ARRAY`","index$":23},{"active":true,"name":"maps","req":false,"type":"`$OBJECT`","index$":24},{"active":true,"name":"name","req":false,"type":"`$OBJECT`","index$":25},{"active":true,"name":"population","req":false,"short":"Country population","type":"`$INTEGER`","index$":26},{"active":true,"name":"postalCode","req":false,"type":"`$OBJECT`","index$":27},{"active":true,"name":"region","req":false,"short":"Geographic region","type":"`$STRING`","index$":28},{"active":true,"name":"startOfWeek","req":false,"short":"Start of week day","type":"`$STRING`","index$":29},{"active":true,"name":"status","req":false,"short":"ISO 3166-1 assignment status","type":"`$STRING`","index$":30},{"active":true,"name":"subregion","req":false,"short":"Geographic subregion","type":"`$STRING`","index$":31},{"active":true,"name":"timezones","req":false,"short":"Timezones","type":"`$ARRAY`","index$":32},{"active":true,"name":"tld","req":false,"short":"Top-level domains","type":"`$ARRAY`","index$":33},{"active":true,"name":"translations","req":false,"type":"`$OBJECT`","index$":34},{"active":true,"name":"unMember","req":false,"short":"UN membership status","type":"`$BOOLEAN`","index$":35}],"id":{"field":"id","name":"id"},"name":"name","op":{"load":{"input":"data","name":"load","points":[{"active":true,"args":{"params":[{"active":true,"example":"germany","kind":"param","name":"id","orig":"name","reqd":true,"type":"`$STRING`","index$":0}],"query":[{"active":true,"kind":"query","name":"field","orig":"field","reqd":false,"type":"`$STRING`","index$":0},{"active":true,"example":false,"kind":"query","name":"full_text","orig":"full_text","reqd":false,"type":"`$BOOLEAN`","index$":1}]},"contract":{"id":"GET /name/{name}","json":"{\"operationId\":\"getCountriesByName\",\"parameters\":[{\"description\":\"Name of the country to search for\",\"example\":\"germany\",\"in\":\"path\",\"name\":\"name\",\"required\":true,\"schema\":{\"type\":\"string\"}},{\"description\":\"Search by exact country name match\",\"in\":\"query\",\"name\":\"fullText\",\"required\":false,\"schema\":{\"default\":false,\"type\":\"boolean\"}},{\"description\":\"Comma-separated list of fields to return\",\"in\":\"query\",\"name\":\"fields\",\"required\":false,\"schema\":{\"type\":\"string\"}}],\"protocol\":\"http\",\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"items\":{\"properties\":{\"altSpellings\":{\"description\":\"Alternative country name spellings\",\"items\":{\"type\":\"string\"},\"type\":\"array\"},\"area\":{\"description\":\"Country area in square kilometers\",\"type\":\"number\"},\"borders\":{\"description\":\"Border countries (ISO 3166-1 alpha-3 codes)\",\"items\":{\"type\":\"string\"},\"type\":\"array\"},\"capital\":{\"description\":\"Capital city or cities\",\"items\":{\"type\":\"string\"},\"type\":\"array\"},\"capitalInfo\":{\"properties\":{\"latlng\":{\"items\":{\"type\":\"number\"},\"maxItems\":2,\"minItems\":2,\"type\":\"array\"}},\"type\":\"object\"},\"car\":{\"properties\":{\"side\":{\"enum\":[\"left\",\"right\"],\"type\":\"string\"},\"signs\":{\"items\":{\"type\":\"string\"},\"type\":\"array\"}},\"type\":\"object\"},\"cca2\":{\"description\":\"ISO 3166-1 alpha-2 code\",\"type\":\"string\"},\"cca3\":{\"description\":\"ISO 3166-1 alpha-3 code\",\"type\":\"string\"},\"ccn3\":{\"description\":\"ISO 3166-1 numeric code\",\"type\":\"string\"},\"cioc\":{\"description\":\"International Olympic Committee code\",\"type\":\"string\"},\"coatOfArms\":{\"properties\":{\"png\":{\"format\":\"uri\",\"type\":\"string\"},\"svg\":{\"format\":\"uri\",\"type\":\"string\"}},\"type\":\"object\"},\"continents\":{\"description\":\"Continents\",\"items\":{\"type\":\"string\"},\"type\":\"array\"},\"currencies\":{\"additionalProperties\":{\"properties\":{\"name\":{\"type\":\"string\"},\"symbol\":{\"type\":\"string\"}},\"type\":\"object\"},\"type\":\"object\"},\"demonyms\":{\"additionalProperties\":{\"properties\":{\"f\":{\"type\":\"string\"},\"m\":{\"type\":\"string\"}},\"type\":\"object\"},\"type\":\"object\"},\"fifa\":{\"description\":\"FIFA country code\",\"type\":\"string\"},\"flag\":{\"description\":\"Flag emoji\",\"type\":\"string\"},\"flags\":{\"properties\":{\"alt\":{\"type\":\"string\"},\"png\":{\"format\":\"uri\",\"type\":\"string\"},\"svg\":{\"format\":\"uri\",\"type\":\"string\"}},\"type\":\"object\"},\"gini\":{\"additionalProperties\":{\"type\":\"number\"},\"description\":\"Gini coefficient\",\"type\":\"object\"},\"idd\":{\"description\":\"International direct dialing\",\"properties\":{\"root\":{\"type\":\"string\"},\"suffixes\":{\"items\":{\"type\":\"string\"},\"type\":\"array\"}},\"type\":\"object\"},\"independent\":{\"description\":\"Independence status\",\"type\":\"boolean\"},\"landlocked\":{\"description\":\"Landlocked status\",\"type\":\"boolean\"},\"languages\":{\"additionalProperties\":{\"type\":\"string\"},\"description\":\"Languages spoken\",\"type\":\"object\"},\"latlng\":{\"description\":\"Latitude and longitude\",\"items\":{\"type\":\"number\"},\"maxItems\":2,\"minItems\":2,\"type\":\"array\"},\"maps\":{\"properties\":{\"googleMaps\":{\"format\":\"uri\",\"type\":\"string\"},\"openStreetMaps\":{\"format\":\"uri\",\"type\":\"string\"}},\"type\":\"object\"},\"name\":{\"properties\":{\"common\":{\"description\":\"Common country name\",\"type\":\"string\"},\"nativeName\":{\"additionalProperties\":{\"properties\":{\"common\":{\"type\":\"string\"},\"official\":{\"type\":\"string\"}},\"type\":\"object\"},\"type\":\"object\"},\"official\":{\"description\":\"Official country name\",\"type\":\"string\"}},\"type\":\"object\"},\"population\":{\"description\":\"Country population\",\"type\":\"integer\"},\"postalCode\":{\"properties\":{\"format\":{\"type\":\"string\"},\"regex\":{\"type\":\"string\"}},\"type\":\"object\"},\"region\":{\"description\":\"Geographic region\",\"type\":\"string\"},\"startOfWeek\":{\"description\":\"Start of week day\",\"type\":\"string\"},\"status\":{\"description\":\"ISO 3166-1 assignment status\",\"type\":\"string\"},\"subregion\":{\"description\":\"Geographic subregion\",\"type\":\"string\"},\"timezones\":{\"description\":\"Timezones\",\"items\":{\"type\":\"string\"},\"type\":\"array\"},\"tld\":{\"description\":\"Top-level domains\",\"items\":{\"type\":\"string\"},\"type\":\"array\"},\"translations\":{\"additionalProperties\":{\"properties\":{\"common\":{\"type\":\"string\"},\"official\":{\"type\":\"string\"}},\"type\":\"object\"},\"type\":\"object\"},\"unMember\":{\"description\":\"UN membership status\",\"type\":\"boolean\"}},\"type\":\"object\"},\"type\":\"array\"}}},\"description\":\"Successful response\"},\"404\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"message\":{\"description\":\"Error message\",\"type\":\"string\"},\"status\":{\"description\":\"HTTP status code\",\"type\":\"integer\"}},\"type\":\"object\"}}},\"description\":\"Country not found\"}},\"securitySource\":\"unspecified\"}","source":"openapi3","version":1},"kind":"http","method":"GET","orig":"/name/{name}","rename":{"param":{"name":"id"}},"segments":[{"lit":"name"},{"var":"id"}],"select":{"exist":["field","full_text","id"]},"transform":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"load"}},"relations":{"ancestors":[]},"key$":"name","name__orig":"name","Name":"Name","name_":"name","name-":"name","NAME":"NAME","index$":3}, {"active":true,"entity":"name","key$":"BasicNameFlow","kind":"basic","name":"BasicNameFlow","param":{},"step":[{"active":true,"data":{},"input":{"ref":"name_ref01","srcdatavar":"name_ref01_data","suffix":"_dt0"},"match":{"id":"name01"},"op":"load","spec":[],"valid":[{"apply":"TextFieldMark","def":{"mark":"Mark01-name_ref01"}}],"index$":0}]}, 'Name')
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select

    let name_ref01_data = Object.values(setup.data.existing.name)[0] as any

    // LOAD
    const name_ref01_ent = client.Name()
    const name_ref01_match_dt0: any = {}
    name_ref01_match_dt0.id = name_ref01_data.id
    const name_ref01_data_dt0 = (await name_ref01_ent.load(name_ref01_match_dt0)).data()
    assert(name_ref01_data_dt0.id === name_ref01_data.id)


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname, 
      '../../../../.sdk/test/entity/name/NameTestData.json')

  // TODO: file ready util needed?
  const entityDataSource = Fs.readFileSync(entityDataFile).toString('utf8')

  // TODO: need a xlang JSON parse utility in voxgig/struct with better error msgs
  const entityData = JSON.parse(entityDataSource)

  options.entity = entityData.existing

  let client = RestCountriesSDK.test(options, extra)
  const struct = client.utility().struct
  const merge = struct.merge
  const transform = struct.transform

  let idmap = transform(
    ['name01','name02','name03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'REST_COUNTRIES_TEST_NAME_ENTID': idmap,
    'REST_COUNTRIES_TEST_LIVE': 'FALSE',
    'REST_COUNTRIES_TEST_EXPLAIN': 'FALSE',
  })

  idmap = env['REST_COUNTRIES_TEST_NAME_ENTID']

  const live = 'TRUE' === env.REST_COUNTRIES_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['REST_COUNTRIES_TEST_NAME_ENTID']
    idmap = rawIds && rawIds.trim() ? JSON.parse(rawIds) : {}
    if (!idmap || Array.isArray(idmap) || typeof idmap !== 'object') {
      throw new Error('Live ENTID must be a JSON object')
    }
    client = new RestCountriesSDK(merge([
      // FIRST, so the generated fields below win: sdk-test-control.json's
      // test.client.options adds to the live client, it does not redirect it.
      liveClientOptions(),
      {
      },
      // 'extra || {}', not a bare 'extra': struct.merge returns UNDEFINED when the
      // last entry is undefined, and basicSetup is normally called with no
      // argument at all - so a bare 'extra' silently discarded the apikey
      // and server values above and handed the SDK undefined. Harmless
      // while there was nothing in that object; not harmless now.
      extra || {},
      { system: { fetch: transport.fetch } }
    ]))
  }

  const setup = {
    idmap,
    env,
    options,
    client,
    struct,
    data: entityData,
    explain: 'TRUE' === env.REST_COUNTRIES_TEST_EXPLAIN,
    live,
    transport,
    now: Date.now(),
  }

  return setup
}
  

"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || (function () {
    var ownKeys = function(o) {
        ownKeys = Object.getOwnPropertyNames || function (o) {
            var ar = [];
            for (var k in o) if (Object.prototype.hasOwnProperty.call(o, k)) ar[ar.length] = k;
            return ar;
        };
        return ownKeys(o);
    };
    return function (mod) {
        if (mod && mod.__esModule) return mod;
        var result = {};
        if (mod != null) for (var k = ownKeys(mod), i = 0; i < k.length; i++) if (k[i] !== "default") __createBinding(result, mod, k[i]);
        __setModuleDefault(result, mod);
        return result;
    };
})();
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const node_path_1 = __importDefault(require("node:path"));
const Fs = __importStar(require("node:fs"));
const node_test_1 = require("node:test");
const node_assert_1 = __importDefault(require("node:assert"));
const live_runner_1 = require("../../live-runner");
const live_entity_1 = require("../../live-entity");
const __1 = require("../../..");
const utility_1 = require("../../utility");
(0, utility_1.loadEnvLocal)(__dirname + '/../../../.env.local');
(0, node_test_1.describe)('NameEntity', async () => {
    // Per-test live pacing. Delay is read from sdk-test-control.json's
    // `test.live.delayMs`; only sleeps when REST_COUNTRIES_TEST_LIVE=TRUE.
    (0, node_test_1.afterEach)((0, utility_1.liveDelay)('REST_COUNTRIES_TEST_LIVE'));
    (0, node_test_1.test)('instance', async () => {
        const testsdk = __1.RestCountriesSDK.test();
        const ent = testsdk.Name();
        (0, node_assert_1.default)(null != ent);
    });
    (0, node_test_1.test)('basic', async (t) => {
        const live = 'TRUE' === process.env.REST_COUNTRIES_TEST_LIVE;
        for (const op of ['load']) {
            if (!live && (0, utility_1.maybeSkipControl)(t, 'entityOp', 'name.' + op, live))
                return;
        }
        const setup = basicSetup();
        if (setup.live) {
            return (0, live_entity_1.runLiveEntity)(setup, { "active": true, "alias": { "field": {} }, "fields": { "altSpellings": { "a": true, "h": "Alt Spellings", "n": "altSpellings", "r": false, "sh": "Alternative country name spellings", "t": "`$ARRAY`", "key$": "altSpellings", "index$": 0 }, "area": { "a": true, "h": "Area", "n": "area", "r": false, "sh": "Country area in square kilometers", "t": "`$NUMBER`", "key$": "area", "index$": 1 }, "borders": { "a": true, "h": "Borders", "n": "borders", "r": false, "sh": "Border countries (ISO 3166-1 alpha-3 codes)", "t": "`$ARRAY`", "key$": "borders", "index$": 2 }, "capital": { "a": true, "h": "Capital", "n": "capital", "r": false, "sh": "Capital city or cities", "t": "`$ARRAY`", "key$": "capital", "index$": 3 }, "capitalInfo": { "a": true, "h": "Capital Info", "n": "capitalInfo", "r": false, "t": "`$OBJECT`", "key$": "capitalInfo", "index$": 4 }, "car": { "a": true, "h": "Car", "n": "car", "r": false, "t": "`$OBJECT`", "key$": "car", "index$": 5 }, "cca2": { "a": true, "h": "Cca2", "n": "cca2", "r": false, "sh": "ISO 3166-1 alpha-2 code", "t": "`$STRING`", "key$": "cca2", "index$": 6 }, "cca3": { "a": true, "h": "Cca3", "n": "cca3", "r": false, "sh": "ISO 3166-1 alpha-3 code", "t": "`$STRING`", "key$": "cca3", "index$": 7 }, "ccn3": { "a": true, "h": "Ccn3", "n": "ccn3", "r": false, "sh": "ISO 3166-1 numeric code", "t": "`$STRING`", "key$": "ccn3", "index$": 8 }, "cioc": { "a": true, "h": "Cioc", "n": "cioc", "r": false, "sh": "International Olympic Committee code", "t": "`$STRING`", "key$": "cioc", "index$": 9 }, "coatOfArms": { "a": true, "h": "Coat Of Arms", "n": "coatOfArms", "r": false, "t": "`$OBJECT`", "key$": "coatOfArms", "index$": 10 }, "continents": { "a": true, "h": "Continents", "n": "continents", "r": false, "sh": "Continents", "t": "`$ARRAY`", "key$": "continents", "index$": 11 }, "currencies": { "a": true, "h": "Currencies", "n": "currencies", "r": false, "t": "`$OBJECT`", "key$": "currencies", "index$": 12 }, "demonyms": { "a": true, "h": "Demonyms", "n": "demonyms", "r": false, "t": "`$OBJECT`", "key$": "demonyms", "index$": 13 }, "fifa": { "a": true, "h": "Fifa", "n": "fifa", "r": false, "sh": "FIFA country code", "t": "`$STRING`", "key$": "fifa", "index$": 14 }, "flag": { "a": true, "h": "Flag", "n": "flag", "r": false, "sh": "Flag emoji", "t": "`$STRING`", "key$": "flag", "index$": 15 }, "flags": { "a": true, "h": "Flags", "n": "flags", "r": false, "t": "`$OBJECT`", "key$": "flags", "index$": 16 }, "gini": { "a": true, "h": "Gini", "n": "gini", "r": false, "sh": "Gini coefficient", "t": "`$OBJECT`", "key$": "gini", "index$": 17 }, "id": { "a": true, "h": "Id", "n": "id", "r": false, "t": "`$STRING`", "key$": "id", "index$": 18 }, "idd": { "a": true, "h": "Idd", "n": "idd", "r": false, "sh": "International direct dialing", "t": "`$OBJECT`", "key$": "idd", "index$": 19 }, "independent": { "a": true, "h": "Independent", "n": "independent", "r": false, "sh": "Independence status", "t": "`$BOOLEAN`", "key$": "independent", "index$": 20 }, "landlocked": { "a": true, "h": "Landlocked", "n": "landlocked", "r": false, "sh": "Landlocked status", "t": "`$BOOLEAN`", "key$": "landlocked", "index$": 21 }, "languages": { "a": true, "h": "Languages", "n": "languages", "r": false, "sh": "Languages spoken", "t": "`$OBJECT`", "key$": "languages", "index$": 22 }, "latlng": { "a": true, "h": "Latlng", "n": "latlng", "r": false, "sh": "Latitude and longitude", "t": "`$ARRAY`", "key$": "latlng", "index$": 23 }, "maps": { "a": true, "h": "Maps", "n": "maps", "r": false, "t": "`$OBJECT`", "key$": "maps", "index$": 24 }, "name": { "a": true, "h": "Name", "n": "name", "r": false, "t": "`$OBJECT`", "key$": "name", "index$": 25 }, "population": { "a": true, "h": "Population", "n": "population", "r": false, "sh": "Country population", "t": "`$INTEGER`", "key$": "population", "index$": 26 }, "postalCode": { "a": true, "h": "Postal Code", "n": "postalCode", "r": false, "t": "`$OBJECT`", "key$": "postalCode", "index$": 27 }, "region": { "a": true, "h": "Region", "n": "region", "r": false, "sh": "Geographic region", "t": "`$STRING`", "key$": "region", "index$": 28 }, "startOfWeek": { "a": true, "h": "Start Of Week", "n": "startOfWeek", "r": false, "sh": "Start of week day", "t": "`$STRING`", "key$": "startOfWeek", "index$": 29 }, "status": { "a": true, "h": "Status", "n": "status", "r": false, "sh": "ISO 3166-1 assignment status", "t": "`$STRING`", "key$": "status", "index$": 30 }, "subregion": { "a": true, "h": "Subregion", "n": "subregion", "r": false, "sh": "Geographic subregion", "t": "`$STRING`", "key$": "subregion", "index$": 31 }, "timezones": { "a": true, "h": "Timezones", "n": "timezones", "r": false, "sh": "Timezones", "t": "`$ARRAY`", "key$": "timezones", "index$": 32 }, "tld": { "a": true, "h": "Tld", "n": "tld", "r": false, "sh": "Top-level domains", "t": "`$ARRAY`", "key$": "tld", "index$": 33 }, "translations": { "a": true, "h": "Translations", "n": "translations", "r": false, "t": "`$OBJECT`", "key$": "translations", "index$": 34 }, "unMember": { "a": true, "h": "Un Member", "n": "unMember", "r": false, "sh": "UN membership status", "t": "`$BOOLEAN`", "key$": "unMember", "index$": 35 } }, "id": { "field": "id", "name": "id" }, "name": "name", "op": { "load": { "input": "data", "name": "load", "points": [{ "a": true, "co": { "id": "GET /name/{name}", "source": "openapi3", "version": 2 }, "g": { "params": [{ "a": true, "ex": "germany", "k": "param", "n": "id", "or": "name", "r": true, "t": "`$STRING`", "index$": 0 }], "query": [{ "a": true, "k": "query", "n": "field", "or": "field", "r": false, "t": "`$STRING`", "index$": 0 }, { "a": true, "ex": false, "k": "query", "n": "full_text", "or": "full_text", "r": false, "t": "`$BOOLEAN`", "index$": 1 }] }, "k": "http", "m": "GET", "o": "/name/{name}", "q": { "exist": ["field", "full_text", "id"] }, "r": { "param": { "name": "id" } }, "s": [{ "lit": "name" }, { "var": "id" }], "t": { "req": "`reqdata`", "res": "`body`" }, "index$": 0 }], "key$": "load" } }, "relations": { "ancestors": [] }, "key$": "name", "name__orig": "name", "Name": "Name", "name_": "name", "name-": "name", "NAME": "NAME", "index$": 3 }, { "active": true, "entity": "name", "key$": "BasicNameFlow", "kind": "basic", "name": "BasicNameFlow", "param": {}, "step": [{ "a": true, "d": {}, "i": { "ref": "name_ref01", "srcdatavar": "name_ref01_data", "suffix": "_dt0" }, "m": { "id": "name01" }, "o": "load", "s": [], "v": [{ "apply": "TextFieldMark", "def": { "mark": "Mark01-name_ref01" } }], "index$": 0 }] }, 'Name', { "GET /name/{name}": { "protocol": "http", "operationId": "getCountriesByName", "responses": { "200": { "description": "Successful response", "content": { "application/json": { "schema": { "type": "array", "items": { "type": "object", "properties": { "name": { "type": "object", "properties": { "common": { "type": "string", "description": "Common country name" }, "official": { "type": "string", "description": "Official country name" }, "nativeName": { "type": "object", "additionalProperties": { "type": "object", "properties": { "official": { "type": "string" }, "common": { "type": "string" } } } } }, "key$": "name" }, "tld": { "type": "array", "items": { "type": "string" }, "description": "Top-level domains", "key$": "tld" }, "cca2": { "type": "string", "description": "ISO 3166-1 alpha-2 code", "key$": "cca2" }, "ccn3": { "type": "string", "description": "ISO 3166-1 numeric code", "key$": "ccn3" }, "cca3": { "type": "string", "description": "ISO 3166-1 alpha-3 code", "key$": "cca3" }, "cioc": { "type": "string", "description": "International Olympic Committee code", "key$": "cioc" }, "independent": { "type": "boolean", "description": "Independence status", "key$": "independent" }, "status": { "type": "string", "description": "ISO 3166-1 assignment status", "key$": "status" }, "unMember": { "type": "boolean", "description": "UN membership status", "key$": "unMember" }, "currencies": { "type": "object", "additionalProperties": { "type": "object", "properties": { "name": { "type": "string" }, "symbol": { "type": "string" } } }, "key$": "currencies" }, "idd": { "type": "object", "properties": { "root": { "type": "string" }, "suffixes": { "type": "array", "items": { "type": "string" } } }, "description": "International direct dialing", "key$": "idd" }, "capital": { "type": "array", "items": { "type": "string" }, "description": "Capital city or cities", "key$": "capital" }, "altSpellings": { "type": "array", "items": { "type": "string" }, "description": "Alternative country name spellings", "key$": "altSpellings" }, "region": { "type": "string", "description": "Geographic region", "key$": "region" }, "subregion": { "type": "string", "description": "Geographic subregion", "key$": "subregion" }, "languages": { "type": "object", "additionalProperties": { "type": "string" }, "description": "Languages spoken", "key$": "languages" }, "translations": { "type": "object", "additionalProperties": { "type": "object", "properties": { "official": { "type": "string" }, "common": { "type": "string" } } }, "key$": "translations" }, "latlng": { "type": "array", "items": { "type": "number" }, "minItems": 2, "maxItems": 2, "description": "Latitude and longitude", "key$": "latlng" }, "landlocked": { "type": "boolean", "description": "Landlocked status", "key$": "landlocked" }, "borders": { "type": "array", "items": { "type": "string" }, "description": "Border countries (ISO 3166-1 alpha-3 codes)", "key$": "borders" }, "area": { "type": "number", "description": "Country area in square kilometers", "key$": "area" }, "demonyms": { "type": "object", "additionalProperties": { "type": "object", "properties": { "f": { "type": "string" }, "m": { "type": "string" } } }, "key$": "demonyms" }, "flag": { "type": "string", "description": "Flag emoji", "key$": "flag" }, "maps": { "type": "object", "properties": { "googleMaps": { "type": "string", "format": "uri" }, "openStreetMaps": { "type": "string", "format": "uri" } }, "key$": "maps" }, "population": { "type": "integer", "description": "Country population", "key$": "population" }, "gini": { "type": "object", "additionalProperties": { "type": "number" }, "description": "Gini coefficient", "key$": "gini" }, "fifa": { "type": "string", "description": "FIFA country code", "key$": "fifa" }, "car": { "type": "object", "properties": { "signs": { "type": "array", "items": { "type": "string" } }, "side": { "type": "string", "enum": ["left", "right"] } }, "key$": "car" }, "timezones": { "type": "array", "items": { "type": "string" }, "description": "Timezones", "key$": "timezones" }, "continents": { "type": "array", "items": { "type": "string" }, "description": "Continents", "key$": "continents" }, "flags": { "type": "object", "properties": { "png": { "type": "string", "format": "uri" }, "svg": { "type": "string", "format": "uri" }, "alt": { "type": "string" } }, "key$": "flags" }, "coatOfArms": { "type": "object", "properties": { "png": { "type": "string", "format": "uri" }, "svg": { "type": "string", "format": "uri" } }, "key$": "coatOfArms" }, "startOfWeek": { "type": "string", "description": "Start of week day", "key$": "startOfWeek" }, "capitalInfo": { "type": "object", "properties": { "latlng": { "type": "array", "items": { "type": "number" }, "minItems": 2, "maxItems": 2 } }, "key$": "capitalInfo" }, "postalCode": { "type": "object", "properties": { "format": { "type": "string" }, "regex": { "type": "string" } }, "key$": "postalCode" } }, "x-ref": "#/components/schemas/Country", "key$": "items" } } } } }, "404": { "description": "Country not found", "content": { "application/json": { "schema": { "type": "object", "properties": { "status": { "type": "integer", "description": "HTTP status code" }, "message": { "type": "string", "description": "Error message" } }, "x-ref": "#/components/schemas/Error" } } } } }, "parameters": [{ "name": "name", "in": "path", "description": "Name of the country to search for", "required": true, "schema": { "type": "string" }, "example": "germany", "index$": 0 }, { "name": "fullText", "in": "query", "description": "Search by exact country name match", "required": false, "schema": { "type": "boolean", "default": false }, "index$": 1 }, { "name": "fields", "in": "query", "description": "Comma-separated list of fields to return", "required": false, "schema": { "type": "string" }, "index$": 2 }], "securitySource": "unspecified" } });
        }
        const client = setup.client;
        const struct = setup.struct;
        const isempty = struct.isempty;
        const select = struct.select;
        let name_ref01_data = Object.values(setup.data.existing.name)[0];
        // LOAD
        const name_ref01_ent = client.Name();
        const name_ref01_match_dt0 = {};
        name_ref01_match_dt0.id = name_ref01_data.id;
        const name_ref01_data_dt0 = (await name_ref01_ent.load(name_ref01_match_dt0)).data();
        (0, node_assert_1.default)(name_ref01_data_dt0.id === name_ref01_data.id);
    });
});
function basicSetup(extra) {
    // TODO: fix test def options
    const options = {}; // null
    // TODO: needs test utility to resolve path
    const entityDataFile = node_path_1.default.resolve(__dirname, '../../../../.sdk/test/entity/name/NameTestData.json');
    // TODO: file ready util needed?
    const entityDataSource = Fs.readFileSync(entityDataFile).toString('utf8');
    // TODO: need a xlang JSON parse utility in voxgig/struct with better error msgs
    const entityData = JSON.parse(entityDataSource);
    options.entity = entityData.existing;
    let client = __1.RestCountriesSDK.test(options, extra);
    const struct = client.utility().struct;
    const merge = struct.merge;
    const transform = struct.transform;
    let idmap = transform(['name01', 'name02', 'name03'], {
        '`$PACK`': ['', {
                '`$KEY`': '`$COPY`',
                '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
            }]
    });
    const env = (0, utility_1.envOverride)({
        'REST_COUNTRIES_TEST_NAME_ENTID': idmap,
        'REST_COUNTRIES_TEST_LIVE': 'FALSE',
        'REST_COUNTRIES_TEST_EXPLAIN': 'FALSE',
    });
    idmap = env['REST_COUNTRIES_TEST_NAME_ENTID'];
    const live = 'TRUE' === env.REST_COUNTRIES_TEST_LIVE;
    const transport = (0, live_runner_1.createLiveTransport)();
    if (live) {
        const rawIds = process.env['REST_COUNTRIES_TEST_NAME_ENTID'];
        idmap = rawIds && rawIds.trim() ? JSON.parse(rawIds) : {};
        if (!idmap || Array.isArray(idmap) || typeof idmap !== 'object') {
            throw new Error('Live ENTID must be a JSON object');
        }
        client = new __1.RestCountriesSDK(merge([
            // FIRST, so the generated fields below win: sdk-test-control.json's
            // test.client.options adds to the live client, it does not redirect it.
            (0, utility_1.liveClientOptions)(),
            {},
            // 'extra || {}', not a bare 'extra': struct.merge returns UNDEFINED when the
            // last entry is undefined, and basicSetup is normally called with no
            // argument at all - so a bare 'extra' silently discarded the apikey
            // and server values above and handed the SDK undefined. Harmless
            // while there was nothing in that object; not harmless now.
            extra || {},
            { system: { fetch: transport.fetch } }
        ]));
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
    };
    return setup;
}
//# sourceMappingURL=NameEntity.test.js.map
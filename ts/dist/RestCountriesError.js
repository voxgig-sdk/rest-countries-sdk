"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.RestCountriesError = void 0;
class RestCountriesError extends Error {
    isRestCountriesError = true;
    sdk = 'RestCountries';
    code;
    ctx;
    status = -1;
    // `err.notFound` rather than a magic number at every call site.
    get notFound() { return 404 === this.status; }
    constructor(code, msg, ctx) {
        super(msg);
        this.code = code;
        this.ctx = ctx;
    }
}
exports.RestCountriesError = RestCountriesError;
//# sourceMappingURL=RestCountriesError.js.map
import { Context } from './Context';
declare class RestCountriesError extends Error {
    isRestCountriesError: boolean;
    sdk: string;
    code: string;
    ctx: Context;
    status: number;
    get notFound(): boolean;
    constructor(code: string, msg: string, ctx: Context);
}
export { RestCountriesError };

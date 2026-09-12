import { AllEntity } from './entity/AllEntity';
import { AlphaEntity } from './entity/AlphaEntity';
import { CapitalEntity } from './entity/CapitalEntity';
import { NameEntity } from './entity/NameEntity';
export type * from './RestCountriesTypes';
import { inspect } from 'node:util';
import type { Context, Feature } from './types';
import { config } from './Config';
import { RestCountriesEntityBase } from './RestCountriesEntityBase';
import { Utility } from './utility/Utility';
import { BaseFeature } from './feature/base/BaseFeature';
declare const stdutil: Utility;
declare class RestCountriesSDK {
    _mode: string;
    _options: any;
    _utility: Utility;
    _features: Feature[];
    _rootctx: Context;
    constructor(options?: any);
    options(): any;
    utility(): any;
    prepare(fetchargs?: any): Promise<any>;
    direct(fetchargs?: any): Promise<Error | {
        ok: boolean;
        status: number;
        headers: any;
        data: any;
        err?: undefined;
    } | {
        ok: boolean;
        err: any;
        status?: undefined;
        headers?: undefined;
        data?: undefined;
    }>;
    _rawRequest(fetchargs?: any): Promise<Error | {
        ok: boolean;
        status: number;
        headers: any;
        data: any;
        err?: undefined;
    } | {
        ok: boolean;
        err: any;
        status?: undefined;
        headers?: undefined;
        data?: undefined;
    }>;
    graphql(query: string, variables?: any, ctrl?: any): Promise<any>;
    All(entopts?: Record<string, any>): AllEntity;
    Alpha(entopts?: Record<string, any>): AlphaEntity;
    Capital(entopts?: Record<string, any>): CapitalEntity;
    Name(entopts?: Record<string, any>): NameEntity;
    static test(testoptsarg?: any, sdkoptsarg?: any): RestCountriesSDK;
    tester(testopts?: any, sdkopts?: any): RestCountriesSDK;
    toJSON(): {
        name: string;
    };
    toString(): string;
    [inspect.custom](): string;
}
declare const SDK: typeof RestCountriesSDK;
export { stdutil, config, BaseFeature, RestCountriesEntityBase, RestCountriesSDK, SDK, };

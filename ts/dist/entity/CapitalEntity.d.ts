import { RestCountriesEntityBase } from '../RestCountriesEntityBase';
import type { RestCountriesSDK } from '../RestCountriesSDK';
import type { Control } from '../types';
import type { Capital, CapitalLoadMatch } from '../RestCountriesTypes';
declare class CapitalEntity extends RestCountriesEntityBase<Capital> {
    constructor(client: RestCountriesSDK, entopts: any);
    make(this: CapitalEntity): CapitalEntity;
    load(this: any, reqmatch?: CapitalLoadMatch, ctrl?: Control): Promise<CapitalEntity>;
}
export { CapitalEntity };

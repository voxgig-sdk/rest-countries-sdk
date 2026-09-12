import { RestCountriesEntityBase } from '../RestCountriesEntityBase';
import type { RestCountriesSDK } from '../RestCountriesSDK';
import type { Control } from '../types';
import type { Alpha, AlphaLoadMatch } from '../RestCountriesTypes';
declare class AlphaEntity extends RestCountriesEntityBase<Alpha> {
    constructor(client: RestCountriesSDK, entopts: any);
    make(this: AlphaEntity): AlphaEntity;
    load(this: any, reqmatch?: AlphaLoadMatch, ctrl?: Control): Promise<AlphaEntity>;
}
export { AlphaEntity };

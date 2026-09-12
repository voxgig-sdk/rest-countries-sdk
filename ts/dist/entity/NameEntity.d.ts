import { RestCountriesEntityBase } from '../RestCountriesEntityBase';
import type { RestCountriesSDK } from '../RestCountriesSDK';
import type { Control } from '../types';
import type { Name, NameLoadMatch } from '../RestCountriesTypes';
declare class NameEntity extends RestCountriesEntityBase<Name> {
    constructor(client: RestCountriesSDK, entopts: any);
    make(this: NameEntity): NameEntity;
    load(this: any, reqmatch?: NameLoadMatch, ctrl?: Control): Promise<NameEntity>;
}
export { NameEntity };

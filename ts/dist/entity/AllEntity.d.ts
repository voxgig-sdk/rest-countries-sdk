import { RestCountriesEntityBase } from '../RestCountriesEntityBase';
import type { RestCountriesSDK } from '../RestCountriesSDK';
import type { Control } from '../types';
import type { All, AllListMatch } from '../RestCountriesTypes';
declare class AllEntity extends RestCountriesEntityBase<All> {
    constructor(client: RestCountriesSDK, entopts: any);
    make(this: AllEntity): AllEntity;
    list(this: any, reqmatch?: AllListMatch, ctrl?: Control): Promise<AllEntity[]>;
}
export { AllEntity };

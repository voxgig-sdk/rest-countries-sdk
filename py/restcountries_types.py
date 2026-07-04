# Typed models for the RestCountries SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Field/param types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Do not edit by hand.

from __future__ import annotations

from dataclasses import dataclass
from typing import Optional, Any


@dataclass
class All:
    alt_spelling: Optional[list] = None
    area: Optional[float] = None
    border: Optional[list] = None
    capital: Optional[list] = None
    capital_info: Optional[dict] = None
    car: Optional[dict] = None
    cca2: Optional[str] = None
    cca3: Optional[str] = None
    ccn3: Optional[str] = None
    cioc: Optional[str] = None
    coat_of_arm: Optional[dict] = None
    continent: Optional[list] = None
    currency: Optional[dict] = None
    demonym: Optional[dict] = None
    fifa: Optional[str] = None
    flag: Optional[str] = None
    gini: Optional[dict] = None
    idd: Optional[dict] = None
    independent: Optional[bool] = None
    landlocked: Optional[bool] = None
    language: Optional[dict] = None
    latlng: Optional[list] = None
    map: Optional[dict] = None
    name: Optional[dict] = None
    population: Optional[int] = None
    postal_code: Optional[dict] = None
    region: Optional[str] = None
    start_of_week: Optional[str] = None
    status: Optional[str] = None
    subregion: Optional[str] = None
    timezone: Optional[list] = None
    tld: Optional[list] = None
    translation: Optional[dict] = None
    un_member: Optional[bool] = None


@dataclass
class AllListMatch:
    alt_spelling: Optional[list] = None
    area: Optional[float] = None
    border: Optional[list] = None
    capital: Optional[list] = None
    capital_info: Optional[dict] = None
    car: Optional[dict] = None
    cca2: Optional[str] = None
    cca3: Optional[str] = None
    ccn3: Optional[str] = None
    cioc: Optional[str] = None
    coat_of_arm: Optional[dict] = None
    continent: Optional[list] = None
    currency: Optional[dict] = None
    demonym: Optional[dict] = None
    fifa: Optional[str] = None
    flag: Optional[str] = None
    gini: Optional[dict] = None
    idd: Optional[dict] = None
    independent: Optional[bool] = None
    landlocked: Optional[bool] = None
    language: Optional[dict] = None
    latlng: Optional[list] = None
    map: Optional[dict] = None
    name: Optional[dict] = None
    population: Optional[int] = None
    postal_code: Optional[dict] = None
    region: Optional[str] = None
    start_of_week: Optional[str] = None
    status: Optional[str] = None
    subregion: Optional[str] = None
    timezone: Optional[list] = None
    tld: Optional[list] = None
    translation: Optional[dict] = None
    un_member: Optional[bool] = None


@dataclass
class Alpha:
    alt_spelling: Optional[list] = None
    area: Optional[float] = None
    border: Optional[list] = None
    capital: Optional[list] = None
    capital_info: Optional[dict] = None
    car: Optional[dict] = None
    cca2: Optional[str] = None
    cca3: Optional[str] = None
    ccn3: Optional[str] = None
    cioc: Optional[str] = None
    coat_of_arm: Optional[dict] = None
    continent: Optional[list] = None
    currency: Optional[dict] = None
    demonym: Optional[dict] = None
    fifa: Optional[str] = None
    flag: Optional[str] = None
    gini: Optional[dict] = None
    idd: Optional[dict] = None
    independent: Optional[bool] = None
    landlocked: Optional[bool] = None
    language: Optional[dict] = None
    latlng: Optional[list] = None
    map: Optional[dict] = None
    name: Optional[dict] = None
    population: Optional[int] = None
    postal_code: Optional[dict] = None
    region: Optional[str] = None
    start_of_week: Optional[str] = None
    status: Optional[str] = None
    subregion: Optional[str] = None
    timezone: Optional[list] = None
    tld: Optional[list] = None
    translation: Optional[dict] = None
    un_member: Optional[bool] = None


@dataclass
class AlphaLoadMatch:
    id: str


@dataclass
class Capital:
    alt_spelling: Optional[list] = None
    area: Optional[float] = None
    border: Optional[list] = None
    capital: Optional[list] = None
    capital_info: Optional[dict] = None
    car: Optional[dict] = None
    cca2: Optional[str] = None
    cca3: Optional[str] = None
    ccn3: Optional[str] = None
    cioc: Optional[str] = None
    coat_of_arm: Optional[dict] = None
    continent: Optional[list] = None
    currency: Optional[dict] = None
    demonym: Optional[dict] = None
    fifa: Optional[str] = None
    flag: Optional[str] = None
    gini: Optional[dict] = None
    idd: Optional[dict] = None
    independent: Optional[bool] = None
    landlocked: Optional[bool] = None
    language: Optional[dict] = None
    latlng: Optional[list] = None
    map: Optional[dict] = None
    name: Optional[dict] = None
    population: Optional[int] = None
    postal_code: Optional[dict] = None
    region: Optional[str] = None
    start_of_week: Optional[str] = None
    status: Optional[str] = None
    subregion: Optional[str] = None
    timezone: Optional[list] = None
    tld: Optional[list] = None
    translation: Optional[dict] = None
    un_member: Optional[bool] = None


@dataclass
class CapitalLoadMatch:
    id: str


@dataclass
class Name:
    alt_spelling: Optional[list] = None
    area: Optional[float] = None
    border: Optional[list] = None
    capital: Optional[list] = None
    capital_info: Optional[dict] = None
    car: Optional[dict] = None
    cca2: Optional[str] = None
    cca3: Optional[str] = None
    ccn3: Optional[str] = None
    cioc: Optional[str] = None
    coat_of_arm: Optional[dict] = None
    continent: Optional[list] = None
    currency: Optional[dict] = None
    demonym: Optional[dict] = None
    fifa: Optional[str] = None
    flag: Optional[str] = None
    gini: Optional[dict] = None
    idd: Optional[dict] = None
    independent: Optional[bool] = None
    landlocked: Optional[bool] = None
    language: Optional[dict] = None
    latlng: Optional[list] = None
    map: Optional[dict] = None
    name: Optional[dict] = None
    population: Optional[int] = None
    postal_code: Optional[dict] = None
    region: Optional[str] = None
    start_of_week: Optional[str] = None
    status: Optional[str] = None
    subregion: Optional[str] = None
    timezone: Optional[list] = None
    tld: Optional[list] = None
    translation: Optional[dict] = None
    un_member: Optional[bool] = None


@dataclass
class NameLoadMatch:
    id: str


# Typed models for the RestCountries SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Field/param types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Do not edit by hand.
#
# These are TypedDicts, not dataclasses: the SDK ops return/accept plain dicts
# at runtime, and a TypedDict IS a dict shape, so the types match the runtime.
# Optional (req:false) keys are modelled as TypedDict key-optionality
# (total=False), split into a required base + total=False subclass when a type
# has both required and optional keys.

from __future__ import annotations

from typing import TypedDict, Any


class All(TypedDict, total=False):
    alt_spelling: list
    area: float
    border: list
    capital: list
    capital_info: dict
    car: dict
    cca2: str
    cca3: str
    ccn3: str
    cioc: str
    coat_of_arm: dict
    continent: list
    currency: dict
    demonym: dict
    fifa: str
    flag: str
    gini: dict
    idd: dict
    independent: bool
    landlocked: bool
    language: dict
    latlng: list
    map: dict
    name: dict
    population: int
    postal_code: dict
    region: str
    start_of_week: str
    status: str
    subregion: str
    timezone: list
    tld: list
    translation: dict
    un_member: bool


class AllListMatch(TypedDict, total=False):
    alt_spelling: list
    area: float
    border: list
    capital: list
    capital_info: dict
    car: dict
    cca2: str
    cca3: str
    ccn3: str
    cioc: str
    coat_of_arm: dict
    continent: list
    currency: dict
    demonym: dict
    fifa: str
    flag: str
    gini: dict
    idd: dict
    independent: bool
    landlocked: bool
    language: dict
    latlng: list
    map: dict
    name: dict
    population: int
    postal_code: dict
    region: str
    start_of_week: str
    status: str
    subregion: str
    timezone: list
    tld: list
    translation: dict
    un_member: bool


class Alpha(TypedDict, total=False):
    alt_spelling: list
    area: float
    border: list
    capital: list
    capital_info: dict
    car: dict
    cca2: str
    cca3: str
    ccn3: str
    cioc: str
    coat_of_arm: dict
    continent: list
    currency: dict
    demonym: dict
    fifa: str
    flag: str
    gini: dict
    idd: dict
    independent: bool
    landlocked: bool
    language: dict
    latlng: list
    map: dict
    name: dict
    population: int
    postal_code: dict
    region: str
    start_of_week: str
    status: str
    subregion: str
    timezone: list
    tld: list
    translation: dict
    un_member: bool


class AlphaLoadMatch(TypedDict):
    id: str


class Capital(TypedDict, total=False):
    alt_spelling: list
    area: float
    border: list
    capital: list
    capital_info: dict
    car: dict
    cca2: str
    cca3: str
    ccn3: str
    cioc: str
    coat_of_arm: dict
    continent: list
    currency: dict
    demonym: dict
    fifa: str
    flag: str
    gini: dict
    idd: dict
    independent: bool
    landlocked: bool
    language: dict
    latlng: list
    map: dict
    name: dict
    population: int
    postal_code: dict
    region: str
    start_of_week: str
    status: str
    subregion: str
    timezone: list
    tld: list
    translation: dict
    un_member: bool


class CapitalLoadMatch(TypedDict):
    id: str


class Name(TypedDict, total=False):
    alt_spelling: list
    area: float
    border: list
    capital: list
    capital_info: dict
    car: dict
    cca2: str
    cca3: str
    ccn3: str
    cioc: str
    coat_of_arm: dict
    continent: list
    currency: dict
    demonym: dict
    fifa: str
    flag: str
    gini: dict
    idd: dict
    independent: bool
    landlocked: bool
    language: dict
    latlng: list
    map: dict
    name: dict
    population: int
    postal_code: dict
    region: str
    start_of_week: str
    status: str
    subregion: str
    timezone: list
    tld: list
    translation: dict
    un_member: bool


class NameLoadMatch(TypedDict):
    id: str

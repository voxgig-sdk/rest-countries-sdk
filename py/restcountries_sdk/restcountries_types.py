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
    altSpellings: list
    area: float
    borders: list
    capital: list
    capitalInfo: dict
    car: dict
    cca2: str
    cca3: str
    ccn3: str
    cioc: str
    coatOfArms: dict
    continents: list
    currencies: dict
    demonyms: dict
    fifa: str
    flag: str
    flags: dict
    gini: dict
    idd: dict
    independent: bool
    landlocked: bool
    languages: dict
    latlng: list
    maps: dict
    name: dict
    population: int
    postalCode: dict
    region: str
    startOfWeek: str
    status: str
    subregion: str
    timezones: list
    tld: list
    translations: dict
    unMember: bool


class AllListMatch(TypedDict, total=False):
    field: str


class Alpha(TypedDict, total=False):
    altSpellings: list
    area: float
    borders: list
    capital: list
    capitalInfo: dict
    car: dict
    cca2: str
    cca3: str
    ccn3: str
    cioc: str
    coatOfArms: dict
    continents: list
    currencies: dict
    demonyms: dict
    fifa: str
    flag: str
    flags: dict
    gini: dict
    id: str
    idd: dict
    independent: bool
    landlocked: bool
    languages: dict
    latlng: list
    maps: dict
    name: dict
    population: int
    postalCode: dict
    region: str
    startOfWeek: str
    status: str
    subregion: str
    timezones: list
    tld: list
    translations: dict
    unMember: bool


class AlphaLoadMatchRequired(TypedDict):
    id: str


class AlphaLoadMatch(AlphaLoadMatchRequired, total=False):
    field: str


class Capital(TypedDict, total=False):
    altSpellings: list
    area: float
    borders: list
    capital: list
    capitalInfo: dict
    car: dict
    cca2: str
    cca3: str
    ccn3: str
    cioc: str
    coatOfArms: dict
    continents: list
    currencies: dict
    demonyms: dict
    fifa: str
    flag: str
    flags: dict
    gini: dict
    id: str
    idd: dict
    independent: bool
    landlocked: bool
    languages: dict
    latlng: list
    maps: dict
    name: dict
    population: int
    postalCode: dict
    region: str
    startOfWeek: str
    status: str
    subregion: str
    timezones: list
    tld: list
    translations: dict
    unMember: bool


class CapitalLoadMatchRequired(TypedDict):
    id: str


class CapitalLoadMatch(CapitalLoadMatchRequired, total=False):
    field: str


class Name(TypedDict, total=False):
    altSpellings: list
    area: float
    borders: list
    capital: list
    capitalInfo: dict
    car: dict
    cca2: str
    cca3: str
    ccn3: str
    cioc: str
    coatOfArms: dict
    continents: list
    currencies: dict
    demonyms: dict
    fifa: str
    flag: str
    flags: dict
    gini: dict
    id: str
    idd: dict
    independent: bool
    landlocked: bool
    languages: dict
    latlng: list
    maps: dict
    name: dict
    population: int
    postalCode: dict
    region: str
    startOfWeek: str
    status: str
    subregion: str
    timezones: list
    tld: list
    translations: dict
    unMember: bool


class NameLoadMatchRequired(TypedDict):
    id: str


class NameLoadMatch(NameLoadMatchRequired, total=False):
    field: str
    full_text: bool

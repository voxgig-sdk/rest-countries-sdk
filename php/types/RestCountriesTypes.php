<?php
declare(strict_types=1);

// Typed models for the RestCountries SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
//
// These are documentation-grade value objects (PHP 8 typed properties),
// registered on the composer classmap autoload. The SDK boundary exchanges
// assoc-arrays; these classes name the shapes for tooling and typed callers.

/** All entity data model. */
class All
{
    public ?array $altSpellings = null;
    public ?float $area = null;
    public ?array $borders = null;
    public ?array $capital = null;
    public ?array $capitalInfo = null;
    public ?array $car = null;
    public ?string $cca2 = null;
    public ?string $cca3 = null;
    public ?string $ccn3 = null;
    public ?string $cioc = null;
    public ?array $coatOfArms = null;
    public ?array $continents = null;
    public ?array $currencies = null;
    public ?array $demonyms = null;
    public ?string $fifa = null;
    public ?string $flag = null;
    public ?array $flags = null;
    public ?array $gini = null;
    public ?array $idd = null;
    public ?bool $independent = null;
    public ?bool $landlocked = null;
    public ?array $languages = null;
    public ?array $latlng = null;
    public ?array $maps = null;
    public ?array $name = null;
    public ?int $population = null;
    public ?array $postalCode = null;
    public ?string $region = null;
    public ?string $startOfWeek = null;
    public ?string $status = null;
    public ?string $subregion = null;
    public ?array $timezones = null;
    public ?array $tld = null;
    public ?array $translations = null;
    public ?bool $unMember = null;
}

/** Request payload for All#list. */
class AllListMatch
{
    public ?array $altSpellings = null;
    public ?float $area = null;
    public ?array $borders = null;
    public ?array $capital = null;
    public ?array $capitalInfo = null;
    public ?array $car = null;
    public ?string $cca2 = null;
    public ?string $cca3 = null;
    public ?string $ccn3 = null;
    public ?string $cioc = null;
    public ?array $coatOfArms = null;
    public ?array $continents = null;
    public ?array $currencies = null;
    public ?array $demonyms = null;
    public ?string $fifa = null;
    public ?string $flag = null;
    public ?array $flags = null;
    public ?array $gini = null;
    public ?array $idd = null;
    public ?bool $independent = null;
    public ?bool $landlocked = null;
    public ?array $languages = null;
    public ?array $latlng = null;
    public ?array $maps = null;
    public ?array $name = null;
    public ?int $population = null;
    public ?array $postalCode = null;
    public ?string $region = null;
    public ?string $startOfWeek = null;
    public ?string $status = null;
    public ?string $subregion = null;
    public ?array $timezones = null;
    public ?array $tld = null;
    public ?array $translations = null;
    public ?bool $unMember = null;
}

/** Alpha entity data model. */
class Alpha
{
    public ?array $altSpellings = null;
    public ?float $area = null;
    public ?array $borders = null;
    public ?array $capital = null;
    public ?array $capitalInfo = null;
    public ?array $car = null;
    public ?string $cca2 = null;
    public ?string $cca3 = null;
    public ?string $ccn3 = null;
    public ?string $cioc = null;
    public ?array $coatOfArms = null;
    public ?array $continents = null;
    public ?array $currencies = null;
    public ?array $demonyms = null;
    public ?string $fifa = null;
    public ?string $flag = null;
    public ?array $flags = null;
    public ?array $gini = null;
    public ?string $id = null;
    public ?array $idd = null;
    public ?bool $independent = null;
    public ?bool $landlocked = null;
    public ?array $languages = null;
    public ?array $latlng = null;
    public ?array $maps = null;
    public ?array $name = null;
    public ?int $population = null;
    public ?array $postalCode = null;
    public ?string $region = null;
    public ?string $startOfWeek = null;
    public ?string $status = null;
    public ?string $subregion = null;
    public ?array $timezones = null;
    public ?array $tld = null;
    public ?array $translations = null;
    public ?bool $unMember = null;
}

/** Request payload for Alpha#load. */
class AlphaLoadMatch
{
    public string $id;
}

/** Capital entity data model. */
class Capital
{
    public ?array $altSpellings = null;
    public ?float $area = null;
    public ?array $borders = null;
    public ?array $capital = null;
    public ?array $capitalInfo = null;
    public ?array $car = null;
    public ?string $cca2 = null;
    public ?string $cca3 = null;
    public ?string $ccn3 = null;
    public ?string $cioc = null;
    public ?array $coatOfArms = null;
    public ?array $continents = null;
    public ?array $currencies = null;
    public ?array $demonyms = null;
    public ?string $fifa = null;
    public ?string $flag = null;
    public ?array $flags = null;
    public ?array $gini = null;
    public ?string $id = null;
    public ?array $idd = null;
    public ?bool $independent = null;
    public ?bool $landlocked = null;
    public ?array $languages = null;
    public ?array $latlng = null;
    public ?array $maps = null;
    public ?array $name = null;
    public ?int $population = null;
    public ?array $postalCode = null;
    public ?string $region = null;
    public ?string $startOfWeek = null;
    public ?string $status = null;
    public ?string $subregion = null;
    public ?array $timezones = null;
    public ?array $tld = null;
    public ?array $translations = null;
    public ?bool $unMember = null;
}

/** Request payload for Capital#load. */
class CapitalLoadMatch
{
    public string $id;
}

/** Name entity data model. */
class Name
{
    public ?array $altSpellings = null;
    public ?float $area = null;
    public ?array $borders = null;
    public ?array $capital = null;
    public ?array $capitalInfo = null;
    public ?array $car = null;
    public ?string $cca2 = null;
    public ?string $cca3 = null;
    public ?string $ccn3 = null;
    public ?string $cioc = null;
    public ?array $coatOfArms = null;
    public ?array $continents = null;
    public ?array $currencies = null;
    public ?array $demonyms = null;
    public ?string $fifa = null;
    public ?string $flag = null;
    public ?array $flags = null;
    public ?array $gini = null;
    public ?string $id = null;
    public ?array $idd = null;
    public ?bool $independent = null;
    public ?bool $landlocked = null;
    public ?array $languages = null;
    public ?array $latlng = null;
    public ?array $maps = null;
    public ?array $name = null;
    public ?int $population = null;
    public ?array $postalCode = null;
    public ?string $region = null;
    public ?string $startOfWeek = null;
    public ?string $status = null;
    public ?string $subregion = null;
    public ?array $timezones = null;
    public ?array $tld = null;
    public ?array $translations = null;
    public ?bool $unMember = null;
}

/** Request payload for Name#load. */
class NameLoadMatch
{
    public string $id;
}


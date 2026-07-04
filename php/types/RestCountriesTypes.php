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
    public ?array $alt_spelling = null;
    public ?float $area = null;
    public ?array $border = null;
    public ?array $capital = null;
    public ?array $capital_info = null;
    public ?array $car = null;
    public ?string $cca2 = null;
    public ?string $cca3 = null;
    public ?string $ccn3 = null;
    public ?string $cioc = null;
    public ?array $coat_of_arm = null;
    public ?array $continent = null;
    public ?array $currency = null;
    public ?array $demonym = null;
    public ?string $fifa = null;
    public ?string $flag = null;
    public ?array $gini = null;
    public ?array $idd = null;
    public ?bool $independent = null;
    public ?bool $landlocked = null;
    public ?array $language = null;
    public ?array $latlng = null;
    public ?array $map = null;
    public ?array $name = null;
    public ?int $population = null;
    public ?array $postal_code = null;
    public ?string $region = null;
    public ?string $start_of_week = null;
    public ?string $status = null;
    public ?string $subregion = null;
    public ?array $timezone = null;
    public ?array $tld = null;
    public ?array $translation = null;
    public ?bool $un_member = null;
}

/** Match filter for All#list (any subset of All fields). */
class AllListMatch
{
    public ?array $alt_spelling = null;
    public ?float $area = null;
    public ?array $border = null;
    public ?array $capital = null;
    public ?array $capital_info = null;
    public ?array $car = null;
    public ?string $cca2 = null;
    public ?string $cca3 = null;
    public ?string $ccn3 = null;
    public ?string $cioc = null;
    public ?array $coat_of_arm = null;
    public ?array $continent = null;
    public ?array $currency = null;
    public ?array $demonym = null;
    public ?string $fifa = null;
    public ?string $flag = null;
    public ?array $gini = null;
    public ?array $idd = null;
    public ?bool $independent = null;
    public ?bool $landlocked = null;
    public ?array $language = null;
    public ?array $latlng = null;
    public ?array $map = null;
    public ?array $name = null;
    public ?int $population = null;
    public ?array $postal_code = null;
    public ?string $region = null;
    public ?string $start_of_week = null;
    public ?string $status = null;
    public ?string $subregion = null;
    public ?array $timezone = null;
    public ?array $tld = null;
    public ?array $translation = null;
    public ?bool $un_member = null;
}

/** Alpha entity data model. */
class Alpha
{
    public ?array $alt_spelling = null;
    public ?float $area = null;
    public ?array $border = null;
    public ?array $capital = null;
    public ?array $capital_info = null;
    public ?array $car = null;
    public ?string $cca2 = null;
    public ?string $cca3 = null;
    public ?string $ccn3 = null;
    public ?string $cioc = null;
    public ?array $coat_of_arm = null;
    public ?array $continent = null;
    public ?array $currency = null;
    public ?array $demonym = null;
    public ?string $fifa = null;
    public ?string $flag = null;
    public ?array $gini = null;
    public ?array $idd = null;
    public ?bool $independent = null;
    public ?bool $landlocked = null;
    public ?array $language = null;
    public ?array $latlng = null;
    public ?array $map = null;
    public ?array $name = null;
    public ?int $population = null;
    public ?array $postal_code = null;
    public ?string $region = null;
    public ?string $start_of_week = null;
    public ?string $status = null;
    public ?string $subregion = null;
    public ?array $timezone = null;
    public ?array $tld = null;
    public ?array $translation = null;
    public ?bool $un_member = null;
}

/** Request payload for Alpha#load. */
class AlphaLoadMatch
{
    public string $id;
}

/** Capital entity data model. */
class Capital
{
    public ?array $alt_spelling = null;
    public ?float $area = null;
    public ?array $border = null;
    public ?array $capital = null;
    public ?array $capital_info = null;
    public ?array $car = null;
    public ?string $cca2 = null;
    public ?string $cca3 = null;
    public ?string $ccn3 = null;
    public ?string $cioc = null;
    public ?array $coat_of_arm = null;
    public ?array $continent = null;
    public ?array $currency = null;
    public ?array $demonym = null;
    public ?string $fifa = null;
    public ?string $flag = null;
    public ?array $gini = null;
    public ?array $idd = null;
    public ?bool $independent = null;
    public ?bool $landlocked = null;
    public ?array $language = null;
    public ?array $latlng = null;
    public ?array $map = null;
    public ?array $name = null;
    public ?int $population = null;
    public ?array $postal_code = null;
    public ?string $region = null;
    public ?string $start_of_week = null;
    public ?string $status = null;
    public ?string $subregion = null;
    public ?array $timezone = null;
    public ?array $tld = null;
    public ?array $translation = null;
    public ?bool $un_member = null;
}

/** Request payload for Capital#load. */
class CapitalLoadMatch
{
    public string $id;
}

/** Name entity data model. */
class Name
{
    public ?array $alt_spelling = null;
    public ?float $area = null;
    public ?array $border = null;
    public ?array $capital = null;
    public ?array $capital_info = null;
    public ?array $car = null;
    public ?string $cca2 = null;
    public ?string $cca3 = null;
    public ?string $ccn3 = null;
    public ?string $cioc = null;
    public ?array $coat_of_arm = null;
    public ?array $continent = null;
    public ?array $currency = null;
    public ?array $demonym = null;
    public ?string $fifa = null;
    public ?string $flag = null;
    public ?array $gini = null;
    public ?array $idd = null;
    public ?bool $independent = null;
    public ?bool $landlocked = null;
    public ?array $language = null;
    public ?array $latlng = null;
    public ?array $map = null;
    public ?array $name = null;
    public ?int $population = null;
    public ?array $postal_code = null;
    public ?string $region = null;
    public ?string $start_of_week = null;
    public ?string $status = null;
    public ?string $subregion = null;
    public ?array $timezone = null;
    public ?array $tld = null;
    public ?array $translation = null;
    public ?bool $un_member = null;
}

/** Request payload for Name#load. */
class NameLoadMatch
{
    public string $id;
}


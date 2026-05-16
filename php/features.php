<?php
declare(strict_types=1);

// RestCountries SDK feature factory

require_once __DIR__ . '/feature/BaseFeature.php';
require_once __DIR__ . '/feature/TestFeature.php';


class RestCountriesFeatures
{
    public static function make_feature(string $name)
    {
        switch ($name) {
            case "base":
                return new RestCountriesBaseFeature();
            case "test":
                return new RestCountriesTestFeature();
            default:
                return new RestCountriesBaseFeature();
        }
    }
}

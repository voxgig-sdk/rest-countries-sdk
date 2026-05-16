<?php
declare(strict_types=1);

// RestCountries SDK utility: make_context

require_once __DIR__ . '/../core/Context.php';

class RestCountriesMakeContext
{
    public static function call(array $ctxmap, ?RestCountriesContext $basectx): RestCountriesContext
    {
        return new RestCountriesContext($ctxmap, $basectx);
    }
}

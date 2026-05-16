<?php
declare(strict_types=1);

// RestCountries SDK utility: feature_add

class RestCountriesFeatureAdd
{
    public static function call(RestCountriesContext $ctx, mixed $f): void
    {
        $ctx->client->features[] = $f;
    }
}

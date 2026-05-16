<?php
declare(strict_types=1);

// RestCountries SDK utility: prepare_body

class RestCountriesPrepareBody
{
    public static function call(RestCountriesContext $ctx): mixed
    {
        if ($ctx->op->input === 'data') {
            return ($ctx->utility->transform_request)($ctx);
        }
        return null;
    }
}

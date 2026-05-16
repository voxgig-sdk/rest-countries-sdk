<?php
declare(strict_types=1);

// RestCountries SDK utility: result_body

class RestCountriesResultBody
{
    public static function call(RestCountriesContext $ctx): ?RestCountriesResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result && $response && $response->json_func && $response->body) {
            $result->body = ($response->json_func)();
        }
        return $result;
    }
}

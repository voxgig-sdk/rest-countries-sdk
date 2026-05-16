<?php
declare(strict_types=1);

// RestCountries SDK utility: result_headers

class RestCountriesResultHeaders
{
    public static function call(RestCountriesContext $ctx): ?RestCountriesResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result) {
            if ($response && is_array($response->headers)) {
                $result->headers = $response->headers;
            } else {
                $result->headers = [];
            }
        }
        return $result;
    }
}

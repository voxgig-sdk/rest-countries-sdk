<?php
declare(strict_types=1);

// RestCountries SDK exists test

require_once __DIR__ . '/../restcountries_sdk.php';

use PHPUnit\Framework\TestCase;

class ExistsTest extends TestCase
{
    public function test_create_test_sdk(): void
    {
        $testsdk = RestCountriesSDK::test(null, null);
        $this->assertNotNull($testsdk);
    }
}

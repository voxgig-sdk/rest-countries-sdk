# RestCountries SDK exists test

import pytest
from restcountries_sdk import RestCountriesSDK


class TestExists:

    def test_should_create_test_sdk(self):
        testsdk = RestCountriesSDK.test(None, None)
        assert testsdk is not None

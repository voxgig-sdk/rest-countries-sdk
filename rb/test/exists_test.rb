# RestCountries SDK exists test

require "minitest/autorun"
require_relative "../RestCountries_sdk"

class ExistsTest < Minitest::Test
  def test_create_test_sdk
    testsdk = RestCountriesSDK.test(nil, nil)
    assert !testsdk.nil?
  end
end

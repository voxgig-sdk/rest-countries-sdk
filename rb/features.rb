# RestCountries SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/ratelimit_feature'
require_relative 'feature/retry_feature'
require_relative 'feature/test_feature'
require_relative 'feature/timeout_feature'


module RestCountriesFeatures
  def self.make_feature(name)
    case name
    when "base"
      RestCountriesBaseFeature.new
    when "ratelimit"
      RestCountriesRatelimitFeature.new
    when "retry"
      RestCountriesRetryFeature.new
    when "test"
      RestCountriesTestFeature.new
    when "timeout"
      RestCountriesTimeoutFeature.new
    else
      RestCountriesBaseFeature.new
    end
  end
end

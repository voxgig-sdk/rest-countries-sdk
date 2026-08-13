# RestCountries SDK utility registration
require_relative '../core/utility_type'
require_relative 'clean'
require_relative 'done'
require_relative 'make_error'
require_relative 'feature_add'
require_relative 'feature_hook'
require_relative 'feature_init'
require_relative 'fetcher'
require_relative 'make_fetch_def'
require_relative 'make_context'
require_relative 'make_options'
require_relative 'make_request'
require_relative 'make_response'
require_relative 'make_result'
require_relative 'make_point'
require_relative 'make_spec'
require_relative 'make_url'
require_relative 'param'
require_relative 'prepare_auth'
require_relative 'prepare_body'
require_relative 'prepare_headers'
require_relative 'prepare_method'
require_relative 'prepare_params'
require_relative 'prepare_path'
require_relative 'prepare_query'
require_relative 'graphql'
require_relative 'result_basic'
require_relative 'result_body'
require_relative 'result_headers'
require_relative 'transform_request'
require_relative 'transform_response'

RestCountriesUtility.registrar = ->(u) {
  u.clean = RestCountriesUtilities::Clean
  u.done = RestCountriesUtilities::Done
  u.make_error = RestCountriesUtilities::MakeError
  u.feature_add = RestCountriesUtilities::FeatureAdd
  u.feature_hook = RestCountriesUtilities::FeatureHook
  u.feature_init = RestCountriesUtilities::FeatureInit
  u.fetcher = RestCountriesUtilities::Fetcher
  u.make_fetch_def = RestCountriesUtilities::MakeFetchDef
  u.make_context = RestCountriesUtilities::MakeContext
  u.make_options = RestCountriesUtilities::MakeOptions
  u.make_request = RestCountriesUtilities::MakeRequest
  u.make_response = RestCountriesUtilities::MakeResponse
  u.make_result = RestCountriesUtilities::MakeResult
  u.make_point = RestCountriesUtilities::MakePoint
  u.make_spec = RestCountriesUtilities::MakeSpec
  u.make_url = RestCountriesUtilities::MakeUrl
  u.param = RestCountriesUtilities::Param
  u.prepare_auth = RestCountriesUtilities::PrepareAuth
  u.prepare_body = RestCountriesUtilities::PrepareBody
  u.prepare_headers = RestCountriesUtilities::PrepareHeaders
  u.prepare_method = RestCountriesUtilities::PrepareMethod
  u.prepare_params = RestCountriesUtilities::PrepareParams
  u.prepare_path = RestCountriesUtilities::PreparePath
  u.prepare_query = RestCountriesUtilities::PrepareQuery
  u.graphql_body = RestCountriesUtilities::GraphqlBody
  u.graphql_errors = RestCountriesUtilities::GraphqlErrors
  u.result_basic = RestCountriesUtilities::ResultBasic
  u.result_body = RestCountriesUtilities::ResultBody
  u.result_headers = RestCountriesUtilities::ResultHeaders
  u.transform_request = RestCountriesUtilities::TransformRequest
  u.transform_response = RestCountriesUtilities::TransformResponse
}

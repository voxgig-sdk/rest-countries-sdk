# RestCountries SDK utility: make_context
require_relative '../core/context'
module RestCountriesUtilities
  MakeContext = ->(ctxmap, basectx) {
    RestCountriesContext.new(ctxmap, basectx)
  }
end

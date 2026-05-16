# RestCountries SDK utility: feature_add
module RestCountriesUtilities
  FeatureAdd = ->(ctx, f) {
    ctx.client.features << f
  }
end

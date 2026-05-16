# RestCountries SDK feature factory

from feature.base_feature import RestCountriesBaseFeature
from feature.test_feature import RestCountriesTestFeature


def _make_feature(name):
    features = {
        "base": lambda: RestCountriesBaseFeature(),
        "test": lambda: RestCountriesTestFeature(),
    }
    factory = features.get(name)
    if factory is not None:
        return factory()
    return features["base"]()

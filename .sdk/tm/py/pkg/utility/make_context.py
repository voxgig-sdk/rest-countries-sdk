# RestCountries SDK utility: make_context

from projectname_sdk.core.context import RestCountriesContext


def make_context_util(ctxmap, basectx):
    return RestCountriesContext(ctxmap, basectx)

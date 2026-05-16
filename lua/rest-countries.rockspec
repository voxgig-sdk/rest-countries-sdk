package = "voxgig-sdk-rest-countries"
version = "0.0-1"
source = {
  url = "git://github.com/voxgig-sdk/rest-countries-sdk.git"
}
description = {
  summary = "RestCountries SDK for Lua",
  license = "MIT"
}
dependencies = {
  "lua >= 5.3",
  "dkjson >= 2.5",
  "dkjson >= 2.5",
}
build = {
  type = "builtin",
  modules = {
    ["rest-countries_sdk"] = "rest-countries_sdk.lua",
    ["config"] = "config.lua",
    ["features"] = "features.lua",
  }
}

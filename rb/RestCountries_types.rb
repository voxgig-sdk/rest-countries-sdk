# frozen_string_literal: true

# Typed models for the RestCountries SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Member types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Ruby types are unenforced; these YARD
# annotations document the shapes. Do not edit by hand.

# All entity data model.
#
# @!attribute [rw] altSpellings
#   @return [Array, nil]
#
# @!attribute [rw] area
#   @return [Float, nil]
#
# @!attribute [rw] borders
#   @return [Array, nil]
#
# @!attribute [rw] capital
#   @return [Array, nil]
#
# @!attribute [rw] capitalInfo
#   @return [Hash, nil]
#
# @!attribute [rw] car
#   @return [Hash, nil]
#
# @!attribute [rw] cca2
#   @return [String, nil]
#
# @!attribute [rw] cca3
#   @return [String, nil]
#
# @!attribute [rw] ccn3
#   @return [String, nil]
#
# @!attribute [rw] cioc
#   @return [String, nil]
#
# @!attribute [rw] coatOfArms
#   @return [Hash, nil]
#
# @!attribute [rw] continents
#   @return [Array, nil]
#
# @!attribute [rw] currencies
#   @return [Hash, nil]
#
# @!attribute [rw] demonyms
#   @return [Hash, nil]
#
# @!attribute [rw] fifa
#   @return [String, nil]
#
# @!attribute [rw] flag
#   @return [String, nil]
#
# @!attribute [rw] flags
#   @return [Hash, nil]
#
# @!attribute [rw] gini
#   @return [Hash, nil]
#
# @!attribute [rw] idd
#   @return [Hash, nil]
#
# @!attribute [rw] independent
#   @return [Boolean, nil]
#
# @!attribute [rw] landlocked
#   @return [Boolean, nil]
#
# @!attribute [rw] languages
#   @return [Hash, nil]
#
# @!attribute [rw] latlng
#   @return [Array, nil]
#
# @!attribute [rw] maps
#   @return [Hash, nil]
#
# @!attribute [rw] name
#   @return [Hash, nil]
#
# @!attribute [rw] population
#   @return [Integer, nil]
#
# @!attribute [rw] postalCode
#   @return [Hash, nil]
#
# @!attribute [rw] region
#   @return [String, nil]
#
# @!attribute [rw] startOfWeek
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
#
# @!attribute [rw] subregion
#   @return [String, nil]
#
# @!attribute [rw] timezones
#   @return [Array, nil]
#
# @!attribute [rw] tld
#   @return [Array, nil]
#
# @!attribute [rw] translations
#   @return [Hash, nil]
#
# @!attribute [rw] unMember
#   @return [Boolean, nil]
All = Struct.new(
  :altSpellings,
  :area,
  :borders,
  :capital,
  :capitalInfo,
  :car,
  :cca2,
  :cca3,
  :ccn3,
  :cioc,
  :coatOfArms,
  :continents,
  :currencies,
  :demonyms,
  :fifa,
  :flag,
  :flags,
  :gini,
  :idd,
  :independent,
  :landlocked,
  :languages,
  :latlng,
  :maps,
  :name,
  :population,
  :postalCode,
  :region,
  :startOfWeek,
  :status,
  :subregion,
  :timezones,
  :tld,
  :translations,
  :unMember,
  keyword_init: true
)

# Request payload for All#list.
#
# @!attribute [rw] altSpellings
#   @return [Array, nil]
#
# @!attribute [rw] area
#   @return [Float, nil]
#
# @!attribute [rw] borders
#   @return [Array, nil]
#
# @!attribute [rw] capital
#   @return [Array, nil]
#
# @!attribute [rw] capitalInfo
#   @return [Hash, nil]
#
# @!attribute [rw] car
#   @return [Hash, nil]
#
# @!attribute [rw] cca2
#   @return [String, nil]
#
# @!attribute [rw] cca3
#   @return [String, nil]
#
# @!attribute [rw] ccn3
#   @return [String, nil]
#
# @!attribute [rw] cioc
#   @return [String, nil]
#
# @!attribute [rw] coatOfArms
#   @return [Hash, nil]
#
# @!attribute [rw] continents
#   @return [Array, nil]
#
# @!attribute [rw] currencies
#   @return [Hash, nil]
#
# @!attribute [rw] demonyms
#   @return [Hash, nil]
#
# @!attribute [rw] fifa
#   @return [String, nil]
#
# @!attribute [rw] flag
#   @return [String, nil]
#
# @!attribute [rw] flags
#   @return [Hash, nil]
#
# @!attribute [rw] gini
#   @return [Hash, nil]
#
# @!attribute [rw] idd
#   @return [Hash, nil]
#
# @!attribute [rw] independent
#   @return [Boolean, nil]
#
# @!attribute [rw] landlocked
#   @return [Boolean, nil]
#
# @!attribute [rw] languages
#   @return [Hash, nil]
#
# @!attribute [rw] latlng
#   @return [Array, nil]
#
# @!attribute [rw] maps
#   @return [Hash, nil]
#
# @!attribute [rw] name
#   @return [Hash, nil]
#
# @!attribute [rw] population
#   @return [Integer, nil]
#
# @!attribute [rw] postalCode
#   @return [Hash, nil]
#
# @!attribute [rw] region
#   @return [String, nil]
#
# @!attribute [rw] startOfWeek
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
#
# @!attribute [rw] subregion
#   @return [String, nil]
#
# @!attribute [rw] timezones
#   @return [Array, nil]
#
# @!attribute [rw] tld
#   @return [Array, nil]
#
# @!attribute [rw] translations
#   @return [Hash, nil]
#
# @!attribute [rw] unMember
#   @return [Boolean, nil]
AllListMatch = Struct.new(
  :altSpellings,
  :area,
  :borders,
  :capital,
  :capitalInfo,
  :car,
  :cca2,
  :cca3,
  :ccn3,
  :cioc,
  :coatOfArms,
  :continents,
  :currencies,
  :demonyms,
  :fifa,
  :flag,
  :flags,
  :gini,
  :idd,
  :independent,
  :landlocked,
  :languages,
  :latlng,
  :maps,
  :name,
  :population,
  :postalCode,
  :region,
  :startOfWeek,
  :status,
  :subregion,
  :timezones,
  :tld,
  :translations,
  :unMember,
  keyword_init: true
)

# Alpha entity data model.
#
# @!attribute [rw] altSpellings
#   @return [Array, nil]
#
# @!attribute [rw] area
#   @return [Float, nil]
#
# @!attribute [rw] borders
#   @return [Array, nil]
#
# @!attribute [rw] capital
#   @return [Array, nil]
#
# @!attribute [rw] capitalInfo
#   @return [Hash, nil]
#
# @!attribute [rw] car
#   @return [Hash, nil]
#
# @!attribute [rw] cca2
#   @return [String, nil]
#
# @!attribute [rw] cca3
#   @return [String, nil]
#
# @!attribute [rw] ccn3
#   @return [String, nil]
#
# @!attribute [rw] cioc
#   @return [String, nil]
#
# @!attribute [rw] coatOfArms
#   @return [Hash, nil]
#
# @!attribute [rw] continents
#   @return [Array, nil]
#
# @!attribute [rw] currencies
#   @return [Hash, nil]
#
# @!attribute [rw] demonyms
#   @return [Hash, nil]
#
# @!attribute [rw] fifa
#   @return [String, nil]
#
# @!attribute [rw] flag
#   @return [String, nil]
#
# @!attribute [rw] flags
#   @return [Hash, nil]
#
# @!attribute [rw] gini
#   @return [Hash, nil]
#
# @!attribute [rw] id
#   @return [String, nil]
#
# @!attribute [rw] idd
#   @return [Hash, nil]
#
# @!attribute [rw] independent
#   @return [Boolean, nil]
#
# @!attribute [rw] landlocked
#   @return [Boolean, nil]
#
# @!attribute [rw] languages
#   @return [Hash, nil]
#
# @!attribute [rw] latlng
#   @return [Array, nil]
#
# @!attribute [rw] maps
#   @return [Hash, nil]
#
# @!attribute [rw] name
#   @return [Hash, nil]
#
# @!attribute [rw] population
#   @return [Integer, nil]
#
# @!attribute [rw] postalCode
#   @return [Hash, nil]
#
# @!attribute [rw] region
#   @return [String, nil]
#
# @!attribute [rw] startOfWeek
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
#
# @!attribute [rw] subregion
#   @return [String, nil]
#
# @!attribute [rw] timezones
#   @return [Array, nil]
#
# @!attribute [rw] tld
#   @return [Array, nil]
#
# @!attribute [rw] translations
#   @return [Hash, nil]
#
# @!attribute [rw] unMember
#   @return [Boolean, nil]
Alpha = Struct.new(
  :altSpellings,
  :area,
  :borders,
  :capital,
  :capitalInfo,
  :car,
  :cca2,
  :cca3,
  :ccn3,
  :cioc,
  :coatOfArms,
  :continents,
  :currencies,
  :demonyms,
  :fifa,
  :flag,
  :flags,
  :gini,
  :id,
  :idd,
  :independent,
  :landlocked,
  :languages,
  :latlng,
  :maps,
  :name,
  :population,
  :postalCode,
  :region,
  :startOfWeek,
  :status,
  :subregion,
  :timezones,
  :tld,
  :translations,
  :unMember,
  keyword_init: true
)

# Request payload for Alpha#load.
#
# @!attribute [rw] id
#   @return [String]
AlphaLoadMatch = Struct.new(
  :id,
  keyword_init: true
)

# Capital entity data model.
#
# @!attribute [rw] altSpellings
#   @return [Array, nil]
#
# @!attribute [rw] area
#   @return [Float, nil]
#
# @!attribute [rw] borders
#   @return [Array, nil]
#
# @!attribute [rw] capital
#   @return [Array, nil]
#
# @!attribute [rw] capitalInfo
#   @return [Hash, nil]
#
# @!attribute [rw] car
#   @return [Hash, nil]
#
# @!attribute [rw] cca2
#   @return [String, nil]
#
# @!attribute [rw] cca3
#   @return [String, nil]
#
# @!attribute [rw] ccn3
#   @return [String, nil]
#
# @!attribute [rw] cioc
#   @return [String, nil]
#
# @!attribute [rw] coatOfArms
#   @return [Hash, nil]
#
# @!attribute [rw] continents
#   @return [Array, nil]
#
# @!attribute [rw] currencies
#   @return [Hash, nil]
#
# @!attribute [rw] demonyms
#   @return [Hash, nil]
#
# @!attribute [rw] fifa
#   @return [String, nil]
#
# @!attribute [rw] flag
#   @return [String, nil]
#
# @!attribute [rw] flags
#   @return [Hash, nil]
#
# @!attribute [rw] gini
#   @return [Hash, nil]
#
# @!attribute [rw] id
#   @return [String, nil]
#
# @!attribute [rw] idd
#   @return [Hash, nil]
#
# @!attribute [rw] independent
#   @return [Boolean, nil]
#
# @!attribute [rw] landlocked
#   @return [Boolean, nil]
#
# @!attribute [rw] languages
#   @return [Hash, nil]
#
# @!attribute [rw] latlng
#   @return [Array, nil]
#
# @!attribute [rw] maps
#   @return [Hash, nil]
#
# @!attribute [rw] name
#   @return [Hash, nil]
#
# @!attribute [rw] population
#   @return [Integer, nil]
#
# @!attribute [rw] postalCode
#   @return [Hash, nil]
#
# @!attribute [rw] region
#   @return [String, nil]
#
# @!attribute [rw] startOfWeek
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
#
# @!attribute [rw] subregion
#   @return [String, nil]
#
# @!attribute [rw] timezones
#   @return [Array, nil]
#
# @!attribute [rw] tld
#   @return [Array, nil]
#
# @!attribute [rw] translations
#   @return [Hash, nil]
#
# @!attribute [rw] unMember
#   @return [Boolean, nil]
Capital = Struct.new(
  :altSpellings,
  :area,
  :borders,
  :capital,
  :capitalInfo,
  :car,
  :cca2,
  :cca3,
  :ccn3,
  :cioc,
  :coatOfArms,
  :continents,
  :currencies,
  :demonyms,
  :fifa,
  :flag,
  :flags,
  :gini,
  :id,
  :idd,
  :independent,
  :landlocked,
  :languages,
  :latlng,
  :maps,
  :name,
  :population,
  :postalCode,
  :region,
  :startOfWeek,
  :status,
  :subregion,
  :timezones,
  :tld,
  :translations,
  :unMember,
  keyword_init: true
)

# Request payload for Capital#load.
#
# @!attribute [rw] id
#   @return [String]
CapitalLoadMatch = Struct.new(
  :id,
  keyword_init: true
)

# Name entity data model.
#
# @!attribute [rw] altSpellings
#   @return [Array, nil]
#
# @!attribute [rw] area
#   @return [Float, nil]
#
# @!attribute [rw] borders
#   @return [Array, nil]
#
# @!attribute [rw] capital
#   @return [Array, nil]
#
# @!attribute [rw] capitalInfo
#   @return [Hash, nil]
#
# @!attribute [rw] car
#   @return [Hash, nil]
#
# @!attribute [rw] cca2
#   @return [String, nil]
#
# @!attribute [rw] cca3
#   @return [String, nil]
#
# @!attribute [rw] ccn3
#   @return [String, nil]
#
# @!attribute [rw] cioc
#   @return [String, nil]
#
# @!attribute [rw] coatOfArms
#   @return [Hash, nil]
#
# @!attribute [rw] continents
#   @return [Array, nil]
#
# @!attribute [rw] currencies
#   @return [Hash, nil]
#
# @!attribute [rw] demonyms
#   @return [Hash, nil]
#
# @!attribute [rw] fifa
#   @return [String, nil]
#
# @!attribute [rw] flag
#   @return [String, nil]
#
# @!attribute [rw] flags
#   @return [Hash, nil]
#
# @!attribute [rw] gini
#   @return [Hash, nil]
#
# @!attribute [rw] id
#   @return [String, nil]
#
# @!attribute [rw] idd
#   @return [Hash, nil]
#
# @!attribute [rw] independent
#   @return [Boolean, nil]
#
# @!attribute [rw] landlocked
#   @return [Boolean, nil]
#
# @!attribute [rw] languages
#   @return [Hash, nil]
#
# @!attribute [rw] latlng
#   @return [Array, nil]
#
# @!attribute [rw] maps
#   @return [Hash, nil]
#
# @!attribute [rw] name
#   @return [Hash, nil]
#
# @!attribute [rw] population
#   @return [Integer, nil]
#
# @!attribute [rw] postalCode
#   @return [Hash, nil]
#
# @!attribute [rw] region
#   @return [String, nil]
#
# @!attribute [rw] startOfWeek
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
#
# @!attribute [rw] subregion
#   @return [String, nil]
#
# @!attribute [rw] timezones
#   @return [Array, nil]
#
# @!attribute [rw] tld
#   @return [Array, nil]
#
# @!attribute [rw] translations
#   @return [Hash, nil]
#
# @!attribute [rw] unMember
#   @return [Boolean, nil]
Name = Struct.new(
  :altSpellings,
  :area,
  :borders,
  :capital,
  :capitalInfo,
  :car,
  :cca2,
  :cca3,
  :ccn3,
  :cioc,
  :coatOfArms,
  :continents,
  :currencies,
  :demonyms,
  :fifa,
  :flag,
  :flags,
  :gini,
  :id,
  :idd,
  :independent,
  :landlocked,
  :languages,
  :latlng,
  :maps,
  :name,
  :population,
  :postalCode,
  :region,
  :startOfWeek,
  :status,
  :subregion,
  :timezones,
  :tld,
  :translations,
  :unMember,
  keyword_init: true
)

# Request payload for Name#load.
#
# @!attribute [rw] id
#   @return [String]
NameLoadMatch = Struct.new(
  :id,
  keyword_init: true
)


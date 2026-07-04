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
# @!attribute [rw] alt_spelling
#   @return [Array, nil]
#
# @!attribute [rw] area
#   @return [Float, nil]
#
# @!attribute [rw] border
#   @return [Array, nil]
#
# @!attribute [rw] capital
#   @return [Array, nil]
#
# @!attribute [rw] capital_info
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
# @!attribute [rw] coat_of_arm
#   @return [Hash, nil]
#
# @!attribute [rw] continent
#   @return [Array, nil]
#
# @!attribute [rw] currency
#   @return [Hash, nil]
#
# @!attribute [rw] demonym
#   @return [Hash, nil]
#
# @!attribute [rw] fifa
#   @return [String, nil]
#
# @!attribute [rw] flag
#   @return [String, nil]
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
# @!attribute [rw] language
#   @return [Hash, nil]
#
# @!attribute [rw] latlng
#   @return [Array, nil]
#
# @!attribute [rw] map
#   @return [Hash, nil]
#
# @!attribute [rw] name
#   @return [Hash, nil]
#
# @!attribute [rw] population
#   @return [Integer, nil]
#
# @!attribute [rw] postal_code
#   @return [Hash, nil]
#
# @!attribute [rw] region
#   @return [String, nil]
#
# @!attribute [rw] start_of_week
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
#
# @!attribute [rw] subregion
#   @return [String, nil]
#
# @!attribute [rw] timezone
#   @return [Array, nil]
#
# @!attribute [rw] tld
#   @return [Array, nil]
#
# @!attribute [rw] translation
#   @return [Hash, nil]
#
# @!attribute [rw] un_member
#   @return [Boolean, nil]
All = Struct.new(
  :alt_spelling,
  :area,
  :border,
  :capital,
  :capital_info,
  :car,
  :cca2,
  :cca3,
  :ccn3,
  :cioc,
  :coat_of_arm,
  :continent,
  :currency,
  :demonym,
  :fifa,
  :flag,
  :gini,
  :idd,
  :independent,
  :landlocked,
  :language,
  :latlng,
  :map,
  :name,
  :population,
  :postal_code,
  :region,
  :start_of_week,
  :status,
  :subregion,
  :timezone,
  :tld,
  :translation,
  :un_member,
  keyword_init: true
)

# Match filter for All#list (any subset of All fields).
#
# @!attribute [rw] alt_spelling
#   @return [Array, nil]
#
# @!attribute [rw] area
#   @return [Float, nil]
#
# @!attribute [rw] border
#   @return [Array, nil]
#
# @!attribute [rw] capital
#   @return [Array, nil]
#
# @!attribute [rw] capital_info
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
# @!attribute [rw] coat_of_arm
#   @return [Hash, nil]
#
# @!attribute [rw] continent
#   @return [Array, nil]
#
# @!attribute [rw] currency
#   @return [Hash, nil]
#
# @!attribute [rw] demonym
#   @return [Hash, nil]
#
# @!attribute [rw] fifa
#   @return [String, nil]
#
# @!attribute [rw] flag
#   @return [String, nil]
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
# @!attribute [rw] language
#   @return [Hash, nil]
#
# @!attribute [rw] latlng
#   @return [Array, nil]
#
# @!attribute [rw] map
#   @return [Hash, nil]
#
# @!attribute [rw] name
#   @return [Hash, nil]
#
# @!attribute [rw] population
#   @return [Integer, nil]
#
# @!attribute [rw] postal_code
#   @return [Hash, nil]
#
# @!attribute [rw] region
#   @return [String, nil]
#
# @!attribute [rw] start_of_week
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
#
# @!attribute [rw] subregion
#   @return [String, nil]
#
# @!attribute [rw] timezone
#   @return [Array, nil]
#
# @!attribute [rw] tld
#   @return [Array, nil]
#
# @!attribute [rw] translation
#   @return [Hash, nil]
#
# @!attribute [rw] un_member
#   @return [Boolean, nil]
AllListMatch = Struct.new(
  :alt_spelling,
  :area,
  :border,
  :capital,
  :capital_info,
  :car,
  :cca2,
  :cca3,
  :ccn3,
  :cioc,
  :coat_of_arm,
  :continent,
  :currency,
  :demonym,
  :fifa,
  :flag,
  :gini,
  :idd,
  :independent,
  :landlocked,
  :language,
  :latlng,
  :map,
  :name,
  :population,
  :postal_code,
  :region,
  :start_of_week,
  :status,
  :subregion,
  :timezone,
  :tld,
  :translation,
  :un_member,
  keyword_init: true
)

# Alpha entity data model.
#
# @!attribute [rw] alt_spelling
#   @return [Array, nil]
#
# @!attribute [rw] area
#   @return [Float, nil]
#
# @!attribute [rw] border
#   @return [Array, nil]
#
# @!attribute [rw] capital
#   @return [Array, nil]
#
# @!attribute [rw] capital_info
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
# @!attribute [rw] coat_of_arm
#   @return [Hash, nil]
#
# @!attribute [rw] continent
#   @return [Array, nil]
#
# @!attribute [rw] currency
#   @return [Hash, nil]
#
# @!attribute [rw] demonym
#   @return [Hash, nil]
#
# @!attribute [rw] fifa
#   @return [String, nil]
#
# @!attribute [rw] flag
#   @return [String, nil]
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
# @!attribute [rw] language
#   @return [Hash, nil]
#
# @!attribute [rw] latlng
#   @return [Array, nil]
#
# @!attribute [rw] map
#   @return [Hash, nil]
#
# @!attribute [rw] name
#   @return [Hash, nil]
#
# @!attribute [rw] population
#   @return [Integer, nil]
#
# @!attribute [rw] postal_code
#   @return [Hash, nil]
#
# @!attribute [rw] region
#   @return [String, nil]
#
# @!attribute [rw] start_of_week
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
#
# @!attribute [rw] subregion
#   @return [String, nil]
#
# @!attribute [rw] timezone
#   @return [Array, nil]
#
# @!attribute [rw] tld
#   @return [Array, nil]
#
# @!attribute [rw] translation
#   @return [Hash, nil]
#
# @!attribute [rw] un_member
#   @return [Boolean, nil]
Alpha = Struct.new(
  :alt_spelling,
  :area,
  :border,
  :capital,
  :capital_info,
  :car,
  :cca2,
  :cca3,
  :ccn3,
  :cioc,
  :coat_of_arm,
  :continent,
  :currency,
  :demonym,
  :fifa,
  :flag,
  :gini,
  :idd,
  :independent,
  :landlocked,
  :language,
  :latlng,
  :map,
  :name,
  :population,
  :postal_code,
  :region,
  :start_of_week,
  :status,
  :subregion,
  :timezone,
  :tld,
  :translation,
  :un_member,
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
# @!attribute [rw] alt_spelling
#   @return [Array, nil]
#
# @!attribute [rw] area
#   @return [Float, nil]
#
# @!attribute [rw] border
#   @return [Array, nil]
#
# @!attribute [rw] capital
#   @return [Array, nil]
#
# @!attribute [rw] capital_info
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
# @!attribute [rw] coat_of_arm
#   @return [Hash, nil]
#
# @!attribute [rw] continent
#   @return [Array, nil]
#
# @!attribute [rw] currency
#   @return [Hash, nil]
#
# @!attribute [rw] demonym
#   @return [Hash, nil]
#
# @!attribute [rw] fifa
#   @return [String, nil]
#
# @!attribute [rw] flag
#   @return [String, nil]
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
# @!attribute [rw] language
#   @return [Hash, nil]
#
# @!attribute [rw] latlng
#   @return [Array, nil]
#
# @!attribute [rw] map
#   @return [Hash, nil]
#
# @!attribute [rw] name
#   @return [Hash, nil]
#
# @!attribute [rw] population
#   @return [Integer, nil]
#
# @!attribute [rw] postal_code
#   @return [Hash, nil]
#
# @!attribute [rw] region
#   @return [String, nil]
#
# @!attribute [rw] start_of_week
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
#
# @!attribute [rw] subregion
#   @return [String, nil]
#
# @!attribute [rw] timezone
#   @return [Array, nil]
#
# @!attribute [rw] tld
#   @return [Array, nil]
#
# @!attribute [rw] translation
#   @return [Hash, nil]
#
# @!attribute [rw] un_member
#   @return [Boolean, nil]
Capital = Struct.new(
  :alt_spelling,
  :area,
  :border,
  :capital,
  :capital_info,
  :car,
  :cca2,
  :cca3,
  :ccn3,
  :cioc,
  :coat_of_arm,
  :continent,
  :currency,
  :demonym,
  :fifa,
  :flag,
  :gini,
  :idd,
  :independent,
  :landlocked,
  :language,
  :latlng,
  :map,
  :name,
  :population,
  :postal_code,
  :region,
  :start_of_week,
  :status,
  :subregion,
  :timezone,
  :tld,
  :translation,
  :un_member,
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
# @!attribute [rw] alt_spelling
#   @return [Array, nil]
#
# @!attribute [rw] area
#   @return [Float, nil]
#
# @!attribute [rw] border
#   @return [Array, nil]
#
# @!attribute [rw] capital
#   @return [Array, nil]
#
# @!attribute [rw] capital_info
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
# @!attribute [rw] coat_of_arm
#   @return [Hash, nil]
#
# @!attribute [rw] continent
#   @return [Array, nil]
#
# @!attribute [rw] currency
#   @return [Hash, nil]
#
# @!attribute [rw] demonym
#   @return [Hash, nil]
#
# @!attribute [rw] fifa
#   @return [String, nil]
#
# @!attribute [rw] flag
#   @return [String, nil]
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
# @!attribute [rw] language
#   @return [Hash, nil]
#
# @!attribute [rw] latlng
#   @return [Array, nil]
#
# @!attribute [rw] map
#   @return [Hash, nil]
#
# @!attribute [rw] name
#   @return [Hash, nil]
#
# @!attribute [rw] population
#   @return [Integer, nil]
#
# @!attribute [rw] postal_code
#   @return [Hash, nil]
#
# @!attribute [rw] region
#   @return [String, nil]
#
# @!attribute [rw] start_of_week
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
#
# @!attribute [rw] subregion
#   @return [String, nil]
#
# @!attribute [rw] timezone
#   @return [Array, nil]
#
# @!attribute [rw] tld
#   @return [Array, nil]
#
# @!attribute [rw] translation
#   @return [Hash, nil]
#
# @!attribute [rw] un_member
#   @return [Boolean, nil]
Name = Struct.new(
  :alt_spelling,
  :area,
  :border,
  :capital,
  :capital_info,
  :car,
  :cca2,
  :cca3,
  :ccn3,
  :cioc,
  :coat_of_arm,
  :continent,
  :currency,
  :demonym,
  :fifa,
  :flag,
  :gini,
  :idd,
  :independent,
  :landlocked,
  :language,
  :latlng,
  :map,
  :name,
  :population,
  :postal_code,
  :region,
  :start_of_week,
  :status,
  :subregion,
  :timezone,
  :tld,
  :translation,
  :un_member,
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


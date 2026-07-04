// Typed models for the RestCountries SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
package entity

import "encoding/json"

// All is the typed data model for the all entity.
type All struct {
	AltSpelling *[]any `json:"alt_spelling,omitempty"`
	Area *float64 `json:"area,omitempty"`
	Border *[]any `json:"border,omitempty"`
	Capital *[]any `json:"capital,omitempty"`
	CapitalInfo *map[string]any `json:"capital_info,omitempty"`
	Car *map[string]any `json:"car,omitempty"`
	Cca2 *string `json:"cca2,omitempty"`
	Cca3 *string `json:"cca3,omitempty"`
	Ccn3 *string `json:"ccn3,omitempty"`
	Cioc *string `json:"cioc,omitempty"`
	CoatOfArm *map[string]any `json:"coat_of_arm,omitempty"`
	Continent *[]any `json:"continent,omitempty"`
	Currency *map[string]any `json:"currency,omitempty"`
	Demonym *map[string]any `json:"demonym,omitempty"`
	Fifa *string `json:"fifa,omitempty"`
	Flag *string `json:"flag,omitempty"`
	Gini *map[string]any `json:"gini,omitempty"`
	Idd *map[string]any `json:"idd,omitempty"`
	Independent *bool `json:"independent,omitempty"`
	Landlocked *bool `json:"landlocked,omitempty"`
	Language *map[string]any `json:"language,omitempty"`
	Latlng *[]any `json:"latlng,omitempty"`
	Map *map[string]any `json:"map,omitempty"`
	Name *map[string]any `json:"name,omitempty"`
	Population *int `json:"population,omitempty"`
	PostalCode *map[string]any `json:"postal_code,omitempty"`
	Region *string `json:"region,omitempty"`
	StartOfWeek *string `json:"start_of_week,omitempty"`
	Status *string `json:"status,omitempty"`
	Subregion *string `json:"subregion,omitempty"`
	Timezone *[]any `json:"timezone,omitempty"`
	Tld *[]any `json:"tld,omitempty"`
	Translation *map[string]any `json:"translation,omitempty"`
	UnMember *bool `json:"un_member,omitempty"`
}

// AllListMatch mirrors the all fields as an all-optional match
// filter (Go analog of Partial<All>).
type AllListMatch struct {
	AltSpelling *[]any `json:"alt_spelling,omitempty"`
	Area *float64 `json:"area,omitempty"`
	Border *[]any `json:"border,omitempty"`
	Capital *[]any `json:"capital,omitempty"`
	CapitalInfo *map[string]any `json:"capital_info,omitempty"`
	Car *map[string]any `json:"car,omitempty"`
	Cca2 *string `json:"cca2,omitempty"`
	Cca3 *string `json:"cca3,omitempty"`
	Ccn3 *string `json:"ccn3,omitempty"`
	Cioc *string `json:"cioc,omitempty"`
	CoatOfArm *map[string]any `json:"coat_of_arm,omitempty"`
	Continent *[]any `json:"continent,omitempty"`
	Currency *map[string]any `json:"currency,omitempty"`
	Demonym *map[string]any `json:"demonym,omitempty"`
	Fifa *string `json:"fifa,omitempty"`
	Flag *string `json:"flag,omitempty"`
	Gini *map[string]any `json:"gini,omitempty"`
	Idd *map[string]any `json:"idd,omitempty"`
	Independent *bool `json:"independent,omitempty"`
	Landlocked *bool `json:"landlocked,omitempty"`
	Language *map[string]any `json:"language,omitempty"`
	Latlng *[]any `json:"latlng,omitempty"`
	Map *map[string]any `json:"map,omitempty"`
	Name *map[string]any `json:"name,omitempty"`
	Population *int `json:"population,omitempty"`
	PostalCode *map[string]any `json:"postal_code,omitempty"`
	Region *string `json:"region,omitempty"`
	StartOfWeek *string `json:"start_of_week,omitempty"`
	Status *string `json:"status,omitempty"`
	Subregion *string `json:"subregion,omitempty"`
	Timezone *[]any `json:"timezone,omitempty"`
	Tld *[]any `json:"tld,omitempty"`
	Translation *map[string]any `json:"translation,omitempty"`
	UnMember *bool `json:"un_member,omitempty"`
}

// Alpha is the typed data model for the alpha entity.
type Alpha struct {
	AltSpelling *[]any `json:"alt_spelling,omitempty"`
	Area *float64 `json:"area,omitempty"`
	Border *[]any `json:"border,omitempty"`
	Capital *[]any `json:"capital,omitempty"`
	CapitalInfo *map[string]any `json:"capital_info,omitempty"`
	Car *map[string]any `json:"car,omitempty"`
	Cca2 *string `json:"cca2,omitempty"`
	Cca3 *string `json:"cca3,omitempty"`
	Ccn3 *string `json:"ccn3,omitempty"`
	Cioc *string `json:"cioc,omitempty"`
	CoatOfArm *map[string]any `json:"coat_of_arm,omitempty"`
	Continent *[]any `json:"continent,omitempty"`
	Currency *map[string]any `json:"currency,omitempty"`
	Demonym *map[string]any `json:"demonym,omitempty"`
	Fifa *string `json:"fifa,omitempty"`
	Flag *string `json:"flag,omitempty"`
	Gini *map[string]any `json:"gini,omitempty"`
	Idd *map[string]any `json:"idd,omitempty"`
	Independent *bool `json:"independent,omitempty"`
	Landlocked *bool `json:"landlocked,omitempty"`
	Language *map[string]any `json:"language,omitempty"`
	Latlng *[]any `json:"latlng,omitempty"`
	Map *map[string]any `json:"map,omitempty"`
	Name *map[string]any `json:"name,omitempty"`
	Population *int `json:"population,omitempty"`
	PostalCode *map[string]any `json:"postal_code,omitempty"`
	Region *string `json:"region,omitempty"`
	StartOfWeek *string `json:"start_of_week,omitempty"`
	Status *string `json:"status,omitempty"`
	Subregion *string `json:"subregion,omitempty"`
	Timezone *[]any `json:"timezone,omitempty"`
	Tld *[]any `json:"tld,omitempty"`
	Translation *map[string]any `json:"translation,omitempty"`
	UnMember *bool `json:"un_member,omitempty"`
}

// AlphaLoadMatch is the typed request payload for Alpha.LoadTyped.
type AlphaLoadMatch struct {
	Id string `json:"id"`
}

// Capital is the typed data model for the capital entity.
type Capital struct {
	AltSpelling *[]any `json:"alt_spelling,omitempty"`
	Area *float64 `json:"area,omitempty"`
	Border *[]any `json:"border,omitempty"`
	Capital *[]any `json:"capital,omitempty"`
	CapitalInfo *map[string]any `json:"capital_info,omitempty"`
	Car *map[string]any `json:"car,omitempty"`
	Cca2 *string `json:"cca2,omitempty"`
	Cca3 *string `json:"cca3,omitempty"`
	Ccn3 *string `json:"ccn3,omitempty"`
	Cioc *string `json:"cioc,omitempty"`
	CoatOfArm *map[string]any `json:"coat_of_arm,omitempty"`
	Continent *[]any `json:"continent,omitempty"`
	Currency *map[string]any `json:"currency,omitempty"`
	Demonym *map[string]any `json:"demonym,omitempty"`
	Fifa *string `json:"fifa,omitempty"`
	Flag *string `json:"flag,omitempty"`
	Gini *map[string]any `json:"gini,omitempty"`
	Idd *map[string]any `json:"idd,omitempty"`
	Independent *bool `json:"independent,omitempty"`
	Landlocked *bool `json:"landlocked,omitempty"`
	Language *map[string]any `json:"language,omitempty"`
	Latlng *[]any `json:"latlng,omitempty"`
	Map *map[string]any `json:"map,omitempty"`
	Name *map[string]any `json:"name,omitempty"`
	Population *int `json:"population,omitempty"`
	PostalCode *map[string]any `json:"postal_code,omitempty"`
	Region *string `json:"region,omitempty"`
	StartOfWeek *string `json:"start_of_week,omitempty"`
	Status *string `json:"status,omitempty"`
	Subregion *string `json:"subregion,omitempty"`
	Timezone *[]any `json:"timezone,omitempty"`
	Tld *[]any `json:"tld,omitempty"`
	Translation *map[string]any `json:"translation,omitempty"`
	UnMember *bool `json:"un_member,omitempty"`
}

// CapitalLoadMatch is the typed request payload for Capital.LoadTyped.
type CapitalLoadMatch struct {
	Id string `json:"id"`
}

// Name is the typed data model for the name entity.
type Name struct {
	AltSpelling *[]any `json:"alt_spelling,omitempty"`
	Area *float64 `json:"area,omitempty"`
	Border *[]any `json:"border,omitempty"`
	Capital *[]any `json:"capital,omitempty"`
	CapitalInfo *map[string]any `json:"capital_info,omitempty"`
	Car *map[string]any `json:"car,omitempty"`
	Cca2 *string `json:"cca2,omitempty"`
	Cca3 *string `json:"cca3,omitempty"`
	Ccn3 *string `json:"ccn3,omitempty"`
	Cioc *string `json:"cioc,omitempty"`
	CoatOfArm *map[string]any `json:"coat_of_arm,omitempty"`
	Continent *[]any `json:"continent,omitempty"`
	Currency *map[string]any `json:"currency,omitempty"`
	Demonym *map[string]any `json:"demonym,omitempty"`
	Fifa *string `json:"fifa,omitempty"`
	Flag *string `json:"flag,omitempty"`
	Gini *map[string]any `json:"gini,omitempty"`
	Idd *map[string]any `json:"idd,omitempty"`
	Independent *bool `json:"independent,omitempty"`
	Landlocked *bool `json:"landlocked,omitempty"`
	Language *map[string]any `json:"language,omitempty"`
	Latlng *[]any `json:"latlng,omitempty"`
	Map *map[string]any `json:"map,omitempty"`
	Name *map[string]any `json:"name,omitempty"`
	Population *int `json:"population,omitempty"`
	PostalCode *map[string]any `json:"postal_code,omitempty"`
	Region *string `json:"region,omitempty"`
	StartOfWeek *string `json:"start_of_week,omitempty"`
	Status *string `json:"status,omitempty"`
	Subregion *string `json:"subregion,omitempty"`
	Timezone *[]any `json:"timezone,omitempty"`
	Tld *[]any `json:"tld,omitempty"`
	Translation *map[string]any `json:"translation,omitempty"`
	UnMember *bool `json:"un_member,omitempty"`
}

// NameLoadMatch is the typed request payload for Name.LoadTyped.
type NameLoadMatch struct {
	Id string `json:"id"`
}

// asMap turns a typed request/data struct into the map[string]any the
// runtime op pipeline consumes, honouring the json tags above.
func asMap(v any) map[string]any {
	out := map[string]any{}
	b, err := json.Marshal(v)
	if err != nil {
		return out
	}
	_ = json.Unmarshal(b, &out)
	return out
}

// typedFrom decodes a runtime value (a map[string]any produced by the op
// pipeline) into a typed model T via a JSON round-trip. On any error it
// returns the zero value of T; the op's own (value, error) tuple carries the
// real error.
func typedFrom[T any](v any) T {
	var out T
	if v == nil {
		return out
	}
	b, err := json.Marshal(v)
	if err != nil {
		return out
	}
	_ = json.Unmarshal(b, &out)
	return out
}

// typedSliceFrom decodes a runtime list value ([]any of maps) into a typed
// slice []T via a JSON round-trip, for list ops.
func typedSliceFrom[T any](v any) []T {
	var out []T
	if v == nil {
		return out
	}
	b, err := json.Marshal(v)
	if err != nil {
		return out
	}
	_ = json.Unmarshal(b, &out)
	return out
}

// Typed models for the RestCountries SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
package entity

import (
	"encoding/json"

	"github.com/voxgig-sdk/rest-countries-sdk/go/core"
)

// All is the typed data model for the all entity.
type All struct {
	AltSpellings *[]any `json:"altSpellings,omitempty"`
	Area *float64 `json:"area,omitempty"`
	Borders *[]any `json:"borders,omitempty"`
	Capital *[]any `json:"capital,omitempty"`
	CapitalInfo *map[string]any `json:"capitalInfo,omitempty"`
	Car *map[string]any `json:"car,omitempty"`
	Cca2 *string `json:"cca2,omitempty"`
	Cca3 *string `json:"cca3,omitempty"`
	Ccn3 *string `json:"ccn3,omitempty"`
	Cioc *string `json:"cioc,omitempty"`
	CoatOfArms *map[string]any `json:"coatOfArms,omitempty"`
	Continents *[]any `json:"continents,omitempty"`
	Currencies *map[string]any `json:"currencies,omitempty"`
	Demonyms *map[string]any `json:"demonyms,omitempty"`
	Fifa *string `json:"fifa,omitempty"`
	Flag *string `json:"flag,omitempty"`
	Flags *map[string]any `json:"flags,omitempty"`
	Gini *map[string]any `json:"gini,omitempty"`
	Idd *map[string]any `json:"idd,omitempty"`
	Independent *bool `json:"independent,omitempty"`
	Landlocked *bool `json:"landlocked,omitempty"`
	Languages *map[string]any `json:"languages,omitempty"`
	Latlng *[]any `json:"latlng,omitempty"`
	Maps *map[string]any `json:"maps,omitempty"`
	Name *map[string]any `json:"name,omitempty"`
	Population *int `json:"population,omitempty"`
	PostalCode *map[string]any `json:"postalCode,omitempty"`
	Region *string `json:"region,omitempty"`
	StartOfWeek *string `json:"startOfWeek,omitempty"`
	Status *string `json:"status,omitempty"`
	Subregion *string `json:"subregion,omitempty"`
	Timezones *[]any `json:"timezones,omitempty"`
	Tld *[]any `json:"tld,omitempty"`
	Translations *map[string]any `json:"translations,omitempty"`
	UnMember *bool `json:"unMember,omitempty"`
}

// AllListMatch is the typed request payload for All.ListTyped.
type AllListMatch struct {
	AltSpellings *[]any `json:"altSpellings,omitempty"`
	Area *float64 `json:"area,omitempty"`
	Borders *[]any `json:"borders,omitempty"`
	Capital *[]any `json:"capital,omitempty"`
	CapitalInfo *map[string]any `json:"capitalInfo,omitempty"`
	Car *map[string]any `json:"car,omitempty"`
	Cca2 *string `json:"cca2,omitempty"`
	Cca3 *string `json:"cca3,omitempty"`
	Ccn3 *string `json:"ccn3,omitempty"`
	Cioc *string `json:"cioc,omitempty"`
	CoatOfArms *map[string]any `json:"coatOfArms,omitempty"`
	Continents *[]any `json:"continents,omitempty"`
	Currencies *map[string]any `json:"currencies,omitempty"`
	Demonyms *map[string]any `json:"demonyms,omitempty"`
	Fifa *string `json:"fifa,omitempty"`
	Flag *string `json:"flag,omitempty"`
	Flags *map[string]any `json:"flags,omitempty"`
	Gini *map[string]any `json:"gini,omitempty"`
	Idd *map[string]any `json:"idd,omitempty"`
	Independent *bool `json:"independent,omitempty"`
	Landlocked *bool `json:"landlocked,omitempty"`
	Languages *map[string]any `json:"languages,omitempty"`
	Latlng *[]any `json:"latlng,omitempty"`
	Maps *map[string]any `json:"maps,omitempty"`
	Name *map[string]any `json:"name,omitempty"`
	Population *int `json:"population,omitempty"`
	PostalCode *map[string]any `json:"postalCode,omitempty"`
	Region *string `json:"region,omitempty"`
	StartOfWeek *string `json:"startOfWeek,omitempty"`
	Status *string `json:"status,omitempty"`
	Subregion *string `json:"subregion,omitempty"`
	Timezones *[]any `json:"timezones,omitempty"`
	Tld *[]any `json:"tld,omitempty"`
	Translations *map[string]any `json:"translations,omitempty"`
	UnMember *bool `json:"unMember,omitempty"`
}

// Alpha is the typed data model for the alpha entity.
type Alpha struct {
	AltSpellings *[]any `json:"altSpellings,omitempty"`
	Area *float64 `json:"area,omitempty"`
	Borders *[]any `json:"borders,omitempty"`
	Capital *[]any `json:"capital,omitempty"`
	CapitalInfo *map[string]any `json:"capitalInfo,omitempty"`
	Car *map[string]any `json:"car,omitempty"`
	Cca2 *string `json:"cca2,omitempty"`
	Cca3 *string `json:"cca3,omitempty"`
	Ccn3 *string `json:"ccn3,omitempty"`
	Cioc *string `json:"cioc,omitempty"`
	CoatOfArms *map[string]any `json:"coatOfArms,omitempty"`
	Continents *[]any `json:"continents,omitempty"`
	Currencies *map[string]any `json:"currencies,omitempty"`
	Demonyms *map[string]any `json:"demonyms,omitempty"`
	Fifa *string `json:"fifa,omitempty"`
	Flag *string `json:"flag,omitempty"`
	Flags *map[string]any `json:"flags,omitempty"`
	Gini *map[string]any `json:"gini,omitempty"`
	Id *string `json:"id,omitempty"`
	Idd *map[string]any `json:"idd,omitempty"`
	Independent *bool `json:"independent,omitempty"`
	Landlocked *bool `json:"landlocked,omitempty"`
	Languages *map[string]any `json:"languages,omitempty"`
	Latlng *[]any `json:"latlng,omitempty"`
	Maps *map[string]any `json:"maps,omitempty"`
	Name *map[string]any `json:"name,omitempty"`
	Population *int `json:"population,omitempty"`
	PostalCode *map[string]any `json:"postalCode,omitempty"`
	Region *string `json:"region,omitempty"`
	StartOfWeek *string `json:"startOfWeek,omitempty"`
	Status *string `json:"status,omitempty"`
	Subregion *string `json:"subregion,omitempty"`
	Timezones *[]any `json:"timezones,omitempty"`
	Tld *[]any `json:"tld,omitempty"`
	Translations *map[string]any `json:"translations,omitempty"`
	UnMember *bool `json:"unMember,omitempty"`
}

// AlphaLoadMatch is the typed request payload for Alpha.LoadTyped.
type AlphaLoadMatch struct {
	Id string `json:"id"`
}

// Capital is the typed data model for the capital entity.
type Capital struct {
	AltSpellings *[]any `json:"altSpellings,omitempty"`
	Area *float64 `json:"area,omitempty"`
	Borders *[]any `json:"borders,omitempty"`
	Capital *[]any `json:"capital,omitempty"`
	CapitalInfo *map[string]any `json:"capitalInfo,omitempty"`
	Car *map[string]any `json:"car,omitempty"`
	Cca2 *string `json:"cca2,omitempty"`
	Cca3 *string `json:"cca3,omitempty"`
	Ccn3 *string `json:"ccn3,omitempty"`
	Cioc *string `json:"cioc,omitempty"`
	CoatOfArms *map[string]any `json:"coatOfArms,omitempty"`
	Continents *[]any `json:"continents,omitempty"`
	Currencies *map[string]any `json:"currencies,omitempty"`
	Demonyms *map[string]any `json:"demonyms,omitempty"`
	Fifa *string `json:"fifa,omitempty"`
	Flag *string `json:"flag,omitempty"`
	Flags *map[string]any `json:"flags,omitempty"`
	Gini *map[string]any `json:"gini,omitempty"`
	Id *string `json:"id,omitempty"`
	Idd *map[string]any `json:"idd,omitempty"`
	Independent *bool `json:"independent,omitempty"`
	Landlocked *bool `json:"landlocked,omitempty"`
	Languages *map[string]any `json:"languages,omitempty"`
	Latlng *[]any `json:"latlng,omitempty"`
	Maps *map[string]any `json:"maps,omitempty"`
	Name *map[string]any `json:"name,omitempty"`
	Population *int `json:"population,omitempty"`
	PostalCode *map[string]any `json:"postalCode,omitempty"`
	Region *string `json:"region,omitempty"`
	StartOfWeek *string `json:"startOfWeek,omitempty"`
	Status *string `json:"status,omitempty"`
	Subregion *string `json:"subregion,omitempty"`
	Timezones *[]any `json:"timezones,omitempty"`
	Tld *[]any `json:"tld,omitempty"`
	Translations *map[string]any `json:"translations,omitempty"`
	UnMember *bool `json:"unMember,omitempty"`
}

// CapitalLoadMatch is the typed request payload for Capital.LoadTyped.
type CapitalLoadMatch struct {
	Id string `json:"id"`
}

// Name is the typed data model for the name entity.
type Name struct {
	AltSpellings *[]any `json:"altSpellings,omitempty"`
	Area *float64 `json:"area,omitempty"`
	Borders *[]any `json:"borders,omitempty"`
	Capital *[]any `json:"capital,omitempty"`
	CapitalInfo *map[string]any `json:"capitalInfo,omitempty"`
	Car *map[string]any `json:"car,omitempty"`
	Cca2 *string `json:"cca2,omitempty"`
	Cca3 *string `json:"cca3,omitempty"`
	Ccn3 *string `json:"ccn3,omitempty"`
	Cioc *string `json:"cioc,omitempty"`
	CoatOfArms *map[string]any `json:"coatOfArms,omitempty"`
	Continents *[]any `json:"continents,omitempty"`
	Currencies *map[string]any `json:"currencies,omitempty"`
	Demonyms *map[string]any `json:"demonyms,omitempty"`
	Fifa *string `json:"fifa,omitempty"`
	Flag *string `json:"flag,omitempty"`
	Flags *map[string]any `json:"flags,omitempty"`
	Gini *map[string]any `json:"gini,omitempty"`
	Id *string `json:"id,omitempty"`
	Idd *map[string]any `json:"idd,omitempty"`
	Independent *bool `json:"independent,omitempty"`
	Landlocked *bool `json:"landlocked,omitempty"`
	Languages *map[string]any `json:"languages,omitempty"`
	Latlng *[]any `json:"latlng,omitempty"`
	Maps *map[string]any `json:"maps,omitempty"`
	Name *map[string]any `json:"name,omitempty"`
	Population *int `json:"population,omitempty"`
	PostalCode *map[string]any `json:"postalCode,omitempty"`
	Region *string `json:"region,omitempty"`
	StartOfWeek *string `json:"startOfWeek,omitempty"`
	Status *string `json:"status,omitempty"`
	Subregion *string `json:"subregion,omitempty"`
	Timezones *[]any `json:"timezones,omitempty"`
	Tld *[]any `json:"tld,omitempty"`
	Translations *map[string]any `json:"translations,omitempty"`
	UnMember *bool `json:"unMember,omitempty"`
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

// entityData unwraps an entity to its data map.
//
// Operations resolve to the ENTITY, not the raw data (see AGENTS.md), and an
// entity's fields are UNEXPORTED — marshalling one directly yields `{}`, so
// every typed accessor would silently hand back a zero-valued struct. The
// typed boundary therefore takes the data hop first.
func entityData(v any) any {
	if ent, ok := v.(core.Entity); ok {
		return ent.Data()
	}
	return v
}

// typedFrom decodes a runtime value (an entity, or the map[string]any the op
// pipeline produced) into a typed model T via a JSON round-trip. On any error
// it returns the zero value of T; the op's own (value, error) tuple carries
// the real error.
func typedFrom[T any](v any) T {
	var out T
	v = entityData(v)
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

// typedSliceFrom decodes a runtime list value into a typed slice []T via a
// JSON round-trip, for list ops. `list` resolves to a slice of ENTITY
// instances, so each element takes the data hop.
func typedSliceFrom[T any](v any) []T {
	var out []T
	if v == nil {
		return out
	}
	if list, ok := v.([]any); ok {
		unwrapped := make([]any, 0, len(list))
		for _, item := range list {
			unwrapped = append(unwrapped, entityData(item))
		}
		v = unwrapped
	}
	b, err := json.Marshal(v)
	if err != nil {
		return out
	}
	_ = json.Unmarshal(b, &out)
	return out
}

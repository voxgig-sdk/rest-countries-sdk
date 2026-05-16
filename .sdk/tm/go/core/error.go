package core

type RestCountriesError struct {
	IsRestCountriesError bool
	Sdk              string
	Code             string
	Msg              string
	Ctx              *Context
	Result           any
	Spec             any
}

func NewRestCountriesError(code string, msg string, ctx *Context) *RestCountriesError {
	return &RestCountriesError{
		IsRestCountriesError: true,
		Sdk:              "RestCountries",
		Code:             code,
		Msg:              msg,
		Ctx:              ctx,
	}
}

func (e *RestCountriesError) Error() string {
	return e.Msg
}

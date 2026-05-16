
import { Context } from './Context'


class RestCountriesError extends Error {

  isRestCountriesError = true

  sdk = 'RestCountries'

  code: string
  ctx: Context

  constructor(code: string, msg: string, ctx: Context) {
    super(msg)
    this.code = code
    this.ctx = ctx
  }

}

export {
  RestCountriesError
}


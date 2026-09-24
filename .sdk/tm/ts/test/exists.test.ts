
import { test, describe } from 'node:test'
import { equal } from 'node:assert'


import { RestCountriesSDK } from '..'


describe('exists', async () => {

  test('test-mode', () => {
    const testsdk = RestCountriesSDK.test()
    equal(testsdk instanceof RestCountriesSDK, true,
      'RestCountriesSDK.test() must return a client synchronously')
  })

})

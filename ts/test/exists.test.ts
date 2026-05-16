
import { test, describe } from 'node:test'
import { equal } from 'node:assert'


import { RestCountriesSDK } from '..'


describe('exists', async () => {

  test('test-mode', async () => {
    const testsdk = await RestCountriesSDK.test()
    equal(null !== testsdk, true)
  })

})

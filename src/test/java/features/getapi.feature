Feature: GET API feature

Scenario: get user details
Given url baseUrl+'/public/v1/users'
And path '5374669'
When method GET
Then status 200
* print response
* def jsonResponse = response
* print jsonResponse
* def actName = jsonResponse.data.name
* def actId = jsonResponse.data.id
* def actEmail = jsonResponse.data.email
* print actName
* match actName == 'Narayan Johar LLD'
* match actId == 5374669
* match actEmail == 'johar_lld_narayan@schroeder-schneider.example'
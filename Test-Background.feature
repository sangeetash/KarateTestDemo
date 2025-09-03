@demotest
Feature: API Tests using background

Background: 
* def serviceURL1 = 'https://api.practicesoftwaretesting.com'
* def serviceURL2 = 'https://api.restful-api.dev'

Scenario: Get JSON objects request
  Given url serviceURL1
  And path '/products'
  When method GET
  Then status 200
    
Scenario:  Second API-GET
    
	Given url serviceURL2
	And path '/objects'
	When method GET
	Then status 200
	


Scenario:  First API-POST
	* json payloadJson = "{\"name\":\"AppleMacBookPro16\",\"data\":{\"year\":2019,\"price\":1849.99,\"CPUmodel\":\"IntelCorei9\",\"Harddisksize\":\"1TB\"}}"
    
	Given url serviceURL2
	And path '/objects'
	And request payloadJson
	When method POST
	Then status 200
	* print 'First POST Test passed'
  

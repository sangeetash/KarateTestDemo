@demotest

Feature: Print Karate Test


  Scenario: First API-GET
    
	Given url 'https://api.practicesoftwaretesting.com'
	And path '/products'
	When method GET
	Then status 200
	* print 'First Test passed'
	* print response.data[0]
	
Scenario:  Second API-GET
    
	Given url 'https://api.restful-api.dev'
	And path '/objects'
	When method GET
	Then status 200
	* print 'Second Test passed'
	


Scenario:  Frst API-POST
	* json payloadJson = "{\"name\":\"AppleMacBookPro16\",\"data\":{\"year\":2019,\"price\":1849.99,\"CPUmodel\":\"IntelCorei9\",\"Harddisksize\":\"1TB\"}}"
    
	Given url 'https://api.restful-api.dev'
	And path '/objects'
	And request payloadJson
	When method POST
	Then status 200
	* print 'Second Test passed'
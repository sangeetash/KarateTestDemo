@demotest
Feature: Compare JSON data

Scenario: Compare distinct JSON objects
* def actual = { name: 'User-1', age: 30 }
* def expected = { name: 'User-1', age: 32 }
  Then match actual != expected
  
Scenario: Compare Equal JSON objects
* def actual = { name: 'User-1', age: 32 }
* def expected = { name: 'User-1', age: 32 }
  Then match actual == expected
  
# Execrise task- Compare Specific JSON Keys
@demotest
Feature: Call Another Feature File scenarios

Scenario: Print Current date 
 * def dateHelper = karate.call('Get-Current-Date-Helper.feature')
 * karate.log("Current date from Calling file:", dateHelper)
  
# Exercise- Add a scenario to print/log sum of given two numbers. Define method in another feature file.
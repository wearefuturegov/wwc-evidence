@javascript
Feature: File Upload
  
  Background:
    Given I am logged in
    And I access the "new admin intervention" page
  
  Scenario: Adding tags
    When I create an intervention with the tags "foo,bar,baz"
    Then the intervention should have the correct tags
  
  Scenario: Remove tags
    Given there is an intervention with the tags "foo,bar,baz"
    When I remove the tag "bar"
    Then the intervention should have the correct tags
  
  
  

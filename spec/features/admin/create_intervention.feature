@javascript
Feature: Create intervention
  
  Background:
    Given I am logged in
    And I access the "new admin intervention" page
  
  Scenario: Create new intervention
    Given I create an intervention
    Then the correct fields should be saved

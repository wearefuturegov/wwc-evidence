@javascript
Feature: Edit Banner Message
  
  Background:
    Given I am logged in
  
  Scenario: Change banner message
    Given I edit the banner message
    Then my banner message should be viewable on the homepage

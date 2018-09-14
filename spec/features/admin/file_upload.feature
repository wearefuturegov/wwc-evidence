@javascript
Feature: File Upload
  
  Background:
    Given I am logged in
    And I access the "new admin evidence" page
  
  Scenario: Create evidence with a file attachment
    Given I create a piece of evidence with 1 file
    Then the evidence should have 1 file attached

  Scenario: Create evidence with multiple file attachments
    Given I create a piece of evidence with 3 files
    Then the evidence should have 3 files attached
  
  Scenario: Remove file attachment
    Given I create a piece of evidence with 3 files
    And I access the "edit admin evidence" page for the evidence
    And I remove the first 2 files
    Then the evidence should have 1 file attached
    

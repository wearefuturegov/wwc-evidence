@javascript
Feature: File Upload
  
  Background:
    Given I am logged in
    And I access the "new admin intervention" page
  
  Scenario: Create intervention with a file attachment
    Given I create an intervention with 1 file
    Then the intervention should have 1 file attached

  Scenario: Create evidence with multiple file attachments
    Given I create an intervention with 3 files
    Then the intervention should have 3 files attached
  
  Scenario: Remove file attachment
    Given I create an intervention with 3 files
    And I access the "edit admin intervention" page for the intervention
    And I remove the first 2 files
    Then the intervention should have 1 file attached
    

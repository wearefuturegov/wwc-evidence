Feature: Admin requires login

  Background:
    Given I have a user account
  
  Scenario: Admins should be prompted for a login
    And I access the "admin root" page
    Then I should be prompted for a login
    
  Scenario:
    Given I log in
    Then I should be logged into the admin section
  
  

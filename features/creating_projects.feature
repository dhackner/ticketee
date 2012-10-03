Feature: Creating projects
  In order to have projects to assign tickets to
  As a user
  I want to create them easily
  
  Scenario: Creating a project
    Given I am on the homepage
    When I add a new project
    Then I should see "Project has been created."
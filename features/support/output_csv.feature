Feature: output donation and donor's information to a csv file
  As a food bank operator
  So that I can manage donation and donor's information
  I want to output donation and donor's information to a csv file

  Background: donor inputs donation and his/her information

  Scenario: submit donation and donor's information
    When a donor goes to the index page
    And  he fills the form of donation and donor's information
    And  he presses "Submit" button
    Then I can get his information in a csv file

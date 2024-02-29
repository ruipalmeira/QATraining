@google_forms
Feature: Google form
  As a google form user,
  I want to fill a google form,
  So, I can check if google form is working as expected.

  Scenario: Google form filling all fields
    Given User open a new browser
    When User go to "https://forms.gle/n3tMSHrF2EGEg3Gd8"
    Then User must see the google forms page
    And User must set option to TRUE
    And User must fill in text input with "RUI"
    And User must check value "BRASIL"
    And User must check value "PORTUGAL"
    And User set date as "25/02/2024"
    And User click to submit form
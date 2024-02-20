@google_forms
Feature: Google form test
  As a Google form user, 
  I want to fill a google form, 
  So, I can check if google form is working as expected.

  Scenario: Google form filling all fields
    Given User open a new browser
    When User go to "https://forms.gle/n3tMSHrF2EGEg3Gd8"
    Then User must see the Google forms page
  
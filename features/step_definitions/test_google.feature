Feature: Google search
  As a Google user, 
  I want to search any kind of text, 
  So, I can learn new things.

  Background: Google site is up and reachable
    Given User open a new browser
    When User go to "https://google.com"
    Then User must accept cookies
    Then User must see the Google homepage

  Scenario: Google search for text
    Given User search for text "BDD"
    When Page loads
    Then User must see "BDD" related results
Feature: Yahoo search
  As a Yahoo user, 
  I want to search any kind of text, 
  So, I can learn new things.

  Background: Yahoo site is up and reachable
    Given User opens a new browser
    When User go to https://Yahoo.com
    Then User must see the Yahoo homepage

  Scenario: Yahoo search for text
    Given User search for text "BDD"
    When Page loads
    Then User must see "BDD related results"

  Scenario Outline: 
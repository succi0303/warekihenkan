Feature: warekihenkan
  As a one person
  I want to know 'what is a name of era of this year?!'
  so that I can satisfy my curiosity.

  Background: data initialize
    Given There is a initial data

  Scenario: henkan page
    When I am in top page
    Then I should see the site title "和暦変換"

  Scenario: henkan
    Given I am in top page
    When I fill in the year "2014"
    Then I should see the result "平成 25 年"

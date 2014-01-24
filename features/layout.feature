Feature: Site Layout
  As a web surfer
  I want to the page to have consist layout
  so that I can read the page more easiliy

  I want to use 'Twitter Bootstrap 3' with 'Bootstrap CDN'
  I want to use 'Falatly' theme in 'Bootswatch'

  Scenario: site header
    When I am in top page
    Then I should see the page header
    And I should see brand name
    And I should see link to "About"
    And I should see link to "Contact"

  Scenario: site footer
    When I am in top page
    Then I should see the page footer
    And I should see the copyright

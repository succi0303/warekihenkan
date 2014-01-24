Feature:
  As a web surfer
  I want to know about the site
  sot that I can judge the reliability of infomaations

  Scenario: About Page
    When I am in about page
    Then I should see the page title "和暦変換 | About"
    And I should see the contents "このサイトについて"

  Scenario: Contact Page
    When I am in contact page
    Then I should see the page title "和暦変換 | Contact"
    And I should see the contents "お問い合わせ"

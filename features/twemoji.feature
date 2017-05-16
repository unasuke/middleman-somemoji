Feature: Twemoji
  Scenario: Should convert :smile: to img tag
    Given a fixture app "twemoji-app"
    And the Server is running at "twemoji-app"
    When I go to "/index.html"
    Then I should see "😄"
    Then I should see "twemoji"
    Then I should see "/images/twemoji/unicode/1f604.svg"

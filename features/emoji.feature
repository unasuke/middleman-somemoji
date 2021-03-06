Feature: Emoji
  Scenario: Should convert :heart: to img tag
    Given a fixture app "emoji-app"
    And the Server is running at "emoji-app"
    When I go to "/index.html"
    Then I should see "❤️"
    Then I should see "emoji"
    Then I should see "/images/emoji_one/unicode/2764-fe0f.png"

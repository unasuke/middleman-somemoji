Feature: Emoji
  Scenario: Should convert :heart: to img tag
    Given a successfully built app at "emoji-app"
    When I cd to "build"
    Then the file "index.html" should contain "❤️"
    Then the file "index.html" should contain "emoji"
    Then the file "index.html" should contain "/images/emoji_one/unicode/2764-fe0f.png"

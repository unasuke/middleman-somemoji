Feature: Twemoji
  Scenario: Should convert :smile: to img tag
    Given a successfully built app at "twemoji-app"
    When I cd to "build"
    Then the file "index.html" should contain "😄"
    Then the file "index.html" should contain "twemoji"
    Then the file "index.html" should contain "/images/twemoji/unicode/1f604.svg"

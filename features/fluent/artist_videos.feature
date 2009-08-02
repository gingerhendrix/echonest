Feature: Artist videos
  In order to find videos about an an artist
  A user should be able to retrieve videos for an artist

  Scenario: Artist videos
    When I retrieve the video for "music://id.echonest.com/~/AR/ARH6W4X1187B99274F"
    Then I should get some results
    And a result should have a url
    And a result should have a site
    And a result should have a title
    And a result should have a date_found


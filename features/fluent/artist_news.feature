Feature: Artist news
  In order to find news about an an artist
  A user should be able to retrieve news for an artist

  Scenario: Artist news
    When I retrieve the news for "music://id.echonest.com/~/AR/ARVVZQP11E2835DBCB"
    Then I should get some results
    And a result should have a url
    And a result should have a name
    And a result should have a summary
    And a result should have a date_found


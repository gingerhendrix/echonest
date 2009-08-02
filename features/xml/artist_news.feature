Feature: Artist news
  In order to find news about an an artist
  A user should be able to retrieve news for an artist

  Scenario: Artist news
    When I retrieve the news for "music://id.echonest.com/~/AR/ARVVZQP11E2835DBCB"
    Then I should get some news results


Feature: Artist urls
  In order to find urls about an an artist
  A user should be able to retrieve urls for an artist

  Scenario: Artist urls
    When I retrieve the urls for "music://id.echonest.com/~/AR/ARVVZQP11E2835DBCB"
    Then I should get some urls results


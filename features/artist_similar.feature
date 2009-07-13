Feature: Artist similar
  In order to find similar about an an artist
  A user should be able to retrieve similar for an artist

  Scenario: Artist similar
    When I retrieve the similar for "music://id.echonest.com/~/AR/ARVVZQP11E2835DBCB"
    Then I should get some similar results


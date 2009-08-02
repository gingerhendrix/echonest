Feature: Artist blog
  In order to listen to find blogs about an an artist
  A user should be able to search for blogs for an artist

  Scenario: Artist audio
    When I retrieve the blogs for "music://id.echonest.com/~/AR/ARVVZQP11E2835DBCB"
    Then I should get some blog results


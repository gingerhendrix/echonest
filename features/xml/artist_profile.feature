Feature: Artist profile
  In order to find profile about an an artist
  A user should be able to retrieve profile for an artist

  Scenario: Artist profile
    When I retrieve the profile for "music://id.echonest.com/~/AR/ARVVZQP11E2835DBCB"
    Then I should get some profile results


Feature: Artist profile
  In order to find profile about an an artist
  A user should be able to retrieve profile for an artist

  Scenario: Artist name
    When I retrieve the name for "music://id.echonest.com/~/AR/ARVVZQP11E2835DBCB"
    Then I should get a string result
  
  Scenario: Artist id
    When I retrieve the id for "music://id.echonest.com/~/AR/ARVVZQP11E2835DBCB"
    Then I should get a string result


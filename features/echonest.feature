Feature: Artist search
  In order to access artist info
  A user should be able to search for an artist and get a list of matching artist ids

  Scenario: Artist search
    When I search for "Wavves"
    Then I should get some search results
    And the top result should have id "music://id.echonest.com/~/AR/ARVVZQP11E2835DBCB"

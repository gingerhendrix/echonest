Feature: Artist familiarity
  In order to find familiarity about an an artist
  A user should be able to retrieve familiarity for an artist

  Scenario: Artist familiarity
    When I retrieve the familiarity for "music://id.echonest.com/~/AR/ARVVZQP11E2835DBCB"
    Then I should get some familiarity results


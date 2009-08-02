Feature: Artist hottness
  In order to find hottness about an an artist
  A user should be able to retrieve hotttnesss for an artist

  Scenario: Artist hottness
    When I retrieve the hotttnesss for "music://id.echonest.com/~/AR/ARVVZQP11E2835DBCB"
    Then I should get a numeric result


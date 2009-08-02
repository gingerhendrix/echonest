Feature: Artist search
  In order to access artist info
  A user should be able to search for an artist and get a list of matching artist ids

  Scenario: Artist search
    When I search for "Wavves"
    Then I should get some unpaged results
    And a result should have a id
    And a result should have a name

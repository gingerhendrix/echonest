Feature: Artist reviews
  In order to find reviews about an an artist
  A user should be able to retrieve reviews for an artist

  Scenario: Artist reviews
    When I retrieve the reviews for "music://id.echonest.com/~/AR/ARVVZQP11E2835DBCB"
    Then I should get some reviews results


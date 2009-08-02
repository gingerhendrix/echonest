Feature: Artist urls
  In order to find urls about an an artist
  A user should be able to retrieve urls for an artist

  Scenario: Artist mb_url
    When I retrieve the mb_url for "music://id.echonest.com/~/AR/ARVVZQP11E2835DBCB"
    Then I should get a string result
  
  Scenario: Artist itunes_url
    When I retrieve the itunes_url for "music://id.echonest.com/~/AR/ARVVZQP11E2835DBCB"
    Then I should get a string result


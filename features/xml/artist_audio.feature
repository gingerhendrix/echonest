Feature: Artist audio
  In order to listen to tracks by an artist
  A user should be able to search for audio for an artist

  Scenario: Artist audio
    When I retrieve the audio for "music://id.echonest.com/~/AR/ARVVZQP11E2835DBCB"
    Then I should get some audio results


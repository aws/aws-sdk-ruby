# language: en
@transcribestreamingservice @asyncclient
Feature: Amazon Transcribe Streaming Service

  Scenario: Wait for async response to complete
    When I have an audio file
    And I make start_stream_transcription async call
    And I signal events at audio stream
    And I call async response wait
    Then sync response is returned

  Scenario: Join async response immediately
    When I have an audio file
    And I make start_stream_transcription async call
    And I signal events at audio stream
    And I call async response join!
    Then sync response is returned

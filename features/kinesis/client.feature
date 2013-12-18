# language: en
@kinesis @client
Feature: AWS Kinesis

  Scenario: Making a basic request
    When I call "list_streams" on "kinesis"
    Then the response "stream_names" should be an array

  Scenario: Error handling
    Given I call "describe_stream" on "kinesis" with:
    """
    { stream_name: 'bogus-stream-name' }
    """
    Then I expect the response error code to be "ResourceNotFoundException"
    And I expect the response error message to include:
    """
    Stream bogus-stream-name under account
    """

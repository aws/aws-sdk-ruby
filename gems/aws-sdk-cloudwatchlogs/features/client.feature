# language: en
@cloudwatchlogs @client
Feature: Amazon CloudWatch Logs

  Scenario: Making a basic request
    When I call the "DescribeLogGroups" API
    Then the response should contain a list of "LogGroups"

  Scenario: Error handling
    When I attempt to call the "GetLogEvents" API with:
    | LogGroupName  | fakegroup  |
    | LogStreamName | fakestream |
    Then I expect the response error code to be "ResourceNotFoundException"

# language: en
@cloudhsm @client
Feature: Amazon CloudHSM

  Scenario: Making a basic request
    When I call the "ListHapgs" API
    Then the response should contain a list of "HapgList"

  Scenario: Error handling
    When I attempt to call the "DescribeHapg" API with:
    | HapgArn | bogus-arn |
    Then I expect the response error code to be "ValidationException"
    And I expect the response error message to include:
    """
    Value 'bogus-arn' at 'hapgArn' failed to satisfy constraint
    """

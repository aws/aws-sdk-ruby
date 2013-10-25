# language: en
@cloudwatch @client
Feature: Amazon CloudWatch

  Scenario: Making a basic request
    When I call "list_metrics" on "cloudwatch" with:
    """
    { namespace: "AWS/EC2" }
    """
    Then the response "metrics" should be an array

  Scenario: Error handling
    Given I call "set_alarm_state" on "cloudwatch" with:
    """
    { alarm_name:'abc', state_value:'mno', state_reason:'xyz' }
    """
    Then I expect the response error code to be "ValidationError"
    And I expect the response error message to include:
    """
    failed to satisfy constraint
    """

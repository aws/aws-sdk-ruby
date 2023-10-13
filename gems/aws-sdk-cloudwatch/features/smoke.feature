# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CloudWatch

  @cloudwatch @smoke
  Scenario: ListMetricsSuccess
    Given I create a 'Aws::CloudWatch' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_metrics' with params:
      """
{"namespace":"AWS/EC2"}
      """
    Then I expect an error was not raised

  @cloudwatch @smoke
  Scenario: SetAlarmStateFailure
    Given I create a 'Aws::CloudWatch' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'set_alarm_state' with params:
      """
{"alarm_name":"abc","state_value":"mno","state_reason":"xyz"}
      """
    Then I expect an error was raised

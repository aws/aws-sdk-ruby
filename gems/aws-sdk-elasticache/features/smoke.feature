# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ElastiCache

  @elasticache @smoke
  Scenario: DescribeEventsSuccess
    Given I create a 'Aws::ElastiCache' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_events' with params:
      """
{}
      """
    Then I expect an error was not raised

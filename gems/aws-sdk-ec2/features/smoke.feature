# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for EC2

  @ec2 @smoke
  Scenario: DescribeRegionsSuccess
    Given I create a 'Aws::EC2' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_regions' with params:
      """
{}
      """
    Then I expect an error was not raised

  @ec2 @smoke
  Scenario: DescribeInstancesFailure
    Given I create a 'Aws::EC2' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_instances' with params:
      """
{"instance_ids":["i-12345678"]}
      """
    Then I expect an error was raised

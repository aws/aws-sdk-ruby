# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ElasticLoadBalancing

  @elasticloadbalancing @smoke
  Scenario: DescribeLoadBalancersSuccess
    Given I create a 'Aws::ElasticLoadBalancing' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_load_balancers' with params:
      """
{}
      """
    Then I expect an error was not raised

  @elasticloadbalancing @smoke
  Scenario: DescribeLoadBalancersFailure
    Given I create a 'Aws::ElasticLoadBalancing' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_load_balancers' with params:
      """
{"load_balancer_names":["fake_load_balancer"]}
      """
    Then I expect an error was raised

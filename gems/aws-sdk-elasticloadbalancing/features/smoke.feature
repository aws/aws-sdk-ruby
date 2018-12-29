# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ElasticLoadBalancing

Background:
  Given I create a client in region 'us-west-2'

  @elasticloadbalancing @smoke
  Scenario: Call Aws::ElasticLoadBalancing::Client#describe_load_balancers and expect it to succeed
  When I call the operation 'describe_load_balancers' with params:
    """
{}
    """
  Then I expect an error was not raised

  @elasticloadbalancing @smoke
  Scenario: Call Aws::Aws::ElasticLoadBalancing::Client#describe_load_balancers and expect it to fail
  When I call the operation 'describe_load_balancers' with params:
    """
{"load_balancer_names":["fake_load_balancer"]}
    """
  Then I expect an error was raised

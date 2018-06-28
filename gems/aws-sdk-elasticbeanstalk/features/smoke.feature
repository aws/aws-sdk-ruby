# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ElasticBeanstalk

Background:
  Given I create a client in region 'us-west-2'

  @elasticbeanstalk @smoke
  Scenario: Call Aws::ElasticBeanstalk::Client#list_available_solution_stacks and expect it to succeed
  When I call the operation 'list_available_solution_stacks' with params:
    """
{}
    """
  Then I expect an error was not raised

  @elasticbeanstalk @smoke
  Scenario: Call Aws::Aws::ElasticBeanstalk::Client#describe_environment_resources and expect it to fail
  When I call the operation 'describe_environment_resources' with params:
    """
{"environment_id":"fake_environment"}
    """
  Then I expect an error was raised

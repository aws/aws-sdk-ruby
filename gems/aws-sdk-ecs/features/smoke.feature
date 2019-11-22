# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ECS

Background:
  Given I create a client in region 'us-west-2'

  @ecs @smoke
  Scenario: Call Aws::ECS::Client#list_clusters and expect it to succeed
  When I call the operation 'list_clusters' with params:
    """
{}
    """
  Then I expect an error was not raised

  @ecs @smoke
  Scenario: Call Aws::Aws::ECS::Client#stop_task and expect it to fail
  When I call the operation 'stop_task' with params:
    """
{"task":"xxxxxxxxxxx-xxxxxxxxxxxx-xxxxxxxxxxx"}
    """
  Then I expect an error was raised

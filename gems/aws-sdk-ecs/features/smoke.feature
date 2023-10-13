# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ECS

  @ecs @smoke
  Scenario: ListClustersSuccess
    Given I create a 'Aws::ECS' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_clusters' with params:
      """
{}
      """
    Then I expect an error was not raised

  @ecs @smoke
  Scenario: StopTaskFailure
    Given I create a 'Aws::ECS' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'stop_task' with params:
      """
{"task":"xxxxxxxxxxx-xxxxxxxxxxxx-xxxxxxxxxxx"}
      """
    Then I expect an error was raised

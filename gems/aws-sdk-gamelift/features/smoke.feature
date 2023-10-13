# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for GameLift

  @gamelift @smoke
  Scenario: ListBuildsSuccess
    Given I create a 'Aws::GameLift' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_builds' with params:
      """
{}
      """
    Then I expect an error was not raised

  @gamelift @smoke
  Scenario: DescribePlayerSessionsFailure
    Given I create a 'Aws::GameLift' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'describe_player_sessions' with params:
      """
{"player_session_id":"psess-fakeSessionId"}
      """
    Then I expect an error was raised

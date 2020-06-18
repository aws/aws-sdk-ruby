# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for GameLift

Background:
  Given I create a client in region 'us-west-2'

  @gamelift @smoke
  Scenario: Call Aws::GameLift::Client#list_builds and expect it to succeed
  When I call the operation 'list_builds' with params:
    """
{}
    """
  Then I expect an error was not raised

  @gamelift @smoke
  Scenario: Call Aws::Aws::GameLift::Client#describe_player_sessions and expect it to fail
  When I call the operation 'describe_player_sessions' with params:
    """
{"player_session_id":"psess-fakeSessionId"}
    """
  Then I expect an error was raised

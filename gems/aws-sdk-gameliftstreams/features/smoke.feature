# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for GameLiftStreams

  @gameliftstreams @smoke
  Scenario: ListTagsForResource
    Given I create a 'Aws::GameLiftStreams' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_tags_for_resource' with params:
      """
{"resource_arn":"arn:aws:gameliftstreams:us-west-2:012345678901:abcdefghi"}
      """
    Then I expect a 'Aws::GameLiftStreams::Errors::ValidationException' was raised

  @gameliftstreams @smoke
  Scenario: GetApplication
    Given I create a 'Aws::GameLiftStreams' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_application' with params:
      """
{"identifier":"aBcDeFgHi"}
      """
    Then I expect a 'Aws::GameLiftStreams::Errors::ResourceNotFoundException' was raised

  @gameliftstreams @smoke
  Scenario: GetStreamSession
    Given I create a 'Aws::GameLiftStreams' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_stream_session' with params:
      """
{"identifier":"abcdefghi","stream_session_identifier":"jklmnopqr"}
      """
    Then I expect a 'Aws::GameLiftStreams::Errors::ResourceNotFoundException' was raised

  @gameliftstreams @smoke
  Scenario: ListStreamSessionsByAccount
    Given I create a 'Aws::GameLiftStreams' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_stream_sessions_by_account' with params:
      """
{}
      """
    Then I expect an error was not raised

  @gameliftstreams @smoke
  Scenario: GetStreamGroup
    Given I create a 'Aws::GameLiftStreams' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_stream_group' with params:
      """
{"identifier":"12ab34cd5"}
      """
    Then I expect a 'Aws::GameLiftStreams::Errors::ResourceNotFoundException' was raised

  @gameliftstreams @smoke
  Scenario: ListStreamGroups
    Given I create a 'Aws::GameLiftStreams' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_stream_groups' with params:
      """
{}
      """
    Then I expect an error was not raised

  @gameliftstreams @smoke
  Scenario: ListStreamSessions
    Given I create a 'Aws::GameLiftStreams' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_stream_sessions' with params:
      """
{"identifier":"abcdefghi"}
      """
    Then I expect a 'Aws::GameLiftStreams::Errors::ResourceNotFoundException' was raised

  @gameliftstreams @smoke
  Scenario: ListApplications
    Given I create a 'Aws::GameLiftStreams' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_applications' with params:
      """
{}
      """
    Then I expect an error was not raised

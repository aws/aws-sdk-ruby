# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ConnectScheduling

  @connectscheduling @smoke
  Scenario: GetTimeOffFailure
    Given I create a 'Aws::ConnectScheduling' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_time_off' with params:
      """
{"instance_id":"00000000-0000-0000-0000-000000000000","user_id":"00000000-0000-0000-0000-000000000000","time_off_id":"00000000-0000-0000-0000-000000000000"}
      """
    Then I expect an error was raised

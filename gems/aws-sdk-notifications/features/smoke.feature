# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Notifications

  @notifications @smoke
  Scenario: ListNotificationConfigurationsSuccess
    Given I create a 'Aws::Notifications' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_notification_configurations' with params:
      """
{"status":"ACTIVE","max_results":3}
      """
    Then I expect an error was not raised

  @notifications @smoke
  Scenario: ListNotificationEventsSuccess
    Given I create a 'Aws::Notifications' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_notification_events' with params:
      """
{"include_child_events":true,"max_results":3}
      """
    Then I expect an error was not raised

  @notifications @smoke
  Scenario: ListManagedNotificationEventsSuccess
    Given I create a 'Aws::Notifications' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_managed_notification_events' with params:
      """
{"max_results":3}
      """
    Then I expect an error was not raised

  @notifications @smoke
  Scenario: ListNotificationHubsSuccess
    Given I create a 'Aws::Notifications' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_notification_hubs' with params:
      """
{"max_results":3}
      """
    Then I expect an error was not raised

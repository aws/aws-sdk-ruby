# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Wickr

  @wickr @smoke
  Scenario: ListBotsUnauthorized
    Given I create a 'Aws::Wickr' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_bots' with params:
      """
{"network_id":"00000000","max_results":10}
      """
    Then I expect an error was raised

  @wickr @smoke
  Scenario: ListSecurityGroupsUnauthorized
    Given I create a 'Aws::Wickr' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_security_groups' with params:
      """
{"network_id":"00000000","max_results":10}
      """
    Then I expect an error was raised

  @wickr @smoke
  Scenario: GetOpentdfConfigUnauthorized
    Given I create a 'Aws::Wickr' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_opentdf_config' with params:
      """
{"network_id":"00000000"}
      """
    Then I expect an error was raised

  @wickr @smoke
  Scenario: GetBotUnauthorized
    Given I create a 'Aws::Wickr' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_bot' with params:
      """
{"network_id":"00000000","bot_id":"00000000"}
      """
    Then I expect an error was raised

  @wickr @smoke
  Scenario: ListGuestUsersUnauthorized
    Given I create a 'Aws::Wickr' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_guest_users' with params:
      """
{"network_id":"00000000","max_results":10}
      """
    Then I expect an error was raised

  @wickr @smoke
  Scenario: ListBlockedGuestUsersUnauthorized
    Given I create a 'Aws::Wickr' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_blocked_guest_users' with params:
      """
{"network_id":"00000000","max_results":10}
      """
    Then I expect an error was raised

  @wickr @smoke
  Scenario: GetSecurityGroupUnauthorized
    Given I create a 'Aws::Wickr' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_security_group' with params:
      """
{"network_id":"00000000","group_id":"00000000"}
      """
    Then I expect an error was raised

  @wickr @smoke
  Scenario: GetDataRetentionBotUnauthorized
    Given I create a 'Aws::Wickr' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_data_retention_bot' with params:
      """
{"network_id":"00000000"}
      """
    Then I expect an error was raised

  @wickr @smoke
  Scenario: ListUsersUnauthorized
    Given I create a 'Aws::Wickr' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_users' with params:
      """
{"network_id":"00000000","max_results":10}
      """
    Then I expect an error was raised

  @wickr @smoke
  Scenario: GetOidcInfoUnauthorized
    Given I create a 'Aws::Wickr' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_oidc_info' with params:
      """
{"network_id":"00000000"}
      """
    Then I expect an error was raised

  @wickr @smoke
  Scenario: GetNetworkSettingsUnauthorized
    Given I create a 'Aws::Wickr' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_network_settings' with params:
      """
{"network_id":"00000000"}
      """
    Then I expect an error was raised

  @wickr @smoke
  Scenario: ListNetworksSuccess
    Given I create a 'Aws::Wickr' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_networks' with params:
      """
{}
      """
    Then I expect an error was not raised

  @wickr @smoke
  Scenario: GetNetworkUnauthorized
    Given I create a 'Aws::Wickr' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_network' with params:
      """
{"network_id":"12345678"}
      """
    Then I expect an error was raised

  @wickr @smoke
  Scenario: GetGuestUserHistoryCountUnauthorized
    Given I create a 'Aws::Wickr' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_guest_user_history_count' with params:
      """
{"network_id":"00000000"}
      """
    Then I expect an error was raised

  @wickr @smoke
  Scenario: GetPagedSecurityUsersUnauthorized
    Given I create a 'Aws::Wickr' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_security_group_users' with params:
      """
{"network_id":"00000000","group_id":"00000000","max_results":10}
      """
    Then I expect an error was raised

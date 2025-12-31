# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for PartnerCentralChannel

  @partnercentralchannel @smoke
  Scenario: TagResourceFailure
    Given I create a 'Aws::PartnerCentralChannel' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'tag_resource' with params:
      """
{"resource_arn":"arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-1234567890123","tags":[{"key":"TestKey","value":"TestValue"}]}
      """
    Then I expect an error was raised

  @partnercentralchannel @smoke
  Scenario: ListTagsForResourceFailure
    Given I create a 'Aws::PartnerCentralChannel' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_tags_for_resource' with params:
      """
{"resource_arn":"arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-1234567890123"}
      """
    Then I expect an error was raised

  @partnercentralchannel @smoke
  Scenario: UntagResourceFailure
    Given I create a 'Aws::PartnerCentralChannel' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'untag_resource' with params:
      """
{"resource_arn":"arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-1234567890123","tag_keys":["TestKey"]}
      """
    Then I expect an error was raised

  @partnercentralchannel @smoke
  Scenario: CreateRelationshipFailure
    Given I create a 'Aws::PartnerCentralChannel' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'create_relationship' with params:
      """
{"catalog":"AWS","association_type":"END_CUSTOMER","program_management_account_identifier":"pma-1234567890123","associated_account_id":"000000000000","display_name":"TestRelationship","sector":"COMMERCIAL"}
      """
    Then I expect an error was raised

  @partnercentralchannel @smoke
  Scenario: ListProgramManagementAccountsSuccess
    Given I create a 'Aws::PartnerCentralChannel' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_program_management_accounts' with params:
      """
{"catalog":"AWS","max_results":1}
      """
    Then I expect an error was raised

  @partnercentralchannel @smoke
  Scenario: CreateProgramManagementAccountFailure
    Given I create a 'Aws::PartnerCentralChannel' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'create_program_management_account' with params:
      """
{"catalog":"AWS","display_name":"TestAccount","program":"SOLUTION_PROVIDER","account_id":"000000000000"}
      """
    Then I expect an error was raised

  @partnercentralchannel @smoke
  Scenario: ListRelationshipsSuccess
    Given I create a 'Aws::PartnerCentralChannel' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_relationships' with params:
      """
{"catalog":"AWS","max_results":1}
      """
    Then I expect an error was raised

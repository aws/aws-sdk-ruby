# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for PartnerCentralAccount

  @partnercentralaccount @smoke
  Scenario: TagResourceFailsWithInvalidArn
    Given I create a 'Aws::PartnerCentralAccount' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'tag_resource' with params:
      """
{"resource_arn":"arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/partner-0123456789abc","tags":[{"key":"SmokeTestKey","value":"SmokeTestValue"}]}
      """
    Then I expect an error was raised

  @partnercentralaccount @smoke
  Scenario: UntagResourceFailsWithInvalidArn
    Given I create a 'Aws::PartnerCentralAccount' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'untag_resource' with params:
      """
{"resource_arn":"arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/partner-0123456789abc","tag_keys":["SmokeTestKey"]}
      """
    Then I expect an error was raised

  @partnercentralaccount @smoke
  Scenario: GetPartnerFailsWithInvalidIdentifier
    Given I create a 'Aws::PartnerCentralAccount' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_partner' with params:
      """
{"catalog":"AWS","identifier":"partner-0123456789abc"}
      """
    Then I expect an error was raised

  @partnercentralaccount @smoke
  Scenario: ListTagsFailsWithInvalidArn
    Given I create a 'Aws::PartnerCentralAccount' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_tags_for_resource' with params:
      """
{"resource_arn":"arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/partner-0123456789abc"}
      """
    Then I expect an error was raised

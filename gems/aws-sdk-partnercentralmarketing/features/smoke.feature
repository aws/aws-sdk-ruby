# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for PartnerCentralMarketing

  @partnercentralmarketing @smoke
  Scenario: UntagResourceFailsWithInvalidArn
    Given I create a 'Aws::PartnerCentralMarketing' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'untag_resource' with params:
      """
{"resource_arn":"arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/campaign/000000000000","tag_keys":["SmokeTestKey"]}
      """
    Then I expect an error was raised

  @partnercentralmarketing @smoke
  Scenario: TagResourceFailsWithInvalidArn
    Given I create a 'Aws::PartnerCentralMarketing' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'tag_resource' with params:
      """
{"resource_arn":"arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/campaign/000000000000","tags":[{"key":"SmokeTestKey","value":"SmokeTestValue"}]}
      """
    Then I expect an error was raised

  @partnercentralmarketing @smoke
  Scenario: ListCampaignsAccessDenied
    Given I create a 'Aws::PartnerCentralMarketing' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_campaigns' with params:
      """
{"catalog":"AWS"}
      """
    Then I expect a 'Aws::PartnerCentralMarketing::Errors::AccessDeniedException' was raised

  @partnercentralmarketing @smoke
  Scenario: ListTagsForResourceFailsWithInvalidArn
    Given I create a 'Aws::PartnerCentralMarketing' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_tags_for_resource' with params:
      """
{"resource_arn":"arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/campaign/000000000000"}
      """
    Then I expect an error was raised

  @partnercentralmarketing @smoke
  Scenario: DeleteCampaignFailsWithUnknownCampaign
    Given I create a 'Aws::PartnerCentralMarketing' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'delete_campaign' with params:
      """
{"catalog":"AWS","campaign_identifier":"camp-0000000000000"}
      """
    Then I expect an error was raised

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for PartnerCentralRevenueMeasurement

  @partnercentralrevenuemeasurement @smoke
  Scenario: ListRevenueAttributionsFailure
    Given I create a 'Aws::PartnerCentralRevenueMeasurement' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_revenue_attributions' with params:
      """
{"catalog":"AWS","max_results":1}
      """
    Then I expect an error was raised

  @partnercentralrevenuemeasurement @smoke
  Scenario: GetRevenueAttributionFailure
    Given I create a 'Aws::PartnerCentralRevenueMeasurement' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_revenue_attribution' with params:
      """
{"catalog":"AWS","identifier":"ra-0a1b2c3d4e5f6"}
      """
    Then I expect an error was raised

  @partnercentralrevenuemeasurement @smoke
  Scenario: TagResourceFailureRevenueAttribution
    Given I create a 'Aws::PartnerCentralRevenueMeasurement' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'tag_resource' with params:
      """
{"resource_arn":"arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/revenue-attribution/ra-0a1b2c3d4e5f6","tags":[{"key":"TestKey","value":"TestValue"}]}
      """
    Then I expect an error was raised

  @partnercentralrevenuemeasurement @smoke
  Scenario: TagResourceFailureMarketplaceRevenueShare
    Given I create a 'Aws::PartnerCentralRevenueMeasurement' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'tag_resource' with params:
      """
{"resource_arn":"arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/marketplace-revenue-share/prod-0a1b2c3d4e5f6","tags":[{"key":"TestKey","value":"TestValue"}]}
      """
    Then I expect an error was raised

  @partnercentralrevenuemeasurement @smoke
  Scenario: UntagResourceFailureRevenueAttribution
    Given I create a 'Aws::PartnerCentralRevenueMeasurement' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'untag_resource' with params:
      """
{"resource_arn":"arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/revenue-attribution/ra-0a1b2c3d4e5f6","tag_keys":["TestKey"]}
      """
    Then I expect an error was raised

  @partnercentralrevenuemeasurement @smoke
  Scenario: UntagResourceFailureMarketplaceRevenueShare
    Given I create a 'Aws::PartnerCentralRevenueMeasurement' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'untag_resource' with params:
      """
{"resource_arn":"arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/marketplace-revenue-share/prod-0a1b2c3d4e5f6","tag_keys":["TestKey"]}
      """
    Then I expect an error was raised

  @partnercentralrevenuemeasurement @smoke
  Scenario: CreateRevenueAttributionFailure
    Given I create a 'Aws::PartnerCentralRevenueMeasurement' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'create_revenue_attribution' with params:
      """
{"catalog":"AWS","client_token":"test-token","name":"TestAttribution","tenancy_model":"MULTI_TENANT"}
      """
    Then I expect an error was raised

  @partnercentralrevenuemeasurement @smoke
  Scenario: ListTagsForResourceFailureRevenueAttribution
    Given I create a 'Aws::PartnerCentralRevenueMeasurement' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_tags_for_resource' with params:
      """
{"resource_arn":"arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/revenue-attribution/ra-0a1b2c3d4e5f6"}
      """
    Then I expect an error was raised

  @partnercentralrevenuemeasurement @smoke
  Scenario: ListTagsForResourceFailureMarketplaceRevenueShare
    Given I create a 'Aws::PartnerCentralRevenueMeasurement' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_tags_for_resource' with params:
      """
{"resource_arn":"arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/marketplace-revenue-share/prod-0a1b2c3d4e5f6"}
      """
    Then I expect an error was raised

  @partnercentralrevenuemeasurement @smoke
  Scenario: UpdateRevenueAttributionFailure
    Given I create a 'Aws::PartnerCentralRevenueMeasurement' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'update_revenue_attribution' with params:
      """
{"catalog":"AWS","client_token":"test-token","identifier":"ra-0a1b2c3d4e5f6","revision":"1","description":"test"}
      """
    Then I expect an error was raised

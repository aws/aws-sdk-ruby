# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for MarketplaceReporting

  @marketplacereporting @smoke
  Scenario: GetBuyerDashboardUnauthorized
    Given I create a 'Aws::MarketplaceReporting' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_buyer_dashboard' with params:
      """
{"dashboard_identifier":"arn:aws:aws-marketplace::021234567890:AWSMarketplace/ReportingData/Agreement_V1/Dashboard/AgreementSummary_V1","embedding_domains":["https://localhost:8080"]}
      """
    Then I expect an error was raised

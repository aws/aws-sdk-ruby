# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for MarketplaceCommerceAnalytics

  @marketplacecommerceanalytics @smoke
  Scenario: GenerateDataSetFailure
    Given I create a 'Aws::MarketplaceCommerceAnalytics' client with config:
      """
{"region":"us-east-1"}
      """
    When I call the operation 'generate_data_set' with params:
      """
{"data_set_type":"fake-type","data_set_publication_date":0,"role_name_arn":"fake-arn","destination_s3_bucket_name":"fake-bucket","sns_topic_arn":"fake-arn"}
      """
    Then I expect an error was raised

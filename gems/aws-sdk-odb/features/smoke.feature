# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Odb

  @odb @smoke
  Scenario: GetCloudExadataInfrastructure_ValidationException
    Given I create a 'Aws::Odb' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_cloud_exadata_infrastructure' with params:
      """
{"cloud_exadata_infrastructure_id":"exa-does-not-exist"}
      """
    Then I expect a 'Aws::Odb::Errors::ValidationException' was raised

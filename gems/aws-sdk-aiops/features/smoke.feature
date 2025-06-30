# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for AIOps

  @aiops @smoke
  Scenario: CreateInvestigationGroupUnauthorized
    Given I create a 'Aws::AIOps' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'create_investigation_group' with params:
      """
{"name":"test-smoke","role_arn":"arn:aws:iam::123456789012:role/assistant-role"}
      """
    Then I expect an error was raised

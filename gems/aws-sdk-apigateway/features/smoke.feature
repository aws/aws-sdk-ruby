# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for APIGateway

  @apigateway @smoke
  Scenario: GetDomainNamesSuccess
    Given I create a 'Aws::APIGateway' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'get_domain_names' with params:
      """
{}
      """
    Then I expect an error was not raised

  @apigateway @smoke
  Scenario: CreateUsagePlanKeyFailure
    Given I create a 'Aws::APIGateway' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'create_usage_plan_key' with params:
      """
{"usage_plan_id":"foo","key_id":"bar","key_type":"fixx"}
      """
    Then I expect an error was raised

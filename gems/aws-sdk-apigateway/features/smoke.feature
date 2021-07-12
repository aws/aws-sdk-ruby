# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for APIGateway

Background:
  Given I create a client in region 'us-west-2'

  @apigateway @smoke
  Scenario: Call Aws::APIGateway::Client#get_domain_names and expect it to succeed
  When I call the operation 'get_domain_names' with params:
    """
{}
    """
  Then I expect an error was not raised

  @apigateway @smoke
  Scenario: Call Aws::Aws::APIGateway::Client#create_usage_plan_key and expect it to fail
  When I call the operation 'create_usage_plan_key' with params:
    """
{"usage_plan_id":"foo","key_id":"bar","key_type":"fixx"}
    """
  Then I expect an error was raised

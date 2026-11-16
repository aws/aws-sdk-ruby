# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for SageMakerInferenceRouterRuntime

  @sagemakerinferencerouterruntime @smoke
  Scenario: InvokeInferenceRouterFailure
    Given I create a 'Aws::SageMakerInferenceRouterRuntime' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'invoke_inference_router' with params:
      """
{"inference_router_name":"smoke-test-nonexistent-router","routing_target_name":"smoke-test-target","body":"{}"}
      """
    Then I expect an error was raised

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for SageMakerGatewayRuntime

  @sagemakergatewayruntime @smoke
  Scenario: InvokeGlobalInferenceGatewayUnknownGatewayNotFound
    Given I create a 'Aws::SageMakerGatewayRuntime' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'invoke_global_inference_gateway' with params:
      """
{"gateway_id":"smoketestnonexistentgateway","content_type":"application/json","body":"{\"model\":\"smoke-test\",\"messages\":[]}"}
      """
    Then I expect a 'Aws::SageMakerGatewayRuntime::Errors::ResourceNotFoundException' was raised

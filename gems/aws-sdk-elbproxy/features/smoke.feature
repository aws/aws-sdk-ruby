# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for ELBProxy

  @elbproxy @smoke
  Scenario: ListProxiesSuccess
    Given I create a 'Aws::ELBProxy' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_proxies' with params:
      """
{}
      """
    Then I expect an error was not raised

  @elbproxy @smoke
  Scenario: ListProxyVersionsSuccess
    Given I create a 'Aws::ELBProxy' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_proxy_versions' with params:
      """
{"type":"envoy"}
      """
    Then I expect an error was not raised

  @elbproxy @smoke
  Scenario: GetProxyCrossAccountValidation
    Given I create a 'Aws::ELBProxy' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_proxy' with params:
      """
{"proxy_identifier":"arn:aws:elasticloadbalancing:us-east-1:000000000000:proxy/smoke-test-nonexistent:abc123"}
      """
    Then I expect a 'Aws::ELBProxy::Errors::ValidationException' was raised

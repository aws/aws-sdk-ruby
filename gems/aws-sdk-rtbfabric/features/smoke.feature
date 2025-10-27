# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for RTBFabric

  @rtbfabric @smoke
  Scenario: CreateRequesterGateway
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'create_requester_gateway' with params:
      """
{"description":"Test gateway","vpc_id":"vpc-12345678","subnet_ids":["subnet-12345678"],"security_group_ids":["sg-12345678"],"client_token":"ghi901jkl234"}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: GetResponderGateway
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_responder_gateway' with params:
      """
{"gateway_id":"rtb-gw-12345"}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: UpdateRequesterGateway
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'update_requester_gateway' with params:
      """
{"gateway_id":"rtb-gw-12345","description":"Updated test gateway","client_token":"xyz789uvw012"}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: DeleteResponderGateway
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'delete_responder_gateway' with params:
      """
{"gateway_id":"rtb-gw-12345"}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: CreateLink
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'create_link' with params:
      """
{"gateway_id":"rtb-gw-12345","peer_gateway_id":"rtb-gw-67890","log_settings":{"application_logs":{"sampling":{"error_log":100.0,"filter_log":0.0}}}}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: DeleteLink
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'delete_link' with params:
      """
{"gateway_id":"rtb-gw-12345","link_id":"link-12345"}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: UpdateLinkModuleFlow
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'update_link_module_flow' with params:
      """
{"link_id":"link-12345","gateway_id":"rtb-gw-12345","client_token":"xyz789uvw012","modules":[{"name":"module-name","version":"version"}]}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: ListTagsForResource_GatewayOnly
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_tags_for_resource' with params:
      """
{"resource_arn":"arn:aws:rtbfabric:us-west-2:123456789012:gateway/rtb-gw-123testapp"}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: ListTagsForResource_GatewayWithLink
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_tags_for_resource' with params:
      """
{"resource_arn":"arn:aws:rtbfabric:us-west-2:123456789012:gateway/rtb-gw-123testapp/link/link-nonexistent"}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: DeleteRequesterGateway
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'delete_requester_gateway' with params:
      """
{"gateway_id":"rtb-gw-12345"}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: CreateInboundExternalLink
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'create_inbound_external_link' with params:
      """
{"gateway_id":"rtb-gw-12345","client_token":"abc123def456"}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: UpdateResponderGateway
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'update_responder_gateway' with params:
      """
{"gateway_id":"rtb-gw-12345","description":"Updated test gateway","protocol":"HTTPS","port":433,"client_token":"xyz789uvw012"}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: GetLink
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_link' with params:
      """
{"link_id":"link-12345","gateway_id":"rtb-gw-12345"}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: GetRequesterGateway
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_requester_gateway' with params:
      """
{"gateway_id":"rtb-gw-12345"}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: ListLinks
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_links' with params:
      """
{"gateway_id":"rtb-gw-12345"}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: CreateResponderGateway
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'create_responder_gateway' with params:
      """
{"description":"Test gateway","vpc_id":"vpc-12345678","subnet_ids":["subnet-12345678"],"security_group_ids":["sg-12345678"],"port":443,"protocol":"HTTPS","client_token":"stu567vwx890"}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: CreateOutboundExternalLink
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'create_outbound_external_link' with params:
      """
{"gateway_id":"rtb-gw-12345","public_endpoint":"https://example.com","client_token":"mno345pqr678"}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: RejectLink
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'reject_link' with params:
      """
{"gateway_id":"rtb-gw-12345","link_id":"link-12345"}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: TagResource_GatewayOnly
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'tag_resource' with params:
      """
{"resource_arn":"arn:aws:rtbfabric:us-west-2:123456789012:gateway/rtb-gw-123testapp","tags":{"environment":"test","owner":"test-team"}}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: TagResource_GatewayWithLink
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'tag_resource' with params:
      """
{"resource_arn":"arn:aws:rtbfabric:us-west-2:123456789012:gateway/rtb-gw-123testapp/link/link-nonexistent","tags":{"environment":"test","owner":"test-team"}}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: DeleteInboundExternalLink
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'delete_inbound_external_link' with params:
      """
{"gateway_id":"rtb-gw-12345","link_id":"link-12345"}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: UpdateLink
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'update_link' with params:
      """
{"link_id":"link-12345","gateway_id":"rtb-gw-12345"}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: GetInboundExternalLink
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_inbound_external_link' with params:
      """
{"gateway_id":"rtb-gw-12345","link_id":"link-12345"}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: AcceptLink
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'accept_link' with params:
      """
{"gateway_id":"rtb-gw-12345","link_id":"link-12345","log_settings":{"application_logs":{"sampling":{"error_log":100.0,"filter_log":0.0}}}}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: DeleteOutboundExternalLink
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'delete_outbound_external_link' with params:
      """
{"gateway_id":"rtb-gw-12345","link_id":"link-12345"}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: GetOutboundExternalLink
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_outbound_external_link' with params:
      """
{"gateway_id":"rtb-gw-12345","link_id":"link-12345"}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: UntagResource_GatewayOnly
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'untag_resource' with params:
      """
{"resource_arn":"arn:aws:rtbfabric:us-west-2:123456789012:gateway/rtb-gw-123testapp","tag_keys":["Environment"]}
      """
    Then I expect an error was not raised

  @rtbfabric @smoke
  Scenario: UntagResource_GatewayWithLink
    Given I create a 'Aws::RTBFabric' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'untag_resource' with params:
      """
{"resource_arn":"arn:aws:rtbfabric:us-west-2:123456789012:gateway/rtb-gw-123testapp/link/link-nonexistent","tag_keys":["Environment"]}
      """
    Then I expect an error was not raised

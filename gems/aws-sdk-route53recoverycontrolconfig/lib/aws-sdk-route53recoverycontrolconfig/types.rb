# frozen_string_literal: true

# This is generated code!

module Aws::Route53RecoveryControlConfig
  # This module contains the types returned by client operations.
  module Types

    # <p>403 response - You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An assertion rule enforces that, when you change a routing control state, that the criteria that you set in the rule configuration is met. Otherwise, the change to the routing control is not accepted. For example, the criteria might be that at least one routing control state is On after the transaction so that traffic continues to flow to at least one cell for the application. This ensures that you avoid a fail-open scenario.</p>
    # @!attribute asserted_controls
    #   <p>The routing controls that are part of transactions that are evaluated to determine if a request to change a routing control state is allowed. For example, you might include three routing controls, one for each of three Amazon Web Services Regions.</p>
    #   @return [Array<String>]
    # @!attribute control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the assertion rule. You can use any non-white space character in the name.</p>
    #   @return [String]
    # @!attribute rule_config
    #   <p>The criteria that you set for specific assertion routing controls (AssertedControls) that designate how many routing control states must be ON as the result of a transaction. For example, if you have three assertion routing controls, you might specify ATLEAST 2 for your rule configuration. This means that at least two assertion routing control states must be ON, so that at least two Amazon Web Services Regions have traffic flowing to them.</p>
    #   @return [Types::RuleConfig]
    # @!attribute safety_rule_arn
    #   <p>The Amazon Resource Name (ARN) of the assertion rule.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The deployment status of an assertion rule. Status can be one of the following: PENDING, DEPLOYED, PENDING_DELETION.</p>
    #   @return [String]
    # @!attribute wait_period_ms
    #   <p>An evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail. This helps prevent "flapping" of state. The wait period is 5000 ms by default, but you can choose a custom value.</p>
    #   @return [Integer]
    # @!attribute owner
    #   <p>The Amazon Web Services account ID of the assertion rule owner.</p>
    #   @return [String]
    class AssertionRule < Struct.new(
      :asserted_controls,
      :control_panel_arn,
      :name,
      :rule_config,
      :safety_rule_arn,
      :status,
      :wait_period_ms,
      :owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An update to an assertion rule. You can update the name or the evaluation period (wait period). If you don't specify one of the items to update, the item is unchanged.</p>
    # @!attribute name
    #   <p>The name of the assertion rule. You can use any non-white space character in the name.</p>
    #   @return [String]
    # @!attribute safety_rule_arn
    #   <p>The Amazon Resource Name (ARN) of the assertion rule.</p>
    #   @return [String]
    # @!attribute wait_period_ms
    #   <p>An evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail. This helps prevent "flapping" of state. The wait period is 5000 ms by default, but you can choose a custom value.</p>
    #   @return [Integer]
    class AssertionRuleUpdate < Struct.new(
      :name,
      :safety_rule_arn,
      :wait_period_ms,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of five redundant Regional endpoints against which you can execute API calls to update or get the state of routing controls. You can host multiple control panels and routing controls on one cluster.</p>
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute cluster_endpoints
    #   <p>Endpoints for a cluster. Specify one of these endpoints when you want to set or retrieve a routing control state in the cluster.</p> <p>To get or update the routing control state, see the Amazon Route 53 Application Recovery Controller Routing Control Actions.</p>
    #   @return [Array<Types::ClusterEndpoint>]
    # @!attribute name
    #   <p>The name of the cluster.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Deployment status of a resource. Status can be one of the following: PENDING, DEPLOYED, PENDING_DELETION.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The Amazon Web Services account ID of the cluster owner.</p>
    #   @return [String]
    # @!attribute network_type
    #   <p>The network type of the cluster. NetworkType can be one of the following: IPV4, DUALSTACK.</p>
    #   @return [String]
    class Cluster < Struct.new(
      :cluster_arn,
      :cluster_endpoints,
      :name,
      :status,
      :owner,
      :network_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A cluster endpoint. Specify an endpoint when you want to set or retrieve a routing control state in the cluster.</p>
    # @!attribute endpoint
    #   <p>A cluster endpoint. Specify an endpoint and Amazon Web Services Region when you want to set or retrieve a routing control state in the cluster.</p> <p>To get or update the routing control state, see the Amazon Route 53 Application Recovery Controller Routing Control Actions.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region for a cluster endpoint.</p>
    #   @return [String]
    class ClusterEndpoint < Struct.new(
      :endpoint,
      :region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>409 response - ConflictException. You might be using a predefined variable.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A control panel represents a group of routing controls that can be changed together in a single transaction.</p>
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster that includes the control panel.</p>
    #   @return [String]
    # @!attribute control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel.</p>
    #   @return [String]
    # @!attribute default_control_panel
    #   <p>A flag that Amazon Route 53 Application Recovery Controller sets to true to designate the default control panel for a cluster. When you create a cluster, Amazon Route 53 Application Recovery Controller creates a control panel, and sets this flag for that control panel. If you create a control panel yourself, this flag is set to false.</p>
    #   @return [Boolean]
    # @!attribute name
    #   <p>The name of the control panel. You can use any non-white space character in the name.</p>
    #   @return [String]
    # @!attribute routing_control_count
    #   <p>The number of routing controls in the control panel.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The deployment status of control panel. Status can be one of the following: PENDING, DEPLOYED, PENDING_DELETION.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The Amazon Web Services account ID of the control panel owner.</p>
    #   @return [String]
    class ControlPanel < Struct.new(
      :cluster_arn,
      :control_panel_arn,
      :default_control_panel,
      :name,
      :routing_control_count,
      :status,
      :owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Creates a cluster.</p>
    # @!attribute client_token
    #   <p>A unique, case-sensitive string of up to 64 ASCII characters. To make an idempotent API request with an action, specify a client token in the request.</p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>The name of the cluster.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the cluster.</p>
    #   @return [Hash<String, String>]
    # @!attribute network_type
    #   <p>The network type of the cluster. NetworkType can be one of the following: IPV4, DUALSTACK.</p>
    #   @return [String]
    class CreateClusterRequest < Struct.new(
      :client_token,
      :cluster_name,
      :tags,
      :network_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>The cluster that was created.</p>
    #   @return [Types::Cluster]
    class CreateClusterResponse < Struct.new(
      :cluster,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the control panel that you're creating.</p>
    # @!attribute client_token
    #   <p>A unique, case-sensitive string of up to 64 ASCII characters. To make an idempotent API request with an action, specify a client token in the request.</p>
    #   @return [String]
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster for the control panel.</p>
    #   @return [String]
    # @!attribute control_panel_name
    #   <p>The name of the control panel.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the control panel.</p>
    #   @return [Hash<String, String>]
    class CreateControlPanelRequest < Struct.new(
      :client_token,
      :cluster_arn,
      :control_panel_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_panel
    #   <p>Information about a control panel.</p>
    #   @return [Types::ControlPanel]
    class CreateControlPanelResponse < Struct.new(
      :control_panel,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the routing control that you're creating.</p>
    # @!attribute client_token
    #   <p>A unique, case-sensitive string of up to 64 ASCII characters. To make an idempotent API request with an action, specify a client token in the request.</p>
    #   @return [String]
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster that includes the routing control.</p>
    #   @return [String]
    # @!attribute control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel that includes the routing control.</p>
    #   @return [String]
    # @!attribute routing_control_name
    #   <p>The name of the routing control.</p>
    #   @return [String]
    class CreateRoutingControlRequest < Struct.new(
      :client_token,
      :cluster_arn,
      :control_panel_arn,
      :routing_control_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute routing_control
    #   <p>The routing control that is created.</p>
    #   @return [Types::RoutingControl]
    class CreateRoutingControlResponse < Struct.new(
      :routing_control,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request body that you include when you create a safety rule.</p>
    # @!attribute assertion_rule
    #   <p>The assertion rule requested.</p>
    #   @return [Types::NewAssertionRule]
    # @!attribute client_token
    #   <p>A unique, case-sensitive string of up to 64 ASCII characters. To make an idempotent API request with an action, specify a client token in the request.</p>
    #   @return [String]
    # @!attribute gating_rule
    #   <p>The gating rule requested.</p>
    #   @return [Types::NewGatingRule]
    # @!attribute tags
    #   <p>The tags associated with the safety rule.</p>
    #   @return [Hash<String, String>]
    class CreateSafetyRuleRequest < Struct.new(
      :assertion_rule,
      :client_token,
      :gating_rule,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assertion_rule
    #   <p>The assertion rule created.</p>
    #   @return [Types::AssertionRule]
    # @!attribute gating_rule
    #   <p>The gating rule created.</p>
    #   @return [Types::GatingRule]
    class CreateSafetyRuleResponse < Struct.new(
      :assertion_rule,
      :gating_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster that you're deleting.</p>
    #   @return [String]
    class DeleteClusterRequest < Struct.new(
      :cluster_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteClusterResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel.</p>
    #   @return [String]
    class DeleteControlPanelRequest < Struct.new(
      :control_panel_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteControlPanelResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute routing_control_arn
    #   <p>The Amazon Resource Name (ARN) of the routing control that you're deleting.</p>
    #   @return [String]
    class DeleteRoutingControlRequest < Struct.new(
      :routing_control_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteRoutingControlResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute safety_rule_arn
    #   <p>The ARN of the safety rule.</p>
    #   @return [String]
    class DeleteSafetyRuleRequest < Struct.new(
      :safety_rule_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteSafetyRuleResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    class DescribeClusterRequest < Struct.new(
      :cluster_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>The cluster for the DescribeCluster request.</p>
    #   @return [Types::Cluster]
    class DescribeClusterResponse < Struct.new(
      :cluster,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel.</p>
    #   @return [String]
    class DescribeControlPanelRequest < Struct.new(
      :control_panel_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_panel
    #   <p>Information about the control panel.</p>
    #   @return [Types::ControlPanel]
    class DescribeControlPanelResponse < Struct.new(
      :control_panel,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute routing_control_arn
    #   <p>The Amazon Resource Name (ARN) of the routing control.</p>
    #   @return [String]
    class DescribeRoutingControlRequest < Struct.new(
      :routing_control_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute routing_control
    #   <p>Information about the routing control.</p>
    #   @return [Types::RoutingControl]
    class DescribeRoutingControlResponse < Struct.new(
      :routing_control,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute safety_rule_arn
    #   <p>The ARN of the safety rule.</p>
    #   @return [String]
    class DescribeSafetyRuleRequest < Struct.new(
      :safety_rule_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assertion_rule
    #   <p>The assertion rule in the response.</p>
    #   @return [Types::AssertionRule]
    # @!attribute gating_rule
    #   <p>The gating rule in the response.</p>
    #   @return [Types::GatingRule]
    class DescribeSafetyRuleResponse < Struct.new(
      :assertion_rule,
      :gating_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A gating rule verifies that a gating routing control or set of gating routing controls, evaluates as true, based on a rule configuration that you specify, which allows a set of routing control state changes to complete.</p> <p>For example, if you specify one gating routing control and you set the Type in the rule configuration to OR, that indicates that you must set the gating routing control to On for the rule to evaluate as true; that is, for the gating control "switch" to be "On". When you do that, then you can update the routing control states for the target routing controls that you specify in the gating rule.</p>
    # @!attribute control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel.</p>
    #   @return [String]
    # @!attribute gating_controls
    #   <p>An array of gating routing control Amazon Resource Names (ARNs). For a simple "on/off" switch, specify the ARN for one routing control. The gating routing controls are evaluated by the rule configuration that you specify to determine if the target routing control states can be changed.</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>The name for the gating rule. You can use any non-white space character in the name.</p>
    #   @return [String]
    # @!attribute rule_config
    #   <p>The criteria that you set for gating routing controls that designate how many of the routing control states must be ON to allow you to update target routing control states.</p>
    #   @return [Types::RuleConfig]
    # @!attribute safety_rule_arn
    #   <p>The Amazon Resource Name (ARN) of the gating rule.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The deployment status of a gating rule. Status can be one of the following: PENDING, DEPLOYED, PENDING_DELETION.</p>
    #   @return [String]
    # @!attribute target_controls
    #   <p>An array of target routing control Amazon Resource Names (ARNs) for which the states can only be updated if the rule configuration that you specify evaluates to true for the gating routing control. As a simple example, if you have a single gating control, it acts as an overall "on/off" switch for a set of target routing controls. You can use this to manually override automated failover, for example.</p>
    #   @return [Array<String>]
    # @!attribute wait_period_ms
    #   <p>An evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail. This helps prevent "flapping" of state. The wait period is 5000 ms by default, but you can choose a custom value.</p>
    #   @return [Integer]
    # @!attribute owner
    #   <p>The Amazon Web Services account ID of the gating rule owner.</p>
    #   @return [String]
    class GatingRule < Struct.new(
      :control_panel_arn,
      :gating_controls,
      :name,
      :rule_config,
      :safety_rule_arn,
      :status,
      :target_controls,
      :wait_period_ms,
      :owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Update to a gating rule. You can update the name or the evaluation period (wait period). If you don't specify one of the items to update, the item is unchanged.</p>
    # @!attribute name
    #   <p>The name for the gating rule. You can use any non-white space character in the name.</p>
    #   @return [String]
    # @!attribute safety_rule_arn
    #   <p>The Amazon Resource Name (ARN) of the gating rule.</p>
    #   @return [String]
    # @!attribute wait_period_ms
    #   <p>An evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail. This helps prevent "flapping" of state. The wait period is 5000 ms by default, but you can choose a custom value.</p>
    #   @return [Integer]
    class GatingRuleUpdate < Struct.new(
      :name,
      :safety_rule_arn,
      :wait_period_ms,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class GetResourcePolicyRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The resource policy.</p>
    #   @return [String]
    class GetResourcePolicyResponse < Struct.new(
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>500 response - InternalServiceError. Temporary service error. Retry the request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    # @!attribute routing_control_arn
    #   <p>The Amazon Resource Name (ARN) of the routing control.</p>
    #   @return [String]
    class ListAssociatedRoute53HealthChecksRequest < Struct.new(
      :max_results,
      :next_token,
      :routing_control_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute health_check_ids
    #   <p>Identifiers for the health checks.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>Next token for listing health checks.</p>
    #   @return [String]
    class ListAssociatedRoute53HealthChecksResponse < Struct.new(
      :health_check_ids,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    class ListClustersRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute clusters
    #   <p>An array of the clusters in an account.</p>
    #   @return [Array<Types::Cluster>]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    class ListClustersResponse < Struct.new(
      :clusters,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of a cluster.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    class ListControlPanelsRequest < Struct.new(
      :cluster_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_panels
    #   <p>The result of a successful ListControlPanel request.</p>
    #   @return [Array<Types::ControlPanel>]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    class ListControlPanelsResponse < Struct.new(
      :control_panels,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    class ListRoutingControlsRequest < Struct.new(
      :control_panel_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    # @!attribute routing_controls
    #   <p>An array of routing controls.</p>
    #   @return [Array<Types::RoutingControl>]
    class ListRoutingControlsResponse < Struct.new(
      :next_token,
      :routing_controls,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    class ListSafetyRulesRequest < Struct.new(
      :control_panel_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #   @return [String]
    # @!attribute safety_rules
    #   <p>The list of safety rules in a control panel.</p>
    #   @return [Array<Types::Rule>]
    class ListSafetyRulesResponse < Struct.new(
      :next_token,
      :safety_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource that's tagged.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A new assertion rule for a control panel.</p>
    # @!attribute asserted_controls
    #   <p>The routing controls that are part of transactions that are evaluated to determine if a request to change a routing control state is allowed. For example, you might include three routing controls, one for each of three Amazon Web Services Regions.</p>
    #   @return [Array<String>]
    # @!attribute control_panel_arn
    #   <p>The Amazon Resource Name (ARN) for the control panel.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the assertion rule. You can use any non-white space character in the name.</p>
    #   @return [String]
    # @!attribute rule_config
    #   <p>The criteria that you set for specific assertion controls (routing controls) that designate how many control states must be ON as the result of a transaction. For example, if you have three assertion controls, you might specify ATLEAST 2 for your rule configuration. This means that at least two assertion controls must be ON, so that at least two Amazon Web Services Regions have traffic flowing to them.</p>
    #   @return [Types::RuleConfig]
    # @!attribute wait_period_ms
    #   <p>An evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail. This helps prevent "flapping" of state. The wait period is 5000 ms by default, but you can choose a custom value.</p>
    #   @return [Integer]
    class NewAssertionRule < Struct.new(
      :asserted_controls,
      :control_panel_arn,
      :name,
      :rule_config,
      :wait_period_ms,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A new gating rule for a control panel.</p>
    # @!attribute control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel.</p>
    #   @return [String]
    # @!attribute gating_controls
    #   <p>The gating controls for the new gating rule. That is, routing controls that are evaluated by the rule configuration that you specify.</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>The name for the new gating rule.</p>
    #   @return [String]
    # @!attribute rule_config
    #   <p>The criteria that you set for specific gating controls (routing controls) that designate how many control states must be ON to allow you to change (set or unset) the target control states.</p>
    #   @return [Types::RuleConfig]
    # @!attribute target_controls
    #   <p>Routing controls that can only be set or unset if the specified RuleConfig evaluates to true for the specified GatingControls. For example, say you have three gating controls, one for each of three Amazon Web Services Regions. Now you specify ATLEAST 2 as your RuleConfig. With these settings, you can only change (set or unset) the routing controls that you have specified as TargetControls if that rule evaluates to true.</p> <p>In other words, your ability to change the routing controls that you have specified as TargetControls is gated by the rule that you set for the routing controls in GatingControls.</p>
    #   @return [Array<String>]
    # @!attribute wait_period_ms
    #   <p>An evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail. This helps prevent "flapping" of state. The wait period is 5000 ms by default, but you can choose a custom value.</p>
    #   @return [Integer]
    class NewGatingRule < Struct.new(
      :control_panel_arn,
      :gating_controls,
      :name,
      :rule_config,
      :target_controls,
      :wait_period_ms,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>404 response - MalformedQueryString. The query string contains a syntax error or resource not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A routing control has one of two states: ON and OFF. You can map the routing control state to the state of an Amazon Route 53 health check, which can be used to control traffic routing.</p>
    # @!attribute control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel that includes the routing control.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the routing control.</p>
    #   @return [String]
    # @!attribute routing_control_arn
    #   <p>The Amazon Resource Name (ARN) of the routing control.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The deployment status of a routing control. Status can be one of the following: PENDING, DEPLOYED, PENDING_DELETION.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The Amazon Web Services account ID of the routing control owner.</p>
    #   @return [String]
    class RoutingControl < Struct.new(
      :control_panel_arn,
      :name,
      :routing_control_arn,
      :status,
      :owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A safety rule. A safety rule can be an assertion rule or a gating rule.</p>
    # @!attribute assertion
    #   <p>An assertion rule enforces that, when a routing control state is changed, the criteria set by the rule configuration is met. Otherwise, the change to the routing control state is not accepted. For example, the criteria might be that at least one routing control state is On after the transaction so that traffic continues to flow to at least one cell for the application. This ensures that you avoid a fail-open scenario.</p>
    #   @return [Types::AssertionRule]
    # @!attribute gating
    #   <p>A gating rule verifies that a gating routing control or set of gating routing controls, evaluates as true, based on a rule configuration that you specify, which allows a set of routing control state changes to complete.</p> <p>For example, if you specify one gating routing control and you set the Type in the rule configuration to OR, that indicates that you must set the gating routing control to On for the rule to evaluate as true; that is, for the gating control "switch" to be "On". When you do that, then you can update the routing control states for the target routing controls that you specify in the gating rule.</p>
    #   @return [Types::GatingRule]
    class Rule < Struct.new(
      :assertion,
      :gating,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The rule configuration for an assertion rule. That is, the criteria that you set for specific assertion controls (routing controls) that specify how many control states must be ON after a transaction completes.</p>
    # @!attribute inverted
    #   <p>Logical negation of the rule. If the rule would usually evaluate true, it's evaluated as false, and vice versa.</p>
    #   @return [Boolean]
    # @!attribute threshold
    #   <p>The value of N, when you specify an ATLEAST rule type. That is, Threshold is the number of controls that must be set when you specify an ATLEAST type.</p>
    #   @return [Integer]
    # @!attribute type
    #   <p>A rule can be one of the following: ATLEAST, AND, or OR.</p>
    #   @return [String]
    class RuleConfig < Struct.new(
      :inverted,
      :threshold,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>402 response - You attempted to create more resources than the service allows based on service quotas.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request of adding tag to the resource</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource that's tagged.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>429 response - LimitExceededException or TooManyRequestsException.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource that's tagged.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Keys for the tags to be removed.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the cluster that you're updating.</p>
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute network_type
    #   <p>The network type of the cluster. NetworkType can be one of the following: IPV4, DUALSTACK.</p>
    #   @return [String]
    class UpdateClusterRequest < Struct.new(
      :cluster_arn,
      :network_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>The cluster that was updated.</p>
    #   @return [Types::Cluster]
    class UpdateClusterResponse < Struct.new(
      :cluster,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the control panel that you're updating.</p>
    # @!attribute control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel.</p>
    #   @return [String]
    # @!attribute control_panel_name
    #   <p>The name of the control panel.</p>
    #   @return [String]
    class UpdateControlPanelRequest < Struct.new(
      :control_panel_arn,
      :control_panel_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute control_panel
    #   <p>The control panel to update.</p>
    #   @return [Types::ControlPanel]
    class UpdateControlPanelResponse < Struct.new(
      :control_panel,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the routing control that you're updating.</p>
    # @!attribute routing_control_arn
    #   <p>The Amazon Resource Name (ARN) of the routing control.</p>
    #   @return [String]
    # @!attribute routing_control_name
    #   <p>The name of the routing control.</p>
    #   @return [String]
    class UpdateRoutingControlRequest < Struct.new(
      :routing_control_arn,
      :routing_control_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute routing_control
    #   <p>The routing control that was updated.</p>
    #   @return [Types::RoutingControl]
    class UpdateRoutingControlResponse < Struct.new(
      :routing_control,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rule that you add to Application Recovery Controller to ensure that recovery actions don't accidentally impair your application's availability.</p>
    # @!attribute assertion_rule_update
    #   <p>The assertion rule to update.</p>
    #   @return [Types::AssertionRuleUpdate]
    # @!attribute gating_rule_update
    #   <p>The gating rule to update.</p>
    #   @return [Types::GatingRuleUpdate]
    class UpdateSafetyRuleRequest < Struct.new(
      :assertion_rule_update,
      :gating_rule_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assertion_rule
    #   <p>The assertion rule updated.</p>
    #   @return [Types::AssertionRule]
    # @!attribute gating_rule
    #   <p>The gating rule updated.</p>
    #   @return [Types::GatingRule]
    class UpdateSafetyRuleResponse < Struct.new(
      :assertion_rule,
      :gating_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>400 response - Multiple causes. For example, you might have a malformed query string and input parameter might be out of range, or you might have used parameters together incorrectly.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end

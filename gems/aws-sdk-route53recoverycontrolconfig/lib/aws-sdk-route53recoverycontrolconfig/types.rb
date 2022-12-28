# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Route53RecoveryControlConfig
  module Types

    # 403 response - You do not have sufficient access to perform this
    # action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An assertion rule enforces that, when you change a routing control
    # state, that the criteria that you set in the rule configuration is
    # met. Otherwise, the change to the routing control is not accepted. For
    # example, the criteria might be that at least one routing control state
    # is On after the transaction so that traffic continues to flow to at
    # least one cell for the application. This ensures that you avoid a
    # fail-open scenario.
    #
    # @!attribute [rw] asserted_controls
    #   The routing controls that are part of transactions that are
    #   evaluated to determine if a request to change a routing control
    #   state is allowed. For example, you might include three routing
    #   controls, one for each of three Amazon Web Services Regions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] control_panel_arn
    #   The Amazon Resource Name (ARN) of the control panel.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the assertion rule. You can use any non-white space
    #   character in the name.
    #   @return [String]
    #
    # @!attribute [rw] rule_config
    #   The criteria that you set for specific assertion routing controls
    #   (AssertedControls) that designate how many routing control states
    #   must be ON as the result of a transaction. For example, if you have
    #   three assertion routing controls, you might specify ATLEAST 2 for
    #   your rule configuration. This means that at least two assertion
    #   routing control states must be ON, so that at least two Amazon Web
    #   Services Regions have traffic flowing to them.
    #   @return [Types::RuleConfig]
    #
    # @!attribute [rw] safety_rule_arn
    #   The Amazon Resource Name (ARN) of the assertion rule.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The deployment status of an assertion rule. Status can be one of the
    #   following: PENDING, DEPLOYED, PENDING\_DELETION.
    #   @return [String]
    #
    # @!attribute [rw] wait_period_ms
    #   An evaluation period, in milliseconds (ms), during which any request
    #   against the target routing controls will fail. This helps prevent
    #   "flapping" of state. The wait period is 5000 ms by default, but
    #   you can choose a custom value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/AssertionRule AWS API Documentation
    #
    class AssertionRule < Struct.new(
      :asserted_controls,
      :control_panel_arn,
      :name,
      :rule_config,
      :safety_rule_arn,
      :status,
      :wait_period_ms)
      SENSITIVE = []
      include Aws::Structure
    end

    # An update to an assertion rule. You can update the name or the
    # evaluation period (wait period). If you don't specify one of the
    # items to update, the item is unchanged.
    #
    # @!attribute [rw] name
    #   The name of the assertion rule. You can use any non-white space
    #   character in the name.
    #   @return [String]
    #
    # @!attribute [rw] safety_rule_arn
    #   The Amazon Resource Name (ARN) of the assertion rule.
    #   @return [String]
    #
    # @!attribute [rw] wait_period_ms
    #   An evaluation period, in milliseconds (ms), during which any request
    #   against the target routing controls will fail. This helps prevent
    #   "flapping" of state. The wait period is 5000 ms by default, but
    #   you can choose a custom value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/AssertionRuleUpdate AWS API Documentation
    #
    class AssertionRuleUpdate < Struct.new(
      :name,
      :safety_rule_arn,
      :wait_period_ms)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of five redundant Regional endpoints against which you can
    # execute API calls to update or get the state of routing controls. You
    # can host multiple control panels and routing controls on one cluster.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_endpoints
    #   Endpoints for a cluster. Specify one of these endpoints when you
    #   want to set or retrieve a routing control state in the cluster.
    #
    #   To get or update the routing control state, see the Amazon Route 53
    #   Application Recovery Controller Routing Control Actions.
    #   @return [Array<Types::ClusterEndpoint>]
    #
    # @!attribute [rw] name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Deployment status of a resource. Status can be one of the following:
    #   PENDING, DEPLOYED, PENDING\_DELETION.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/Cluster AWS API Documentation
    #
    class Cluster < Struct.new(
      :cluster_arn,
      :cluster_endpoints,
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A cluster endpoint. Specify an endpoint when you want to set or
    # retrieve a routing control state in the cluster.
    #
    # @!attribute [rw] endpoint
    #   A cluster endpoint. Specify an endpoint and Amazon Web Services
    #   Region when you want to set or retrieve a routing control state in
    #   the cluster.
    #
    #   To get or update the routing control state, see the Amazon Route 53
    #   Application Recovery Controller Routing Control Actions.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region for a cluster endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ClusterEndpoint AWS API Documentation
    #
    class ClusterEndpoint < Struct.new(
      :endpoint,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # 409 response - ConflictException. You might be using a predefined
    # variable.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A control panel represents a group of routing controls that can be
    # changed together in a single transaction.
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster that includes the
    #   control panel.
    #   @return [String]
    #
    # @!attribute [rw] control_panel_arn
    #   The Amazon Resource Name (ARN) of the control panel.
    #   @return [String]
    #
    # @!attribute [rw] default_control_panel
    #   A flag that Amazon Route 53 Application Recovery Controller sets to
    #   true to designate the default control panel for a cluster. When you
    #   create a cluster, Amazon Route 53 Application Recovery Controller
    #   creates a control panel, and sets this flag for that control panel.
    #   If you create a control panel yourself, this flag is set to false.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the control panel. You can use any non-white space
    #   character in the name.
    #   @return [String]
    #
    # @!attribute [rw] routing_control_count
    #   The number of routing controls in the control panel.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The deployment status of control panel. Status can be one of the
    #   following: PENDING, DEPLOYED, PENDING\_DELETION.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ControlPanel AWS API Documentation
    #
    class ControlPanel < Struct.new(
      :cluster_arn,
      :control_panel_arn,
      :default_control_panel,
      :name,
      :routing_control_count,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of a request to create a cluster.
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive string of up to 64 ASCII characters. To
    #   make an idempotent API request with an action, specify a client
    #   token in the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the cluster.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/CreateClusterRequest AWS API Documentation
    #
    class CreateClusterRequest < Struct.new(
      :client_token,
      :cluster_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful CreateCluster request.
    #
    # @!attribute [rw] cluster
    #   The cluster that was created.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/CreateClusterResponse AWS API Documentation
    #
    class CreateClusterResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to create a control panel.
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive string of up to 64 ASCII characters. To
    #   make an idempotent API request with an action, specify a client
    #   token in the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster for the control panel.
    #   @return [String]
    #
    # @!attribute [rw] control_panel_name
    #   The name of the control panel.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the control panel.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/CreateControlPanelRequest AWS API Documentation
    #
    class CreateControlPanelRequest < Struct.new(
      :client_token,
      :cluster_arn,
      :control_panel_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful CreateControlPanel request.
    #
    # @!attribute [rw] control_panel
    #   Information about a control panel.
    #   @return [Types::ControlPanel]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/CreateControlPanelResponse AWS API Documentation
    #
    class CreateControlPanelResponse < Struct.new(
      :control_panel)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to create a routing control. If you don't specify
    # ControlPanelArn, Amazon Route 53 Application Recovery Controller
    # creates the routing control in DefaultControlPanel.
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive string of up to 64 ASCII characters. To
    #   make an idempotent API request with an action, specify a client
    #   token in the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster that includes the
    #   routing control.
    #   @return [String]
    #
    # @!attribute [rw] control_panel_arn
    #   The Amazon Resource Name (ARN) of the control panel that includes
    #   the routing control.
    #   @return [String]
    #
    # @!attribute [rw] routing_control_name
    #   The name of the routing control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/CreateRoutingControlRequest AWS API Documentation
    #
    class CreateRoutingControlRequest < Struct.new(
      :client_token,
      :cluster_arn,
      :control_panel_arn,
      :routing_control_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful CreateRoutingControl request.
    #
    # @!attribute [rw] routing_control
    #   The routing control that is created.
    #   @return [Types::RoutingControl]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/CreateRoutingControlResponse AWS API Documentation
    #
    class CreateRoutingControlResponse < Struct.new(
      :routing_control)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to create a safety rule. You can create either an assertion
    # rule or a gating rule with a CreateSafetyRuleRequest call.
    #
    # @!attribute [rw] assertion_rule
    #   The assertion rule requested.
    #   @return [Types::NewAssertionRule]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive string of up to 64 ASCII characters. To
    #   make an idempotent API request with an action, specify a client
    #   token in the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] gating_rule
    #   The gating rule requested.
    #   @return [Types::NewGatingRule]
    #
    # @!attribute [rw] tags
    #   The tags associated with the safety rule.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/CreateSafetyRuleRequest AWS API Documentation
    #
    class CreateSafetyRuleRequest < Struct.new(
      :assertion_rule,
      :client_token,
      :gating_rule,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful CreateSafetyRule request.
    #
    # @!attribute [rw] assertion_rule
    #   The assertion rule created.
    #   @return [Types::AssertionRule]
    #
    # @!attribute [rw] gating_rule
    #   The gating rule created.
    #   @return [Types::GatingRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/CreateSafetyRuleResponse AWS API Documentation
    #
    class CreateSafetyRuleResponse < Struct.new(
      :assertion_rule,
      :gating_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DeleteClusterRequest AWS API Documentation
    #
    class DeleteClusterRequest < Struct.new(
      :cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A successful DeleteCluster request returns no response.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DeleteClusterResponse AWS API Documentation
    #
    class DeleteClusterResponse < Aws::EmptyStructure; end

    # @!attribute [rw] control_panel_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DeleteControlPanelRequest AWS API Documentation
    #
    class DeleteControlPanelRequest < Struct.new(
      :control_panel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A successful DeleteControlPanel request returns no response.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DeleteControlPanelResponse AWS API Documentation
    #
    class DeleteControlPanelResponse < Aws::EmptyStructure; end

    # @!attribute [rw] routing_control_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DeleteRoutingControlRequest AWS API Documentation
    #
    class DeleteRoutingControlRequest < Struct.new(
      :routing_control_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A successful DeleteRoutingControl request returns no response.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DeleteRoutingControlResponse AWS API Documentation
    #
    class DeleteRoutingControlResponse < Aws::EmptyStructure; end

    # @!attribute [rw] safety_rule_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DeleteSafetyRuleRequest AWS API Documentation
    #
    class DeleteSafetyRuleRequest < Struct.new(
      :safety_rule_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # There is an empty response when you delete a safety rule.
    #
    # /&gt;
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DeleteSafetyRuleResponse AWS API Documentation
    #
    class DeleteSafetyRuleResponse < Aws::EmptyStructure; end

    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DescribeClusterRequest AWS API Documentation
    #
    class DescribeClusterRequest < Struct.new(
      :cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful DescribeCluster request.
    #
    # @!attribute [rw] cluster
    #   The cluster for the DescribeCluster request.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DescribeClusterResponse AWS API Documentation
    #
    class DescribeClusterResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] control_panel_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DescribeControlPanelRequest AWS API Documentation
    #
    class DescribeControlPanelRequest < Struct.new(
      :control_panel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful DescribeControlPanel request.
    #
    # @!attribute [rw] control_panel
    #   Information about the control panel.
    #   @return [Types::ControlPanel]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DescribeControlPanelResponse AWS API Documentation
    #
    class DescribeControlPanelResponse < Struct.new(
      :control_panel)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] routing_control_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DescribeRoutingControlRequest AWS API Documentation
    #
    class DescribeRoutingControlRequest < Struct.new(
      :routing_control_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful DescribeRoutingControl request.
    #
    # @!attribute [rw] routing_control
    #   Information about the routing control.
    #   @return [Types::RoutingControl]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DescribeRoutingControlResponse AWS API Documentation
    #
    class DescribeRoutingControlResponse < Struct.new(
      :routing_control)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] safety_rule_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DescribeSafetyRuleRequest AWS API Documentation
    #
    class DescribeSafetyRuleRequest < Struct.new(
      :safety_rule_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response when you send a DescribeSafetyRuleResponse request.
    #
    # @!attribute [rw] assertion_rule
    #   The assertion rule in the response.
    #   @return [Types::AssertionRule]
    #
    # @!attribute [rw] gating_rule
    #   The gating rule in the response.
    #   @return [Types::GatingRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/DescribeSafetyRuleResponse AWS API Documentation
    #
    class DescribeSafetyRuleResponse < Struct.new(
      :assertion_rule,
      :gating_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # A gating rule verifies that a gating routing control or set of gating
    # routing controls, evaluates as true, based on a rule configuration
    # that you specify, which allows a set of routing control state changes
    # to complete.
    #
    # For example, if you specify one gating routing control and you set the
    # Type in the rule configuration to OR, that indicates that you must set
    # the gating routing control to On for the rule to evaluate as true;
    # that is, for the gating control "switch" to be "On". When you do
    # that, then you can update the routing control states for the target
    # routing controls that you specify in the gating rule.
    #
    # @!attribute [rw] control_panel_arn
    #   The Amazon Resource Name (ARN) of the control panel.
    #   @return [String]
    #
    # @!attribute [rw] gating_controls
    #   An array of gating routing control Amazon Resource Names (ARNs). For
    #   a simple "on/off" switch, specify the ARN for one routing control.
    #   The gating routing controls are evaluated by the rule configuration
    #   that you specify to determine if the target routing control states
    #   can be changed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name for the gating rule. You can use any non-white space
    #   character in the name.
    #   @return [String]
    #
    # @!attribute [rw] rule_config
    #   The criteria that you set for gating routing controls that designate
    #   how many of the routing control states must be ON to allow you to
    #   update target routing control states.
    #   @return [Types::RuleConfig]
    #
    # @!attribute [rw] safety_rule_arn
    #   The Amazon Resource Name (ARN) of the gating rule.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The deployment status of a gating rule. Status can be one of the
    #   following: PENDING, DEPLOYED, PENDING\_DELETION.
    #   @return [String]
    #
    # @!attribute [rw] target_controls
    #   An array of target routing control Amazon Resource Names (ARNs) for
    #   which the states can only be updated if the rule configuration that
    #   you specify evaluates to true for the gating routing control. As a
    #   simple example, if you have a single gating control, it acts as an
    #   overall "on/off" switch for a set of target routing controls. You
    #   can use this to manually override automated failover, for example.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wait_period_ms
    #   An evaluation period, in milliseconds (ms), during which any request
    #   against the target routing controls will fail. This helps prevent
    #   "flapping" of state. The wait period is 5000 ms by default, but
    #   you can choose a custom value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/GatingRule AWS API Documentation
    #
    class GatingRule < Struct.new(
      :control_panel_arn,
      :gating_controls,
      :name,
      :rule_config,
      :safety_rule_arn,
      :status,
      :target_controls,
      :wait_period_ms)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update to a gating rule. You can update the name or the evaluation
    # period (wait period). If you don't specify one of the items to
    # update, the item is unchanged.
    #
    # @!attribute [rw] name
    #   The name for the gating rule. You can use any non-white space
    #   character in the name.
    #   @return [String]
    #
    # @!attribute [rw] safety_rule_arn
    #   The Amazon Resource Name (ARN) of the gating rule.
    #   @return [String]
    #
    # @!attribute [rw] wait_period_ms
    #   An evaluation period, in milliseconds (ms), during which any request
    #   against the target routing controls will fail. This helps prevent
    #   "flapping" of state. The wait period is 5000 ms by default, but
    #   you can choose a custom value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/GatingRuleUpdate AWS API Documentation
    #
    class GatingRuleUpdate < Struct.new(
      :name,
      :safety_rule_arn,
      :wait_period_ms)
      SENSITIVE = []
      include Aws::Structure
    end

    # 500 response - InternalServiceError. Temporary service error. Retry
    # the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] routing_control_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ListAssociatedRoute53HealthChecksRequest AWS API Documentation
    #
    class ListAssociatedRoute53HealthChecksRequest < Struct.new(
      :max_results,
      :next_token,
      :routing_control_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful ListAssociatedRoute53HealthChecks request.
    #
    # @!attribute [rw] health_check_ids
    #   Identifiers for the health checks.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Next token for listing health checks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ListAssociatedRoute53HealthChecksResponse AWS API Documentation
    #
    class ListAssociatedRoute53HealthChecksResponse < Struct.new(
      :health_check_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ListClustersRequest AWS API Documentation
    #
    class ListClustersRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful ListClusters request.
    #
    # @!attribute [rw] clusters
    #   An array of the clusters in an account.
    #   @return [Array<Types::Cluster>]
    #
    # @!attribute [rw] next_token
    #   The token that identifies which batch of results you want to see.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ListClustersResponse AWS API Documentation
    #
    class ListClustersResponse < Struct.new(
      :clusters,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ListControlPanelsRequest AWS API Documentation
    #
    class ListControlPanelsRequest < Struct.new(
      :cluster_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful ListControlPanel request.
    #
    # @!attribute [rw] control_panels
    #   The result of a successful ListControlPanel request.
    #   @return [Array<Types::ControlPanel>]
    #
    # @!attribute [rw] next_token
    #   The token that identifies which batch of results you want to see.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ListControlPanelsResponse AWS API Documentation
    #
    class ListControlPanelsResponse < Struct.new(
      :control_panels,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] control_panel_arn
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ListRoutingControlsRequest AWS API Documentation
    #
    class ListRoutingControlsRequest < Struct.new(
      :control_panel_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful ListRoutingControl request.
    #
    # @!attribute [rw] next_token
    #   The token that identifies which batch of results you want to see.
    #   @return [String]
    #
    # @!attribute [rw] routing_controls
    #   An array of routing controls.
    #   @return [Array<Types::RoutingControl>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ListRoutingControlsResponse AWS API Documentation
    #
    class ListRoutingControlsResponse < Struct.new(
      :next_token,
      :routing_controls)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] control_panel_arn
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ListSafetyRulesRequest AWS API Documentation
    #
    class ListSafetyRulesRequest < Struct.new(
      :control_panel_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response to a ListSafetyRulesRequest.
    #
    # @!attribute [rw] next_token
    #   The token that identifies which batch of results you want to see.
    #   @return [String]
    #
    # @!attribute [rw] safety_rules
    #   The list of safety rules in a control panel.
    #   @return [Array<Types::Rule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ListSafetyRulesResponse AWS API Documentation
    #
    class ListSafetyRulesResponse < Struct.new(
      :next_token,
      :safety_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful ListTagsForResource request.
    #
    # @!attribute [rw] tags
    #   The tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A new assertion rule for a control panel.
    #
    # @!attribute [rw] asserted_controls
    #   The routing controls that are part of transactions that are
    #   evaluated to determine if a request to change a routing control
    #   state is allowed. For example, you might include three routing
    #   controls, one for each of three Amazon Web Services Regions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] control_panel_arn
    #   The Amazon Resource Name (ARN) for the control panel.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the assertion rule. You can use any non-white space
    #   character in the name.
    #   @return [String]
    #
    # @!attribute [rw] rule_config
    #   The criteria that you set for specific assertion controls (routing
    #   controls) that designate how many control states must be ON as the
    #   result of a transaction. For example, if you have three assertion
    #   controls, you might specify ATLEAST 2 for your rule configuration.
    #   This means that at least two assertion controls must be ON, so that
    #   at least two Amazon Web Services Regions have traffic flowing to
    #   them.
    #   @return [Types::RuleConfig]
    #
    # @!attribute [rw] wait_period_ms
    #   An evaluation period, in milliseconds (ms), during which any request
    #   against the target routing controls will fail. This helps prevent
    #   "flapping" of state. The wait period is 5000 ms by default, but
    #   you can choose a custom value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/NewAssertionRule AWS API Documentation
    #
    class NewAssertionRule < Struct.new(
      :asserted_controls,
      :control_panel_arn,
      :name,
      :rule_config,
      :wait_period_ms)
      SENSITIVE = []
      include Aws::Structure
    end

    # A new gating rule for a control panel.
    #
    # @!attribute [rw] control_panel_arn
    #   The Amazon Resource Name (ARN) of the control panel.
    #   @return [String]
    #
    # @!attribute [rw] gating_controls
    #   The gating controls for the new gating rule. That is, routing
    #   controls that are evaluated by the rule configuration that you
    #   specify.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name for the new gating rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_config
    #   The criteria that you set for specific gating controls (routing
    #   controls) that designate how many control states must be ON to allow
    #   you to change (set or unset) the target control states.
    #   @return [Types::RuleConfig]
    #
    # @!attribute [rw] target_controls
    #   Routing controls that can only be set or unset if the specified
    #   RuleConfig evaluates to true for the specified GatingControls. For
    #   example, say you have three gating controls, one for each of three
    #   Amazon Web Services Regions. Now you specify ATLEAST 2 as your
    #   RuleConfig. With these settings, you can only change (set or unset)
    #   the routing controls that you have specified as TargetControls if
    #   that rule evaluates to true.
    #
    #   In other words, your ability to change the routing controls that you
    #   have specified as TargetControls is gated by the rule that you set
    #   for the routing controls in GatingControls.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wait_period_ms
    #   An evaluation period, in milliseconds (ms), during which any request
    #   against the target routing controls will fail. This helps prevent
    #   "flapping" of state. The wait period is 5000 ms by default, but
    #   you can choose a custom value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/NewGatingRule AWS API Documentation
    #
    class NewGatingRule < Struct.new(
      :control_panel_arn,
      :gating_controls,
      :name,
      :rule_config,
      :target_controls,
      :wait_period_ms)
      SENSITIVE = []
      include Aws::Structure
    end

    # 404 response - MalformedQueryString. The query string contains a
    # syntax error or resource not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A routing control has one of two states: ON and OFF. You can map the
    # routing control state to the state of an Amazon Route 53 health check,
    # which can be used to control traffic routing.
    #
    # @!attribute [rw] control_panel_arn
    #   The Amazon Resource Name (ARN) of the control panel that includes
    #   the routing control.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the routing control.
    #   @return [String]
    #
    # @!attribute [rw] routing_control_arn
    #   The Amazon Resource Name (ARN) of the routing control.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The deployment status of a routing control. Status can be one of the
    #   following: PENDING, DEPLOYED, PENDING\_DELETION.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/RoutingControl AWS API Documentation
    #
    class RoutingControl < Struct.new(
      :control_panel_arn,
      :name,
      :routing_control_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A safety rule. A safety rule can be an assertion rule or a gating
    # rule.
    #
    # @!attribute [rw] assertion
    #   An assertion rule enforces that, when a routing control state is
    #   changed, the criteria set by the rule configuration is met.
    #   Otherwise, the change to the routing control state is not accepted.
    #   For example, the criteria might be that at least one routing control
    #   state is On after the transaction so that traffic continues to flow
    #   to at least one cell for the application. This ensures that you
    #   avoid a fail-open scenario.
    #   @return [Types::AssertionRule]
    #
    # @!attribute [rw] gating
    #   A gating rule verifies that a gating routing control or set of
    #   gating routing controls, evaluates as true, based on a rule
    #   configuration that you specify, which allows a set of routing
    #   control state changes to complete.
    #
    #   For example, if you specify one gating routing control and you set
    #   the Type in the rule configuration to OR, that indicates that you
    #   must set the gating routing control to On for the rule to evaluate
    #   as true; that is, for the gating control "switch" to be "On".
    #   When you do that, then you can update the routing control states for
    #   the target routing controls that you specify in the gating rule.
    #   @return [Types::GatingRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/Rule AWS API Documentation
    #
    class Rule < Struct.new(
      :assertion,
      :gating)
      SENSITIVE = []
      include Aws::Structure
    end

    # The rule configuration for an assertion rule. That is, the criteria
    # that you set for specific assertion controls (routing controls) that
    # specify how many control states must be ON after a transaction
    # completes.
    #
    # @!attribute [rw] inverted
    #   Logical negation of the rule. If the rule would usually evaluate
    #   true, it's evaluated as false, and vice versa.
    #   @return [Boolean]
    #
    # @!attribute [rw] threshold
    #   The value of N, when you specify an ATLEAST rule type. That is,
    #   Threshold is the number of controls that must be set when you
    #   specify an ATLEAST type.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   A rule can be one of the following: ATLEAST, AND, or OR.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/RuleConfig AWS API Documentation
    #
    class RuleConfig < Struct.new(
      :inverted,
      :threshold,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # 402 response - You attempted to create more resources than the service
    # allows based on service quotas.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to tag a resource.
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful TagResource request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # 429 response - LimitExceededException or TooManyRequestsException.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful UntagResource request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # Updates an existing control panel.
    #
    # @!attribute [rw] control_panel_arn
    #   The Amazon Resource Name (ARN) of the control panel.
    #   @return [String]
    #
    # @!attribute [rw] control_panel_name
    #   The name of the control panel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/UpdateControlPanelRequest AWS API Documentation
    #
    class UpdateControlPanelRequest < Struct.new(
      :control_panel_arn,
      :control_panel_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful UpdateControlPanel request.
    #
    # @!attribute [rw] control_panel
    #   The control panel to update.
    #   @return [Types::ControlPanel]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/UpdateControlPanelResponse AWS API Documentation
    #
    class UpdateControlPanelResponse < Struct.new(
      :control_panel)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to update a routing control.
    #
    # @!attribute [rw] routing_control_arn
    #   The Amazon Resource Name (ARN) of the routing control.
    #   @return [String]
    #
    # @!attribute [rw] routing_control_name
    #   The name of the routing control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/UpdateRoutingControlRequest AWS API Documentation
    #
    class UpdateRoutingControlRequest < Struct.new(
      :routing_control_arn,
      :routing_control_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful UpdateRoutingControl request.
    #
    # @!attribute [rw] routing_control
    #   The routing control that was updated.
    #   @return [Types::RoutingControl]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/UpdateRoutingControlResponse AWS API Documentation
    #
    class UpdateRoutingControlResponse < Struct.new(
      :routing_control)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to update a safety rule. A safety rule can be an assertion
    # rule or a gating rule.
    #
    # @!attribute [rw] assertion_rule_update
    #   The assertion rule to update.
    #   @return [Types::AssertionRuleUpdate]
    #
    # @!attribute [rw] gating_rule_update
    #   The gating rule to update.
    #   @return [Types::GatingRuleUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/UpdateSafetyRuleRequest AWS API Documentation
    #
    class UpdateSafetyRuleRequest < Struct.new(
      :assertion_rule_update,
      :gating_rule_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful UpdateSafetyRule request.
    #
    # @!attribute [rw] assertion_rule
    #   The assertion rule updated.
    #   @return [Types::AssertionRule]
    #
    # @!attribute [rw] gating_rule
    #   The gating rule updated.
    #   @return [Types::GatingRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/UpdateSafetyRuleResponse AWS API Documentation
    #
    class UpdateSafetyRuleResponse < Struct.new(
      :assertion_rule,
      :gating_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # 400 response - Multiple causes. For example, you might have a
    # malformed query string and input parameter might be out of range, or
    # you might have used parameters together incorrectly.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config-2020-11-02/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

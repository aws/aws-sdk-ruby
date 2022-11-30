# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Route53RecoveryCluster
  module Types

    # You don't have sufficient permissions to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was a conflict with this request. Try again.
    #
    # @!attribute [rw] message
    #   Description of the ConflictException error
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource in use
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the resource in use
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The cluster endpoint isn't available. Try another cluster endpoint.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/EndpointTemporarilyUnavailableException AWS API Documentation
    #
    class EndpointTemporarilyUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] routing_control_arn
    #   The Amazon Resource Name (ARN) for the routing control that you want
    #   to get the state for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/GetRoutingControlStateRequest AWS API Documentation
    #
    class GetRoutingControlStateRequest < Struct.new(
      :routing_control_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] routing_control_arn
    #   The Amazon Resource Name (ARN) of the response.
    #   @return [String]
    #
    # @!attribute [rw] routing_control_state
    #   The state of the routing control.
    #   @return [String]
    #
    # @!attribute [rw] routing_control_name
    #   The routing control name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/GetRoutingControlStateResponse AWS API Documentation
    #
    class GetRoutingControlStateResponse < Struct.new(
      :routing_control_arn,
      :routing_control_state,
      :routing_control_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was an unexpected error during processing of the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Advice to clients on when the call can be safely retried
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] control_panel_arn
    #   The Amazon Resource Name (ARN) of the control panel of the routing
    #   controls to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of routing controls objects that you want to return with
    #   this call. The default value is 500.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/ListRoutingControlsRequest AWS API Documentation
    #
    class ListRoutingControlsRequest < Struct.new(
      :control_panel_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] routing_controls
    #   The list of routing controls.
    #   @return [Array<Types::RoutingControl>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/ListRoutingControlsResponse AWS API Documentation
    #
    class ListRoutingControlsResponse < Struct.new(
      :routing_controls,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request references a routing control or control panel that was not
    # found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Hypothetical resource identifier that was not found
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Hypothetical resource type that was not found
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A routing control, which is a simple on/off switch that you can use to
    # route traffic to cells. When a routing control state is On, traffic
    # flows to a cell. When the state is Off, traffic does not flow.
    #
    # @!attribute [rw] control_panel_arn
    #   The Amazon Resource Name (ARN) of the control panel where the
    #   routing control is located.
    #   @return [String]
    #
    # @!attribute [rw] control_panel_name
    #   The name of the control panel where the routing control is located.
    #   @return [String]
    #
    # @!attribute [rw] routing_control_arn
    #   The Amazon Resource Name (ARN) of the routing control.
    #   @return [String]
    #
    # @!attribute [rw] routing_control_name
    #   The name of the routing control.
    #   @return [String]
    #
    # @!attribute [rw] routing_control_state
    #   The current state of the routing control. When a routing control
    #   state is On, traffic flows to a cell. When the state is Off, traffic
    #   does not flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/RoutingControl AWS API Documentation
    #
    class RoutingControl < Struct.new(
      :control_panel_arn,
      :control_panel_name,
      :routing_control_arn,
      :routing_control_name,
      :routing_control_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request can't update that many routing control states at the same
    # time. Try again with fewer routing control states.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource identifier of the limit that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type of the limit that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] limit_code
    #   The code of the limit that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code of the limit that was exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/ServiceLimitExceededException AWS API Documentation
    #
    class ServiceLimitExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :limit_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied because of request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Advice to clients on when the call can be safely retried
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # A routing control state entry.
    #
    # @!attribute [rw] routing_control_arn
    #   The Amazon Resource Name (ARN) for a routing control state entry.
    #   @return [String]
    #
    # @!attribute [rw] routing_control_state
    #   The routing control state in a set of routing control state entries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/UpdateRoutingControlStateEntry AWS API Documentation
    #
    class UpdateRoutingControlStateEntry < Struct.new(
      :routing_control_arn,
      :routing_control_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] routing_control_arn
    #   The Amazon Resource Name (ARN) for the routing control that you want
    #   to update the state for.
    #   @return [String]
    #
    # @!attribute [rw] routing_control_state
    #   The state of the routing control. You can set the value to be On or
    #   Off.
    #   @return [String]
    #
    # @!attribute [rw] safety_rules_to_override
    #   The Amazon Resource Names (ARNs) for the safety rules that you want
    #   to override when you're updating the state of a routing control.
    #   You can override one safety rule or multiple safety rules by
    #   including one or more ARNs, separated by commas.
    #
    #   For more information, see [ Override safety rules to reroute
    #   traffic][1] in the Amazon Route 53 Application Recovery Controller
    #   Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/UpdateRoutingControlStateRequest AWS API Documentation
    #
    class UpdateRoutingControlStateRequest < Struct.new(
      :routing_control_arn,
      :routing_control_state,
      :safety_rules_to_override)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/UpdateRoutingControlStateResponse AWS API Documentation
    #
    class UpdateRoutingControlStateResponse < Aws::EmptyStructure; end

    # @!attribute [rw] update_routing_control_state_entries
    #   A set of routing control entries that you want to update.
    #   @return [Array<Types::UpdateRoutingControlStateEntry>]
    #
    # @!attribute [rw] safety_rules_to_override
    #   The Amazon Resource Names (ARNs) for the safety rules that you want
    #   to override when you're updating routing control states. You can
    #   override one safety rule or multiple safety rules by including one
    #   or more ARNs, separated by commas.
    #
    #   For more information, see [ Override safety rules to reroute
    #   traffic][1] in the Amazon Route 53 Application Recovery Controller
    #   Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/UpdateRoutingControlStatesRequest AWS API Documentation
    #
    class UpdateRoutingControlStatesRequest < Struct.new(
      :update_routing_control_state_entries,
      :safety_rules_to_override)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/UpdateRoutingControlStatesResponse AWS API Documentation
    #
    class UpdateRoutingControlStatesResponse < Aws::EmptyStructure; end

    # There was a validation error on the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Reason the request failed validation
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   The fields that caused the error, if applicable
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was a validation error on the request.
    #
    # @!attribute [rw] name
    #   The field that had the validation exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Information about the validation exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

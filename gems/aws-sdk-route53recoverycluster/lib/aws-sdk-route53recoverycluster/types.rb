# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Route53RecoveryCluster
  module Types

    # You don't have sufficient permissions to query the routing control
    # state.
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

    # @note When making an API call, you may pass GetRoutingControlStateRequest
    #   data as a hash:
    #
    #       {
    #         routing_control_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] routing_control_arn
    #   The Amazon Resource Number (ARN) for the routing control that you
    #   want to get the state for.
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
    #   The Amazon Resource Number (ARN) of the response.
    #   @return [String]
    #
    # @!attribute [rw] routing_control_state
    #   The state of the routing control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/GetRoutingControlStateResponse AWS API Documentation
    #
    class GetRoutingControlStateResponse < Struct.new(
      :routing_control_arn,
      :routing_control_state)
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

    # The request references a routing control that was not found.
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

    # A routing control state.
    #
    # @note When making an API call, you may pass UpdateRoutingControlStateEntry
    #   data as a hash:
    #
    #       {
    #         routing_control_arn: "Arn", # required
    #         routing_control_state: "On", # required, accepts On, Off
    #       }
    #
    # @!attribute [rw] routing_control_arn
    #   The Amazon Resource Number (ARN) for the routing control state
    #   entry.
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

    # @note When making an API call, you may pass UpdateRoutingControlStateRequest
    #   data as a hash:
    #
    #       {
    #         routing_control_arn: "Arn", # required
    #         routing_control_state: "On", # required, accepts On, Off
    #       }
    #
    # @!attribute [rw] routing_control_arn
    #   The Amazon Resource Number (ARN) for the routing control that you
    #   want to update the state for.
    #   @return [String]
    #
    # @!attribute [rw] routing_control_state
    #   The state of the routing control. You can set the value to be On or
    #   Off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/UpdateRoutingControlStateRequest AWS API Documentation
    #
    class UpdateRoutingControlStateRequest < Struct.new(
      :routing_control_arn,
      :routing_control_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/UpdateRoutingControlStateResponse AWS API Documentation
    #
    class UpdateRoutingControlStateResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateRoutingControlStatesRequest
    #   data as a hash:
    #
    #       {
    #         update_routing_control_state_entries: [ # required
    #           {
    #             routing_control_arn: "Arn", # required
    #             routing_control_state: "On", # required, accepts On, Off
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] update_routing_control_state_entries
    #   A set of routing control entries that you want to update.
    #   @return [Array<Types::UpdateRoutingControlStateEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster-2019-12-02/UpdateRoutingControlStatesRequest AWS API Documentation
    #
    class UpdateRoutingControlStatesRequest < Struct.new(
      :update_routing_control_state_entries)
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

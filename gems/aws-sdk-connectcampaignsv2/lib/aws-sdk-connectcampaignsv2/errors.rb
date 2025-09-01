# frozen_string_literal: true

# This is generated code!

module Aws::ConnectCampaignsV2
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ConnectCampaignsV2::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ConnectCampaignsV2::Errors::ServiceError
  #       # rescues all API errors
  #     end
  #
  # ## Request Context
  #
  # ServiceError objects have a {Smithy::Client::ServiceError#context #context} method
  # that returns information about the request that generated the error.
  # See {Smithy::Client::HandlerContext} for more information.
  #
  # ## Error Classes
  #
  # * {AccessDeniedException}
  # * {ConflictException}
  # * {InternalServerException}
  # * {InvalidCampaignStateException}
  # * {InvalidStateException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # You do not have sufficient access to perform this action.
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConnectCampaignsV2::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def x_amz_error_type
        @data[:x_amz_error_type]
      end
    end

    # The request could not be processed because of conflict in the current state of the resource.
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConnectCampaignsV2::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def x_amz_error_type
        @data[:x_amz_error_type]
      end
    end

    # Request processing failed because of an error or failure with the service.
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConnectCampaignsV2::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def x_amz_error_type
        @data[:x_amz_error_type]
      end

      def retryable?
        true
      end
    end

    # The request could not be processed because of conflict in the current state of the campaign.
    class InvalidCampaignStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConnectCampaignsV2::Types::InvalidCampaignStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def state
        @data[:state]
      end

      def message
        @data[:message]
      end

      def x_amz_error_type
        @data[:x_amz_error_type]
      end
    end

    # The request could not be processed because of conflict in the current state.
    class InvalidStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConnectCampaignsV2::Types::InvalidStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def x_amz_error_type
        @data[:x_amz_error_type]
      end
    end

    # The specified resource was not found.
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConnectCampaignsV2::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def x_amz_error_type
        @data[:x_amz_error_type]
      end
    end

    # Request would cause a service quota to be exceeded.
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConnectCampaignsV2::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def x_amz_error_type
        @data[:x_amz_error_type]
      end
    end

    # The request was denied due to request throttling.
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConnectCampaignsV2::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def x_amz_error_type
        @data[:x_amz_error_type]
      end

      def retryable?
        true
      end
    end

    # The input fails to satisfy the constraints specified by an AWS service.
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ConnectCampaignsV2::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def x_amz_error_type
        @data[:x_amz_error_type]
      end
    end
  end
end

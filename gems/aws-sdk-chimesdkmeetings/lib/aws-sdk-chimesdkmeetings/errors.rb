# frozen_string_literal: true

# This is generated code!

module Aws::ChimeSDKMeetings
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ChimeSDKMeetings::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ChimeSDKMeetings::Errors::ServiceError
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
  # * {BadRequestException}
  # * {ConflictException}
  # * {ForbiddenException}
  # * {LimitExceededException}
  # * {NotFoundException}
  # * {ResourceNotFoundException}
  # * {ServiceFailureException}
  # * {ServiceUnavailableException}
  # * {ThrottlingException}
  # * {TooManyTagsException}
  # * {UnauthorizedException}
  # * {UnprocessableEntityException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The input parameters don't match the service's restrictions.</p>
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKMeetings::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end

      # <p>The request id associated with the call responsible for the exception.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>Multiple instances of the same request have been made simultaneously.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKMeetings::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end

      # <p>The ID of the request involved in the conflict.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>The client is permanently forbidden from making the request.</p>
    class ForbiddenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKMeetings::Types::ForbiddenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end

      # <p>The request id associated with the call responsible for the exception.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>The request exceeds the resource limit.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKMeetings::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end

      # <p>The request id associated with the call responsible for the exception.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>One or more of the resources in the request does not exist in the system.</p>
    class NotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKMeetings::Types::NotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end

      # <p>The request ID associated with the call responsible for the exception.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>The resource that you want to tag couldn't be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKMeetings::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource that couldn't be found.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The name of the resource that couldn't be found.</p>
      def resource_name
        @data[:resource_name]
      end
    end

    # <p>The service encountered an unexpected error.</p>
    class ServiceFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKMeetings::Types::ServiceFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end

      # <p>The ID of the failed request.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>The service is currently unavailable.</p>
    class ServiceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKMeetings::Types::ServiceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end

      # <p>The request id associated with the call responsible for the exception.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The number of seconds the caller should wait before retrying.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>The number of customer requests exceeds the request rate limit.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKMeetings::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end

      # <p>The ID of the request that exceeded the throttling limit.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>Too many tags were added to the specified resource.</p>
    class TooManyTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKMeetings::Types::TooManyTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end

      # <p>The ID of the request that contains too many tags.</p>
      def request_id
        @data[:request_id]
      end

      # <p>The name of the resource that received too many tags.</p>
      def resource_name
        @data[:resource_name]
      end
    end

    # <p>The user isn't authorized to request a resource.</p>
    class UnauthorizedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKMeetings::Types::UnauthorizedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end

      # <p>The request id associated with the call responsible for the exception.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>The request was well-formed but was unable to be followed due to semantic errors.</p>
    class UnprocessableEntityException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ChimeSDKMeetings::Types::UnprocessableEntityException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end

      # <p>The request id associated with the call responsible for the exception.</p>
      def request_id
        @data[:request_id]
      end
    end
  end
end

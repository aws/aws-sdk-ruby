# frozen_string_literal: true

# This is generated code!

module Aws::CloudTrailData
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::CloudTrailData::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudTrailData::Errors::ServiceError
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
  # * {ChannelInsufficientPermission}
  # * {ChannelNotFound}
  # * {ChannelUnsupportedSchema}
  # * {DuplicatedAuditEventId}
  # * {InvalidChannelARN}
  # * {UnsupportedOperationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The caller's account ID must be the same as the channel owner's account ID.</p>
    class ChannelInsufficientPermission < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrailData::Types::ChannelInsufficientPermission] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The channel could not be found.</p>
    class ChannelNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrailData::Types::ChannelNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The schema type of the event is not supported.</p>
    class ChannelUnsupportedSchema < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrailData::Types::ChannelUnsupportedSchema] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Two or more entries in the request have the same event ID.</p>
    class DuplicatedAuditEventId < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrailData::Types::DuplicatedAuditEventId] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified channel ARN is not a valid 
    #          channel ARN.</p>
    class InvalidChannelARN < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrailData::Types::InvalidChannelARN] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation requested is not supported in this region or account.</p>
    class UnsupportedOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrailData::Types::UnsupportedOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end

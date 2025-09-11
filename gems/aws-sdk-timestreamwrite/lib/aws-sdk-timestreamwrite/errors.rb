# frozen_string_literal: true

# This is generated code!

module Aws::TimestreamWrite
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::TimestreamWrite::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::TimestreamWrite::Errors::ServiceError
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
  # * {InvalidEndpointException}
  # * {RejectedRecordsException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You are not authorized to perform this action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::TimestreamWrite::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Timestream was unable to process this request because it contains resource that
    #          already exists.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::TimestreamWrite::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #          Timestream was unable to fully process this request because of an internal server
    #          error.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::TimestreamWrite::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested endpoint was not valid.</p>
    class InvalidEndpointException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::TimestreamWrite::Types::InvalidEndpointException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p> WriteRecords would throw this exception in the following cases: </p>
    #          <ul>
    #             <li>
    #                <p>Records with duplicate data where there are multiple records with the same
    #                dimensions, timestamps, and measure names but: </p>
    #                <ul>
    #                   <li>
    #                      <p>Measure values are different</p>
    #                   </li>
    #                   <li>
    #                      <p>Version is not present in the request <i>or</i> the value of
    #                      version in the new record is equal to or lower than the existing value</p>
    #                   </li>
    #                </ul>
    #                <p> In this case, if Timestream rejects data, the
    #                   <code>ExistingVersion</code> field in the <code>RejectedRecords</code> response
    #                will indicate the current record’s version. To force an update, you can resend the
    #                request with a version for the record set to a value greater than the
    #                   <code>ExistingVersion</code>.</p>
    #             </li>
    #             <li>
    #                <p> Records with timestamps that lie outside the retention duration of the memory
    #                store. </p>
    #             </li>
    #             <li>
    #                <p> Records with dimensions or measures that exceed the Timestream defined
    #                limits. </p>
    #             </li>
    #          </ul>
    #          <p> For more information, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html">Quotas</a> in the Amazon Timestream Developer Guide. </p>
    class RejectedRecordsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::TimestreamWrite::Types::RejectedRecordsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>
      #       </p>
      def rejected_records
        @data[:rejected_records]
      end
    end

    # <p>The operation tried to access a nonexistent resource. The resource might not be
    #          specified correctly, or its status might not be ACTIVE.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::TimestreamWrite::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p> The instance quota of resource exceeded for this account.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::TimestreamWrite::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p> Too many requests were made by a user and they exceeded the service quotas. The request
    #          was throttled.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::TimestreamWrite::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p> An invalid or malformed request.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::TimestreamWrite::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end

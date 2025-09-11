# frozen_string_literal: true

# This is generated code!

module Aws::CloudWatchLogs
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::CloudWatchLogs::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudWatchLogs::Errors::ServiceError
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
  # * {DataAlreadyAcceptedException}
  # * {InternalStreamingException}
  # * {InvalidOperationException}
  # * {InvalidParameterException}
  # * {InvalidSequenceTokenException}
  # * {LimitExceededException}
  # * {MalformedQueryException}
  # * {OperationAbortedException}
  # * {ResourceAlreadyExistsException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ServiceUnavailableException}
  # * {SessionStreamingException}
  # * {SessionTimeoutException}
  # * {ThrottlingException}
  # * {TooManyTagsException}
  # * {UnrecognizedClientException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You don't have sufficient permissions to perform this action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchLogs::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This operation attempted to create a resource that already exists.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchLogs::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The event was already logged.</p>
    #          <important>
    #             <p>
    #                <code>PutLogEvents</code> actions are now always accepted and never return
    #           <code>DataAlreadyAcceptedException</code> regardless of whether a given batch of log
    #         events has already been accepted. </p>
    #          </important>
    class DataAlreadyAcceptedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchLogs::Types::DataAlreadyAcceptedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def expected_sequence_token
        @data[:expected_sequence_token]
      end

      def message
        @data[:message]
      end
    end

    # <p>An internal error occurred during the streaming of log data. This exception is thrown when there's an issue with the internal streaming mechanism used by the GetLogObject operation.</p>
    class InternalStreamingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchLogs::Types::InternalStreamingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation is not valid on the specified resource.</p>
    class InvalidOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchLogs::Types::InvalidOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A parameter is specified incorrectly.</p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchLogs::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The sequence token is not valid. You can get the correct sequence token in the
    #         <code>expectedSequenceToken</code> field in the <code>InvalidSequenceTokenException</code>
    #       message. </p>
    #          <important>
    #             <p>
    #                <code>PutLogEvents</code> actions are now always accepted and never return
    #           <code>InvalidSequenceTokenException</code> regardless of receiving an invalid sequence
    #         token. </p>
    #          </important>
    class InvalidSequenceTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchLogs::Types::InvalidSequenceTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def expected_sequence_token
        @data[:expected_sequence_token]
      end

      def message
        @data[:message]
      end
    end

    # <p>You have reached the maximum number of resources that can be created.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchLogs::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The query string is not valid. Details about this error are displayed in a
    #         <code>QueryCompileError</code> object. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_QueryCompileError.html">QueryCompileError</a>.</p>
    #          <p>For more information about valid query syntax, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html">CloudWatch Logs Insights Query
    #         Syntax</a>.</p>
    class MalformedQueryException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchLogs::Types::MalformedQueryException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def query_compile_error
        @data[:query_compile_error]
      end

      def message
        @data[:message]
      end
    end

    # <p>Multiple concurrent requests to update the same resource were in conflict.</p>
    class OperationAbortedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchLogs::Types::OperationAbortedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified resource already exists.</p>
    class ResourceAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchLogs::Types::ResourceAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified resource does not exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchLogs::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This request exceeds a service quota.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchLogs::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The service cannot complete the request.</p>
    class ServiceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchLogs::Types::ServiceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is returned if an unknown error occurs during a Live Tail session.</p>
    class SessionStreamingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchLogs::Types::SessionStreamingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is returned in a Live Tail stream when the Live Tail session times out.
    #       Live Tail sessions time out after three hours.</p>
    class SessionTimeoutException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchLogs::Types::SessionTimeoutException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was throttled because of quota limits.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchLogs::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A resource can have no more than 50 tags.</p>
    class TooManyTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchLogs::Types::TooManyTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The name of the resource.</p>
      def resource_name
        @data[:resource_name]
      end
    end

    # <p>The most likely cause is an Amazon Web Services access key ID or secret key that's not
    #       valid.</p>
    class UnrecognizedClientException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchLogs::Types::UnrecognizedClientException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>One of the parameters for the request is not valid.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchLogs::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end

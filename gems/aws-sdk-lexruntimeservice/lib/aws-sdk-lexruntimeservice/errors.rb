# frozen_string_literal: true

# This is generated code!

module Aws::LexRuntimeService
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::LexRuntimeService::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::LexRuntimeService::Errors::ServiceError
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
  # * {BadGatewayException}
  # * {BadRequestException}
  # * {ConflictException}
  # * {DependencyFailedException}
  # * {InternalFailureException}
  # * {LimitExceededException}
  # * {LoopDetectedException}
  # * {NotAcceptableException}
  # * {NotFoundException}
  # * {RequestTimeoutException}
  # * {UnsupportedMediaTypeException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Either the Amazon Lex bot is still building, or one of the dependent
    #       services (Amazon Polly, AWS Lambda) failed with an internal service
    #       error.</p>
    class BadGatewayException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LexRuntimeService::Types::BadGatewayException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p> Request validation failed, there is no usable message in the context,
    #       or the bot build failed, is still in progress, or contains unbuilt
    #       changes. </p>
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LexRuntimeService::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p> Two clients are using the same AWS account, Amazon Lex bot, and user
    #       ID. </p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LexRuntimeService::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p> One of the dependencies, such as AWS Lambda or Amazon Polly, threw an
    #       exception. For example, </p>
    #          <ul>
    #             <li>
    #                <p>If Amazon Lex does not have sufficient permissions to call a Lambda
    #           function.</p>
    #             </li>
    #             <li>
    #                <p>If a Lambda function takes longer than 30 seconds to
    #           execute.</p>
    #             </li>
    #             <li>
    #                <p>If a fulfillment Lambda function returns a <code>Delegate</code>
    #           dialog action without removing any slot values.</p>
    #             </li>
    #          </ul>
    class DependencyFailedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LexRuntimeService::Types::DependencyFailedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Internal service error. Retry the call.</p>
    class InternalFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LexRuntimeService::Types::InternalFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Exceeded a limit.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LexRuntimeService::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is not used.</p>
    class LoopDetectedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LexRuntimeService::Types::LoopDetectedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The accept header in the request does not have a valid value.</p>
    class NotAcceptableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LexRuntimeService::Types::NotAcceptableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource (such as the Amazon Lex bot or an alias) that is referred
    #       to is not found.</p>
    class NotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LexRuntimeService::Types::NotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The input speech is too long.</p>
    class RequestTimeoutException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LexRuntimeService::Types::RequestTimeoutException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The Content-Type header (<code>PostContent</code> API) has an invalid
    #       value. </p>
    class UnsupportedMediaTypeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LexRuntimeService::Types::UnsupportedMediaTypeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end

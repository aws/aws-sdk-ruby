# frozen_string_literal: true

# This is generated code!

module Aws::WorkMailMessageFlow
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::WorkMailMessageFlow::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::WorkMailMessageFlow::Errors::ServiceError
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
  # * {InvalidContentLocation}
  # * {MessageFrozen}
  # * {MessageRejected}
  # * {ResourceNotFoundException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>WorkMail could not access the updated email content. Possible reasons:</p>
    #          <ul>
    #             <li>
    #                <p>You made the request in a region other than your S3 bucket region.</p>
    #             </li>
    #             <li>
    #                <p>The <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-owner-condition.html">S3 bucket owner</a> is not the 
    #         same as the calling AWS account.</p>
    #             </li>
    #             <li>
    #                <p>You have an incomplete or missing S3 bucket policy. For more information about policies, see 
    #         <a href="https://docs.aws.amazon.com/workmail/latest/adminguide/update-with-lambda.html">
    #           Updating message content with AWS Lambda
    #         </a> in the <i>WorkMail Administrator
    #           Guide</i>.</p>
    #             </li>
    #          </ul>
    class InvalidContentLocation < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMailMessageFlow::Types::InvalidContentLocation] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested email is not eligible for update. This is usually the case for a redirected email.</p>
    class MessageFrozen < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMailMessageFlow::Types::MessageFrozen] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested email could not be updated due to an error in the MIME content. Check the error message for more information about 
    #       what caused the error.</p>
    class MessageRejected < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMailMessageFlow::Types::MessageRejected] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested email message is not found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkMailMessageFlow::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end

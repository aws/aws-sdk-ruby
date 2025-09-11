# frozen_string_literal: true

# This is generated code!

module Aws::Textract
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Textract::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Textract::Errors::ServiceError
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
  # * {BadDocumentException}
  # * {ConflictException}
  # * {DocumentTooLargeException}
  # * {HumanLoopQuotaExceededException}
  # * {IdempotentParameterMismatchException}
  # * {InternalServerError}
  # * {InvalidJobIdException}
  # * {InvalidKMSKeyException}
  # * {InvalidParameterException}
  # * {InvalidS3ObjectException}
  # * {LimitExceededException}
  # * {ProvisionedThroughputExceededException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {UnsupportedDocumentException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You aren't authorized to perform the action. Use the Amazon Resource Name (ARN) 
    #             of an authorized user or IAM role to perform the operation.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Textract::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p>Amazon Textract isn't able to read the document. For more information on the document
    #          limits in Amazon Textract, see <a>limits</a>.</p>
    class BadDocumentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Textract::Types::BadDocumentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p>Updating or deleting a resource can cause an inconsistent state.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Textract::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p>The document can't be processed because it's too large. The maximum document size for
    #          synchronous operations 10 MB. The maximum document size for asynchronous operations is 500
    #          MB for PDF files.</p>
    class DocumentTooLargeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Textract::Types::DocumentTooLargeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p>Indicates you have exceeded the maximum number of active human in the loop workflows available</p>
    class HumanLoopQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Textract::Types::HumanLoopQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The resource type.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The quota code.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The service code.</p>
      def service_code
        @data[:service_code]
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p>A <code>ClientRequestToken</code> input parameter was reused with an operation, but at
    #          least one of the other input parameters is different from the previous call to the
    #          operation. </p>
    class IdempotentParameterMismatchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Textract::Types::IdempotentParameterMismatchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p>Amazon Textract experienced a service issue. Try your call again.</p>
    class InternalServerError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Textract::Types::InternalServerError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p>An invalid job identifier was passed to an asynchronous analysis operation.</p>
    class InvalidJobIdException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Textract::Types::InvalidJobIdException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p> Indicates you do not have decrypt permissions with the KMS key entered, or the KMS key
    #         was entered incorrectly. </p>
    class InvalidKMSKeyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Textract::Types::InvalidKMSKeyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p>An input parameter violated a constraint. For example, in synchronous operations, 
    #        an <code>InvalidParameterException</code> exception occurs
    #       when neither of the <code>S3Object</code> or <code>Bytes</code> values are supplied in the <code>Document</code>
    #       request parameter.
    #        Validate your parameter before calling the API operation again.</p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Textract::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p>Amazon Textract is unable to access the S3 object that's specified in the request.
    #          for more information, <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Configure Access to Amazon S3</a>
    #          For troubleshooting information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/troubleshooting.html">Troubleshooting Amazon S3</a>
    #          </p>
    class InvalidS3ObjectException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Textract::Types::InvalidS3ObjectException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p>An Amazon Textract service limit was exceeded. For example, if you start too many
    #          asynchronous jobs concurrently, calls to start operations
    #             (<code>StartDocumentTextDetection</code>, for example) raise a LimitExceededException
    #          exception (HTTP status code: 400) until the number of concurrently running jobs is below
    #          the Amazon Textract service limit. </p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Textract::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p>The number of requests exceeded your throughput limit. If you want to increase this limit, 
    #          contact Amazon Textract.</p>
    class ProvisionedThroughputExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Textract::Types::ProvisionedThroughputExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p> Returned when an operation tried to access a nonexistent resource. </p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Textract::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p>Returned when a request cannot be completed as it would exceed a maximum service quota.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Textract::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p>Amazon Textract is temporarily unable to process the request. Try your call again.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Textract::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p>The format of the input document isn't supported. Documents for operations can be in
    #          PNG, JPEG, PDF, or TIFF format.</p>
    class UnsupportedDocumentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Textract::Types::UnsupportedDocumentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p>  Indicates that a request was not valid. Check request for proper formatting. </p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Textract::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end
  end
end

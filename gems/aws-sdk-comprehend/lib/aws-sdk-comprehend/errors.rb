# frozen_string_literal: true

# This is generated code!

module Aws::Comprehend
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Comprehend::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Comprehend::Errors::ServiceError
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
  # * {BatchSizeLimitExceededException}
  # * {ConcurrentModificationException}
  # * {InternalServerException}
  # * {InvalidFilterException}
  # * {InvalidRequestException}
  # * {JobNotFoundException}
  # * {KmsKeyValidationException}
  # * {ResourceInUseException}
  # * {ResourceLimitExceededException}
  # * {ResourceNotFoundException}
  # * {ResourceUnavailableException}
  # * {TextSizeLimitExceededException}
  # * {TooManyRequestsException}
  # * {TooManyTagKeysException}
  # * {TooManyTagsException}
  # * {UnsupportedLanguageException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The number of documents in the request exceeds the limit of 25. Try your request again
    #       with fewer documents.</p>
    class BatchSizeLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Comprehend::Types::BatchSizeLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Concurrent modification of the tags associated with an Amazon Comprehend resource is not
    #       supported. </p>
    class ConcurrentModificationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Comprehend::Types::ConcurrentModificationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>An internal server error occurred. Retry your request.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Comprehend::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The filter specified for the operation is invalid. Specify a different
    #       filter.</p>
    class InvalidFilterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Comprehend::Types::InvalidFilterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request is invalid.</p>
    class InvalidRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Comprehend::Types::InvalidRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def reason
        @data[:reason]
      end

      def detail
        @data[:detail]
      end
    end

    # <p>The specified job was not found. Check the job ID and try again.</p>
    class JobNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Comprehend::Types::JobNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The KMS customer managed key (CMK) entered cannot be validated. Verify the key and
    #       re-enter it.</p>
    class KmsKeyValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Comprehend::Types::KmsKeyValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified resource name is already in use. Use a different name and try your request
    #       again.</p>
    class ResourceInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Comprehend::Types::ResourceInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number of resources per account has been exceeded. Review the resources, and
    #       then try your request again.</p>
    class ResourceLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Comprehend::Types::ResourceLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified resource ARN was not found. Check the ARN and try your request again.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Comprehend::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified resource is not available. Check the resource and try your request
    #       again.</p>
    class ResourceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Comprehend::Types::ResourceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The size of the input text exceeds the limit. Use a smaller document.</p>
    class TextSizeLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Comprehend::Types::TextSizeLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of requests exceeds the limit. Resubmit your request later.</p>
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Comprehend::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request contains more tag keys than can be associated with a resource (50 tag keys per
    #       resource).</p>
    class TooManyTagKeysException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Comprehend::Types::TooManyTagKeysException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request contains more tags than can be associated with a resource (50 tags per
    #       resource). The maximum number of tags includes both existing tags and those included in your
    #       current request. </p>
    class TooManyTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Comprehend::Types::TooManyTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Amazon Comprehend can't process the language of the input text. For a list of supported languages,
    #       <a href="https://docs.aws.amazon.com/comprehend/latest/dg/supported-languages.html">Supported languages</a> in the Comprehend Developer Guide.
    #     </p>
    class UnsupportedLanguageException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Comprehend::Types::UnsupportedLanguageException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end

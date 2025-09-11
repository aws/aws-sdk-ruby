# frozen_string_literal: true

# This is generated code!

module Aws::Rekognition
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Rekognition::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Rekognition::Errors::ServiceError
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
  # * {HumanLoopQuotaExceededException}
  # * {IdempotentParameterMismatchException}
  # * {ImageTooLargeException}
  # * {InternalServerError}
  # * {InvalidImageFormatException}
  # * {InvalidManifestException}
  # * {InvalidPaginationTokenException}
  # * {InvalidParameterException}
  # * {InvalidPolicyRevisionIdException}
  # * {InvalidS3ObjectException}
  # * {LimitExceededException}
  # * {MalformedPolicyDocumentException}
  # * {ProvisionedThroughputExceededException}
  # * {ResourceAlreadyExistsException}
  # * {ResourceInUseException}
  # * {ResourceNotFoundException}
  # * {ResourceNotReadyException}
  # * {ServiceQuotaExceededException}
  # * {SessionNotFoundException}
  # * {ThrottlingException}
  # * {VideoTooLargeException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You are not authorized to perform the action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end

    # <p> A User with the same Id already exists within the collection, or the update or deletion
    #       of the User caused an inconsistent state. ** </p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end

    # <p>The number of in-progress human reviews you have has exceeded the number allowed.</p>
    class HumanLoopQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::HumanLoopQuotaExceededException] data
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

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end

    # <p>A <code>ClientRequestToken</code> input parameter was reused with an operation, but at least one of the other input
    #         parameters is different from the previous call to the operation.</p>
    class IdempotentParameterMismatchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::IdempotentParameterMismatchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end

    # <p>The input image size exceeds the allowed limit. If you are calling
    #       DetectProtectiveEquipment, the image size or resolution exceeds the allowed limit. For more
    #       information, see Guidelines and quotas in Amazon Rekognition in the Amazon Rekognition Developer Guide.
    #     </p>
    class ImageTooLargeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::ImageTooLargeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end

    # <p>Amazon Rekognition experienced a service issue. Try your call again.</p>
    class InternalServerError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::InternalServerError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end

    # <p>The provided image format is not supported. </p>
    class InvalidImageFormatException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::InvalidImageFormatException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end

    # <p>Indicates that a provided manifest file is empty or larger than the allowed limit.</p>
    class InvalidManifestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::InvalidManifestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end

    # <p>Pagination token in the request is not valid.</p>
    class InvalidPaginationTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::InvalidPaginationTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end

    # <p>Input parameter violated a constraint. Validate your parameter before calling the API
    #       operation again.</p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end

    # <p>The supplied revision id for the project policy is invalid.</p>
    class InvalidPolicyRevisionIdException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::InvalidPolicyRevisionIdException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end

    # <p>Amazon Rekognition is unable to access the S3 object specified in the request.</p>
    class InvalidS3ObjectException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::InvalidS3ObjectException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end

    # <p>An Amazon Rekognition service limit was exceeded. For example, if you start too many jobs
    #             concurrently, subsequent calls to start operations (ex:
    #             <code>StartLabelDetection</code>) will raise a <code>LimitExceededException</code>
    #             exception (HTTP status code: 400) until the number of concurrently running jobs is below
    #             the Amazon Rekognition service limit. </p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end

    # <p>The format of the project policy document that you supplied to 
    #       <code>PutProjectPolicy</code> is incorrect. </p>
    class MalformedPolicyDocumentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::MalformedPolicyDocumentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end

    # <p>The number of requests exceeded your throughput limit. If you want to increase this
    #       limit, contact Amazon Rekognition.</p>
    class ProvisionedThroughputExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::ProvisionedThroughputExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end

    # <p>A resource with the specified ID already exists.</p>
    class ResourceAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::ResourceAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end

    # <p>The specified resource is already being used.</p>
    class ResourceInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::ResourceInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end

    # <p>The resource specified in the request cannot be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end

    # <p>The requested resource isn't ready. For example,  
    #          this exception occurs when you call <code>DetectCustomLabels</code> with a
    #          model version that isn't deployed. </p>
    class ResourceNotReadyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::ResourceNotReadyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end

    # <p></p>
    #          <p>The size of the collection exceeds the allowed limit. For more information,
    #       see Guidelines and quotas in Amazon Rekognition in the Amazon Rekognition Developer Guide. </p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end

    # <p>Occurs when a given sessionId is not found.</p>
    class SessionNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::SessionNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end

    # <p>Amazon Rekognition is temporarily unable to process the request. Try your call again.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end

    # <p>The file size or duration of the supplied media is too large. The maximum file size is 10GB.
    #         The maximum duration is 6 hours. </p>
    class VideoTooLargeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Rekognition::Types::VideoTooLargeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A universally unique identifier (UUID) for the request.</p>
      def logref
        @data[:logref]
      end
    end
  end
end

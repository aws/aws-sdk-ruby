# frozen_string_literal: true

# This is generated code!

module Aws::S3
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::S3::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::S3::Errors::ServiceError
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
  # * {BucketAlreadyExists}
  # * {BucketAlreadyOwnedByYou}
  # * {EncryptionTypeMismatch}
  # * {IdempotencyParameterMismatch}
  # * {InvalidObjectState}
  # * {InvalidRequest}
  # * {InvalidWriteOffset}
  # * {NoSuchBucket}
  # * {NoSuchKey}
  # * {NoSuchUpload}
  # * {NotFound}
  # * {ObjectAlreadyInActiveTierError}
  # * {ObjectNotInActiveTierError}
  # * {TooManyParts}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The requested bucket name is not available. The bucket namespace is shared by all users of the
    #       system. Select a different name and try again.</p>
    class BucketAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3::Types::BucketAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p>The bucket you tried to create already exists, and you own it. Amazon S3 returns this error in all Amazon Web Services
    #       Regions except in the North Virginia Region. For legacy compatibility, if you re-create an existing
    #       bucket that you already own in the North Virginia Region, Amazon S3 returns 200 OK and resets the bucket
    #       access control lists (ACLs).</p>
    class BucketAlreadyOwnedByYou < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3::Types::BucketAlreadyOwnedByYou] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p> The existing object was created with a different encryption type. Subsequent write requests must
    #       include the appropriate encryption parameters in the request or while creating the session. </p>
    class EncryptionTypeMismatch < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3::Types::EncryptionTypeMismatch] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p>Parameters on this idempotent request are inconsistent with parameters used in previous request(s). </p>
    #          <p>For a list of error codes and more information on Amazon S3 errors, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">Error codes</a>.</p>
    #          <note>
    #             <p>Idempotency ensures that an API request completes no more than one time. With an idempotent
    #         request, if the original request completes successfully, any subsequent retries complete successfully
    #         without performing any further actions.</p>
    #          </note>
    class IdempotencyParameterMismatch < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3::Types::IdempotencyParameterMismatch] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p>Object is archived and inaccessible until restored.</p>
    #          <p>If the object you are retrieving is stored in the S3 Glacier Flexible Retrieval storage class, the
    #       S3 Glacier Deep Archive storage class, the S3 Intelligent-Tiering Archive Access tier, or the
    #       S3 Intelligent-Tiering Deep Archive Access tier, before you can retrieve the object you must first restore a copy
    #       using <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html">RestoreObject</a>. Otherwise, this operation returns an <code>InvalidObjectState</code> error. For
    #       information about restoring archived objects, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html">Restoring Archived Objects</a> in the
    #         <i>Amazon S3 User Guide</i>.</p>
    class InvalidObjectState < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3::Types::InvalidObjectState] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def storage_class
        @data[:storage_class]
      end

      def access_tier
        @data[:access_tier]
      end
    end

    # <p>You may receive this error in multiple cases. Depending on the reason for the error, you may receive
    #       one of the messages below:</p>
    #          <ul>
    #             <li>
    #                <p>Cannot specify both a write offset value and user-defined object metadata for existing
    #           objects.</p>
    #             </li>
    #             <li>
    #                <p>Checksum Type mismatch occurred, expected checksum Type: sha1, actual checksum Type:
    #           crc32c.</p>
    #             </li>
    #             <li>
    #                <p>Request body cannot be empty when 'write offset' is specified.</p>
    #             </li>
    #          </ul>
    class InvalidRequest < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3::Types::InvalidRequest] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p> The write offset value that you specified does not match the current object size. </p>
    class InvalidWriteOffset < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3::Types::InvalidWriteOffset] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p>The specified bucket does not exist.</p>
    class NoSuchBucket < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3::Types::NoSuchBucket] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p>The specified key does not exist.</p>
    class NoSuchKey < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3::Types::NoSuchKey] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p>The specified multipart upload does not exist.</p>
    class NoSuchUpload < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3::Types::NoSuchUpload] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p>The specified content does not exist.</p>
    class NotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3::Types::NotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p>This action is not allowed against this storage tier.</p>
    class ObjectAlreadyInActiveTierError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3::Types::ObjectAlreadyInActiveTierError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p>The source object of the COPY action is not in the active tier and is only stored in Amazon S3
    #       Glacier.</p>
    class ObjectNotInActiveTierError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3::Types::ObjectNotInActiveTierError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p> You have attempted to add more parts than the maximum of 10000 that are allowed for this object.
    #       You can use the CopyObject operation to copy this object to another and then add more data to the newly
    #       copied object. </p>
    class TooManyParts < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3::Types::TooManyParts] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end
  end
end

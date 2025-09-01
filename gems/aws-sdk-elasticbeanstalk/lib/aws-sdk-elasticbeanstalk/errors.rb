# frozen_string_literal: true

# This is generated code!

module Aws::ElasticBeanstalk
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ElasticBeanstalk::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ElasticBeanstalk::Errors::ServiceError
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
  # * {CodeBuildNotInServiceRegionException}
  # * {ElasticBeanstalkServiceException}
  # * {InsufficientPrivilegesException}
  # * {InvalidRequestException}
  # * {ManagedActionInvalidStateException}
  # * {OperationInProgressException}
  # * {PlatformVersionStillReferencedException}
  # * {ResourceNotFoundException}
  # * {ResourceTypeNotSupportedException}
  # * {S3LocationNotInServiceRegionException}
  # * {S3SubscriptionRequiredException}
  # * {SourceBundleDeletionException}
  # * {TooManyApplicationVersionsException}
  # * {TooManyApplicationsException}
  # * {TooManyBucketsException}
  # * {TooManyConfigurationTemplatesException}
  # * {TooManyEnvironmentsException}
  # * {TooManyPlatformsException}
  # * {TooManyTagsException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>AWS CodeBuild is not available in the specified region.</p>
    class CodeBuildNotInServiceRegionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticBeanstalk::Types::CodeBuildNotInServiceRegionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>A generic service exception has occurred.</p>
    class ElasticBeanstalkServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticBeanstalk::Types::ElasticBeanstalkServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified account does not have sufficient privileges for one or more AWS
    #       services.</p>
    class InsufficientPrivilegesException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticBeanstalk::Types::InsufficientPrivilegesException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>One or more input parameters is not valid. Please correct the input parameters and try
    #       the operation again.</p>
    class InvalidRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticBeanstalk::Types::InvalidRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>Cannot modify the managed action in its current state.</p>
    class ManagedActionInvalidStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticBeanstalk::Types::ManagedActionInvalidStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>Unable to perform the specified operation because another operation that effects an
    #       element in this activity is already in progress.</p>
    class OperationInProgressException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticBeanstalk::Types::OperationInProgressException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>You cannot delete the platform version because there are still environments running on it.</p>
    class PlatformVersionStillReferencedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticBeanstalk::Types::PlatformVersionStillReferencedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>A resource doesn't exist for the specified Amazon Resource Name (ARN).</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticBeanstalk::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The type of the specified Amazon Resource Name (ARN) isn't supported for this operation.</p>
    class ResourceTypeNotSupportedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticBeanstalk::Types::ResourceTypeNotSupportedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified S3 bucket does not belong to the S3 region in which the service is
    #       running. The following regions are supported:</p>
    #          <ul>
    #             <li>
    #                <p>IAD/us-east-1</p>
    #             </li>
    #             <li>
    #                <p>PDX/us-west-2</p>
    #             </li>
    #             <li>
    #                <p>DUB/eu-west-1</p>
    #             </li>
    #          </ul>
    class S3LocationNotInServiceRegionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticBeanstalk::Types::S3LocationNotInServiceRegionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified account does not have a subscription to Amazon S3.</p>
    class S3SubscriptionRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticBeanstalk::Types::S3SubscriptionRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>Unable to delete the Amazon S3 source bundle associated with the application version.
    #       The application version was deleted successfully.</p>
    class SourceBundleDeletionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticBeanstalk::Types::SourceBundleDeletionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified account has reached its limit of application versions.</p>
    class TooManyApplicationVersionsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticBeanstalk::Types::TooManyApplicationVersionsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified account has reached its limit of applications.</p>
    class TooManyApplicationsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticBeanstalk::Types::TooManyApplicationsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified account has reached its limit of Amazon S3 buckets.</p>
    class TooManyBucketsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticBeanstalk::Types::TooManyBucketsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified account has reached its limit of configuration templates.</p>
    class TooManyConfigurationTemplatesException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticBeanstalk::Types::TooManyConfigurationTemplatesException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified account has reached its limit of environments.</p>
    class TooManyEnvironmentsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticBeanstalk::Types::TooManyEnvironmentsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>You have exceeded the maximum number of allowed platforms associated with the account.</p>
    class TooManyPlatformsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticBeanstalk::Types::TooManyPlatformsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The number of tags in the resource would exceed the number of tags that each resource
    #       can have.</p>
    #          <p>To calculate this, the operation considers both the number of tags the resource already has
    #       and the tags this operation would add if it succeeded.</p>
    class TooManyTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticBeanstalk::Types::TooManyTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception error message.</p>
      def message
        @data[:message]
      end
    end
  end
end

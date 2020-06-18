# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElasticBeanstalk

  # When ElasticBeanstalk returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::ElasticBeanstalk::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all ElasticBeanstalk errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ElasticBeanstalk::Errors::ServiceError
  #       # rescues all ElasticBeanstalk API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
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

    extend Aws::Errors::DynamicErrors

    class CodeBuildNotInServiceRegionException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticBeanstalk::Types::CodeBuildNotInServiceRegionException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ElasticBeanstalkServiceException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticBeanstalk::Types::ElasticBeanstalkServiceException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InsufficientPrivilegesException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticBeanstalk::Types::InsufficientPrivilegesException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticBeanstalk::Types::InvalidRequestException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ManagedActionInvalidStateException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticBeanstalk::Types::ManagedActionInvalidStateException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class OperationInProgressException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticBeanstalk::Types::OperationInProgressException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class PlatformVersionStillReferencedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticBeanstalk::Types::PlatformVersionStillReferencedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ResourceNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticBeanstalk::Types::ResourceNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ResourceTypeNotSupportedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticBeanstalk::Types::ResourceTypeNotSupportedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class S3LocationNotInServiceRegionException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticBeanstalk::Types::S3LocationNotInServiceRegionException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class S3SubscriptionRequiredException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticBeanstalk::Types::S3SubscriptionRequiredException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SourceBundleDeletionException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticBeanstalk::Types::SourceBundleDeletionException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyApplicationVersionsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticBeanstalk::Types::TooManyApplicationVersionsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyApplicationsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticBeanstalk::Types::TooManyApplicationsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyBucketsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticBeanstalk::Types::TooManyBucketsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyConfigurationTemplatesException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticBeanstalk::Types::TooManyConfigurationTemplatesException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyEnvironmentsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticBeanstalk::Types::TooManyEnvironmentsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyPlatformsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticBeanstalk::Types::TooManyPlatformsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyTagsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticBeanstalk::Types::TooManyTagsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

  end
end

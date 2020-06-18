# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudTrail

  # When CloudTrail returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::CloudTrail::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all CloudTrail errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudTrail::Errors::ServiceError
  #       # rescues all CloudTrail API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {CloudTrailARNInvalidException}
  # * {CloudTrailAccessNotEnabledException}
  # * {CloudWatchLogsDeliveryUnavailableException}
  # * {InsightNotEnabledException}
  # * {InsufficientDependencyServiceAccessPermissionException}
  # * {InsufficientEncryptionPolicyException}
  # * {InsufficientS3BucketPolicyException}
  # * {InsufficientSnsTopicPolicyException}
  # * {InvalidCloudWatchLogsLogGroupArnException}
  # * {InvalidCloudWatchLogsRoleArnException}
  # * {InvalidEventCategoryException}
  # * {InvalidEventSelectorsException}
  # * {InvalidHomeRegionException}
  # * {InvalidInsightSelectorsException}
  # * {InvalidKmsKeyIdException}
  # * {InvalidLookupAttributesException}
  # * {InvalidMaxResultsException}
  # * {InvalidNextTokenException}
  # * {InvalidParameterCombinationException}
  # * {InvalidS3BucketNameException}
  # * {InvalidS3PrefixException}
  # * {InvalidSnsTopicNameException}
  # * {InvalidTagParameterException}
  # * {InvalidTimeRangeException}
  # * {InvalidTokenException}
  # * {InvalidTrailNameException}
  # * {KmsException}
  # * {KmsKeyDisabledException}
  # * {KmsKeyNotFoundException}
  # * {MaximumNumberOfTrailsExceededException}
  # * {NotOrganizationMasterAccountException}
  # * {OperationNotPermittedException}
  # * {OrganizationNotInAllFeaturesModeException}
  # * {OrganizationsNotInUseException}
  # * {ResourceNotFoundException}
  # * {ResourceTypeNotSupportedException}
  # * {S3BucketDoesNotExistException}
  # * {TagsLimitExceededException}
  # * {TrailAlreadyExistsException}
  # * {TrailNotFoundException}
  # * {TrailNotProvidedException}
  # * {UnsupportedOperationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class CloudTrailARNInvalidException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::CloudTrailARNInvalidException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CloudTrailAccessNotEnabledException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::CloudTrailAccessNotEnabledException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CloudWatchLogsDeliveryUnavailableException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::CloudWatchLogsDeliveryUnavailableException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InsightNotEnabledException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InsightNotEnabledException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InsufficientDependencyServiceAccessPermissionException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InsufficientDependencyServiceAccessPermissionException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InsufficientEncryptionPolicyException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InsufficientEncryptionPolicyException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InsufficientS3BucketPolicyException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InsufficientS3BucketPolicyException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InsufficientSnsTopicPolicyException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InsufficientSnsTopicPolicyException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidCloudWatchLogsLogGroupArnException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InvalidCloudWatchLogsLogGroupArnException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidCloudWatchLogsRoleArnException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InvalidCloudWatchLogsRoleArnException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidEventCategoryException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InvalidEventCategoryException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidEventSelectorsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InvalidEventSelectorsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidHomeRegionException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InvalidHomeRegionException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidInsightSelectorsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InvalidInsightSelectorsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidKmsKeyIdException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InvalidKmsKeyIdException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidLookupAttributesException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InvalidLookupAttributesException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidMaxResultsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InvalidMaxResultsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidNextTokenException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InvalidNextTokenException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidParameterCombinationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InvalidParameterCombinationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidS3BucketNameException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InvalidS3BucketNameException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidS3PrefixException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InvalidS3PrefixException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidSnsTopicNameException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InvalidSnsTopicNameException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidTagParameterException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InvalidTagParameterException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidTimeRangeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InvalidTimeRangeException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidTokenException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InvalidTokenException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidTrailNameException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::InvalidTrailNameException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class KmsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::KmsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class KmsKeyDisabledException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::KmsKeyDisabledException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class KmsKeyNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::KmsKeyNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class MaximumNumberOfTrailsExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::MaximumNumberOfTrailsExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NotOrganizationMasterAccountException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::NotOrganizationMasterAccountException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class OperationNotPermittedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::OperationNotPermittedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class OrganizationNotInAllFeaturesModeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::OrganizationNotInAllFeaturesModeException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class OrganizationsNotInUseException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::OrganizationsNotInUseException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ResourceNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::ResourceNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ResourceTypeNotSupportedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::ResourceTypeNotSupportedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class S3BucketDoesNotExistException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::S3BucketDoesNotExistException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TagsLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::TagsLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TrailAlreadyExistsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::TrailAlreadyExistsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TrailNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::TrailNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TrailNotProvidedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::TrailNotProvidedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class UnsupportedOperationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudTrail::Types::UnsupportedOperationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

  end
end

# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ConfigService

  # When ConfigService returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::ConfigService::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all ConfigService errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ConfigService::Errors::ServiceError
  #       # rescues all ConfigService API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {ConformancePackTemplateValidationException}
  # * {InsufficientDeliveryPolicyException}
  # * {InsufficientPermissionsException}
  # * {InvalidConfigurationRecorderNameException}
  # * {InvalidDeliveryChannelNameException}
  # * {InvalidExpressionException}
  # * {InvalidLimitException}
  # * {InvalidNextTokenException}
  # * {InvalidParameterValueException}
  # * {InvalidRecordingGroupException}
  # * {InvalidResultTokenException}
  # * {InvalidRoleException}
  # * {InvalidS3KeyPrefixException}
  # * {InvalidSNSTopicARNException}
  # * {InvalidTimeRangeException}
  # * {LastDeliveryChannelDeleteFailedException}
  # * {LimitExceededException}
  # * {MaxActiveResourcesExceededException}
  # * {MaxNumberOfConfigRulesExceededException}
  # * {MaxNumberOfConfigurationRecordersExceededException}
  # * {MaxNumberOfConformancePacksExceededException}
  # * {MaxNumberOfDeliveryChannelsExceededException}
  # * {MaxNumberOfOrganizationConfigRulesExceededException}
  # * {MaxNumberOfOrganizationConformancePacksExceededException}
  # * {MaxNumberOfRetentionConfigurationsExceededException}
  # * {NoAvailableConfigurationRecorderException}
  # * {NoAvailableDeliveryChannelException}
  # * {NoAvailableOrganizationException}
  # * {NoRunningConfigurationRecorderException}
  # * {NoSuchBucketException}
  # * {NoSuchConfigRuleException}
  # * {NoSuchConfigRuleInConformancePackException}
  # * {NoSuchConfigurationAggregatorException}
  # * {NoSuchConfigurationRecorderException}
  # * {NoSuchConformancePackException}
  # * {NoSuchDeliveryChannelException}
  # * {NoSuchOrganizationConfigRuleException}
  # * {NoSuchOrganizationConformancePackException}
  # * {NoSuchRemediationConfigurationException}
  # * {NoSuchRemediationExceptionException}
  # * {NoSuchRetentionConfigurationException}
  # * {OrganizationAccessDeniedException}
  # * {OrganizationAllFeaturesNotEnabledException}
  # * {OrganizationConformancePackTemplateValidationException}
  # * {OversizedConfigurationItemException}
  # * {RemediationInProgressException}
  # * {ResourceInUseException}
  # * {ResourceNotDiscoveredException}
  # * {ResourceNotFoundException}
  # * {TooManyTagsException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class ConformancePackTemplateValidationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::ConformancePackTemplateValidationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InsufficientDeliveryPolicyException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::InsufficientDeliveryPolicyException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InsufficientPermissionsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::InsufficientPermissionsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidConfigurationRecorderNameException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::InvalidConfigurationRecorderNameException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDeliveryChannelNameException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::InvalidDeliveryChannelNameException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidExpressionException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::InvalidExpressionException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidLimitException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::InvalidLimitException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidNextTokenException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::InvalidNextTokenException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidParameterValueException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::InvalidParameterValueException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidRecordingGroupException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::InvalidRecordingGroupException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidResultTokenException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::InvalidResultTokenException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidRoleException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::InvalidRoleException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidS3KeyPrefixException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::InvalidS3KeyPrefixException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidSNSTopicARNException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::InvalidSNSTopicARNException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidTimeRangeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::InvalidTimeRangeException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class LastDeliveryChannelDeleteFailedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::LastDeliveryChannelDeleteFailedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class LimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::LimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class MaxActiveResourcesExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::MaxActiveResourcesExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class MaxNumberOfConfigRulesExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::MaxNumberOfConfigRulesExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class MaxNumberOfConfigurationRecordersExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::MaxNumberOfConfigurationRecordersExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class MaxNumberOfConformancePacksExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::MaxNumberOfConformancePacksExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class MaxNumberOfDeliveryChannelsExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::MaxNumberOfDeliveryChannelsExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class MaxNumberOfOrganizationConfigRulesExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::MaxNumberOfOrganizationConfigRulesExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class MaxNumberOfOrganizationConformancePacksExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::MaxNumberOfOrganizationConformancePacksExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class MaxNumberOfRetentionConfigurationsExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::MaxNumberOfRetentionConfigurationsExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NoAvailableConfigurationRecorderException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::NoAvailableConfigurationRecorderException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NoAvailableDeliveryChannelException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::NoAvailableDeliveryChannelException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NoAvailableOrganizationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::NoAvailableOrganizationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NoRunningConfigurationRecorderException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::NoRunningConfigurationRecorderException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NoSuchBucketException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::NoSuchBucketException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NoSuchConfigRuleException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::NoSuchConfigRuleException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NoSuchConfigRuleInConformancePackException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::NoSuchConfigRuleInConformancePackException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NoSuchConfigurationAggregatorException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::NoSuchConfigurationAggregatorException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NoSuchConfigurationRecorderException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::NoSuchConfigurationRecorderException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NoSuchConformancePackException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::NoSuchConformancePackException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NoSuchDeliveryChannelException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::NoSuchDeliveryChannelException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NoSuchOrganizationConfigRuleException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::NoSuchOrganizationConfigRuleException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NoSuchOrganizationConformancePackException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::NoSuchOrganizationConformancePackException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NoSuchRemediationConfigurationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::NoSuchRemediationConfigurationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NoSuchRemediationExceptionException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::NoSuchRemediationExceptionException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NoSuchRetentionConfigurationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::NoSuchRetentionConfigurationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class OrganizationAccessDeniedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::OrganizationAccessDeniedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class OrganizationAllFeaturesNotEnabledException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::OrganizationAllFeaturesNotEnabledException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class OrganizationConformancePackTemplateValidationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::OrganizationConformancePackTemplateValidationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class OversizedConfigurationItemException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::OversizedConfigurationItemException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class RemediationInProgressException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::RemediationInProgressException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ResourceInUseException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::ResourceInUseException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ResourceNotDiscoveredException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::ResourceNotDiscoveredException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ResourceNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::ResourceNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyTagsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::TooManyTagsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ValidationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ConfigService::Types::ValidationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

  end
end

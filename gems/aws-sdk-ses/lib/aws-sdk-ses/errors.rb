# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SES

  # When SES returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::SES::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all SES errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SES::Errors::ServiceError
  #       # rescues all SES API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {AccountSendingPausedException}
  # * {AlreadyExistsException}
  #    * This error class is not used. `AlreadyExists` is used during parsing instead.
  # * {CannotDeleteException}
  #    * This error class is not used. `CannotDelete` is used during parsing instead.
  # * {ConfigurationSetAlreadyExistsException}
  #    * This error class is not used. `ConfigurationSetAlreadyExists` is used during parsing instead.
  # * {ConfigurationSetDoesNotExistException}
  #    * This error class is not used. `ConfigurationSetDoesNotExist` is used during parsing instead.
  # * {ConfigurationSetSendingPausedException}
  # * {CustomVerificationEmailInvalidContentException}
  #    * This error class is not used. `CustomVerificationEmailInvalidContent` is used during parsing instead.
  # * {CustomVerificationEmailTemplateAlreadyExistsException}
  #    * This error class is not used. `CustomVerificationEmailTemplateAlreadyExists` is used during parsing instead.
  # * {CustomVerificationEmailTemplateDoesNotExistException}
  #    * This error class is not used. `CustomVerificationEmailTemplateDoesNotExist` is used during parsing instead.
  # * {EventDestinationAlreadyExistsException}
  #    * This error class is not used. `EventDestinationAlreadyExists` is used during parsing instead.
  # * {EventDestinationDoesNotExistException}
  #    * This error class is not used. `EventDestinationDoesNotExist` is used during parsing instead.
  # * {FromEmailAddressNotVerifiedException}
  #    * This error class is not used. `FromEmailAddressNotVerified` is used during parsing instead.
  # * {InvalidCloudWatchDestinationException}
  #    * This error class is not used. `InvalidCloudWatchDestination` is used during parsing instead.
  # * {InvalidConfigurationSetException}
  #    * This error class is not used. `InvalidConfigurationSet` is used during parsing instead.
  # * {InvalidDeliveryOptionsException}
  #    * This error class is not used. `InvalidDeliveryOptions` is used during parsing instead.
  # * {InvalidFirehoseDestinationException}
  #    * This error class is not used. `InvalidFirehoseDestination` is used during parsing instead.
  # * {InvalidLambdaFunctionException}
  #    * This error class is not used. `InvalidLambdaFunction` is used during parsing instead.
  # * {InvalidPolicyException}
  #    * This error class is not used. `InvalidPolicy` is used during parsing instead.
  # * {InvalidRenderingParameterException}
  #    * This error class is not used. `InvalidRenderingParameter` is used during parsing instead.
  # * {InvalidS3ConfigurationException}
  #    * This error class is not used. `InvalidS3Configuration` is used during parsing instead.
  # * {InvalidSNSDestinationException}
  #    * This error class is not used. `InvalidSNSDestination` is used during parsing instead.
  # * {InvalidSnsTopicException}
  #    * This error class is not used. `InvalidSnsTopic` is used during parsing instead.
  # * {InvalidTemplateException}
  #    * This error class is not used. `InvalidTemplate` is used during parsing instead.
  # * {InvalidTrackingOptionsException}
  #    * This error class is not used. `InvalidTrackingOptions` is used during parsing instead.
  # * {LimitExceededException}
  #    * This error class is not used. `LimitExceeded` is used during parsing instead.
  # * {MailFromDomainNotVerifiedException}
  # * {MessageRejected}
  # * {MissingRenderingAttributeException}
  #    * This error class is not used. `MissingRenderingAttribute` is used during parsing instead.
  # * {ProductionAccessNotGrantedException}
  #    * This error class is not used. `ProductionAccessNotGranted` is used during parsing instead.
  # * {RuleDoesNotExistException}
  #    * This error class is not used. `RuleDoesNotExist` is used during parsing instead.
  # * {RuleSetDoesNotExistException}
  #    * This error class is not used. `RuleSetDoesNotExist` is used during parsing instead.
  # * {TemplateDoesNotExistException}
  #    * This error class is not used. `TemplateDoesNotExist` is used during parsing instead.
  # * {TrackingOptionsAlreadyExistsException}
  # * {TrackingOptionsDoesNotExistException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class AccountSendingPausedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::AccountSendingPausedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `AlreadyExists` instead.
    class AlreadyExistsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::AlreadyExistsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def name
        @data[:name]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `CannotDelete` instead.
    class CannotDeleteException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::CannotDeleteException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def name
        @data[:name]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ConfigurationSetAlreadyExists` instead.
    class ConfigurationSetAlreadyExistsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::ConfigurationSetAlreadyExistsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def configuration_set_name
        @data[:configuration_set_name]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ConfigurationSetDoesNotExist` instead.
    class ConfigurationSetDoesNotExistException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::ConfigurationSetDoesNotExistException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def configuration_set_name
        @data[:configuration_set_name]
      end
    end

    class ConfigurationSetSendingPausedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::ConfigurationSetSendingPausedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def configuration_set_name
        @data[:configuration_set_name]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `CustomVerificationEmailInvalidContent` instead.
    class CustomVerificationEmailInvalidContentException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::CustomVerificationEmailInvalidContentException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `CustomVerificationEmailTemplateAlreadyExists` instead.
    class CustomVerificationEmailTemplateAlreadyExistsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::CustomVerificationEmailTemplateAlreadyExistsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def custom_verification_email_template_name
        @data[:custom_verification_email_template_name]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `CustomVerificationEmailTemplateDoesNotExist` instead.
    class CustomVerificationEmailTemplateDoesNotExistException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::CustomVerificationEmailTemplateDoesNotExistException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def custom_verification_email_template_name
        @data[:custom_verification_email_template_name]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `EventDestinationAlreadyExists` instead.
    class EventDestinationAlreadyExistsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::EventDestinationAlreadyExistsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def configuration_set_name
        @data[:configuration_set_name]
      end

      # @return [String]
      def event_destination_name
        @data[:event_destination_name]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `EventDestinationDoesNotExist` instead.
    class EventDestinationDoesNotExistException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::EventDestinationDoesNotExistException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def configuration_set_name
        @data[:configuration_set_name]
      end

      # @return [String]
      def event_destination_name
        @data[:event_destination_name]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `FromEmailAddressNotVerified` instead.
    class FromEmailAddressNotVerifiedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::FromEmailAddressNotVerifiedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def from_email_address
        @data[:from_email_address]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidCloudWatchDestination` instead.
    class InvalidCloudWatchDestinationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::InvalidCloudWatchDestinationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def configuration_set_name
        @data[:configuration_set_name]
      end

      # @return [String]
      def event_destination_name
        @data[:event_destination_name]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidConfigurationSet` instead.
    class InvalidConfigurationSetException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::InvalidConfigurationSetException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidDeliveryOptions` instead.
    class InvalidDeliveryOptionsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::InvalidDeliveryOptionsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidFirehoseDestination` instead.
    class InvalidFirehoseDestinationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::InvalidFirehoseDestinationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def configuration_set_name
        @data[:configuration_set_name]
      end

      # @return [String]
      def event_destination_name
        @data[:event_destination_name]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidLambdaFunction` instead.
    class InvalidLambdaFunctionException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::InvalidLambdaFunctionException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def function_arn
        @data[:function_arn]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidPolicy` instead.
    class InvalidPolicyException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::InvalidPolicyException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidRenderingParameter` instead.
    class InvalidRenderingParameterException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::InvalidRenderingParameterException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def template_name
        @data[:template_name]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidS3Configuration` instead.
    class InvalidS3ConfigurationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::InvalidS3ConfigurationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def bucket
        @data[:bucket]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidSNSDestination` instead.
    class InvalidSNSDestinationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::InvalidSNSDestinationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def configuration_set_name
        @data[:configuration_set_name]
      end

      # @return [String]
      def event_destination_name
        @data[:event_destination_name]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidSnsTopic` instead.
    class InvalidSnsTopicException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::InvalidSnsTopicException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def topic
        @data[:topic]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidTemplate` instead.
    class InvalidTemplateException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::InvalidTemplateException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def template_name
        @data[:template_name]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidTrackingOptions` instead.
    class InvalidTrackingOptionsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::InvalidTrackingOptionsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `LimitExceeded` instead.
    class LimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::LimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class MailFromDomainNotVerifiedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::MailFromDomainNotVerifiedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class MessageRejected < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::MessageRejected] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `MissingRenderingAttribute` instead.
    class MissingRenderingAttributeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::MissingRenderingAttributeException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def template_name
        @data[:template_name]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ProductionAccessNotGranted` instead.
    class ProductionAccessNotGrantedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::ProductionAccessNotGrantedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `RuleDoesNotExist` instead.
    class RuleDoesNotExistException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::RuleDoesNotExistException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def name
        @data[:name]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `RuleSetDoesNotExist` instead.
    class RuleSetDoesNotExistException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::RuleSetDoesNotExistException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def name
        @data[:name]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TemplateDoesNotExist` instead.
    class TemplateDoesNotExistException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::TemplateDoesNotExistException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def template_name
        @data[:template_name]
      end
    end

    class TrackingOptionsAlreadyExistsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::TrackingOptionsAlreadyExistsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def configuration_set_name
        @data[:configuration_set_name]
      end
    end

    class TrackingOptionsDoesNotExistException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::TrackingOptionsDoesNotExistException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def configuration_set_name
        @data[:configuration_set_name]
      end
    end

  end
end

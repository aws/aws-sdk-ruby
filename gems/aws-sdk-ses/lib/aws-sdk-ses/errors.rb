# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
  # * {CannotDeleteException}
  # * {ConfigurationSetAlreadyExistsException}
  # * {ConfigurationSetDoesNotExistException}
  # * {ConfigurationSetSendingPausedException}
  # * {CustomVerificationEmailInvalidContentException}
  # * {CustomVerificationEmailTemplateAlreadyExistsException}
  # * {CustomVerificationEmailTemplateDoesNotExistException}
  # * {EventDestinationAlreadyExistsException}
  # * {EventDestinationDoesNotExistException}
  # * {FromEmailAddressNotVerifiedException}
  # * {InvalidCloudWatchDestinationException}
  # * {InvalidConfigurationSetException}
  # * {InvalidDeliveryOptionsException}
  # * {InvalidFirehoseDestinationException}
  # * {InvalidLambdaFunctionException}
  # * {InvalidPolicyException}
  # * {InvalidRenderingParameterException}
  # * {InvalidS3ConfigurationException}
  # * {InvalidSNSDestinationException}
  # * {InvalidSnsTopicException}
  # * {InvalidTemplateException}
  # * {InvalidTrackingOptionsException}
  # * {LimitExceededException}
  # * {MailFromDomainNotVerifiedException}
  # * {MessageRejected}
  # * {MissingRenderingAttributeException}
  # * {ProductionAccessNotGrantedException}
  # * {RuleDoesNotExistException}
  # * {RuleSetDoesNotExistException}
  # * {TemplateDoesNotExistException}
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

    class CustomVerificationEmailInvalidContentException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::CustomVerificationEmailInvalidContentException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

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

    class InvalidConfigurationSetException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::InvalidConfigurationSetException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDeliveryOptionsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::InvalidDeliveryOptionsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

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

    class InvalidPolicyException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::InvalidPolicyException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

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

    class InvalidTrackingOptionsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::InvalidTrackingOptionsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

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

    class ProductionAccessNotGrantedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SES::Types::ProductionAccessNotGrantedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

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

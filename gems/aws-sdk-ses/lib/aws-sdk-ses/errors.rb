# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SES
  module Errors

    extend Aws::Errors::DynamicErrors

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

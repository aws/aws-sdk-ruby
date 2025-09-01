# frozen_string_literal: true

# This is generated code!

module Aws::SES
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::SES::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SES::Errors::ServiceError
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
    extend Smithy::Client::DynamicErrors

    # <p>Indicates that email sending is disabled for your entire Amazon SES account.</p>
    #          <p>You can enable or disable email sending for your Amazon SES account using <a>UpdateAccountSendingEnabled</a>.</p>
    class AccountSendingPausedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::AccountSendingPausedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that a resource could not be created because of a naming conflict.</p>
    class AlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::AlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Indicates that a resource could not be created because the resource name already
      #             exists.</p>
      def name
        @data[:name]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the delete operation could not be completed.</p>
    class CannotDeleteException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::CannotDeleteException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Indicates that a resource could not be deleted because no resource with the specified
      #             name exists.</p>
      def name
        @data[:name]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the configuration set could not be created because of a naming
    #             conflict.</p>
    class ConfigurationSetAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::ConfigurationSetAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Indicates that the configuration set does not exist.</p>
      def configuration_set_name
        @data[:configuration_set_name]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the configuration set does not exist.</p>
    class ConfigurationSetDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::ConfigurationSetDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Indicates that the configuration set does not exist.</p>
      def configuration_set_name
        @data[:configuration_set_name]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that email sending is disabled for the configuration set.</p>
    #          <p>You can enable or disable email sending for a configuration set using <a>UpdateConfigurationSetSendingEnabled</a>.</p>
    class ConfigurationSetSendingPausedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::ConfigurationSetSendingPausedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The name of the configuration set for which email sending is disabled.</p>
      def configuration_set_name
        @data[:configuration_set_name]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that custom verification email template provided content is invalid.</p>
    class CustomVerificationEmailInvalidContentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::CustomVerificationEmailInvalidContentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that a custom verification email template with the name you specified
    #             already exists.</p>
    class CustomVerificationEmailTemplateAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::CustomVerificationEmailTemplateAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Indicates that the provided custom verification email template with the specified
      #             template name already exists.</p>
      def custom_verification_email_template_name
        @data[:custom_verification_email_template_name]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that a custom verification email template with the name you specified does
    #             not exist.</p>
    class CustomVerificationEmailTemplateDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::CustomVerificationEmailTemplateDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Indicates that the provided custom verification email template does not exist.</p>
      def custom_verification_email_template_name
        @data[:custom_verification_email_template_name]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the event destination could not be created because of a naming
    #             conflict.</p>
    class EventDestinationAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::EventDestinationAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Indicates that the configuration set does not exist.</p>
      def configuration_set_name
        @data[:configuration_set_name]
      end

      # <p>Indicates that the event destination does not exist.</p>
      def event_destination_name
        @data[:event_destination_name]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the event destination does not exist.</p>
    class EventDestinationDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::EventDestinationDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Indicates that the configuration set does not exist.</p>
      def configuration_set_name
        @data[:configuration_set_name]
      end

      # <p>Indicates that the event destination does not exist.</p>
      def event_destination_name
        @data[:event_destination_name]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the sender address specified for a custom verification email is not
    #             verified, and is therefore not eligible to send the custom verification email. </p>
    class FromEmailAddressNotVerifiedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::FromEmailAddressNotVerifiedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Indicates that the from email address associated with the custom verification email
      #             template is not verified.</p>
      def from_email_address
        @data[:from_email_address]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the Amazon CloudWatch destination is invalid. See the error message for
    #             details.</p>
    class InvalidCloudWatchDestinationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::InvalidCloudWatchDestinationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Indicates that the configuration set does not exist.</p>
      def configuration_set_name
        @data[:configuration_set_name]
      end

      # <p>Indicates that the event destination does not exist.</p>
      def event_destination_name
        @data[:event_destination_name]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the configuration set is invalid. See the error message for
    #             details.</p>
    class InvalidConfigurationSetException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::InvalidConfigurationSetException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that provided delivery option is invalid.</p>
    class InvalidDeliveryOptionsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::InvalidDeliveryOptionsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the Amazon Kinesis Firehose destination is invalid. See the error
    #             message for details.</p>
    class InvalidFirehoseDestinationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::InvalidFirehoseDestinationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Indicates that the configuration set does not exist.</p>
      def configuration_set_name
        @data[:configuration_set_name]
      end

      # <p>Indicates that the event destination does not exist.</p>
      def event_destination_name
        @data[:event_destination_name]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the provided Amazon Web Services Lambda function is invalid, or that Amazon SES could
    #             not execute the provided function, possibly due to permissions issues. For information
    #             about giving permissions, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES
    #                 Developer Guide</a>.</p>
    class InvalidLambdaFunctionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::InvalidLambdaFunctionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Indicates that the ARN of the function was not found.</p>
      def function_arn
        @data[:function_arn]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the provided policy is invalid. Check the error stack for more
    #             information about what caused the error.</p>
    class InvalidPolicyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::InvalidPolicyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that one or more of the replacement values you provided is invalid. This
    #             error may occur when the TemplateData object contains invalid JSON.</p>
    class InvalidRenderingParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::InvalidRenderingParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def template_name
        @data[:template_name]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the provided Amazon S3 bucket or Amazon Web Services KMS encryption key is invalid,
    #             or that Amazon SES could not publish to the bucket, possibly due to permissions issues.
    #             For information about giving permissions, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES
    #                 Developer Guide</a>.</p>
    class InvalidS3ConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::InvalidS3ConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Indicated that the S3 Bucket was not found.</p>
      def bucket
        @data[:bucket]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the Amazon Simple Notification Service (Amazon SNS) destination is
    #             invalid. See the error message for details.</p>
    class InvalidSNSDestinationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::InvalidSNSDestinationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Indicates that the configuration set does not exist.</p>
      def configuration_set_name
        @data[:configuration_set_name]
      end

      # <p>Indicates that the event destination does not exist.</p>
      def event_destination_name
        @data[:event_destination_name]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the provided Amazon SNS topic is invalid, or that Amazon SES could not
    #             publish to the topic, possibly due to permissions issues. For information about giving
    #             permissions, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES
    #                 Developer Guide</a>.</p>
    class InvalidSnsTopicException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::InvalidSnsTopicException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Indicates that the topic does not exist.</p>
      def topic
        @data[:topic]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the template that you specified could not be rendered. This issue may
    #             occur when a template refers to a partial that does not exist.</p>
    class InvalidTemplateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::InvalidTemplateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def template_name
        @data[:template_name]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the custom domain to be used for open and click tracking redirects is
    #             invalid. This error appears most often in the following situations:</p>
    #          <ul>
    #             <li>
    #                <p>When the tracking domain you specified is not verified in Amazon SES.</p>
    #             </li>
    #             <li>
    #                <p>When the tracking domain you specified is not a valid domain or
    #                     subdomain.</p>
    #             </li>
    #          </ul>
    class InvalidTrackingOptionsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::InvalidTrackingOptionsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that a resource could not be created because of service limits. For a list
    #             of Amazon SES limits, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/limits.html">Amazon SES Developer
    #             Guide</a>.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p> Indicates that the message could not be sent because Amazon SES could not read the MX
    #             record required to use the specified MAIL FROM domain. For information about editing the
    #             custom MAIL FROM domain settings for an identity, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from-edit.html">Amazon SES Developer
    #                 Guide</a>.</p>
    class MailFromDomainNotVerifiedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::MailFromDomainNotVerifiedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the action failed, and the message could not be sent. Check the error
    #             stack for more information about what caused the error.</p>
    class MessageRejected < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::MessageRejected] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that one or more of the replacement values for the specified template was
    #             not specified. Ensure that the TemplateData object contains references to all of the
    #             replacement tags in the specified template.</p>
    class MissingRenderingAttributeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::MissingRenderingAttributeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def template_name
        @data[:template_name]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the account has not been granted production access.</p>
    class ProductionAccessNotGrantedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::ProductionAccessNotGrantedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the provided receipt rule does not exist.</p>
    class RuleDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::RuleDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Indicates that the named receipt rule does not exist.</p>
      def name
        @data[:name]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the provided receipt rule set does not exist.</p>
    class RuleSetDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::RuleSetDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Indicates that the named receipt rule set does not exist.</p>
      def name
        @data[:name]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the Template object you specified does not exist in your Amazon SES
    #             account.</p>
    class TemplateDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::TemplateDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def template_name
        @data[:template_name]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the configuration set you specified already contains a TrackingOptions
    #             object.</p>
    class TrackingOptionsAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::TrackingOptionsAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Indicates that a TrackingOptions object already exists in the specified configuration
      #             set.</p>
      def configuration_set_name
        @data[:configuration_set_name]
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the TrackingOptions object you specified does not exist.</p>
    class TrackingOptionsDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SES::Types::TrackingOptionsDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Indicates that a TrackingOptions object does not exist in the specified configuration
      #             set.</p>
      def configuration_set_name
        @data[:configuration_set_name]
      end

      def message
        @data[:message]
      end
    end
  end
end

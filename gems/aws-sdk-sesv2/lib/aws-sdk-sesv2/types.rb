# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SESV2
  module Types

    # An object that contains information about your account details.
    #
    # @!attribute [rw] mail_type
    #   The type of email your account is sending. The mail type can be one
    #   of the following:
    #
    #   * `MARKETING` – Most of your sending traffic is to keep your
    #     customers informed of your latest offering.
    #
    #   * `TRANSACTIONAL` – Most of your sending traffic is to communicate
    #     during a transaction with a customer.
    #   @return [String]
    #
    # @!attribute [rw] website_url
    #   The URL of your website. This information helps us better understand
    #   the type of content that you plan to send.
    #   @return [String]
    #
    # @!attribute [rw] contact_language
    #   The language you would prefer for the case. The contact language can
    #   be one of `ENGLISH` or `JAPANESE`.
    #   @return [String]
    #
    # @!attribute [rw] use_case_description
    #   A description of the types of email that you plan to send.
    #   @return [String]
    #
    # @!attribute [rw] additional_contact_email_addresses
    #   Additional email addresses where updates are sent about your account
    #   review process.
    #   @return [Array<String>]
    #
    # @!attribute [rw] review_details
    #   Information about the review of the latest details you submitted.
    #   @return [Types::ReviewDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/AccountDetails AWS API Documentation
    #
    class AccountDetails < Struct.new(
      :mail_type,
      :website_url,
      :contact_language,
      :use_case_description,
      :additional_contact_email_addresses,
      :review_details)
      SENSITIVE = [:website_url, :use_case_description, :additional_contact_email_addresses]
      include Aws::Structure
    end

    # The message can't be sent because the account's ability to send
    # email has been permanently restricted.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/AccountSuspendedException AWS API Documentation
    #
    class AccountSuspendedException < Aws::EmptyStructure; end

    # The resource specified in your request already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/AlreadyExistsException AWS API Documentation
    #
    class AlreadyExistsException < Aws::EmptyStructure; end

    # The input you provided is invalid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/BadRequestException AWS API Documentation
    #
    class BadRequestException < Aws::EmptyStructure; end

    # An object that contains information about a blacklisting event that
    # impacts one of the dedicated IP addresses that is associated with your
    # account.
    #
    # @!attribute [rw] rbl_name
    #   The name of the blacklist that the IP address appears on.
    #   @return [String]
    #
    # @!attribute [rw] listing_time
    #   The time when the blacklisting event occurred, shown in Unix time
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   Additional information about the blacklisting event, as provided by
    #   the blacklist maintainer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/BlacklistEntry AWS API Documentation
    #
    class BlacklistEntry < Struct.new(
      :rbl_name,
      :listing_time,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the body of the email message.
    #
    # @note When making an API call, you may pass Body
    #   data as a hash:
    #
    #       {
    #         text: {
    #           data: "MessageData", # required
    #           charset: "Charset",
    #         },
    #         html: {
    #           data: "MessageData", # required
    #           charset: "Charset",
    #         },
    #       }
    #
    # @!attribute [rw] text
    #   An object that represents the version of the message that is
    #   displayed in email clients that don't support HTML, or clients
    #   where the recipient has disabled HTML rendering.
    #   @return [Types::Content]
    #
    # @!attribute [rw] html
    #   An object that represents the version of the message that is
    #   displayed in email clients that support HTML. HTML messages can
    #   include formatted text, hyperlinks, images, and more.
    #   @return [Types::Content]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/Body AWS API Documentation
    #
    class Body < Struct.new(
      :text,
      :html)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the body of the message. You can specify a
    # template message.
    #
    # @note When making an API call, you may pass BulkEmailContent
    #   data as a hash:
    #
    #       {
    #         template: {
    #           template_name: "EmailTemplateName",
    #           template_arn: "AmazonResourceName",
    #           template_data: "EmailTemplateData",
    #         },
    #       }
    #
    # @!attribute [rw] template
    #   The template to use for the bulk email message.
    #   @return [Types::Template]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/BulkEmailContent AWS API Documentation
    #
    class BulkEmailContent < Struct.new(
      :template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BulkEmailEntry
    #   data as a hash:
    #
    #       {
    #         destination: { # required
    #           to_addresses: ["EmailAddress"],
    #           cc_addresses: ["EmailAddress"],
    #           bcc_addresses: ["EmailAddress"],
    #         },
    #         replacement_tags: [
    #           {
    #             name: "MessageTagName", # required
    #             value: "MessageTagValue", # required
    #           },
    #         ],
    #         replacement_email_content: {
    #           replacement_template: {
    #             replacement_template_data: "EmailTemplateData",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] destination
    #   Represents the destination of the message, consisting of To:, CC:,
    #   and BCC: fields.
    #
    #   <note markdown="1"> Amazon SES does not support the SMTPUTF8 extension, as described in
    #   [RFC6531][1]. For this reason, the local part of a destination email
    #   address (the part of the email address that precedes the @ sign) may
    #   only contain [7-bit ASCII characters][2]. If the domain part of an
    #   address (the part after the @ sign) contains non-ASCII characters,
    #   they must be encoded using Punycode, as described in [RFC3492][3].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc6531
    #   [2]: https://en.wikipedia.org/wiki/Email_address#Local-part
    #   [3]: https://tools.ietf.org/html/rfc3492.html
    #   @return [Types::Destination]
    #
    # @!attribute [rw] replacement_tags
    #   A list of tags, in the form of name/value pairs, to apply to an
    #   email that you send using the `SendBulkTemplatedEmail` operation.
    #   Tags correspond to characteristics of the email that you define, so
    #   that you can publish email sending events.
    #   @return [Array<Types::MessageTag>]
    #
    # @!attribute [rw] replacement_email_content
    #   The `ReplacementEmailContent` associated with a `BulkEmailEntry`.
    #   @return [Types::ReplacementEmailContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/BulkEmailEntry AWS API Documentation
    #
    class BulkEmailEntry < Struct.new(
      :destination,
      :replacement_tags,
      :replacement_email_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of the `SendBulkEmail` operation of each specified
    # `BulkEmailEntry`.
    #
    # @!attribute [rw] status
    #   The status of a message sent using the `SendBulkTemplatedEmail`
    #   operation.
    #
    #   Possible values for this parameter include:
    #
    #   * SUCCESS: Amazon SES accepted the message, and will attempt to
    #     deliver it to the recipients.
    #
    #   * MESSAGE\_REJECTED: The message was rejected because it contained a
    #     virus.
    #
    #   * MAIL\_FROM\_DOMAIN\_NOT\_VERIFIED: The sender's email address or
    #     domain was not verified.
    #
    #   * CONFIGURATION\_SET\_DOES\_NOT\_EXIST: The configuration set you
    #     specified does not exist.
    #
    #   * TEMPLATE\_DOES\_NOT\_EXIST: The template you specified does not
    #     exist.
    #
    #   * ACCOUNT\_SUSPENDED: Your account has been shut down because of
    #     issues related to your email sending practices.
    #
    #   * ACCOUNT\_THROTTLED: The number of emails you can send has been
    #     reduced because your account has exceeded its allocated sending
    #     limit.
    #
    #   * ACCOUNT\_DAILY\_QUOTA\_EXCEEDED: You have reached or exceeded the
    #     maximum number of emails you can send from your account in a
    #     24-hour period.
    #
    #   * INVALID\_SENDING\_POOL\_NAME: The configuration set you specified
    #     refers to an IP pool that does not exist.
    #
    #   * ACCOUNT\_SENDING\_PAUSED: Email sending for the Amazon SES account
    #     was disabled using the [UpdateAccountSendingEnabled][1] operation.
    #
    #   * CONFIGURATION\_SET\_SENDING\_PAUSED: Email sending for this
    #     configuration set was disabled using the
    #     [UpdateConfigurationSetSendingEnabled][2] operation.
    #
    #   * INVALID\_PARAMETER\_VALUE: One or more of the parameters you
    #     specified when calling this operation was invalid. See the error
    #     message for additional information.
    #
    #   * TRANSIENT\_FAILURE: Amazon SES was unable to process your request
    #     because of a temporary issue.
    #
    #   * FAILED: Amazon SES was unable to process your request. See the
    #     error message for additional information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/APIReference/API_UpdateAccountSendingEnabled.html
    #   [2]: https://docs.aws.amazon.com/ses/latest/APIReference/API_UpdateConfigurationSetSendingEnabled.html
    #   @return [String]
    #
    # @!attribute [rw] error
    #   A description of an error that prevented a message being sent using
    #   the `SendBulkTemplatedEmail` operation.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   The unique message identifier returned from the
    #   `SendBulkTemplatedEmail` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/BulkEmailEntryResult AWS API Documentation
    #
    class BulkEmailEntryResult < Struct.new(
      :status,
      :error,
      :message_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines an Amazon CloudWatch destination for email
    # events. You can use Amazon CloudWatch to monitor and gain insights on
    # your email sending metrics.
    #
    # @note When making an API call, you may pass CloudWatchDestination
    #   data as a hash:
    #
    #       {
    #         dimension_configurations: [ # required
    #           {
    #             dimension_name: "DimensionName", # required
    #             dimension_value_source: "MESSAGE_TAG", # required, accepts MESSAGE_TAG, EMAIL_HEADER, LINK_TAG
    #             default_dimension_value: "DefaultDimensionValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] dimension_configurations
    #   An array of objects that define the dimensions to use when you send
    #   email events to Amazon CloudWatch.
    #   @return [Array<Types::CloudWatchDimensionConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CloudWatchDestination AWS API Documentation
    #
    class CloudWatchDestination < Struct.new(
      :dimension_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines the dimension configuration to use when you
    # send email events to Amazon CloudWatch.
    #
    # @note When making an API call, you may pass CloudWatchDimensionConfiguration
    #   data as a hash:
    #
    #       {
    #         dimension_name: "DimensionName", # required
    #         dimension_value_source: "MESSAGE_TAG", # required, accepts MESSAGE_TAG, EMAIL_HEADER, LINK_TAG
    #         default_dimension_value: "DefaultDimensionValue", # required
    #       }
    #
    # @!attribute [rw] dimension_name
    #   The name of an Amazon CloudWatch dimension associated with an email
    #   sending metric. The name has to meet the following criteria:
    #
    #   * It can only contain ASCII letters (a–z, A–Z), numbers (0–9),
    #     underscores (\_), or dashes (-).
    #
    #   * It can contain no more than 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] dimension_value_source
    #   The location where the Amazon SES API v2 finds the value of a
    #   dimension to publish to Amazon CloudWatch. If you want to use the
    #   message tags that you specify using an `X-SES-MESSAGE-TAGS` header
    #   or a parameter to the `SendEmail` or `SendRawEmail` API, choose
    #   `messageTag`. If you want to use your own email headers, choose
    #   `emailHeader`. If you want to use link tags, choose `linkTags`.
    #   @return [String]
    #
    # @!attribute [rw] default_dimension_value
    #   The default value of the dimension that is published to Amazon
    #   CloudWatch if you don't provide the value of the dimension when you
    #   send an email. This value has to meet the following criteria:
    #
    #   * It can only contain ASCII letters (a–z, A–Z), numbers (0–9),
    #     underscores (\_), or dashes (-).
    #
    #   * It can contain no more than 256 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CloudWatchDimensionConfiguration AWS API Documentation
    #
    class CloudWatchDimensionConfiguration < Struct.new(
      :dimension_name,
      :dimension_value_source,
      :default_dimension_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource is being modified by another operation or thread.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Aws::EmptyStructure; end

    # If there is already an ongoing account details update under review.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ConflictException AWS API Documentation
    #
    class ConflictException < Aws::EmptyStructure; end

    # An object that represents the content of the email, and optionally a
    # character set specification.
    #
    # @note When making an API call, you may pass Content
    #   data as a hash:
    #
    #       {
    #         data: "MessageData", # required
    #         charset: "Charset",
    #       }
    #
    # @!attribute [rw] data
    #   The content of the message itself.
    #   @return [String]
    #
    # @!attribute [rw] charset
    #   The character set for the content. Because of the constraints of the
    #   SMTP protocol, Amazon SES uses 7-bit ASCII by default. If the text
    #   includes characters outside of the ASCII range, you have to specify
    #   a character set. For example, you could specify `UTF-8`,
    #   `ISO-8859-1`, or `Shift_JIS`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/Content AWS API Documentation
    #
    class Content < Struct.new(
      :data,
      :charset)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to add an event destination to a configuration set.
    #
    # @note When making an API call, you may pass CreateConfigurationSetEventDestinationRequest
    #   data as a hash:
    #
    #       {
    #         configuration_set_name: "ConfigurationSetName", # required
    #         event_destination_name: "EventDestinationName", # required
    #         event_destination: { # required
    #           enabled: false,
    #           matching_event_types: ["SEND"], # accepts SEND, REJECT, BOUNCE, COMPLAINT, DELIVERY, OPEN, CLICK, RENDERING_FAILURE, DELIVERY_DELAY
    #           kinesis_firehose_destination: {
    #             iam_role_arn: "AmazonResourceName", # required
    #             delivery_stream_arn: "AmazonResourceName", # required
    #           },
    #           cloud_watch_destination: {
    #             dimension_configurations: [ # required
    #               {
    #                 dimension_name: "DimensionName", # required
    #                 dimension_value_source: "MESSAGE_TAG", # required, accepts MESSAGE_TAG, EMAIL_HEADER, LINK_TAG
    #                 default_dimension_value: "DefaultDimensionValue", # required
    #               },
    #             ],
    #           },
    #           sns_destination: {
    #             topic_arn: "AmazonResourceName", # required
    #           },
    #           pinpoint_destination: {
    #             application_arn: "AmazonResourceName",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set that you want to add an event
    #   destination to.
    #   @return [String]
    #
    # @!attribute [rw] event_destination_name
    #   A name that identifies the event destination within the
    #   configuration set.
    #   @return [String]
    #
    # @!attribute [rw] event_destination
    #   An object that defines the event destination.
    #   @return [Types::EventDestinationDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateConfigurationSetEventDestinationRequest AWS API Documentation
    #
    class CreateConfigurationSetEventDestinationRequest < Struct.new(
      :configuration_set_name,
      :event_destination_name,
      :event_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateConfigurationSetEventDestinationResponse AWS API Documentation
    #
    class CreateConfigurationSetEventDestinationResponse < Aws::EmptyStructure; end

    # A request to create a configuration set.
    #
    # @note When making an API call, you may pass CreateConfigurationSetRequest
    #   data as a hash:
    #
    #       {
    #         configuration_set_name: "ConfigurationSetName", # required
    #         tracking_options: {
    #           custom_redirect_domain: "CustomRedirectDomain", # required
    #         },
    #         delivery_options: {
    #           tls_policy: "REQUIRE", # accepts REQUIRE, OPTIONAL
    #           sending_pool_name: "PoolName",
    #         },
    #         reputation_options: {
    #           reputation_metrics_enabled: false,
    #           last_fresh_start: Time.now,
    #         },
    #         sending_options: {
    #           sending_enabled: false,
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         suppression_options: {
    #           suppressed_reasons: ["BOUNCE"], # accepts BOUNCE, COMPLAINT
    #         },
    #       }
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set.
    #   @return [String]
    #
    # @!attribute [rw] tracking_options
    #   An object that defines the open and click tracking options for
    #   emails that you send using the configuration set.
    #   @return [Types::TrackingOptions]
    #
    # @!attribute [rw] delivery_options
    #   An object that defines the dedicated IP pool that is used to send
    #   emails that you send using the configuration set.
    #   @return [Types::DeliveryOptions]
    #
    # @!attribute [rw] reputation_options
    #   An object that defines whether or not Amazon SES collects reputation
    #   metrics for the emails that you send that use the configuration set.
    #   @return [Types::ReputationOptions]
    #
    # @!attribute [rw] sending_options
    #   An object that defines whether or not Amazon SES can send email that
    #   you send using the configuration set.
    #   @return [Types::SendingOptions]
    #
    # @!attribute [rw] tags
    #   An array of objects that define the tags (keys and values) that you
    #   want to associate with the configuration set.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] suppression_options
    #   An object that contains information about the suppression list
    #   preferences for your account.
    #   @return [Types::SuppressionOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateConfigurationSetRequest AWS API Documentation
    #
    class CreateConfigurationSetRequest < Struct.new(
      :configuration_set_name,
      :tracking_options,
      :delivery_options,
      :reputation_options,
      :sending_options,
      :tags,
      :suppression_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateConfigurationSetResponse AWS API Documentation
    #
    class CreateConfigurationSetResponse < Aws::EmptyStructure; end

    # Represents a request to create a custom verification email template.
    #
    # @note When making an API call, you may pass CreateCustomVerificationEmailTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "EmailTemplateName", # required
    #         from_email_address: "EmailAddress", # required
    #         template_subject: "EmailTemplateSubject", # required
    #         template_content: "TemplateContent", # required
    #         success_redirection_url: "SuccessRedirectionURL", # required
    #         failure_redirection_url: "FailureRedirectionURL", # required
    #       }
    #
    # @!attribute [rw] template_name
    #   The name of the custom verification email template.
    #   @return [String]
    #
    # @!attribute [rw] from_email_address
    #   The email address that the custom verification email is sent from.
    #   @return [String]
    #
    # @!attribute [rw] template_subject
    #   The subject line of the custom verification email.
    #   @return [String]
    #
    # @!attribute [rw] template_content
    #   The content of the custom verification email. The total size of the
    #   email must be less than 10 MB. The message body may contain HTML,
    #   with some limitations. For more information, see [Custom
    #   Verification Email Frequently Asked Questions][1] in the *Amazon SES
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html#custom-verification-emails-faq
    #   @return [String]
    #
    # @!attribute [rw] success_redirection_url
    #   The URL that the recipient of the verification email is sent to if
    #   his or her address is successfully verified.
    #   @return [String]
    #
    # @!attribute [rw] failure_redirection_url
    #   The URL that the recipient of the verification email is sent to if
    #   his or her address is not successfully verified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateCustomVerificationEmailTemplateRequest AWS API Documentation
    #
    class CreateCustomVerificationEmailTemplateRequest < Struct.new(
      :template_name,
      :from_email_address,
      :template_subject,
      :template_content,
      :success_redirection_url,
      :failure_redirection_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # If the action is successful, the service sends back an HTTP 200
    # response with an empty HTTP body.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateCustomVerificationEmailTemplateResponse AWS API Documentation
    #
    class CreateCustomVerificationEmailTemplateResponse < Aws::EmptyStructure; end

    # A request to create a new dedicated IP pool.
    #
    # @note When making an API call, you may pass CreateDedicatedIpPoolRequest
    #   data as a hash:
    #
    #       {
    #         pool_name: "PoolName", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] pool_name
    #   The name of the dedicated IP pool.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An object that defines the tags (keys and values) that you want to
    #   associate with the pool.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateDedicatedIpPoolRequest AWS API Documentation
    #
    class CreateDedicatedIpPoolRequest < Struct.new(
      :pool_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateDedicatedIpPoolResponse AWS API Documentation
    #
    class CreateDedicatedIpPoolResponse < Aws::EmptyStructure; end

    # A request to perform a predictive inbox placement test. Predictive
    # inbox placement tests can help you predict how your messages will be
    # handled by various email providers around the world. When you perform
    # a predictive inbox placement test, you provide a sample message that
    # contains the content that you plan to send to your customers. We send
    # that message to special email addresses spread across several major
    # email providers around the world. The test takes about 24 hours to
    # complete. When the test is complete, you can use the
    # `GetDeliverabilityTestReport` operation to view the results of the
    # test.
    #
    # @note When making an API call, you may pass CreateDeliverabilityTestReportRequest
    #   data as a hash:
    #
    #       {
    #         report_name: "ReportName",
    #         from_email_address: "EmailAddress", # required
    #         content: { # required
    #           simple: {
    #             subject: { # required
    #               data: "MessageData", # required
    #               charset: "Charset",
    #             },
    #             body: { # required
    #               text: {
    #                 data: "MessageData", # required
    #                 charset: "Charset",
    #               },
    #               html: {
    #                 data: "MessageData", # required
    #                 charset: "Charset",
    #               },
    #             },
    #           },
    #           raw: {
    #             data: "data", # required
    #           },
    #           template: {
    #             template_name: "EmailTemplateName",
    #             template_arn: "AmazonResourceName",
    #             template_data: "EmailTemplateData",
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] report_name
    #   A unique name that helps you to identify the predictive inbox
    #   placement test when you retrieve the results.
    #   @return [String]
    #
    # @!attribute [rw] from_email_address
    #   The email address that the predictive inbox placement test email was
    #   sent from.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The HTML body of the message that you sent when you performed the
    #   predictive inbox placement test.
    #   @return [Types::EmailContent]
    #
    # @!attribute [rw] tags
    #   An array of objects that define the tags (keys and values) that you
    #   want to associate with the predictive inbox placement test.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateDeliverabilityTestReportRequest AWS API Documentation
    #
    class CreateDeliverabilityTestReportRequest < Struct.new(
      :report_name,
      :from_email_address,
      :content,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the predictive inbox placement test that you
    # created.
    #
    # @!attribute [rw] report_id
    #   A unique string that identifies the predictive inbox placement test.
    #   @return [String]
    #
    # @!attribute [rw] deliverability_test_status
    #   The status of the predictive inbox placement test. If the status is
    #   `IN_PROGRESS`, then the predictive inbox placement test is currently
    #   running. Predictive inbox placement tests are usually complete
    #   within 24 hours of creating the test. If the status is `COMPLETE`,
    #   then the test is finished, and you can use the
    #   `GetDeliverabilityTestReport` to view the results of the test.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateDeliverabilityTestReportResponse AWS API Documentation
    #
    class CreateDeliverabilityTestReportResponse < Struct.new(
      :report_id,
      :deliverability_test_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a request to create a sending authorization policy for an
    # identity. Sending authorization is an Amazon SES feature that enables
    # you to authorize other senders to use your identities. For
    # information, see the [Amazon SES Developer Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-identity-owner-tasks-management.html
    #
    # @note When making an API call, you may pass CreateEmailIdentityPolicyRequest
    #   data as a hash:
    #
    #       {
    #         email_identity: "Identity", # required
    #         policy_name: "PolicyName", # required
    #         policy: "Policy", # required
    #       }
    #
    # @!attribute [rw] email_identity
    #   The email identity for which you want to create a policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #
    #   The policy name cannot exceed 64 characters and can only include
    #   alphanumeric characters, dashes, and underscores.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The text of the policy in JSON format. The policy cannot exceed 4
    #   KB.
    #
    #   For information about the syntax of sending authorization policies,
    #   see the [Amazon SES Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateEmailIdentityPolicyRequest AWS API Documentation
    #
    class CreateEmailIdentityPolicyRequest < Struct.new(
      :email_identity,
      :policy_name,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateEmailIdentityPolicyResponse AWS API Documentation
    #
    class CreateEmailIdentityPolicyResponse < Aws::EmptyStructure; end

    # A request to begin the verification process for an email identity (an
    # email address or domain).
    #
    # @note When making an API call, you may pass CreateEmailIdentityRequest
    #   data as a hash:
    #
    #       {
    #         email_identity: "Identity", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         dkim_signing_attributes: {
    #           domain_signing_selector: "Selector", # required
    #           domain_signing_private_key: "PrivateKey", # required
    #         },
    #       }
    #
    # @!attribute [rw] email_identity
    #   The email address or domain that you want to verify.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of objects that define the tags (keys and values) that you
    #   want to associate with the email identity.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] dkim_signing_attributes
    #   If your request includes this object, Amazon SES configures the
    #   identity to use Bring Your Own DKIM (BYODKIM) for DKIM
    #   authentication purposes, as opposed to the default method, [Easy
    #   DKIM][1].
    #
    #   You can only specify this object if the email identity is a domain,
    #   as opposed to an address.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html
    #   @return [Types::DkimSigningAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateEmailIdentityRequest AWS API Documentation
    #
    class CreateEmailIdentityRequest < Struct.new(
      :email_identity,
      :tags,
      :dkim_signing_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # If the email identity is a domain, this object contains information
    # about the DKIM verification status for the domain.
    #
    # If the email identity is an email address, this object is empty.
    #
    # @!attribute [rw] identity_type
    #   The email identity type.
    #   @return [String]
    #
    # @!attribute [rw] verified_for_sending_status
    #   Specifies whether or not the identity is verified. You can only send
    #   email from verified email addresses or domains. For more information
    #   about verifying identities, see the [Amazon Pinpoint User Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-email-manage-verify.html
    #   @return [Boolean]
    #
    # @!attribute [rw] dkim_attributes
    #   An object that contains information about the DKIM attributes for
    #   the identity.
    #   @return [Types::DkimAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateEmailIdentityResponse AWS API Documentation
    #
    class CreateEmailIdentityResponse < Struct.new(
      :identity_type,
      :verified_for_sending_status,
      :dkim_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a request to create an email template. For more
    # information, see the [Amazon SES Developer Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html
    #
    # @note When making an API call, you may pass CreateEmailTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "EmailTemplateName", # required
    #         template_content: { # required
    #           subject: "EmailTemplateSubject",
    #           text: "EmailTemplateText",
    #           html: "EmailTemplateHtml",
    #         },
    #       }
    #
    # @!attribute [rw] template_name
    #   The name of the template you want to create.
    #   @return [String]
    #
    # @!attribute [rw] template_content
    #   The content of the email template, composed of a subject line, an
    #   HTML part, and a text-only part.
    #   @return [Types::EmailTemplateContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateEmailTemplateRequest AWS API Documentation
    #
    class CreateEmailTemplateRequest < Struct.new(
      :template_name,
      :template_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # If the action is successful, the service sends back an HTTP 200
    # response with an empty HTTP body.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateEmailTemplateResponse AWS API Documentation
    #
    class CreateEmailTemplateResponse < Aws::EmptyStructure; end

    # Represents a request to create an import job from a data source for a
    # data destination.
    #
    # @note When making an API call, you may pass CreateImportJobRequest
    #   data as a hash:
    #
    #       {
    #         import_destination: { # required
    #           suppression_list_destination: { # required
    #             suppression_list_import_action: "DELETE", # required, accepts DELETE, PUT
    #           },
    #         },
    #         import_data_source: { # required
    #           s3_url: "S3Url", # required
    #           data_format: "CSV", # required, accepts CSV, JSON
    #         },
    #       }
    #
    # @!attribute [rw] import_destination
    #   The destination for the import job.
    #   @return [Types::ImportDestination]
    #
    # @!attribute [rw] import_data_source
    #   The data source for the import job.
    #   @return [Types::ImportDataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateImportJobRequest AWS API Documentation
    #
    class CreateImportJobRequest < Struct.new(
      :import_destination,
      :import_data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @!attribute [rw] job_id
    #   A string that represents the import job ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateImportJobResponse AWS API Documentation
    #
    class CreateImportJobResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a custom verification email template.
    #
    # @!attribute [rw] template_name
    #   The name of the custom verification email template.
    #   @return [String]
    #
    # @!attribute [rw] from_email_address
    #   The email address that the custom verification email is sent from.
    #   @return [String]
    #
    # @!attribute [rw] template_subject
    #   The subject line of the custom verification email.
    #   @return [String]
    #
    # @!attribute [rw] success_redirection_url
    #   The URL that the recipient of the verification email is sent to if
    #   his or her address is successfully verified.
    #   @return [String]
    #
    # @!attribute [rw] failure_redirection_url
    #   The URL that the recipient of the verification email is sent to if
    #   his or her address is not successfully verified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CustomVerificationEmailTemplateMetadata AWS API Documentation
    #
    class CustomVerificationEmailTemplateMetadata < Struct.new(
      :template_name,
      :from_email_address,
      :template_subject,
      :success_redirection_url,
      :failure_redirection_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about the volume of email sent on
    # each day of the analysis period.
    #
    # @!attribute [rw] start_date
    #   The date that the DailyVolume metrics apply to, in Unix time.
    #   @return [Time]
    #
    # @!attribute [rw] volume_statistics
    #   An object that contains inbox placement metrics for a specific day
    #   in the analysis period.
    #   @return [Types::VolumeStatistics]
    #
    # @!attribute [rw] domain_isp_placements
    #   An object that contains inbox placement metrics for a specified day
    #   in the analysis period, broken out by the recipient's email
    #   provider.
    #   @return [Array<Types::DomainIspPlacement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DailyVolume AWS API Documentation
    #
    class DailyVolume < Struct.new(
      :start_date,
      :volume_statistics,
      :domain_isp_placements)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a dedicated IP address that is associated
    # with your Amazon SES account.
    #
    # To learn more about requesting dedicated IP addresses, see [Requesting
    # and Relinquishing Dedicated IP Addresses][1] in the *Amazon SES
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/dedicated-ip-case.html
    #
    # @!attribute [rw] ip
    #   An IPv4 address.
    #   @return [String]
    #
    # @!attribute [rw] warmup_status
    #   The warm-up status of a dedicated IP address. The status can have
    #   one of the following values:
    #
    #   * `IN_PROGRESS` – The IP address isn't ready to use because the
    #     dedicated IP warm-up process is ongoing.
    #
    #   * `DONE` – The dedicated IP warm-up process is complete, and the IP
    #     address is ready to use.
    #   @return [String]
    #
    # @!attribute [rw] warmup_percentage
    #   Indicates how complete the dedicated IP warm-up process is. When
    #   this value equals 1, the address has completed the warm-up process
    #   and is ready for use.
    #   @return [Integer]
    #
    # @!attribute [rw] pool_name
    #   The name of the dedicated IP pool that the IP address is associated
    #   with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DedicatedIp AWS API Documentation
    #
    class DedicatedIp < Struct.new(
      :ip,
      :warmup_status,
      :warmup_percentage,
      :pool_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to delete an event destination from a configuration set.
    #
    # @note When making an API call, you may pass DeleteConfigurationSetEventDestinationRequest
    #   data as a hash:
    #
    #       {
    #         configuration_set_name: "ConfigurationSetName", # required
    #         event_destination_name: "EventDestinationName", # required
    #       }
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set that contains the event
    #   destination that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] event_destination_name
    #   The name of the event destination that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteConfigurationSetEventDestinationRequest AWS API Documentation
    #
    class DeleteConfigurationSetEventDestinationRequest < Struct.new(
      :configuration_set_name,
      :event_destination_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteConfigurationSetEventDestinationResponse AWS API Documentation
    #
    class DeleteConfigurationSetEventDestinationResponse < Aws::EmptyStructure; end

    # A request to delete a configuration set.
    #
    # @note When making an API call, you may pass DeleteConfigurationSetRequest
    #   data as a hash:
    #
    #       {
    #         configuration_set_name: "ConfigurationSetName", # required
    #       }
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteConfigurationSetRequest AWS API Documentation
    #
    class DeleteConfigurationSetRequest < Struct.new(
      :configuration_set_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteConfigurationSetResponse AWS API Documentation
    #
    class DeleteConfigurationSetResponse < Aws::EmptyStructure; end

    # Represents a request to delete an existing custom verification email
    # template.
    #
    # @note When making an API call, you may pass DeleteCustomVerificationEmailTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "EmailTemplateName", # required
    #       }
    #
    # @!attribute [rw] template_name
    #   The name of the custom verification email template that you want to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteCustomVerificationEmailTemplateRequest AWS API Documentation
    #
    class DeleteCustomVerificationEmailTemplateRequest < Struct.new(
      :template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # If the action is successful, the service sends back an HTTP 200
    # response with an empty HTTP body.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteCustomVerificationEmailTemplateResponse AWS API Documentation
    #
    class DeleteCustomVerificationEmailTemplateResponse < Aws::EmptyStructure; end

    # A request to delete a dedicated IP pool.
    #
    # @note When making an API call, you may pass DeleteDedicatedIpPoolRequest
    #   data as a hash:
    #
    #       {
    #         pool_name: "PoolName", # required
    #       }
    #
    # @!attribute [rw] pool_name
    #   The name of the dedicated IP pool that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteDedicatedIpPoolRequest AWS API Documentation
    #
    class DeleteDedicatedIpPoolRequest < Struct.new(
      :pool_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteDedicatedIpPoolResponse AWS API Documentation
    #
    class DeleteDedicatedIpPoolResponse < Aws::EmptyStructure; end

    # Represents a request to delete a sending authorization policy for an
    # identity. Sending authorization is an Amazon SES feature that enables
    # you to authorize other senders to use your identities. For
    # information, see the [Amazon SES Developer Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-identity-owner-tasks-management.html
    #
    # @note When making an API call, you may pass DeleteEmailIdentityPolicyRequest
    #   data as a hash:
    #
    #       {
    #         email_identity: "Identity", # required
    #         policy_name: "PolicyName", # required
    #       }
    #
    # @!attribute [rw] email_identity
    #   The email identity for which you want to delete a policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #
    #   The policy name cannot exceed 64 characters and can only include
    #   alphanumeric characters, dashes, and underscores.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteEmailIdentityPolicyRequest AWS API Documentation
    #
    class DeleteEmailIdentityPolicyRequest < Struct.new(
      :email_identity,
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteEmailIdentityPolicyResponse AWS API Documentation
    #
    class DeleteEmailIdentityPolicyResponse < Aws::EmptyStructure; end

    # A request to delete an existing email identity. When you delete an
    # identity, you lose the ability to send email from that identity. You
    # can restore your ability to send email by completing the verification
    # process for the identity again.
    #
    # @note When making an API call, you may pass DeleteEmailIdentityRequest
    #   data as a hash:
    #
    #       {
    #         email_identity: "Identity", # required
    #       }
    #
    # @!attribute [rw] email_identity
    #   The identity (that is, the email address or domain) that you want to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteEmailIdentityRequest AWS API Documentation
    #
    class DeleteEmailIdentityRequest < Struct.new(
      :email_identity)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteEmailIdentityResponse AWS API Documentation
    #
    class DeleteEmailIdentityResponse < Aws::EmptyStructure; end

    # Represents a request to delete an email template. For more
    # information, see the [Amazon SES Developer Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html
    #
    # @note When making an API call, you may pass DeleteEmailTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "EmailTemplateName", # required
    #       }
    #
    # @!attribute [rw] template_name
    #   The name of the template to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteEmailTemplateRequest AWS API Documentation
    #
    class DeleteEmailTemplateRequest < Struct.new(
      :template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # If the action is successful, the service sends back an HTTP 200
    # response with an empty HTTP body.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteEmailTemplateResponse AWS API Documentation
    #
    class DeleteEmailTemplateResponse < Aws::EmptyStructure; end

    # A request to remove an email address from the suppression list for
    # your account.
    #
    # @note When making an API call, you may pass DeleteSuppressedDestinationRequest
    #   data as a hash:
    #
    #       {
    #         email_address: "EmailAddress", # required
    #       }
    #
    # @!attribute [rw] email_address
    #   The suppressed email destination to remove from the account
    #   suppression list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteSuppressedDestinationRequest AWS API Documentation
    #
    class DeleteSuppressedDestinationRequest < Struct.new(
      :email_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteSuppressedDestinationResponse AWS API Documentation
    #
    class DeleteSuppressedDestinationResponse < Aws::EmptyStructure; end

    # An object that contains metadata related to a predictive inbox
    # placement test.
    #
    # @!attribute [rw] report_id
    #   A unique string that identifies the predictive inbox placement test.
    #   @return [String]
    #
    # @!attribute [rw] report_name
    #   A name that helps you identify a predictive inbox placement test
    #   report.
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   The subject line for an email that you submitted in a predictive
    #   inbox placement test.
    #   @return [String]
    #
    # @!attribute [rw] from_email_address
    #   The sender address that you specified for the predictive inbox
    #   placement test.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time when the predictive inbox placement test was
    #   created, in Unix time format.
    #   @return [Time]
    #
    # @!attribute [rw] deliverability_test_status
    #   The status of the predictive inbox placement test. If the status is
    #   `IN_PROGRESS`, then the predictive inbox placement test is currently
    #   running. Predictive inbox placement tests are usually complete
    #   within 24 hours of creating the test. If the status is `COMPLETE`,
    #   then the test is finished, and you can use the
    #   `GetDeliverabilityTestReport` to view the results of the test.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeliverabilityTestReport AWS API Documentation
    #
    class DeliverabilityTestReport < Struct.new(
      :report_id,
      :report_name,
      :subject,
      :from_email_address,
      :create_date,
      :deliverability_test_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used to associate a configuration set with a dedicated IP pool.
    #
    # @note When making an API call, you may pass DeliveryOptions
    #   data as a hash:
    #
    #       {
    #         tls_policy: "REQUIRE", # accepts REQUIRE, OPTIONAL
    #         sending_pool_name: "PoolName",
    #       }
    #
    # @!attribute [rw] tls_policy
    #   Specifies whether messages that use the configuration set are
    #   required to use Transport Layer Security (TLS). If the value is
    #   `Require`, messages are only delivered if a TLS connection can be
    #   established. If the value is `Optional`, messages can be delivered
    #   in plain text if a TLS connection can't be established.
    #   @return [String]
    #
    # @!attribute [rw] sending_pool_name
    #   The name of the dedicated IP pool that you want to associate with
    #   the configuration set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeliveryOptions AWS API Documentation
    #
    class DeliveryOptions < Struct.new(
      :tls_policy,
      :sending_pool_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that describes the recipients for an email.
    #
    # @note When making an API call, you may pass Destination
    #   data as a hash:
    #
    #       {
    #         to_addresses: ["EmailAddress"],
    #         cc_addresses: ["EmailAddress"],
    #         bcc_addresses: ["EmailAddress"],
    #       }
    #
    # @!attribute [rw] to_addresses
    #   An array that contains the email addresses of the "To" recipients
    #   for the email.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cc_addresses
    #   An array that contains the email addresses of the "CC" (carbon
    #   copy) recipients for the email.
    #   @return [Array<String>]
    #
    # @!attribute [rw] bcc_addresses
    #   An array that contains the email addresses of the "BCC" (blind
    #   carbon copy) recipients for the email.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/Destination AWS API Documentation
    #
    class Destination < Struct.new(
      :to_addresses,
      :cc_addresses,
      :bcc_addresses)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about the DKIM authentication
    # status for an email identity.
    #
    # Amazon SES determines the authentication status by searching for
    # specific records in the DNS configuration for the domain. If you used
    # [Easy DKIM][1] to set up DKIM authentication, Amazon SES tries to find
    # three unique CNAME records in the DNS configuration for your domain.
    # If you provided a public key to perform DKIM authentication, Amazon
    # SES tries to find a TXT record that uses the selector that you
    # specified. The value of the TXT record must be a public key that's
    # paired with the private key that you specified in the process of
    # creating the identity
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html
    #
    # @!attribute [rw] signing_enabled
    #   If the value is `true`, then the messages that you send from the
    #   identity are signed using DKIM. If the value is `false`, then the
    #   messages that you send from the identity aren't DKIM-signed.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   Describes whether or not Amazon SES has successfully located the
    #   DKIM records in the DNS records for the domain. The status can be
    #   one of the following:
    #
    #   * `PENDING` – The verification process was initiated, but Amazon SES
    #     hasn't yet detected the DKIM records in the DNS configuration for
    #     the domain.
    #
    #   * `SUCCESS` – The verification process completed successfully.
    #
    #   * `FAILED` – The verification process failed. This typically occurs
    #     when Amazon SES fails to find the DKIM records in the DNS
    #     configuration of the domain.
    #
    #   * `TEMPORARY_FAILURE` – A temporary issue is preventing Amazon SES
    #     from determining the DKIM authentication status of the domain.
    #
    #   * `NOT_STARTED` – The DKIM verification process hasn't been
    #     initiated for the domain.
    #   @return [String]
    #
    # @!attribute [rw] tokens
    #   If you used [Easy DKIM][1] to configure DKIM authentication for the
    #   domain, then this object contains a set of unique strings that you
    #   use to create a set of CNAME records that you add to the DNS
    #   configuration for your domain. When Amazon SES detects these records
    #   in the DNS configuration for your domain, the DKIM authentication
    #   process is complete.
    #
    #   If you configured DKIM authentication for the domain by providing
    #   your own public-private key pair, then this object contains the
    #   selector for the public key.
    #
    #   Regardless of the DKIM authentication method you use, Amazon SES
    #   searches for the appropriate records in the DNS configuration of the
    #   domain for up to 72 hours.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] signing_attributes_origin
    #   A string that indicates how DKIM was configured for the identity.
    #   There are two possible values:
    #
    #   * `AWS_SES` – Indicates that DKIM was configured for the identity by
    #     using [Easy DKIM][1].
    #
    #   * `EXTERNAL` – Indicates that DKIM was configured for the identity
    #     by using Bring Your Own DKIM (BYODKIM).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DkimAttributes AWS API Documentation
    #
    class DkimAttributes < Struct.new(
      :signing_enabled,
      :status,
      :tokens,
      :signing_attributes_origin)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about the tokens used for setting
    # up Bring Your Own DKIM (BYODKIM).
    #
    # @note When making an API call, you may pass DkimSigningAttributes
    #   data as a hash:
    #
    #       {
    #         domain_signing_selector: "Selector", # required
    #         domain_signing_private_key: "PrivateKey", # required
    #       }
    #
    # @!attribute [rw] domain_signing_selector
    #   A string that's used to identify a public key in the DNS
    #   configuration for a domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_signing_private_key
    #   A private key that's used to generate a DKIM signature.
    #
    #   The private key must use 1024-bit RSA encryption, and must be
    #   encoded using base64 encoding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DkimSigningAttributes AWS API Documentation
    #
    class DkimSigningAttributes < Struct.new(
      :domain_signing_selector,
      :domain_signing_private_key)
      SENSITIVE = [:domain_signing_private_key]
      include Aws::Structure
    end

    # An object that contains the deliverability data for a specific
    # campaign. This data is available for a campaign only if the campaign
    # sent email by using a domain that the Deliverability dashboard is
    # enabled for (`PutDeliverabilityDashboardOption` operation).
    #
    # @!attribute [rw] campaign_id
    #   The unique identifier for the campaign. The Deliverability dashboard
    #   automatically generates and assigns this identifier to a campaign.
    #   @return [String]
    #
    # @!attribute [rw] image_url
    #   The URL of an image that contains a snapshot of the email message
    #   that was sent.
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   The subject line, or title, of the email message.
    #   @return [String]
    #
    # @!attribute [rw] from_address
    #   The verified email address that the email message was sent from.
    #   @return [String]
    #
    # @!attribute [rw] sending_ips
    #   The IP addresses that were used to send the email message.
    #   @return [Array<String>]
    #
    # @!attribute [rw] first_seen_date_time
    #   The first time, in Unix time format, when the email message was
    #   delivered to any recipient's inbox. This value can help you
    #   determine how long it took for a campaign to deliver an email
    #   message.
    #   @return [Time]
    #
    # @!attribute [rw] last_seen_date_time
    #   The last time, in Unix time format, when the email message was
    #   delivered to any recipient's inbox. This value can help you
    #   determine how long it took for a campaign to deliver an email
    #   message.
    #   @return [Time]
    #
    # @!attribute [rw] inbox_count
    #   The number of email messages that were delivered to recipients’
    #   inboxes.
    #   @return [Integer]
    #
    # @!attribute [rw] spam_count
    #   The number of email messages that were delivered to recipients'
    #   spam or junk mail folders.
    #   @return [Integer]
    #
    # @!attribute [rw] read_rate
    #   The percentage of email messages that were opened by recipients. Due
    #   to technical limitations, this value only includes recipients who
    #   opened the message by using an email client that supports images.
    #   @return [Float]
    #
    # @!attribute [rw] delete_rate
    #   The percentage of email messages that were deleted by recipients,
    #   without being opened first. Due to technical limitations, this value
    #   only includes recipients who opened the message by using an email
    #   client that supports images.
    #   @return [Float]
    #
    # @!attribute [rw] read_delete_rate
    #   The percentage of email messages that were opened and then deleted
    #   by recipients. Due to technical limitations, this value only
    #   includes recipients who opened the message by using an email client
    #   that supports images.
    #   @return [Float]
    #
    # @!attribute [rw] projected_volume
    #   The projected number of recipients that the email message was sent
    #   to.
    #   @return [Integer]
    #
    # @!attribute [rw] esps
    #   The major email providers who handled the email message.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DomainDeliverabilityCampaign AWS API Documentation
    #
    class DomainDeliverabilityCampaign < Struct.new(
      :campaign_id,
      :image_url,
      :subject,
      :from_address,
      :sending_ips,
      :first_seen_date_time,
      :last_seen_date_time,
      :inbox_count,
      :spam_count,
      :read_rate,
      :delete_rate,
      :read_delete_rate,
      :projected_volume,
      :esps)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about the Deliverability dashboard
    # subscription for a verified domain that you use to send email and
    # currently has an active Deliverability dashboard subscription. If a
    # Deliverability dashboard subscription is active for a domain, you gain
    # access to reputation, inbox placement, and other metrics for the
    # domain.
    #
    # @note When making an API call, you may pass DomainDeliverabilityTrackingOption
    #   data as a hash:
    #
    #       {
    #         domain: "Domain",
    #         subscription_start_date: Time.now,
    #         inbox_placement_tracking_option: {
    #           global: false,
    #           tracked_isps: ["IspName"],
    #         },
    #       }
    #
    # @!attribute [rw] domain
    #   A verified domain that’s associated with your AWS account and
    #   currently has an active Deliverability dashboard subscription.
    #   @return [String]
    #
    # @!attribute [rw] subscription_start_date
    #   The date, in Unix time format, when you enabled the Deliverability
    #   dashboard for the domain.
    #   @return [Time]
    #
    # @!attribute [rw] inbox_placement_tracking_option
    #   An object that contains information about the inbox placement data
    #   settings for the domain.
    #   @return [Types::InboxPlacementTrackingOption]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DomainDeliverabilityTrackingOption AWS API Documentation
    #
    class DomainDeliverabilityTrackingOption < Struct.new(
      :domain,
      :subscription_start_date,
      :inbox_placement_tracking_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains inbox placement data for email sent from one
    # of your email domains to a specific email provider.
    #
    # @!attribute [rw] isp_name
    #   The name of the email provider that the inbox placement data applies
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] inbox_raw_count
    #   The total number of messages that were sent from the selected domain
    #   to the specified email provider that arrived in recipients'
    #   inboxes.
    #   @return [Integer]
    #
    # @!attribute [rw] spam_raw_count
    #   The total number of messages that were sent from the selected domain
    #   to the specified email provider that arrived in recipients' spam or
    #   junk mail folders.
    #   @return [Integer]
    #
    # @!attribute [rw] inbox_percentage
    #   The percentage of messages that were sent from the selected domain
    #   to the specified email provider that arrived in recipients'
    #   inboxes.
    #   @return [Float]
    #
    # @!attribute [rw] spam_percentage
    #   The percentage of messages that were sent from the selected domain
    #   to the specified email provider that arrived in recipients' spam or
    #   junk mail folders.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DomainIspPlacement AWS API Documentation
    #
    class DomainIspPlacement < Struct.new(
      :isp_name,
      :inbox_raw_count,
      :spam_raw_count,
      :inbox_percentage,
      :spam_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines the entire content of the email, including the
    # message headers and the body content. You can create a simple email
    # message, in which you specify the subject and the text and HTML
    # versions of the message body. You can also create raw messages, in
    # which you specify a complete MIME-formatted message. Raw messages can
    # include attachments and custom headers.
    #
    # @note When making an API call, you may pass EmailContent
    #   data as a hash:
    #
    #       {
    #         simple: {
    #           subject: { # required
    #             data: "MessageData", # required
    #             charset: "Charset",
    #           },
    #           body: { # required
    #             text: {
    #               data: "MessageData", # required
    #               charset: "Charset",
    #             },
    #             html: {
    #               data: "MessageData", # required
    #               charset: "Charset",
    #             },
    #           },
    #         },
    #         raw: {
    #           data: "data", # required
    #         },
    #         template: {
    #           template_name: "EmailTemplateName",
    #           template_arn: "AmazonResourceName",
    #           template_data: "EmailTemplateData",
    #         },
    #       }
    #
    # @!attribute [rw] simple
    #   The simple email message. The message consists of a subject and a
    #   message body.
    #   @return [Types::Message]
    #
    # @!attribute [rw] raw
    #   The raw email message. The message has to meet the following
    #   criteria:
    #
    #   * The message has to contain a header and a body, separated by one
    #     blank line.
    #
    #   * All of the required header fields must be present in the message.
    #
    #   * Each part of a multipart MIME message must be formatted properly.
    #
    #   * If you include attachments, they must be in a file format that the
    #     Amazon SES API v2 supports.
    #
    #   * The entire message must be Base64 encoded.
    #
    #   * If any of the MIME parts in your message contain content that is
    #     outside of the 7-bit ASCII character range, you should encode that
    #     content to ensure that recipients' email clients render the
    #     message properly.
    #
    #   * The length of any single line of text in the message can't exceed
    #     1,000 characters. This restriction is defined in [RFC 5321][1].
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc5321
    #   @return [Types::RawMessage]
    #
    # @!attribute [rw] template
    #   The template to use for the email message.
    #   @return [Types::Template]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/EmailContent AWS API Documentation
    #
    class EmailContent < Struct.new(
      :simple,
      :raw,
      :template)
      SENSITIVE = []
      include Aws::Structure
    end

    # The content of the email, composed of a subject line, an HTML part,
    # and a text-only part.
    #
    # @note When making an API call, you may pass EmailTemplateContent
    #   data as a hash:
    #
    #       {
    #         subject: "EmailTemplateSubject",
    #         text: "EmailTemplateText",
    #         html: "EmailTemplateHtml",
    #       }
    #
    # @!attribute [rw] subject
    #   The subject line of the email.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The email body that will be visible to recipients whose email
    #   clients do not display HTML.
    #   @return [String]
    #
    # @!attribute [rw] html
    #   The HTML body of the email.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/EmailTemplateContent AWS API Documentation
    #
    class EmailTemplateContent < Struct.new(
      :subject,
      :text,
      :html)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an email template.
    #
    # @!attribute [rw] template_name
    #   The name of the template.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time and date the template was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/EmailTemplateMetadata AWS API Documentation
    #
    class EmailTemplateMetadata < Struct.new(
      :template_name,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # In the Amazon SES API v2, *events* include message sends, deliveries,
    # opens, clicks, bounces, complaints and delivery delays. *Event
    # destinations* are places that you can send information about these
    # events to. For example, you can send event data to Amazon SNS to
    # receive notifications when you receive bounces or complaints, or you
    # can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for
    # long-term storage.
    #
    # @!attribute [rw] name
    #   A name that identifies the event destination.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If `true`, the event destination is enabled. When the event
    #   destination is enabled, the specified event types are sent to the
    #   destinations in this `EventDestinationDefinition`.
    #
    #   If `false`, the event destination is disabled. When the event
    #   destination is disabled, events aren't sent to the specified
    #   destinations.
    #   @return [Boolean]
    #
    # @!attribute [rw] matching_event_types
    #   The types of events that Amazon SES sends to the specified event
    #   destinations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] kinesis_firehose_destination
    #   An object that defines an Amazon Kinesis Data Firehose destination
    #   for email events. You can use Amazon Kinesis Data Firehose to stream
    #   data to other services, such as Amazon S3 and Amazon Redshift.
    #   @return [Types::KinesisFirehoseDestination]
    #
    # @!attribute [rw] cloud_watch_destination
    #   An object that defines an Amazon CloudWatch destination for email
    #   events. You can use Amazon CloudWatch to monitor and gain insights
    #   on your email sending metrics.
    #   @return [Types::CloudWatchDestination]
    #
    # @!attribute [rw] sns_destination
    #   An object that defines an Amazon SNS destination for email events.
    #   You can use Amazon SNS to send notification when certain email
    #   events occur.
    #   @return [Types::SnsDestination]
    #
    # @!attribute [rw] pinpoint_destination
    #   An object that defines an Amazon Pinpoint project destination for
    #   email events. You can send email event data to a Amazon Pinpoint
    #   project to view metrics using the Transactional Messaging dashboards
    #   that are built in to Amazon Pinpoint. For more information, see
    #   [Transactional Messaging Charts][1] in the *Amazon Pinpoint User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pinpoint/latest/userguide/analytics-transactional-messages.html
    #   @return [Types::PinpointDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/EventDestination AWS API Documentation
    #
    class EventDestination < Struct.new(
      :name,
      :enabled,
      :matching_event_types,
      :kinesis_firehose_destination,
      :cloud_watch_destination,
      :sns_destination,
      :pinpoint_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines the event destination. Specifically, it defines
    # which services receive events from emails sent using the configuration
    # set that the event destination is associated with. Also defines the
    # types of events that are sent to the event destination.
    #
    # @note When making an API call, you may pass EventDestinationDefinition
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         matching_event_types: ["SEND"], # accepts SEND, REJECT, BOUNCE, COMPLAINT, DELIVERY, OPEN, CLICK, RENDERING_FAILURE, DELIVERY_DELAY
    #         kinesis_firehose_destination: {
    #           iam_role_arn: "AmazonResourceName", # required
    #           delivery_stream_arn: "AmazonResourceName", # required
    #         },
    #         cloud_watch_destination: {
    #           dimension_configurations: [ # required
    #             {
    #               dimension_name: "DimensionName", # required
    #               dimension_value_source: "MESSAGE_TAG", # required, accepts MESSAGE_TAG, EMAIL_HEADER, LINK_TAG
    #               default_dimension_value: "DefaultDimensionValue", # required
    #             },
    #           ],
    #         },
    #         sns_destination: {
    #           topic_arn: "AmazonResourceName", # required
    #         },
    #         pinpoint_destination: {
    #           application_arn: "AmazonResourceName",
    #         },
    #       }
    #
    # @!attribute [rw] enabled
    #   If `true`, the event destination is enabled. When the event
    #   destination is enabled, the specified event types are sent to the
    #   destinations in this `EventDestinationDefinition`.
    #
    #   If `false`, the event destination is disabled. When the event
    #   destination is disabled, events aren't sent to the specified
    #   destinations.
    #   @return [Boolean]
    #
    # @!attribute [rw] matching_event_types
    #   An array that specifies which events the Amazon SES API v2 should
    #   send to the destinations in this `EventDestinationDefinition`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] kinesis_firehose_destination
    #   An object that defines an Amazon Kinesis Data Firehose destination
    #   for email events. You can use Amazon Kinesis Data Firehose to stream
    #   data to other services, such as Amazon S3 and Amazon Redshift.
    #   @return [Types::KinesisFirehoseDestination]
    #
    # @!attribute [rw] cloud_watch_destination
    #   An object that defines an Amazon CloudWatch destination for email
    #   events. You can use Amazon CloudWatch to monitor and gain insights
    #   on your email sending metrics.
    #   @return [Types::CloudWatchDestination]
    #
    # @!attribute [rw] sns_destination
    #   An object that defines an Amazon SNS destination for email events.
    #   You can use Amazon SNS to send notification when certain email
    #   events occur.
    #   @return [Types::SnsDestination]
    #
    # @!attribute [rw] pinpoint_destination
    #   An object that defines an Amazon Pinpoint project destination for
    #   email events. You can send email event data to a Amazon Pinpoint
    #   project to view metrics using the Transactional Messaging dashboards
    #   that are built in to Amazon Pinpoint. For more information, see
    #   [Transactional Messaging Charts][1] in the *Amazon Pinpoint User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pinpoint/latest/userguide/analytics-transactional-messages.html
    #   @return [Types::PinpointDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/EventDestinationDefinition AWS API Documentation
    #
    class EventDestinationDefinition < Struct.new(
      :enabled,
      :matching_event_types,
      :kinesis_firehose_destination,
      :cloud_watch_destination,
      :sns_destination,
      :pinpoint_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the failure details about an import job.
    #
    # @!attribute [rw] failed_records_s3_url
    #   An Amazon S3 presigned URL that contains all the failed records and
    #   related information.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message about why the import job failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/FailureInfo AWS API Documentation
    #
    class FailureInfo < Struct.new(
      :failed_records_s3_url,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to obtain information about the email-sending capabilities
    # of your Amazon SES account.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetAccountRequest AWS API Documentation
    #
    class GetAccountRequest < Aws::EmptyStructure; end

    # A list of details about the email-sending capabilities of your Amazon
    # SES account in the current AWS Region.
    #
    # @!attribute [rw] dedicated_ip_auto_warmup_enabled
    #   Indicates whether or not the automatic warm-up feature is enabled
    #   for dedicated IP addresses that are associated with your account.
    #   @return [Boolean]
    #
    # @!attribute [rw] enforcement_status
    #   The reputation status of your Amazon SES account. The status can be
    #   one of the following:
    #
    #   * `HEALTHY` – There are no reputation-related issues that currently
    #     impact your account.
    #
    #   * `PROBATION` – We've identified potential issues with your Amazon
    #     SES account. We're placing your account under review while you
    #     work on correcting these issues.
    #
    #   * `SHUTDOWN` – Your account's ability to send email is currently
    #     paused because of an issue with the email sent from your account.
    #     When you correct the issue, you can contact us and request that
    #     your account's ability to send email is resumed.
    #   @return [String]
    #
    # @!attribute [rw] production_access_enabled
    #   Indicates whether or not your account has production access in the
    #   current AWS Region.
    #
    #   If the value is `false`, then your account is in the *sandbox*. When
    #   your account is in the sandbox, you can only send email to verified
    #   identities. Additionally, the maximum number of emails you can send
    #   in a 24-hour period (your sending quota) is 200, and the maximum
    #   number of emails you can send per second (your maximum sending rate)
    #   is 1.
    #
    #   If the value is `true`, then your account has production access.
    #   When your account has production access, you can send email to any
    #   address. The sending quota and maximum sending rate for your account
    #   vary based on your specific use case.
    #   @return [Boolean]
    #
    # @!attribute [rw] send_quota
    #   An object that contains information about the per-day and per-second
    #   sending limits for your Amazon SES account in the current AWS
    #   Region.
    #   @return [Types::SendQuota]
    #
    # @!attribute [rw] sending_enabled
    #   Indicates whether or not email sending is enabled for your Amazon
    #   SES account in the current AWS Region.
    #   @return [Boolean]
    #
    # @!attribute [rw] suppression_attributes
    #   An object that contains information about the email address
    #   suppression preferences for your account in the current AWS Region.
    #   @return [Types::SuppressionAttributes]
    #
    # @!attribute [rw] details
    #   An object that defines your account details.
    #   @return [Types::AccountDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetAccountResponse AWS API Documentation
    #
    class GetAccountResponse < Struct.new(
      :dedicated_ip_auto_warmup_enabled,
      :enforcement_status,
      :production_access_enabled,
      :send_quota,
      :sending_enabled,
      :suppression_attributes,
      :details)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to retrieve a list of the blacklists that your dedicated IP
    # addresses appear on.
    #
    # @note When making an API call, you may pass GetBlacklistReportsRequest
    #   data as a hash:
    #
    #       {
    #         blacklist_item_names: ["BlacklistItemName"], # required
    #       }
    #
    # @!attribute [rw] blacklist_item_names
    #   A list of IP addresses that you want to retrieve blacklist
    #   information about. You can only specify the dedicated IP addresses
    #   that you use to send email using Amazon SES or Amazon Pinpoint.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetBlacklistReportsRequest AWS API Documentation
    #
    class GetBlacklistReportsRequest < Struct.new(
      :blacklist_item_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about blacklist events.
    #
    # @!attribute [rw] blacklist_report
    #   An object that contains information about a blacklist that one of
    #   your dedicated IP addresses appears on.
    #   @return [Hash<String,Array<Types::BlacklistEntry>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetBlacklistReportsResponse AWS API Documentation
    #
    class GetBlacklistReportsResponse < Struct.new(
      :blacklist_report)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to obtain information about the event destinations for a
    # configuration set.
    #
    # @note When making an API call, you may pass GetConfigurationSetEventDestinationsRequest
    #   data as a hash:
    #
    #       {
    #         configuration_set_name: "ConfigurationSetName", # required
    #       }
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set that contains the event
    #   destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetConfigurationSetEventDestinationsRequest AWS API Documentation
    #
    class GetConfigurationSetEventDestinationsRequest < Struct.new(
      :configuration_set_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an event destination for a configuration set.
    #
    # @!attribute [rw] event_destinations
    #   An array that includes all of the events destinations that have been
    #   configured for the configuration set.
    #   @return [Array<Types::EventDestination>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetConfigurationSetEventDestinationsResponse AWS API Documentation
    #
    class GetConfigurationSetEventDestinationsResponse < Struct.new(
      :event_destinations)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to obtain information about a configuration set.
    #
    # @note When making an API call, you may pass GetConfigurationSetRequest
    #   data as a hash:
    #
    #       {
    #         configuration_set_name: "ConfigurationSetName", # required
    #       }
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set that you want to obtain more
    #   information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetConfigurationSetRequest AWS API Documentation
    #
    class GetConfigurationSetRequest < Struct.new(
      :configuration_set_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a configuration set.
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set.
    #   @return [String]
    #
    # @!attribute [rw] tracking_options
    #   An object that defines the open and click tracking options for
    #   emails that you send using the configuration set.
    #   @return [Types::TrackingOptions]
    #
    # @!attribute [rw] delivery_options
    #   An object that defines the dedicated IP pool that is used to send
    #   emails that you send using the configuration set.
    #   @return [Types::DeliveryOptions]
    #
    # @!attribute [rw] reputation_options
    #   An object that defines whether or not Amazon SES collects reputation
    #   metrics for the emails that you send that use the configuration set.
    #   @return [Types::ReputationOptions]
    #
    # @!attribute [rw] sending_options
    #   An object that defines whether or not Amazon SES can send email that
    #   you send using the configuration set.
    #   @return [Types::SendingOptions]
    #
    # @!attribute [rw] tags
    #   An array of objects that define the tags (keys and values) that are
    #   associated with the configuration set.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] suppression_options
    #   An object that contains information about the suppression list
    #   preferences for your account.
    #   @return [Types::SuppressionOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetConfigurationSetResponse AWS API Documentation
    #
    class GetConfigurationSetResponse < Struct.new(
      :configuration_set_name,
      :tracking_options,
      :delivery_options,
      :reputation_options,
      :sending_options,
      :tags,
      :suppression_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a request to retrieve an existing custom verification email
    # template.
    #
    # @note When making an API call, you may pass GetCustomVerificationEmailTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "EmailTemplateName", # required
    #       }
    #
    # @!attribute [rw] template_name
    #   The name of the custom verification email template that you want to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetCustomVerificationEmailTemplateRequest AWS API Documentation
    #
    class GetCustomVerificationEmailTemplateRequest < Struct.new(
      :template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The following elements are returned by the service.
    #
    # @!attribute [rw] template_name
    #   The name of the custom verification email template.
    #   @return [String]
    #
    # @!attribute [rw] from_email_address
    #   The email address that the custom verification email is sent from.
    #   @return [String]
    #
    # @!attribute [rw] template_subject
    #   The subject line of the custom verification email.
    #   @return [String]
    #
    # @!attribute [rw] template_content
    #   The content of the custom verification email.
    #   @return [String]
    #
    # @!attribute [rw] success_redirection_url
    #   The URL that the recipient of the verification email is sent to if
    #   his or her address is successfully verified.
    #   @return [String]
    #
    # @!attribute [rw] failure_redirection_url
    #   The URL that the recipient of the verification email is sent to if
    #   his or her address is not successfully verified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetCustomVerificationEmailTemplateResponse AWS API Documentation
    #
    class GetCustomVerificationEmailTemplateResponse < Struct.new(
      :template_name,
      :from_email_address,
      :template_subject,
      :template_content,
      :success_redirection_url,
      :failure_redirection_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to obtain more information about a dedicated IP address.
    #
    # @note When making an API call, you may pass GetDedicatedIpRequest
    #   data as a hash:
    #
    #       {
    #         ip: "Ip", # required
    #       }
    #
    # @!attribute [rw] ip
    #   The IP address that you want to obtain more information about. The
    #   value you specify has to be a dedicated IP address that's
    #   assocaited with your AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetDedicatedIpRequest AWS API Documentation
    #
    class GetDedicatedIpRequest < Struct.new(
      :ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a dedicated IP address.
    #
    # @!attribute [rw] dedicated_ip
    #   An object that contains information about a dedicated IP address.
    #   @return [Types::DedicatedIp]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetDedicatedIpResponse AWS API Documentation
    #
    class GetDedicatedIpResponse < Struct.new(
      :dedicated_ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to obtain more information about dedicated IP pools.
    #
    # @note When making an API call, you may pass GetDedicatedIpsRequest
    #   data as a hash:
    #
    #       {
    #         pool_name: "PoolName",
    #         next_token: "NextToken",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] pool_name
    #   The name of the IP pool that the dedicated IP address is associated
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token returned from a previous call to `GetDedicatedIps` to
    #   indicate the position of the dedicated IP pool in the list of IP
    #   pools.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The number of results to show in a single call to
    #   `GetDedicatedIpsRequest`. If the number of results is larger than
    #   the number you specified in this parameter, then the response
    #   includes a `NextToken` element, which you can use to obtain
    #   additional results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetDedicatedIpsRequest AWS API Documentation
    #
    class GetDedicatedIpsRequest < Struct.new(
      :pool_name,
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the dedicated IP addresses that are associated with
    # your AWS account.
    #
    # @!attribute [rw] dedicated_ips
    #   A list of dedicated IP addresses that are associated with your AWS
    #   account.
    #   @return [Array<Types::DedicatedIp>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates that there are additional dedicated IP
    #   addresses to list. To view additional addresses, issue another
    #   request to `GetDedicatedIps`, passing this token in the `NextToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetDedicatedIpsResponse AWS API Documentation
    #
    class GetDedicatedIpsResponse < Struct.new(
      :dedicated_ips,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrieve information about the status of the Deliverability dashboard
    # for your AWS account. When the Deliverability dashboard is enabled,
    # you gain access to reputation, deliverability, and other metrics for
    # your domains. You also gain the ability to perform predictive inbox
    # placement tests.
    #
    # When you use the Deliverability dashboard, you pay a monthly
    # subscription charge, in addition to any other fees that you accrue by
    # using Amazon SES and other AWS services. For more information about
    # the features and cost of a Deliverability dashboard subscription, see
    # [Amazon Pinpoint Pricing][1].
    #
    #
    #
    # [1]: http://aws.amazon.com/pinpoint/pricing/
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetDeliverabilityDashboardOptionsRequest AWS API Documentation
    #
    class GetDeliverabilityDashboardOptionsRequest < Aws::EmptyStructure; end

    # An object that shows the status of the Deliverability dashboard.
    #
    # @!attribute [rw] dashboard_enabled
    #   Specifies whether the Deliverability dashboard is enabled. If this
    #   value is `true`, the dashboard is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] subscription_expiry_date
    #   The date, in Unix time format, when your current subscription to the
    #   Deliverability dashboard is scheduled to expire, if your
    #   subscription is scheduled to expire at the end of the current
    #   calendar month. This value is null if you have an active
    #   subscription that isn’t due to expire at the end of the month.
    #   @return [Time]
    #
    # @!attribute [rw] account_status
    #   The current status of your Deliverability dashboard subscription. If
    #   this value is `PENDING_EXPIRATION`, your subscription is scheduled
    #   to expire at the end of the current calendar month.
    #   @return [String]
    #
    # @!attribute [rw] active_subscribed_domains
    #   An array of objects, one for each verified domain that you use to
    #   send email and currently has an active Deliverability dashboard
    #   subscription that isn’t scheduled to expire at the end of the
    #   current calendar month.
    #   @return [Array<Types::DomainDeliverabilityTrackingOption>]
    #
    # @!attribute [rw] pending_expiration_subscribed_domains
    #   An array of objects, one for each verified domain that you use to
    #   send email and currently has an active Deliverability dashboard
    #   subscription that's scheduled to expire at the end of the current
    #   calendar month.
    #   @return [Array<Types::DomainDeliverabilityTrackingOption>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetDeliverabilityDashboardOptionsResponse AWS API Documentation
    #
    class GetDeliverabilityDashboardOptionsResponse < Struct.new(
      :dashboard_enabled,
      :subscription_expiry_date,
      :account_status,
      :active_subscribed_domains,
      :pending_expiration_subscribed_domains)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to retrieve the results of a predictive inbox placement
    # test.
    #
    # @note When making an API call, you may pass GetDeliverabilityTestReportRequest
    #   data as a hash:
    #
    #       {
    #         report_id: "ReportId", # required
    #       }
    #
    # @!attribute [rw] report_id
    #   A unique string that identifies the predictive inbox placement test.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetDeliverabilityTestReportRequest AWS API Documentation
    #
    class GetDeliverabilityTestReportRequest < Struct.new(
      :report_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The results of the predictive inbox placement test.
    #
    # @!attribute [rw] deliverability_test_report
    #   An object that contains the results of the predictive inbox
    #   placement test.
    #   @return [Types::DeliverabilityTestReport]
    #
    # @!attribute [rw] overall_placement
    #   An object that specifies how many test messages that were sent
    #   during the predictive inbox placement test were delivered to
    #   recipients' inboxes, how many were sent to recipients' spam
    #   folders, and how many weren't delivered.
    #   @return [Types::PlacementStatistics]
    #
    # @!attribute [rw] isp_placements
    #   An object that describes how the test email was handled by several
    #   email providers, including Gmail, Hotmail, Yahoo, AOL, and others.
    #   @return [Array<Types::IspPlacement>]
    #
    # @!attribute [rw] message
    #   An object that contains the message that you sent when you performed
    #   this predictive inbox placement test.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of objects that define the tags (keys and values) that are
    #   associated with the predictive inbox placement test.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetDeliverabilityTestReportResponse AWS API Documentation
    #
    class GetDeliverabilityTestReportResponse < Struct.new(
      :deliverability_test_report,
      :overall_placement,
      :isp_placements,
      :message,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrieve all the deliverability data for a specific campaign. This
    # data is available for a campaign only if the campaign sent email by
    # using a domain that the Deliverability dashboard is enabled for
    # (`PutDeliverabilityDashboardOption` operation).
    #
    # @note When making an API call, you may pass GetDomainDeliverabilityCampaignRequest
    #   data as a hash:
    #
    #       {
    #         campaign_id: "CampaignId", # required
    #       }
    #
    # @!attribute [rw] campaign_id
    #   The unique identifier for the campaign. The Deliverability dashboard
    #   automatically generates and assigns this identifier to a campaign.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetDomainDeliverabilityCampaignRequest AWS API Documentation
    #
    class GetDomainDeliverabilityCampaignRequest < Struct.new(
      :campaign_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains all the deliverability data for a specific
    # campaign. This data is available for a campaign only if the campaign
    # sent email by using a domain that the Deliverability dashboard is
    # enabled for.
    #
    # @!attribute [rw] domain_deliverability_campaign
    #   An object that contains the deliverability data for the campaign.
    #   @return [Types::DomainDeliverabilityCampaign]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetDomainDeliverabilityCampaignResponse AWS API Documentation
    #
    class GetDomainDeliverabilityCampaignResponse < Struct.new(
      :domain_deliverability_campaign)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to obtain deliverability metrics for a domain.
    #
    # @note When making an API call, you may pass GetDomainStatisticsReportRequest
    #   data as a hash:
    #
    #       {
    #         domain: "Identity", # required
    #         start_date: Time.now, # required
    #         end_date: Time.now, # required
    #       }
    #
    # @!attribute [rw] domain
    #   The domain that you want to obtain deliverability metrics for.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The first day (in Unix time) that you want to obtain domain
    #   deliverability metrics for.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   The last day (in Unix time) that you want to obtain domain
    #   deliverability metrics for. The `EndDate` that you specify has to be
    #   less than or equal to 30 days after the `StartDate`.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetDomainStatisticsReportRequest AWS API Documentation
    #
    class GetDomainStatisticsReportRequest < Struct.new(
      :domain,
      :start_date,
      :end_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that includes statistics that are related to the domain that
    # you specified.
    #
    # @!attribute [rw] overall_volume
    #   An object that contains deliverability metrics for the domain that
    #   you specified. The data in this object is a summary of all of the
    #   data that was collected from the `StartDate` to the `EndDate`.
    #   @return [Types::OverallVolume]
    #
    # @!attribute [rw] daily_volumes
    #   An object that contains deliverability metrics for the domain that
    #   you specified. This object contains data for each day, starting on
    #   the `StartDate` and ending on the `EndDate`.
    #   @return [Array<Types::DailyVolume>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetDomainStatisticsReportResponse AWS API Documentation
    #
    class GetDomainStatisticsReportResponse < Struct.new(
      :overall_volume,
      :daily_volumes)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to return the policies of an email identity.
    #
    # @note When making an API call, you may pass GetEmailIdentityPoliciesRequest
    #   data as a hash:
    #
    #       {
    #         email_identity: "Identity", # required
    #       }
    #
    # @!attribute [rw] email_identity
    #   The email identity that you want to retrieve policies for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetEmailIdentityPoliciesRequest AWS API Documentation
    #
    class GetEmailIdentityPoliciesRequest < Struct.new(
      :email_identity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identity policies associated with email identity.
    #
    # @!attribute [rw] policies
    #   A map of policy names to policies.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetEmailIdentityPoliciesResponse AWS API Documentation
    #
    class GetEmailIdentityPoliciesResponse < Struct.new(
      :policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to return details about an email identity.
    #
    # @note When making an API call, you may pass GetEmailIdentityRequest
    #   data as a hash:
    #
    #       {
    #         email_identity: "Identity", # required
    #       }
    #
    # @!attribute [rw] email_identity
    #   The email identity that you want to retrieve details for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetEmailIdentityRequest AWS API Documentation
    #
    class GetEmailIdentityRequest < Struct.new(
      :email_identity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an email identity.
    #
    # @!attribute [rw] identity_type
    #   The email identity type.
    #   @return [String]
    #
    # @!attribute [rw] feedback_forwarding_status
    #   The feedback forwarding configuration for the identity.
    #
    #   If the value is `true`, you receive email notifications when bounce
    #   or complaint events occur. These notifications are sent to the
    #   address that you specified in the `Return-Path` header of the
    #   original email.
    #
    #   You're required to have a method of tracking bounces and
    #   complaints. If you haven't set up another mechanism for receiving
    #   bounce or complaint notifications (for example, by setting up an
    #   event destination), you receive an email notification when these
    #   events occur (even if this setting is disabled).
    #   @return [Boolean]
    #
    # @!attribute [rw] verified_for_sending_status
    #   Specifies whether or not the identity is verified. You can only send
    #   email from verified email addresses or domains. For more information
    #   about verifying identities, see the [Amazon Pinpoint User Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-email-manage-verify.html
    #   @return [Boolean]
    #
    # @!attribute [rw] dkim_attributes
    #   An object that contains information about the DKIM attributes for
    #   the identity.
    #   @return [Types::DkimAttributes]
    #
    # @!attribute [rw] mail_from_attributes
    #   An object that contains information about the Mail-From attributes
    #   for the email identity.
    #   @return [Types::MailFromAttributes]
    #
    # @!attribute [rw] policies
    #   A map of policy names to policies.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   An array of objects that define the tags (keys and values) that are
    #   associated with the email identity.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetEmailIdentityResponse AWS API Documentation
    #
    class GetEmailIdentityResponse < Struct.new(
      :identity_type,
      :feedback_forwarding_status,
      :verified_for_sending_status,
      :dkim_attributes,
      :mail_from_attributes,
      :policies,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a request to display the template object (which includes
    # the subject line, HTML part and text part) for the template you
    # specify.
    #
    # @note When making an API call, you may pass GetEmailTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "EmailTemplateName", # required
    #       }
    #
    # @!attribute [rw] template_name
    #   The name of the template you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetEmailTemplateRequest AWS API Documentation
    #
    class GetEmailTemplateRequest < Struct.new(
      :template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The following element is returned by the service.
    #
    # @!attribute [rw] template_name
    #   The name of the template you want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] template_content
    #   The content of the email template, composed of a subject line, an
    #   HTML part, and a text-only part.
    #   @return [Types::EmailTemplateContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetEmailTemplateResponse AWS API Documentation
    #
    class GetEmailTemplateResponse < Struct.new(
      :template_name,
      :template_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a request for information about an import job using the
    # import job ID.
    #
    # @note When making an API call, you may pass GetImportJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The ID of the import job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetImportJobRequest AWS API Documentation
    #
    class GetImportJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @!attribute [rw] job_id
    #   A string that represents the import job ID.
    #   @return [String]
    #
    # @!attribute [rw] import_destination
    #   The destination of the import job.
    #   @return [Types::ImportDestination]
    #
    # @!attribute [rw] import_data_source
    #   The data source of the import job.
    #   @return [Types::ImportDataSource]
    #
    # @!attribute [rw] failure_info
    #   The failure details about an import job.
    #   @return [Types::FailureInfo]
    #
    # @!attribute [rw] job_status
    #   The status of the import job.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time stamp of when the import job was created.
    #   @return [Time]
    #
    # @!attribute [rw] completed_timestamp
    #   The time stamp of when the import job was completed.
    #   @return [Time]
    #
    # @!attribute [rw] processed_records_count
    #   The current number of records processed.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_records_count
    #   The number of records that failed processing because of invalid
    #   input or other reasons.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetImportJobResponse AWS API Documentation
    #
    class GetImportJobResponse < Struct.new(
      :job_id,
      :import_destination,
      :import_data_source,
      :failure_info,
      :job_status,
      :created_timestamp,
      :completed_timestamp,
      :processed_records_count,
      :failed_records_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to retrieve information about an email address that's on
    # the suppression list for your account.
    #
    # @note When making an API call, you may pass GetSuppressedDestinationRequest
    #   data as a hash:
    #
    #       {
    #         email_address: "EmailAddress", # required
    #       }
    #
    # @!attribute [rw] email_address
    #   The email address that's on the account suppression list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetSuppressedDestinationRequest AWS API Documentation
    #
    class GetSuppressedDestinationRequest < Struct.new(
      :email_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the suppressed email address.
    #
    # @!attribute [rw] suppressed_destination
    #   An object containing information about the suppressed email address.
    #   @return [Types::SuppressedDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetSuppressedDestinationResponse AWS API Documentation
    #
    class GetSuppressedDestinationResponse < Struct.new(
      :suppressed_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an email identity.
    #
    # @!attribute [rw] identity_type
    #   The email identity type. The identity type can be one of the
    #   following:
    #
    #   * `EMAIL_ADDRESS` – The identity is an email address.
    #
    #   * `DOMAIN` – The identity is a domain.
    #
    #   * `MANAGED_DOMAIN` – The identity is a domain that is managed by
    #     AWS.
    #   @return [String]
    #
    # @!attribute [rw] identity_name
    #   The address or domain of the identity.
    #   @return [String]
    #
    # @!attribute [rw] sending_enabled
    #   Indicates whether or not you can send email from the identity.
    #
    #   An *identity* is an email address or domain that you send email
    #   from. Before you can send email from an identity, you have to
    #   demostrate that you own the identity, and that you authorize Amazon
    #   SES to send email from that identity.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/IdentityInfo AWS API Documentation
    #
    class IdentityInfo < Struct.new(
      :identity_type,
      :identity_name,
      :sending_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains details about the data source of the import
    # job.
    #
    # @note When making an API call, you may pass ImportDataSource
    #   data as a hash:
    #
    #       {
    #         s3_url: "S3Url", # required
    #         data_format: "CSV", # required, accepts CSV, JSON
    #       }
    #
    # @!attribute [rw] s3_url
    #   An Amazon S3 URL in the format
    #   s3://*&lt;bucket\_name&gt;*/*&lt;object&gt;*.
    #   @return [String]
    #
    # @!attribute [rw] data_format
    #   The data format of the import job's data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ImportDataSource AWS API Documentation
    #
    class ImportDataSource < Struct.new(
      :s3_url,
      :data_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains details about the resource destination the
    # import job is going to target.
    #
    # @note When making an API call, you may pass ImportDestination
    #   data as a hash:
    #
    #       {
    #         suppression_list_destination: { # required
    #           suppression_list_import_action: "DELETE", # required, accepts DELETE, PUT
    #         },
    #       }
    #
    # @!attribute [rw] suppression_list_destination
    #   An object that contains the action of the import job towards
    #   suppression list.
    #   @return [Types::SuppressionListDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ImportDestination AWS API Documentation
    #
    class ImportDestination < Struct.new(
      :suppression_list_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the import job.
    #
    # @!attribute [rw] job_id
    #   A string that represents the import job ID.
    #   @return [String]
    #
    # @!attribute [rw] import_destination
    #   An object that contains details about the resource destination the
    #   import job is going to target.
    #   @return [Types::ImportDestination]
    #
    # @!attribute [rw] job_status
    #   The status of the import job.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ImportJobSummary AWS API Documentation
    #
    class ImportJobSummary < Struct.new(
      :job_id,
      :import_destination,
      :job_status,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about the inbox placement data
    # settings for a verified domain that’s associated with your AWS
    # account. This data is available only if you enabled the Deliverability
    # dashboard for the domain.
    #
    # @note When making an API call, you may pass InboxPlacementTrackingOption
    #   data as a hash:
    #
    #       {
    #         global: false,
    #         tracked_isps: ["IspName"],
    #       }
    #
    # @!attribute [rw] global
    #   Specifies whether inbox placement data is being tracked for the
    #   domain.
    #   @return [Boolean]
    #
    # @!attribute [rw] tracked_isps
    #   An array of strings, one for each major email provider that the
    #   inbox placement data applies to.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/InboxPlacementTrackingOption AWS API Documentation
    #
    class InboxPlacementTrackingOption < Struct.new(
      :global,
      :tracked_isps)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified request includes an invalid or expired token.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Aws::EmptyStructure; end

    # An object that describes how email sent during the predictive inbox
    # placement test was handled by a certain email provider.
    #
    # @!attribute [rw] isp_name
    #   The name of the email provider that the inbox placement data applies
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] placement_statistics
    #   An object that contains inbox placement metrics for a specific email
    #   provider.
    #   @return [Types::PlacementStatistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/IspPlacement AWS API Documentation
    #
    class IspPlacement < Struct.new(
      :isp_name,
      :placement_statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines an Amazon Kinesis Data Firehose destination for
    # email events. You can use Amazon Kinesis Data Firehose to stream data
    # to other services, such as Amazon S3 and Amazon Redshift.
    #
    # @note When making an API call, you may pass KinesisFirehoseDestination
    #   data as a hash:
    #
    #       {
    #         iam_role_arn: "AmazonResourceName", # required
    #         delivery_stream_arn: "AmazonResourceName", # required
    #       }
    #
    # @!attribute [rw] iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that the Amazon SES
    #   API v2 uses to send email events to the Amazon Kinesis Data Firehose
    #   stream.
    #   @return [String]
    #
    # @!attribute [rw] delivery_stream_arn
    #   The Amazon Resource Name (ARN) of the Amazon Kinesis Data Firehose
    #   stream that the Amazon SES API v2 sends email events to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/KinesisFirehoseDestination AWS API Documentation
    #
    class KinesisFirehoseDestination < Struct.new(
      :iam_role_arn,
      :delivery_stream_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # There are too many instances of the specified resource type.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Aws::EmptyStructure; end

    # A request to obtain a list of configuration sets for your Amazon SES
    # account in the current AWS Region.
    #
    # @note When making an API call, you may pass ListConfigurationSetsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   A token returned from a previous call to `ListConfigurationSets` to
    #   indicate the position in the list of configuration sets.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The number of results to show in a single call to
    #   `ListConfigurationSets`. If the number of results is larger than the
    #   number you specified in this parameter, then the response includes a
    #   `NextToken` element, which you can use to obtain additional results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListConfigurationSetsRequest AWS API Documentation
    #
    class ListConfigurationSetsRequest < Struct.new(
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of configuration sets in your Amazon SES account in the current
    # AWS Region.
    #
    # @!attribute [rw] configuration_sets
    #   An array that contains all of the configuration sets in your Amazon
    #   SES account in the current AWS Region.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates that there are additional configuration sets
    #   to list. To view additional configuration sets, issue another
    #   request to `ListConfigurationSets`, and pass this token in the
    #   `NextToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListConfigurationSetsResponse AWS API Documentation
    #
    class ListConfigurationSetsResponse < Struct.new(
      :configuration_sets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a request to list the existing custom verification email
    # templates for your account.
    #
    # @note When making an API call, you may pass ListCustomVerificationEmailTemplatesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   A token returned from a previous call to
    #   `ListCustomVerificationEmailTemplates` to indicate the position in
    #   the list of custom verification email templates.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The number of results to show in a single call to
    #   `ListCustomVerificationEmailTemplates`. If the number of results is
    #   larger than the number you specified in this parameter, then the
    #   response includes a `NextToken` element, which you can use to obtain
    #   additional results.
    #
    #   The value you specify has to be at least 1, and can be no more than
    #   50.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListCustomVerificationEmailTemplatesRequest AWS API Documentation
    #
    class ListCustomVerificationEmailTemplatesRequest < Struct.new(
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # The following elements are returned by the service.
    #
    # @!attribute [rw] custom_verification_email_templates
    #   A list of the custom verification email templates that exist in your
    #   account.
    #   @return [Array<Types::CustomVerificationEmailTemplateMetadata>]
    #
    # @!attribute [rw] next_token
    #   A token indicating that there are additional custom verification
    #   email templates available to be listed. Pass this token to a
    #   subsequent call to `ListCustomVerificationEmailTemplates` to
    #   retrieve the next 50 custom verification email templates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListCustomVerificationEmailTemplatesResponse AWS API Documentation
    #
    class ListCustomVerificationEmailTemplatesResponse < Struct.new(
      :custom_verification_email_templates,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to obtain a list of dedicated IP pools.
    #
    # @note When making an API call, you may pass ListDedicatedIpPoolsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   A token returned from a previous call to `ListDedicatedIpPools` to
    #   indicate the position in the list of dedicated IP pools.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The number of results to show in a single call to
    #   `ListDedicatedIpPools`. If the number of results is larger than the
    #   number you specified in this parameter, then the response includes a
    #   `NextToken` element, which you can use to obtain additional results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListDedicatedIpPoolsRequest AWS API Documentation
    #
    class ListDedicatedIpPoolsRequest < Struct.new(
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of dedicated IP pools.
    #
    # @!attribute [rw] dedicated_ip_pools
    #   A list of all of the dedicated IP pools that are associated with
    #   your AWS account in the current Region.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates that there are additional IP pools to list.
    #   To view additional IP pools, issue another request to
    #   `ListDedicatedIpPools`, passing this token in the `NextToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListDedicatedIpPoolsResponse AWS API Documentation
    #
    class ListDedicatedIpPoolsResponse < Struct.new(
      :dedicated_ip_pools,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to list all of the predictive inbox placement tests that
    # you've performed.
    #
    # @note When making an API call, you may pass ListDeliverabilityTestReportsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   A token returned from a previous call to
    #   `ListDeliverabilityTestReports` to indicate the position in the list
    #   of predictive inbox placement tests.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The number of results to show in a single call to
    #   `ListDeliverabilityTestReports`. If the number of results is larger
    #   than the number you specified in this parameter, then the response
    #   includes a `NextToken` element, which you can use to obtain
    #   additional results.
    #
    #   The value you specify has to be at least 0, and can be no more than
    #   1000.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListDeliverabilityTestReportsRequest AWS API Documentation
    #
    class ListDeliverabilityTestReportsRequest < Struct.new(
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of the predictive inbox placement test reports that are
    # available for your account, regardless of whether or not those tests
    # are complete.
    #
    # @!attribute [rw] deliverability_test_reports
    #   An object that contains a lists of predictive inbox placement tests
    #   that you've performed.
    #   @return [Array<Types::DeliverabilityTestReport>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates that there are additional predictive inbox
    #   placement tests to list. To view additional predictive inbox
    #   placement tests, issue another request to
    #   `ListDeliverabilityTestReports`, and pass this token in the
    #   `NextToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListDeliverabilityTestReportsResponse AWS API Documentation
    #
    class ListDeliverabilityTestReportsResponse < Struct.new(
      :deliverability_test_reports,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrieve deliverability data for all the campaigns that used a
    # specific domain to send email during a specified time range. This data
    # is available for a domain only if you enabled the Deliverability
    # dashboard.
    #
    # @note When making an API call, you may pass ListDomainDeliverabilityCampaignsRequest
    #   data as a hash:
    #
    #       {
    #         start_date: Time.now, # required
    #         end_date: Time.now, # required
    #         subscribed_domain: "Domain", # required
    #         next_token: "NextToken",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] start_date
    #   The first day, in Unix time format, that you want to obtain
    #   deliverability data for.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   The last day, in Unix time format, that you want to obtain
    #   deliverability data for. This value has to be less than or equal to
    #   30 days after the value of the `StartDate` parameter.
    #   @return [Time]
    #
    # @!attribute [rw] subscribed_domain
    #   The domain to obtain deliverability data for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token that’s returned from a previous call to the
    #   `ListDomainDeliverabilityCampaigns` operation. This token indicates
    #   the position of a campaign in the list of campaigns.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of results to include in response to a single
    #   call to the `ListDomainDeliverabilityCampaigns` operation. If the
    #   number of results is larger than the number that you specify in this
    #   parameter, the response includes a `NextToken` element, which you
    #   can use to obtain additional results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListDomainDeliverabilityCampaignsRequest AWS API Documentation
    #
    class ListDomainDeliverabilityCampaignsRequest < Struct.new(
      :start_date,
      :end_date,
      :subscribed_domain,
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # An array of objects that provide deliverability data for all the
    # campaigns that used a specific domain to send email during a specified
    # time range. This data is available for a domain only if you enabled
    # the Deliverability dashboard for the domain.
    #
    # @!attribute [rw] domain_deliverability_campaigns
    #   An array of responses, one for each campaign that used the domain to
    #   send email during the specified time range.
    #   @return [Array<Types::DomainDeliverabilityCampaign>]
    #
    # @!attribute [rw] next_token
    #   A token that’s returned from a previous call to the
    #   `ListDomainDeliverabilityCampaigns` operation. This token indicates
    #   the position of the campaign in the list of campaigns.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListDomainDeliverabilityCampaignsResponse AWS API Documentation
    #
    class ListDomainDeliverabilityCampaignsResponse < Struct.new(
      :domain_deliverability_campaigns,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to list all of the email identities associated with your AWS
    # account. This list includes identities that you've already verified,
    # identities that are unverified, and identities that were verified in
    # the past, but are no longer verified.
    #
    # @note When making an API call, you may pass ListEmailIdentitiesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   A token returned from a previous call to `ListEmailIdentities` to
    #   indicate the position in the list of identities.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The number of results to show in a single call to
    #   `ListEmailIdentities`. If the number of results is larger than the
    #   number you specified in this parameter, then the response includes a
    #   `NextToken` element, which you can use to obtain additional results.
    #
    #   The value you specify has to be at least 0, and can be no more than
    #   1000.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListEmailIdentitiesRequest AWS API Documentation
    #
    class ListEmailIdentitiesRequest < Struct.new(
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of all of the identities that you've attempted to verify,
    # regardless of whether or not those identities were successfully
    # verified.
    #
    # @!attribute [rw] email_identities
    #   An array that includes all of the email identities associated with
    #   your AWS account.
    #   @return [Array<Types::IdentityInfo>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates that there are additional configuration sets
    #   to list. To view additional configuration sets, issue another
    #   request to `ListEmailIdentities`, and pass this token in the
    #   `NextToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListEmailIdentitiesResponse AWS API Documentation
    #
    class ListEmailIdentitiesResponse < Struct.new(
      :email_identities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a request to list the email templates present in your
    # Amazon SES account in the current AWS Region. For more information,
    # see the [Amazon SES Developer Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html
    #
    # @note When making an API call, you may pass ListEmailTemplatesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   A token returned from a previous call to `ListEmailTemplates` to
    #   indicate the position in the list of email templates.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The number of results to show in a single call to
    #   `ListEmailTemplates`. If the number of results is larger than the
    #   number you specified in this parameter, then the response includes a
    #   `NextToken` element, which you can use to obtain additional results.
    #
    #   The value you specify has to be at least 1, and can be no more than
    #   10.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListEmailTemplatesRequest AWS API Documentation
    #
    class ListEmailTemplatesRequest < Struct.new(
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # The following elements are returned by the service.
    #
    # @!attribute [rw] templates_metadata
    #   An array the contains the name and creation time stamp for each
    #   template in your Amazon SES account.
    #   @return [Array<Types::EmailTemplateMetadata>]
    #
    # @!attribute [rw] next_token
    #   A token indicating that there are additional email templates
    #   available to be listed. Pass this token to a subsequent
    #   `ListEmailTemplates` call to retrieve the next 10 email templates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListEmailTemplatesResponse AWS API Documentation
    #
    class ListEmailTemplatesResponse < Struct.new(
      :templates_metadata,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a request to list all of the import jobs for a data
    # destination within the specified maximum number of import jobs.
    #
    # @note When making an API call, you may pass ListImportJobsRequest
    #   data as a hash:
    #
    #       {
    #         import_destination_type: "SUPPRESSION_LIST", # accepts SUPPRESSION_LIST
    #         next_token: "NextToken",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] import_destination_type
    #   The destination of the import job, which can be used to list import
    #   jobs that have a certain `ImportDestinationType`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A string token indicating that there might be additional import jobs
    #   available to be listed. Copy this token to a subsequent call to
    #   `ListImportJobs` with the same parameters to retrieve the next page
    #   of import jobs.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   Maximum number of import jobs to return at once. Use this parameter
    #   to paginate results. If additional import jobs exist beyond the
    #   specified limit, the `NextToken` element is sent in the response.
    #   Use the `NextToken` value in subsequent requests to retrieve
    #   additional addresses.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListImportJobsRequest AWS API Documentation
    #
    class ListImportJobsRequest < Struct.new(
      :import_destination_type,
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @!attribute [rw] import_jobs
    #   A list of the import job summaries.
    #   @return [Array<Types::ImportJobSummary>]
    #
    # @!attribute [rw] next_token
    #   A string token indicating that there might be additional import jobs
    #   available to be listed. Copy this token to a subsequent call to
    #   `ListImportJobs` with the same parameters to retrieve the next page
    #   of import jobs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListImportJobsResponse AWS API Documentation
    #
    class ListImportJobsResponse < Struct.new(
      :import_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to obtain a list of email destinations that are on the
    # suppression list for your account.
    #
    # @note When making an API call, you may pass ListSuppressedDestinationsRequest
    #   data as a hash:
    #
    #       {
    #         reasons: ["BOUNCE"], # accepts BOUNCE, COMPLAINT
    #         start_date: Time.now,
    #         end_date: Time.now,
    #         next_token: "NextToken",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] reasons
    #   The factors that caused the email address to be added to .
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_date
    #   Used to filter the list of suppressed email destinations so that it
    #   only includes addresses that were added to the list after a specific
    #   date. The date that you specify should be in Unix time format.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   Used to filter the list of suppressed email destinations so that it
    #   only includes addresses that were added to the list before a
    #   specific date. The date that you specify should be in Unix time
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   A token returned from a previous call to
    #   `ListSuppressedDestinations` to indicate the position in the list of
    #   suppressed email addresses.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The number of results to show in a single call to
    #   `ListSuppressedDestinations`. If the number of results is larger
    #   than the number you specified in this parameter, then the response
    #   includes a `NextToken` element, which you can use to obtain
    #   additional results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListSuppressedDestinationsRequest AWS API Documentation
    #
    class ListSuppressedDestinationsRequest < Struct.new(
      :reasons,
      :start_date,
      :end_date,
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of suppressed email addresses.
    #
    # @!attribute [rw] suppressed_destination_summaries
    #   A list of summaries, each containing a summary for a suppressed
    #   email destination.
    #   @return [Array<Types::SuppressedDestinationSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates that there are additional email addresses on
    #   the suppression list for your account. To view additional suppressed
    #   addresses, issue another request to `ListSuppressedDestinations`,
    #   and pass this token in the `NextToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListSuppressedDestinationsResponse AWS API Documentation
    #
    class ListSuppressedDestinationsResponse < Struct.new(
      :suppressed_destination_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   retrieve tag information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   An array that lists all the tags that are associated with the
    #   resource. Each tag consists of a required tag key (`Key`) and an
    #   associated tag value (`Value`)
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of attributes that are associated with a MAIL FROM domain.
    #
    # @!attribute [rw] mail_from_domain
    #   The name of a domain that an email identity uses as a custom MAIL
    #   FROM domain.
    #   @return [String]
    #
    # @!attribute [rw] mail_from_domain_status
    #   The status of the MAIL FROM domain. This status can have the
    #   following values:
    #
    #   * `PENDING` – Amazon SES hasn't started searching for the MX record
    #     yet.
    #
    #   * `SUCCESS` – Amazon SES detected the required MX record for the
    #     MAIL FROM domain.
    #
    #   * `FAILED` – Amazon SES can't find the required MX record, or the
    #     record no longer exists.
    #
    #   * `TEMPORARY_FAILURE` – A temporary issue occurred, which prevented
    #     Amazon SES from determining the status of the MAIL FROM domain.
    #   @return [String]
    #
    # @!attribute [rw] behavior_on_mx_failure
    #   The action that you want to take if the required MX record can't be
    #   found when you send an email. When you set this value to
    #   `UseDefaultValue`, the mail is sent using *amazonses.com* as the
    #   MAIL FROM domain. When you set this value to `RejectMessage`, the
    #   Amazon SES API v2 returns a `MailFromDomainNotVerified` error, and
    #   doesn't attempt to deliver the email.
    #
    #   These behaviors are taken when the custom MAIL FROM domain
    #   configuration is in the `Pending`, `Failed`, and `TemporaryFailure`
    #   states.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/MailFromAttributes AWS API Documentation
    #
    class MailFromAttributes < Struct.new(
      :mail_from_domain,
      :mail_from_domain_status,
      :behavior_on_mx_failure)
      SENSITIVE = []
      include Aws::Structure
    end

    # The message can't be sent because the sending domain isn't verified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/MailFromDomainNotVerifiedException AWS API Documentation
    #
    class MailFromDomainNotVerifiedException < Aws::EmptyStructure; end

    # Represents the email message that you're sending. The `Message`
    # object consists of a subject line and a message body.
    #
    # @note When making an API call, you may pass Message
    #   data as a hash:
    #
    #       {
    #         subject: { # required
    #           data: "MessageData", # required
    #           charset: "Charset",
    #         },
    #         body: { # required
    #           text: {
    #             data: "MessageData", # required
    #             charset: "Charset",
    #           },
    #           html: {
    #             data: "MessageData", # required
    #             charset: "Charset",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] subject
    #   The subject line of the email. The subject line can only contain
    #   7-bit ASCII characters. However, you can specify non-ASCII
    #   characters in the subject line by using encoded-word syntax, as
    #   described in [RFC 2047][1].
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc2047
    #   @return [Types::Content]
    #
    # @!attribute [rw] body
    #   The body of the message. You can specify an HTML version of the
    #   message, a text-only version of the message, or both.
    #   @return [Types::Body]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/Message AWS API Documentation
    #
    class Message < Struct.new(
      :subject,
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # The message can't be sent because it contains invalid content.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/MessageRejected AWS API Documentation
    #
    class MessageRejected < Aws::EmptyStructure; end

    # Contains the name and value of a tag that you apply to an email. You
    # can use message tags when you publish email sending events.
    #
    # @note When making an API call, you may pass MessageTag
    #   data as a hash:
    #
    #       {
    #         name: "MessageTagName", # required
    #         value: "MessageTagValue", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the message tag. The message tag name has to meet the
    #   following criteria:
    #
    #   * It can only contain ASCII letters (a–z, A–Z), numbers (0–9),
    #     underscores (\_), or dashes (-).
    #
    #   * It can contain no more than 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the message tag. The message tag value has to meet the
    #   following criteria:
    #
    #   * It can only contain ASCII letters (a–z, A–Z), numbers (0–9),
    #     underscores (\_), or dashes (-).
    #
    #   * It can contain no more than 256 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/MessageTag AWS API Documentation
    #
    class MessageTag < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource you attempted to access doesn't exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/NotFoundException AWS API Documentation
    #
    class NotFoundException < Aws::EmptyStructure; end

    # An object that contains information about email that was sent from the
    # selected domain.
    #
    # @!attribute [rw] volume_statistics
    #   An object that contains information about the numbers of messages
    #   that arrived in recipients' inboxes and junk mail folders.
    #   @return [Types::VolumeStatistics]
    #
    # @!attribute [rw] read_rate_percent
    #   The percentage of emails that were sent from the domain that were
    #   read by their recipients.
    #   @return [Float]
    #
    # @!attribute [rw] domain_isp_placements
    #   An object that contains inbox and junk mail placement metrics for
    #   individual email providers.
    #   @return [Array<Types::DomainIspPlacement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/OverallVolume AWS API Documentation
    #
    class OverallVolume < Struct.new(
      :volume_statistics,
      :read_rate_percent,
      :domain_isp_placements)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines an Amazon Pinpoint project destination for
    # email events. You can send email event data to a Amazon Pinpoint
    # project to view metrics using the Transactional Messaging dashboards
    # that are built in to Amazon Pinpoint. For more information, see
    # [Transactional Messaging Charts][1] in the *Amazon Pinpoint User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/pinpoint/latest/userguide/analytics-transactional-messages.html
    #
    # @note When making an API call, you may pass PinpointDestination
    #   data as a hash:
    #
    #       {
    #         application_arn: "AmazonResourceName",
    #       }
    #
    # @!attribute [rw] application_arn
    #   The Amazon Resource Name (ARN) of the Amazon Pinpoint project that
    #   you want to send email events to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PinpointDestination AWS API Documentation
    #
    class PinpointDestination < Struct.new(
      :application_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains inbox placement data for an email provider.
    #
    # @!attribute [rw] inbox_percentage
    #   The percentage of emails that arrived in recipients' inboxes during
    #   the predictive inbox placement test.
    #   @return [Float]
    #
    # @!attribute [rw] spam_percentage
    #   The percentage of emails that arrived in recipients' spam or junk
    #   mail folders during the predictive inbox placement test.
    #   @return [Float]
    #
    # @!attribute [rw] missing_percentage
    #   The percentage of emails that didn't arrive in recipients' inboxes
    #   at all during the predictive inbox placement test.
    #   @return [Float]
    #
    # @!attribute [rw] spf_percentage
    #   The percentage of emails that were authenticated by using Sender
    #   Policy Framework (SPF) during the predictive inbox placement test.
    #   @return [Float]
    #
    # @!attribute [rw] dkim_percentage
    #   The percentage of emails that were authenticated by using DomainKeys
    #   Identified Mail (DKIM) during the predictive inbox placement test.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PlacementStatistics AWS API Documentation
    #
    class PlacementStatistics < Struct.new(
      :inbox_percentage,
      :spam_percentage,
      :missing_percentage,
      :spf_percentage,
      :dkim_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to enable or disable the automatic IP address warm-up
    # feature.
    #
    # @note When making an API call, you may pass PutAccountDedicatedIpWarmupAttributesRequest
    #   data as a hash:
    #
    #       {
    #         auto_warmup_enabled: false,
    #       }
    #
    # @!attribute [rw] auto_warmup_enabled
    #   Enables or disables the automatic warm-up feature for dedicated IP
    #   addresses that are associated with your Amazon SES account in the
    #   current AWS Region. Set to `true` to enable the automatic warm-up
    #   feature, or set to `false` to disable it.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutAccountDedicatedIpWarmupAttributesRequest AWS API Documentation
    #
    class PutAccountDedicatedIpWarmupAttributesRequest < Struct.new(
      :auto_warmup_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutAccountDedicatedIpWarmupAttributesResponse AWS API Documentation
    #
    class PutAccountDedicatedIpWarmupAttributesResponse < Aws::EmptyStructure; end

    # A request to submit new account details.
    #
    # @note When making an API call, you may pass PutAccountDetailsRequest
    #   data as a hash:
    #
    #       {
    #         mail_type: "MARKETING", # required, accepts MARKETING, TRANSACTIONAL
    #         website_url: "WebsiteURL", # required
    #         contact_language: "EN", # accepts EN, JA
    #         use_case_description: "UseCaseDescription", # required
    #         additional_contact_email_addresses: ["AdditionalContactEmailAddress"],
    #         production_access_enabled: false,
    #       }
    #
    # @!attribute [rw] mail_type
    #   The type of email your account will send.
    #   @return [String]
    #
    # @!attribute [rw] website_url
    #   The URL of your website. This information helps us better understand
    #   the type of content that you plan to send.
    #   @return [String]
    #
    # @!attribute [rw] contact_language
    #   The language you would prefer to be contacted with.
    #   @return [String]
    #
    # @!attribute [rw] use_case_description
    #   A description of the types of email that you plan to send.
    #   @return [String]
    #
    # @!attribute [rw] additional_contact_email_addresses
    #   Additional email addresses that you would like to be notified
    #   regarding Amazon SES matters.
    #   @return [Array<String>]
    #
    # @!attribute [rw] production_access_enabled
    #   Indicates whether or not your account should have production access
    #   in the current AWS Region.
    #
    #   If the value is `false`, then your account is in the *sandbox*. When
    #   your account is in the sandbox, you can only send email to verified
    #   identities. Additionally, the maximum number of emails you can send
    #   in a 24-hour period (your sending quota) is 200, and the maximum
    #   number of emails you can send per second (your maximum sending rate)
    #   is 1.
    #
    #   If the value is `true`, then your account has production access.
    #   When your account has production access, you can send email to any
    #   address. The sending quota and maximum sending rate for your account
    #   vary based on your specific use case.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutAccountDetailsRequest AWS API Documentation
    #
    class PutAccountDetailsRequest < Struct.new(
      :mail_type,
      :website_url,
      :contact_language,
      :use_case_description,
      :additional_contact_email_addresses,
      :production_access_enabled)
      SENSITIVE = [:website_url, :use_case_description, :additional_contact_email_addresses]
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutAccountDetailsResponse AWS API Documentation
    #
    class PutAccountDetailsResponse < Aws::EmptyStructure; end

    # A request to change the ability of your account to send email.
    #
    # @note When making an API call, you may pass PutAccountSendingAttributesRequest
    #   data as a hash:
    #
    #       {
    #         sending_enabled: false,
    #       }
    #
    # @!attribute [rw] sending_enabled
    #   Enables or disables your account's ability to send email. Set to
    #   `true` to enable email sending, or set to `false` to disable email
    #   sending.
    #
    #   <note markdown="1"> If AWS paused your account's ability to send email, you can't use
    #   this operation to resume your account's ability to send email.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutAccountSendingAttributesRequest AWS API Documentation
    #
    class PutAccountSendingAttributesRequest < Struct.new(
      :sending_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutAccountSendingAttributesResponse AWS API Documentation
    #
    class PutAccountSendingAttributesResponse < Aws::EmptyStructure; end

    # A request to change your account's suppression preferences.
    #
    # @note When making an API call, you may pass PutAccountSuppressionAttributesRequest
    #   data as a hash:
    #
    #       {
    #         suppressed_reasons: ["BOUNCE"], # accepts BOUNCE, COMPLAINT
    #       }
    #
    # @!attribute [rw] suppressed_reasons
    #   A list that contains the reasons that email addresses will be
    #   automatically added to the suppression list for your account. This
    #   list can contain any or all of the following:
    #
    #   * `COMPLAINT` – Amazon SES adds an email address to the suppression
    #     list for your account when a message sent to that address results
    #     in a complaint.
    #
    #   * `BOUNCE` – Amazon SES adds an email address to the suppression
    #     list for your account when a message sent to that address results
    #     in a hard bounce.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutAccountSuppressionAttributesRequest AWS API Documentation
    #
    class PutAccountSuppressionAttributesRequest < Struct.new(
      :suppressed_reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutAccountSuppressionAttributesResponse AWS API Documentation
    #
    class PutAccountSuppressionAttributesResponse < Aws::EmptyStructure; end

    # A request to associate a configuration set with a dedicated IP pool.
    #
    # @note When making an API call, you may pass PutConfigurationSetDeliveryOptionsRequest
    #   data as a hash:
    #
    #       {
    #         configuration_set_name: "ConfigurationSetName", # required
    #         tls_policy: "REQUIRE", # accepts REQUIRE, OPTIONAL
    #         sending_pool_name: "SendingPoolName",
    #       }
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set that you want to associate with a
    #   dedicated IP pool.
    #   @return [String]
    #
    # @!attribute [rw] tls_policy
    #   Specifies whether messages that use the configuration set are
    #   required to use Transport Layer Security (TLS). If the value is
    #   `Require`, messages are only delivered if a TLS connection can be
    #   established. If the value is `Optional`, messages can be delivered
    #   in plain text if a TLS connection can't be established.
    #   @return [String]
    #
    # @!attribute [rw] sending_pool_name
    #   The name of the dedicated IP pool that you want to associate with
    #   the configuration set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutConfigurationSetDeliveryOptionsRequest AWS API Documentation
    #
    class PutConfigurationSetDeliveryOptionsRequest < Struct.new(
      :configuration_set_name,
      :tls_policy,
      :sending_pool_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutConfigurationSetDeliveryOptionsResponse AWS API Documentation
    #
    class PutConfigurationSetDeliveryOptionsResponse < Aws::EmptyStructure; end

    # A request to enable or disable tracking of reputation metrics for a
    # configuration set.
    #
    # @note When making an API call, you may pass PutConfigurationSetReputationOptionsRequest
    #   data as a hash:
    #
    #       {
    #         configuration_set_name: "ConfigurationSetName", # required
    #         reputation_metrics_enabled: false,
    #       }
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set that you want to enable or disable
    #   reputation metric tracking for.
    #   @return [String]
    #
    # @!attribute [rw] reputation_metrics_enabled
    #   If `true`, tracking of reputation metrics is enabled for the
    #   configuration set. If `false`, tracking of reputation metrics is
    #   disabled for the configuration set.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutConfigurationSetReputationOptionsRequest AWS API Documentation
    #
    class PutConfigurationSetReputationOptionsRequest < Struct.new(
      :configuration_set_name,
      :reputation_metrics_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutConfigurationSetReputationOptionsResponse AWS API Documentation
    #
    class PutConfigurationSetReputationOptionsResponse < Aws::EmptyStructure; end

    # A request to enable or disable the ability of Amazon SES to send
    # emails that use a specific configuration set.
    #
    # @note When making an API call, you may pass PutConfigurationSetSendingOptionsRequest
    #   data as a hash:
    #
    #       {
    #         configuration_set_name: "ConfigurationSetName", # required
    #         sending_enabled: false,
    #       }
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set that you want to enable or disable
    #   email sending for.
    #   @return [String]
    #
    # @!attribute [rw] sending_enabled
    #   If `true`, email sending is enabled for the configuration set. If
    #   `false`, email sending is disabled for the configuration set.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutConfigurationSetSendingOptionsRequest AWS API Documentation
    #
    class PutConfigurationSetSendingOptionsRequest < Struct.new(
      :configuration_set_name,
      :sending_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutConfigurationSetSendingOptionsResponse AWS API Documentation
    #
    class PutConfigurationSetSendingOptionsResponse < Aws::EmptyStructure; end

    # A request to change the account suppression list preferences for a
    # specific configuration set.
    #
    # @note When making an API call, you may pass PutConfigurationSetSuppressionOptionsRequest
    #   data as a hash:
    #
    #       {
    #         configuration_set_name: "ConfigurationSetName", # required
    #         suppressed_reasons: ["BOUNCE"], # accepts BOUNCE, COMPLAINT
    #       }
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set that you want to change the
    #   suppression list preferences for.
    #   @return [String]
    #
    # @!attribute [rw] suppressed_reasons
    #   A list that contains the reasons that email addresses are
    #   automatically added to the suppression list for your account. This
    #   list can contain any or all of the following:
    #
    #   * `COMPLAINT` – Amazon SES adds an email address to the suppression
    #     list for your account when a message sent to that address results
    #     in a complaint.
    #
    #   * `BOUNCE` – Amazon SES adds an email address to the suppression
    #     list for your account when a message sent to that address results
    #     in a hard bounce.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutConfigurationSetSuppressionOptionsRequest AWS API Documentation
    #
    class PutConfigurationSetSuppressionOptionsRequest < Struct.new(
      :configuration_set_name,
      :suppressed_reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutConfigurationSetSuppressionOptionsResponse AWS API Documentation
    #
    class PutConfigurationSetSuppressionOptionsResponse < Aws::EmptyStructure; end

    # A request to add a custom domain for tracking open and click events to
    # a configuration set.
    #
    # @note When making an API call, you may pass PutConfigurationSetTrackingOptionsRequest
    #   data as a hash:
    #
    #       {
    #         configuration_set_name: "ConfigurationSetName", # required
    #         custom_redirect_domain: "CustomRedirectDomain",
    #       }
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set that you want to add a custom
    #   tracking domain to.
    #   @return [String]
    #
    # @!attribute [rw] custom_redirect_domain
    #   The domain that you want to use to track open and click events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutConfigurationSetTrackingOptionsRequest AWS API Documentation
    #
    class PutConfigurationSetTrackingOptionsRequest < Struct.new(
      :configuration_set_name,
      :custom_redirect_domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutConfigurationSetTrackingOptionsResponse AWS API Documentation
    #
    class PutConfigurationSetTrackingOptionsResponse < Aws::EmptyStructure; end

    # A request to move a dedicated IP address to a dedicated IP pool.
    #
    # @note When making an API call, you may pass PutDedicatedIpInPoolRequest
    #   data as a hash:
    #
    #       {
    #         ip: "Ip", # required
    #         destination_pool_name: "PoolName", # required
    #       }
    #
    # @!attribute [rw] ip
    #   The IP address that you want to move to the dedicated IP pool. The
    #   value you specify has to be a dedicated IP address that's
    #   associated with your AWS account.
    #   @return [String]
    #
    # @!attribute [rw] destination_pool_name
    #   The name of the IP pool that you want to add the dedicated IP
    #   address to. You have to specify an IP pool that already exists.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutDedicatedIpInPoolRequest AWS API Documentation
    #
    class PutDedicatedIpInPoolRequest < Struct.new(
      :ip,
      :destination_pool_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutDedicatedIpInPoolResponse AWS API Documentation
    #
    class PutDedicatedIpInPoolResponse < Aws::EmptyStructure; end

    # A request to change the warm-up attributes for a dedicated IP address.
    # This operation is useful when you want to resume the warm-up process
    # for an existing IP address.
    #
    # @note When making an API call, you may pass PutDedicatedIpWarmupAttributesRequest
    #   data as a hash:
    #
    #       {
    #         ip: "Ip", # required
    #         warmup_percentage: 1, # required
    #       }
    #
    # @!attribute [rw] ip
    #   The dedicated IP address that you want to update the warm-up
    #   attributes for.
    #   @return [String]
    #
    # @!attribute [rw] warmup_percentage
    #   The warm-up percentage that you want to associate with the dedicated
    #   IP address.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutDedicatedIpWarmupAttributesRequest AWS API Documentation
    #
    class PutDedicatedIpWarmupAttributesRequest < Struct.new(
      :ip,
      :warmup_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutDedicatedIpWarmupAttributesResponse AWS API Documentation
    #
    class PutDedicatedIpWarmupAttributesResponse < Aws::EmptyStructure; end

    # Enable or disable the Deliverability dashboard. When you enable the
    # Deliverability dashboard, you gain access to reputation,
    # deliverability, and other metrics for the domains that you use to send
    # email using Amazon SES API v2. You also gain the ability to perform
    # predictive inbox placement tests.
    #
    # When you use the Deliverability dashboard, you pay a monthly
    # subscription charge, in addition to any other fees that you accrue by
    # using Amazon SES and other AWS services. For more information about
    # the features and cost of a Deliverability dashboard subscription, see
    # [Amazon Pinpoint Pricing][1].
    #
    #
    #
    # [1]: http://aws.amazon.com/pinpoint/pricing/
    #
    # @note When making an API call, you may pass PutDeliverabilityDashboardOptionRequest
    #   data as a hash:
    #
    #       {
    #         dashboard_enabled: false, # required
    #         subscribed_domains: [
    #           {
    #             domain: "Domain",
    #             subscription_start_date: Time.now,
    #             inbox_placement_tracking_option: {
    #               global: false,
    #               tracked_isps: ["IspName"],
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] dashboard_enabled
    #   Specifies whether to enable the Deliverability dashboard. To enable
    #   the dashboard, set this value to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] subscribed_domains
    #   An array of objects, one for each verified domain that you use to
    #   send email and enabled the Deliverability dashboard for.
    #   @return [Array<Types::DomainDeliverabilityTrackingOption>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutDeliverabilityDashboardOptionRequest AWS API Documentation
    #
    class PutDeliverabilityDashboardOptionRequest < Struct.new(
      :dashboard_enabled,
      :subscribed_domains)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response that indicates whether the Deliverability dashboard is
    # enabled.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutDeliverabilityDashboardOptionResponse AWS API Documentation
    #
    class PutDeliverabilityDashboardOptionResponse < Aws::EmptyStructure; end

    # A request to enable or disable DKIM signing of email that you send
    # from an email identity.
    #
    # @note When making an API call, you may pass PutEmailIdentityDkimAttributesRequest
    #   data as a hash:
    #
    #       {
    #         email_identity: "Identity", # required
    #         signing_enabled: false,
    #       }
    #
    # @!attribute [rw] email_identity
    #   The email identity that you want to change the DKIM settings for.
    #   @return [String]
    #
    # @!attribute [rw] signing_enabled
    #   Sets the DKIM signing configuration for the identity.
    #
    #   When you set this value `true`, then the messages that are sent from
    #   the identity are signed using DKIM. If you set this value to
    #   `false`, your messages are sent without DKIM signing.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutEmailIdentityDkimAttributesRequest AWS API Documentation
    #
    class PutEmailIdentityDkimAttributesRequest < Struct.new(
      :email_identity,
      :signing_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutEmailIdentityDkimAttributesResponse AWS API Documentation
    #
    class PutEmailIdentityDkimAttributesResponse < Aws::EmptyStructure; end

    # A request to change the DKIM attributes for an email identity.
    #
    # @note When making an API call, you may pass PutEmailIdentityDkimSigningAttributesRequest
    #   data as a hash:
    #
    #       {
    #         email_identity: "Identity", # required
    #         signing_attributes_origin: "AWS_SES", # required, accepts AWS_SES, EXTERNAL
    #         signing_attributes: {
    #           domain_signing_selector: "Selector", # required
    #           domain_signing_private_key: "PrivateKey", # required
    #         },
    #       }
    #
    # @!attribute [rw] email_identity
    #   The email identity that you want to configure DKIM for.
    #   @return [String]
    #
    # @!attribute [rw] signing_attributes_origin
    #   The method that you want to use to configure DKIM for the identity.
    #   There are two possible values:
    #
    #   * `AWS_SES` – Configure DKIM for the identity by using [Easy
    #     DKIM][1].
    #
    #   * `EXTERNAL` – Configure DKIM for the identity by using Bring Your
    #     Own DKIM (BYODKIM).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html
    #   @return [String]
    #
    # @!attribute [rw] signing_attributes
    #   An object that contains information about the private key and
    #   selector that you want to use to configure DKIM for the identity.
    #   This object is only required if you want to configure Bring Your Own
    #   DKIM (BYODKIM) for the identity.
    #   @return [Types::DkimSigningAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutEmailIdentityDkimSigningAttributesRequest AWS API Documentation
    #
    class PutEmailIdentityDkimSigningAttributesRequest < Struct.new(
      :email_identity,
      :signing_attributes_origin,
      :signing_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # If the action is successful, the service sends back an HTTP 200
    # response.
    #
    # The following data is returned in JSON format by the service.
    #
    # @!attribute [rw] dkim_status
    #   The DKIM authentication status of the identity. Amazon SES
    #   determines the authentication status by searching for specific
    #   records in the DNS configuration for your domain. If you used [Easy
    #   DKIM][1] to set up DKIM authentication, Amazon SES tries to find
    #   three unique CNAME records in the DNS configuration for your domain.
    #
    #   If you provided a public key to perform DKIM authentication, Amazon
    #   SES tries to find a TXT record that uses the selector that you
    #   specified. The value of the TXT record must be a public key that's
    #   paired with the private key that you specified in the process of
    #   creating the identity.
    #
    #   The status can be one of the following:
    #
    #   * `PENDING` – The verification process was initiated, but Amazon SES
    #     hasn't yet detected the DKIM records in the DNS configuration for
    #     the domain.
    #
    #   * `SUCCESS` – The verification process completed successfully.
    #
    #   * `FAILED` – The verification process failed. This typically occurs
    #     when Amazon SES fails to find the DKIM records in the DNS
    #     configuration of the domain.
    #
    #   * `TEMPORARY_FAILURE` – A temporary issue is preventing Amazon SES
    #     from determining the DKIM authentication status of the domain.
    #
    #   * `NOT_STARTED` – The DKIM verification process hasn't been
    #     initiated for the domain.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html
    #   @return [String]
    #
    # @!attribute [rw] dkim_tokens
    #   If you used [Easy DKIM][1] to configure DKIM authentication for the
    #   domain, then this object contains a set of unique strings that you
    #   use to create a set of CNAME records that you add to the DNS
    #   configuration for your domain. When Amazon SES detects these records
    #   in the DNS configuration for your domain, the DKIM authentication
    #   process is complete.
    #
    #   If you configured DKIM authentication for the domain by providing
    #   your own public-private key pair, then this object contains the
    #   selector that's associated with your public key.
    #
    #   Regardless of the DKIM authentication method you use, Amazon SES
    #   searches for the appropriate records in the DNS configuration of the
    #   domain for up to 72 hours.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutEmailIdentityDkimSigningAttributesResponse AWS API Documentation
    #
    class PutEmailIdentityDkimSigningAttributesResponse < Struct.new(
      :dkim_status,
      :dkim_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to set the attributes that control how bounce and complaint
    # events are processed.
    #
    # @note When making an API call, you may pass PutEmailIdentityFeedbackAttributesRequest
    #   data as a hash:
    #
    #       {
    #         email_identity: "Identity", # required
    #         email_forwarding_enabled: false,
    #       }
    #
    # @!attribute [rw] email_identity
    #   The email identity that you want to configure bounce and complaint
    #   feedback forwarding for.
    #   @return [String]
    #
    # @!attribute [rw] email_forwarding_enabled
    #   Sets the feedback forwarding configuration for the identity.
    #
    #   If the value is `true`, you receive email notifications when bounce
    #   or complaint events occur. These notifications are sent to the
    #   address that you specified in the `Return-Path` header of the
    #   original email.
    #
    #   You're required to have a method of tracking bounces and
    #   complaints. If you haven't set up another mechanism for receiving
    #   bounce or complaint notifications (for example, by setting up an
    #   event destination), you receive an email notification when these
    #   events occur (even if this setting is disabled).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutEmailIdentityFeedbackAttributesRequest AWS API Documentation
    #
    class PutEmailIdentityFeedbackAttributesRequest < Struct.new(
      :email_identity,
      :email_forwarding_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutEmailIdentityFeedbackAttributesResponse AWS API Documentation
    #
    class PutEmailIdentityFeedbackAttributesResponse < Aws::EmptyStructure; end

    # A request to configure the custom MAIL FROM domain for a verified
    # identity.
    #
    # @note When making an API call, you may pass PutEmailIdentityMailFromAttributesRequest
    #   data as a hash:
    #
    #       {
    #         email_identity: "Identity", # required
    #         mail_from_domain: "MailFromDomainName",
    #         behavior_on_mx_failure: "USE_DEFAULT_VALUE", # accepts USE_DEFAULT_VALUE, REJECT_MESSAGE
    #       }
    #
    # @!attribute [rw] email_identity
    #   The verified email identity that you want to set up the custom MAIL
    #   FROM domain for.
    #   @return [String]
    #
    # @!attribute [rw] mail_from_domain
    #   The custom MAIL FROM domain that you want the verified identity to
    #   use. The MAIL FROM domain must meet the following criteria:
    #
    #   * It has to be a subdomain of the verified identity.
    #
    #   * It can't be used to receive email.
    #
    #   * It can't be used in a "From" address if the MAIL FROM domain is
    #     a destination for feedback forwarding emails.
    #   @return [String]
    #
    # @!attribute [rw] behavior_on_mx_failure
    #   The action that you want to take if the required MX record isn't
    #   found when you send an email. When you set this value to
    #   `UseDefaultValue`, the mail is sent using *amazonses.com* as the
    #   MAIL FROM domain. When you set this value to `RejectMessage`, the
    #   Amazon SES API v2 returns a `MailFromDomainNotVerified` error, and
    #   doesn't attempt to deliver the email.
    #
    #   These behaviors are taken when the custom MAIL FROM domain
    #   configuration is in the `Pending`, `Failed`, and `TemporaryFailure`
    #   states.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutEmailIdentityMailFromAttributesRequest AWS API Documentation
    #
    class PutEmailIdentityMailFromAttributesRequest < Struct.new(
      :email_identity,
      :mail_from_domain,
      :behavior_on_mx_failure)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutEmailIdentityMailFromAttributesResponse AWS API Documentation
    #
    class PutEmailIdentityMailFromAttributesResponse < Aws::EmptyStructure; end

    # A request to add an email destination to the suppression list for your
    # account.
    #
    # @note When making an API call, you may pass PutSuppressedDestinationRequest
    #   data as a hash:
    #
    #       {
    #         email_address: "EmailAddress", # required
    #         reason: "BOUNCE", # required, accepts BOUNCE, COMPLAINT
    #       }
    #
    # @!attribute [rw] email_address
    #   The email address that should be added to the suppression list for
    #   your account.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The factors that should cause the email address to be added to the
    #   suppression list for your account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutSuppressedDestinationRequest AWS API Documentation
    #
    class PutSuppressedDestinationRequest < Struct.new(
      :email_address,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutSuppressedDestinationResponse AWS API Documentation
    #
    class PutSuppressedDestinationResponse < Aws::EmptyStructure; end

    # Represents the raw content of an email message.
    #
    # @note When making an API call, you may pass RawMessage
    #   data as a hash:
    #
    #       {
    #         data: "data", # required
    #       }
    #
    # @!attribute [rw] data
    #   The raw email message. The message has to meet the following
    #   criteria:
    #
    #   * The message has to contain a header and a body, separated by one
    #     blank line.
    #
    #   * All of the required header fields must be present in the message.
    #
    #   * Each part of a multipart MIME message must be formatted properly.
    #
    #   * Attachments must be in a file format that the Amazon SES supports.
    #
    #   * The entire message must be Base64 encoded.
    #
    #   * If any of the MIME parts in your message contain content that is
    #     outside of the 7-bit ASCII character range, you should encode that
    #     content to ensure that recipients' email clients render the
    #     message properly.
    #
    #   * The length of any single line of text in the message can't exceed
    #     1,000 characters. This restriction is defined in [RFC 5321][1].
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc5321
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/RawMessage AWS API Documentation
    #
    class RawMessage < Struct.new(
      :data)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `ReplaceEmailContent` object to be used for a specific
    # `BulkEmailEntry`. The `ReplacementTemplate` can be specified within
    # this object.
    #
    # @note When making an API call, you may pass ReplacementEmailContent
    #   data as a hash:
    #
    #       {
    #         replacement_template: {
    #           replacement_template_data: "EmailTemplateData",
    #         },
    #       }
    #
    # @!attribute [rw] replacement_template
    #   The `ReplacementTemplate` associated with `ReplacementEmailContent`.
    #   @return [Types::ReplacementTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ReplacementEmailContent AWS API Documentation
    #
    class ReplacementEmailContent < Struct.new(
      :replacement_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object which contains `ReplacementTemplateData` to be used for a
    # specific `BulkEmailEntry`.
    #
    # @note When making an API call, you may pass ReplacementTemplate
    #   data as a hash:
    #
    #       {
    #         replacement_template_data: "EmailTemplateData",
    #       }
    #
    # @!attribute [rw] replacement_template_data
    #   A list of replacement values to apply to the template. This
    #   parameter is a JSON object, typically consisting of key-value pairs
    #   in which the keys correspond to replacement tags in the email
    #   template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ReplacementTemplate AWS API Documentation
    #
    class ReplacementTemplate < Struct.new(
      :replacement_template_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Enable or disable collection of reputation metrics for emails that you
    # send using this configuration set in the current AWS Region.
    #
    # @note When making an API call, you may pass ReputationOptions
    #   data as a hash:
    #
    #       {
    #         reputation_metrics_enabled: false,
    #         last_fresh_start: Time.now,
    #       }
    #
    # @!attribute [rw] reputation_metrics_enabled
    #   If `true`, tracking of reputation metrics is enabled for the
    #   configuration set. If `false`, tracking of reputation metrics is
    #   disabled for the configuration set.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_fresh_start
    #   The date and time (in Unix time) when the reputation metrics were
    #   last given a fresh start. When your account is given a fresh start,
    #   your reputation metrics are calculated starting from the date of the
    #   fresh start.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ReputationOptions AWS API Documentation
    #
    class ReputationOptions < Struct.new(
      :reputation_metrics_enabled,
      :last_fresh_start)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about your account details review.
    #
    # @!attribute [rw] status
    #   The status of the latest review of your account. The status can be
    #   one of the following:
    #
    #   * `PENDING` – We have received your appeal and are in the process of
    #     reviewing it.
    #
    #   * `GRANTED` – Your appeal has been reviewed and your production
    #     access has been granted.
    #
    #   * `DENIED` – Your appeal has been reviewed and your production
    #     access has been denied.
    #
    #   * `FAILED` – An internal error occurred and we didn't receive your
    #     appeal. You can submit your appeal again.
    #   @return [String]
    #
    # @!attribute [rw] case_id
    #   The associated support center case ID (if any).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ReviewDetails AWS API Documentation
    #
    class ReviewDetails < Struct.new(
      :status,
      :case_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a request to send email messages to multiple destinations
    # using Amazon SES. For more information, see the [Amazon SES Developer
    # Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html
    #
    # @note When making an API call, you may pass SendBulkEmailRequest
    #   data as a hash:
    #
    #       {
    #         from_email_address: "EmailAddress",
    #         from_email_address_identity_arn: "AmazonResourceName",
    #         reply_to_addresses: ["EmailAddress"],
    #         feedback_forwarding_email_address: "EmailAddress",
    #         feedback_forwarding_email_address_identity_arn: "AmazonResourceName",
    #         default_email_tags: [
    #           {
    #             name: "MessageTagName", # required
    #             value: "MessageTagValue", # required
    #           },
    #         ],
    #         default_content: { # required
    #           template: {
    #             template_name: "EmailTemplateName",
    #             template_arn: "AmazonResourceName",
    #             template_data: "EmailTemplateData",
    #           },
    #         },
    #         bulk_email_entries: [ # required
    #           {
    #             destination: { # required
    #               to_addresses: ["EmailAddress"],
    #               cc_addresses: ["EmailAddress"],
    #               bcc_addresses: ["EmailAddress"],
    #             },
    #             replacement_tags: [
    #               {
    #                 name: "MessageTagName", # required
    #                 value: "MessageTagValue", # required
    #               },
    #             ],
    #             replacement_email_content: {
    #               replacement_template: {
    #                 replacement_template_data: "EmailTemplateData",
    #               },
    #             },
    #           },
    #         ],
    #         configuration_set_name: "ConfigurationSetName",
    #       }
    #
    # @!attribute [rw] from_email_address
    #   The email address that you want to use as the "From" address for
    #   the email. The address that you specify has to be verified.
    #   @return [String]
    #
    # @!attribute [rw] from_email_address_identity_arn
    #   This parameter is used only for sending authorization. It is the ARN
    #   of the identity that is associated with the sending authorization
    #   policy that permits you to use the email address specified in the
    #   `FromEmailAddress` parameter.
    #
    #   For example, if the owner of example.com (which has ARN
    #   arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a
    #   policy to it that authorizes you to use sender@example.com, then you
    #   would specify the `FromEmailAddressIdentityArn` to be
    #   arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
    #   `FromEmailAddress` to be sender@example.com.
    #
    #   For more information about sending authorization, see the [Amazon
    #   SES Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #   @return [String]
    #
    # @!attribute [rw] reply_to_addresses
    #   The "Reply-to" email addresses for the message. When the recipient
    #   replies to the message, each Reply-to address receives the reply.
    #   @return [Array<String>]
    #
    # @!attribute [rw] feedback_forwarding_email_address
    #   The address that you want bounce and complaint notifications to be
    #   sent to.
    #   @return [String]
    #
    # @!attribute [rw] feedback_forwarding_email_address_identity_arn
    #   This parameter is used only for sending authorization. It is the ARN
    #   of the identity that is associated with the sending authorization
    #   policy that permits you to use the email address specified in the
    #   `FeedbackForwardingEmailAddress` parameter.
    #
    #   For example, if the owner of example.com (which has ARN
    #   arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a
    #   policy to it that authorizes you to use feedback@example.com, then
    #   you would specify the `FeedbackForwardingEmailAddressIdentityArn` to
    #   be arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
    #   `FeedbackForwardingEmailAddress` to be feedback@example.com.
    #
    #   For more information about sending authorization, see the [Amazon
    #   SES Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #   @return [String]
    #
    # @!attribute [rw] default_email_tags
    #   A list of tags, in the form of name/value pairs, to apply to an
    #   email that you send using the `SendEmail` operation. Tags correspond
    #   to characteristics of the email that you define, so that you can
    #   publish email sending events.
    #   @return [Array<Types::MessageTag>]
    #
    # @!attribute [rw] default_content
    #   An object that contains the body of the message. You can specify a
    #   template message.
    #   @return [Types::BulkEmailContent]
    #
    # @!attribute [rw] bulk_email_entries
    #   The list of bulk email entry objects.
    #   @return [Array<Types::BulkEmailEntry>]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set that you want to use when sending
    #   the email.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/SendBulkEmailRequest AWS API Documentation
    #
    class SendBulkEmailRequest < Struct.new(
      :from_email_address,
      :from_email_address_identity_arn,
      :reply_to_addresses,
      :feedback_forwarding_email_address,
      :feedback_forwarding_email_address_identity_arn,
      :default_email_tags,
      :default_content,
      :bulk_email_entries,
      :configuration_set_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The following data is returned in JSON format by the service.
    #
    # @!attribute [rw] bulk_email_entry_results
    #   A list of `BulkMailEntry` objects.
    #   @return [Array<Types::BulkEmailEntryResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/SendBulkEmailResponse AWS API Documentation
    #
    class SendBulkEmailResponse < Struct.new(
      :bulk_email_entry_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a request to send a custom verification email to a
    # specified recipient.
    #
    # @note When making an API call, you may pass SendCustomVerificationEmailRequest
    #   data as a hash:
    #
    #       {
    #         email_address: "EmailAddress", # required
    #         template_name: "EmailTemplateName", # required
    #         configuration_set_name: "ConfigurationSetName",
    #       }
    #
    # @!attribute [rw] email_address
    #   The email address to verify.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the custom verification email template to use when
    #   sending the verification email.
    #   @return [String]
    #
    # @!attribute [rw] configuration_set_name
    #   Name of a configuration set to use when sending the verification
    #   email.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/SendCustomVerificationEmailRequest AWS API Documentation
    #
    class SendCustomVerificationEmailRequest < Struct.new(
      :email_address,
      :template_name,
      :configuration_set_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The following element is returned by the service.
    #
    # @!attribute [rw] message_id
    #   The unique message identifier returned from the
    #   `SendCustomVerificationEmail` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/SendCustomVerificationEmailResponse AWS API Documentation
    #
    class SendCustomVerificationEmailResponse < Struct.new(
      :message_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a request to send a single formatted email using Amazon
    # SES. For more information, see the [Amazon SES Developer Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-formatted.html
    #
    # @note When making an API call, you may pass SendEmailRequest
    #   data as a hash:
    #
    #       {
    #         from_email_address: "EmailAddress",
    #         from_email_address_identity_arn: "AmazonResourceName",
    #         destination: {
    #           to_addresses: ["EmailAddress"],
    #           cc_addresses: ["EmailAddress"],
    #           bcc_addresses: ["EmailAddress"],
    #         },
    #         reply_to_addresses: ["EmailAddress"],
    #         feedback_forwarding_email_address: "EmailAddress",
    #         feedback_forwarding_email_address_identity_arn: "AmazonResourceName",
    #         content: { # required
    #           simple: {
    #             subject: { # required
    #               data: "MessageData", # required
    #               charset: "Charset",
    #             },
    #             body: { # required
    #               text: {
    #                 data: "MessageData", # required
    #                 charset: "Charset",
    #               },
    #               html: {
    #                 data: "MessageData", # required
    #                 charset: "Charset",
    #               },
    #             },
    #           },
    #           raw: {
    #             data: "data", # required
    #           },
    #           template: {
    #             template_name: "EmailTemplateName",
    #             template_arn: "AmazonResourceName",
    #             template_data: "EmailTemplateData",
    #           },
    #         },
    #         email_tags: [
    #           {
    #             name: "MessageTagName", # required
    #             value: "MessageTagValue", # required
    #           },
    #         ],
    #         configuration_set_name: "ConfigurationSetName",
    #       }
    #
    # @!attribute [rw] from_email_address
    #   The email address that you want to use as the "From" address for
    #   the email. The address that you specify has to be verified.
    #   @return [String]
    #
    # @!attribute [rw] from_email_address_identity_arn
    #   This parameter is used only for sending authorization. It is the ARN
    #   of the identity that is associated with the sending authorization
    #   policy that permits you to use the email address specified in the
    #   `FromEmailAddress` parameter.
    #
    #   For example, if the owner of example.com (which has ARN
    #   arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a
    #   policy to it that authorizes you to use sender@example.com, then you
    #   would specify the `FromEmailAddressIdentityArn` to be
    #   arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
    #   `FromEmailAddress` to be sender@example.com.
    #
    #   For more information about sending authorization, see the [Amazon
    #   SES Developer Guide][1].
    #
    #   For Raw emails, the `FromEmailAddressIdentityArn` value overrides
    #   the X-SES-SOURCE-ARN and X-SES-FROM-ARN headers specified in raw
    #   email message content.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   An object that contains the recipients of the email message.
    #   @return [Types::Destination]
    #
    # @!attribute [rw] reply_to_addresses
    #   The "Reply-to" email addresses for the message. When the recipient
    #   replies to the message, each Reply-to address receives the reply.
    #   @return [Array<String>]
    #
    # @!attribute [rw] feedback_forwarding_email_address
    #   The address that you want bounce and complaint notifications to be
    #   sent to.
    #   @return [String]
    #
    # @!attribute [rw] feedback_forwarding_email_address_identity_arn
    #   This parameter is used only for sending authorization. It is the ARN
    #   of the identity that is associated with the sending authorization
    #   policy that permits you to use the email address specified in the
    #   `FeedbackForwardingEmailAddress` parameter.
    #
    #   For example, if the owner of example.com (which has ARN
    #   arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a
    #   policy to it that authorizes you to use feedback@example.com, then
    #   you would specify the `FeedbackForwardingEmailAddressIdentityArn` to
    #   be arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
    #   `FeedbackForwardingEmailAddress` to be feedback@example.com.
    #
    #   For more information about sending authorization, see the [Amazon
    #   SES Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #   @return [String]
    #
    # @!attribute [rw] content
    #   An object that contains the body of the message. You can send either
    #   a Simple message Raw message or a template Message.
    #   @return [Types::EmailContent]
    #
    # @!attribute [rw] email_tags
    #   A list of tags, in the form of name/value pairs, to apply to an
    #   email that you send using the `SendEmail` operation. Tags correspond
    #   to characteristics of the email that you define, so that you can
    #   publish email sending events.
    #   @return [Array<Types::MessageTag>]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set that you want to use when sending
    #   the email.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/SendEmailRequest AWS API Documentation
    #
    class SendEmailRequest < Struct.new(
      :from_email_address,
      :from_email_address_identity_arn,
      :destination,
      :reply_to_addresses,
      :feedback_forwarding_email_address,
      :feedback_forwarding_email_address_identity_arn,
      :content,
      :email_tags,
      :configuration_set_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A unique message ID that you receive when an email is accepted for
    # sending.
    #
    # @!attribute [rw] message_id
    #   A unique identifier for the message that is generated when the
    #   message is accepted.
    #
    #   <note markdown="1"> It's possible for Amazon SES to accept a message without sending
    #   it. This can happen when the message that you're trying to send has
    #   an attachment contains a virus, or when you send a templated email
    #   that contains invalid personalization content, for example.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/SendEmailResponse AWS API Documentation
    #
    class SendEmailResponse < Struct.new(
      :message_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about the per-day and per-second
    # sending limits for your Amazon SES account in the current AWS Region.
    #
    # @!attribute [rw] max_24_hour_send
    #   The maximum number of emails that you can send in the current AWS
    #   Region over a 24-hour period. This value is also called your
    #   *sending quota*.
    #   @return [Float]
    #
    # @!attribute [rw] max_send_rate
    #   The maximum number of emails that you can send per second in the
    #   current AWS Region. This value is also called your *maximum sending
    #   rate* or your *maximum TPS (transactions per second) rate*.
    #   @return [Float]
    #
    # @!attribute [rw] sent_last_24_hours
    #   The number of emails sent from your Amazon SES account in the
    #   current AWS Region over the past 24 hours.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/SendQuota AWS API Documentation
    #
    class SendQuota < Struct.new(
      :max_24_hour_send,
      :max_send_rate,
      :sent_last_24_hours)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used to enable or disable email sending for messages that use this
    # configuration set in the current AWS Region.
    #
    # @note When making an API call, you may pass SendingOptions
    #   data as a hash:
    #
    #       {
    #         sending_enabled: false,
    #       }
    #
    # @!attribute [rw] sending_enabled
    #   If `true`, email sending is enabled for the configuration set. If
    #   `false`, email sending is disabled for the configuration set.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/SendingOptions AWS API Documentation
    #
    class SendingOptions < Struct.new(
      :sending_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The message can't be sent because the account's ability to send
    # email is currently paused.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/SendingPausedException AWS API Documentation
    #
    class SendingPausedException < Aws::EmptyStructure; end

    # An object that defines an Amazon SNS destination for email events. You
    # can use Amazon SNS to send notification when certain email events
    # occur.
    #
    # @note When making an API call, you may pass SnsDestination
    #   data as a hash:
    #
    #       {
    #         topic_arn: "AmazonResourceName", # required
    #       }
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic that you want
    #   to publish email events to. For more information about Amazon SNS
    #   topics, see the [Amazon SNS Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/SnsDestination AWS API Documentation
    #
    class SnsDestination < Struct.new(
      :topic_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about an email address that is on
    # the suppression list for your account.
    #
    # @!attribute [rw] email_address
    #   The email address that is on the suppression list for your account.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason that the address was added to the suppression list for
    #   your account.
    #   @return [String]
    #
    # @!attribute [rw] last_update_time
    #   The date and time when the suppressed destination was last updated,
    #   shown in Unix time format.
    #   @return [Time]
    #
    # @!attribute [rw] attributes
    #   An optional value that can contain additional information about the
    #   reasons that the address was added to the suppression list for your
    #   account.
    #   @return [Types::SuppressedDestinationAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/SuppressedDestination AWS API Documentation
    #
    class SuppressedDestination < Struct.new(
      :email_address,
      :reason,
      :last_update_time,
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains additional attributes that are related an
    # email address that is on the suppression list for your account.
    #
    # @!attribute [rw] message_id
    #   The unique identifier of the email message that caused the email
    #   address to be added to the suppression list for your account.
    #   @return [String]
    #
    # @!attribute [rw] feedback_id
    #   A unique identifier that's generated when an email address is added
    #   to the suppression list for your account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/SuppressedDestinationAttributes AWS API Documentation
    #
    class SuppressedDestinationAttributes < Struct.new(
      :message_id,
      :feedback_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary that describes the suppressed email address.
    #
    # @!attribute [rw] email_address
    #   The email address that's on the suppression list for your account.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason that the address was added to the suppression list for
    #   your account.
    #   @return [String]
    #
    # @!attribute [rw] last_update_time
    #   The date and time when the suppressed destination was last updated,
    #   shown in Unix time format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/SuppressedDestinationSummary AWS API Documentation
    #
    class SuppressedDestinationSummary < Struct.new(
      :email_address,
      :reason,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about the email address
    # suppression preferences for your account in the current AWS Region.
    #
    # @!attribute [rw] suppressed_reasons
    #   A list that contains the reasons that email addresses will be
    #   automatically added to the suppression list for your account. This
    #   list can contain any or all of the following:
    #
    #   * `COMPLAINT` – Amazon SES adds an email address to the suppression
    #     list for your account when a message sent to that address results
    #     in a complaint.
    #
    #   * `BOUNCE` – Amazon SES adds an email address to the suppression
    #     list for your account when a message sent to that address results
    #     in a hard bounce.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/SuppressionAttributes AWS API Documentation
    #
    class SuppressionAttributes < Struct.new(
      :suppressed_reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains details about the action of suppression list.
    #
    # @note When making an API call, you may pass SuppressionListDestination
    #   data as a hash:
    #
    #       {
    #         suppression_list_import_action: "DELETE", # required, accepts DELETE, PUT
    #       }
    #
    # @!attribute [rw] suppression_list_import_action
    #   The type of action that you want to perform on the address.
    #   Acceptable values:
    #
    #   * PUT: add the addresses to the suppression list. If the record
    #     already exists, it will override it with the new value.
    #
    #   * DELETE: remove the addresses from the suppression list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/SuppressionListDestination AWS API Documentation
    #
    class SuppressionListDestination < Struct.new(
      :suppression_list_import_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains information about the suppression list
    # preferences for your account.
    #
    # @note When making an API call, you may pass SuppressionOptions
    #   data as a hash:
    #
    #       {
    #         suppressed_reasons: ["BOUNCE"], # accepts BOUNCE, COMPLAINT
    #       }
    #
    # @!attribute [rw] suppressed_reasons
    #   A list that contains the reasons that email addresses are
    #   automatically added to the suppression list for your account. This
    #   list can contain any or all of the following:
    #
    #   * `COMPLAINT` – Amazon SES adds an email address to the suppression
    #     list for your account when a message sent to that address results
    #     in a complaint.
    #
    #   * `BOUNCE` – Amazon SES adds an email address to the suppression
    #     list for your account when a message sent to that address results
    #     in a hard bounce.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/SuppressionOptions AWS API Documentation
    #
    class SuppressionOptions < Struct.new(
      :suppressed_reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines the tags that are associated with a resource.
    # A *tag* is a label that you optionally define and associate with a
    # resource. Tags can help you categorize and manage resources in
    # different ways, such as by purpose, owner, environment, or other
    # criteria. A resource can have as many as 50 tags.
    #
    # Each tag consists of a required *tag key* and an associated *tag
    # value*, both of which you define. A tag key is a general label that
    # acts as a category for a more specific tag value. A tag value acts as
    # a descriptor within a tag key. A tag key can contain as many as 128
    # characters. A tag value can contain as many as 256 characters. The
    # characters can be Unicode letters, digits, white space, or one of the
    # following symbols: \_ . : / = + -. The following additional
    # restrictions apply to tags:
    #
    # * Tag keys and values are case sensitive.
    #
    # * For each associated resource, each tag key must be unique and it can
    #   have only one value.
    #
    # * The `aws:` prefix is reserved for use by AWS; you can’t use it in
    #   any tag keys or values that you define. In addition, you can't edit
    #   or remove tag keys or values that use this prefix. Tags that use
    #   this prefix don’t count against the limit of 50 tags per resource.
    #
    # * You can associate tags with public or shared resources, but the tags
    #   are available only for your AWS account, not any other accounts that
    #   share the resource. In addition, the tags are available only for
    #   resources that are located in the specified AWS Region for your AWS
    #   account.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   One part of a key-value pair that defines a tag. The maximum length
    #   of a tag key is 128 characters. The minimum length is 1 character.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The optional part of a key-value pair that defines a tag. The
    #   maximum length of a tag value is 256 characters. The minimum length
    #   is 0 characters. If you don't want a resource to have a specific
    #   tag value, don't specify a value for this parameter. If you don't
    #   specify a value, Amazon SES sets the value to an empty string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to add
    #   one or more tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of the tags that you want to add to the resource. A tag
    #   consists of a required tag key (`Key`) and an associated tag value
    #   (`Value`). The maximum length of a tag key is 128 characters. The
    #   maximum length of a tag value is 256 characters.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # An object that defines the email template to use for an email message,
    # and the values to use for any message variables in that template. An
    # *email template* is a type of message template that contains content
    # that you want to define, save, and reuse in email messages that you
    # send.
    #
    # @note When making an API call, you may pass Template
    #   data as a hash:
    #
    #       {
    #         template_name: "EmailTemplateName",
    #         template_arn: "AmazonResourceName",
    #         template_data: "EmailTemplateData",
    #       }
    #
    # @!attribute [rw] template_name
    #   The name of the template. You will refer to this name when you send
    #   email using the `SendTemplatedEmail` or `SendBulkTemplatedEmail`
    #   operations.
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_data
    #   An object that defines the values to use for message variables in
    #   the template. This object is a set of key-value pairs. Each key
    #   defines a message variable in the template. The corresponding value
    #   defines the value to use for that variable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/Template AWS API Documentation
    #
    class Template < Struct.new(
      :template_name,
      :template_arn,
      :template_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # &gt;Represents a request to create a preview of the MIME content of an
    # email when provided with a template and a set of replacement data.
    #
    # @note When making an API call, you may pass TestRenderEmailTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "EmailTemplateName", # required
    #         template_data: "EmailTemplateData", # required
    #       }
    #
    # @!attribute [rw] template_name
    #   The name of the template that you want to render.
    #   @return [String]
    #
    # @!attribute [rw] template_data
    #   A list of replacement values to apply to the template. This
    #   parameter is a JSON object, typically consisting of key-value pairs
    #   in which the keys correspond to replacement tags in the email
    #   template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/TestRenderEmailTemplateRequest AWS API Documentation
    #
    class TestRenderEmailTemplateRequest < Struct.new(
      :template_name,
      :template_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # The following element is returned by the service.
    #
    # @!attribute [rw] rendered_template
    #   The complete MIME message rendered by applying the data in the
    #   `TemplateData` parameter to the template specified in the
    #   TemplateName parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/TestRenderEmailTemplateResponse AWS API Documentation
    #
    class TestRenderEmailTemplateResponse < Struct.new(
      :rendered_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # Too many requests have been made to the operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Aws::EmptyStructure; end

    # An object that defines the tracking options for a configuration set.
    # When you use the Amazon SES API v2 to send an email, it contains an
    # invisible image that's used to track when recipients open your email.
    # If your email contains links, those links are changed slightly in
    # order to track when recipients click them.
    #
    # These images and links include references to a domain operated by AWS.
    # You can optionally configure the Amazon SES to use a domain that you
    # operate for these images and links.
    #
    # @note When making an API call, you may pass TrackingOptions
    #   data as a hash:
    #
    #       {
    #         custom_redirect_domain: "CustomRedirectDomain", # required
    #       }
    #
    # @!attribute [rw] custom_redirect_domain
    #   The domain that you want to use for tracking open and click events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/TrackingOptions AWS API Documentation
    #
    class TrackingOptions < Struct.new(
      :custom_redirect_domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   remove one or more tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tags (tag keys) that you want to remove from the resource. When
    #   you specify a tag key, the action removes both that key and its
    #   associated tag value.
    #
    #   To remove more than one tag from the resource, append the `TagKeys`
    #   parameter and argument for each additional tag to remove, separated
    #   by an ampersand. For example:
    #   `/v2/email/tags?ResourceArn=ResourceArn&TagKeys=Key1&TagKeys=Key2`
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # A request to change the settings for an event destination for a
    # configuration set.
    #
    # @note When making an API call, you may pass UpdateConfigurationSetEventDestinationRequest
    #   data as a hash:
    #
    #       {
    #         configuration_set_name: "ConfigurationSetName", # required
    #         event_destination_name: "EventDestinationName", # required
    #         event_destination: { # required
    #           enabled: false,
    #           matching_event_types: ["SEND"], # accepts SEND, REJECT, BOUNCE, COMPLAINT, DELIVERY, OPEN, CLICK, RENDERING_FAILURE, DELIVERY_DELAY
    #           kinesis_firehose_destination: {
    #             iam_role_arn: "AmazonResourceName", # required
    #             delivery_stream_arn: "AmazonResourceName", # required
    #           },
    #           cloud_watch_destination: {
    #             dimension_configurations: [ # required
    #               {
    #                 dimension_name: "DimensionName", # required
    #                 dimension_value_source: "MESSAGE_TAG", # required, accepts MESSAGE_TAG, EMAIL_HEADER, LINK_TAG
    #                 default_dimension_value: "DefaultDimensionValue", # required
    #               },
    #             ],
    #           },
    #           sns_destination: {
    #             topic_arn: "AmazonResourceName", # required
    #           },
    #           pinpoint_destination: {
    #             application_arn: "AmazonResourceName",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set that contains the event
    #   destination that you want to modify.
    #   @return [String]
    #
    # @!attribute [rw] event_destination_name
    #   The name of the event destination that you want to modify.
    #   @return [String]
    #
    # @!attribute [rw] event_destination
    #   An object that defines the event destination.
    #   @return [Types::EventDestinationDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/UpdateConfigurationSetEventDestinationRequest AWS API Documentation
    #
    class UpdateConfigurationSetEventDestinationRequest < Struct.new(
      :configuration_set_name,
      :event_destination_name,
      :event_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/UpdateConfigurationSetEventDestinationResponse AWS API Documentation
    #
    class UpdateConfigurationSetEventDestinationResponse < Aws::EmptyStructure; end

    # Represents a request to update an existing custom verification email
    # template.
    #
    # @note When making an API call, you may pass UpdateCustomVerificationEmailTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "EmailTemplateName", # required
    #         from_email_address: "EmailAddress", # required
    #         template_subject: "EmailTemplateSubject", # required
    #         template_content: "TemplateContent", # required
    #         success_redirection_url: "SuccessRedirectionURL", # required
    #         failure_redirection_url: "FailureRedirectionURL", # required
    #       }
    #
    # @!attribute [rw] template_name
    #   The name of the custom verification email template that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] from_email_address
    #   The email address that the custom verification email is sent from.
    #   @return [String]
    #
    # @!attribute [rw] template_subject
    #   The subject line of the custom verification email.
    #   @return [String]
    #
    # @!attribute [rw] template_content
    #   The content of the custom verification email. The total size of the
    #   email must be less than 10 MB. The message body may contain HTML,
    #   with some limitations. For more information, see [Custom
    #   Verification Email Frequently Asked Questions][1] in the *Amazon SES
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html#custom-verification-emails-faq
    #   @return [String]
    #
    # @!attribute [rw] success_redirection_url
    #   The URL that the recipient of the verification email is sent to if
    #   his or her address is successfully verified.
    #   @return [String]
    #
    # @!attribute [rw] failure_redirection_url
    #   The URL that the recipient of the verification email is sent to if
    #   his or her address is not successfully verified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/UpdateCustomVerificationEmailTemplateRequest AWS API Documentation
    #
    class UpdateCustomVerificationEmailTemplateRequest < Struct.new(
      :template_name,
      :from_email_address,
      :template_subject,
      :template_content,
      :success_redirection_url,
      :failure_redirection_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # If the action is successful, the service sends back an HTTP 200
    # response with an empty HTTP body.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/UpdateCustomVerificationEmailTemplateResponse AWS API Documentation
    #
    class UpdateCustomVerificationEmailTemplateResponse < Aws::EmptyStructure; end

    # Represents a request to update a sending authorization policy for an
    # identity. Sending authorization is an Amazon SES feature that enables
    # you to authorize other senders to use your identities. For
    # information, see the [Amazon SES Developer Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-identity-owner-tasks-management.html
    #
    # @note When making an API call, you may pass UpdateEmailIdentityPolicyRequest
    #   data as a hash:
    #
    #       {
    #         email_identity: "Identity", # required
    #         policy_name: "PolicyName", # required
    #         policy: "Policy", # required
    #       }
    #
    # @!attribute [rw] email_identity
    #   The email identity for which you want to update policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #
    #   The policy name cannot exceed 64 characters and can only include
    #   alphanumeric characters, dashes, and underscores.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The text of the policy in JSON format. The policy cannot exceed 4
    #   KB.
    #
    #   For information about the syntax of sending authorization policies,
    #   see the [Amazon SES Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/UpdateEmailIdentityPolicyRequest AWS API Documentation
    #
    class UpdateEmailIdentityPolicyRequest < Struct.new(
      :email_identity,
      :policy_name,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/UpdateEmailIdentityPolicyResponse AWS API Documentation
    #
    class UpdateEmailIdentityPolicyResponse < Aws::EmptyStructure; end

    # Represents a request to update an email template. For more
    # information, see the [Amazon SES Developer Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html
    #
    # @note When making an API call, you may pass UpdateEmailTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_name: "EmailTemplateName", # required
    #         template_content: { # required
    #           subject: "EmailTemplateSubject",
    #           text: "EmailTemplateText",
    #           html: "EmailTemplateHtml",
    #         },
    #       }
    #
    # @!attribute [rw] template_name
    #   The name of the template you want to update.
    #   @return [String]
    #
    # @!attribute [rw] template_content
    #   The content of the email template, composed of a subject line, an
    #   HTML part, and a text-only part.
    #   @return [Types::EmailTemplateContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/UpdateEmailTemplateRequest AWS API Documentation
    #
    class UpdateEmailTemplateRequest < Struct.new(
      :template_name,
      :template_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # If the action is successful, the service sends back an HTTP 200
    # response with an empty HTTP body.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/UpdateEmailTemplateResponse AWS API Documentation
    #
    class UpdateEmailTemplateResponse < Aws::EmptyStructure; end

    # An object that contains information about the amount of email that was
    # delivered to recipients.
    #
    # @!attribute [rw] inbox_raw_count
    #   The total number of emails that arrived in recipients' inboxes.
    #   @return [Integer]
    #
    # @!attribute [rw] spam_raw_count
    #   The total number of emails that arrived in recipients' spam or junk
    #   mail folders.
    #   @return [Integer]
    #
    # @!attribute [rw] projected_inbox
    #   An estimate of the percentage of emails sent from the current domain
    #   that will arrive in recipients' inboxes.
    #   @return [Integer]
    #
    # @!attribute [rw] projected_spam
    #   An estimate of the percentage of emails sent from the current domain
    #   that will arrive in recipients' spam or junk mail folders.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/VolumeStatistics AWS API Documentation
    #
    class VolumeStatistics < Struct.new(
      :inbox_raw_count,
      :spam_raw_count,
      :projected_inbox,
      :projected_spam)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

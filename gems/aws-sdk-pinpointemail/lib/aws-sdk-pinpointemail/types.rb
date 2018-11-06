# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PinpointEmail
  module Types

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/Body AWS API Documentation
    #
    class Body < Struct.new(
      :text,
      :html)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/CloudWatchDestination AWS API Documentation
    #
    class CloudWatchDestination < Struct.new(
      :dimension_configurations)
      include Aws::Structure
    end

    # An object that defines the dimension configuration to use when you
    # send Amazon Pinpoint email events to Amazon CloudWatch.
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
    #   * It can only contain ASCII letters (a-z, A-Z), numbers (0-9),
    #     underscores (\_), or dashes (-).
    #
    #   * It can contain no more than 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] dimension_value_source
    #   The location where Amazon Pinpoint finds the value of a dimension to
    #   publish to Amazon CloudWatch. If you want Amazon Pinpoint to use the
    #   message tags that you specify using an X-SES-MESSAGE-TAGS header or
    #   a parameter to the SendEmail/SendRawEmail API, choose `messageTag`.
    #   If you want Amazon Pinpoint to use your own email headers, choose
    #   `emailHeader`. If you want Amazon Pinpoint to use link tags, choose
    #   `linkTags`.
    #   @return [String]
    #
    # @!attribute [rw] default_dimension_value
    #   The default value of the dimension that is published to Amazon
    #   CloudWatch if you don't provide the value of the dimension when you
    #   send an email. This value has to meet the following criteria:
    #
    #   * It can only contain ASCII letters (a-z, A-Z), numbers (0-9),
    #     underscores (\_), or dashes (-).
    #
    #   * It can contain no more than 256 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/CloudWatchDimensionConfiguration AWS API Documentation
    #
    class CloudWatchDimensionConfiguration < Struct.new(
      :dimension_name,
      :dimension_value_source,
      :default_dimension_value)
      include Aws::Structure
    end

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
    #   SMTP protocol, Amazon Pinpoint uses 7-bit ASCII by default. If the
    #   text includes characters outside of the ASCII range, you have to
    #   specify a character set. For example, you could specify `UTF-8`,
    #   `ISO-8859-1`, or `Shift_JIS`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/Content AWS API Documentation
    #
    class Content < Struct.new(
      :data,
      :charset)
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
    #           matching_event_types: ["SEND"], # accepts SEND, REJECT, BOUNCE, COMPLAINT, DELIVERY, OPEN, CLICK, RENDERING_FAILURE
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/CreateConfigurationSetEventDestinationRequest AWS API Documentation
    #
    class CreateConfigurationSetEventDestinationRequest < Struct.new(
      :configuration_set_name,
      :event_destination_name,
      :event_destination)
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/CreateConfigurationSetEventDestinationResponse AWS API Documentation
    #
    class CreateConfigurationSetEventDestinationResponse < Aws::EmptyStructure; end

    # A request to create a configuration set.
    #
    # @note When making an API call, you may pass CreateConfigurationSetRequest
    #   data as a hash:
    #
    #       {
    #         configuration_set_name: "ConfigurationSetName",
    #         tracking_options: {
    #           custom_redirect_domain: "CustomRedirectDomain", # required
    #         },
    #         delivery_options: {
    #           sending_pool_name: "PoolName",
    #         },
    #         reputation_options: {
    #           reputation_metrics_enabled: false,
    #           last_fresh_start: Time.now,
    #         },
    #         sending_options: {
    #           sending_enabled: false,
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
    #   An object that defines whether or not Amazon Pinpoint collects
    #   reputation metrics for the emails that you send that use the
    #   configuration set.
    #   @return [Types::ReputationOptions]
    #
    # @!attribute [rw] sending_options
    #   An object that defines whether or not Amazon Pinpoint can send email
    #   that you send using the configuration set.
    #   @return [Types::SendingOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/CreateConfigurationSetRequest AWS API Documentation
    #
    class CreateConfigurationSetRequest < Struct.new(
      :configuration_set_name,
      :tracking_options,
      :delivery_options,
      :reputation_options,
      :sending_options)
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/CreateConfigurationSetResponse AWS API Documentation
    #
    class CreateConfigurationSetResponse < Aws::EmptyStructure; end

    # A request to create a new dedicated IP pool.
    #
    # @note When making an API call, you may pass CreateDedicatedIpPoolRequest
    #   data as a hash:
    #
    #       {
    #         pool_name: "PoolName", # required
    #       }
    #
    # @!attribute [rw] pool_name
    #   The name of the dedicated IP pool.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/CreateDedicatedIpPoolRequest AWS API Documentation
    #
    class CreateDedicatedIpPoolRequest < Struct.new(
      :pool_name)
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/CreateDedicatedIpPoolResponse AWS API Documentation
    #
    class CreateDedicatedIpPoolResponse < Aws::EmptyStructure; end

    # A request to begin the verification process for an email identity (an
    # email address or domain).
    #
    # @note When making an API call, you may pass CreateEmailIdentityRequest
    #   data as a hash:
    #
    #       {
    #         email_identity: "Identity", # required
    #       }
    #
    # @!attribute [rw] email_identity
    #   The email address or domain that you want to verify.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/CreateEmailIdentityRequest AWS API Documentation
    #
    class CreateEmailIdentityRequest < Struct.new(
      :email_identity)
      include Aws::Structure
    end

    # If the email identity is a domain, this object contains tokens that
    # you can use to create a set of CNAME records. To sucessfully verify
    # your domain, you have to add these records to the DNS configuration
    # for your domain.
    #
    # If the email identity is an email address, this object is empty.
    #
    # @!attribute [rw] identity_type
    #   The email identity type.
    #   @return [String]
    #
    # @!attribute [rw] verified_for_sending_status
    #   Specifies whether or not the identity is verified. In Amazon
    #   Pinpoint, you can only send email from verified email addresses or
    #   domains. For more information about verifying identities, see the
    #   [Amazon Pinpoint User Guide][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/pinpoint/latest/userguide/channels-email-manage-verify.html
    #   @return [Boolean]
    #
    # @!attribute [rw] dkim_attributes
    #   An object that contains information about the DKIM attributes for
    #   the identity. This object includes the tokens that you use to create
    #   the CNAME records that are required to complete the DKIM
    #   verification process.
    #   @return [Types::DkimAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/CreateEmailIdentityResponse AWS API Documentation
    #
    class CreateEmailIdentityResponse < Struct.new(
      :identity_type,
      :verified_for_sending_status,
      :dkim_attributes)
      include Aws::Structure
    end

    # Contains information about a dedicated IP address that is associated
    # with your Amazon Pinpoint account.
    #
    # @!attribute [rw] ip
    #   An IP address that is reserved for use by your Amazon Pinpoint
    #   account.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/DedicatedIp AWS API Documentation
    #
    class DedicatedIp < Struct.new(
      :ip,
      :warmup_status,
      :warmup_percentage,
      :pool_name)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/DeleteConfigurationSetEventDestinationRequest AWS API Documentation
    #
    class DeleteConfigurationSetEventDestinationRequest < Struct.new(
      :configuration_set_name,
      :event_destination_name)
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/DeleteConfigurationSetEventDestinationResponse AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/DeleteConfigurationSetRequest AWS API Documentation
    #
    class DeleteConfigurationSetRequest < Struct.new(
      :configuration_set_name)
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/DeleteConfigurationSetResponse AWS API Documentation
    #
    class DeleteConfigurationSetResponse < Aws::EmptyStructure; end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/DeleteDedicatedIpPoolRequest AWS API Documentation
    #
    class DeleteDedicatedIpPoolRequest < Struct.new(
      :pool_name)
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/DeleteDedicatedIpPoolResponse AWS API Documentation
    #
    class DeleteDedicatedIpPoolResponse < Aws::EmptyStructure; end

    # A request to delete an existing email identity. When you delete an
    # identity, you lose the ability to use Amazon Pinpoint to send email
    # from that identity. You can restore your ability to send email by
    # completing the verification process for the identity again.
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
    #   delete from your Amazon Pinpoint account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/DeleteEmailIdentityRequest AWS API Documentation
    #
    class DeleteEmailIdentityRequest < Struct.new(
      :email_identity)
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/DeleteEmailIdentityResponse AWS API Documentation
    #
    class DeleteEmailIdentityResponse < Aws::EmptyStructure; end

    # Used to associate a configuration set with a dedicated IP pool.
    #
    # @note When making an API call, you may pass DeliveryOptions
    #   data as a hash:
    #
    #       {
    #         sending_pool_name: "PoolName",
    #       }
    #
    # @!attribute [rw] sending_pool_name
    #   The name of the dedicated IP pool that you want to associate with
    #   the configuration set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/DeliveryOptions AWS API Documentation
    #
    class DeliveryOptions < Struct.new(
      :sending_pool_name)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/Destination AWS API Documentation
    #
    class Destination < Struct.new(
      :to_addresses,
      :cc_addresses,
      :bcc_addresses)
      include Aws::Structure
    end

    # An object that contains information about the DKIM configuration for
    # an email identity.
    #
    # @!attribute [rw] signing_enabled
    #   If the value is `true`, then the messages that Amazon Pinpoint sends
    #   from the identity are DKIM-signed. If the value is `false`, then the
    #   messages that Amazon Pinpoint sends from the identity aren't
    #   DKIM-signed.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   Describes whether or not Amazon Pinpoint has successfully located
    #   the DKIM records in the DNS records for the domain. The status can
    #   be one of the following:
    #
    #   * `PENDING` – Amazon Pinpoint hasn't yet located the DKIM records
    #     in the DNS configuration for the domain, but will continue to
    #     attempt to locate them.
    #
    #   * `SUCCESS` – Amazon Pinpoint located the DKIM records in the DNS
    #     configuration for the domain and determined that they're correct.
    #     Amazon Pinpoint can now send DKIM-signed email from the identity.
    #
    #   * `FAILED` – Amazon Pinpoint was unable to locate the DKIM records
    #     in the DNS settings for the domain, and won't continue to search
    #     for them.
    #
    #   * `TEMPORARY_FAILURE` – A temporary issue occurred, which prevented
    #     Amazon Pinpoint from determining the DKIM status for the domain.
    #
    #   * `NOT_STARTED` – Amazon Pinpoint hasn't yet started searching for
    #     the DKIM records in the DKIM records for the domain.
    #   @return [String]
    #
    # @!attribute [rw] tokens
    #   A set of unique strings that you use to create a set of CNAME
    #   records that you add to the DNS configuration for your domain. When
    #   Amazon Pinpoint detects these records in the DNS configuration for
    #   your domain, the DKIM authentication process is complete. Amazon
    #   Pinpoint usually detects these records within about 72 hours of
    #   adding them to the DNS configuration for your domain.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/DkimAttributes AWS API Documentation
    #
    class DkimAttributes < Struct.new(
      :signing_enabled,
      :status,
      :tokens)
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
    #   * If you include attachments, they must be in a file format that
    #     Amazon Pinpoint supports.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/EmailContent AWS API Documentation
    #
    class EmailContent < Struct.new(
      :simple,
      :raw)
      include Aws::Structure
    end

    # In Amazon Pinpoint, *events* include message sends, deliveries, opens,
    # clicks, bounces, and complaints. *Event destinations* are places that
    # you can send information about these events to. For example, you can
    # send event data to Amazon SNS to receive notifications when you
    # receive bounces or complaints, or you can use Amazon Kinesis Data
    # Firehose to stream data to Amazon S3 for long-term storage.
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
    #   The types of events that Amazon Pinpoint sends to the specified
    #   event destinations.
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
    #   An object that defines a Amazon Pinpoint destination for email
    #   events. You can use Amazon Pinpoint events to create attributes in
    #   Amazon Pinpoint projects. You can use these attributes to create
    #   segments for your campaigns.
    #   @return [Types::PinpointDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/EventDestination AWS API Documentation
    #
    class EventDestination < Struct.new(
      :name,
      :enabled,
      :matching_event_types,
      :kinesis_firehose_destination,
      :cloud_watch_destination,
      :sns_destination,
      :pinpoint_destination)
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
    #         matching_event_types: ["SEND"], # accepts SEND, REJECT, BOUNCE, COMPLAINT, DELIVERY, OPEN, CLICK, RENDERING_FAILURE
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
    #   An array that specifies which events Amazon Pinpoint should send to
    #   the destinations in this `EventDestinationDefinition`.
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
    #   An object that defines a Amazon Pinpoint destination for email
    #   events. You can use Amazon Pinpoint events to create attributes in
    #   Amazon Pinpoint projects. You can use these attributes to create
    #   segments for your campaigns.
    #   @return [Types::PinpointDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/EventDestinationDefinition AWS API Documentation
    #
    class EventDestinationDefinition < Struct.new(
      :enabled,
      :matching_event_types,
      :kinesis_firehose_destination,
      :cloud_watch_destination,
      :sns_destination,
      :pinpoint_destination)
      include Aws::Structure
    end

    # A request to obtain information about the email-sending capabilities
    # of your Amazon Pinpoint account.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetAccountRequest AWS API Documentation
    #
    class GetAccountRequest < Aws::EmptyStructure; end

    # A list of details about the email-sending capabilities of your Amazon
    # Pinpoint account in the current AWS Region.
    #
    # @!attribute [rw] send_quota
    #   An object that contains information about the per-day and per-second
    #   sending limits for your Amazon Pinpoint account in the current AWS
    #   Region.
    #   @return [Types::SendQuota]
    #
    # @!attribute [rw] sending_enabled
    #   Indicates whether or not email sending is enabled for your Amazon
    #   Pinpoint account in the current AWS Region.
    #   @return [Boolean]
    #
    # @!attribute [rw] dedicated_ip_auto_warmup_enabled
    #   Indicates whether or not the automatic warm-up feature is enabled
    #   for dedicated IP addresses that are associated with your account.
    #   @return [Boolean]
    #
    # @!attribute [rw] enforcement_status
    #   The reputation status of your Amazon Pinpoint account. The status
    #   can be one of the following:
    #
    #   * `HEALTHY` – There are no reputation-related issues that currently
    #     impact your account.
    #
    #   * `PROBATION` – We've identified some issues with your Amazon
    #     Pinpoint account. We're placing your account under review while
    #     you work on correcting these issues.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetAccountResponse AWS API Documentation
    #
    class GetAccountResponse < Struct.new(
      :send_quota,
      :sending_enabled,
      :dedicated_ip_auto_warmup_enabled,
      :enforcement_status,
      :production_access_enabled)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetConfigurationSetEventDestinationsRequest AWS API Documentation
    #
    class GetConfigurationSetEventDestinationsRequest < Struct.new(
      :configuration_set_name)
      include Aws::Structure
    end

    # Information about an event destination for a configuration set.
    #
    # @!attribute [rw] event_destinations
    #   An array that includes all of the events destinations that have been
    #   configured for the configuration set.
    #   @return [Array<Types::EventDestination>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetConfigurationSetEventDestinationsResponse AWS API Documentation
    #
    class GetConfigurationSetEventDestinationsResponse < Struct.new(
      :event_destinations)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetConfigurationSetRequest AWS API Documentation
    #
    class GetConfigurationSetRequest < Struct.new(
      :configuration_set_name)
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
    #   An object that defines whether or not Amazon Pinpoint collects
    #   reputation metrics for the emails that you send that use the
    #   configuration set.
    #   @return [Types::ReputationOptions]
    #
    # @!attribute [rw] sending_options
    #   An object that defines whether or not Amazon Pinpoint can send email
    #   that you send using the configuration set.
    #   @return [Types::SendingOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetConfigurationSetResponse AWS API Documentation
    #
    class GetConfigurationSetResponse < Struct.new(
      :configuration_set_name,
      :tracking_options,
      :delivery_options,
      :reputation_options,
      :sending_options)
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
    #   assocaited with your Amazon Pinpoint account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetDedicatedIpRequest AWS API Documentation
    #
    class GetDedicatedIpRequest < Struct.new(
      :ip)
      include Aws::Structure
    end

    # Information about a dedicated IP address.
    #
    # @!attribute [rw] dedicated_ip
    #   An object that contains information about a dedicated IP address.
    #   @return [Types::DedicatedIp]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetDedicatedIpResponse AWS API Documentation
    #
    class GetDedicatedIpResponse < Struct.new(
      :dedicated_ip)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetDedicatedIpsRequest AWS API Documentation
    #
    class GetDedicatedIpsRequest < Struct.new(
      :pool_name,
      :next_token,
      :page_size)
      include Aws::Structure
    end

    # Information about the dedicated IP addresses that are associated with
    # your Amazon Pinpoint account.
    #
    # @!attribute [rw] dedicated_ips
    #   A list of dedicated IP addresses that are reserved for use by your
    #   Amazon Pinpoint account.
    #   @return [Array<Types::DedicatedIp>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates that there are additional dedicated IP
    #   addresses to list. To view additional addresses, issue another
    #   request to `GetDedicatedIps`, passing this token in the `NextToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetDedicatedIpsResponse AWS API Documentation
    #
    class GetDedicatedIpsResponse < Struct.new(
      :dedicated_ips,
      :next_token)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetEmailIdentityRequest AWS API Documentation
    #
    class GetEmailIdentityRequest < Struct.new(
      :email_identity)
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
    #   If the value is `true`, Amazon Pinpoint sends you email
    #   notifications when bounce or complaint events occur. Amazon Pinpoint
    #   sends this notification to the address that you specified in the
    #   Return-Path header of the original email.
    #
    #   When you set this value to `false`, Amazon Pinpoint sends
    #   notifications through other mechanisms, such as by notifying an
    #   Amazon SNS topic or another event destination. You're required to
    #   have a method of tracking bounces and complaints. If you haven't
    #   set up another mechanism for receiving bounce or complaint
    #   notifications, Amazon Pinpoint sends an email notification when
    #   these events occur (even if this setting is disabled).
    #   @return [Boolean]
    #
    # @!attribute [rw] verified_for_sending_status
    #   Specifies whether or not the identity is verified. In Amazon
    #   Pinpoint, you can only send email from verified email addresses or
    #   domains. For more information about verifying identities, see the
    #   [Amazon Pinpoint User Guide][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/pinpoint/latest/userguide/channels-email-manage-verify.html
    #   @return [Boolean]
    #
    # @!attribute [rw] dkim_attributes
    #   An object that contains information about the DKIM attributes for
    #   the identity. This object includes the tokens that you use to create
    #   the CNAME records that are required to complete the DKIM
    #   verification process.
    #   @return [Types::DkimAttributes]
    #
    # @!attribute [rw] mail_from_attributes
    #   An object that contains information about the Mail-From attributes
    #   for the email identity.
    #   @return [Types::MailFromAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetEmailIdentityResponse AWS API Documentation
    #
    class GetEmailIdentityResponse < Struct.new(
      :identity_type,
      :feedback_forwarding_status,
      :verified_for_sending_status,
      :dkim_attributes,
      :mail_from_attributes)
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
    #   In Amazon Pinpoint, an identity is an email address or domain that
    #   you send email from. Before you can send email from an identity, you
    #   have to demostrate that you own the identity, and that you authorize
    #   Amazon Pinpoint to send email from that identity.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/IdentityInfo AWS API Documentation
    #
    class IdentityInfo < Struct.new(
      :identity_type,
      :identity_name,
      :sending_enabled)
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
    #   The Amazon Resource Name (ARN) of the IAM role that Amazon Pinpoint
    #   uses when sending email events to the Amazon Kinesis Data Firehose
    #   stream.
    #   @return [String]
    #
    # @!attribute [rw] delivery_stream_arn
    #   The Amazon Resource Name (ARN) of the Amazon Kinesis Data Firehose
    #   stream that Amazon Pinpoint sends email events to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/KinesisFirehoseDestination AWS API Documentation
    #
    class KinesisFirehoseDestination < Struct.new(
      :iam_role_arn,
      :delivery_stream_arn)
      include Aws::Structure
    end

    # A request to obtain a list of configuration sets for your Amazon
    # Pinpoint account in the current AWS Region.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/ListConfigurationSetsRequest AWS API Documentation
    #
    class ListConfigurationSetsRequest < Struct.new(
      :next_token,
      :page_size)
      include Aws::Structure
    end

    # A list of configuration sets in your Amazon Pinpoint account in the
    # current AWS Region.
    #
    # @!attribute [rw] configuration_sets
    #   An array that contains all of the configuration sets in your Amazon
    #   Pinpoint account in the current AWS Region.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates that there are additional configuration sets
    #   to list. To view additional configuration sets, issue another
    #   request to `ListConfigurationSets`, and pass this token in the
    #   `NextToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/ListConfigurationSetsResponse AWS API Documentation
    #
    class ListConfigurationSetsResponse < Struct.new(
      :configuration_sets,
      :next_token)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/ListDedicatedIpPoolsRequest AWS API Documentation
    #
    class ListDedicatedIpPoolsRequest < Struct.new(
      :next_token,
      :page_size)
      include Aws::Structure
    end

    # A list of dedicated IP pools.
    #
    # @!attribute [rw] dedicated_ip_pools
    #   A list of all of the dedicated IP pools that are associated with
    #   your Amazon Pinpoint account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates that there are additional IP pools to list.
    #   To view additional IP pools, issue another request to
    #   `ListDedicatedIpPools`, passing this token in the `NextToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/ListDedicatedIpPoolsResponse AWS API Documentation
    #
    class ListDedicatedIpPoolsResponse < Struct.new(
      :dedicated_ip_pools,
      :next_token)
      include Aws::Structure
    end

    # A request to list all of the email identities associated with your
    # Amazon Pinpoint account. This list includes identities that you've
    # already verified, identities that are unverified, and identities that
    # were verified in the past, but are no longer verified.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/ListEmailIdentitiesRequest AWS API Documentation
    #
    class ListEmailIdentitiesRequest < Struct.new(
      :next_token,
      :page_size)
      include Aws::Structure
    end

    # A list of all of the identities that you've attempted to verify for
    # use with Amazon Pinpoint, regardless of whether or not those
    # identities were successfully verified.
    #
    # @!attribute [rw] email_identities
    #   An array that includes all of the identities associated with your
    #   Amazon Pinpoint account.
    #   @return [Array<Types::IdentityInfo>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates that there are additional configuration sets
    #   to list. To view additional configuration sets, issue another
    #   request to `ListEmailIdentities`, and pass this token in the
    #   `NextToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/ListEmailIdentitiesResponse AWS API Documentation
    #
    class ListEmailIdentitiesResponse < Struct.new(
      :email_identities,
      :next_token)
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
    #   * `PENDING` – Amazon Pinpoint hasn't started searching for the MX
    #     record yet.
    #
    #   * `SUCCESS` – Amazon Pinpoint detected the required MX record for
    #     the MAIL FROM domain.
    #
    #   * `FAILED` – Amazon Pinpoint can't find the required MX record, or
    #     the record no longer exists.
    #
    #   * `TEMPORARY_FAILURE` – A temporary issue occurred, which prevented
    #     Amazon Pinpoint from determining the status of the MAIL FROM
    #     domain.
    #   @return [String]
    #
    # @!attribute [rw] behavior_on_mx_failure
    #   The action that Amazon Pinpoint to takes if it can't read the
    #   required MX record for a custom MAIL FROM domain. When you set this
    #   value to `UseDefaultValue`, Amazon Pinpoint uses *amazonses.com* as
    #   the MAIL FROM domain. When you set this value to `RejectMessage`,
    #   Amazon Pinpoint returns a `MailFromDomainNotVerified` error, and
    #   doesn't attempt to deliver the email.
    #
    #   These behaviors are taken when the custom MAIL FROM domain
    #   configuration is in the `Pending`, `Failed`, and `TemporaryFailure`
    #   states.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/MailFromAttributes AWS API Documentation
    #
    class MailFromAttributes < Struct.new(
      :mail_from_domain,
      :mail_from_domain_status,
      :behavior_on_mx_failure)
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/Message AWS API Documentation
    #
    class Message < Struct.new(
      :subject,
      :body)
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/MessageTag AWS API Documentation
    #
    class MessageTag < Struct.new(
      :name,
      :value)
      include Aws::Structure
    end

    # An object that defines a Amazon Pinpoint destination for email events.
    # You can use Amazon Pinpoint events to create attributes in Amazon
    # Pinpoint projects. You can use these attributes to create segments for
    # your campaigns.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PinpointDestination AWS API Documentation
    #
    class PinpointDestination < Struct.new(
      :application_arn)
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
    #   addresses that are associated with your Amazon Pinpoint account in
    #   the current AWS Region. Set to `true` to enable the automatic
    #   warm-up feature, or set to `false` to disable it.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutAccountDedicatedIpWarmupAttributesRequest AWS API Documentation
    #
    class PutAccountDedicatedIpWarmupAttributesRequest < Struct.new(
      :auto_warmup_enabled)
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutAccountDedicatedIpWarmupAttributesResponse AWS API Documentation
    #
    class PutAccountDedicatedIpWarmupAttributesResponse < Aws::EmptyStructure; end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutAccountSendingAttributesRequest AWS API Documentation
    #
    class PutAccountSendingAttributesRequest < Struct.new(
      :sending_enabled)
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutAccountSendingAttributesResponse AWS API Documentation
    #
    class PutAccountSendingAttributesResponse < Aws::EmptyStructure; end

    # A request to associate a configuration set with a dedicated IP pool.
    #
    # @note When making an API call, you may pass PutConfigurationSetDeliveryOptionsRequest
    #   data as a hash:
    #
    #       {
    #         configuration_set_name: "ConfigurationSetName", # required
    #         sending_pool_name: "SendingPoolName",
    #       }
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set that you want to associate with a
    #   dedicated IP pool.
    #   @return [String]
    #
    # @!attribute [rw] sending_pool_name
    #   The name of the dedicated IP pool that you want to associate with
    #   the configuration set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutConfigurationSetDeliveryOptionsRequest AWS API Documentation
    #
    class PutConfigurationSetDeliveryOptionsRequest < Struct.new(
      :configuration_set_name,
      :sending_pool_name)
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutConfigurationSetDeliveryOptionsResponse AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutConfigurationSetReputationOptionsRequest AWS API Documentation
    #
    class PutConfigurationSetReputationOptionsRequest < Struct.new(
      :configuration_set_name,
      :reputation_metrics_enabled)
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutConfigurationSetReputationOptionsResponse AWS API Documentation
    #
    class PutConfigurationSetReputationOptionsResponse < Aws::EmptyStructure; end

    # A request to enable or disable the ability of Amazon Pinpoint to send
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutConfigurationSetSendingOptionsRequest AWS API Documentation
    #
    class PutConfigurationSetSendingOptionsRequest < Struct.new(
      :configuration_set_name,
      :sending_enabled)
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutConfigurationSetSendingOptionsResponse AWS API Documentation
    #
    class PutConfigurationSetSendingOptionsResponse < Aws::EmptyStructure; end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutConfigurationSetTrackingOptionsRequest AWS API Documentation
    #
    class PutConfigurationSetTrackingOptionsRequest < Struct.new(
      :configuration_set_name,
      :custom_redirect_domain)
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutConfigurationSetTrackingOptionsResponse AWS API Documentation
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
    #   associated with your Amazon Pinpoint account.
    #   @return [String]
    #
    # @!attribute [rw] destination_pool_name
    #   The name of the IP pool that you want to add the dedicated IP
    #   address to. You have to specify an IP pool that already exists.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutDedicatedIpInPoolRequest AWS API Documentation
    #
    class PutDedicatedIpInPoolRequest < Struct.new(
      :ip,
      :destination_pool_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutDedicatedIpInPoolResponse AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutDedicatedIpWarmupAttributesRequest AWS API Documentation
    #
    class PutDedicatedIpWarmupAttributesRequest < Struct.new(
      :ip,
      :warmup_percentage)
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutDedicatedIpWarmupAttributesResponse AWS API Documentation
    #
    class PutDedicatedIpWarmupAttributesResponse < Aws::EmptyStructure; end

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
    #   When you set this value `true`, then the messages that Amazon
    #   Pinpoint sends from the identity are DKIM-signed. When you set this
    #   value to `false`, then the messages that Amazon Pinpoint sends from
    #   the identity aren't DKIM-signed.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutEmailIdentityDkimAttributesRequest AWS API Documentation
    #
    class PutEmailIdentityDkimAttributesRequest < Struct.new(
      :email_identity,
      :signing_enabled)
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutEmailIdentityDkimAttributesResponse AWS API Documentation
    #
    class PutEmailIdentityDkimAttributesResponse < Aws::EmptyStructure; end

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
    #   If the value is `true`, Amazon Pinpoint sends you email
    #   notifications when bounce or complaint events occur. Amazon Pinpoint
    #   sends this notification to the address that you specified in the
    #   Return-Path header of the original email.
    #
    #   When you set this value to `false`, Amazon Pinpoint sends
    #   notifications through other mechanisms, such as by notifying an
    #   Amazon SNS topic or another event destination. You're required to
    #   have a method of tracking bounces and complaints. If you haven't
    #   set up another mechanism for receiving bounce or complaint
    #   notifications, Amazon Pinpoint sends an email notification when
    #   these events occur (even if this setting is disabled).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutEmailIdentityFeedbackAttributesRequest AWS API Documentation
    #
    class PutEmailIdentityFeedbackAttributesRequest < Struct.new(
      :email_identity,
      :email_forwarding_enabled)
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutEmailIdentityFeedbackAttributesResponse AWS API Documentation
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
    #   The action that you want Amazon Pinpoint to take if it can't read
    #   the required MX record when you send an email. When you set this
    #   value to `UseDefaultValue`, Amazon Pinpoint uses *amazonses.com* as
    #   the MAIL FROM domain. When you set this value to `RejectMessage`,
    #   Amazon Pinpoint returns a `MailFromDomainNotVerified` error, and
    #   doesn't attempt to deliver the email.
    #
    #   These behaviors are taken when the custom MAIL FROM domain
    #   configuration is in the `Pending`, `Failed`, and `TemporaryFailure`
    #   states.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutEmailIdentityMailFromAttributesRequest AWS API Documentation
    #
    class PutEmailIdentityMailFromAttributesRequest < Struct.new(
      :email_identity,
      :mail_from_domain,
      :behavior_on_mx_failure)
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutEmailIdentityMailFromAttributesResponse AWS API Documentation
    #
    class PutEmailIdentityMailFromAttributesResponse < Aws::EmptyStructure; end

    # The raw email message.
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
    #   * Attachments must be in a file format that Amazon Pinpoint
    #     supports.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/RawMessage AWS API Documentation
    #
    class RawMessage < Struct.new(
      :data)
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
    #   The date and time when the reputation metrics were last given a
    #   fresh start. When your account is given a fresh start, your
    #   reputation metrics are calculated starting from the date of the
    #   fresh start.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/ReputationOptions AWS API Documentation
    #
    class ReputationOptions < Struct.new(
      :reputation_metrics_enabled,
      :last_fresh_start)
      include Aws::Structure
    end

    # A request to send an email message.
    #
    # @note When making an API call, you may pass SendEmailRequest
    #   data as a hash:
    #
    #       {
    #         from_email_address: "EmailAddress",
    #         destination: { # required
    #           to_addresses: ["EmailAddress"],
    #           cc_addresses: ["EmailAddress"],
    #           bcc_addresses: ["EmailAddress"],
    #         },
    #         reply_to_addresses: ["EmailAddress"],
    #         feedback_forwarding_email_address: "EmailAddress",
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
    #   The address that Amazon Pinpoint should send bounce and complaint
    #   notifications to.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   An object that contains the body of the message. You can send either
    #   a Simple message or a Raw message.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/SendEmailRequest AWS API Documentation
    #
    class SendEmailRequest < Struct.new(
      :from_email_address,
      :destination,
      :reply_to_addresses,
      :feedback_forwarding_email_address,
      :content,
      :email_tags,
      :configuration_set_name)
      include Aws::Structure
    end

    # A unique message ID that you receive when Amazon Pinpoint accepts an
    # email for sending.
    #
    # @!attribute [rw] message_id
    #   A unique identifier for the message that is generated when Amazon
    #   Pinpoint accepts the message.
    #
    #   <note markdown="1"> It is possible for Amazon Pinpoint to accept a message without
    #   sending it. This can happen when the message you're trying to send
    #   has an attachment doesn't pass a virus check, or when you send a
    #   templated email that contains invalid personalization content, for
    #   example.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/SendEmailResponse AWS API Documentation
    #
    class SendEmailResponse < Struct.new(
      :message_id)
      include Aws::Structure
    end

    # An object that contains information about the per-day and per-second
    # sending limits for your Amazon Pinpoint account in the current AWS
    # Region.
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
    #   The number of emails sent from your Amazon Pinpoint account in the
    #   current AWS Region over the past 24 hours.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/SendQuota AWS API Documentation
    #
    class SendQuota < Struct.new(
      :max_24_hour_send,
      :max_send_rate,
      :sent_last_24_hours)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/SendingOptions AWS API Documentation
    #
    class SendingOptions < Struct.new(
      :sending_enabled)
      include Aws::Structure
    end

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
    #   [1]: http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/SnsDestination AWS API Documentation
    #
    class SnsDestination < Struct.new(
      :topic_arn)
      include Aws::Structure
    end

    # An object that defines the tracking options for a configuration set.
    # When you use Amazon Pinpoint to send an email, it contains an
    # invisible image that's used to track when recipients open your email.
    # If your email contains links, those links are changed slightly in
    # order to track when recipients click them.
    #
    # These images and links include references to a domain operated by AWS.
    # You can optionally configure Amazon Pinpoint to use a domain that you
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/TrackingOptions AWS API Documentation
    #
    class TrackingOptions < Struct.new(
      :custom_redirect_domain)
      include Aws::Structure
    end

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
    #           matching_event_types: ["SEND"], # accepts SEND, REJECT, BOUNCE, COMPLAINT, DELIVERY, OPEN, CLICK, RENDERING_FAILURE
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/UpdateConfigurationSetEventDestinationRequest AWS API Documentation
    #
    class UpdateConfigurationSetEventDestinationRequest < Struct.new(
      :configuration_set_name,
      :event_destination_name,
      :event_destination)
      include Aws::Structure
    end

    # An HTTP 200 response if the request succeeds, or an error message if
    # the request fails.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/UpdateConfigurationSetEventDestinationResponse AWS API Documentation
    #
    class UpdateConfigurationSetEventDestinationResponse < Aws::EmptyStructure; end

  end
end

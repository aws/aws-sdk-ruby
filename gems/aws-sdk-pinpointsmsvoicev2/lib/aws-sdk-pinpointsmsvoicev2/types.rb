# frozen_string_literal: true

# This is generated code!

module Aws::PinpointSMSVoiceV2
  # This module contains the types returned by client operations.
  module Types

    # <p>The request was denied because you don't have sufficient permissions to access the resource.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Displays the attributes associated with a single Amazon Web Services account.</p>
    # @!attribute name
    #   <p>The name of the account attribute.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value associated with the account attribute name.</p>
    #   @return [String]
    class AccountAttribute < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The current resource quotas associated with an Amazon Web Services account.</p>
    # @!attribute name
    #   <p>The name of the attribute to apply the account limit to.</p>
    #   @return [String]
    # @!attribute used
    #   <p>The current amount that has been spent, in US dollars.</p>
    #   @return [Integer]
    # @!attribute max
    #   <p>The Amazon Web Services set limit for that resource type, in US dollars.</p>
    #   @return [Integer]
    class AccountLimit < Struct.new(
      :name,
      :used,
      :max,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:used] = 0 unless options.key?(:used)
        options[:max] = 0 unless options.key?(:max)
        super
      end
    end

    # @!attribute pool_id
    #   <p>The pool to update with the new Identity. This value can be either the PoolId or PoolArn, and you can find these values using <a>DescribePools</a>.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The origination identity to use, such as PhoneNumberId, PhoneNumberArn, SenderId, or SenderIdArn. You can use <a>DescribePhoneNumbers</a> to find the values for PhoneNumberId and PhoneNumberArn, while <a>DescribeSenderIds</a> can be used to get the values for SenderId and SenderIdArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The new two-character code, in ISO 3166-1 alpha-2 format, for the country or region of the origination identity.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class AssociateOriginationIdentityRequest < Struct.new(
      :pool_id,
      :origination_identity,
      :iso_country_code,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_arn
    #   <p>The Amazon Resource Name (ARN) of the pool that is now associated with the origination identity.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The PoolId of the pool that is now associated with the origination identity.</p>
    #   @return [String]
    # @!attribute origination_identity_arn
    #   <p>The PhoneNumberArn or SenderIdArn of the origination identity.</p>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The PhoneNumberId or SenderId of the origination identity.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>
    #   @return [String]
    class AssociateOriginationIdentityResult < Struct.new(
      :pool_arn,
      :pool_id,
      :origination_identity_arn,
      :origination_identity,
      :iso_country_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the ConfigurationSet.</p>
    #   @return [String]
    class AssociateProtectConfigurationRequest < Struct.new(
      :protect_configuration_id,
      :configuration_set_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration set.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the ConfigurationSet.</p>
    #   @return [String]
    # @!attribute protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the protect configuration.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    class AssociateProtectConfigurationResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :protect_configuration_arn,
      :protect_configuration_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the destination configuration to use when publishing message sending events. </p>
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of an Identity and Access Management role that is able to write event data to an Amazon CloudWatch destination.</p>
    #   @return [String]
    # @!attribute log_group_arn
    #   <p>The name of the Amazon CloudWatch log group that you want to record events in. </p>
    #   @return [String]
    class CloudWatchLogsDestination < Struct.new(
      :iam_role_arn,
      :log_group_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The information for configuration sets that meet a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array values to filter for.</p>
    #   @return [Array<String>]
    class ConfigurationSetFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information related to a given configuration set in your Amazon Web Services account.</p>
    # @!attribute configuration_set_arn
    #   <p>The Resource Name (ARN) of the ConfigurationSet.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the ConfigurationSet.</p>
    #   @return [String]
    # @!attribute event_destinations
    #   <p>An array of EventDestination objects that describe any events to log and where to log them.</p>
    #   @return [Array<Types::EventDestination>]
    # @!attribute default_message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [String]
    # @!attribute default_sender_id
    #   <p>The default sender ID used by the ConfigurationSet.</p>
    #   @return [String]
    # @!attribute default_message_feedback_enabled
    #   <p>True if message feedback is enabled.</p>
    #   @return [Boolean]
    # @!attribute created_timestamp
    #   <p>The time when the ConfigurationSet was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    class ConfigurationSetInformation < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :event_destinations,
      :default_message_type,
      :default_sender_id,
      :default_message_feedback_enabled,
      :created_timestamp,
      :protect_configuration_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Your request has conflicting operations. This can occur if you're trying to perform more than one operation on the same resource at the same time or it could be that the requested action isn't valid for the current state or configuration of the resource.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource that caused the exception.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier of the request.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :reason,
      :resource_type,
      :resource_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The name to use for the new configuration set.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of key and value pair tags that's associated with the new configuration set. </p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class CreateConfigurationSetRequest < Struct.new(
      :configuration_set_name,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the newly created configuration set.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the new configuration set.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of key and value pair tags that's associated with the configuration set.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_timestamp
    #   <p>The time when the configuration set was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class CreateConfigurationSetResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :tags,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   <p>Either the name of the configuration set or the configuration set ARN to apply event logging to. The ConfigurateSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>
    #   @return [String]
    # @!attribute event_destination_name
    #   <p>The name that identifies the event destination.</p>
    #   @return [String]
    # @!attribute matching_event_types
    #   <p>An array of event types that determine which events to log. If "ALL" is used, then AWS End User Messaging SMS and Voice logs every event type.</p> <note> <p>The <code>TEXT_SENT</code> event type is not supported.</p> </note>
    #   @return [Array<String>]
    # @!attribute cloud_watch_logs_destination
    #   <p>An object that contains information about an event destination for logging to Amazon CloudWatch Logs.</p>
    #   @return [Types::CloudWatchLogsDestination]
    # @!attribute kinesis_firehose_destination
    #   <p>An object that contains information about an event destination for logging to Amazon Data Firehose.</p>
    #   @return [Types::KinesisFirehoseDestination]
    # @!attribute sns_destination
    #   <p>An object that contains information about an event destination for logging to Amazon SNS.</p>
    #   @return [Types::SnsDestination]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class CreateEventDestinationRequest < Struct.new(
      :configuration_set_name,
      :event_destination_name,
      :matching_event_types,
      :cloud_watch_logs_destination,
      :kinesis_firehose_destination,
      :sns_destination,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The ARN of the configuration set.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set.</p>
    #   @return [String]
    # @!attribute event_destination
    #   <p>The details of the destination where events are logged.</p>
    #   @return [Types::EventDestination]
    class CreateEventDestinationResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :event_destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_list_name
    #   <p>The name of the new OptOutList.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) to associate with the new OptOutList.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class CreateOptOutListRequest < Struct.new(
      :opt_out_list_name,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_list_arn
    #   <p>The Amazon Resource Name (ARN) for the OptOutList.</p>
    #   @return [String]
    # @!attribute opt_out_list_name
    #   <p>The name of the new OptOutList.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) associated with the new OptOutList.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_timestamp
    #   <p>The time when the pool was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class CreateOptOutListResult < Struct.new(
      :opt_out_list_arn,
      :opt_out_list_name,
      :tags,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or SenderIdArn. You can use <a>DescribePhoneNumbers</a> to find the values for PhoneNumberId and PhoneNumberArn while <a>DescribeSenderIds</a> can be used to get the values for SenderId and SenderIdArn.</p> <p>After the pool is created you can add more origination identities to the pool by using <a href="https://docs.aws.amazon.com/pinpoint/latest/apireference_smsvoicev2/API_AssociateOriginationIdentity.html">AssociateOriginationIdentity</a>.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The new two-character code, in ISO 3166-1 alpha-2 format, for the country or region of the new pool.</p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive. After the pool is created the MessageType can't be changed.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the pool can't be deleted. You can change this value using the <a>UpdatePool</a> action.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) associated with the pool.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class CreatePoolRequest < Struct.new(
      :origination_identity,
      :iso_country_code,
      :message_type,
      :deletion_protection_enabled,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_arn
    #   <p>The Amazon Resource Name (ARN) for the pool.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The unique identifier for the pool.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the pool.</p> <ul> <li> <p>CREATING: The pool is currently being created and isn't yet available for use.</p> </li> <li> <p>ACTIVE: The pool is active and available for use.</p> </li> <li> <p>DELETING: The pool is being deleted.</p> </li> </ul>
    #   @return [String]
    # @!attribute message_type
    #   <p>The type of message for the pool to use.</p>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList associated with the pool.</p>
    #   @return [String]
    # @!attribute shared_routes_enabled
    #   <p>Indicates whether shared routes are enabled for the pool. Set to false and only origination identities in this pool are used to send messages. </p>
    #   @return [Boolean]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true deletion protection is enabled. By default this is set to false. </p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) associated with the pool.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_timestamp
    #   <p>The time when the pool was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class CreatePoolResult < Struct.new(
      :pool_arn,
      :pool_id,
      :status,
      :message_type,
      :two_way_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :shared_routes_enabled,
      :deletion_protection_enabled,
      :tags,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:two_way_enabled] = false unless options.key?(:two_way_enabled)
        options[:self_managed_opt_outs_enabled] = false unless options.key?(:self_managed_opt_outs_enabled)
        options[:shared_routes_enabled] = false unless options.key?(:shared_routes_enabled)
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true deletion protection is enabled. By default this is set to false. </p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>An array of key and value pair tags that are associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class CreateProtectConfigurationRequest < Struct.new(
      :client_token,
      :deletion_protection_enabled,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the protect configuration.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the protect configuration was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute account_default
    #   <p>This is true if the protect configuration is set as your account default protect configuration.</p>
    #   @return [Boolean]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true deletion protection is enabled. By default this is set to false. </p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>An array of key and value pair tags that are associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class CreateProtectConfigurationResult < Struct.new(
      :protect_configuration_arn,
      :protect_configuration_id,
      :created_timestamp,
      :account_default,
      :deletion_protection_enabled,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:account_default] = false unless options.key?(:account_default)
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier for the origination identity. For example this could be a <b>PhoneNumberId</b> or <b>SenderId</b>.</p>
    #   @return [String]
    class CreateRegistrationAssociationRequest < Struct.new(
      :registration_id,
      :resource_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute registration_type
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the origination identity that is associated with the registration. </p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier for the origination identity. For example this could be a <b>PhoneNumberId</b> or <b>SenderId</b>.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The registration type or origination identity type.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number associated with the registration in E.164 format.</p>
    #   @return [String]
    class CreateRegistrationAssociationResult < Struct.new(
      :registration_arn,
      :registration_id,
      :registration_type,
      :resource_arn,
      :resource_id,
      :resource_type,
      :iso_country_code,
      :phone_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment_body
    #   <p>The registration file to upload. The maximum file size is 500KB and valid file extensions are PDF, JPEG and PNG.</p>
    #   @return [String]
    # @!attribute attachment_url
    #   <p>Registration files have to be stored in an Amazon S3 bucket. The URI to use when sending is in the format <code>s3://BucketName/FileName</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) to associate with the registration attachment.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class CreateRegistrationAttachmentRequest < Struct.new(
      :attachment_body,
      :attachment_url,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_attachment_arn
    #   <p>The Amazon Resource Name (ARN) for the registration attachment.</p>
    #   @return [String]
    # @!attribute registration_attachment_id
    #   <p>The unique identifier for the registration attachment.</p>
    #   @return [String]
    # @!attribute attachment_status
    #   <p>The status of the registration attachment. </p> <ul> <li> <p> <code>UPLOAD_IN_PROGRESS</code> The attachment is being uploaded.</p> </li> <li> <p> <code>UPLOAD_COMPLETE</code> The attachment has been uploaded.</p> </li> <li> <p> <code>UPLOAD_FAILED</code> The attachment failed to uploaded.</p> </li> <li> <p> <code>DELETED</code> The attachment has been deleted..</p> </li> </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) to associate with the registration attachment.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_timestamp
    #   <p>The time when the registration attachment was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class CreateRegistrationAttachmentResult < Struct.new(
      :registration_attachment_arn,
      :registration_attachment_id,
      :attachment_status,
      :tags,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_type
    #   <p>The type of registration form to create. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) to associate with the registration.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class CreateRegistrationRequest < Struct.new(
      :registration_type,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute registration_type
    #   <p>The type of registration form to create. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [String]
    # @!attribute registration_status
    #   <p>The status of the registration.</p> <ul> <li> <p> <code>CLOSED</code>: The phone number or sender ID has been deleted and you must also delete the registration for the number.</p> </li> <li> <p> <code>CREATED</code>: Your registration is created but not submitted.</p> </li> <li> <p> <code>COMPLETE</code>: Your registration has been approved and your origination identity has been created.</p> </li> <li> <p> <code>DELETED</code>: The registration has been deleted.</p> </li> <li> <p> <code>PROVISIONING</code>: Your registration has been approved and your origination identity is being created.</p> </li> <li> <p> <code>REQUIRES_AUTHENTICATION</code>: You need to complete email authentication.</p> </li> <li> <p> <code>REQUIRES_UPDATES</code>: You must fix your registration and resubmit it.</p> </li> <li> <p> <code>REVIEWING</code>: Your registration has been accepted and is being reviewed.</p> </li> <li> <p> <code>SUBMITTED</code>: Your registration has been submitted and is awaiting review.</p> </li> </ul>
    #   @return [String]
    # @!attribute current_version_number
    #   <p>The current version number of the registration.</p>
    #   @return [Integer]
    # @!attribute additional_attributes
    #   <p>Metadata about a given registration which is specific to that registration type.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) to associate with the registration.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_timestamp
    #   <p>The time when the registration was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class CreateRegistrationResult < Struct.new(
      :registration_arn,
      :registration_id,
      :registration_type,
      :registration_status,
      :current_version_number,
      :additional_attributes,
      :tags,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    class CreateRegistrationVersionRequest < Struct.new(
      :registration_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The new version number of the registration.</p>
    #   @return [Integer]
    # @!attribute registration_version_status
    #   <p>The status of the registration.</p> <ul> <li> <p> <code>APPROVED</code>: Your registration has been approved.</p> </li> <li> <p> <code>ARCHIVED</code>: Your previously approved registration version moves into this status when a more recently submitted version is approved.</p> </li> <li> <p> <code>DENIED</code>: You must fix your registration and resubmit it.</p> </li> <li> <p> <code>DISCARDED</code>: You've abandon this version of their registration to start over with a new version. </p> </li> <li> <p> <code>DRAFT</code>: The initial status of a registration version after it’s created.</p> </li> <li> <p> <code>REQUIRES_AUTHENTICATION</code>: You need to complete email authentication.</p> </li> <li> <p> <code>REVIEWING</code>: Your registration has been accepted and is being reviewed.</p> </li> <li> <p> <code>REVOKED</code>: Your previously approved registration has been revoked.</p> </li> <li> <p> <code>SUBMITTED</code>: Your registration has been submitted.</p> </li> </ul>
    #   @return [String]
    # @!attribute registration_version_status_history
    #   <p>A <b>RegistrationVersionStatusHistory</b> object that contains timestamps for the registration.</p>
    #   @return [Types::RegistrationVersionStatusHistory]
    class CreateRegistrationVersionResult < Struct.new(
      :registration_arn,
      :registration_id,
      :version_number,
      :registration_version_status,
      :registration_version_status_history,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_phone_number
    #   <p>The verified destination phone number, in E.164 format.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) to associate with the destination number.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class CreateVerifiedDestinationNumberRequest < Struct.new(
      :destination_phone_number,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute verified_destination_number_arn
    #   <p>The Amazon Resource Name (ARN) for the verified destination phone number.</p>
    #   @return [String]
    # @!attribute verified_destination_number_id
    #   <p>The unique identifier for the verified destination phone number.</p>
    #   @return [String]
    # @!attribute destination_phone_number
    #   <p>The verified destination phone number, in E.164 format.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the verified destination phone number.</p> <ul> <li> <p> <code>PENDING</code>: The phone number hasn't been verified yet.</p> </li> <li> <p> <code>VERIFIED</code>: The phone number is verified and can receive messages.</p> </li> </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) to associate with the destination number.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_timestamp
    #   <p>The time when the verified phone number was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class CreateVerifiedDestinationNumberResult < Struct.new(
      :verified_destination_number_arn,
      :verified_destination_number_id,
      :destination_phone_number,
      :status,
      :tags,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteAccountDefaultProtectConfigurationRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute default_protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the account default protect configuration.</p>
    #   @return [String]
    # @!attribute default_protect_configuration_id
    #   <p>The unique identifier of the account default protect configuration.</p>
    #   @return [String]
    class DeleteAccountDefaultProtectConfigurationResult < Struct.new(
      :default_protect_configuration_arn,
      :default_protect_configuration_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The name of the configuration set or the configuration set ARN that you want to delete. The ConfigurationSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>
    #   @return [String]
    class DeleteConfigurationSetRequest < Struct.new(
      :configuration_set_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the deleted configuration set.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the deleted configuration set.</p>
    #   @return [String]
    # @!attribute event_destinations
    #   <p>An array of any EventDestination objects that were associated with the deleted configuration set.</p>
    #   @return [Array<Types::EventDestination>]
    # @!attribute default_message_type
    #   <p>The default message type of the configuration set that was deleted.</p>
    #   @return [String]
    # @!attribute default_sender_id
    #   <p>The default Sender ID of the configuration set that was deleted.</p>
    #   @return [String]
    # @!attribute default_message_feedback_enabled
    #   <p>True if the configuration set has message feedback enabled. By default this is set to false. </p>
    #   @return [Boolean]
    # @!attribute created_timestamp
    #   <p>The time that the deleted configuration set was created in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class DeleteConfigurationSetResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :event_destinations,
      :default_message_type,
      :default_sender_id,
      :default_message_feedback_enabled,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The name of the configuration set or the configuration set Amazon Resource Name (ARN) to delete the default message type from. The ConfigurationSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>
    #   @return [String]
    class DeleteDefaultMessageTypeRequest < Struct.new(
      :configuration_set_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration set.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set.</p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The current message type for the configuration set.</p>
    #   @return [String]
    class DeleteDefaultMessageTypeResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :message_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The name of the configuration set or the configuration set Amazon Resource Name (ARN) to delete the default sender ID from. The ConfigurationSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>
    #   @return [String]
    class DeleteDefaultSenderIdRequest < Struct.new(
      :configuration_set_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration set.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set.</p>
    #   @return [String]
    # @!attribute sender_id
    #   <p>The current sender ID for the configuration set.</p>
    #   @return [String]
    class DeleteDefaultSenderIdResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :sender_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The name of the configuration set or the configuration set's Amazon Resource Name (ARN) to remove the event destination from. The ConfigurateSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>
    #   @return [String]
    # @!attribute event_destination_name
    #   <p>The name of the event destination to delete.</p>
    #   @return [String]
    class DeleteEventDestinationRequest < Struct.new(
      :configuration_set_name,
      :event_destination_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration set.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set the event destination was deleted from.</p>
    #   @return [String]
    # @!attribute event_destination
    #   <p>The event destination object that was deleted.</p>
    #   @return [Types::EventDestination]
    class DeleteEventDestinationResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :event_destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, PoolId or PoolArn. You can use <a>DescribePhoneNumbers</a> to find the values for PhoneNumberId and PhoneNumberArn and <a>DescribePools</a> to find the values of PoolId and PoolArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute keyword
    #   <p>The keyword to delete.</p>
    #   @return [String]
    class DeleteKeywordRequest < Struct.new(
      :origination_identity,
      :keyword,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination_identity_arn
    #   <p>The PhoneNumberArn or PoolArn that the keyword was associated with.</p>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The PhoneNumberId or PoolId that the keyword was associated with.</p>
    #   @return [String]
    # @!attribute keyword
    #   <p>The keyword that was deleted.</p>
    #   @return [String]
    # @!attribute keyword_message
    #   <p>The message that was associated with the deleted keyword.</p>
    #   @return [String]
    # @!attribute keyword_action
    #   <p>The action that was associated with the deleted keyword.</p>
    #   @return [String]
    class DeleteKeywordResult < Struct.new(
      :origination_identity_arn,
      :origination_identity,
      :keyword,
      :keyword_message,
      :keyword_action,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteMediaMessageSpendLimitOverrideRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The current monthly limit, in US dollars.</p>
    #   @return [Integer]
    class DeleteMediaMessageSpendLimitOverrideResult < Struct.new(
      :monthly_limit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_list_name
    #   <p>The OptOutListName or OptOutListArn of the OptOutList to delete. You can use <a>DescribeOptOutLists</a> to find the values for OptOutListName and OptOutListArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    class DeleteOptOutListRequest < Struct.new(
      :opt_out_list_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_list_arn
    #   <p>The Amazon Resource Name (ARN) of the OptOutList that was removed.</p>
    #   @return [String]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList that was removed.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the OptOutList was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class DeleteOptOutListResult < Struct.new(
      :opt_out_list_arn,
      :opt_out_list_name,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_list_name
    #   <p>The OptOutListName or OptOutListArn to remove the phone number from.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute opted_out_number
    #   <p>The phone number, in E.164 format, to remove from the OptOutList.</p>
    #   @return [String]
    class DeleteOptedOutNumberRequest < Struct.new(
      :opt_out_list_name,
      :opted_out_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_list_arn
    #   <p>The OptOutListArn that the phone number was removed from.</p>
    #   @return [String]
    # @!attribute opt_out_list_name
    #   <p>The OptOutListName that the phone number was removed from.</p>
    #   @return [String]
    # @!attribute opted_out_number
    #   <p>The phone number that was removed from the OptOutList.</p>
    #   @return [String]
    # @!attribute opted_out_timestamp
    #   <p>The time that the number was removed at, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute end_user_opted_out
    #   <p>This is true if it was the end user who requested their phone number be removed. </p>
    #   @return [Boolean]
    class DeleteOptedOutNumberResult < Struct.new(
      :opt_out_list_arn,
      :opt_out_list_name,
      :opted_out_number,
      :opted_out_timestamp,
      :end_user_opted_out,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:end_user_opted_out] = false unless options.key?(:end_user_opted_out)
        super
      end
    end

    # @!attribute pool_id
    #   <p>The PoolId or PoolArn of the pool to delete. You can use <a>DescribePools</a> to find the values for PoolId and PoolArn .</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    class DeletePoolRequest < Struct.new(
      :pool_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_arn
    #   <p>The Amazon Resource Name (ARN) of the pool that was deleted.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The PoolId of the pool that was deleted.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the pool.</p> <ul> <li> <p>CREATING: The pool is currently being created and isn't yet available for use.</p> </li> <li> <p>ACTIVE: The pool is active and available for use.</p> </li> <li> <p>DELETING: The pool is being deleted.</p> </li> </ul>
    #   @return [String]
    # @!attribute message_type
    #   <p>The message type that was associated with the deleted pool.</p>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the TwoWayChannel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList that was associated with the deleted pool.</p>
    #   @return [String]
    # @!attribute shared_routes_enabled
    #   <p>Indicates whether shared routes are enabled for the pool.</p>
    #   @return [Boolean]
    # @!attribute created_timestamp
    #   <p>The time when the pool was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class DeletePoolResult < Struct.new(
      :pool_arn,
      :pool_id,
      :status,
      :message_type,
      :two_way_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :shared_routes_enabled,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:two_way_enabled] = false unless options.key?(:two_way_enabled)
        options[:self_managed_opt_outs_enabled] = false unless options.key?(:self_managed_opt_outs_enabled)
        options[:shared_routes_enabled] = false unless options.key?(:shared_routes_enabled)
        super
      end
    end

    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    class DeleteProtectConfigurationRequest < Struct.new(
      :protect_configuration_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the protect configuration.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the protect configuration was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute account_default
    #   <p>This is true if the protect configuration is set as your account default protect configuration.</p>
    #   @return [Boolean]
    # @!attribute deletion_protection_enabled
    #   <p>The status of deletion protection for the protect configuration. When set to true deletion protection is enabled. By default this is set to false. </p>
    #   @return [Boolean]
    class DeleteProtectConfigurationResult < Struct.new(
      :protect_configuration_arn,
      :protect_configuration_id,
      :created_timestamp,
      :account_default,
      :deletion_protection_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:account_default] = false unless options.key?(:account_default)
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #   @return [String]
    class DeleteProtectConfigurationRuleSetNumberOverrideRequest < Struct.new(
      :protect_configuration_id,
      :destination_phone_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the protect configuration.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the rule was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute action
    #   <p>The action associated with the rule.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute expiration_timestamp
    #   <p>The time when the resource-based policy was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class DeleteProtectConfigurationRuleSetNumberOverrideResult < Struct.new(
      :protect_configuration_arn,
      :protect_configuration_id,
      :destination_phone_number,
      :created_timestamp,
      :action,
      :iso_country_code,
      :expiration_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_attachment_id
    #   <p>The unique identifier for the registration attachment.</p>
    #   @return [String]
    class DeleteRegistrationAttachmentRequest < Struct.new(
      :registration_attachment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_attachment_arn
    #   <p>The Amazon Resource Name (ARN) for the registration attachment.</p>
    #   @return [String]
    # @!attribute registration_attachment_id
    #   <p>The unique identifier for the registration attachment.</p>
    #   @return [String]
    # @!attribute attachment_status
    #   <p>The status of the registration attachment. </p> <ul> <li> <p> <code>UPLOAD_IN_PROGRESS</code> The attachment is being uploaded.</p> </li> <li> <p> <code>UPLOAD_COMPLETE</code> The attachment has been uploaded.</p> </li> <li> <p> <code>UPLOAD_FAILED</code> The attachment failed to uploaded.</p> </li> <li> <p> <code>DELETED</code> The attachment has been deleted..</p> </li> </ul>
    #   @return [String]
    # @!attribute attachment_upload_error_reason
    #   <p>The error message if the upload failed.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the registration attachment was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class DeleteRegistrationAttachmentResult < Struct.new(
      :registration_attachment_arn,
      :registration_attachment_id,
      :attachment_status,
      :attachment_upload_error_reason,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute field_path
    #   <p>The path to the registration form field. You can use <a>DescribeRegistrationFieldDefinitions</a> for a list of <b>FieldPaths</b>.</p>
    #   @return [String]
    class DeleteRegistrationFieldValueRequest < Struct.new(
      :registration_id,
      :field_path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number of the registration.</p>
    #   @return [Integer]
    # @!attribute field_path
    #   <p>The path to the registration form field.</p>
    #   @return [String]
    # @!attribute select_choices
    #   <p>An array of values for the form field.</p>
    #   @return [Array<String>]
    # @!attribute text_value
    #   <p>The text data for a free form field.</p>
    #   @return [String]
    # @!attribute registration_attachment_id
    #   <p>The unique identifier for the registration attachment.</p>
    #   @return [String]
    class DeleteRegistrationFieldValueResult < Struct.new(
      :registration_arn,
      :registration_id,
      :version_number,
      :field_path,
      :select_choices,
      :text_value,
      :registration_attachment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    class DeleteRegistrationRequest < Struct.new(
      :registration_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute registration_type
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [String]
    # @!attribute registration_status
    #   <p>The status of the registration.</p> <ul> <li> <p> <code>CLOSED</code>: The phone number or sender ID has been deleted and you must also delete the registration for the number.</p> </li> <li> <p> <code>CREATED</code>: Your registration is created but not submitted.</p> </li> <li> <p> <code>COMPLETE</code>: Your registration has been approved and your origination identity has been created.</p> </li> <li> <p> <code>DELETED</code>: The registration has been deleted.</p> </li> <li> <p> <code>PROVISIONING</code>: Your registration has been approved and your origination identity is being created.</p> </li> <li> <p> <code>REQUIRES_AUTHENTICATION</code>: You need to complete email authentication.</p> </li> <li> <p> <code>REQUIRES_UPDATES</code>: You must fix your registration and resubmit it.</p> </li> <li> <p> <code>REVIEWING</code>: Your registration has been accepted and is being reviewed.</p> </li> <li> <p> <code>SUBMITTED</code>: Your registration has been submitted and is awaiting review.</p> </li> </ul>
    #   @return [String]
    # @!attribute current_version_number
    #   <p>The current version number of the registration.</p>
    #   @return [Integer]
    # @!attribute approved_version_number
    #   <p>The version number of the registration that was approved.</p>
    #   @return [Integer]
    # @!attribute latest_denied_version_number
    #   <p>The latest version number of the registration that was denied.</p>
    #   @return [Integer]
    # @!attribute additional_attributes
    #   <p>Metadata about a given registration which is specific to that registration type.</p>
    #   @return [Hash<String, String>]
    # @!attribute created_timestamp
    #   <p>The time when the registration was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class DeleteRegistrationResult < Struct.new(
      :registration_arn,
      :registration_id,
      :registration_type,
      :registration_status,
      :current_version_number,
      :approved_version_number,
      :latest_denied_version_number,
      :additional_attributes,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS End User Messaging SMS and Voice resource you're deleting the resource-based policy from.</p>
    #   @return [String]
    class DeleteResourcePolicyRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS End User Messaging SMS and Voice resource that the resource-based policy was deleted from.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON formatted resource-based policy that was deleted.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the resource-based policy was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class DeleteResourcePolicyResult < Struct.new(
      :resource_arn,
      :policy,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteTextMessageSpendLimitOverrideRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The current monthly limit, in US dollars.</p>
    #   @return [Integer]
    class DeleteTextMessageSpendLimitOverrideResult < Struct.new(
      :monthly_limit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute verified_destination_number_id
    #   <p>The unique identifier for the verified destination phone number.</p>
    #   @return [String]
    class DeleteVerifiedDestinationNumberRequest < Struct.new(
      :verified_destination_number_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute verified_destination_number_arn
    #   <p>The Amazon Resource Name (ARN) for the verified destination phone number.</p>
    #   @return [String]
    # @!attribute verified_destination_number_id
    #   <p>The unique identifier for the verified destination phone number.</p>
    #   @return [String]
    # @!attribute destination_phone_number
    #   <p>The verified destination phone number, in E.164 format.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the destination phone number was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class DeleteVerifiedDestinationNumberResult < Struct.new(
      :verified_destination_number_arn,
      :verified_destination_number_id,
      :destination_phone_number,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteVoiceMessageSpendLimitOverrideRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The current monthly limit, in US dollars.</p>
    #   @return [Integer]
    class DeleteVoiceMessageSpendLimitOverrideResult < Struct.new(
      :monthly_limit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeAccountAttributesRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_attributes
    #   <p>An array of AccountAttributes objects.</p>
    #   @return [Array<Types::AccountAttribute>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribeAccountAttributesResult < Struct.new(
      :account_attributes,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeAccountLimitsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_limits
    #   <p>An array of AccountLimit objects that show the current spend limits.</p>
    #   @return [Array<Types::AccountLimit>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribeAccountLimitsResult < Struct.new(
      :account_limits,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_names
    #   <p>An array of strings. Each element can be either a ConfigurationSetName or ConfigurationSetArn.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of filters to apply to the results that are returned.</p>
    #   @return [Array<Types::ConfigurationSetFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeConfigurationSetsRequest < Struct.new(
      :configuration_set_names,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_sets
    #   <p>An array of ConfigurationSets objects.</p>
    #   @return [Array<Types::ConfigurationSetInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribeConfigurationSetsResult < Struct.new(
      :configuration_sets,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or SenderIdArn. You can use <a>DescribePhoneNumbers</a> to find the values for PhoneNumberId and PhoneNumberArn while <a>DescribeSenderIds</a> can be used to get the values for SenderId and SenderIdArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute keywords
    #   <p>An array of keywords to search for.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of keyword filters to filter the results.</p>
    #   @return [Array<Types::KeywordFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeKeywordsRequest < Struct.new(
      :origination_identity,
      :keywords,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination_identity_arn
    #   <p>The PhoneNumberArn or PoolArn that is associated with the OriginationIdentity. </p>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The PhoneNumberId or PoolId that is associated with the OriginationIdentity.</p>
    #   @return [String]
    # @!attribute keywords
    #   <p>An array of KeywordInformation objects that contain the results.</p>
    #   @return [Array<Types::KeywordInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribeKeywordsResult < Struct.new(
      :origination_identity_arn,
      :origination_identity,
      :keywords,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_list_names
    #   <p>The OptOutLists to show the details of. This is an array of strings that can be either the OptOutListName or OptOutListArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    # @!attribute owner
    #   <p>Use <code>SELF</code> to filter the list of Opt-Out List to ones your account owns or use <code>SHARED</code> to filter on Opt-Out List shared with your account. The <code>Owner</code> and <code>OptOutListNames</code> parameters can't be used at the same time.</p>
    #   @return [String]
    class DescribeOptOutListsRequest < Struct.new(
      :opt_out_list_names,
      :next_token,
      :max_results,
      :owner,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_lists
    #   <p>An array of OptOutListInformation objects that contain the details for the requested OptOutLists.</p>
    #   @return [Array<Types::OptOutListInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribeOptOutListsResult < Struct.new(
      :opt_out_lists,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_list_name
    #   <p>The OptOutListName or OptOutListArn of the OptOutList. You can use <a>DescribeOptOutLists</a> to find the values for OptOutListName and OptOutListArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute opted_out_numbers
    #   <p>An array of phone numbers to search for in the OptOutList.</p> <p>If you specify an opted out number that isn't valid, an exception is returned.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of OptedOutFilter objects to filter the results on.</p>
    #   @return [Array<Types::OptedOutFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeOptedOutNumbersRequest < Struct.new(
      :opt_out_list_name,
      :opted_out_numbers,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_list_arn
    #   <p>The Amazon Resource Name (ARN) of the OptOutList.</p>
    #   @return [String]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList.</p>
    #   @return [String]
    # @!attribute opted_out_numbers
    #   <p>An array of OptedOutNumbersInformation objects that provide information about the requested OptedOutNumbers.</p>
    #   @return [Array<Types::OptedOutNumberInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribeOptedOutNumbersResult < Struct.new(
      :opt_out_list_arn,
      :opt_out_list_name,
      :opted_out_numbers,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_ids
    #   <p>The unique identifier of phone numbers to find information about. This is an array of strings that can be either the PhoneNumberId or PhoneNumberArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of PhoneNumberFilter objects to filter the results.</p>
    #   @return [Array<Types::PhoneNumberFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    # @!attribute owner
    #   <p>Use <code>SELF</code> to filter the list of phone numbers to ones your account owns or use <code>SHARED</code> to filter on phone numbers shared with your account. The <code>Owner</code> and <code>PhoneNumberIds</code> parameters can't be used at the same time.</p>
    #   @return [String]
    class DescribePhoneNumbersRequest < Struct.new(
      :phone_number_ids,
      :filters,
      :next_token,
      :max_results,
      :owner,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_numbers
    #   <p>An array of PhoneNumberInformation objects that contain the details for the requested phone numbers.</p>
    #   @return [Array<Types::PhoneNumberInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribePhoneNumbersResult < Struct.new(
      :phone_numbers,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_ids
    #   <p>The unique identifier of pools to find. This is an array of strings that can be either the PoolId or PoolArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of PoolFilter objects to filter the results.</p>
    #   @return [Array<Types::PoolFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    # @!attribute owner
    #   <p>Use <code>SELF</code> to filter the list of Pools to ones your account owns or use <code>SHARED</code> to filter on Pools shared with your account. The <code>Owner</code> and <code>PoolIds</code> parameters can't be used at the same time.</p>
    #   @return [String]
    class DescribePoolsRequest < Struct.new(
      :pool_ids,
      :filters,
      :next_token,
      :max_results,
      :owner,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pools
    #   <p>An array of PoolInformation objects that contain the details for the requested pools. </p>
    #   @return [Array<Types::PoolInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribePoolsResult < Struct.new(
      :pools,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_ids
    #   <p>An array of protect configuration identifiers to search for.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of ProtectConfigurationFilter objects to filter the results.</p>
    #   @return [Array<Types::ProtectConfigurationFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeProtectConfigurationsRequest < Struct.new(
      :protect_configuration_ids,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configurations
    #   <p>An array of ProtectConfigurationInformation objects that contain the details for the request. </p>
    #   @return [Array<Types::ProtectConfigurationInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class DescribeProtectConfigurationsResult < Struct.new(
      :protect_configurations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_attachment_ids
    #   <p>The unique identifier of registration attachments to find. This is an array of <b>RegistrationAttachmentId</b>.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of RegistrationAttachmentFilter objects to filter the results.</p>
    #   @return [Array<Types::RegistrationAttachmentFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeRegistrationAttachmentsRequest < Struct.new(
      :registration_attachment_ids,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_attachments
    #   <p>An array of <b>RegistrationAttachments</b> objects that contain the details for the requested registration attachments. </p>
    #   @return [Array<Types::RegistrationAttachmentsInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class DescribeRegistrationAttachmentsResult < Struct.new(
      :registration_attachments,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_type
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [String]
    # @!attribute section_path
    #   <p>The path to the section of the registration.</p>
    #   @return [String]
    # @!attribute field_paths
    #   <p>An array of paths to the registration form field.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeRegistrationFieldDefinitionsRequest < Struct.new(
      :registration_type,
      :section_path,
      :field_paths,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_type
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [String]
    # @!attribute registration_field_definitions
    #   <p>An array of RegistrationFieldDefinitions objects that contain the details for the requested fields. </p>
    #   @return [Array<Types::RegistrationFieldDefinition>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class DescribeRegistrationFieldDefinitionsResult < Struct.new(
      :registration_type,
      :registration_field_definitions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number of the registration.</p>
    #   @return [Integer]
    # @!attribute section_path
    #   <p>The path to the section of the registration.</p>
    #   @return [String]
    # @!attribute field_paths
    #   <p>An array of paths to the registration form field.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeRegistrationFieldValuesRequest < Struct.new(
      :registration_id,
      :version_number,
      :section_path,
      :field_paths,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The current version of the registration.</p>
    #   @return [Integer]
    # @!attribute registration_field_values
    #   <p>An array of RegistrationFieldValues objects that contain the values for the requested registration. </p>
    #   @return [Array<Types::RegistrationFieldValueInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class DescribeRegistrationFieldValuesResult < Struct.new(
      :registration_arn,
      :registration_id,
      :version_number,
      :registration_field_values,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_type
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [String]
    # @!attribute section_paths
    #   <p>An array of paths for the registration form section.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeRegistrationSectionDefinitionsRequest < Struct.new(
      :registration_type,
      :section_paths,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_type
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [String]
    # @!attribute registration_section_definitions
    #   <p>An array of RegistrationSectionDefinition objects.</p>
    #   @return [Array<Types::RegistrationSectionDefinition>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class DescribeRegistrationSectionDefinitionsResult < Struct.new(
      :registration_type,
      :registration_section_definitions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_types
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of RegistrationFilter objects to filter the results.</p>
    #   @return [Array<Types::RegistrationTypeFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeRegistrationTypeDefinitionsRequest < Struct.new(
      :registration_types,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_type_definitions
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [Array<Types::RegistrationTypeDefinition>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class DescribeRegistrationTypeDefinitionsResult < Struct.new(
      :registration_type_definitions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute version_numbers
    #   <p>An array of registration version numbers.</p>
    #   @return [Array<Integer>]
    # @!attribute filters
    #   <p>An array of RegistrationVersionFilter objects to filter the results.</p>
    #   @return [Array<Types::RegistrationVersionFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeRegistrationVersionsRequest < Struct.new(
      :registration_id,
      :version_numbers,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute registration_versions
    #   <p>An array of RegistrationVersions objects.</p>
    #   @return [Array<Types::RegistrationVersionInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class DescribeRegistrationVersionsResult < Struct.new(
      :registration_arn,
      :registration_id,
      :registration_versions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_ids
    #   <p>An array of unique identifiers for each registration.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of RegistrationFilter objects to filter the results.</p>
    #   @return [Array<Types::RegistrationFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeRegistrationsRequest < Struct.new(
      :registration_ids,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registrations
    #   <p>An array of RegistrationInformation objects.</p>
    #   @return [Array<Types::RegistrationInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class DescribeRegistrationsResult < Struct.new(
      :registrations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute sender_ids
    #   <p>An array of SenderIdAndCountry objects to search for.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [Array<Types::SenderIdAndCountry>]
    # @!attribute filters
    #   <p>An array of SenderIdFilter objects to filter the results.</p>
    #   @return [Array<Types::SenderIdFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    # @!attribute owner
    #   <p>Use <code>SELF</code> to filter the list of Sender Ids to ones your account owns or use <code>SHARED</code> to filter on Sender Ids shared with your account. The <code>Owner</code> and <code>SenderIds</code> parameters can't be used at the same time. </p>
    #   @return [String]
    class DescribeSenderIdsRequest < Struct.new(
      :sender_ids,
      :filters,
      :next_token,
      :max_results,
      :owner,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute sender_ids
    #   <p>An array of SernderIdInformation objects that contain the details for the requested SenderIds.</p>
    #   @return [Array<Types::SenderIdInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribeSenderIdsResult < Struct.new(
      :sender_ids,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeSpendLimitsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute spend_limits
    #   <p>An array of SpendLimit objects that contain the details for the requested spend limits.</p>
    #   @return [Array<Types::SpendLimit>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class DescribeSpendLimitsResult < Struct.new(
      :spend_limits,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute verified_destination_number_ids
    #   <p>An array of VerifiedDestinationNumberid to retrieve.</p>
    #   @return [Array<String>]
    # @!attribute destination_phone_numbers
    #   <p>An array of verified destination phone number, in E.164 format.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>An array of VerifiedDestinationNumberFilter objects to filter the results.</p>
    #   @return [Array<Types::VerifiedDestinationNumberFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class DescribeVerifiedDestinationNumbersRequest < Struct.new(
      :verified_destination_number_ids,
      :destination_phone_numbers,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute verified_destination_numbers
    #   <p>An array of VerifiedDestinationNumberInformation objects</p>
    #   @return [Array<Types::VerifiedDestinationNumberInformation>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class DescribeVerifiedDestinationNumbersResult < Struct.new(
      :verified_destination_numbers,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_id
    #   <p>The unique identifier for the pool to disassociate with the origination identity. This value can be either the PoolId or PoolArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or SenderIdArn. You can use <a>DescribePhoneNumbers</a> find the values for PhoneNumberId and PhoneNumberArn, or use <a>DescribeSenderIds</a> to get the values for SenderId and SenderIdArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class DisassociateOriginationIdentityRequest < Struct.new(
      :pool_id,
      :origination_identity,
      :iso_country_code,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_arn
    #   <p>The Amazon Resource Name (ARN) of the pool.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The PoolId of the pool no longer associated with the origination identity.</p>
    #   @return [String]
    # @!attribute origination_identity_arn
    #   <p>The PhoneNumberArn or SenderIdArn of the origination identity.</p>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The PhoneNumberId or SenderId of the origination identity.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    class DisassociateOriginationIdentityResult < Struct.new(
      :pool_arn,
      :pool_id,
      :origination_identity_arn,
      :origination_identity,
      :iso_country_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the ConfigurationSet.</p>
    #   @return [String]
    class DisassociateProtectConfigurationRequest < Struct.new(
      :protect_configuration_id,
      :configuration_set_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration set.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the ConfigurationSet.</p>
    #   @return [String]
    # @!attribute protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the protect configuration.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    class DisassociateProtectConfigurationResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :protect_configuration_arn,
      :protect_configuration_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    class DiscardRegistrationVersionRequest < Struct.new(
      :registration_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number of the registration.</p>
    #   @return [Integer]
    # @!attribute registration_version_status
    #   <p>The status of the registration version.</p> <ul> <li> <p> <code>APPROVED</code>: Your registration has been approved.</p> </li> <li> <p> <code>ARCHIVED</code>: Your previously approved registration version moves into this status when a more recently submitted version is approved.</p> </li> <li> <p> <code>DENIED</code>: You must fix your registration and resubmit it.</p> </li> <li> <p> <code>DISCARDED</code>: You've abandon this version of their registration to start over with a new version. </p> </li> <li> <p> <code>DRAFT</code>: The initial status of a registration version after it’s created.</p> </li> <li> <p> <code>REQUIRES_AUTHENTICATION</code>: You need to complete email authentication.</p> </li> <li> <p> <code>REVIEWING</code>: Your registration has been accepted and is being reviewed.</p> </li> <li> <p> <code>REVOKED</code>: Your previously approved registration has been revoked.</p> </li> <li> <p> <code>SUBMITTED</code>: Your registration has been submitted.</p> </li> </ul>
    #   @return [String]
    # @!attribute registration_version_status_history
    #   <p>The <b>RegistrationVersionStatusHistory</b> object contains the time stamps for when the reservations status changes.</p>
    #   @return [Types::RegistrationVersionStatusHistory]
    class DiscardRegistrationVersionResult < Struct.new(
      :registration_arn,
      :registration_id,
      :version_number,
      :registration_version_status,
      :registration_version_status_history,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an event destination.</p> <p>Event destinations are associated with configuration sets, which enable you to publish message sending events to CloudWatch, Firehose, or Amazon SNS.</p>
    # @!attribute event_destination_name
    #   <p>The name of the EventDestination.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>When set to true events will be logged.</p>
    #   @return [Boolean]
    # @!attribute matching_event_types
    #   <p>An array of event types that determine which events to log.</p> <note> <p>The <code>TEXT_SENT</code> event type is not supported.</p> </note>
    #   @return [Array<String>]
    # @!attribute cloud_watch_logs_destination
    #   <p>An object that contains information about an event destination that sends logging events to Amazon CloudWatch logs.</p>
    #   @return [Types::CloudWatchLogsDestination]
    # @!attribute kinesis_firehose_destination
    #   <p>An object that contains information about an event destination for logging to Amazon Data Firehose.</p>
    #   @return [Types::KinesisFirehoseDestination]
    # @!attribute sns_destination
    #   <p>An object that contains information about an event destination that sends logging events to Amazon SNS.</p>
    #   @return [Types::SnsDestination]
    class EventDestination < Struct.new(
      :event_destination_name,
      :enabled,
      :matching_event_types,
      :cloud_watch_logs_destination,
      :kinesis_firehose_destination,
      :sns_destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute number_capability
    #   <p>The capability type to return the CountryRuleSet for. Valid values are <code>SMS</code>, <code>VOICE</code>, or <code>MMS</code>.</p>
    #   @return [String]
    class GetProtectConfigurationCountryRuleSetRequest < Struct.new(
      :protect_configuration_id,
      :number_capability,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the protect configuration.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute number_capability
    #   <p>The capability type associated with the returned ProtectConfigurationCountryRuleSetInformation objects.</p>
    #   @return [String]
    # @!attribute country_rule_set
    #   <p>A map of ProtectConfigurationCountryRuleSetInformation objects that contain the details for the requested NumberCapability. The Key is the two-letter ISO country code. For a list of supported ISO country codes, see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-sms-by-country.html">Supported countries and regions (SMS channel)</a> in the AWS End User Messaging SMS User Guide.</p>
    #   @return [Hash<String, Types::ProtectConfigurationCountryRuleSetInformation>]
    class GetProtectConfigurationCountryRuleSetResult < Struct.new(
      :protect_configuration_arn,
      :protect_configuration_id,
      :number_capability,
      :country_rule_set,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS End User Messaging SMS and Voice resource attached to the resource-based policy.</p>
    #   @return [String]
    class GetResourcePolicyRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS End User Messaging SMS and Voice resource attached to the resource-based policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON formatted string that contains the resource-based policy attached to the AWS End User Messaging SMS and Voice resource. </p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the resource-based policy was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class GetResourcePolicyResult < Struct.new(
      :resource_arn,
      :policy,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The API encountered an unexpected error and couldn't complete the request. You might be able to successfully issue the request again in the future.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute request_id
    #   <p>The unique identifier of the request.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      :request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The information for keywords that meet a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array values to filter for.</p>
    #   @return [Array<String>]
    class KeywordFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The information for all keywords in a pool.</p>
    # @!attribute keyword
    #   <p>The keyword as a string.</p>
    #   @return [String]
    # @!attribute keyword_message
    #   <p>A custom message that can be used with the keyword.</p>
    #   @return [String]
    # @!attribute keyword_action
    #   <p>The action to perform for the keyword.</p>
    #   @return [String]
    class KeywordInformation < Struct.new(
      :keyword,
      :keyword_message,
      :keyword_action,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the delivery stream Amazon Resource Name (ARN), and the ARN of the Identity and Access Management (IAM) role associated with a Firehose event destination.</p> <p>Event destinations, such as Firehose, are associated with configuration sets, which enable you to publish message sending events.</p>
    # @!attribute iam_role_arn
    #   <p>The ARN of an Identity and Access Management role that is able to write event data to an Amazon Data Firehose destination.</p>
    #   @return [String]
    # @!attribute delivery_stream_arn
    #   <p>The Amazon Resource Name (ARN) of the delivery stream.</p>
    #   @return [String]
    class KinesisFirehoseDestination < Struct.new(
      :iam_role_arn,
      :delivery_stream_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_id
    #   <p>The unique identifier for the pool. This value can be either the PoolId or PoolArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute filters
    #   <p>An array of PoolOriginationIdentitiesFilter objects to filter the results..</p>
    #   @return [Array<Types::PoolOriginationIdentitiesFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class ListPoolOriginationIdentitiesRequest < Struct.new(
      :pool_id,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_arn
    #   <p>The Amazon Resource Name (ARN) for the pool.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The unique PoolId of the pool.</p>
    #   @return [String]
    # @!attribute origination_identities
    #   <p>An array of any OriginationIdentityMetadata objects.</p>
    #   @return [Array<Types::OriginationIdentityMetadata>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. If this field is empty then there are no more results.</p>
    #   @return [String]
    class ListPoolOriginationIdentitiesResult < Struct.new(
      :pool_arn,
      :pool_id,
      :origination_identities,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>An array of ProtectConfigurationRuleSetNumberOverrideFilterItem objects to filter the results.</p>
    #   @return [Array<Types::ProtectConfigurationRuleSetNumberOverrideFilterItem>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class ListProtectConfigurationRuleSetNumberOverridesRequest < Struct.new(
      :protect_configuration_id,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the protect configuration.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute rule_set_number_overrides
    #   <p>An array of RuleSetNumberOverrides objects.</p>
    #   @return [Array<Types::ProtectConfigurationRuleSetNumberOverride>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class ListProtectConfigurationRuleSetNumberOverridesResult < Struct.new(
      :protect_configuration_arn,
      :protect_configuration_id,
      :rule_set_number_overrides,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>An array of RegistrationAssociationFilter to apply to the results that are returned.</p>
    #   @return [Array<Types::RegistrationAssociationFilter>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per each request.</p>
    #   @return [Integer]
    class ListRegistrationAssociationsRequest < Struct.new(
      :registration_id,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute registration_type
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [String]
    # @!attribute registration_associations
    #   <p>An array of RegistrationAssociationMetadata objects.</p>
    #   @return [Array<Types::RegistrationAssociationMetadata>]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    #   @return [String]
    class ListRegistrationAssociationsResult < Struct.new(
      :registration_arn,
      :registration_id,
      :registration_type,
      :registration_associations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to query for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of key and value pair tags that are associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResult < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The information for all OptOutList in an Amazon Web Services account.</p>
    # @!attribute opt_out_list_arn
    #   <p>The Amazon Resource Name (ARN) of the OptOutList.</p>
    #   @return [String]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the OutOutList was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class OptOutListInformation < Struct.new(
      :opt_out_list_arn,
      :opt_out_list_name,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The information for opted out numbers that meet a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array of values to filter for.</p>
    #   @return [Array<String>]
    class OptedOutFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The information for an opted out number in an Amazon Web Services account.</p>
    # @!attribute opted_out_number
    #   <p>The phone number that is opted out.</p>
    #   @return [String]
    # @!attribute opted_out_timestamp
    #   <p>The time that the op tout occurred, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute end_user_opted_out
    #   <p>This is set to true if it was the end recipient that opted out.</p>
    #   @return [Boolean]
    class OptedOutNumberInformation < Struct.new(
      :opted_out_number,
      :opted_out_timestamp,
      :end_user_opted_out,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:end_user_opted_out] = false unless options.key?(:end_user_opted_out)
        super
      end
    end

    # <p>The metadata for an origination identity associated with a pool.</p>
    # @!attribute origination_identity_arn
    #   <p>The Amazon Resource Name (ARN) associated with the origination identity.</p>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The unique identifier of the origination identity.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>
    #   @return [String]
    # @!attribute number_capabilities
    #   <p>Describes if the origination identity can be used for text messages, voice calls or both.</p>
    #   @return [Array<String>]
    # @!attribute phone_number
    #   <p>The phone number in E.164 format.</p>
    #   @return [String]
    class OriginationIdentityMetadata < Struct.new(
      :origination_identity_arn,
      :origination_identity,
      :iso_country_code,
      :number_capabilities,
      :phone_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The information for a phone number that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array values to filter for.</p>
    #   @return [Array<String>]
    class PhoneNumberFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The information for a phone number, in E.164 format, in an Amazon Web Services account.</p>
    # @!attribute phone_number_arn
    #   <p>The Amazon Resource Name (ARN) associated with the phone number.</p>
    #   @return [String]
    # @!attribute phone_number_id
    #   <p>The unique identifier for the phone number.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number in E.164 format.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the phone number.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [String]
    # @!attribute number_capabilities
    #   <p>Describes if the origination identity can be used for text messages, voice calls or both.</p>
    #   @return [Array<String>]
    # @!attribute number_type
    #   <p>The type of phone number.</p>
    #   @return [String]
    # @!attribute monthly_leasing_price
    #   <p>The price, in US dollars, to lease the phone number.</p>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients using the TwoWayChannelArn.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>When set to false an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out request. For more information see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/settings-sms-managing.html#settings-account-sms-self-managed-opt-out">Self-managed opt-outs</a> </p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList associated with the phone number.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true the phone number can't be deleted.</p>
    #   @return [Boolean]
    # @!attribute pool_id
    #   <p>The unique identifier of the pool associated with the phone number.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the phone number was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class PhoneNumberInformation < Struct.new(
      :phone_number_arn,
      :phone_number_id,
      :phone_number,
      :status,
      :iso_country_code,
      :message_type,
      :number_capabilities,
      :number_type,
      :monthly_leasing_price,
      :two_way_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :deletion_protection_enabled,
      :pool_id,
      :registration_id,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:two_way_enabled] = false unless options.key?(:two_way_enabled)
        options[:self_managed_opt_outs_enabled] = false unless options.key?(:self_managed_opt_outs_enabled)
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # <p>The information for a pool that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array values to filter for.</p>
    #   @return [Array<String>]
    class PoolFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The information for a pool in an Amazon Web Services account.</p>
    # @!attribute pool_arn
    #   <p>The Amazon Resource Name (ARN) for the pool.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The unique identifier for the pool.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the pool.</p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>When set to true you can receive incoming text messages from your end recipients using the TwoWayChannelArn.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>When set to false, an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests. For more information see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/settings-sms-managing.html#settings-account-sms-self-managed-opt-out">Self-managed opt-outs</a> </p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList associated with the pool.</p>
    #   @return [String]
    # @!attribute shared_routes_enabled
    #   <p>Allows you to enable shared routes on your pool.</p> <p>By default, this is set to <code>False</code>. If you set this value to <code>True</code>, your messages are sent using phone numbers or sender IDs (depending on the country) that are shared with other users. In some countries, such as the United States, senders aren't allowed to use shared routes and must use a dedicated phone number or short code.</p>
    #   @return [Boolean]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true the pool can't be deleted.</p>
    #   @return [Boolean]
    # @!attribute created_timestamp
    #   <p>The time when the pool was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class PoolInformation < Struct.new(
      :pool_arn,
      :pool_id,
      :status,
      :message_type,
      :two_way_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :shared_routes_enabled,
      :deletion_protection_enabled,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:two_way_enabled] = false unless options.key?(:two_way_enabled)
        options[:self_managed_opt_outs_enabled] = false unless options.key?(:self_managed_opt_outs_enabled)
        options[:shared_routes_enabled] = false unless options.key?(:shared_routes_enabled)
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # <p>Information about origination identities associated with a pool that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array values to filter for.</p>
    #   @return [Array<String>]
    class PoolOriginationIdentitiesFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The types of statuses that can be used.</p>
    # @!attribute protect_status
    #   <p>The types of protection that can be used.</p>
    #   @return [String]
    class ProtectConfigurationCountryRuleSetInformation < Struct.new(
      :protect_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The filter definition for filtering protect configurations that meet a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array of values to filter for.</p>
    #   @return [Array<String>]
    class ProtectConfigurationFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information on the specified protect configuration.</p>
    # @!attribute protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the protect configuration.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the protect configuration was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute account_default
    #   <p>This is true if the protect configuration is set as your account default protect configuration.</p>
    #   @return [Boolean]
    # @!attribute deletion_protection_enabled
    #   <p>The status of deletion protection for the protect configuration. When set to true deletion protection is enabled. By default this is set to false. </p>
    #   @return [Boolean]
    class ProtectConfigurationInformation < Struct.new(
      :protect_configuration_arn,
      :protect_configuration_id,
      :created_timestamp,
      :account_default,
      :deletion_protection_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:account_default] = false unless options.key?(:account_default)
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # <p>Provides details on phone number rule overrides for a protect configuration.</p>
    # @!attribute destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the rule was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute action
    #   <p>The action for the rule to perform of either blocking or allowing messages to the destination phone number.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute expiration_timestamp
    #   <p>The time the rule will expire at. If <code>ExpirationTimestamp</code> is not set then the rule will not expire.</p>
    #   @return [Time]
    class ProtectConfigurationRuleSetNumberOverride < Struct.new(
      :destination_phone_number,
      :created_timestamp,
      :action,
      :iso_country_code,
      :expiration_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The information for a protect configuration rule set number override that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array values to filter for.</p>
    #   @return [Array<String>]
    class ProtectConfigurationRuleSetNumberOverrideFilterItem < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or SenderIdArn. You can use <a>DescribePhoneNumbers</a> get the values for PhoneNumberId and PhoneNumberArn while <a>DescribeSenderIds</a> can be used to get the values for SenderId and SenderIdArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute keyword
    #   <p>The new keyword to add.</p>
    #   @return [String]
    # @!attribute keyword_message
    #   <p>The message associated with the keyword.</p>
    #   @return [String]
    # @!attribute keyword_action
    #   <p>The action to perform for the new keyword when it is received.</p> <ul> <li> <p>AUTOMATIC_RESPONSE: A message is sent to the recipient.</p> </li> <li> <p>OPT_OUT: Keeps the recipient from receiving future messages.</p> </li> <li> <p>OPT_IN: The recipient wants to receive future messages.</p> </li> </ul>
    #   @return [String]
    class PutKeywordRequest < Struct.new(
      :origination_identity,
      :keyword,
      :keyword_message,
      :keyword_action,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination_identity_arn
    #   <p>The PhoneNumberArn or PoolArn that the keyword was associated with.</p>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The PhoneNumberId or PoolId that the keyword was associated with.</p>
    #   @return [String]
    # @!attribute keyword
    #   <p>The keyword that was added.</p>
    #   @return [String]
    # @!attribute keyword_message
    #   <p>The message associated with the keyword.</p>
    #   @return [String]
    # @!attribute keyword_action
    #   <p>The action to perform when the keyword is used.</p>
    #   @return [String]
    class PutKeywordResult < Struct.new(
      :origination_identity_arn,
      :origination_identity,
      :keyword,
      :keyword_message,
      :keyword_action,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_id
    #   <p>The unique identifier for the message.</p>
    #   @return [String]
    # @!attribute message_feedback_status
    #   <p>Set the message feedback to be either <code>RECEIVED</code> or <code>FAILED</code>.</p>
    #   @return [String]
    class PutMessageFeedbackRequest < Struct.new(
      :message_id,
      :message_feedback_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_id
    #   <p>The unique identifier for the message.</p>
    #   @return [String]
    # @!attribute message_feedback_status
    #   <p>The current status of the message.</p>
    #   @return [String]
    class PutMessageFeedbackResult < Struct.new(
      :message_id,
      :message_feedback_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_list_name
    #   <p>The OptOutListName or OptOutListArn to add the phone number to.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute opted_out_number
    #   <p>The phone number to add to the OptOutList in E.164 format.</p>
    #   @return [String]
    class PutOptedOutNumberRequest < Struct.new(
      :opt_out_list_name,
      :opted_out_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute opt_out_list_arn
    #   <p>The OptOutListArn that the phone number was removed from.</p>
    #   @return [String]
    # @!attribute opt_out_list_name
    #   <p>The OptOutListName that the phone number was removed from.</p>
    #   @return [String]
    # @!attribute opted_out_number
    #   <p>The phone number that was added to the OptOutList.</p>
    #   @return [String]
    # @!attribute opted_out_timestamp
    #   <p>The time that the phone number was added to the OptOutList, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute end_user_opted_out
    #   <p>This is true if it was the end user who requested their phone number be removed. </p>
    #   @return [Boolean]
    class PutOptedOutNumberResult < Struct.new(
      :opt_out_list_arn,
      :opt_out_list_name,
      :opted_out_number,
      :opted_out_timestamp,
      :end_user_opted_out,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:end_user_opted_out] = false unless options.key?(:end_user_opted_out)
        super
      end
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action for the rule to either block or allow messages to the destination phone number.</p>
    #   @return [String]
    # @!attribute expiration_timestamp
    #   <p>The time the rule will expire at. If <code>ExpirationTimestamp</code> is not set then the rule does not expire.</p>
    #   @return [Time]
    class PutProtectConfigurationRuleSetNumberOverrideRequest < Struct.new(
      :client_token,
      :protect_configuration_id,
      :destination_phone_number,
      :action,
      :expiration_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the protect configuration.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the rule was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute action
    #   <p>The action for the rule to take.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute expiration_timestamp
    #   <p>The time the rule will expire at.</p>
    #   @return [Time]
    class PutProtectConfigurationRuleSetNumberOverrideResult < Struct.new(
      :protect_configuration_arn,
      :protect_configuration_id,
      :destination_phone_number,
      :created_timestamp,
      :action,
      :iso_country_code,
      :expiration_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute field_path
    #   <p>The path to the registration form field. You can use <a>DescribeRegistrationFieldDefinitions</a> for a list of <b>FieldPaths</b>.</p>
    #   @return [String]
    # @!attribute select_choices
    #   <p>An array of values for the form field.</p>
    #   @return [Array<String>]
    # @!attribute text_value
    #   <p>The text data for a free form field.</p>
    #   @return [String]
    # @!attribute registration_attachment_id
    #   <p>The unique identifier for the registration attachment.</p>
    #   @return [String]
    class PutRegistrationFieldValueRequest < Struct.new(
      :registration_id,
      :field_path,
      :select_choices,
      :text_value,
      :registration_attachment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number of the registration.</p>
    #   @return [Integer]
    # @!attribute field_path
    #   <p>The path to the registration form field. You can use <a>DescribeRegistrationFieldDefinitions</a> for a list of <b>FieldPaths</b>.</p>
    #   @return [String]
    # @!attribute select_choices
    #   <p>An array of values for the form field.</p>
    #   @return [Array<String>]
    # @!attribute text_value
    #   <p>The text data for a free form field.</p>
    #   @return [String]
    # @!attribute registration_attachment_id
    #   <p>The unique identifier for the registration attachment.</p>
    #   @return [String]
    class PutRegistrationFieldValueResult < Struct.new(
      :registration_arn,
      :registration_id,
      :version_number,
      :field_path,
      :select_choices,
      :text_value,
      :registration_attachment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS End User Messaging SMS and Voice resource to attach the resource-based policy to.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON formatted resource-based policy to attach.</p>
    #   @return [String]
    class PutResourcePolicyRequest < Struct.new(
      :resource_arn,
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS End User Messaging SMS and Voice resource attached to the resource-based policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON formatted Resource Policy.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the resource-based policy was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class PutResourcePolicyResult < Struct.new(
      :resource_arn,
      :policy,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The filter definition for filtering registrations that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array of values to filter for.</p>
    #   @return [Array<String>]
    class RegistrationAssociationFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for the origination identity that is associated with the registration.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the origination identity that is associated with the registration. </p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier for the origination identity. For example this could be a <b>PhoneNumberId</b> or <b>SenderId</b>.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The origination identity type.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number associated with the registration in E.164 format.</p>
    #   @return [String]
    class RegistrationAssociationMetadata < Struct.new(
      :resource_arn,
      :resource_id,
      :resource_type,
      :iso_country_code,
      :phone_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The filter definition for filtering registration attachments that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array of values to filter on.</p>
    #   @return [Array<String>]
    class RegistrationAttachmentFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information on the specified registration attachments.</p>
    # @!attribute registration_attachment_arn
    #   <p>The Amazon Resource Name (ARN) for the registration attachment.</p>
    #   @return [String]
    # @!attribute registration_attachment_id
    #   <p>The unique identifier for the registration attachment.</p>
    #   @return [String]
    # @!attribute attachment_status
    #   <p>The status of the registration attachment. </p> <ul> <li> <p> <code>UPLOAD_IN_PROGRESS</code> The attachment is being uploaded.</p> </li> <li> <p> <code>UPLOAD_COMPLETE</code> The attachment has been uploaded.</p> </li> <li> <p> <code>UPLOAD_FAILED</code> The attachment failed to uploaded.</p> </li> <li> <p> <code>DELETED</code> The attachment has been deleted..</p> </li> </ul>
    #   @return [String]
    # @!attribute attachment_upload_error_reason
    #   <p>A description of why the upload didn't successfully complete.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the registration attachment was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class RegistrationAttachmentsInformation < Struct.new(
      :registration_attachment_arn,
      :registration_attachment_id,
      :attachment_status,
      :attachment_upload_error_reason,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the reason a registration was rejected.</p>
    # @!attribute reason
    #   <p>The reason a registration was rejected.</p>
    #   @return [String]
    # @!attribute short_description
    #   <p>A short description of the rejection reason.</p>
    #   @return [String]
    # @!attribute long_description
    #   <p>A long description of the rejection reason.</p>
    #   @return [String]
    # @!attribute documentation_title
    #   <p>The title of the document.</p>
    #   @return [String]
    # @!attribute documentation_link
    #   <p>The link to the document.</p>
    #   @return [String]
    class RegistrationDeniedReasonInformation < Struct.new(
      :reason,
      :short_description,
      :long_description,
      :documentation_title,
      :documentation_link,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a description of the specified field.</p>
    # @!attribute section_path
    #   <p>The section path of the field.</p>
    #   @return [String]
    # @!attribute field_path
    #   <p>The path to the registration form field. You can use <a>DescribeRegistrationFieldDefinitions</a> for a list of <b>FieldPaths</b>.</p>
    #   @return [String]
    # @!attribute field_type
    #   <p>The type of field.</p>
    #   @return [String]
    # @!attribute field_requirement
    #   <p>Specifies if the field for the registration form is required, conditional or optional.</p>
    #   @return [String]
    # @!attribute select_validation
    #   <p>The validation rules for a select field.</p>
    #   @return [Types::SelectValidation]
    # @!attribute text_validation
    #   <p>The validation rules for a text field.</p>
    #   @return [Types::TextValidation]
    # @!attribute display_hints
    #   <p>An array of RegistrationFieldDisplayHints objects for the field.</p>
    #   @return [Types::RegistrationFieldDisplayHints]
    class RegistrationFieldDefinition < Struct.new(
      :section_path,
      :field_path,
      :field_type,
      :field_requirement,
      :select_validation,
      :text_validation,
      :display_hints,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides help information on the registration field.</p>
    # @!attribute title
    #   <p>The title of the display hint.</p>
    #   @return [String]
    # @!attribute short_description
    #   <p>A short description of the display hint.</p>
    #   @return [String]
    # @!attribute long_description
    #   <p>A full description of the display hint.</p>
    #   @return [String]
    # @!attribute documentation_title
    #   <p>The title of the document the display hint is associated with.</p>
    #   @return [String]
    # @!attribute documentation_link
    #   <p>The link to the document the display hint is associated with.</p>
    #   @return [String]
    # @!attribute select_option_descriptions
    #   <p>An array of SelectOptionDescription objects.</p>
    #   @return [Array<Types::SelectOptionDescription>]
    # @!attribute text_validation_description
    #   <p>The validation rules for the text field.</p>
    #   @return [String]
    # @!attribute example_text_value
    #   <p>Example text of what the value of a field should contain.</p>
    #   @return [String]
    class RegistrationFieldDisplayHints < Struct.new(
      :title,
      :short_description,
      :long_description,
      :documentation_title,
      :documentation_link,
      :select_option_descriptions,
      :text_validation_description,
      :example_text_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the values of the specified field.</p>
    # @!attribute field_path
    #   <p>The path to the registration form field. You can use <a>DescribeRegistrationFieldDefinitions</a> for a list of <b>FieldPaths</b>.</p>
    #   @return [String]
    # @!attribute select_choices
    #   <p>An array of values for the form field.</p>
    #   @return [Array<String>]
    # @!attribute text_value
    #   <p>The text data for a free form field.</p>
    #   @return [String]
    # @!attribute registration_attachment_id
    #   <p>The unique identifier for the registration attachment.</p>
    #   @return [String]
    # @!attribute denied_reason
    #   <p>A description of why the registration was denied.</p>
    #   @return [String]
    class RegistrationFieldValueInformation < Struct.new(
      :field_path,
      :select_choices,
      :text_value,
      :registration_attachment_id,
      :denied_reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The filter definition for filtering registrations that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array of values to filter on.</p>
    #   @return [Array<String>]
    class RegistrationFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the requested registration.</p>
    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute registration_type
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [String]
    # @!attribute registration_status
    #   <p>The status of the registration.</p> <ul> <li> <p> <code>CLOSED</code>: The phone number or sender ID has been deleted and you must also delete the registration for the number.</p> </li> <li> <p> <code>CREATED</code>: Your registration is created but not submitted.</p> </li> <li> <p> <code>COMPLETE</code>: Your registration has been approved and your origination identity has been created.</p> </li> <li> <p> <code>DELETED</code>: The registration has been deleted.</p> </li> <li> <p> <code>PROVISIONING</code>: Your registration has been approved and your origination identity is being created.</p> </li> <li> <p> <code>REQUIRES_AUTHENTICATION</code>: You need to complete email authentication.</p> </li> <li> <p> <code>REQUIRES_UPDATES</code>: You must fix your registration and resubmit it.</p> </li> <li> <p> <code>REVIEWING</code>: Your registration has been accepted and is being reviewed.</p> </li> <li> <p> <code>SUBMITTED</code>: Your registration has been submitted and is awaiting review.</p> </li> </ul>
    #   @return [String]
    # @!attribute current_version_number
    #   <p>The current version number of the registration.</p>
    #   @return [Integer]
    # @!attribute approved_version_number
    #   <p>The version number of the registration that was approved.</p>
    #   @return [Integer]
    # @!attribute latest_denied_version_number
    #   <p>The latest version number of the registration that was denied.</p>
    #   @return [Integer]
    # @!attribute additional_attributes
    #   <p>Metadata about a given registration which is specific to that registration type.</p>
    #   @return [Hash<String, String>]
    # @!attribute created_timestamp
    #   <p>The time when the registration was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class RegistrationInformation < Struct.new(
      :registration_arn,
      :registration_id,
      :registration_type,
      :registration_status,
      :current_version_number,
      :approved_version_number,
      :latest_denied_version_number,
      :additional_attributes,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information on the specified section definition.</p>
    # @!attribute section_path
    #   <p>The path to the section of the registration.</p>
    #   @return [String]
    # @!attribute display_hints
    #   <p>The path to the section of the registration.</p>
    #   @return [Types::RegistrationSectionDisplayHints]
    class RegistrationSectionDefinition < Struct.new(
      :section_path,
      :display_hints,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides help information on the registration section.</p>
    # @!attribute title
    #   <p>The title of the display hint.</p>
    #   @return [String]
    # @!attribute short_description
    #   <p>A short description of the display hint.</p>
    #   @return [String]
    # @!attribute long_description
    #   <p>A full description of the display hint.</p>
    #   @return [String]
    # @!attribute documentation_title
    #   <p>The title of the document the display hint is associated with.</p>
    #   @return [String]
    # @!attribute documentation_link
    #   <p>The link to the document the display hint is associated with.</p>
    #   @return [String]
    class RegistrationSectionDisplayHints < Struct.new(
      :title,
      :short_description,
      :long_description,
      :documentation_title,
      :documentation_link,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information on the supported registration type.</p>
    # @!attribute registration_type
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    #   @return [String]
    # @!attribute supported_associations
    #   <p>The supported association behavior for the registration type.</p>
    #   @return [Array<Types::SupportedAssociation>]
    # @!attribute display_hints
    #   <p>Provides help information on the registration.</p>
    #   @return [Types::RegistrationTypeDisplayHints]
    class RegistrationTypeDefinition < Struct.new(
      :registration_type,
      :supported_associations,
      :display_hints,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides help information on the registration type.</p>
    # @!attribute title
    #   <p>The title of the display hint.</p>
    #   @return [String]
    # @!attribute short_description
    #   <p>A short description of the display hint.</p>
    #   @return [String]
    # @!attribute long_description
    #   <p>A full description of the display hint.</p>
    #   @return [String]
    # @!attribute documentation_title
    #   <p>The title of the document the display hint is associated with.</p>
    #   @return [String]
    # @!attribute documentation_link
    #   <p>The link to the document the display hint is associated with.</p>
    #   @return [String]
    class RegistrationTypeDisplayHints < Struct.new(
      :title,
      :short_description,
      :long_description,
      :documentation_title,
      :documentation_link,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The filter definition for filtering registration types that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array of values to filter on.</p>
    #   @return [Array<String>]
    class RegistrationTypeFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The filter definition for filtering registration versions that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array of values to filter on.</p>
    #   @return [Array<String>]
    class RegistrationVersionFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the specified version of the registration.</p>
    # @!attribute version_number
    #   <p>The version number of the registration.</p>
    #   @return [Integer]
    # @!attribute registration_version_status
    #   <p>The status of the registration.</p> <ul> <li> <p> <code>APPROVED</code>: Your registration has been approved.</p> </li> <li> <p> <code>ARCHIVED</code>: Your previously approved registration version moves into this status when a more recently submitted version is approved.</p> </li> <li> <p> <code>DENIED</code>: You must fix your registration and resubmit it.</p> </li> <li> <p> <code>DISCARDED</code>: You've abandon this version of their registration to start over with a new version. </p> </li> <li> <p> <code>DRAFT</code>: The initial status of a registration version after it’s created.</p> </li> <li> <p> <code>REQUIRES_AUTHENTICATION</code>: You need to complete email authentication.</p> </li> <li> <p> <code>REVIEWING</code>: Your registration has been accepted and is being reviewed.</p> </li> <li> <p> <code>REVOKED</code>: Your previously approved registration has been revoked.</p> </li> <li> <p> <code>SUBMITTED</code>: Your registration has been submitted.</p> </li> </ul>
    #   @return [String]
    # @!attribute registration_version_status_history
    #   <p>The <b>RegistrationVersionStatusHistory</b> object contains the time stamps for when the reservations status changes.</p>
    #   @return [Types::RegistrationVersionStatusHistory]
    # @!attribute denied_reasons
    #   <p>An array of RegistrationDeniedReasonInformation objects. </p>
    #   @return [Array<Types::RegistrationDeniedReasonInformation>]
    class RegistrationVersionInformation < Struct.new(
      :version_number,
      :registration_version_status,
      :registration_version_status_history,
      :denied_reasons,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The <b>RegistrationVersionStatusHistory</b> object contains the time stamps for when the reservations status changes.</p>
    # @!attribute draft_timestamp
    #   <p>The time when the registration was in the draft state, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute submitted_timestamp
    #   <p>The time when the registration was in the submitted state, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute reviewing_timestamp
    #   <p>The time when the registration was in the reviewing state, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute requires_authentication_timestamp
    #   <p>The time when the registration was in the requires authentication state, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute approved_timestamp
    #   <p>The time when the registration was in the approved state, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute discarded_timestamp
    #   <p>The time when the registration was in the discarded state, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute denied_timestamp
    #   <p>The time when the registration was in the denied state, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute revoked_timestamp
    #   <p>The time when the registration was in the revoked state, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute archived_timestamp
    #   <p>The time when the registration was in the archived state, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class RegistrationVersionStatusHistory < Struct.new(
      :draft_timestamp,
      :submitted_timestamp,
      :reviewing_timestamp,
      :requires_authentication_timestamp,
      :approved_timestamp,
      :discarded_timestamp,
      :denied_timestamp,
      :revoked_timestamp,
      :archived_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_id
    #   <p>The PhoneNumberId or PhoneNumberArn of the phone number to release. You can use <a>DescribePhoneNumbers</a> to get the values for PhoneNumberId and PhoneNumberArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    class ReleasePhoneNumberRequest < Struct.new(
      :phone_number_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_arn
    #   <p>The PhoneNumberArn of the phone number that was released.</p>
    #   @return [String]
    # @!attribute phone_number_id
    #   <p>The PhoneNumberId of the phone number that was released.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number that was released.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The message type that was associated with the phone number.</p>
    #   @return [String]
    # @!attribute number_capabilities
    #   <p>Specifies if the number could be used for text messages, voice, or both.</p>
    #   @return [Array<String>]
    # @!attribute number_type
    #   <p>The type of number that was released.</p>
    #   @return [String]
    # @!attribute monthly_leasing_price
    #   <p>The monthly price of the phone number, in US dollars.</p>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the TwoWayChannel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList that was associated with the phone number.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the phone number was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class ReleasePhoneNumberResult < Struct.new(
      :phone_number_arn,
      :phone_number_id,
      :phone_number,
      :status,
      :iso_country_code,
      :message_type,
      :number_capabilities,
      :number_type,
      :monthly_leasing_price,
      :two_way_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :registration_id,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:two_way_enabled] = false unless options.key?(:two_way_enabled)
        options[:self_managed_opt_outs_enabled] = false unless options.key?(:self_managed_opt_outs_enabled)
        super
      end
    end

    # @!attribute sender_id
    #   <p>The sender ID to release.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    class ReleaseSenderIdRequest < Struct.new(
      :sender_id,
      :iso_country_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute sender_id_arn
    #   <p>The Amazon Resource Name (ARN) associated with the SenderId.</p>
    #   @return [String]
    # @!attribute sender_id
    #   <p>The sender ID that was released.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute message_types
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [Array<String>]
    # @!attribute monthly_leasing_price
    #   <p>The monthly price, in US dollars, to lease the sender ID.</p>
    #   @return [String]
    # @!attribute registered
    #   <p>True if the sender ID is registered.</p>
    #   @return [Boolean]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    class ReleaseSenderIdResult < Struct.new(
      :sender_id_arn,
      :sender_id,
      :iso_country_code,
      :message_types,
      :monthly_leasing_price,
      :registered,
      :registration_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:registered] = false unless options.key?(:registered)
        super
      end
    end

    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The type of message. Valid values are <code>TRANSACTIONAL</code> for messages that are critical or time-sensitive and <code>PROMOTIONAL</code> for messages that aren't critical or time-sensitive.</p>
    #   @return [String]
    # @!attribute number_capabilities
    #   <p>Indicates if the phone number will be used for text messages, voice messages, or both. </p>
    #   @return [Array<String>]
    # @!attribute number_type
    #   <p>The type of phone number to request.</p> <p>When you request a <code>SIMULATOR</code> phone number, you must set <b>MessageType</b> as <code>TRANSACTIONAL</code>. </p>
    #   @return [String]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList to associate with the phone number. You can use the OptOutListName or OptOutListArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The pool to associated with the phone number. You can use the PoolId or PoolArn. </p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute registration_id
    #   <p>Use this field to attach your phone number for an external registration process.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the phone number can't be deleted.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) associate with the requested phone number. </p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class RequestPhoneNumberRequest < Struct.new(
      :iso_country_code,
      :message_type,
      :number_capabilities,
      :number_type,
      :opt_out_list_name,
      :pool_id,
      :registration_id,
      :deletion_protection_enabled,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_arn
    #   <p>The Amazon Resource Name (ARN) of the requested phone number.</p>
    #   @return [String]
    # @!attribute phone_number_id
    #   <p>The unique identifier of the new phone number.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The new phone number that was requested.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [String]
    # @!attribute number_capabilities
    #   <p>Indicates if the phone number will be used for text messages, voice messages or both. </p>
    #   @return [Array<String>]
    # @!attribute number_type
    #   <p>The type of number that was released.</p>
    #   @return [String]
    # @!attribute monthly_leasing_price
    #   <p>The monthly price, in US dollars, to lease the phone number.</p>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The ARN used to identify the two way channel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList that is associated with the requested phone number.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the phone number can't be deleted. </p>
    #   @return [Boolean]
    # @!attribute pool_id
    #   <p>The unique identifier of the pool associated with the phone number </p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of key and value pair tags that are associated with the phone number.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_timestamp
    #   <p>The time when the phone number was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class RequestPhoneNumberResult < Struct.new(
      :phone_number_arn,
      :phone_number_id,
      :phone_number,
      :status,
      :iso_country_code,
      :message_type,
      :number_capabilities,
      :number_type,
      :monthly_leasing_price,
      :two_way_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :deletion_protection_enabled,
      :pool_id,
      :registration_id,
      :tags,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:two_way_enabled] = false unless options.key?(:two_way_enabled)
        options[:self_managed_opt_outs_enabled] = false unless options.key?(:self_managed_opt_outs_enabled)
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # @!attribute sender_id
    #   <p>The sender ID string to request.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute message_types
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [Array<String>]
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the sender ID can't be deleted.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) to associate with the sender ID.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    #   @return [String]
    class RequestSenderIdRequest < Struct.new(
      :sender_id,
      :iso_country_code,
      :message_types,
      :deletion_protection_enabled,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute sender_id_arn
    #   <p>The Amazon Resource Name (ARN) associated with the SenderId.</p>
    #   @return [String]
    # @!attribute sender_id
    #   <p>The sender ID that was requested.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute message_types
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [Array<String>]
    # @!attribute monthly_leasing_price
    #   <p>The monthly price, in US dollars, to lease the sender ID.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the sender ID can't be deleted.</p>
    #   @return [Boolean]
    # @!attribute registered
    #   <p>True if the sender ID is registered.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>An array of tags (key and value pairs) to associate with the sender ID.</p>
    #   @return [Array<Types::Tag>]
    class RequestSenderIdResult < Struct.new(
      :sender_id_arn,
      :sender_id,
      :iso_country_code,
      :message_types,
      :monthly_leasing_price,
      :deletion_protection_enabled,
      :registered,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        options[:registered] = false unless options.key?(:registered)
        super
      end
    end

    # <p>A requested resource couldn't be found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource that caused the exception.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier of the resource.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_type,
      :resource_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A description of each select option.</p>
    # @!attribute option
    #   <p>The value of the option.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the select option.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the option meaning.</p>
    #   @return [String]
    class SelectOptionDescription < Struct.new(
      :option,
      :title,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Validation rules for a select field.</p>
    # @!attribute min_choices
    #   <p>The minimum number of choices for the select.</p>
    #   @return [Integer]
    # @!attribute max_choices
    #   <p>The maximum number of choices for the select.</p>
    #   @return [Integer]
    # @!attribute options
    #   <p>An array of strings for the possible selection options. </p>
    #   @return [Array<String>]
    class SelectValidation < Struct.new(
      :min_choices,
      :max_choices,
      :options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute verified_destination_number_id
    #   <p>The unique identifier for the verified destination phone number.</p>
    #   @return [String]
    # @!attribute verification_channel
    #   <p>Choose to send the verification code as an SMS or voice message.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>Choose the language to use for the message.</p>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The origination identity of the message. This can be either the PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn, PoolId, or PoolArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>
    #   @return [String]
    # @!attribute context
    #   <p>You can specify custom data in this field. If you do, that data is logged to the event destination.</p>
    #   @return [Hash<String, String>]
    # @!attribute destination_country_parameters
    #   <p>This field is used for any country-specific registration requirements. Currently, this setting is only used when you send messages to recipients in India using a sender ID. For more information see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-senderid-india.html">Special requirements for sending SMS messages to recipients in India</a>. </p>
    #   @return [Hash<String, String>]
    class SendDestinationNumberVerificationCodeRequest < Struct.new(
      :verified_destination_number_id,
      :verification_channel,
      :language_code,
      :origination_identity,
      :configuration_set_name,
      :context,
      :destination_country_parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_id
    #   <p>The unique identifier for the message.</p>
    #   @return [String]
    class SendDestinationNumberVerificationCodeResult < Struct.new(
      :message_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The origination identity of the message. This can be either the PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn, PoolId, or PoolArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute message_body
    #   <p>The text body of the message.</p>
    #   @return [String]
    # @!attribute media_urls
    #   <p>An array of URLs to each media file to send. </p> <p>The media files have to be stored in an S3 bucket. Supported media file formats are listed in <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/mms-limitations-character.html">MMS file types, size and character limits</a>. For more information on creating an S3 bucket and managing objects, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/create-bucket-overview.html">Creating a bucket</a>, <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/upload-objects.html">Uploading objects</a> in the <i>Amazon S3 User Guide</i>, and <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/send-mms-message.html#send-mms-message-bucket">Setting up an Amazon S3 bucket for MMS files</a> in the <i>Amazon Web Services End User Messaging SMS User Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>
    #   @return [String]
    # @!attribute max_price
    #   <p>The maximum amount that you want to spend, in US dollars, per each MMS message.</p>
    #   @return [String]
    # @!attribute time_to_live
    #   <p>How long the media message is valid for. By default this is 72 hours.</p>
    #   @return [Integer]
    # @!attribute context
    #   <p>You can specify custom data in this field. If you do, that data is logged to the event destination.</p>
    #   @return [Hash<String, String>]
    # @!attribute dry_run
    #   <p>When set to true, the message is checked and validated, but isn't sent to the end recipient.</p>
    #   @return [Boolean]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier of the protect configuration to use.</p>
    #   @return [String]
    # @!attribute message_feedback_enabled
    #   <p>Set to true to enable message feedback for the message. When a user receives the message you need to update the message status using <a>PutMessageFeedback</a>.</p>
    #   @return [Boolean]
    class SendMediaMessageRequest < Struct.new(
      :destination_phone_number,
      :origination_identity,
      :message_body,
      :media_urls,
      :configuration_set_name,
      :max_price,
      :time_to_live,
      :context,
      :dry_run,
      :protect_configuration_id,
      :message_feedback_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_id
    #   <p>The unique identifier for the message.</p>
    #   @return [String]
    class SendMediaMessageResult < Struct.new(
      :message_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The origination identity of the message. This can be either the PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn, PoolId, or PoolArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute message_body
    #   <p>The body of the text message.</p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The type of message. Valid values are for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [String]
    # @!attribute keyword
    #   <p>When you register a short code in the US, you must specify a program name. If you don’t have a US short code, omit this attribute.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>
    #   @return [String]
    # @!attribute max_price
    #   <p>The maximum amount that you want to spend, in US dollars, per each text message. If the calculated amount to send the text message is greater than <code>MaxPrice</code>, the message is not sent and an error is returned.</p>
    #   @return [String]
    # @!attribute time_to_live
    #   <p>How long the text message is valid for, in seconds. By default this is 72 hours. If the messages isn't handed off before the TTL expires we stop attempting to hand off the message and return <code>TTL_EXPIRED</code> event.</p>
    #   @return [Integer]
    # @!attribute context
    #   <p>You can specify custom data in this field. If you do, that data is logged to the event destination.</p>
    #   @return [Hash<String, String>]
    # @!attribute destination_country_parameters
    #   <p>This field is used for any country-specific registration requirements. Currently, this setting is only used when you send messages to recipients in India using a sender ID. For more information see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-senderid-india.html">Special requirements for sending SMS messages to recipients in India</a>. </p> <ul> <li> <p> <code>IN_ENTITY_ID</code> The entity ID or Principal Entity (PE) ID that you received after completing the sender ID registration process.</p> </li> <li> <p> <code>IN_TEMPLATE_ID</code> The template ID that you received after completing the sender ID registration process.</p> <important> <p>Make sure that the Template ID that you specify matches your message template exactly. If your message doesn't match the template that you provided during the registration process, the mobile carriers might reject your message.</p> </important> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute dry_run
    #   <p>When set to true, the message is checked and validated, but isn't sent to the end recipient. You are not charged for using <code>DryRun</code>.</p> <p>The Message Parts per Second (MPS) limit when using <code>DryRun</code> is five. If your origination identity has a lower MPS limit then the lower MPS limit is used. For more information about MPS limits, see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/sms-limitations-mps.html">Message Parts per Second (MPS) limits</a> in the <i>AWS End User Messaging SMS User Guide</i>..</p>
    #   @return [Boolean]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute message_feedback_enabled
    #   <p>Set to true to enable message feedback for the message. When a user receives the message you need to update the message status using <a>PutMessageFeedback</a>.</p>
    #   @return [Boolean]
    class SendTextMessageRequest < Struct.new(
      :destination_phone_number,
      :origination_identity,
      :message_body,
      :message_type,
      :keyword,
      :configuration_set_name,
      :max_price,
      :time_to_live,
      :context,
      :destination_country_parameters,
      :dry_run,
      :protect_configuration_id,
      :message_feedback_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_id
    #   <p>The unique identifier for the message.</p>
    #   @return [String]
    class SendTextMessageResult < Struct.new(
      :message_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #   @return [String]
    # @!attribute origination_identity
    #   <p>The origination identity to use for the voice call. This can be the PhoneNumber, PhoneNumberId, PhoneNumberArn, PoolId, or PoolArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute message_body
    #   <p>The text to convert to a voice message.</p>
    #   @return [String]
    # @!attribute message_body_text_type
    #   <p>Specifies if the MessageBody field contains text or <a href="https://docs.aws.amazon.com/polly/latest/dg/what-is.html">speech synthesis markup language (SSML)</a>.</p> <ul> <li> <p>TEXT: This is the default value. When used the maximum character limit is 3000.</p> </li> <li> <p>SSML: When used the maximum character limit is 6000 including SSML tagging.</p> </li> </ul>
    #   @return [String]
    # @!attribute voice_id
    #   <p>The voice for the <a href="https://docs.aws.amazon.com/polly/latest/dg/what-is.html">Amazon Polly</a> service to use. By default this is set to "MATTHEW".</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>
    #   @return [String]
    # @!attribute max_price_per_minute
    #   <p>The maximum amount to spend per voice message, in US dollars.</p>
    #   @return [String]
    # @!attribute time_to_live
    #   <p>How long the voice message is valid for. By default this is 72 hours.</p>
    #   @return [Integer]
    # @!attribute context
    #   <p>You can specify custom data in this field. If you do, that data is logged to the event destination.</p>
    #   @return [Hash<String, String>]
    # @!attribute dry_run
    #   <p>When set to true, the message is checked and validated, but isn't sent to the end recipient.</p>
    #   @return [Boolean]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute message_feedback_enabled
    #   <p>Set to true to enable message feedback for the message. When a user receives the message you need to update the message status using <a>PutMessageFeedback</a>.</p>
    #   @return [Boolean]
    class SendVoiceMessageRequest < Struct.new(
      :destination_phone_number,
      :origination_identity,
      :message_body,
      :message_body_text_type,
      :voice_id,
      :configuration_set_name,
      :max_price_per_minute,
      :time_to_live,
      :context,
      :dry_run,
      :protect_configuration_id,
      :message_feedback_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_id
    #   <p>The unique identifier for the message.</p>
    #   @return [String]
    class SendVoiceMessageResult < Struct.new(
      :message_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The alphanumeric sender ID in a specific country that you want to describe. For more information on sender IDs see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/sender-id-request.html">Requesting sender IDs </a> in the <i>AWS End User Messaging SMS User Guide</i>.</p>
    # @!attribute sender_id
    #   <p>The unique identifier of the sender.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>
    #   @return [String]
    class SenderIdAndCountry < Struct.new(
      :sender_id,
      :iso_country_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The information for a sender ID that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array of values to filter for.</p>
    #   @return [Array<String>]
    class SenderIdFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The information for all SenderIds in an Amazon Web Services account.</p>
    # @!attribute sender_id_arn
    #   <p>The Amazon Resource Name (ARN) associated with the SenderId.</p>
    #   @return [String]
    # @!attribute sender_id
    #   <p>The alphanumeric sender ID in a specific country that you'd like to describe.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>
    #   @return [String]
    # @!attribute message_types
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [Array<String>]
    # @!attribute monthly_leasing_price
    #   <p>The monthly leasing price, in US dollars.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the sender ID can't be deleted.</p>
    #   @return [Boolean]
    # @!attribute registered
    #   <p>True if the sender ID is registered.</p>
    #   @return [Boolean]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    class SenderIdInformation < Struct.new(
      :sender_id_arn,
      :sender_id,
      :iso_country_code,
      :message_types,
      :monthly_leasing_price,
      :deletion_protection_enabled,
      :registered,
      :registration_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        options[:registered] = false unless options.key?(:registered)
        super
      end
    end

    # <p>The request would cause a service quota to be exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    class SetAccountDefaultProtectConfigurationRequest < Struct.new(
      :protect_configuration_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute default_protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the account default protect configuration.</p>
    #   @return [String]
    # @!attribute default_protect_configuration_id
    #   <p>The unique identifier of the account default protect configuration.</p>
    #   @return [String]
    class SetAccountDefaultProtectConfigurationResult < Struct.new(
      :default_protect_configuration_arn,
      :default_protect_configuration_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>
    #   @return [String]
    # @!attribute message_feedback_enabled
    #   <p>Set to true to enable message feedback.</p>
    #   @return [Boolean]
    class SetDefaultMessageFeedbackEnabledRequest < Struct.new(
      :configuration_set_name,
      :message_feedback_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The arn of the configuration set.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration.</p>
    #   @return [String]
    # @!attribute message_feedback_enabled
    #   <p>True if message feedback is enabled.</p>
    #   @return [Boolean]
    class SetDefaultMessageFeedbackEnabledResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :message_feedback_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The configuration set to update with a new default message type. This field can be the ConsigurationSetName or ConfigurationSetArn.</p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [String]
    class SetDefaultMessageTypeRequest < Struct.new(
      :configuration_set_name,
      :message_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the updated configuration set.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that was updated.</p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The new default message type of the configuration set.</p>
    #   @return [String]
    class SetDefaultMessageTypeResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :message_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The configuration set to updated with a new default SenderId. This field can be the ConsigurationSetName or ConfigurationSetArn.</p>
    #   @return [String]
    # @!attribute sender_id
    #   <p>The current sender ID for the configuration set. When sending a text message to a destination country which supports SenderIds, the default sender ID on the configuration set specified on <a>SendTextMessage</a> will be used if no dedicated origination phone numbers or registered SenderIds are available in your account, instead of a generic sender ID, such as 'NOTICE'.</p>
    #   @return [String]
    class SetDefaultSenderIdRequest < Struct.new(
      :configuration_set_name,
      :sender_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) of the updated configuration set.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set that was updated.</p>
    #   @return [String]
    # @!attribute sender_id
    #   <p>The default sender ID to set for the ConfigurationSet.</p>
    #   @return [String]
    class SetDefaultSenderIdResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :sender_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The new monthly limit to enforce on text messages.</p>
    #   @return [Integer]
    class SetMediaMessageSpendLimitOverrideRequest < Struct.new(
      :monthly_limit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The current monthly limit to enforce on sending text messages.</p>
    #   @return [Integer]
    class SetMediaMessageSpendLimitOverrideResult < Struct.new(
      :monthly_limit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The new monthly limit to enforce on text messages.</p>
    #   @return [Integer]
    class SetTextMessageSpendLimitOverrideRequest < Struct.new(
      :monthly_limit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The current monthly limit to enforce on sending text messages.</p>
    #   @return [Integer]
    class SetTextMessageSpendLimitOverrideResult < Struct.new(
      :monthly_limit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The new monthly limit to enforce on voice messages.</p>
    #   @return [Integer]
    class SetVoiceMessageSpendLimitOverrideRequest < Struct.new(
      :monthly_limit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_limit
    #   <p>The current monthly limit to enforce on sending voice messages.</p>
    #   @return [Integer]
    class SetVoiceMessageSpendLimitOverrideResult < Struct.new(
      :monthly_limit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that defines an Amazon SNS destination for events. You can use Amazon SNS to send notification when certain events occur.</p>
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic that you want to publish events to.</p>
    #   @return [String]
    class SnsDestination < Struct.new(
      :topic_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the current monthly spend limits for sending voice and text messages. For more information on increasing your monthly spend limit, see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/awssupport-spend-threshold.html"> Requesting a spending quota increase </a> in the <i>AWS End User Messaging SMS User Guide</i>. </p>
    # @!attribute name
    #   <p>The name for the SpendLimit.</p>
    #   @return [String]
    # @!attribute enforced_limit
    #   <p>The maximum amount of money, in US dollars, that you want to be able to spend sending messages each month. This value has to be less than or equal to the amount in <code>MaxLimit</code>. To use this custom limit, <code>Overridden</code> must be set to true.</p>
    #   @return [Integer]
    # @!attribute max_limit
    #   <p> The maximum amount of money that you are able to spend to send messages each month, in US dollars.</p>
    #   @return [Integer]
    # @!attribute overridden
    #   <p>When set to <code>True</code>, the value that has been specified in the <code>EnforcedLimit</code> is used to determine the maximum amount in US dollars that can be spent to send messages each month, in US dollars.</p>
    #   @return [Boolean]
    class SpendLimit < Struct.new(
      :name,
      :enforced_limit,
      :max_limit,
      :overridden,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enforced_limit] = 0 unless options.key?(:enforced_limit)
        options[:max_limit] = 0 unless options.key?(:max_limit)
        options[:overridden] = false unless options.key?(:overridden)
        super
      end
    end

    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    class SubmitRegistrationVersionRequest < Struct.new(
      :registration_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_arn
    #   <p>The Amazon Resource Name (ARN) for the registration.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number of the registration.</p>
    #   @return [Integer]
    # @!attribute registration_version_status
    #   <p>The status of the registration version.</p> <ul> <li> <p> <code>APPROVED</code>: Your registration has been approved.</p> </li> <li> <p> <code>ARCHIVED</code>: Your previously approved registration version moves into this status when a more recently submitted version is approved.</p> </li> <li> <p> <code>DENIED</code>: You must fix your registration and resubmit it.</p> </li> <li> <p> <code>DISCARDED</code>: You've abandon this version of their registration to start over with a new version. </p> </li> <li> <p> <code>DRAFT</code>: The initial status of a registration version after it’s created.</p> </li> <li> <p> <code>REQUIRES_AUTHENTICATION</code>: You need to complete email authentication.</p> </li> <li> <p> <code>REVIEWING</code>: Your registration has been accepted and is being reviewed.</p> </li> <li> <p> <code>REVOKED</code>: Your previously approved registration has been revoked.</p> </li> <li> <p> <code>SUBMITTED</code>: Your registration has been submitted.</p> </li> </ul>
    #   @return [String]
    # @!attribute registration_version_status_history
    #   <p>The <b>RegistrationVersionStatusHistory</b> object contains the time stamps for when the reservations status changes.</p>
    #   @return [Types::RegistrationVersionStatusHistory]
    class SubmitRegistrationVersionResult < Struct.new(
      :registration_arn,
      :registration_id,
      :version_number,
      :registration_version_status,
      :registration_version_status_history,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The processing rules for when a registration can be associated with an origination identity and disassociated from an origination identity.</p>
    # @!attribute resource_type
    #   <p>Defines the behavior of when an origination identity and registration can be associated with each other.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute association_behavior
    #   <p>The association behavior.</p> <ul> <li> <p> <code>ASSOCIATE_BEFORE_SUBMIT</code> The origination identity has to be supplied when creating a registration.</p> </li> <li> <p> <code>ASSOCIATE_ON_APPROVAL</code> This applies to all sender ID registrations. The sender ID will be automatically provisioned once the registration is approved.</p> </li> <li> <p> <code>ASSOCIATE_AFTER_COMPLETE</code> This applies to phone number registrations when you must complete a registration first, then associate one or more phone numbers later. For example 10DLC campaigns and long codes. </p> </li> </ul>
    #   @return [String]
    # @!attribute disassociation_behavior
    #   <p>The disassociation behavior.</p> <ul> <li> <p> <code>DISASSOCIATE_ALL_CLOSES_REGISTRATION</code> All origination identities must be disassociated from the registration before the registration can be closed.</p> </li> <li> <p> <code>DISASSOCIATE_ALL_ALLOWS_DELETE_REGISTRATION</code> All origination identities must be disassociated from the registration before the registration can be deleted.</p> </li> <li> <p> <code>DELETE_REGISTRATION_DISASSOCIATES</code> The registration can be deleted and all origination identities will be disasscoiated.</p> </li> </ul>
    #   @return [String]
    class SupportedAssociation < Struct.new(
      :resource_type,
      :iso_country_code,
      :association_behavior,
      :disassociation_behavior,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The list of tags to be added to the specified topic.</p>
    # @!attribute key
    #   <p>The key identifier, or name, of the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The string value associated with the key of the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of key and value pair tags that are associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Validation rules for a text field.</p>
    # @!attribute min_length
    #   <p>The minimum number of characters for the text field.</p>
    #   @return [Integer]
    # @!attribute max_length
    #   <p>The maximum number of characters for the text field.</p>
    #   @return [Integer]
    # @!attribute pattern
    #   <p>The regular expression used to validate the text field.</p>
    #   @return [String]
    class TextValidation < Struct.new(
      :min_length,
      :max_length,
      :pattern,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An error that occurred because too many requests were sent during a certain amount of time.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>An array of tag key values to unassociate with the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_name
    #   <p>The configuration set to update with the new event destination. Valid values for this can be the ConfigurationSetName or ConfigurationSetArn.</p>
    #   @return [String]
    # @!attribute event_destination_name
    #   <p>The name to use for the event destination.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>When set to true logging is enabled.</p>
    #   @return [Boolean]
    # @!attribute matching_event_types
    #   <p>An array of event types that determine which events to log.</p> <note> <p>The <code>TEXT_SENT</code> event type is not supported.</p> </note>
    #   @return [Array<String>]
    # @!attribute cloud_watch_logs_destination
    #   <p>An object that contains information about an event destination that sends data to CloudWatch Logs.</p>
    #   @return [Types::CloudWatchLogsDestination]
    # @!attribute kinesis_firehose_destination
    #   <p>An object that contains information about an event destination for logging to Firehose.</p>
    #   @return [Types::KinesisFirehoseDestination]
    # @!attribute sns_destination
    #   <p>An object that contains information about an event destination that sends data to Amazon SNS.</p>
    #   @return [Types::SnsDestination]
    class UpdateEventDestinationRequest < Struct.new(
      :configuration_set_name,
      :event_destination_name,
      :enabled,
      :matching_event_types,
      :cloud_watch_logs_destination,
      :kinesis_firehose_destination,
      :sns_destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_set_arn
    #   <p>The Amazon Resource Name (ARN) for the ConfigurationSet that was updated.</p>
    #   @return [String]
    # @!attribute configuration_set_name
    #   <p>The name of the configuration set.</p>
    #   @return [String]
    # @!attribute event_destination
    #   <p>An EventDestination object containing the details of where events will be logged. </p>
    #   @return [Types::EventDestination]
    class UpdateEventDestinationResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :event_destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_id
    #   <p>The unique identifier of the phone number. Valid values for this field can be either the PhoneNumberId or PhoneNumberArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The OptOutList to add the phone number to. Valid values for this field can be either the OutOutListName or OutOutListArn.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the phone number can't be deleted. </p>
    #   @return [Boolean]
    class UpdatePhoneNumberRequest < Struct.new(
      :phone_number_id,
      :two_way_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :deletion_protection_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_arn
    #   <p>The Amazon Resource Name (ARN) of the updated phone number.</p>
    #   @return [String]
    # @!attribute phone_number_id
    #   <p>The unique identifier of the phone number.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number that was updated.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the request.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [String]
    # @!attribute number_capabilities
    #   <p>Specifies if the number could be used for text messages, voice or both.</p>
    #   @return [Array<String>]
    # @!attribute number_type
    #   <p>The type of number that was requested.</p>
    #   @return [String]
    # @!attribute monthly_leasing_price
    #   <p>The monthly leasing price of the phone number, in US dollars.</p>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>This is true if self managed opt-out are enabled.</p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList associated with the phone number.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true the phone number can't be deleted.</p>
    #   @return [Boolean]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the phone number was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class UpdatePhoneNumberResult < Struct.new(
      :phone_number_arn,
      :phone_number_id,
      :phone_number,
      :status,
      :iso_country_code,
      :message_type,
      :number_capabilities,
      :number_type,
      :monthly_leasing_price,
      :two_way_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :deletion_protection_enabled,
      :registration_id,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:two_way_enabled] = false unless options.key?(:two_way_enabled)
        options[:self_managed_opt_outs_enabled] = false unless options.key?(:self_managed_opt_outs_enabled)
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # @!attribute pool_id
    #   <p>The unique identifier of the pool to update. Valid values are either the PoolId or PoolArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The OptOutList to associate with the pool. Valid values are either OptOutListName or OptOutListArn.</p> <important> <p>If you are using a shared AWS End User Messaging SMS and Voice resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    #   @return [String]
    # @!attribute shared_routes_enabled
    #   <p>Indicates whether shared routes are enabled for the pool.</p>
    #   @return [Boolean]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true the pool can't be deleted.</p>
    #   @return [Boolean]
    class UpdatePoolRequest < Struct.new(
      :pool_id,
      :two_way_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :shared_routes_enabled,
      :deletion_protection_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_arn
    #   <p>The ARN of the pool.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The unique identifier of the pool.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the pool update request.</p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The type of message for the pool to use.</p>
    #   @return [String]
    # @!attribute two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    #   @return [Boolean]
    # @!attribute two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #   @return [String]
    # @!attribute two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    #   @return [String]
    # @!attribute self_managed_opt_outs_enabled
    #   <p>When an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>
    #   @return [Boolean]
    # @!attribute opt_out_list_name
    #   <p>The name of the OptOutList associated with the pool.</p>
    #   @return [String]
    # @!attribute shared_routes_enabled
    #   <p>Indicates whether shared routes are enabled for the pool.</p>
    #   @return [Boolean]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true the pool can't be deleted.</p>
    #   @return [Boolean]
    # @!attribute created_timestamp
    #   <p>The time when the pool was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class UpdatePoolResult < Struct.new(
      :pool_arn,
      :pool_id,
      :status,
      :message_type,
      :two_way_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :shared_routes_enabled,
      :deletion_protection_enabled,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:two_way_enabled] = false unless options.key?(:two_way_enabled)
        options[:self_managed_opt_outs_enabled] = false unless options.key?(:self_managed_opt_outs_enabled)
        options[:shared_routes_enabled] = false unless options.key?(:shared_routes_enabled)
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute number_capability
    #   <p>The number capability to apply the CountryRuleSetUpdates updates to.</p>
    #   @return [String]
    # @!attribute country_rule_set_updates
    #   <p>A map of ProtectConfigurationCountryRuleSetInformation objects that contain the details for the requested NumberCapability. The Key is the two-letter ISO country code. For a list of supported ISO country codes, see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-sms-by-country.html">Supported countries and regions (SMS channel)</a> in the AWS End User Messaging SMS User Guide.</p> <p>For example, to set the United States as allowed and Canada as blocked, the <code>CountryRuleSetUpdates</code> would be formatted as: <code>"CountryRuleSetUpdates": { "US" : { "ProtectStatus": "ALLOW" } "CA" : { "ProtectStatus": "BLOCK" } }</code> </p>
    #   @return [Hash<String, Types::ProtectConfigurationCountryRuleSetInformation>]
    class UpdateProtectConfigurationCountryRuleSetRequest < Struct.new(
      :protect_configuration_id,
      :number_capability,
      :country_rule_set_updates,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the protect configuration.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute number_capability
    #   <p>The number capability that was updated</p>
    #   @return [String]
    # @!attribute country_rule_set
    #   <p>An array of ProtectConfigurationCountryRuleSetInformation containing the rules for the NumberCapability.</p>
    #   @return [Hash<String, Types::ProtectConfigurationCountryRuleSetInformation>]
    class UpdateProtectConfigurationCountryRuleSetResult < Struct.new(
      :protect_configuration_arn,
      :protect_configuration_id,
      :number_capability,
      :country_rule_set,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>When set to true deletion protection is enabled. By default this is set to false. </p>
    #   @return [Boolean]
    class UpdateProtectConfigurationRequest < Struct.new(
      :protect_configuration_id,
      :deletion_protection_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute protect_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the protect configuration.</p>
    #   @return [String]
    # @!attribute protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the protect configuration was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute account_default
    #   <p>This is true if the protect configuration is set as your account default protect configuration.</p>
    #   @return [Boolean]
    # @!attribute deletion_protection_enabled
    #   <p>The status of deletion protection for the protect configuration. When set to true deletion protection is enabled. By default this is set to false. </p>
    #   @return [Boolean]
    class UpdateProtectConfigurationResult < Struct.new(
      :protect_configuration_arn,
      :protect_configuration_id,
      :created_timestamp,
      :account_default,
      :deletion_protection_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:account_default] = false unless options.key?(:account_default)
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        super
      end
    end

    # @!attribute sender_id
    #   <p>The sender ID to update.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the sender ID can't be deleted.</p>
    #   @return [Boolean]
    class UpdateSenderIdRequest < Struct.new(
      :sender_id,
      :iso_country_code,
      :deletion_protection_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute sender_id_arn
    #   <p>The Amazon Resource Name (ARN) associated with the SenderId.</p>
    #   @return [String]
    # @!attribute sender_id
    #   <p>The sender ID that was updated.</p>
    #   @return [String]
    # @!attribute iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    #   @return [String]
    # @!attribute message_types
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    #   @return [Array<String>]
    # @!attribute monthly_leasing_price
    #   <p>The monthly price, in US dollars, to lease the sender ID.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the sender ID can't be deleted.</p>
    #   @return [Boolean]
    # @!attribute registered
    #   <p>True if the sender ID is registered..</p>
    #   @return [Boolean]
    # @!attribute registration_id
    #   <p>The unique identifier for the registration.</p>
    #   @return [String]
    class UpdateSenderIdResult < Struct.new(
      :sender_id_arn,
      :sender_id,
      :iso_country_code,
      :message_types,
      :monthly_leasing_price,
      :deletion_protection_enabled,
      :registered,
      :registration_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deletion_protection_enabled] = false unless options.key?(:deletion_protection_enabled)
        options[:registered] = false unless options.key?(:registered)
        super
      end
    end

    # <p>A validation exception for a field.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>The field that failed validation.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The field associated with the validation exception.</p>
    # @!attribute name
    #   <p>The name of the field.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message associated with the validation exception with information to help determine its cause.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The filter definition for filtering verified destination phone numbers that meets a specified criteria.</p>
    # @!attribute name
    #   <p>The name of the attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array of values to filter on.</p>
    #   @return [Array<String>]
    class VerifiedDestinationNumberFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the requested verified destintion phone number.</p>
    # @!attribute verified_destination_number_arn
    #   <p>The Amazon Resource Name (ARN) for the verified destination phone number.</p>
    #   @return [String]
    # @!attribute verified_destination_number_id
    #   <p>The unique identifier for the verified destination phone number.</p>
    #   @return [String]
    # @!attribute destination_phone_number
    #   <p>The verified destination phone number, in E.164 format.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the verified destination phone number.</p> <ul> <li> <p> <code>PENDING</code>: The phone number hasn't been verified yet.</p> </li> <li> <p> <code>VERIFIED</code>: The phone number is verified and can receive messages.</p> </li> </ul>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the destination phone number was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class VerifiedDestinationNumberInformation < Struct.new(
      :verified_destination_number_arn,
      :verified_destination_number_id,
      :destination_phone_number,
      :status,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute verified_destination_number_id
    #   <p>The unique identifier for the verififed destination phone number.</p>
    #   @return [String]
    # @!attribute verification_code
    #   <p>The verification code that was received by the verified destination phone number.</p>
    #   @return [String]
    class VerifyDestinationNumberRequest < Struct.new(
      :verified_destination_number_id,
      :verification_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute verified_destination_number_arn
    #   <p>The Amazon Resource Name (ARN) for the verified destination phone number.</p>
    #   @return [String]
    # @!attribute verified_destination_number_id
    #   <p>The unique identifier for the verified destination phone number.</p>
    #   @return [String]
    # @!attribute destination_phone_number
    #   <p>The phone number in E.164 format.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status for being able to send messages to the phone number.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the destination phone number was created, in <a href="https://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    class VerifyDestinationNumberResult < Struct.new(
      :verified_destination_number_arn,
      :verified_destination_number_id,
      :destination_phone_number,
      :status,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end

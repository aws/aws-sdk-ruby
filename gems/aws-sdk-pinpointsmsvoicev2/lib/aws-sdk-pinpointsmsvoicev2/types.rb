# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PinpointSMSVoiceV2
  module Types

    # The request was denied because you don't have sufficient permissions
    # to access the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Displays the attributes associated with a single Amazon Web Services
    # account.
    #
    # @!attribute [rw] name
    #   The name of the account attribute.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value associated with the account attribute name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/AccountAttribute AWS API Documentation
    #
    class AccountAttribute < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current resource quotas associated with an Amazon Web Services
    # account.
    #
    # @!attribute [rw] name
    #   The name of the attribute to apply the account limit to.
    #   @return [String]
    #
    # @!attribute [rw] used
    #   The current amount that has been spent, in US dollars.
    #   @return [Integer]
    #
    # @!attribute [rw] max
    #   The Amazon Web Services set limit for that resource type, in US
    #   dollars.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/AccountLimit AWS API Documentation
    #
    class AccountLimit < Struct.new(
      :name,
      :used,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pool_id
    #   The pool to update with the new Identity. This value can be either
    #   the PoolId or PoolArn, and you can find these values using
    #   [DescribePools][1].
    #
    #   If you are using a shared End User MessagingSMS; resource then you
    #   must use the full Amazon Resource Name(ARN).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pinpoint/latest/apireference_smsvoicev2/API_DescribePools.html
    #   @return [String]
    #
    # @!attribute [rw] origination_identity
    #   The origination identity to use, such as PhoneNumberId,
    #   PhoneNumberArn, SenderId, or SenderIdArn. You can use
    #   DescribePhoneNumbers to find the values for PhoneNumberId and
    #   PhoneNumberArn, while DescribeSenderIds can be used to get the
    #   values for SenderId and SenderIdArn.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The new two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region of the origination identity.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/AssociateOriginationIdentityRequest AWS API Documentation
    #
    class AssociateOriginationIdentityRequest < Struct.new(
      :pool_id,
      :origination_identity,
      :iso_country_code,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pool_arn
    #   The Amazon Resource Name (ARN) of the pool that is now associated
    #   with the origination identity.
    #   @return [String]
    #
    # @!attribute [rw] pool_id
    #   The PoolId of the pool that is now associated with the origination
    #   identity.
    #   @return [String]
    #
    # @!attribute [rw] origination_identity_arn
    #   The PhoneNumberArn or SenderIdArn of the origination identity.
    #   @return [String]
    #
    # @!attribute [rw] origination_identity
    #   The PhoneNumberId or SenderId of the origination identity.
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/AssociateOriginationIdentityResult AWS API Documentation
    #
    class AssociateOriginationIdentityResult < Struct.new(
      :pool_arn,
      :pool_id,
      :origination_identity_arn,
      :origination_identity,
      :iso_country_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the ConfigurationSet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/AssociateProtectConfigurationRequest AWS API Documentation
    #
    class AssociateProtectConfigurationRequest < Struct.new(
      :protect_configuration_id,
      :configuration_set_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_set_arn
    #   The Amazon Resource Name (ARN) of the configuration set.
    #   @return [String]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the ConfigurationSet.
    #   @return [String]
    #
    # @!attribute [rw] protect_configuration_arn
    #   The Amazon Resource Name (ARN) of the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/AssociateProtectConfigurationResult AWS API Documentation
    #
    class AssociateProtectConfigurationResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :protect_configuration_arn,
      :protect_configuration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number
    #   The phone number that you want to retrieve information about. You
    #   can provide the phone number in various formats including special
    #   characters such as parentheses, brackets, spaces, hyphens, periods,
    #   and commas. The service automatically converts the input to E164
    #   format for processing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CarrierLookupRequest AWS API Documentation
    #
    class CarrierLookupRequest < Struct.new(
      :phone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] e164_phone_number
    #   The phone number in E164 format, sanitized from the original input
    #   by removing any formatting characters.
    #   @return [String]
    #
    # @!attribute [rw] dialing_country_code
    #   The numeric dialing code for the country or region where the phone
    #   number was originally registered.
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region where the phone number was originally registered.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The name of the country where the phone number was originally
    #   registered.
    #   @return [String]
    #
    # @!attribute [rw] mcc
    #   The phone number's mobile country code, for mobile phone number
    #   types
    #   @return [String]
    #
    # @!attribute [rw] mnc
    #   The phone number's mobile network code, for mobile phone number
    #   types.
    #   @return [String]
    #
    # @!attribute [rw] carrier
    #   The carrier or service provider that the phone number is currently
    #   registered with. In some countries and regions, this value may be
    #   the carrier or service provider that the phone number was originally
    #   registered with.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_type
    #   Describes the type of phone number. Valid values are: MOBILE,
    #   LANDLINE, OTHER, and INVALID. Avoid sending SMS or voice messages to
    #   INVALID phone numbers, as these numbers are unlikely to belong to
    #   actual recipients.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CarrierLookupResult AWS API Documentation
    #
    class CarrierLookupResult < Struct.new(
      :e164_phone_number,
      :dialing_country_code,
      :iso_country_code,
      :country,
      :mcc,
      :mnc,
      :carrier,
      :phone_number_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the destination configuration to use when publishing message
    # sending events.
    #
    # @!attribute [rw] iam_role_arn
    #   The Amazon Resource Name (ARN) of an Identity and Access Management
    #   role that is able to write event data to an Amazon CloudWatch
    #   destination.
    #   @return [String]
    #
    # @!attribute [rw] log_group_arn
    #   The name of the Amazon CloudWatch log group that you want to record
    #   events in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CloudWatchLogsDestination AWS API Documentation
    #
    class CloudWatchLogsDestination < Struct.new(
      :iam_role_arn,
      :log_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information for configuration sets that meet a specified criteria.
    #
    # @!attribute [rw] name
    #   The name of the attribute to filter on.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   An array values to filter for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ConfigurationSetFilter AWS API Documentation
    #
    class ConfigurationSetFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information related to a given configuration set in your Amazon Web
    # Services account.
    #
    # @!attribute [rw] configuration_set_arn
    #   The Resource Name (ARN) of the ConfigurationSet.
    #   @return [String]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the ConfigurationSet.
    #   @return [String]
    #
    # @!attribute [rw] event_destinations
    #   An array of EventDestination objects that describe any events to log
    #   and where to log them.
    #   @return [Array<Types::EventDestination>]
    #
    # @!attribute [rw] default_message_type
    #   The type of message. Valid values are TRANSACTIONAL for messages
    #   that are critical or time-sensitive and PROMOTIONAL for messages
    #   that aren't critical or time-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] default_sender_id
    #   The default sender ID used by the ConfigurationSet.
    #   @return [String]
    #
    # @!attribute [rw] default_message_feedback_enabled
    #   True if message feedback is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the ConfigurationSet was created, in [UNIX epoch
    #   time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ConfigurationSetInformation AWS API Documentation
    #
    class ConfigurationSetInformation < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :event_destinations,
      :default_message_type,
      :default_sender_id,
      :default_message_feedback_enabled,
      :created_timestamp,
      :protect_configuration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request has conflicting operations. This can occur if you're
    # trying to perform more than one operation on the same resource at the
    # same time or it could be that the requested action isn't valid for
    # the current state or configuration of the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the exception.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource that caused the exception.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :reason,
      :resource_type,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_set_name
    #   The name to use for the new configuration set.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key and value pair tags that's associated with the new
    #   configuration set.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateConfigurationSetRequest AWS API Documentation
    #
    class CreateConfigurationSetRequest < Struct.new(
      :configuration_set_name,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_set_arn
    #   The Amazon Resource Name (ARN) of the newly created configuration
    #   set.
    #   @return [String]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the new configuration set.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key and value pair tags that's associated with the
    #   configuration set.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the configuration set was created, in [UNIX epoch
    #   time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateConfigurationSetResult AWS API Documentation
    #
    class CreateConfigurationSetResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :tags,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_set_name
    #   Either the name of the configuration set or the configuration set
    #   ARN to apply event logging to. The ConfigurateSetName and
    #   ConfigurationSetArn can be found using the DescribeConfigurationSets
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] event_destination_name
    #   The name that identifies the event destination.
    #   @return [String]
    #
    # @!attribute [rw] matching_event_types
    #   An array of event types that determine which events to log. If
    #   "ALL" is used, then End User MessagingSMS logs every event type.
    #
    #   <note markdown="1"> The `TEXT_SENT` event type is not supported.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] cloud_watch_logs_destination
    #   An object that contains information about an event destination for
    #   logging to Amazon CloudWatch Logs.
    #   @return [Types::CloudWatchLogsDestination]
    #
    # @!attribute [rw] kinesis_firehose_destination
    #   An object that contains information about an event destination for
    #   logging to Amazon Data Firehose.
    #   @return [Types::KinesisFirehoseDestination]
    #
    # @!attribute [rw] sns_destination
    #   An object that contains information about an event destination for
    #   logging to Amazon SNS.
    #   @return [Types::SnsDestination]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateEventDestinationRequest AWS API Documentation
    #
    class CreateEventDestinationRequest < Struct.new(
      :configuration_set_name,
      :event_destination_name,
      :matching_event_types,
      :cloud_watch_logs_destination,
      :kinesis_firehose_destination,
      :sns_destination,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_set_arn
    #   The ARN of the configuration set.
    #   @return [String]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set.
    #   @return [String]
    #
    # @!attribute [rw] event_destination
    #   The details of the destination where events are logged.
    #   @return [Types::EventDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateEventDestinationResult AWS API Documentation
    #
    class CreateEventDestinationResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :event_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] opt_out_list_name
    #   The name of the new OptOutList.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of tags (key and value pairs) to associate with the new
    #   OptOutList.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateOptOutListRequest AWS API Documentation
    #
    class CreateOptOutListRequest < Struct.new(
      :opt_out_list_name,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] opt_out_list_arn
    #   The Amazon Resource Name (ARN) for the OptOutList.
    #   @return [String]
    #
    # @!attribute [rw] opt_out_list_name
    #   The name of the new OptOutList.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of tags (key and value pairs) associated with the new
    #   OptOutList.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the pool was created, in [UNIX epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateOptOutListResult AWS API Documentation
    #
    class CreateOptOutListResult < Struct.new(
      :opt_out_list_arn,
      :opt_out_list_name,
      :tags,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origination_identity
    #   The origination identity to use such as a PhoneNumberId,
    #   PhoneNumberArn, SenderId or SenderIdArn. You can use
    #   [DescribePhoneNumbers][1] to find the values for PhoneNumberId and
    #   PhoneNumberArn, and use [DescribeSenderIds][2] can be used to get
    #   the values for SenderId and SenderIdArn.
    #
    #   After the pool is created you can add more origination identities to
    #   the pool by using [AssociateOriginationIdentity][3].
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pinpoint/latest/apireference_smsvoicev2/API_DescribePhoneNumbers.html
    #   [2]: https://docs.aws.amazon.com/pinpoint/latest/apireference_smsvoicev2/API_DescribeSenderIds.html
    #   [3]: https://docs.aws.amazon.com/pinpoint/latest/apireference_smsvoicev2/API_AssociateOriginationIdentity.html
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The new two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region of the new pool.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   The type of message. Valid values are TRANSACTIONAL for messages
    #   that are critical or time-sensitive and PROMOTIONAL for messages
    #   that aren't critical or time-sensitive. After the pool is created
    #   the MessageType can't be changed.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   By default this is set to false. When set to true the pool can't be
    #   deleted. You can change this value using the [UpdatePool][1] action.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pinpoint/latest/apireference_smsvoicev2/API_UpdatePool.html
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   An array of tags (key and value pairs) associated with the pool.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreatePoolRequest AWS API Documentation
    #
    class CreatePoolRequest < Struct.new(
      :origination_identity,
      :iso_country_code,
      :message_type,
      :deletion_protection_enabled,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pool_arn
    #   The Amazon Resource Name (ARN) for the pool.
    #   @return [String]
    #
    # @!attribute [rw] pool_id
    #   The unique identifier for the pool.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the pool.
    #
    #   * CREATING: The pool is currently being created and isn't yet
    #     available for use.
    #
    #   * ACTIVE: The pool is active and available for use.
    #
    #   * DELETING: The pool is being deleted.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   The type of message for the pool to use.
    #   @return [String]
    #
    # @!attribute [rw] two_way_enabled
    #   By default this is set to false. When set to true you can receive
    #   incoming text messages from your end recipients.
    #   @return [Boolean]
    #
    # @!attribute [rw] two_way_channel_arn
    #   The Amazon Resource Name (ARN) of the two way channel.
    #   @return [String]
    #
    # @!attribute [rw] two_way_channel_role
    #   An optional IAM Role Arn for a service to assume, to be able to post
    #   inbound SMS messages.
    #   @return [String]
    #
    # @!attribute [rw] self_managed_opt_outs_enabled
    #   By default this is set to false. When set to false, and an end
    #   recipient sends a message that begins with HELP or STOP to one of
    #   your dedicated numbers, End User MessagingSMS automatically replies
    #   with a customizable message and adds the end recipient to the
    #   OptOutList. When set to true you're responsible for responding to
    #   HELP and STOP requests. You're also responsible for tracking and
    #   honoring opt-out requests.
    #   @return [Boolean]
    #
    # @!attribute [rw] opt_out_list_name
    #   The name of the OptOutList associated with the pool.
    #   @return [String]
    #
    # @!attribute [rw] shared_routes_enabled
    #   Indicates whether shared routes are enabled for the pool. Set to
    #   false and only origination identities in this pool are used to send
    #   messages.
    #   @return [Boolean]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   When set to true deletion protection is enabled. By default this is
    #   set to false.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   An array of tags (key and value pairs) associated with the pool.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the pool was created, in [UNIX epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreatePoolResult AWS API Documentation
    #
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
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   When set to true deletion protection is enabled. By default this is
    #   set to false.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   An array of key and value pair tags that are associated with the
    #   resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateProtectConfigurationRequest AWS API Documentation
    #
    class CreateProtectConfigurationRequest < Struct.new(
      :client_token,
      :deletion_protection_enabled,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protect_configuration_arn
    #   The Amazon Resource Name (ARN) of the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the protect configuration was created, in [UNIX epoch
    #   time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] account_default
    #   This is true if the protect configuration is set as your account
    #   default protect configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   When set to true deletion protection is enabled. By default this is
    #   set to false.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   An array of key and value pair tags that are associated with the
    #   resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateProtectConfigurationResult AWS API Documentation
    #
    class CreateProtectConfigurationResult < Struct.new(
      :protect_configuration_arn,
      :protect_configuration_id,
      :created_timestamp,
      :account_default,
      :deletion_protection_enabled,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier for the origination identity. For example this
    #   could be a **PhoneNumberId** or **SenderId**.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateRegistrationAssociationRequest AWS API Documentation
    #
    class CreateRegistrationAssociationRequest < Struct.new(
      :registration_id,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_arn
    #   The Amazon Resource Name (ARN) for the registration.
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @!attribute [rw] registration_type
    #   The type of registration form. The list of **RegistrationTypes** can
    #   be found using the DescribeRegistrationTypeDefinitions action.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the origination identity that is
    #   associated with the registration.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier for the origination identity. For example this
    #   could be a **PhoneNumberId** or **SenderId**.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The registration type or origination identity type.
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number associated with the registration in E.164 format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateRegistrationAssociationResult AWS API Documentation
    #
    class CreateRegistrationAssociationResult < Struct.new(
      :registration_arn,
      :registration_id,
      :registration_type,
      :resource_arn,
      :resource_id,
      :resource_type,
      :iso_country_code,
      :phone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attachment_body
    #   The registration file to upload. The maximum file size is 500KB and
    #   valid file extensions are PDF, JPEG and PNG.
    #   @return [String]
    #
    # @!attribute [rw] attachment_url
    #   Registration files have to be stored in an Amazon S3 bucket. The URI
    #   to use when sending is in the format `s3://BucketName/FileName`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of tags (key and value pairs) to associate with the
    #   registration attachment.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateRegistrationAttachmentRequest AWS API Documentation
    #
    class CreateRegistrationAttachmentRequest < Struct.new(
      :attachment_body,
      :attachment_url,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_attachment_arn
    #   The Amazon Resource Name (ARN) for the registration attachment.
    #   @return [String]
    #
    # @!attribute [rw] registration_attachment_id
    #   The unique identifier for the registration attachment.
    #   @return [String]
    #
    # @!attribute [rw] attachment_status
    #   The status of the registration attachment.
    #
    #   * `UPLOAD_IN_PROGRESS` The attachment is being uploaded.
    #
    #   * `UPLOAD_COMPLETE` The attachment has been uploaded.
    #
    #   * `UPLOAD_FAILED` The attachment failed to uploaded.
    #
    #   * `DELETED` The attachment has been deleted..
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of tags (key and value pairs) to associate with the
    #   registration attachment.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the registration attachment was created, in [UNIX
    #   epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateRegistrationAttachmentResult AWS API Documentation
    #
    class CreateRegistrationAttachmentResult < Struct.new(
      :registration_attachment_arn,
      :registration_attachment_id,
      :attachment_status,
      :tags,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_type
    #   The type of registration form to create. The list of
    #   **RegistrationTypes** can be found using the
    #   DescribeRegistrationTypeDefinitions action.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of tags (key and value pairs) to associate with the
    #   registration.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateRegistrationRequest AWS API Documentation
    #
    class CreateRegistrationRequest < Struct.new(
      :registration_type,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_arn
    #   The Amazon Resource Name (ARN) for the registration.
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @!attribute [rw] registration_type
    #   The type of registration form to create. The list of
    #   **RegistrationTypes** can be found using the
    #   DescribeRegistrationTypeDefinitions action.
    #   @return [String]
    #
    # @!attribute [rw] registration_status
    #   The status of the registration.
    #
    #   * `CLOSED`: The phone number or sender ID has been deleted and you
    #     must also delete the registration for the number.
    #
    #   * `CREATED`: Your registration is created but not submitted.
    #
    #   * `COMPLETE`: Your registration has been approved and your
    #     origination identity has been created.
    #
    #   * `DELETED`: The registration has been deleted.
    #
    #   * `PROVISIONING`: Your registration has been approved and your
    #     origination identity is being created.
    #
    #   * `REQUIRES_AUTHENTICATION`: You need to complete email
    #     authentication.
    #
    #   * `REQUIRES_UPDATES`: You must fix your registration and resubmit
    #     it.
    #
    #   * `REVIEWING`: Your registration has been accepted and is being
    #     reviewed.
    #
    #   * `SUBMITTED`: Your registration has been submitted and is awaiting
    #     review.
    #   @return [String]
    #
    # @!attribute [rw] current_version_number
    #   The current version number of the registration.
    #   @return [Integer]
    #
    # @!attribute [rw] additional_attributes
    #   Metadata about a given registration which is specific to that
    #   registration type.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   An array of tags (key and value pairs) to associate with the
    #   registration.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the registration was created, in [UNIX epoch time][1]
    #   format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateRegistrationResult AWS API Documentation
    #
    class CreateRegistrationResult < Struct.new(
      :registration_arn,
      :registration_id,
      :registration_type,
      :registration_status,
      :current_version_number,
      :additional_attributes,
      :tags,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateRegistrationVersionRequest AWS API Documentation
    #
    class CreateRegistrationVersionRequest < Struct.new(
      :registration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_arn
    #   The Amazon Resource Name (ARN) for the registration.
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The new version number of the registration.
    #   @return [Integer]
    #
    # @!attribute [rw] registration_version_status
    #   The status of the registration.
    #
    #   * `APPROVED`: Your registration has been approved.
    #
    #   * `ARCHIVED`: Your previously approved registration version moves
    #     into this status when a more recently submitted version is
    #     approved.
    #
    #   * `DENIED`: You must fix your registration and resubmit it.
    #
    #   * `DISCARDED`: You've abandon this version of their registration to
    #     start over with a new version.
    #
    #   * `DRAFT`: The initial status of a registration version after it’s
    #     created.
    #
    #   * `REQUIRES_AUTHENTICATION`: You need to complete email
    #     authentication.
    #
    #   * `REVIEWING`: Your registration has been accepted and is being
    #     reviewed.
    #
    #   * `REVOKED`: Your previously approved registration has been revoked.
    #
    #   * `SUBMITTED`: Your registration has been submitted.
    #   @return [String]
    #
    # @!attribute [rw] registration_version_status_history
    #   A **RegistrationVersionStatusHistory** object that contains
    #   timestamps for the registration.
    #   @return [Types::RegistrationVersionStatusHistory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateRegistrationVersionResult AWS API Documentation
    #
    class CreateRegistrationVersionResult < Struct.new(
      :registration_arn,
      :registration_id,
      :version_number,
      :registration_version_status,
      :registration_version_status_history)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destination_phone_number
    #   The verified destination phone number, in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of tags (key and value pairs) to associate with the
    #   destination number.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateVerifiedDestinationNumberRequest AWS API Documentation
    #
    class CreateVerifiedDestinationNumberRequest < Struct.new(
      :destination_phone_number,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] verified_destination_number_arn
    #   The Amazon Resource Name (ARN) for the verified destination phone
    #   number.
    #   @return [String]
    #
    # @!attribute [rw] verified_destination_number_id
    #   The unique identifier for the verified destination phone number.
    #   @return [String]
    #
    # @!attribute [rw] destination_phone_number
    #   The verified destination phone number, in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the verified destination phone number.
    #
    #   * `PENDING`: The phone number hasn't been verified yet.
    #
    #   * `VERIFIED`: The phone number is verified and can receive messages.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of tags (key and value pairs) to associate with the
    #   destination number.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the verified phone number was created, in [UNIX epoch
    #   time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateVerifiedDestinationNumberResult AWS API Documentation
    #
    class CreateVerifiedDestinationNumberResult < Struct.new(
      :verified_destination_number_arn,
      :verified_destination_number_id,
      :destination_phone_number,
      :status,
      :tags,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteAccountDefaultProtectConfigurationRequest AWS API Documentation
    #
    class DeleteAccountDefaultProtectConfigurationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] default_protect_configuration_arn
    #   The Amazon Resource Name (ARN) of the account default protect
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] default_protect_configuration_id
    #   The unique identifier of the account default protect configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteAccountDefaultProtectConfigurationResult AWS API Documentation
    #
    class DeleteAccountDefaultProtectConfigurationResult < Struct.new(
      :default_protect_configuration_arn,
      :default_protect_configuration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set or the configuration set ARN that
    #   you want to delete. The ConfigurationSetName and ConfigurationSetArn
    #   can be found using the DescribeConfigurationSets action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteConfigurationSetRequest AWS API Documentation
    #
    class DeleteConfigurationSetRequest < Struct.new(
      :configuration_set_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_set_arn
    #   The Amazon Resource Name (ARN) of the deleted configuration set.
    #   @return [String]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the deleted configuration set.
    #   @return [String]
    #
    # @!attribute [rw] event_destinations
    #   An array of any EventDestination objects that were associated with
    #   the deleted configuration set.
    #   @return [Array<Types::EventDestination>]
    #
    # @!attribute [rw] default_message_type
    #   The default message type of the configuration set that was deleted.
    #   @return [String]
    #
    # @!attribute [rw] default_sender_id
    #   The default Sender ID of the configuration set that was deleted.
    #   @return [String]
    #
    # @!attribute [rw] default_message_feedback_enabled
    #   True if the configuration set has message feedback enabled. By
    #   default this is set to false.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_timestamp
    #   The time that the deleted configuration set was created in [UNIX
    #   epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteConfigurationSetResult AWS API Documentation
    #
    class DeleteConfigurationSetResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :event_destinations,
      :default_message_type,
      :default_sender_id,
      :default_message_feedback_enabled,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set or the configuration set Amazon
    #   Resource Name (ARN) to delete the default message type from. The
    #   ConfigurationSetName and ConfigurationSetArn can be found using the
    #   DescribeConfigurationSets action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteDefaultMessageTypeRequest AWS API Documentation
    #
    class DeleteDefaultMessageTypeRequest < Struct.new(
      :configuration_set_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_set_arn
    #   The Amazon Resource Name (ARN) of the configuration set.
    #   @return [String]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   The current message type for the configuration set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteDefaultMessageTypeResult AWS API Documentation
    #
    class DeleteDefaultMessageTypeResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :message_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set or the configuration set Amazon
    #   Resource Name (ARN) to delete the default sender ID from. The
    #   ConfigurationSetName and ConfigurationSetArn can be found using the
    #   DescribeConfigurationSets action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteDefaultSenderIdRequest AWS API Documentation
    #
    class DeleteDefaultSenderIdRequest < Struct.new(
      :configuration_set_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_set_arn
    #   The Amazon Resource Name (ARN) of the configuration set.
    #   @return [String]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set.
    #   @return [String]
    #
    # @!attribute [rw] sender_id
    #   The current sender ID for the configuration set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteDefaultSenderIdResult AWS API Documentation
    #
    class DeleteDefaultSenderIdResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :sender_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set or the configuration set's Amazon
    #   Resource Name (ARN) to remove the event destination from. The
    #   ConfigurateSetName and ConfigurationSetArn can be found using the
    #   DescribeConfigurationSets action.
    #   @return [String]
    #
    # @!attribute [rw] event_destination_name
    #   The name of the event destination to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteEventDestinationRequest AWS API Documentation
    #
    class DeleteEventDestinationRequest < Struct.new(
      :configuration_set_name,
      :event_destination_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_set_arn
    #   The Amazon Resource Name (ARN) of the configuration set.
    #   @return [String]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set the event destination was deleted
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] event_destination
    #   The event destination object that was deleted.
    #   @return [Types::EventDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteEventDestinationResult AWS API Documentation
    #
    class DeleteEventDestinationResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :event_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origination_identity
    #   The origination identity to use such as a PhoneNumberId,
    #   PhoneNumberArn, PoolId or PoolArn. You can use DescribePhoneNumbers
    #   to find the values for PhoneNumberId and PhoneNumberArn and
    #   DescribePools to find the values of PoolId and PoolArn.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [String]
    #
    # @!attribute [rw] keyword
    #   The keyword to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteKeywordRequest AWS API Documentation
    #
    class DeleteKeywordRequest < Struct.new(
      :origination_identity,
      :keyword)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origination_identity_arn
    #   The PhoneNumberArn or PoolArn that the keyword was associated with.
    #   @return [String]
    #
    # @!attribute [rw] origination_identity
    #   The PhoneNumberId or PoolId that the keyword was associated with.
    #   @return [String]
    #
    # @!attribute [rw] keyword
    #   The keyword that was deleted.
    #   @return [String]
    #
    # @!attribute [rw] keyword_message
    #   The message that was associated with the deleted keyword.
    #   @return [String]
    #
    # @!attribute [rw] keyword_action
    #   The action that was associated with the deleted keyword.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteKeywordResult AWS API Documentation
    #
    class DeleteKeywordResult < Struct.new(
      :origination_identity_arn,
      :origination_identity,
      :keyword,
      :keyword_message,
      :keyword_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteMediaMessageSpendLimitOverrideRequest AWS API Documentation
    #
    class DeleteMediaMessageSpendLimitOverrideRequest < Aws::EmptyStructure; end

    # @!attribute [rw] monthly_limit
    #   The current monthly limit, in US dollars.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteMediaMessageSpendLimitOverrideResult AWS API Documentation
    #
    class DeleteMediaMessageSpendLimitOverrideResult < Struct.new(
      :monthly_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] opt_out_list_name
    #   The OptOutListName or OptOutListArn of the OptOutList to delete. You
    #   can use DescribeOptOutLists to find the values for OptOutListName
    #   and OptOutListArn.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteOptOutListRequest AWS API Documentation
    #
    class DeleteOptOutListRequest < Struct.new(
      :opt_out_list_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] opt_out_list_arn
    #   The Amazon Resource Name (ARN) of the OptOutList that was removed.
    #   @return [String]
    #
    # @!attribute [rw] opt_out_list_name
    #   The name of the OptOutList that was removed.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the OptOutList was created, in [UNIX epoch time][1]
    #   format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteOptOutListResult AWS API Documentation
    #
    class DeleteOptOutListResult < Struct.new(
      :opt_out_list_arn,
      :opt_out_list_name,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] opt_out_list_name
    #   The OptOutListName or OptOutListArn to remove the phone number from.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [String]
    #
    # @!attribute [rw] opted_out_number
    #   The phone number, in E.164 format, to remove from the OptOutList.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteOptedOutNumberRequest AWS API Documentation
    #
    class DeleteOptedOutNumberRequest < Struct.new(
      :opt_out_list_name,
      :opted_out_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] opt_out_list_arn
    #   The OptOutListArn that the phone number was removed from.
    #   @return [String]
    #
    # @!attribute [rw] opt_out_list_name
    #   The OptOutListName that the phone number was removed from.
    #   @return [String]
    #
    # @!attribute [rw] opted_out_number
    #   The phone number that was removed from the OptOutList.
    #   @return [String]
    #
    # @!attribute [rw] opted_out_timestamp
    #   The time that the number was removed at, in [UNIX epoch time][1]
    #   format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] end_user_opted_out
    #   This is true if it was the end user who requested their phone number
    #   be removed.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteOptedOutNumberResult AWS API Documentation
    #
    class DeleteOptedOutNumberResult < Struct.new(
      :opt_out_list_arn,
      :opt_out_list_name,
      :opted_out_number,
      :opted_out_timestamp,
      :end_user_opted_out)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pool_id
    #   The PoolId or PoolArn of the pool to delete. You can use
    #   DescribePools to find the values for PoolId and PoolArn .
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeletePoolRequest AWS API Documentation
    #
    class DeletePoolRequest < Struct.new(
      :pool_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pool_arn
    #   The Amazon Resource Name (ARN) of the pool that was deleted.
    #   @return [String]
    #
    # @!attribute [rw] pool_id
    #   The PoolId of the pool that was deleted.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the pool.
    #
    #   * CREATING: The pool is currently being created and isn't yet
    #     available for use.
    #
    #   * ACTIVE: The pool is active and available for use.
    #
    #   * DELETING: The pool is being deleted.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   The message type that was associated with the deleted pool.
    #   @return [String]
    #
    # @!attribute [rw] two_way_enabled
    #   By default this is set to false. When set to true you can receive
    #   incoming text messages from your end recipients.
    #   @return [Boolean]
    #
    # @!attribute [rw] two_way_channel_arn
    #   The Amazon Resource Name (ARN) of the TwoWayChannel.
    #   @return [String]
    #
    # @!attribute [rw] two_way_channel_role
    #   An optional IAM Role Arn for a service to assume, to be able to post
    #   inbound SMS messages.
    #   @return [String]
    #
    # @!attribute [rw] self_managed_opt_outs_enabled
    #   By default this is set to false. When set to false and an end
    #   recipient sends a message that begins with HELP or STOP to one of
    #   your dedicated numbers, End User MessagingSMS automatically replies
    #   with a customizable message and adds the end recipient to the
    #   OptOutList. When set to true you're responsible for responding to
    #   HELP and STOP requests. You're also responsible for tracking and
    #   honoring opt-out requests.
    #   @return [Boolean]
    #
    # @!attribute [rw] opt_out_list_name
    #   The name of the OptOutList that was associated with the deleted
    #   pool.
    #   @return [String]
    #
    # @!attribute [rw] shared_routes_enabled
    #   Indicates whether shared routes are enabled for the pool.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the pool was created, in [UNIX epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeletePoolResult AWS API Documentation
    #
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
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteProtectConfigurationRequest AWS API Documentation
    #
    class DeleteProtectConfigurationRequest < Struct.new(
      :protect_configuration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protect_configuration_arn
    #   The Amazon Resource Name (ARN) of the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the protect configuration was created, in [UNIX epoch
    #   time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] account_default
    #   This is true if the protect configuration is set as your account
    #   default protect configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   The status of deletion protection for the protect configuration.
    #   When set to true deletion protection is enabled. By default this is
    #   set to false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteProtectConfigurationResult AWS API Documentation
    #
    class DeleteProtectConfigurationResult < Struct.new(
      :protect_configuration_arn,
      :protect_configuration_id,
      :created_timestamp,
      :account_default,
      :deletion_protection_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] destination_phone_number
    #   The destination phone number in E.164 format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteProtectConfigurationRuleSetNumberOverrideRequest AWS API Documentation
    #
    class DeleteProtectConfigurationRuleSetNumberOverrideRequest < Struct.new(
      :protect_configuration_id,
      :destination_phone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protect_configuration_arn
    #   The Amazon Resource Name (ARN) of the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] destination_phone_number
    #   The destination phone number in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the rule was created, in [UNIX epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] action
    #   The action associated with the rule.
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @!attribute [rw] expiration_timestamp
    #   The time when the resource-based policy was created, in [UNIX epoch
    #   time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteProtectConfigurationRuleSetNumberOverrideResult AWS API Documentation
    #
    class DeleteProtectConfigurationRuleSetNumberOverrideResult < Struct.new(
      :protect_configuration_arn,
      :protect_configuration_id,
      :destination_phone_number,
      :created_timestamp,
      :action,
      :iso_country_code,
      :expiration_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_attachment_id
    #   The unique identifier for the registration attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteRegistrationAttachmentRequest AWS API Documentation
    #
    class DeleteRegistrationAttachmentRequest < Struct.new(
      :registration_attachment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_attachment_arn
    #   The Amazon Resource Name (ARN) for the registration attachment.
    #   @return [String]
    #
    # @!attribute [rw] registration_attachment_id
    #   The unique identifier for the registration attachment.
    #   @return [String]
    #
    # @!attribute [rw] attachment_status
    #   The status of the registration attachment.
    #
    #   * `UPLOAD_IN_PROGRESS` The attachment is being uploaded.
    #
    #   * `UPLOAD_COMPLETE` The attachment has been uploaded.
    #
    #   * `UPLOAD_FAILED` The attachment failed to uploaded.
    #
    #   * `DELETED` The attachment has been deleted..
    #   @return [String]
    #
    # @!attribute [rw] attachment_upload_error_reason
    #   The error message if the upload failed.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the registration attachment was created, in [UNIX
    #   epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteRegistrationAttachmentResult AWS API Documentation
    #
    class DeleteRegistrationAttachmentResult < Struct.new(
      :registration_attachment_arn,
      :registration_attachment_id,
      :attachment_status,
      :attachment_upload_error_reason,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @!attribute [rw] field_path
    #   The path to the registration form field. You can use
    #   DescribeRegistrationFieldDefinitions for a list of **FieldPaths**.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteRegistrationFieldValueRequest AWS API Documentation
    #
    class DeleteRegistrationFieldValueRequest < Struct.new(
      :registration_id,
      :field_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_arn
    #   The Amazon Resource Name (ARN) for the registration.
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the registration.
    #   @return [Integer]
    #
    # @!attribute [rw] field_path
    #   The path to the registration form field.
    #   @return [String]
    #
    # @!attribute [rw] select_choices
    #   An array of values for the form field.
    #   @return [Array<String>]
    #
    # @!attribute [rw] text_value
    #   The text data for a free form field.
    #   @return [String]
    #
    # @!attribute [rw] registration_attachment_id
    #   The unique identifier for the registration attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteRegistrationFieldValueResult AWS API Documentation
    #
    class DeleteRegistrationFieldValueResult < Struct.new(
      :registration_arn,
      :registration_id,
      :version_number,
      :field_path,
      :select_choices,
      :text_value,
      :registration_attachment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteRegistrationRequest AWS API Documentation
    #
    class DeleteRegistrationRequest < Struct.new(
      :registration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_arn
    #   The Amazon Resource Name (ARN) for the registration.
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @!attribute [rw] registration_type
    #   The type of registration form. The list of **RegistrationTypes** can
    #   be found using the DescribeRegistrationTypeDefinitions action.
    #   @return [String]
    #
    # @!attribute [rw] registration_status
    #   The status of the registration.
    #
    #   * `CLOSED`: The phone number or sender ID has been deleted and you
    #     must also delete the registration for the number.
    #
    #   * `CREATED`: Your registration is created but not submitted.
    #
    #   * `COMPLETE`: Your registration has been approved and your
    #     origination identity has been created.
    #
    #   * `DELETED`: The registration has been deleted.
    #
    #   * `PROVISIONING`: Your registration has been approved and your
    #     origination identity is being created.
    #
    #   * `REQUIRES_AUTHENTICATION`: You need to complete email
    #     authentication.
    #
    #   * `REQUIRES_UPDATES`: You must fix your registration and resubmit
    #     it.
    #
    #   * `REVIEWING`: Your registration has been accepted and is being
    #     reviewed.
    #
    #   * `SUBMITTED`: Your registration has been submitted and is awaiting
    #     review.
    #   @return [String]
    #
    # @!attribute [rw] current_version_number
    #   The current version number of the registration.
    #   @return [Integer]
    #
    # @!attribute [rw] approved_version_number
    #   The version number of the registration that was approved.
    #   @return [Integer]
    #
    # @!attribute [rw] latest_denied_version_number
    #   The latest version number of the registration that was denied.
    #   @return [Integer]
    #
    # @!attribute [rw] additional_attributes
    #   Metadata about a given registration which is specific to that
    #   registration type.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the registration was created, in [UNIX epoch time][1]
    #   format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteRegistrationResult AWS API Documentation
    #
    class DeleteRegistrationResult < Struct.new(
      :registration_arn,
      :registration_id,
      :registration_type,
      :registration_status,
      :current_version_number,
      :approved_version_number,
      :latest_denied_version_number,
      :additional_attributes,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the End User MessagingSMS resource
    #   you're deleting the resource-based policy from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteResourcePolicyRequest AWS API Documentation
    #
    class DeleteResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the End User MessagingSMS resource
    #   that the resource-based policy was deleted from.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The JSON formatted resource-based policy that was deleted.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the resource-based policy was created, in [UNIX epoch
    #   time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteResourcePolicyResult AWS API Documentation
    #
    class DeleteResourcePolicyResult < Struct.new(
      :resource_arn,
      :policy,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteTextMessageSpendLimitOverrideRequest AWS API Documentation
    #
    class DeleteTextMessageSpendLimitOverrideRequest < Aws::EmptyStructure; end

    # @!attribute [rw] monthly_limit
    #   The current monthly limit, in US dollars.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteTextMessageSpendLimitOverrideResult AWS API Documentation
    #
    class DeleteTextMessageSpendLimitOverrideResult < Struct.new(
      :monthly_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] verified_destination_number_id
    #   The unique identifier for the verified destination phone number.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteVerifiedDestinationNumberRequest AWS API Documentation
    #
    class DeleteVerifiedDestinationNumberRequest < Struct.new(
      :verified_destination_number_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] verified_destination_number_arn
    #   The Amazon Resource Name (ARN) for the verified destination phone
    #   number.
    #   @return [String]
    #
    # @!attribute [rw] verified_destination_number_id
    #   The unique identifier for the verified destination phone number.
    #   @return [String]
    #
    # @!attribute [rw] destination_phone_number
    #   The verified destination phone number, in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the destination phone number was created, in [UNIX
    #   epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteVerifiedDestinationNumberResult AWS API Documentation
    #
    class DeleteVerifiedDestinationNumberResult < Struct.new(
      :verified_destination_number_arn,
      :verified_destination_number_id,
      :destination_phone_number,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteVoiceMessageSpendLimitOverrideRequest AWS API Documentation
    #
    class DeleteVoiceMessageSpendLimitOverrideRequest < Aws::EmptyStructure; end

    # @!attribute [rw] monthly_limit
    #   The current monthly limit, in US dollars.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteVoiceMessageSpendLimitOverrideResult AWS API Documentation
    #
    class DeleteVoiceMessageSpendLimitOverrideResult < Struct.new(
      :monthly_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per each request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeAccountAttributesRequest AWS API Documentation
    #
    class DescribeAccountAttributesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_attributes
    #   An array of AccountAttributes objects.
    #   @return [Array<Types::AccountAttribute>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. If this
    #   field is empty then there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeAccountAttributesResult AWS API Documentation
    #
    class DescribeAccountAttributesResult < Struct.new(
      :account_attributes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per each request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeAccountLimitsRequest AWS API Documentation
    #
    class DescribeAccountLimitsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_limits
    #   An array of AccountLimit objects that show the current spend limits.
    #   @return [Array<Types::AccountLimit>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. If this
    #   field is empty then there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeAccountLimitsResult AWS API Documentation
    #
    class DescribeAccountLimitsResult < Struct.new(
      :account_limits,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_set_names
    #   An array of strings. Each element can be either a
    #   ConfigurationSetName or ConfigurationSetArn.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   An array of filters to apply to the results that are returned.
    #   @return [Array<Types::ConfigurationSetFilter>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per each request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeConfigurationSetsRequest AWS API Documentation
    #
    class DescribeConfigurationSetsRequest < Struct.new(
      :configuration_set_names,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_sets
    #   An array of ConfigurationSets objects.
    #   @return [Array<Types::ConfigurationSetInformation>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. If this
    #   field is empty then there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeConfigurationSetsResult AWS API Documentation
    #
    class DescribeConfigurationSetsResult < Struct.new(
      :configuration_sets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origination_identity
    #   The origination identity to use such as a PhoneNumberId,
    #   PhoneNumberArn, SenderId or SenderIdArn. You can use
    #   DescribePhoneNumbers to find the values for PhoneNumberId and
    #   PhoneNumberArn while DescribeSenderIds can be used to get the values
    #   for SenderId and SenderIdArn.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [String]
    #
    # @!attribute [rw] keywords
    #   An array of keywords to search for.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   An array of keyword filters to filter the results.
    #   @return [Array<Types::KeywordFilter>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per each request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeKeywordsRequest AWS API Documentation
    #
    class DescribeKeywordsRequest < Struct.new(
      :origination_identity,
      :keywords,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origination_identity_arn
    #   The PhoneNumberArn or PoolArn that is associated with the
    #   OriginationIdentity.
    #   @return [String]
    #
    # @!attribute [rw] origination_identity
    #   The PhoneNumberId or PoolId that is associated with the
    #   OriginationIdentity.
    #   @return [String]
    #
    # @!attribute [rw] keywords
    #   An array of KeywordInformation objects that contain the results.
    #   @return [Array<Types::KeywordInformation>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. If this
    #   field is empty then there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeKeywordsResult AWS API Documentation
    #
    class DescribeKeywordsResult < Struct.new(
      :origination_identity_arn,
      :origination_identity,
      :keywords,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] opt_out_list_names
    #   The OptOutLists to show the details of. This is an array of strings
    #   that can be either the OptOutListName or OptOutListArn.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per each request.
    #   @return [Integer]
    #
    # @!attribute [rw] owner
    #   Use `SELF` to filter the list of Opt-Out List to ones your account
    #   owns or use `SHARED` to filter on Opt-Out List shared with your
    #   account. The `Owner` and `OptOutListNames` parameters can't be used
    #   at the same time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeOptOutListsRequest AWS API Documentation
    #
    class DescribeOptOutListsRequest < Struct.new(
      :opt_out_list_names,
      :next_token,
      :max_results,
      :owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] opt_out_lists
    #   An array of OptOutListInformation objects that contain the details
    #   for the requested OptOutLists.
    #   @return [Array<Types::OptOutListInformation>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. If this
    #   field is empty then there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeOptOutListsResult AWS API Documentation
    #
    class DescribeOptOutListsResult < Struct.new(
      :opt_out_lists,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] opt_out_list_name
    #   The OptOutListName or OptOutListArn of the OptOutList. You can use
    #   DescribeOptOutLists to find the values for OptOutListName and
    #   OptOutListArn.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [String]
    #
    # @!attribute [rw] opted_out_numbers
    #   An array of phone numbers to search for in the OptOutList.
    #
    #   If you specify an opted out number that isn't valid, an exception
    #   is returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   An array of OptedOutFilter objects to filter the results on.
    #   @return [Array<Types::OptedOutFilter>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per each request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeOptedOutNumbersRequest AWS API Documentation
    #
    class DescribeOptedOutNumbersRequest < Struct.new(
      :opt_out_list_name,
      :opted_out_numbers,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] opt_out_list_arn
    #   The Amazon Resource Name (ARN) of the OptOutList.
    #   @return [String]
    #
    # @!attribute [rw] opt_out_list_name
    #   The name of the OptOutList.
    #   @return [String]
    #
    # @!attribute [rw] opted_out_numbers
    #   An array of OptedOutNumbersInformation objects that provide
    #   information about the requested OptedOutNumbers.
    #   @return [Array<Types::OptedOutNumberInformation>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. If this
    #   field is empty then there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeOptedOutNumbersResult AWS API Documentation
    #
    class DescribeOptedOutNumbersResult < Struct.new(
      :opt_out_list_arn,
      :opt_out_list_name,
      :opted_out_numbers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_ids
    #   The unique identifier of phone numbers to find information about.
    #   This is an array of strings that can be either the PhoneNumberId or
    #   PhoneNumberArn.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   An array of PhoneNumberFilter objects to filter the results.
    #   @return [Array<Types::PhoneNumberFilter>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per each request.
    #   @return [Integer]
    #
    # @!attribute [rw] owner
    #   Use `SELF` to filter the list of phone numbers to ones your account
    #   owns or use `SHARED` to filter on phone numbers shared with your
    #   account. The `Owner` and `PhoneNumberIds` parameters can't be used
    #   at the same time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribePhoneNumbersRequest AWS API Documentation
    #
    class DescribePhoneNumbersRequest < Struct.new(
      :phone_number_ids,
      :filters,
      :next_token,
      :max_results,
      :owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_numbers
    #   An array of PhoneNumberInformation objects that contain the details
    #   for the requested phone numbers.
    #   @return [Array<Types::PhoneNumberInformation>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. If this
    #   field is empty then there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribePhoneNumbersResult AWS API Documentation
    #
    class DescribePhoneNumbersResult < Struct.new(
      :phone_numbers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pool_ids
    #   The unique identifier of pools to find. This is an array of strings
    #   that can be either the PoolId or PoolArn.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   An array of PoolFilter objects to filter the results.
    #   @return [Array<Types::PoolFilter>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per each request.
    #   @return [Integer]
    #
    # @!attribute [rw] owner
    #   Use `SELF` to filter the list of Pools to ones your account owns or
    #   use `SHARED` to filter on Pools shared with your account. The
    #   `Owner` and `PoolIds` parameters can't be used at the same time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribePoolsRequest AWS API Documentation
    #
    class DescribePoolsRequest < Struct.new(
      :pool_ids,
      :filters,
      :next_token,
      :max_results,
      :owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pools
    #   An array of PoolInformation objects that contain the details for the
    #   requested pools.
    #   @return [Array<Types::PoolInformation>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. If this
    #   field is empty then there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribePoolsResult AWS API Documentation
    #
    class DescribePoolsResult < Struct.new(
      :pools,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protect_configuration_ids
    #   An array of protect configuration identifiers to search for.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   An array of ProtectConfigurationFilter objects to filter the
    #   results.
    #   @return [Array<Types::ProtectConfigurationFilter>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per each request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeProtectConfigurationsRequest AWS API Documentation
    #
    class DescribeProtectConfigurationsRequest < Struct.new(
      :protect_configuration_ids,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protect_configurations
    #   An array of ProtectConfigurationInformation objects that contain the
    #   details for the request.
    #   @return [Array<Types::ProtectConfigurationInformation>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeProtectConfigurationsResult AWS API Documentation
    #
    class DescribeProtectConfigurationsResult < Struct.new(
      :protect_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_attachment_ids
    #   The unique identifier of registration attachments to find. This is
    #   an array of **RegistrationAttachmentId**.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   An array of RegistrationAttachmentFilter objects to filter the
    #   results.
    #   @return [Array<Types::RegistrationAttachmentFilter>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per each request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeRegistrationAttachmentsRequest AWS API Documentation
    #
    class DescribeRegistrationAttachmentsRequest < Struct.new(
      :registration_attachment_ids,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_attachments
    #   An array of **RegistrationAttachments** objects that contain the
    #   details for the requested registration attachments.
    #   @return [Array<Types::RegistrationAttachmentsInformation>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeRegistrationAttachmentsResult AWS API Documentation
    #
    class DescribeRegistrationAttachmentsResult < Struct.new(
      :registration_attachments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_type
    #   The type of registration form. The list of **RegistrationTypes** can
    #   be found using the DescribeRegistrationTypeDefinitions action.
    #   @return [String]
    #
    # @!attribute [rw] section_path
    #   The path to the section of the registration.
    #   @return [String]
    #
    # @!attribute [rw] field_paths
    #   An array of paths to the registration form field.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per each request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeRegistrationFieldDefinitionsRequest AWS API Documentation
    #
    class DescribeRegistrationFieldDefinitionsRequest < Struct.new(
      :registration_type,
      :section_path,
      :field_paths,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_type
    #   The type of registration form. The list of **RegistrationTypes** can
    #   be found using the DescribeRegistrationTypeDefinitions action.
    #   @return [String]
    #
    # @!attribute [rw] registration_field_definitions
    #   An array of RegistrationFieldDefinitions objects that contain the
    #   details for the requested fields.
    #   @return [Array<Types::RegistrationFieldDefinition>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeRegistrationFieldDefinitionsResult AWS API Documentation
    #
    class DescribeRegistrationFieldDefinitionsResult < Struct.new(
      :registration_type,
      :registration_field_definitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the registration.
    #   @return [Integer]
    #
    # @!attribute [rw] section_path
    #   The path to the section of the registration.
    #   @return [String]
    #
    # @!attribute [rw] field_paths
    #   An array of paths to the registration form field.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per each request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeRegistrationFieldValuesRequest AWS API Documentation
    #
    class DescribeRegistrationFieldValuesRequest < Struct.new(
      :registration_id,
      :version_number,
      :section_path,
      :field_paths,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_arn
    #   The Amazon Resource Name (ARN) for the registration.
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The current version of the registration.
    #   @return [Integer]
    #
    # @!attribute [rw] registration_field_values
    #   An array of RegistrationFieldValues objects that contain the values
    #   for the requested registration.
    #   @return [Array<Types::RegistrationFieldValueInformation>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeRegistrationFieldValuesResult AWS API Documentation
    #
    class DescribeRegistrationFieldValuesResult < Struct.new(
      :registration_arn,
      :registration_id,
      :version_number,
      :registration_field_values,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_type
    #   The type of registration form. The list of **RegistrationTypes** can
    #   be found using the DescribeRegistrationTypeDefinitions action.
    #   @return [String]
    #
    # @!attribute [rw] section_paths
    #   An array of paths for the registration form section.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per each request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeRegistrationSectionDefinitionsRequest AWS API Documentation
    #
    class DescribeRegistrationSectionDefinitionsRequest < Struct.new(
      :registration_type,
      :section_paths,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_type
    #   The type of registration form. The list of **RegistrationTypes** can
    #   be found using the DescribeRegistrationTypeDefinitions action.
    #   @return [String]
    #
    # @!attribute [rw] registration_section_definitions
    #   An array of RegistrationSectionDefinition objects.
    #   @return [Array<Types::RegistrationSectionDefinition>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeRegistrationSectionDefinitionsResult AWS API Documentation
    #
    class DescribeRegistrationSectionDefinitionsResult < Struct.new(
      :registration_type,
      :registration_section_definitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_types
    #   The type of registration form. The list of **RegistrationTypes** can
    #   be found using the DescribeRegistrationTypeDefinitions action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   An array of RegistrationFilter objects to filter the results.
    #   @return [Array<Types::RegistrationTypeFilter>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per each request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeRegistrationTypeDefinitionsRequest AWS API Documentation
    #
    class DescribeRegistrationTypeDefinitionsRequest < Struct.new(
      :registration_types,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_type_definitions
    #   The type of registration form. The list of **RegistrationTypes** can
    #   be found using the DescribeRegistrationTypeDefinitions action.
    #   @return [Array<Types::RegistrationTypeDefinition>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeRegistrationTypeDefinitionsResult AWS API Documentation
    #
    class DescribeRegistrationTypeDefinitionsResult < Struct.new(
      :registration_type_definitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @!attribute [rw] version_numbers
    #   An array of registration version numbers.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] filters
    #   An array of RegistrationVersionFilter objects to filter the results.
    #   @return [Array<Types::RegistrationVersionFilter>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per each request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeRegistrationVersionsRequest AWS API Documentation
    #
    class DescribeRegistrationVersionsRequest < Struct.new(
      :registration_id,
      :version_numbers,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_arn
    #   The Amazon Resource Name (ARN) for the registration.
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @!attribute [rw] registration_versions
    #   An array of RegistrationVersions objects.
    #   @return [Array<Types::RegistrationVersionInformation>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeRegistrationVersionsResult AWS API Documentation
    #
    class DescribeRegistrationVersionsResult < Struct.new(
      :registration_arn,
      :registration_id,
      :registration_versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_ids
    #   An array of unique identifiers for each registration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   An array of RegistrationFilter objects to filter the results.
    #   @return [Array<Types::RegistrationFilter>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per each request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeRegistrationsRequest AWS API Documentation
    #
    class DescribeRegistrationsRequest < Struct.new(
      :registration_ids,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registrations
    #   An array of RegistrationInformation objects.
    #   @return [Array<Types::RegistrationInformation>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeRegistrationsResult AWS API Documentation
    #
    class DescribeRegistrationsResult < Struct.new(
      :registrations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sender_ids
    #   An array of SenderIdAndCountry objects to search for.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [Array<Types::SenderIdAndCountry>]
    #
    # @!attribute [rw] filters
    #   An array of SenderIdFilter objects to filter the results.
    #   @return [Array<Types::SenderIdFilter>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per each request.
    #   @return [Integer]
    #
    # @!attribute [rw] owner
    #   Use `SELF` to filter the list of Sender Ids to ones your account
    #   owns or use `SHARED` to filter on Sender Ids shared with your
    #   account. The `Owner` and `SenderIds` parameters can't be used at
    #   the same time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeSenderIdsRequest AWS API Documentation
    #
    class DescribeSenderIdsRequest < Struct.new(
      :sender_ids,
      :filters,
      :next_token,
      :max_results,
      :owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sender_ids
    #   An array of SernderIdInformation objects that contain the details
    #   for the requested SenderIds.
    #   @return [Array<Types::SenderIdInformation>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. If this
    #   field is empty then there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeSenderIdsResult AWS API Documentation
    #
    class DescribeSenderIdsResult < Struct.new(
      :sender_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per each request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeSpendLimitsRequest AWS API Documentation
    #
    class DescribeSpendLimitsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] spend_limits
    #   An array of SpendLimit objects that contain the details for the
    #   requested spend limits.
    #   @return [Array<Types::SpendLimit>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. If this
    #   field is empty then there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeSpendLimitsResult AWS API Documentation
    #
    class DescribeSpendLimitsResult < Struct.new(
      :spend_limits,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] verified_destination_number_ids
    #   An array of VerifiedDestinationNumberid to retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] destination_phone_numbers
    #   An array of verified destination phone number, in E.164 format.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   An array of VerifiedDestinationNumberFilter objects to filter the
    #   results.
    #   @return [Array<Types::VerifiedDestinationNumberFilter>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per each request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeVerifiedDestinationNumbersRequest AWS API Documentation
    #
    class DescribeVerifiedDestinationNumbersRequest < Struct.new(
      :verified_destination_number_ids,
      :destination_phone_numbers,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] verified_destination_numbers
    #   An array of VerifiedDestinationNumberInformation objects
    #   @return [Array<Types::VerifiedDestinationNumberInformation>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeVerifiedDestinationNumbersResult AWS API Documentation
    #
    class DescribeVerifiedDestinationNumbersResult < Struct.new(
      :verified_destination_numbers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pool_id
    #   The unique identifier for the pool to disassociate with the
    #   origination identity. This value can be either the PoolId or
    #   PoolArn.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [String]
    #
    # @!attribute [rw] origination_identity
    #   The origination identity to use such as a PhoneNumberId,
    #   PhoneNumberArn, SenderId or SenderIdArn. You can use
    #   DescribePhoneNumbers find the values for PhoneNumberId and
    #   PhoneNumberArn, or use DescribeSenderIds to get the values for
    #   SenderId and SenderIdArn.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DisassociateOriginationIdentityRequest AWS API Documentation
    #
    class DisassociateOriginationIdentityRequest < Struct.new(
      :pool_id,
      :origination_identity,
      :iso_country_code,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pool_arn
    #   The Amazon Resource Name (ARN) of the pool.
    #   @return [String]
    #
    # @!attribute [rw] pool_id
    #   The PoolId of the pool no longer associated with the origination
    #   identity.
    #   @return [String]
    #
    # @!attribute [rw] origination_identity_arn
    #   The PhoneNumberArn or SenderIdArn of the origination identity.
    #   @return [String]
    #
    # @!attribute [rw] origination_identity
    #   The PhoneNumberId or SenderId of the origination identity.
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DisassociateOriginationIdentityResult AWS API Documentation
    #
    class DisassociateOriginationIdentityResult < Struct.new(
      :pool_arn,
      :pool_id,
      :origination_identity_arn,
      :origination_identity,
      :iso_country_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the ConfigurationSet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DisassociateProtectConfigurationRequest AWS API Documentation
    #
    class DisassociateProtectConfigurationRequest < Struct.new(
      :protect_configuration_id,
      :configuration_set_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_set_arn
    #   The Amazon Resource Name (ARN) of the configuration set.
    #   @return [String]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the ConfigurationSet.
    #   @return [String]
    #
    # @!attribute [rw] protect_configuration_arn
    #   The Amazon Resource Name (ARN) of the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DisassociateProtectConfigurationResult AWS API Documentation
    #
    class DisassociateProtectConfigurationResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :protect_configuration_arn,
      :protect_configuration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DiscardRegistrationVersionRequest AWS API Documentation
    #
    class DiscardRegistrationVersionRequest < Struct.new(
      :registration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_arn
    #   The Amazon Resource Name (ARN) for the registration.
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the registration.
    #   @return [Integer]
    #
    # @!attribute [rw] registration_version_status
    #   The status of the registration version.
    #
    #   * `APPROVED`: Your registration has been approved.
    #
    #   * `ARCHIVED`: Your previously approved registration version moves
    #     into this status when a more recently submitted version is
    #     approved.
    #
    #   * `DENIED`: You must fix your registration and resubmit it.
    #
    #   * `DISCARDED`: You've abandon this version of their registration to
    #     start over with a new version.
    #
    #   * `DRAFT`: The initial status of a registration version after it’s
    #     created.
    #
    #   * `REQUIRES_AUTHENTICATION`: You need to complete email
    #     authentication.
    #
    #   * `REVIEWING`: Your registration has been accepted and is being
    #     reviewed.
    #
    #   * `REVOKED`: Your previously approved registration has been revoked.
    #
    #   * `SUBMITTED`: Your registration has been submitted.
    #   @return [String]
    #
    # @!attribute [rw] registration_version_status_history
    #   The **RegistrationVersionStatusHistory** object contains the time
    #   stamps for when the reservations status changes.
    #   @return [Types::RegistrationVersionStatusHistory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DiscardRegistrationVersionResult AWS API Documentation
    #
    class DiscardRegistrationVersionResult < Struct.new(
      :registration_arn,
      :registration_id,
      :version_number,
      :registration_version_status,
      :registration_version_status_history)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an event destination.
    #
    # Event destinations are associated with configuration sets, which
    # enable you to publish message sending events to CloudWatch, Firehose,
    # or Amazon SNS.
    #
    # @!attribute [rw] event_destination_name
    #   The name of the EventDestination.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   When set to true events will be logged.
    #   @return [Boolean]
    #
    # @!attribute [rw] matching_event_types
    #   An array of event types that determine which events to log.
    #
    #   <note markdown="1"> The `TEXT_SENT` event type is not supported.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] cloud_watch_logs_destination
    #   An object that contains information about an event destination that
    #   sends logging events to Amazon CloudWatch logs.
    #   @return [Types::CloudWatchLogsDestination]
    #
    # @!attribute [rw] kinesis_firehose_destination
    #   An object that contains information about an event destination for
    #   logging to Amazon Data Firehose.
    #   @return [Types::KinesisFirehoseDestination]
    #
    # @!attribute [rw] sns_destination
    #   An object that contains information about an event destination that
    #   sends logging events to Amazon SNS.
    #   @return [Types::SnsDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/EventDestination AWS API Documentation
    #
    class EventDestination < Struct.new(
      :event_destination_name,
      :enabled,
      :matching_event_types,
      :cloud_watch_logs_destination,
      :kinesis_firehose_destination,
      :sns_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] number_capability
    #   The capability type to return the CountryRuleSet for. Valid values
    #   are `SMS`, `VOICE`, or `MMS`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/GetProtectConfigurationCountryRuleSetRequest AWS API Documentation
    #
    class GetProtectConfigurationCountryRuleSetRequest < Struct.new(
      :protect_configuration_id,
      :number_capability)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protect_configuration_arn
    #   The Amazon Resource Name (ARN) of the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] number_capability
    #   The capability type associated with the returned
    #   ProtectConfigurationCountryRuleSetInformation objects.
    #   @return [String]
    #
    # @!attribute [rw] country_rule_set
    #   A map of ProtectConfigurationCountryRuleSetInformation objects that
    #   contain the details for the requested NumberCapability. The Key is
    #   the two-letter ISO country code. For a list of supported ISO country
    #   codes, see [Supported countries and regions (SMS channel)][1] in the
    #   End User MessagingSMS User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-sms-by-country.html
    #   @return [Hash<String,Types::ProtectConfigurationCountryRuleSetInformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/GetProtectConfigurationCountryRuleSetResult AWS API Documentation
    #
    class GetProtectConfigurationCountryRuleSetResult < Struct.new(
      :protect_configuration_arn,
      :protect_configuration_id,
      :number_capability,
      :country_rule_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the End User MessagingSMS resource
    #   attached to the resource-based policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/GetResourcePolicyRequest AWS API Documentation
    #
    class GetResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the End User MessagingSMS resource
    #   attached to the resource-based policy.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The JSON formatted string that contains the resource-based policy
    #   attached to the End User MessagingSMS resource.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the resource-based policy was created, in [UNIX epoch
    #   time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/GetResourcePolicyResult AWS API Documentation
    #
    class GetResourcePolicyResult < Struct.new(
      :resource_arn,
      :policy,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The API encountered an unexpected error and couldn't complete the
    # request. You might be able to successfully issue the request again in
    # the future.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The unique identifier of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information for keywords that meet a specified criteria.
    #
    # @!attribute [rw] name
    #   The name of the attribute to filter on.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   An array values to filter for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/KeywordFilter AWS API Documentation
    #
    class KeywordFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information for all keywords in a pool.
    #
    # @!attribute [rw] keyword
    #   The keyword as a string.
    #   @return [String]
    #
    # @!attribute [rw] keyword_message
    #   A custom message that can be used with the keyword.
    #   @return [String]
    #
    # @!attribute [rw] keyword_action
    #   The action to perform for the keyword.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/KeywordInformation AWS API Documentation
    #
    class KeywordInformation < Struct.new(
      :keyword,
      :keyword_message,
      :keyword_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the delivery stream Amazon Resource Name (ARN), and the ARN
    # of the Identity and Access Management (IAM) role associated with a
    # Firehose event destination.
    #
    # Event destinations, such as Firehose, are associated with
    # configuration sets, which enable you to publish message sending
    # events.
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of an Identity and Access Management role that is able to
    #   write event data to an Amazon Data Firehose destination.
    #   @return [String]
    #
    # @!attribute [rw] delivery_stream_arn
    #   The Amazon Resource Name (ARN) of the delivery stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/KinesisFirehoseDestination AWS API Documentation
    #
    class KinesisFirehoseDestination < Struct.new(
      :iam_role_arn,
      :delivery_stream_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pool_id
    #   The unique identifier for the pool. This value can be either the
    #   PoolId or PoolArn.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   An array of PoolOriginationIdentitiesFilter objects to filter the
    #   results..
    #   @return [Array<Types::PoolOriginationIdentitiesFilter>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per each request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ListPoolOriginationIdentitiesRequest AWS API Documentation
    #
    class ListPoolOriginationIdentitiesRequest < Struct.new(
      :pool_id,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pool_arn
    #   The Amazon Resource Name (ARN) for the pool.
    #   @return [String]
    #
    # @!attribute [rw] pool_id
    #   The unique PoolId of the pool.
    #   @return [String]
    #
    # @!attribute [rw] origination_identities
    #   An array of any OriginationIdentityMetadata objects.
    #   @return [Array<Types::OriginationIdentityMetadata>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. If this
    #   field is empty then there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ListPoolOriginationIdentitiesResult AWS API Documentation
    #
    class ListPoolOriginationIdentitiesResult < Struct.new(
      :pool_arn,
      :pool_id,
      :origination_identities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   An array of ProtectConfigurationRuleSetNumberOverrideFilterItem
    #   objects to filter the results.
    #   @return [Array<Types::ProtectConfigurationRuleSetNumberOverrideFilterItem>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per each request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ListProtectConfigurationRuleSetNumberOverridesRequest AWS API Documentation
    #
    class ListProtectConfigurationRuleSetNumberOverridesRequest < Struct.new(
      :protect_configuration_id,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protect_configuration_arn
    #   The Amazon Resource Name (ARN) of the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] rule_set_number_overrides
    #   An array of RuleSetNumberOverrides objects.
    #   @return [Array<Types::ProtectConfigurationRuleSetNumberOverride>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ListProtectConfigurationRuleSetNumberOverridesResult AWS API Documentation
    #
    class ListProtectConfigurationRuleSetNumberOverridesResult < Struct.new(
      :protect_configuration_arn,
      :protect_configuration_id,
      :rule_set_number_overrides,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   An array of RegistrationAssociationFilter to apply to the results
    #   that are returned.
    #   @return [Array<Types::RegistrationAssociationFilter>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per each request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ListRegistrationAssociationsRequest AWS API Documentation
    #
    class ListRegistrationAssociationsRequest < Struct.new(
      :registration_id,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_arn
    #   The Amazon Resource Name (ARN) for the registration.
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @!attribute [rw] registration_type
    #   The type of registration form. The list of **RegistrationTypes** can
    #   be found using the DescribeRegistrationTypeDefinitions action.
    #   @return [String]
    #
    # @!attribute [rw] registration_associations
    #   An array of RegistrationAssociationMetadata objects.
    #   @return [Array<Types::RegistrationAssociationMetadata>]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results. You
    #   don't need to supply a value for this field in the initial request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ListRegistrationAssociationsResult AWS API Documentation
    #
    class ListRegistrationAssociationsResult < Struct.new(
      :registration_arn,
      :registration_id,
      :registration_type,
      :registration_associations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to query for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key and value pair tags that are associated with the
    #   resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ListTagsForResourceResult AWS API Documentation
    #
    class ListTagsForResourceResult < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information for all OptOutList in an Amazon Web Services account.
    #
    # @!attribute [rw] opt_out_list_arn
    #   The Amazon Resource Name (ARN) of the OptOutList.
    #   @return [String]
    #
    # @!attribute [rw] opt_out_list_name
    #   The name of the OptOutList.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the OutOutList was created, in [UNIX epoch time][1]
    #   format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/OptOutListInformation AWS API Documentation
    #
    class OptOutListInformation < Struct.new(
      :opt_out_list_arn,
      :opt_out_list_name,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information for opted out numbers that meet a specified criteria.
    #
    # @!attribute [rw] name
    #   The name of the attribute to filter on.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   An array of values to filter for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/OptedOutFilter AWS API Documentation
    #
    class OptedOutFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information for an opted out number in an Amazon Web Services
    # account.
    #
    # @!attribute [rw] opted_out_number
    #   The phone number that is opted out.
    #   @return [String]
    #
    # @!attribute [rw] opted_out_timestamp
    #   The time that the op tout occurred, in [UNIX epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] end_user_opted_out
    #   This is set to true if it was the end recipient that opted out.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/OptedOutNumberInformation AWS API Documentation
    #
    class OptedOutNumberInformation < Struct.new(
      :opted_out_number,
      :opted_out_timestamp,
      :end_user_opted_out)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata for an origination identity associated with a pool.
    #
    # @!attribute [rw] origination_identity_arn
    #   The Amazon Resource Name (ARN) associated with the origination
    #   identity.
    #   @return [String]
    #
    # @!attribute [rw] origination_identity
    #   The unique identifier of the origination identity.
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @!attribute [rw] number_capabilities
    #   Describes if the origination identity can be used for text messages,
    #   voice calls or both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] phone_number
    #   The phone number in E.164 format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/OriginationIdentityMetadata AWS API Documentation
    #
    class OriginationIdentityMetadata < Struct.new(
      :origination_identity_arn,
      :origination_identity,
      :iso_country_code,
      :number_capabilities,
      :phone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information for a phone number that meets a specified criteria.
    #
    # @!attribute [rw] name
    #   The name of the attribute to filter on.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   An array values to filter for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PhoneNumberFilter AWS API Documentation
    #
    class PhoneNumberFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information for a phone number, in E.164 format, in an Amazon Web
    # Services account.
    #
    # @!attribute [rw] phone_number_arn
    #   The Amazon Resource Name (ARN) associated with the phone number.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_id
    #   The unique identifier for the phone number.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the phone number.
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   The type of message. Valid values are TRANSACTIONAL for messages
    #   that are critical or time-sensitive and PROMOTIONAL for messages
    #   that aren't critical or time-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] number_capabilities
    #   Describes if the origination identity can be used for text messages,
    #   voice calls or both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] number_type
    #   The type of phone number.
    #   @return [String]
    #
    # @!attribute [rw] monthly_leasing_price
    #   The price, in US dollars, to lease the phone number.
    #   @return [String]
    #
    # @!attribute [rw] two_way_enabled
    #   By default this is set to false. When set to true you can receive
    #   incoming text messages from your end recipients using the
    #   TwoWayChannelArn.
    #   @return [Boolean]
    #
    # @!attribute [rw] two_way_channel_arn
    #   The Amazon Resource Name (ARN) of the two way channel.
    #   @return [String]
    #
    # @!attribute [rw] two_way_channel_role
    #   An optional IAM Role Arn for a service to assume, to be able to post
    #   inbound SMS messages.
    #   @return [String]
    #
    # @!attribute [rw] self_managed_opt_outs_enabled
    #   When set to false and an end recipient sends a message that begins
    #   with HELP or STOP to one of your dedicated numbers, End User
    #   MessagingSMS automatically replies with a customizable message and
    #   adds the end recipient to the OptOutList. When set to true you're
    #   responsible for responding to HELP and STOP requests. You're also
    #   responsible for tracking and honoring opt-out request. For more
    #   information see [Self-managed opt-outs][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pinpoint/latest/userguide/settings-sms-managing.html#settings-account-sms-self-managed-opt-out
    #   @return [Boolean]
    #
    # @!attribute [rw] opt_out_list_name
    #   The name of the OptOutList associated with the phone number.
    #   @return [String]
    #
    # @!attribute [rw] international_sending_enabled
    #   When set to true the international sending of phone number is
    #   Enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   When set to true the phone number can't be deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] pool_id
    #   The unique identifier of the pool associated with the phone number.
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the phone number was created, in [UNIX epoch time][1]
    #   format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PhoneNumberInformation AWS API Documentation
    #
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
      :international_sending_enabled,
      :deletion_protection_enabled,
      :pool_id,
      :registration_id,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information for a pool that meets a specified criteria.
    #
    # @!attribute [rw] name
    #   The name of the attribute to filter on.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   An array values to filter for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PoolFilter AWS API Documentation
    #
    class PoolFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information for a pool in an Amazon Web Services account.
    #
    # @!attribute [rw] pool_arn
    #   The Amazon Resource Name (ARN) for the pool.
    #   @return [String]
    #
    # @!attribute [rw] pool_id
    #   The unique identifier for the pool.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the pool.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   The type of message. Valid values are TRANSACTIONAL for messages
    #   that are critical or time-sensitive and PROMOTIONAL for messages
    #   that aren't critical or time-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] two_way_enabled
    #   When set to true you can receive incoming text messages from your
    #   end recipients using the TwoWayChannelArn.
    #   @return [Boolean]
    #
    # @!attribute [rw] two_way_channel_arn
    #   The Amazon Resource Name (ARN) of the two way channel.
    #   @return [String]
    #
    # @!attribute [rw] two_way_channel_role
    #   An optional IAM Role Arn for a service to assume, to be able to post
    #   inbound SMS messages.
    #   @return [String]
    #
    # @!attribute [rw] self_managed_opt_outs_enabled
    #   When set to false, an end recipient sends a message that begins with
    #   HELP or STOP to one of your dedicated numbers, End User MessagingSMS
    #   automatically replies with a customizable message and adds the end
    #   recipient to the OptOutList. When set to true you're responsible
    #   for responding to HELP and STOP requests. You're also responsible
    #   for tracking and honoring opt-out requests. For more information see
    #   [Self-managed opt-outs][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pinpoint/latest/userguide/settings-sms-managing.html#settings-account-sms-self-managed-opt-out
    #   @return [Boolean]
    #
    # @!attribute [rw] opt_out_list_name
    #   The name of the OptOutList associated with the pool.
    #   @return [String]
    #
    # @!attribute [rw] shared_routes_enabled
    #   Allows you to enable shared routes on your pool.
    #
    #   By default, this is set to `False`. If you set this value to `True`,
    #   your messages are sent using phone numbers or sender IDs (depending
    #   on the country) that are shared with other users. In some countries,
    #   such as the United States, senders aren't allowed to use shared
    #   routes and must use a dedicated phone number or short code.
    #   @return [Boolean]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   When set to true the pool can't be deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the pool was created, in [UNIX epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PoolInformation AWS API Documentation
    #
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
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about origination identities associated with a pool that
    # meets a specified criteria.
    #
    # @!attribute [rw] name
    #   The name of the attribute to filter on.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   An array values to filter for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PoolOriginationIdentitiesFilter AWS API Documentation
    #
    class PoolOriginationIdentitiesFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The types of statuses that can be used.
    #
    # @!attribute [rw] protect_status
    #   The types of protection that can be used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ProtectConfigurationCountryRuleSetInformation AWS API Documentation
    #
    class ProtectConfigurationCountryRuleSetInformation < Struct.new(
      :protect_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter definition for filtering protect configurations that meet a
    # specified criteria.
    #
    # @!attribute [rw] name
    #   The name of the attribute to filter on.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   An array of values to filter for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ProtectConfigurationFilter AWS API Documentation
    #
    class ProtectConfigurationFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information on the specified protect configuration.
    #
    # @!attribute [rw] protect_configuration_arn
    #   The Amazon Resource Name (ARN) of the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the protect configuration was created, in [UNIX epoch
    #   time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] account_default
    #   This is true if the protect configuration is set as your account
    #   default protect configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   The status of deletion protection for the protect configuration.
    #   When set to true deletion protection is enabled. By default this is
    #   set to false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ProtectConfigurationInformation AWS API Documentation
    #
    class ProtectConfigurationInformation < Struct.new(
      :protect_configuration_arn,
      :protect_configuration_id,
      :created_timestamp,
      :account_default,
      :deletion_protection_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details on phone number rule overrides for a protect
    # configuration.
    #
    # @!attribute [rw] destination_phone_number
    #   The destination phone number in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the rule was created, in [UNIX epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] action
    #   The action for the rule to perform of either blocking or allowing
    #   messages to the destination phone number.
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @!attribute [rw] expiration_timestamp
    #   The time the rule will expire at. If `ExpirationTimestamp` is not
    #   set then the rule will not expire.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ProtectConfigurationRuleSetNumberOverride AWS API Documentation
    #
    class ProtectConfigurationRuleSetNumberOverride < Struct.new(
      :destination_phone_number,
      :created_timestamp,
      :action,
      :iso_country_code,
      :expiration_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information for a protect configuration rule set number override
    # that meets a specified criteria.
    #
    # @!attribute [rw] name
    #   The name of the attribute to filter on.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   An array values to filter for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ProtectConfigurationRuleSetNumberOverrideFilterItem AWS API Documentation
    #
    class ProtectConfigurationRuleSetNumberOverrideFilterItem < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origination_identity
    #   The origination identity to use such as a PhoneNumberId,
    #   PhoneNumberArn, SenderId or SenderIdArn. You can use
    #   DescribePhoneNumbers get the values for PhoneNumberId and
    #   PhoneNumberArn while DescribeSenderIds can be used to get the values
    #   for SenderId and SenderIdArn.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [String]
    #
    # @!attribute [rw] keyword
    #   The new keyword to add.
    #   @return [String]
    #
    # @!attribute [rw] keyword_message
    #   The message associated with the keyword.
    #   @return [String]
    #
    # @!attribute [rw] keyword_action
    #   The action to perform for the new keyword when it is received.
    #
    #   * AUTOMATIC\_RESPONSE: A message is sent to the recipient.
    #
    #   * OPT\_OUT: Keeps the recipient from receiving future messages.
    #
    #   * OPT\_IN: The recipient wants to receive future messages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PutKeywordRequest AWS API Documentation
    #
    class PutKeywordRequest < Struct.new(
      :origination_identity,
      :keyword,
      :keyword_message,
      :keyword_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origination_identity_arn
    #   The PhoneNumberArn or PoolArn that the keyword was associated with.
    #   @return [String]
    #
    # @!attribute [rw] origination_identity
    #   The PhoneNumberId or PoolId that the keyword was associated with.
    #   @return [String]
    #
    # @!attribute [rw] keyword
    #   The keyword that was added.
    #   @return [String]
    #
    # @!attribute [rw] keyword_message
    #   The message associated with the keyword.
    #   @return [String]
    #
    # @!attribute [rw] keyword_action
    #   The action to perform when the keyword is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PutKeywordResult AWS API Documentation
    #
    class PutKeywordResult < Struct.new(
      :origination_identity_arn,
      :origination_identity,
      :keyword,
      :keyword_message,
      :keyword_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message_id
    #   The unique identifier for the message.
    #   @return [String]
    #
    # @!attribute [rw] message_feedback_status
    #   Set the message feedback to be either `RECEIVED` or `FAILED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PutMessageFeedbackRequest AWS API Documentation
    #
    class PutMessageFeedbackRequest < Struct.new(
      :message_id,
      :message_feedback_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message_id
    #   The unique identifier for the message.
    #   @return [String]
    #
    # @!attribute [rw] message_feedback_status
    #   The current status of the message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PutMessageFeedbackResult AWS API Documentation
    #
    class PutMessageFeedbackResult < Struct.new(
      :message_id,
      :message_feedback_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] opt_out_list_name
    #   The OptOutListName or OptOutListArn to add the phone number to.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [String]
    #
    # @!attribute [rw] opted_out_number
    #   The phone number to add to the OptOutList in E.164 format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PutOptedOutNumberRequest AWS API Documentation
    #
    class PutOptedOutNumberRequest < Struct.new(
      :opt_out_list_name,
      :opted_out_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] opt_out_list_arn
    #   The OptOutListArn that the phone number was removed from.
    #   @return [String]
    #
    # @!attribute [rw] opt_out_list_name
    #   The OptOutListName that the phone number was removed from.
    #   @return [String]
    #
    # @!attribute [rw] opted_out_number
    #   The phone number that was added to the OptOutList.
    #   @return [String]
    #
    # @!attribute [rw] opted_out_timestamp
    #   The time that the phone number was added to the OptOutList, in [UNIX
    #   epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] end_user_opted_out
    #   This is true if it was the end user who requested their phone number
    #   be removed.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PutOptedOutNumberResult AWS API Documentation
    #
    class PutOptedOutNumberResult < Struct.new(
      :opt_out_list_arn,
      :opt_out_list_name,
      :opted_out_number,
      :opted_out_timestamp,
      :end_user_opted_out)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] destination_phone_number
    #   The destination phone number in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action for the rule to either block or allow messages to the
    #   destination phone number.
    #   @return [String]
    #
    # @!attribute [rw] expiration_timestamp
    #   The time the rule will expire at. If `ExpirationTimestamp` is not
    #   set then the rule does not expire.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PutProtectConfigurationRuleSetNumberOverrideRequest AWS API Documentation
    #
    class PutProtectConfigurationRuleSetNumberOverrideRequest < Struct.new(
      :client_token,
      :protect_configuration_id,
      :destination_phone_number,
      :action,
      :expiration_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protect_configuration_arn
    #   The Amazon Resource Name (ARN) of the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] destination_phone_number
    #   The destination phone number in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the rule was created, in [UNIX epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] action
    #   The action for the rule to take.
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @!attribute [rw] expiration_timestamp
    #   The time the rule will expire at.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PutProtectConfigurationRuleSetNumberOverrideResult AWS API Documentation
    #
    class PutProtectConfigurationRuleSetNumberOverrideResult < Struct.new(
      :protect_configuration_arn,
      :protect_configuration_id,
      :destination_phone_number,
      :created_timestamp,
      :action,
      :iso_country_code,
      :expiration_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @!attribute [rw] field_path
    #   The path to the registration form field. You can use
    #   DescribeRegistrationFieldDefinitions for a list of **FieldPaths**.
    #   @return [String]
    #
    # @!attribute [rw] select_choices
    #   An array of values for the form field.
    #   @return [Array<String>]
    #
    # @!attribute [rw] text_value
    #   The text data for a free form field.
    #   @return [String]
    #
    # @!attribute [rw] registration_attachment_id
    #   The unique identifier for the registration attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PutRegistrationFieldValueRequest AWS API Documentation
    #
    class PutRegistrationFieldValueRequest < Struct.new(
      :registration_id,
      :field_path,
      :select_choices,
      :text_value,
      :registration_attachment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_arn
    #   The Amazon Resource Name (ARN) for the registration.
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the registration.
    #   @return [Integer]
    #
    # @!attribute [rw] field_path
    #   The path to the registration form field. You can use
    #   DescribeRegistrationFieldDefinitions for a list of **FieldPaths**.
    #   @return [String]
    #
    # @!attribute [rw] select_choices
    #   An array of values for the form field.
    #   @return [Array<String>]
    #
    # @!attribute [rw] text_value
    #   The text data for a free form field.
    #   @return [String]
    #
    # @!attribute [rw] registration_attachment_id
    #   The unique identifier for the registration attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PutRegistrationFieldValueResult AWS API Documentation
    #
    class PutRegistrationFieldValueResult < Struct.new(
      :registration_arn,
      :registration_id,
      :version_number,
      :field_path,
      :select_choices,
      :text_value,
      :registration_attachment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the End User MessagingSMS resource
    #   to attach the resource-based policy to.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The JSON formatted resource-based policy to attach.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PutResourcePolicyRequest AWS API Documentation
    #
    class PutResourcePolicyRequest < Struct.new(
      :resource_arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the End User MessagingSMS resource
    #   attached to the resource-based policy.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The JSON formatted Resource Policy.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the resource-based policy was created, in [UNIX epoch
    #   time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PutResourcePolicyResult AWS API Documentation
    #
    class PutResourcePolicyResult < Struct.new(
      :resource_arn,
      :policy,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter definition for filtering registrations that meets a
    # specified criteria.
    #
    # @!attribute [rw] name
    #   The name of the attribute to filter on.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   An array of values to filter for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RegistrationAssociationFilter AWS API Documentation
    #
    class RegistrationAssociationFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for the origination identity that is associated with the
    # registration.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the origination identity that is
    #   associated with the registration.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier for the origination identity. For example this
    #   could be a **PhoneNumberId** or **SenderId**.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The origination identity type.
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number associated with the registration in E.164 format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RegistrationAssociationMetadata AWS API Documentation
    #
    class RegistrationAssociationMetadata < Struct.new(
      :resource_arn,
      :resource_id,
      :resource_type,
      :iso_country_code,
      :phone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter definition for filtering registration attachments that
    # meets a specified criteria.
    #
    # @!attribute [rw] name
    #   The name of the attribute to filter on.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   An array of values to filter on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RegistrationAttachmentFilter AWS API Documentation
    #
    class RegistrationAttachmentFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information on the specified registration attachments.
    #
    # @!attribute [rw] registration_attachment_arn
    #   The Amazon Resource Name (ARN) for the registration attachment.
    #   @return [String]
    #
    # @!attribute [rw] registration_attachment_id
    #   The unique identifier for the registration attachment.
    #   @return [String]
    #
    # @!attribute [rw] attachment_status
    #   The status of the registration attachment.
    #
    #   * `UPLOAD_IN_PROGRESS` The attachment is being uploaded.
    #
    #   * `UPLOAD_COMPLETE` The attachment has been uploaded.
    #
    #   * `UPLOAD_FAILED` The attachment failed to uploaded.
    #
    #   * `DELETED` The attachment has been deleted..
    #   @return [String]
    #
    # @!attribute [rw] attachment_upload_error_reason
    #   A description of why the upload didn't successfully complete.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the registration attachment was created, in [UNIX
    #   epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RegistrationAttachmentsInformation AWS API Documentation
    #
    class RegistrationAttachmentsInformation < Struct.new(
      :registration_attachment_arn,
      :registration_attachment_id,
      :attachment_status,
      :attachment_upload_error_reason,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the reason a registration was rejected.
    #
    # @!attribute [rw] reason
    #   The reason a registration was rejected.
    #   @return [String]
    #
    # @!attribute [rw] short_description
    #   A short description of the rejection reason.
    #   @return [String]
    #
    # @!attribute [rw] long_description
    #   A long description of the rejection reason.
    #   @return [String]
    #
    # @!attribute [rw] documentation_title
    #   The title of the document.
    #   @return [String]
    #
    # @!attribute [rw] documentation_link
    #   The link to the document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RegistrationDeniedReasonInformation AWS API Documentation
    #
    class RegistrationDeniedReasonInformation < Struct.new(
      :reason,
      :short_description,
      :long_description,
      :documentation_title,
      :documentation_link)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a description of the specified field.
    #
    # @!attribute [rw] section_path
    #   The section path of the field.
    #   @return [String]
    #
    # @!attribute [rw] field_path
    #   The path to the registration form field. You can use
    #   DescribeRegistrationFieldDefinitions for a list of **FieldPaths**.
    #   @return [String]
    #
    # @!attribute [rw] field_type
    #   The type of field.
    #   @return [String]
    #
    # @!attribute [rw] field_requirement
    #   Specifies if the field for the registration form is required,
    #   conditional or optional.
    #   @return [String]
    #
    # @!attribute [rw] select_validation
    #   The validation rules for a select field.
    #   @return [Types::SelectValidation]
    #
    # @!attribute [rw] text_validation
    #   The validation rules for a text field.
    #   @return [Types::TextValidation]
    #
    # @!attribute [rw] display_hints
    #   An array of RegistrationFieldDisplayHints objects for the field.
    #   @return [Types::RegistrationFieldDisplayHints]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RegistrationFieldDefinition AWS API Documentation
    #
    class RegistrationFieldDefinition < Struct.new(
      :section_path,
      :field_path,
      :field_type,
      :field_requirement,
      :select_validation,
      :text_validation,
      :display_hints)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides help information on the registration field.
    #
    # @!attribute [rw] title
    #   The title of the display hint.
    #   @return [String]
    #
    # @!attribute [rw] short_description
    #   A short description of the display hint.
    #   @return [String]
    #
    # @!attribute [rw] long_description
    #   A full description of the display hint.
    #   @return [String]
    #
    # @!attribute [rw] documentation_title
    #   The title of the document the display hint is associated with.
    #   @return [String]
    #
    # @!attribute [rw] documentation_link
    #   The link to the document the display hint is associated with.
    #   @return [String]
    #
    # @!attribute [rw] select_option_descriptions
    #   An array of SelectOptionDescription objects.
    #   @return [Array<Types::SelectOptionDescription>]
    #
    # @!attribute [rw] text_validation_description
    #   The validation rules for the text field.
    #   @return [String]
    #
    # @!attribute [rw] example_text_value
    #   Example text of what the value of a field should contain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RegistrationFieldDisplayHints AWS API Documentation
    #
    class RegistrationFieldDisplayHints < Struct.new(
      :title,
      :short_description,
      :long_description,
      :documentation_title,
      :documentation_link,
      :select_option_descriptions,
      :text_validation_description,
      :example_text_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the values of the specified field.
    #
    # @!attribute [rw] field_path
    #   The path to the registration form field. You can use
    #   DescribeRegistrationFieldDefinitions for a list of **FieldPaths**.
    #   @return [String]
    #
    # @!attribute [rw] select_choices
    #   An array of values for the form field.
    #   @return [Array<String>]
    #
    # @!attribute [rw] text_value
    #   The text data for a free form field.
    #   @return [String]
    #
    # @!attribute [rw] registration_attachment_id
    #   The unique identifier for the registration attachment.
    #   @return [String]
    #
    # @!attribute [rw] denied_reason
    #   A description of why the registration was denied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RegistrationFieldValueInformation AWS API Documentation
    #
    class RegistrationFieldValueInformation < Struct.new(
      :field_path,
      :select_choices,
      :text_value,
      :registration_attachment_id,
      :denied_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter definition for filtering registrations that meets a
    # specified criteria.
    #
    # @!attribute [rw] name
    #   The name of the attribute to filter on.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   An array of values to filter on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RegistrationFilter AWS API Documentation
    #
    class RegistrationFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the requested registration.
    #
    # @!attribute [rw] registration_arn
    #   The Amazon Resource Name (ARN) for the registration.
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @!attribute [rw] registration_type
    #   The type of registration form. The list of **RegistrationTypes** can
    #   be found using the DescribeRegistrationTypeDefinitions action.
    #   @return [String]
    #
    # @!attribute [rw] registration_status
    #   The status of the registration.
    #
    #   * `CLOSED`: The phone number or sender ID has been deleted and you
    #     must also delete the registration for the number.
    #
    #   * `CREATED`: Your registration is created but not submitted.
    #
    #   * `COMPLETE`: Your registration has been approved and your
    #     origination identity has been created.
    #
    #   * `DELETED`: The registration has been deleted.
    #
    #   * `PROVISIONING`: Your registration has been approved and your
    #     origination identity is being created.
    #
    #   * `REQUIRES_AUTHENTICATION`: You need to complete email
    #     authentication.
    #
    #   * `REQUIRES_UPDATES`: You must fix your registration and resubmit
    #     it.
    #
    #   * `REVIEWING`: Your registration has been accepted and is being
    #     reviewed.
    #
    #   * `SUBMITTED`: Your registration has been submitted and is awaiting
    #     review.
    #   @return [String]
    #
    # @!attribute [rw] current_version_number
    #   The current version number of the registration.
    #   @return [Integer]
    #
    # @!attribute [rw] approved_version_number
    #   The version number of the registration that was approved.
    #   @return [Integer]
    #
    # @!attribute [rw] latest_denied_version_number
    #   The latest version number of the registration that was denied.
    #   @return [Integer]
    #
    # @!attribute [rw] additional_attributes
    #   Metadata about a given registration which is specific to that
    #   registration type.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the registration was created, in [UNIX epoch time][1]
    #   format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RegistrationInformation AWS API Documentation
    #
    class RegistrationInformation < Struct.new(
      :registration_arn,
      :registration_id,
      :registration_type,
      :registration_status,
      :current_version_number,
      :approved_version_number,
      :latest_denied_version_number,
      :additional_attributes,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information on the specified section definition.
    #
    # @!attribute [rw] section_path
    #   The path to the section of the registration.
    #   @return [String]
    #
    # @!attribute [rw] display_hints
    #   The path to the section of the registration.
    #   @return [Types::RegistrationSectionDisplayHints]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RegistrationSectionDefinition AWS API Documentation
    #
    class RegistrationSectionDefinition < Struct.new(
      :section_path,
      :display_hints)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides help information on the registration section.
    #
    # @!attribute [rw] title
    #   The title of the display hint.
    #   @return [String]
    #
    # @!attribute [rw] short_description
    #   A short description of the display hint.
    #   @return [String]
    #
    # @!attribute [rw] long_description
    #   A full description of the display hint.
    #   @return [String]
    #
    # @!attribute [rw] documentation_title
    #   The title of the document the display hint is associated with.
    #   @return [String]
    #
    # @!attribute [rw] documentation_link
    #   The link to the document the display hint is associated with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RegistrationSectionDisplayHints AWS API Documentation
    #
    class RegistrationSectionDisplayHints < Struct.new(
      :title,
      :short_description,
      :long_description,
      :documentation_title,
      :documentation_link)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information on the supported registration type.
    #
    # @!attribute [rw] registration_type
    #   The type of registration form. The list of **RegistrationTypes** can
    #   be found using the DescribeRegistrationTypeDefinitions action.
    #   @return [String]
    #
    # @!attribute [rw] supported_associations
    #   The supported association behavior for the registration type.
    #   @return [Array<Types::SupportedAssociation>]
    #
    # @!attribute [rw] display_hints
    #   Provides help information on the registration.
    #   @return [Types::RegistrationTypeDisplayHints]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RegistrationTypeDefinition AWS API Documentation
    #
    class RegistrationTypeDefinition < Struct.new(
      :registration_type,
      :supported_associations,
      :display_hints)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides help information on the registration type.
    #
    # @!attribute [rw] title
    #   The title of the display hint.
    #   @return [String]
    #
    # @!attribute [rw] short_description
    #   A short description of the display hint.
    #   @return [String]
    #
    # @!attribute [rw] long_description
    #   A full description of the display hint.
    #   @return [String]
    #
    # @!attribute [rw] documentation_title
    #   The title of the document the display hint is associated with.
    #   @return [String]
    #
    # @!attribute [rw] documentation_link
    #   The link to the document the display hint is associated with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RegistrationTypeDisplayHints AWS API Documentation
    #
    class RegistrationTypeDisplayHints < Struct.new(
      :title,
      :short_description,
      :long_description,
      :documentation_title,
      :documentation_link)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter definition for filtering registration types that meets a
    # specified criteria.
    #
    # @!attribute [rw] name
    #   The name of the attribute to filter on.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   An array of values to filter on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RegistrationTypeFilter AWS API Documentation
    #
    class RegistrationTypeFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter definition for filtering registration versions that meets a
    # specified criteria.
    #
    # @!attribute [rw] name
    #   The name of the attribute to filter on.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   An array of values to filter on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RegistrationVersionFilter AWS API Documentation
    #
    class RegistrationVersionFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the specified version of the registration.
    #
    # @!attribute [rw] version_number
    #   The version number of the registration.
    #   @return [Integer]
    #
    # @!attribute [rw] registration_version_status
    #   The status of the registration.
    #
    #   * `APPROVED`: Your registration has been approved.
    #
    #   * `ARCHIVED`: Your previously approved registration version moves
    #     into this status when a more recently submitted version is
    #     approved.
    #
    #   * `DENIED`: You must fix your registration and resubmit it.
    #
    #   * `DISCARDED`: You've abandon this version of their registration to
    #     start over with a new version.
    #
    #   * `DRAFT`: The initial status of a registration version after it’s
    #     created.
    #
    #   * `REQUIRES_AUTHENTICATION`: You need to complete email
    #     authentication.
    #
    #   * `REVIEWING`: Your registration has been accepted and is being
    #     reviewed.
    #
    #   * `REVOKED`: Your previously approved registration has been revoked.
    #
    #   * `SUBMITTED`: Your registration has been submitted.
    #   @return [String]
    #
    # @!attribute [rw] registration_version_status_history
    #   The **RegistrationVersionStatusHistory** object contains the time
    #   stamps for when the reservations status changes.
    #   @return [Types::RegistrationVersionStatusHistory]
    #
    # @!attribute [rw] denied_reasons
    #   An array of RegistrationDeniedReasonInformation objects.
    #   @return [Array<Types::RegistrationDeniedReasonInformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RegistrationVersionInformation AWS API Documentation
    #
    class RegistrationVersionInformation < Struct.new(
      :version_number,
      :registration_version_status,
      :registration_version_status_history,
      :denied_reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # The **RegistrationVersionStatusHistory** object contains the time
    # stamps for when the reservations status changes.
    #
    # @!attribute [rw] draft_timestamp
    #   The time when the registration was in the draft state, in [UNIX
    #   epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] submitted_timestamp
    #   The time when the registration was in the submitted state, in [UNIX
    #   epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] reviewing_timestamp
    #   The time when the registration was in the reviewing state, in [UNIX
    #   epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] requires_authentication_timestamp
    #   The time when the registration was in the requires authentication
    #   state, in [UNIX epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] approved_timestamp
    #   The time when the registration was in the approved state, in [UNIX
    #   epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] discarded_timestamp
    #   The time when the registration was in the discarded state, in [UNIX
    #   epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] denied_timestamp
    #   The time when the registration was in the denied state, in [UNIX
    #   epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] revoked_timestamp
    #   The time when the registration was in the revoked state, in [UNIX
    #   epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] archived_timestamp
    #   The time when the registration was in the archived state, in [UNIX
    #   epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RegistrationVersionStatusHistory AWS API Documentation
    #
    class RegistrationVersionStatusHistory < Struct.new(
      :draft_timestamp,
      :submitted_timestamp,
      :reviewing_timestamp,
      :requires_authentication_timestamp,
      :approved_timestamp,
      :discarded_timestamp,
      :denied_timestamp,
      :revoked_timestamp,
      :archived_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_id
    #   The PhoneNumberId or PhoneNumberArn of the phone number to release.
    #   You can use DescribePhoneNumbers to get the values for PhoneNumberId
    #   and PhoneNumberArn.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ReleasePhoneNumberRequest AWS API Documentation
    #
    class ReleasePhoneNumberRequest < Struct.new(
      :phone_number_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_arn
    #   The PhoneNumberArn of the phone number that was released.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_id
    #   The PhoneNumberId of the phone number that was released.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number that was released.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the request.
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   The message type that was associated with the phone number.
    #   @return [String]
    #
    # @!attribute [rw] number_capabilities
    #   Specifies if the number could be used for text messages, voice, or
    #   both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] number_type
    #   The type of number that was released.
    #   @return [String]
    #
    # @!attribute [rw] monthly_leasing_price
    #   The monthly price of the phone number, in US dollars.
    #   @return [String]
    #
    # @!attribute [rw] two_way_enabled
    #   By default this is set to false. When set to true you can receive
    #   incoming text messages from your end recipients.
    #   @return [Boolean]
    #
    # @!attribute [rw] two_way_channel_arn
    #   The Amazon Resource Name (ARN) of the TwoWayChannel.
    #   @return [String]
    #
    # @!attribute [rw] two_way_channel_role
    #   An optional IAM Role Arn for a service to assume, to be able to post
    #   inbound SMS messages.
    #   @return [String]
    #
    # @!attribute [rw] self_managed_opt_outs_enabled
    #   By default this is set to false. When set to false and an end
    #   recipient sends a message that begins with HELP or STOP to one of
    #   your dedicated numbers, End User MessagingSMS automatically replies
    #   with a customizable message and adds the end recipient to the
    #   OptOutList. When set to true you're responsible for responding to
    #   HELP and STOP requests. You're also responsible for tracking and
    #   honoring opt-out requests.
    #   @return [Boolean]
    #
    # @!attribute [rw] opt_out_list_name
    #   The name of the OptOutList that was associated with the phone
    #   number.
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the phone number was created, in [UNIX epoch time][1]
    #   format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ReleasePhoneNumberResult AWS API Documentation
    #
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
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sender_id
    #   The sender ID to release.
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ReleaseSenderIdRequest AWS API Documentation
    #
    class ReleaseSenderIdRequest < Struct.new(
      :sender_id,
      :iso_country_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sender_id_arn
    #   The Amazon Resource Name (ARN) associated with the SenderId.
    #   @return [String]
    #
    # @!attribute [rw] sender_id
    #   The sender ID that was released.
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @!attribute [rw] message_types
    #   The type of message. Valid values are TRANSACTIONAL for messages
    #   that are critical or time-sensitive and PROMOTIONAL for messages
    #   that aren't critical or time-sensitive.
    #   @return [Array<String>]
    #
    # @!attribute [rw] monthly_leasing_price
    #   The monthly price, in US dollars, to lease the sender ID.
    #   @return [String]
    #
    # @!attribute [rw] registered
    #   True if the sender ID is registered.
    #   @return [Boolean]
    #
    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ReleaseSenderIdResult AWS API Documentation
    #
    class ReleaseSenderIdResult < Struct.new(
      :sender_id_arn,
      :sender_id,
      :iso_country_code,
      :message_types,
      :monthly_leasing_price,
      :registered,
      :registration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   The type of message. Valid values are `TRANSACTIONAL` for messages
    #   that are critical or time-sensitive and `PROMOTIONAL` for messages
    #   that aren't critical or time-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] number_capabilities
    #   Indicates if the phone number will be used for text messages, voice
    #   messages, or both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] number_type
    #   The type of phone number to request.
    #
    #   When you request a `SIMULATOR` phone number, you must set
    #   **MessageType** as `TRANSACTIONAL`.
    #   @return [String]
    #
    # @!attribute [rw] opt_out_list_name
    #   The name of the OptOutList to associate with the phone number. You
    #   can use the OptOutListName or OptOutListArn.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [String]
    #
    # @!attribute [rw] pool_id
    #   The pool to associated with the phone number. You can use the PoolId
    #   or PoolArn.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   Use this field to attach your phone number for an external
    #   registration process.
    #   @return [String]
    #
    # @!attribute [rw] international_sending_enabled
    #   By default this is set to false. When set to true the international
    #   sending of phone number is Enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   By default this is set to false. When set to true the phone number
    #   can't be deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   An array of tags (key and value pairs) to associate with the
    #   requested phone number.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RequestPhoneNumberRequest AWS API Documentation
    #
    class RequestPhoneNumberRequest < Struct.new(
      :iso_country_code,
      :message_type,
      :number_capabilities,
      :number_type,
      :opt_out_list_name,
      :pool_id,
      :registration_id,
      :international_sending_enabled,
      :deletion_protection_enabled,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_arn
    #   The Amazon Resource Name (ARN) of the requested phone number.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_id
    #   The unique identifier of the new phone number.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The new phone number that was requested.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the request.
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   The type of message. Valid values are TRANSACTIONAL for messages
    #   that are critical or time-sensitive and PROMOTIONAL for messages
    #   that aren't critical or time-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] number_capabilities
    #   Indicates if the phone number will be used for text messages, voice
    #   messages or both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] number_type
    #   The type of number that was released.
    #   @return [String]
    #
    # @!attribute [rw] monthly_leasing_price
    #   The monthly price, in US dollars, to lease the phone number.
    #   @return [String]
    #
    # @!attribute [rw] two_way_enabled
    #   By default this is set to false. When set to true you can receive
    #   incoming text messages from your end recipients.
    #   @return [Boolean]
    #
    # @!attribute [rw] two_way_channel_arn
    #   The ARN used to identify the two way channel.
    #   @return [String]
    #
    # @!attribute [rw] two_way_channel_role
    #   An optional IAM Role Arn for a service to assume, to be able to post
    #   inbound SMS messages.
    #   @return [String]
    #
    # @!attribute [rw] self_managed_opt_outs_enabled
    #   By default this is set to false. When set to false and an end
    #   recipient sends a message that begins with HELP or STOP to one of
    #   your dedicated numbers, End User MessagingSMS automatically replies
    #   with a customizable message and adds the end recipient to the
    #   OptOutList. When set to true you're responsible for responding to
    #   HELP and STOP requests. You're also responsible for tracking and
    #   honoring opt-out requests.
    #   @return [Boolean]
    #
    # @!attribute [rw] opt_out_list_name
    #   The name of the OptOutList that is associated with the requested
    #   phone number.
    #   @return [String]
    #
    # @!attribute [rw] international_sending_enabled
    #   By default this is set to false. When set to true the international
    #   sending of phone number is Enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   By default this is set to false. When set to true the phone number
    #   can't be deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] pool_id
    #   The unique identifier of the pool associated with the phone number
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key and value pair tags that are associated with the
    #   phone number.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the phone number was created, in [UNIX epoch time][1]
    #   format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RequestPhoneNumberResult AWS API Documentation
    #
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
      :international_sending_enabled,
      :deletion_protection_enabled,
      :pool_id,
      :registration_id,
      :tags,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sender_id
    #   The sender ID string to request.
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @!attribute [rw] message_types
    #   The type of message. Valid values are TRANSACTIONAL for messages
    #   that are critical or time-sensitive and PROMOTIONAL for messages
    #   that aren't critical or time-sensitive.
    #   @return [Array<String>]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   By default this is set to false. When set to true the sender ID
    #   can't be deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   An array of tags (key and value pairs) to associate with the sender
    #   ID.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RequestSenderIdRequest AWS API Documentation
    #
    class RequestSenderIdRequest < Struct.new(
      :sender_id,
      :iso_country_code,
      :message_types,
      :deletion_protection_enabled,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sender_id_arn
    #   The Amazon Resource Name (ARN) associated with the SenderId.
    #   @return [String]
    #
    # @!attribute [rw] sender_id
    #   The sender ID that was requested.
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @!attribute [rw] message_types
    #   The type of message. Valid values are TRANSACTIONAL for messages
    #   that are critical or time-sensitive and PROMOTIONAL for messages
    #   that aren't critical or time-sensitive.
    #   @return [Array<String>]
    #
    # @!attribute [rw] monthly_leasing_price
    #   The monthly price, in US dollars, to lease the sender ID.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   By default this is set to false. When set to true the sender ID
    #   can't be deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] registered
    #   True if the sender ID is registered.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   An array of tags (key and value pairs) to associate with the sender
    #   ID.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RequestSenderIdResult AWS API Documentation
    #
    class RequestSenderIdResult < Struct.new(
      :sender_id_arn,
      :sender_id,
      :iso_country_code,
      :message_types,
      :monthly_leasing_price,
      :deletion_protection_enabled,
      :registered,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A requested resource couldn't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource that caused the exception.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_type,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A description of each select option.
    #
    # @!attribute [rw] option
    #   The value of the option.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the select option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the option meaning.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SelectOptionDescription AWS API Documentation
    #
    class SelectOptionDescription < Struct.new(
      :option,
      :title,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Validation rules for a select field.
    #
    # @!attribute [rw] min_choices
    #   The minimum number of choices for the select.
    #   @return [Integer]
    #
    # @!attribute [rw] max_choices
    #   The maximum number of choices for the select.
    #   @return [Integer]
    #
    # @!attribute [rw] options
    #   An array of strings for the possible selection options.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SelectValidation AWS API Documentation
    #
    class SelectValidation < Struct.new(
      :min_choices,
      :max_choices,
      :options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] verified_destination_number_id
    #   The unique identifier for the verified destination phone number.
    #   @return [String]
    #
    # @!attribute [rw] verification_channel
    #   Choose to send the verification code as an SMS or voice message.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   Choose the language to use for the message.
    #   @return [String]
    #
    # @!attribute [rw] origination_identity
    #   The origination identity of the message. This can be either the
    #   PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn,
    #   PoolId, or PoolArn.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [String]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set to use. This can be either the
    #   ConfigurationSetName or ConfigurationSetArn.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   You can specify custom data in this field. If you do, that data is
    #   logged to the event destination.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] destination_country_parameters
    #   This field is used for any country-specific registration
    #   requirements. Currently, this setting is only used when you send
    #   messages to recipients in India using a sender ID. For more
    #   information see [Special requirements for sending SMS messages to
    #   recipients in India][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-senderid-india.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SendDestinationNumberVerificationCodeRequest AWS API Documentation
    #
    class SendDestinationNumberVerificationCodeRequest < Struct.new(
      :verified_destination_number_id,
      :verification_channel,
      :language_code,
      :origination_identity,
      :configuration_set_name,
      :context,
      :destination_country_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message_id
    #   The unique identifier for the message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SendDestinationNumberVerificationCodeResult AWS API Documentation
    #
    class SendDestinationNumberVerificationCodeResult < Struct.new(
      :message_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destination_phone_number
    #   The destination phone number in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] origination_identity
    #   The origination identity of the message. This can be either the
    #   PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn,
    #   PoolId, or PoolArn.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [String]
    #
    # @!attribute [rw] message_body
    #   The text body of the message.
    #   @return [String]
    #
    # @!attribute [rw] media_urls
    #   An array of URLs to each media file to send.
    #
    #   The media files have to be stored in an S3 bucket. Supported media
    #   file formats are listed in [MMS file types, size and character
    #   limits][1]. For more information on creating an S3 bucket and
    #   managing objects, see [Creating a bucket][2], [Uploading objects][3]
    #   in the *Amazon S3 User Guide*, and [Setting up an Amazon S3 bucket
    #   for MMS files][4] in the *Amazon Web Services End User Messaging SMS
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sms-voice/latest/userguide/mms-limitations-character.html
    #   [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/create-bucket-overview.html
    #   [3]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/upload-objects.html
    #   [4]: https://docs.aws.amazon.com/sms-voice/latest/userguide/send-mms-message.html#send-mms-message-bucket
    #   @return [Array<String>]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set to use. This can be either the
    #   ConfigurationSetName or ConfigurationSetArn.
    #   @return [String]
    #
    # @!attribute [rw] max_price
    #   The maximum amount that you want to spend, in US dollars, per each
    #   MMS message.
    #   @return [String]
    #
    # @!attribute [rw] time_to_live
    #   How long the media message is valid for. By default this is 72
    #   hours.
    #   @return [Integer]
    #
    # @!attribute [rw] context
    #   You can specify custom data in this field. If you do, that data is
    #   logged to the event destination.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] dry_run
    #   When set to true, the message is checked and validated, but isn't
    #   sent to the end recipient.
    #   @return [Boolean]
    #
    # @!attribute [rw] protect_configuration_id
    #   The unique identifier of the protect configuration to use.
    #   @return [String]
    #
    # @!attribute [rw] message_feedback_enabled
    #   Set to true to enable message feedback for the message. When a user
    #   receives the message you need to update the message status using
    #   PutMessageFeedback.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SendMediaMessageRequest AWS API Documentation
    #
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
      :message_feedback_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message_id
    #   The unique identifier for the message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SendMediaMessageResult AWS API Documentation
    #
    class SendMediaMessageResult < Struct.new(
      :message_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destination_phone_number
    #   The destination phone number in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] origination_identity
    #   The origination identity of the message. This can be either the
    #   PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn,
    #   PoolId, or PoolArn.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [String]
    #
    # @!attribute [rw] message_body
    #   The body of the text message.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   The type of message. Valid values are for messages that are critical
    #   or time-sensitive and PROMOTIONAL for messages that aren't critical
    #   or time-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] keyword
    #   When you register a short code in the US, you must specify a program
    #   name. If you don’t have a US short code, omit this attribute.
    #   @return [String]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set to use. This can be either the
    #   ConfigurationSetName or ConfigurationSetArn.
    #   @return [String]
    #
    # @!attribute [rw] max_price
    #   The maximum amount that you want to spend, in US dollars, per each
    #   text message. If the calculated amount to send the text message is
    #   greater than `MaxPrice`, the message is not sent and an error is
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] time_to_live
    #   How long the text message is valid for, in seconds. By default this
    #   is 72 hours. If the messages isn't handed off before the TTL
    #   expires we stop attempting to hand off the message and return
    #   `TTL_EXPIRED` event.
    #   @return [Integer]
    #
    # @!attribute [rw] context
    #   You can specify custom data in this field. If you do, that data is
    #   logged to the event destination.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] destination_country_parameters
    #   This field is used for any country-specific registration
    #   requirements. Currently, this setting is only used when you send
    #   messages to recipients in India using a sender ID. For more
    #   information see [Special requirements for sending SMS messages to
    #   recipients in India][1].
    #
    #   * `IN_ENTITY_ID` The entity ID or Principal Entity (PE) ID that you
    #     received after completing the sender ID registration process.
    #
    #   * `IN_TEMPLATE_ID` The template ID that you received after
    #     completing the sender ID registration process.
    #
    #     Make sure that the Template ID that you specify matches your
    #     message template exactly. If your message doesn't match the
    #     template that you provided during the registration process, the
    #     mobile carriers might reject your message.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-senderid-india.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] dry_run
    #   When set to true, the message is checked and validated, but isn't
    #   sent to the end recipient. You are not charged for using `DryRun`.
    #
    #   The Message Parts per Second (MPS) limit when using `DryRun` is
    #   five. If your origination identity has a lower MPS limit then the
    #   lower MPS limit is used. For more information about MPS limits, see
    #   [Message Parts per Second (MPS) limits][1] in the *End User
    #   MessagingSMS User Guide*..
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sms-voice/latest/userguide/sms-limitations-mps.html
    #   @return [Boolean]
    #
    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] message_feedback_enabled
    #   Set to true to enable message feedback for the message. When a user
    #   receives the message you need to update the message status using
    #   PutMessageFeedback.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SendTextMessageRequest AWS API Documentation
    #
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
      :message_feedback_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message_id
    #   The unique identifier for the message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SendTextMessageResult AWS API Documentation
    #
    class SendTextMessageResult < Struct.new(
      :message_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destination_phone_number
    #   The destination phone number in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] origination_identity
    #   The origination identity to use for the voice call. This can be the
    #   PhoneNumber, PhoneNumberId, PhoneNumberArn, PoolId, or PoolArn.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [String]
    #
    # @!attribute [rw] message_body
    #   The text to convert to a voice message.
    #   @return [String]
    #
    # @!attribute [rw] message_body_text_type
    #   Specifies if the MessageBody field contains text or [speech
    #   synthesis markup language (SSML)][1].
    #
    #   * TEXT: This is the default value. When used the maximum character
    #     limit is 3000.
    #
    #   * SSML: When used the maximum character limit is 6000 including SSML
    #     tagging.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/polly/latest/dg/what-is.html
    #   @return [String]
    #
    # @!attribute [rw] voice_id
    #   The voice for the [Amazon Polly][1] service to use. By default this
    #   is set to "MATTHEW".
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/polly/latest/dg/what-is.html
    #   @return [String]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set to use. This can be either the
    #   ConfigurationSetName or ConfigurationSetArn.
    #   @return [String]
    #
    # @!attribute [rw] max_price_per_minute
    #   The maximum amount to spend per voice message, in US dollars.
    #   @return [String]
    #
    # @!attribute [rw] time_to_live
    #   How long the voice message is valid for. By default this is 72
    #   hours.
    #   @return [Integer]
    #
    # @!attribute [rw] context
    #   You can specify custom data in this field. If you do, that data is
    #   logged to the event destination.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] dry_run
    #   When set to true, the message is checked and validated, but isn't
    #   sent to the end recipient.
    #   @return [Boolean]
    #
    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] message_feedback_enabled
    #   Set to true to enable message feedback for the message. When a user
    #   receives the message you need to update the message status using
    #   PutMessageFeedback.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SendVoiceMessageRequest AWS API Documentation
    #
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
      :message_feedback_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message_id
    #   The unique identifier for the message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SendVoiceMessageResult AWS API Documentation
    #
    class SendVoiceMessageResult < Struct.new(
      :message_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The alphanumeric sender ID in a specific country that you want to
    # describe. For more information on sender IDs see [Requesting sender
    # IDs ][1] in the *End User MessagingSMS User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sms-voice/latest/userguide/sender-id-request.html
    #
    # @!attribute [rw] sender_id
    #   The unique identifier of the sender.
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SenderIdAndCountry AWS API Documentation
    #
    class SenderIdAndCountry < Struct.new(
      :sender_id,
      :iso_country_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information for a sender ID that meets a specified criteria.
    #
    # @!attribute [rw] name
    #   The name of the attribute to filter on.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   An array of values to filter for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SenderIdFilter AWS API Documentation
    #
    class SenderIdFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information for all SenderIds in an Amazon Web Services account.
    #
    # @!attribute [rw] sender_id_arn
    #   The Amazon Resource Name (ARN) associated with the SenderId.
    #   @return [String]
    #
    # @!attribute [rw] sender_id
    #   The alphanumeric sender ID in a specific country that you'd like to
    #   describe.
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @!attribute [rw] message_types
    #   The type of message. Valid values are TRANSACTIONAL for messages
    #   that are critical or time-sensitive and PROMOTIONAL for messages
    #   that aren't critical or time-sensitive.
    #   @return [Array<String>]
    #
    # @!attribute [rw] monthly_leasing_price
    #   The monthly leasing price, in US dollars.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   By default this is set to false. When set to true the sender ID
    #   can't be deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] registered
    #   True if the sender ID is registered.
    #   @return [Boolean]
    #
    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SenderIdInformation AWS API Documentation
    #
    class SenderIdInformation < Struct.new(
      :sender_id_arn,
      :sender_id,
      :iso_country_code,
      :message_types,
      :monthly_leasing_price,
      :deletion_protection_enabled,
      :registered,
      :registration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SetAccountDefaultProtectConfigurationRequest AWS API Documentation
    #
    class SetAccountDefaultProtectConfigurationRequest < Struct.new(
      :protect_configuration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] default_protect_configuration_arn
    #   The Amazon Resource Name (ARN) of the account default protect
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] default_protect_configuration_id
    #   The unique identifier of the account default protect configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SetAccountDefaultProtectConfigurationResult AWS API Documentation
    #
    class SetAccountDefaultProtectConfigurationResult < Struct.new(
      :default_protect_configuration_arn,
      :default_protect_configuration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set to use. This can be either the
    #   ConfigurationSetName or ConfigurationSetArn.
    #   @return [String]
    #
    # @!attribute [rw] message_feedback_enabled
    #   Set to true to enable message feedback.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SetDefaultMessageFeedbackEnabledRequest AWS API Documentation
    #
    class SetDefaultMessageFeedbackEnabledRequest < Struct.new(
      :configuration_set_name,
      :message_feedback_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_set_arn
    #   The arn of the configuration set.
    #   @return [String]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] message_feedback_enabled
    #   True if message feedback is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SetDefaultMessageFeedbackEnabledResult AWS API Documentation
    #
    class SetDefaultMessageFeedbackEnabledResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :message_feedback_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_set_name
    #   The configuration set to update with a new default message type.
    #   This field can be the ConsigurationSetName or ConfigurationSetArn.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   The type of message. Valid values are TRANSACTIONAL for messages
    #   that are critical or time-sensitive and PROMOTIONAL for messages
    #   that aren't critical or time-sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SetDefaultMessageTypeRequest AWS API Documentation
    #
    class SetDefaultMessageTypeRequest < Struct.new(
      :configuration_set_name,
      :message_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_set_arn
    #   The Amazon Resource Name (ARN) of the updated configuration set.
    #   @return [String]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set that was updated.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   The new default message type of the configuration set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SetDefaultMessageTypeResult AWS API Documentation
    #
    class SetDefaultMessageTypeResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :message_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_set_name
    #   The configuration set to updated with a new default SenderId. This
    #   field can be the ConsigurationSetName or ConfigurationSetArn.
    #   @return [String]
    #
    # @!attribute [rw] sender_id
    #   The current sender ID for the configuration set. When sending a text
    #   message to a destination country which supports SenderIds, the
    #   default sender ID on the configuration set specified on
    #   SendTextMessage will be used if no dedicated origination phone
    #   numbers or registered SenderIds are available in your account,
    #   instead of a generic sender ID, such as 'NOTICE'.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SetDefaultSenderIdRequest AWS API Documentation
    #
    class SetDefaultSenderIdRequest < Struct.new(
      :configuration_set_name,
      :sender_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_set_arn
    #   The Amazon Resource Name (ARN) of the updated configuration set.
    #   @return [String]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set that was updated.
    #   @return [String]
    #
    # @!attribute [rw] sender_id
    #   The default sender ID to set for the ConfigurationSet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SetDefaultSenderIdResult AWS API Documentation
    #
    class SetDefaultSenderIdResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :sender_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monthly_limit
    #   The new monthly limit to enforce on text messages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SetMediaMessageSpendLimitOverrideRequest AWS API Documentation
    #
    class SetMediaMessageSpendLimitOverrideRequest < Struct.new(
      :monthly_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monthly_limit
    #   The current monthly limit to enforce on sending text messages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SetMediaMessageSpendLimitOverrideResult AWS API Documentation
    #
    class SetMediaMessageSpendLimitOverrideResult < Struct.new(
      :monthly_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monthly_limit
    #   The new monthly limit to enforce on text messages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SetTextMessageSpendLimitOverrideRequest AWS API Documentation
    #
    class SetTextMessageSpendLimitOverrideRequest < Struct.new(
      :monthly_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monthly_limit
    #   The current monthly limit to enforce on sending text messages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SetTextMessageSpendLimitOverrideResult AWS API Documentation
    #
    class SetTextMessageSpendLimitOverrideResult < Struct.new(
      :monthly_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monthly_limit
    #   The new monthly limit to enforce on voice messages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SetVoiceMessageSpendLimitOverrideRequest AWS API Documentation
    #
    class SetVoiceMessageSpendLimitOverrideRequest < Struct.new(
      :monthly_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monthly_limit
    #   The current monthly limit to enforce on sending voice messages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SetVoiceMessageSpendLimitOverrideResult AWS API Documentation
    #
    class SetVoiceMessageSpendLimitOverrideResult < Struct.new(
      :monthly_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines an Amazon SNS destination for events. You can
    # use Amazon SNS to send notification when certain events occur.
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic that you want
    #   to publish events to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SnsDestination AWS API Documentation
    #
    class SnsDestination < Struct.new(
      :topic_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the current monthly spend limits for sending voice and text
    # messages. For more information on increasing your monthly spend limit,
    # see [ Requesting a spending quota increase ][1] in the *End User
    # MessagingSMS User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sms-voice/latest/userguide/awssupport-spend-threshold.html
    #
    # @!attribute [rw] name
    #   The name for the SpendLimit.
    #   @return [String]
    #
    # @!attribute [rw] enforced_limit
    #   The maximum amount of money, in US dollars, that you want to be able
    #   to spend sending messages each month. This value has to be less than
    #   or equal to the amount in `MaxLimit`. To use this custom limit,
    #   `Overridden` must be set to true.
    #   @return [Integer]
    #
    # @!attribute [rw] max_limit
    #   The maximum amount of money that you are able to spend to send
    #   messages each month, in US dollars.
    #   @return [Integer]
    #
    # @!attribute [rw] overridden
    #   When set to `True`, the value that has been specified in the
    #   `EnforcedLimit` is used to determine the maximum amount in US
    #   dollars that can be spent to send messages each month, in US
    #   dollars.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SpendLimit AWS API Documentation
    #
    class SpendLimit < Struct.new(
      :name,
      :enforced_limit,
      :max_limit,
      :overridden)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SubmitRegistrationVersionRequest AWS API Documentation
    #
    class SubmitRegistrationVersionRequest < Struct.new(
      :registration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_arn
    #   The Amazon Resource Name (ARN) for the registration.
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the registration.
    #   @return [Integer]
    #
    # @!attribute [rw] registration_version_status
    #   The status of the registration version.
    #
    #   * `APPROVED`: Your registration has been approved.
    #
    #   * `ARCHIVED`: Your previously approved registration version moves
    #     into this status when a more recently submitted version is
    #     approved.
    #
    #   * `DENIED`: You must fix your registration and resubmit it.
    #
    #   * `DISCARDED`: You've abandon this version of their registration to
    #     start over with a new version.
    #
    #   * `DRAFT`: The initial status of a registration version after it’s
    #     created.
    #
    #   * `REQUIRES_AUTHENTICATION`: You need to complete email
    #     authentication.
    #
    #   * `REVIEWING`: Your registration has been accepted and is being
    #     reviewed.
    #
    #   * `REVOKED`: Your previously approved registration has been revoked.
    #
    #   * `SUBMITTED`: Your registration has been submitted.
    #   @return [String]
    #
    # @!attribute [rw] registration_version_status_history
    #   The **RegistrationVersionStatusHistory** object contains the time
    #   stamps for when the reservations status changes.
    #   @return [Types::RegistrationVersionStatusHistory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SubmitRegistrationVersionResult AWS API Documentation
    #
    class SubmitRegistrationVersionResult < Struct.new(
      :registration_arn,
      :registration_id,
      :version_number,
      :registration_version_status,
      :registration_version_status_history)
      SENSITIVE = []
      include Aws::Structure
    end

    # The processing rules for when a registration can be associated with an
    # origination identity and disassociated from an origination identity.
    #
    # @!attribute [rw] resource_type
    #   Defines the behavior of when an origination identity and
    #   registration can be associated with each other.
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @!attribute [rw] association_behavior
    #   The association behavior.
    #
    #   * `ASSOCIATE_BEFORE_SUBMIT` The origination identity has to be
    #     supplied when creating a registration.
    #
    #   * `ASSOCIATE_ON_APPROVAL` This applies to all sender ID
    #     registrations. The sender ID will be automatically provisioned
    #     once the registration is approved.
    #
    #   * `ASSOCIATE_AFTER_COMPLETE` This applies to phone number
    #     registrations when you must complete a registration first, then
    #     associate one or more phone numbers later. For example 10DLC
    #     campaigns and long codes.
    #   @return [String]
    #
    # @!attribute [rw] disassociation_behavior
    #   The disassociation behavior.
    #
    #   * `DISASSOCIATE_ALL_CLOSES_REGISTRATION` All origination identities
    #     must be disassociated from the registration before the
    #     registration can be closed.
    #
    #   * `DISASSOCIATE_ALL_ALLOWS_DELETE_REGISTRATION` All origination
    #     identities must be disassociated from the registration before the
    #     registration can be deleted.
    #
    #   * `DELETE_REGISTRATION_DISASSOCIATES` The registration can be
    #     deleted and all origination identities will be disasscoiated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SupportedAssociation AWS API Documentation
    #
    class SupportedAssociation < Struct.new(
      :resource_type,
      :iso_country_code,
      :association_behavior,
      :disassociation_behavior)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of tags to be added to the specified topic.
    #
    # @!attribute [rw] key
    #   The key identifier, or name, of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The string value associated with the key of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key and value pair tags that are associated with the
    #   resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/TagResourceResult AWS API Documentation
    #
    class TagResourceResult < Aws::EmptyStructure; end

    # Validation rules for a text field.
    #
    # @!attribute [rw] min_length
    #   The minimum number of characters for the text field.
    #   @return [Integer]
    #
    # @!attribute [rw] max_length
    #   The maximum number of characters for the text field.
    #   @return [Integer]
    #
    # @!attribute [rw] pattern
    #   The regular expression used to validate the text field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/TextValidation AWS API Documentation
    #
    class TextValidation < Struct.new(
      :min_length,
      :max_length,
      :pattern)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error that occurred because too many requests were sent during a
    # certain amount of time.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   An array of tag key values to unassociate with the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/UntagResourceResult AWS API Documentation
    #
    class UntagResourceResult < Aws::EmptyStructure; end

    # @!attribute [rw] configuration_set_name
    #   The configuration set to update with the new event destination.
    #   Valid values for this can be the ConfigurationSetName or
    #   ConfigurationSetArn.
    #   @return [String]
    #
    # @!attribute [rw] event_destination_name
    #   The name to use for the event destination.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   When set to true logging is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] matching_event_types
    #   An array of event types that determine which events to log.
    #
    #   <note markdown="1"> The `TEXT_SENT` event type is not supported.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] cloud_watch_logs_destination
    #   An object that contains information about an event destination that
    #   sends data to CloudWatch Logs.
    #   @return [Types::CloudWatchLogsDestination]
    #
    # @!attribute [rw] kinesis_firehose_destination
    #   An object that contains information about an event destination for
    #   logging to Firehose.
    #   @return [Types::KinesisFirehoseDestination]
    #
    # @!attribute [rw] sns_destination
    #   An object that contains information about an event destination that
    #   sends data to Amazon SNS.
    #   @return [Types::SnsDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/UpdateEventDestinationRequest AWS API Documentation
    #
    class UpdateEventDestinationRequest < Struct.new(
      :configuration_set_name,
      :event_destination_name,
      :enabled,
      :matching_event_types,
      :cloud_watch_logs_destination,
      :kinesis_firehose_destination,
      :sns_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_set_arn
    #   The Amazon Resource Name (ARN) for the ConfigurationSet that was
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] configuration_set_name
    #   The name of the configuration set.
    #   @return [String]
    #
    # @!attribute [rw] event_destination
    #   An EventDestination object containing the details of where events
    #   will be logged.
    #   @return [Types::EventDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/UpdateEventDestinationResult AWS API Documentation
    #
    class UpdateEventDestinationResult < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :event_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_id
    #   The unique identifier of the phone number. Valid values for this
    #   field can be either the PhoneNumberId or PhoneNumberArn.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [String]
    #
    # @!attribute [rw] two_way_enabled
    #   By default this is set to false. When set to true you can receive
    #   incoming text messages from your end recipients.
    #   @return [Boolean]
    #
    # @!attribute [rw] two_way_channel_arn
    #   The Amazon Resource Name (ARN) of the two way channel.
    #   @return [String]
    #
    # @!attribute [rw] two_way_channel_role
    #   An optional IAM Role Arn for a service to assume, to be able to post
    #   inbound SMS messages.
    #   @return [String]
    #
    # @!attribute [rw] self_managed_opt_outs_enabled
    #   By default this is set to false. When set to false and an end
    #   recipient sends a message that begins with HELP or STOP to one of
    #   your dedicated numbers, End User MessagingSMS automatically replies
    #   with a customizable message and adds the end recipient to the
    #   OptOutList. When set to true you're responsible for responding to
    #   HELP and STOP requests. You're also responsible for tracking and
    #   honoring opt-out requests.
    #   @return [Boolean]
    #
    # @!attribute [rw] opt_out_list_name
    #   The OptOutList to add the phone number to. You can use either the
    #   opt out list name or the opt out list ARN.
    #   @return [String]
    #
    # @!attribute [rw] international_sending_enabled
    #   By default this is set to false. When set to true the international
    #   sending of phone number is Enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   By default this is set to false. When set to true the phone number
    #   can't be deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/UpdatePhoneNumberRequest AWS API Documentation
    #
    class UpdatePhoneNumberRequest < Struct.new(
      :phone_number_id,
      :two_way_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :international_sending_enabled,
      :deletion_protection_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_arn
    #   The Amazon Resource Name (ARN) of the updated phone number.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_id
    #   The unique identifier of the phone number.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number that was updated.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the request.
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   The type of message. Valid values are TRANSACTIONAL for messages
    #   that are critical or time-sensitive and PROMOTIONAL for messages
    #   that aren't critical or time-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] number_capabilities
    #   Specifies if the number could be used for text messages, voice or
    #   both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] number_type
    #   The type of number that was requested.
    #   @return [String]
    #
    # @!attribute [rw] monthly_leasing_price
    #   The monthly leasing price of the phone number, in US dollars.
    #   @return [String]
    #
    # @!attribute [rw] two_way_enabled
    #   By default this is set to false. When set to true you can receive
    #   incoming text messages from your end recipients.
    #   @return [Boolean]
    #
    # @!attribute [rw] two_way_channel_arn
    #   The Amazon Resource Name (ARN) of the two way channel.
    #   @return [String]
    #
    # @!attribute [rw] two_way_channel_role
    #   An optional IAM Role Arn for a service to assume, to be able to post
    #   inbound SMS messages.
    #   @return [String]
    #
    # @!attribute [rw] self_managed_opt_outs_enabled
    #   This is true if self managed opt-out are enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] opt_out_list_name
    #   The name of the OptOutList associated with the phone number.
    #   @return [String]
    #
    # @!attribute [rw] international_sending_enabled
    #   When set to true the international sending of phone number is
    #   Enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   When set to true the phone number can't be deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the phone number was created, in [UNIX epoch time][1]
    #   format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/UpdatePhoneNumberResult AWS API Documentation
    #
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
      :international_sending_enabled,
      :deletion_protection_enabled,
      :registration_id,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pool_id
    #   The unique identifier of the pool to update. Valid values are either
    #   the PoolId or PoolArn.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [String]
    #
    # @!attribute [rw] two_way_enabled
    #   By default this is set to false. When set to true you can receive
    #   incoming text messages from your end recipients.
    #   @return [Boolean]
    #
    # @!attribute [rw] two_way_channel_arn
    #   The Amazon Resource Name (ARN) of the two way channel.
    #   @return [String]
    #
    # @!attribute [rw] two_way_channel_role
    #   An optional IAM Role Arn for a service to assume, to be able to post
    #   inbound SMS messages.
    #   @return [String]
    #
    # @!attribute [rw] self_managed_opt_outs_enabled
    #   By default this is set to false. When set to false and an end
    #   recipient sends a message that begins with HELP or STOP to one of
    #   your dedicated numbers, End User MessagingSMS automatically replies
    #   with a customizable message and adds the end recipient to the
    #   OptOutList. When set to true you're responsible for responding to
    #   HELP and STOP requests. You're also responsible for tracking and
    #   honoring opt-out requests.
    #   @return [Boolean]
    #
    # @!attribute [rw] opt_out_list_name
    #   The OptOutList to associate with the pool. Valid values are either
    #   OptOutListName or OptOutListArn.
    #
    #   If you are using a shared End User MessagingSMS resource then you
    #   must use the full Amazon Resource Name(ARN).
    #   @return [String]
    #
    # @!attribute [rw] shared_routes_enabled
    #   Indicates whether shared routes are enabled for the pool.
    #   @return [Boolean]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   When set to true the pool can't be deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/UpdatePoolRequest AWS API Documentation
    #
    class UpdatePoolRequest < Struct.new(
      :pool_id,
      :two_way_enabled,
      :two_way_channel_arn,
      :two_way_channel_role,
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :shared_routes_enabled,
      :deletion_protection_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pool_arn
    #   The ARN of the pool.
    #   @return [String]
    #
    # @!attribute [rw] pool_id
    #   The unique identifier of the pool.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the pool update request.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   The type of message for the pool to use.
    #   @return [String]
    #
    # @!attribute [rw] two_way_enabled
    #   By default this is set to false. When set to true you can receive
    #   incoming text messages from your end recipients.
    #   @return [Boolean]
    #
    # @!attribute [rw] two_way_channel_arn
    #   The Amazon Resource Name (ARN) of the two way channel.
    #   @return [String]
    #
    # @!attribute [rw] two_way_channel_role
    #   An optional IAM Role Arn for a service to assume, to be able to post
    #   inbound SMS messages.
    #   @return [String]
    #
    # @!attribute [rw] self_managed_opt_outs_enabled
    #   When set to false and an end recipient sends a message that begins
    #   with HELP or STOP to one of your dedicated numbers, End User
    #   MessagingSMS automatically replies with a customizable message and
    #   adds the end recipient to the OptOutList. When set to true you're
    #   responsible for responding to HELP and STOP requests. You're also
    #   responsible for tracking and honoring opt-out requests.
    #   @return [Boolean]
    #
    # @!attribute [rw] opt_out_list_name
    #   The name of the OptOutList associated with the pool.
    #   @return [String]
    #
    # @!attribute [rw] shared_routes_enabled
    #   Indicates whether shared routes are enabled for the pool.
    #   @return [Boolean]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   When set to true the pool can't be deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the pool was created, in [UNIX epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/UpdatePoolResult AWS API Documentation
    #
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
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] number_capability
    #   The number capability to apply the CountryRuleSetUpdates updates to.
    #   @return [String]
    #
    # @!attribute [rw] country_rule_set_updates
    #   A map of ProtectConfigurationCountryRuleSetInformation objects that
    #   contain the details for the requested NumberCapability. The Key is
    #   the two-letter ISO country code. For a list of supported ISO country
    #   codes, see [Supported countries and regions (SMS channel)][1] in the
    #   End User MessagingSMS User Guide.
    #
    #   For example, to set the United States as allowed and Canada as
    #   blocked, the `CountryRuleSetUpdates` would be formatted as:
    #   `"CountryRuleSetUpdates": { "US" : { "ProtectStatus": "ALLOW" } "CA"
    #   \: { "ProtectStatus": "BLOCK" } }`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-sms-by-country.html
    #   @return [Hash<String,Types::ProtectConfigurationCountryRuleSetInformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/UpdateProtectConfigurationCountryRuleSetRequest AWS API Documentation
    #
    class UpdateProtectConfigurationCountryRuleSetRequest < Struct.new(
      :protect_configuration_id,
      :number_capability,
      :country_rule_set_updates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protect_configuration_arn
    #   The Amazon Resource Name (ARN) of the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] number_capability
    #   The number capability that was updated
    #   @return [String]
    #
    # @!attribute [rw] country_rule_set
    #   An array of ProtectConfigurationCountryRuleSetInformation containing
    #   the rules for the NumberCapability.
    #   @return [Hash<String,Types::ProtectConfigurationCountryRuleSetInformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/UpdateProtectConfigurationCountryRuleSetResult AWS API Documentation
    #
    class UpdateProtectConfigurationCountryRuleSetResult < Struct.new(
      :protect_configuration_arn,
      :protect_configuration_id,
      :number_capability,
      :country_rule_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   When set to true deletion protection is enabled. By default this is
    #   set to false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/UpdateProtectConfigurationRequest AWS API Documentation
    #
    class UpdateProtectConfigurationRequest < Struct.new(
      :protect_configuration_id,
      :deletion_protection_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protect_configuration_arn
    #   The Amazon Resource Name (ARN) of the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] protect_configuration_id
    #   The unique identifier for the protect configuration.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the protect configuration was created, in [UNIX epoch
    #   time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @!attribute [rw] account_default
    #   This is true if the protect configuration is set as your account
    #   default protect configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   The status of deletion protection for the protect configuration.
    #   When set to true deletion protection is enabled. By default this is
    #   set to false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/UpdateProtectConfigurationResult AWS API Documentation
    #
    class UpdateProtectConfigurationResult < Struct.new(
      :protect_configuration_arn,
      :protect_configuration_id,
      :created_timestamp,
      :account_default,
      :deletion_protection_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sender_id
    #   The sender ID to update.
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   By default this is set to false. When set to true the sender ID
    #   can't be deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/UpdateSenderIdRequest AWS API Documentation
    #
    class UpdateSenderIdRequest < Struct.new(
      :sender_id,
      :iso_country_code,
      :deletion_protection_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sender_id_arn
    #   The Amazon Resource Name (ARN) associated with the SenderId.
    #   @return [String]
    #
    # @!attribute [rw] sender_id
    #   The sender ID that was updated.
    #   @return [String]
    #
    # @!attribute [rw] iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region.
    #   @return [String]
    #
    # @!attribute [rw] message_types
    #   The type of message. Valid values are TRANSACTIONAL for messages
    #   that are critical or time-sensitive and PROMOTIONAL for messages
    #   that aren't critical or time-sensitive.
    #   @return [Array<String>]
    #
    # @!attribute [rw] monthly_leasing_price
    #   The monthly price, in US dollars, to lease the sender ID.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   By default this is set to false. When set to true the sender ID
    #   can't be deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] registered
    #   True if the sender ID is registered..
    #   @return [Boolean]
    #
    # @!attribute [rw] registration_id
    #   The unique identifier for the registration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/UpdateSenderIdResult AWS API Documentation
    #
    class UpdateSenderIdResult < Struct.new(
      :sender_id_arn,
      :sender_id,
      :iso_country_code,
      :message_types,
      :monthly_leasing_price,
      :deletion_protection_enabled,
      :registered,
      :registration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A validation exception for a field.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the exception.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   The field that failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field associated with the validation exception.
    #
    # @!attribute [rw] name
    #   The name of the field.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message associated with the validation exception with
    #   information to help determine its cause.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter definition for filtering verified destination phone numbers
    # that meets a specified criteria.
    #
    # @!attribute [rw] name
    #   The name of the attribute to filter on.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   An array of values to filter on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/VerifiedDestinationNumberFilter AWS API Documentation
    #
    class VerifiedDestinationNumberFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the requested verified destintion phone
    # number.
    #
    # @!attribute [rw] verified_destination_number_arn
    #   The Amazon Resource Name (ARN) for the verified destination phone
    #   number.
    #   @return [String]
    #
    # @!attribute [rw] verified_destination_number_id
    #   The unique identifier for the verified destination phone number.
    #   @return [String]
    #
    # @!attribute [rw] destination_phone_number
    #   The verified destination phone number, in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the verified destination phone number.
    #
    #   * `PENDING`: The phone number hasn't been verified yet.
    #
    #   * `VERIFIED`: The phone number is verified and can receive messages.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the destination phone number was created, in [UNIX
    #   epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/VerifiedDestinationNumberInformation AWS API Documentation
    #
    class VerifiedDestinationNumberInformation < Struct.new(
      :verified_destination_number_arn,
      :verified_destination_number_id,
      :destination_phone_number,
      :status,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] verified_destination_number_id
    #   The unique identifier for the verififed destination phone number.
    #   @return [String]
    #
    # @!attribute [rw] verification_code
    #   The verification code that was received by the verified destination
    #   phone number.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/VerifyDestinationNumberRequest AWS API Documentation
    #
    class VerifyDestinationNumberRequest < Struct.new(
      :verified_destination_number_id,
      :verification_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] verified_destination_number_arn
    #   The Amazon Resource Name (ARN) for the verified destination phone
    #   number.
    #   @return [String]
    #
    # @!attribute [rw] verified_destination_number_id
    #   The unique identifier for the verified destination phone number.
    #   @return [String]
    #
    # @!attribute [rw] destination_phone_number
    #   The phone number in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status for being able to send messages to the phone number.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the destination phone number was created, in [UNIX
    #   epoch time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/VerifyDestinationNumberResult AWS API Documentation
    #
    class VerifyDestinationNumberResult < Struct.new(
      :verified_destination_number_arn,
      :verified_destination_number_id,
      :destination_phone_number,
      :status,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end


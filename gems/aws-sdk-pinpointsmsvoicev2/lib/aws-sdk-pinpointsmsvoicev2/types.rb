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
    #   DescribePools.
    #   @return [String]
    #
    # @!attribute [rw] origination_identity
    #   The origination identity to use, such as PhoneNumberId,
    #   PhoneNumberArn, SenderId, or SenderIdArn. You can use
    #   DescribePhoneNumbers to find the values for PhoneNumberId and
    #   PhoneNumberArn, while DescribeSenderIds can be used to get the
    #   values for SenderId and SenderIdArn.
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

    # Contains the destination configuration to use when publishing message
    # sending events.
    #
    # @!attribute [rw] iam_role_arn
    #   The Amazon Resource Name (ARN) of an Amazon Identity and Access
    #   Management (IAM) role that is able to write event data to an Amazon
    #   CloudWatch destination.
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
    # @!attribute [rw] created_timestamp
    #   The time when the ConfigurationSet was created, in [UNIX epoch
    #   time][1] format.
    #
    #
    #
    #   [1]: https://www.epochconverter.com/
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ConfigurationSetInformation AWS API Documentation
    #
    class ConfigurationSetInformation < Struct.new(
      :configuration_set_arn,
      :configuration_set_name,
      :event_destinations,
      :default_message_type,
      :default_sender_id,
      :created_timestamp)
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
    #   "ALL" is used, then Amazon Pinpoint logs every event type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cloud_watch_logs_destination
    #   An object that contains information about an event destination for
    #   logging to Amazon CloudWatch logs.
    #   @return [Types::CloudWatchLogsDestination]
    #
    # @!attribute [rw] kinesis_firehose_destination
    #   An object that contains information about an event destination for
    #   logging to Amazon Kinesis Data Firehose.
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
    #   DescribePhoneNumbers to find the values for PhoneNumberId and
    #   PhoneNumberArn while DescribeSenderIds can be used to get the values
    #   for SenderId and SenderIdArn.
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
    #   that aren't critical or time-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   By default this is set to false. When set to true the pool can't be
    #   deleted. You can change this value using the UpdatePool action.
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
    # @!attribute [rw] self_managed_opt_outs_enabled
    #   By default this is set to false. When an end recipient sends a
    #   message that begins with HELP or STOP to one of your dedicated
    #   numbers, Amazon Pinpoint automatically replies with a customizable
    #   message and adds the end recipient to the OptOutList. When set to
    #   true you're responsible for responding to HELP and STOP requests.
    #   You're also responsible for tracking and honoring opt-out requests.
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
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :shared_routes_enabled,
      :deletion_protection_enabled,
      :tags,
      :created_timestamp)
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

    # @!attribute [rw] opt_out_list_name
    #   The OptOutListName or OptOutListArn of the OptOutList to delete. You
    #   can use DescribeOptOutLists to find the values for OptOutListName
    #   and OptOutListArn.
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
    # @!attribute [rw] self_managed_opt_outs_enabled
    #   By default this is set to false. When an end recipient sends a
    #   message that begins with HELP or STOP to one of your dedicated
    #   numbers, Amazon Pinpoint automatically replies with a customizable
    #   message and adds the end recipient to the OptOutList. When set to
    #   true you're responsible for responding to HELP and STOP requests.
    #   You're also responsible for tracking and honoring opt-out requests.
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
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :shared_routes_enabled,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeOptOutListsRequest AWS API Documentation
    #
    class DescribeOptOutListsRequest < Struct.new(
      :opt_out_list_names,
      :next_token,
      :max_results)
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
    #   @return [String]
    #
    # @!attribute [rw] opted_out_numbers
    #   An array of phone numbers to search for in the OptOutList.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribePhoneNumbersRequest AWS API Documentation
    #
    class DescribePhoneNumbersRequest < Struct.new(
      :phone_number_ids,
      :filters,
      :next_token,
      :max_results)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribePoolsRequest AWS API Documentation
    #
    class DescribePoolsRequest < Struct.new(
      :pool_ids,
      :filters,
      :next_token,
      :max_results)
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

    # @!attribute [rw] sender_ids
    #   An array of SenderIdAndCountry objects to search for.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeSenderIdsRequest AWS API Documentation
    #
    class DescribeSenderIdsRequest < Struct.new(
      :sender_ids,
      :filters,
      :next_token,
      :max_results)
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

    # @!attribute [rw] pool_id
    #   The unique identifier for the pool to disassociate with the
    #   origination identity. This value can be either the PoolId or
    #   PoolArn.
    #   @return [String]
    #
    # @!attribute [rw] origination_identity
    #   The origination identity to use such as a PhoneNumberId,
    #   PhoneNumberArn, SenderId or SenderIdArn. You can use
    #   DescribePhoneNumbers find the values for PhoneNumberId and
    #   PhoneNumberArn, or use DescribeSenderIds to get the values for
    #   SenderId and SenderIdArn.
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

    # Contains information about an event destination.
    #
    # Event destinations are associated with configuration sets, which
    # enable you to publish message sending events to Amazon CloudWatch,
    # Amazon Kinesis Data Firehose, or Amazon SNS.
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
    #   @return [Array<String>]
    #
    # @!attribute [rw] cloud_watch_logs_destination
    #   An object that contains information about an event destination that
    #   sends logging events to Amazon CloudWatch logs.
    #   @return [Types::CloudWatchLogsDestination]
    #
    # @!attribute [rw] kinesis_firehose_destination
    #   An object that contains information about an event destination for
    #   logging to Amazon Kinesis Data Firehose.
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
    # of the Identity and Access Management (IAM) role associated with an
    # Kinesis Data Firehose event destination.
    #
    # Event destinations, such as Kinesis Data Firehose, are associated with
    # configuration sets, which enable you to publish message sending
    # events.
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of an Amazon Identity and Access Management (IAM) role that
    #   is able to write event data to an Amazon Firehose destination.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/OriginationIdentityMetadata AWS API Documentation
    #
    class OriginationIdentityMetadata < Struct.new(
      :origination_identity_arn,
      :origination_identity,
      :iso_country_code,
      :number_capabilities)
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

    # The information for a phone number in an Amazon Web Services account.
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
    # @!attribute [rw] self_managed_opt_outs_enabled
    #   When set to false an end recipient sends a message that begins with
    #   HELP or STOP to one of your dedicated numbers, Amazon Pinpoint
    #   automatically replies with a customizable message and adds the end
    #   recipient to the OptOutList. When set to true you're responsible
    #   for responding to HELP and STOP requests. You're also responsible
    #   for tracking and honoring opt-out request. For more information see
    #   [Self-managed opt-outs][1]
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
    # @!attribute [rw] deletion_protection_enabled
    #   When set to true the phone number can't be deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] pool_id
    #   The unique identifier of the pool associated with the phone number.
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
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :deletion_protection_enabled,
      :pool_id,
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
    # @!attribute [rw] self_managed_opt_outs_enabled
    #   When set to false, an end recipient sends a message that begins with
    #   HELP or STOP to one of your dedicated numbers, Amazon Pinpoint
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
    #   on the country) that are shared with other Amazon Pinpoint users. In
    #   some countries, such as the United States, senders aren't allowed
    #   to use shared routes and must use a dedicated phone number or short
    #   code.
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

    # @!attribute [rw] origination_identity
    #   The origination identity to use such as a PhoneNumberId,
    #   PhoneNumberArn, SenderId or SenderIdArn. You can use
    #   DescribePhoneNumbers get the values for PhoneNumberId and
    #   PhoneNumberArn while DescribeSenderIds can be used to get the values
    #   for SenderId and SenderIdArn.
    #   @return [String]
    #
    # @!attribute [rw] keyword
    #   The new keyword to add.
    #   @return [String]
    #
    # @!attribute [rw] keyword_message
    #   The message associated with the keyword.
    #
    #   * AUTOMATIC\_RESPONSE: A message is sent to the recipient.
    #
    #   * OPT\_OUT: Keeps the recipient from receiving future messages.
    #
    #   * OPT\_IN: The recipient wants to receive future messages.
    #   @return [String]
    #
    # @!attribute [rw] keyword_action
    #   The action to perform for the new keyword when it is received.
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

    # @!attribute [rw] opt_out_list_name
    #   The OptOutListName or OptOutListArn to add the phone number to.
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

    # @!attribute [rw] phone_number_id
    #   The PhoneNumberId or PhoneNumberArn of the phone number to release.
    #   You can use DescribePhoneNumbers to get the values for PhoneNumberId
    #   and PhoneNumberArn.
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
    # @!attribute [rw] self_managed_opt_outs_enabled
    #   By default this is set to false. When an end recipient sends a
    #   message that begins with HELP or STOP to one of your dedicated
    #   numbers, Amazon Pinpoint automatically replies with a customizable
    #   message and adds the end recipient to the OptOutList. When set to
    #   true you're responsible for responding to HELP and STOP requests.
    #   You're also responsible for tracking and honoring opt-out requests.
    #   @return [Boolean]
    #
    # @!attribute [rw] opt_out_list_name
    #   The name of the OptOutList that was associated with the phone
    #   number.
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
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   messages, or both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] number_type
    #   The type of phone number to request.
    #   @return [String]
    #
    # @!attribute [rw] opt_out_list_name
    #   The name of the OptOutList to associate with the phone number. You
    #   can use the OutOutListName or OptPutListArn.
    #   @return [String]
    #
    # @!attribute [rw] pool_id
    #   The pool to associated with the phone number. You can use the PoolId
    #   or PoolArn.
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   Use this field to attach your phone number for an external
    #   registration process.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   By default this is set to false. When set to true the phone number
    #   can't be deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   An array of tags (key and value pairs) associate with the requested
    #   phone number.
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
    # @!attribute [rw] self_managed_opt_outs_enabled
    #   By default this is set to false. When an end recipient sends a
    #   message that begins with HELP or STOP to one of your dedicated
    #   numbers, Amazon Pinpoint automatically replies with a customizable
    #   message and adds the end recipient to the OptOutList. When set to
    #   true you're responsible for responding to HELP and STOP requests.
    #   You're also responsible for tracking and honoring opt-out requests.
    #   @return [Boolean]
    #
    # @!attribute [rw] opt_out_list_name
    #   The name of the OptOutList that is associated with the requested
    #   phone number.
    #   @return [String]
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
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :deletion_protection_enabled,
      :pool_id,
      :tags,
      :created_timestamp)
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

    # @!attribute [rw] destination_phone_number
    #   The destination phone number in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] origination_identity
    #   The origination identity of the message. This can be either the
    #   PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn,
    #   PoolId, or PoolArn.
    #   @return [String]
    #
    # @!attribute [rw] message_body
    #   The body of the text message.
    #   @return [String]
    #
    # @!attribute [rw] message_type
    #   The type of message. Valid values are TRANSACTIONAL for messages
    #   that are critical or time-sensitive and PROMOTIONAL for messages
    #   that aren't critical or time-sensitive.
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
    #   text message part. A text message can contain multiple parts.
    #   @return [String]
    #
    # @!attribute [rw] time_to_live
    #   How long the text message is valid for. By default this is 72 hours.
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
    #
    #
    #   [1]: https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-senderid-india.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] dry_run
    #   When set to true, the message is checked and validated, but isn't
    #   sent to the end recipient.
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
      :dry_run)
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
      :dry_run)
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
    # IDs for SMS messaging with Amazon Pinpoint ][1] in the *Amazon
    # Pinpoint User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-awssupport-sender-id.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SenderIdInformation AWS API Documentation
    #
    class SenderIdInformation < Struct.new(
      :sender_id_arn,
      :sender_id,
      :iso_country_code,
      :message_types,
      :monthly_leasing_price)
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

    # Describes the current Amazon Pinpoint monthly spend limits for sending
    # voice and text messages. For more information on increasing your
    # monthly spend limit, see [ Requesting increases to your monthly SMS
    # spending quota for Amazon Pinpoint ][1] in the *Amazon Pinpoint User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-awssupport-spend-threshold.html
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
    #   @return [Array<String>]
    #
    # @!attribute [rw] cloud_watch_logs_destination
    #   An object that contains information about an event destination that
    #   sends data to CloudWatch Logs.
    #   @return [Types::CloudWatchLogsDestination]
    #
    # @!attribute [rw] kinesis_firehose_destination
    #   An object that contains information about an event destination for
    #   logging to Kinesis Data Firehose.
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
    # @!attribute [rw] self_managed_opt_outs_enabled
    #   By default this is set to false. When an end recipient sends a
    #   message that begins with HELP or STOP to one of your dedicated
    #   numbers, Amazon Pinpoint automatically replies with a customizable
    #   message and adds the end recipient to the OptOutList. When set to
    #   true you're responsible for responding to HELP and STOP requests.
    #   You're also responsible for tracking and honoring opt-out requests.
    #   @return [Boolean]
    #
    # @!attribute [rw] opt_out_list_name
    #   The OptOutList to add the phone number to. Valid values for this
    #   field can be either the OutOutListName or OutOutListArn.
    #   @return [String]
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
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
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
    # @!attribute [rw] self_managed_opt_outs_enabled
    #   This is true if self managed opt-out are enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] opt_out_list_name
    #   The name of the OptOutList associated with the phone number.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection_enabled
    #   When set to true the phone number can't be deleted.
    #   @return [Boolean]
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
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :deletion_protection_enabled,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pool_id
    #   The unique identifier of the pool to update. Valid values are either
    #   the PoolId or PoolArn.
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
    # @!attribute [rw] self_managed_opt_outs_enabled
    #   By default this is set to false. When an end recipient sends a
    #   message that begins with HELP or STOP to one of your dedicated
    #   numbers, Amazon Pinpoint automatically replies with a customizable
    #   message and adds the end recipient to the OptOutList. When set to
    #   true you're responsible for responding to HELP and STOP requests.
    #   You're also responsible for tracking and honoring opt-out requests.
    #   @return [Boolean]
    #
    # @!attribute [rw] opt_out_list_name
    #   The OptOutList to associate with the pool. Valid values are either
    #   OptOutListName or OptOutListArn.
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
    # @!attribute [rw] self_managed_opt_outs_enabled
    #   When an end recipient sends a message that begins with HELP or STOP
    #   to one of your dedicated numbers, Amazon Pinpoint automatically
    #   replies with a customizable message and adds the end recipient to
    #   the OptOutList. When set to true you're responsible for responding
    #   to HELP and STOP requests. You're also responsible for tracking and
    #   honoring opt-out requests.
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
      :self_managed_opt_outs_enabled,
      :opt_out_list_name,
      :shared_routes_enabled,
      :deletion_protection_enabled,
      :created_timestamp)
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

  end
end

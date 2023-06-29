# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ChimeSDKIdentity
  module Types

    # The details of an `AppInstance`, an instance of an Amazon Chime SDK
    # messaging application.
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the messaging instance.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of an `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which an `AppInstance` was created. In epoch
    #   milliseconds.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The time an `AppInstance` was last updated. In epoch milliseconds.
    #   @return [Time]
    #
    # @!attribute [rw] metadata
    #   The metadata of an `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/AppInstance AWS API Documentation
    #
    class AppInstance < Struct.new(
      :app_instance_arn,
      :name,
      :created_timestamp,
      :last_updated_timestamp,
      :metadata)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # The name and ARN of the admin for the `AppInstance`.
    #
    # @!attribute [rw] admin
    #   The `AppInstanceAdmin` data.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance` for which the user is an administrator.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which an administrator was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/AppInstanceAdmin AWS API Documentation
    #
    class AppInstanceAdmin < Struct.new(
      :admin,
      :app_instance_arn,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of the details of an `AppInstanceAdmin`.
    #
    # @!attribute [rw] admin
    #   The details of the `AppInstanceAdmin`.
    #   @return [Types::Identity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/AppInstanceAdminSummary AWS API Documentation
    #
    class AppInstanceAdminSummary < Struct.new(
      :admin)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon Lex V2 chat bot created under an `AppInstance`.
    #
    # @!attribute [rw] app_instance_bot_arn
    #   The ARN of the AppInstanceBot.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the AppInstanceBot.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The data processing instructions for an AppInstanceBot.
    #   @return [Types::Configuration]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the `AppInstanceBot` was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The time at which the `AppInstanceBot` was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] metadata
    #   The metadata for an AppInstanceBot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/AppInstanceBot AWS API Documentation
    #
    class AppInstanceBot < Struct.new(
      :app_instance_bot_arn,
      :name,
      :configuration,
      :created_timestamp,
      :last_updated_timestamp,
      :metadata)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # High-level information about an AppInstanceBot.
    #
    # @!attribute [rw] app_instance_bot_arn
    #   The ARN of the AppInstanceBot.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the AppInstanceBox.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the AppInstanceBot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/AppInstanceBotSummary AWS API Documentation
    #
    class AppInstanceBotSummary < Struct.new(
      :app_instance_bot_arn,
      :name,
      :metadata)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # The details of the data-retention settings for an `AppInstance`.
    #
    # @!attribute [rw] channel_retention_settings
    #   The length of time in days to retain the messages in a channel.
    #   @return [Types::ChannelRetentionSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/AppInstanceRetentionSettings AWS API Documentation
    #
    class AppInstanceRetentionSettings < Struct.new(
      :channel_retention_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of the data for an `AppInstance`.
    #
    # @!attribute [rw] app_instance_arn
    #   The `AppInstance` ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/AppInstanceSummary AWS API Documentation
    #
    class AppInstanceSummary < Struct.new(
      :app_instance_arn,
      :name,
      :metadata)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # The details of an `AppInstanceUser`.
    #
    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the `AppInstanceUser` was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The time at which the `AppInstanceUser` was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_settings
    #   The interval after which an `AppInstanceUser` is automatically
    #   deleted.
    #   @return [Types::ExpirationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/AppInstanceUser AWS API Documentation
    #
    class AppInstanceUser < Struct.new(
      :app_instance_user_arn,
      :name,
      :metadata,
      :created_timestamp,
      :last_updated_timestamp,
      :expiration_settings)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # An endpoint under an Amazon Chime `AppInstanceUser` that receives
    # messages for a user. For push notifications, the endpoint is a mobile
    # device used to receive mobile push notifications for a user.
    #
    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_id
    #   The unique identifier of the `AppInstanceUserEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `AppInstanceUserEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the `AppInstanceUserEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource to which the endpoint belongs.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_attributes
    #   The attributes of an `Endpoint`.
    #   @return [Types::EndpointAttributes]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which an `AppInstanceUserEndpoint` was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The time at which an `AppInstanceUserEndpoint` was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] allow_messages
    #   Boolean that controls whether the `AppInstanceUserEndpoint` is opted
    #   in to receive messages. `ALL` indicates the endpoint will receive
    #   all messages. `NONE` indicates the endpoint will receive no
    #   messages.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_state
    #   A read-only field that represents the state of an
    #   `AppInstanceUserEndpoint`. Supported values:
    #
    #   * `ACTIVE`: The `AppInstanceUserEndpoint` is active and able to
    #     receive messages. When `ACTIVE`, the `EndpointStatusReason`
    #     remains empty.
    #
    #   * `INACTIVE`: The `AppInstanceUserEndpoint` is inactive and can't
    #     receive message. When `INACTIVE`, the corresponding reason will be
    #     conveyed through `EndpointStatusReason`.
    #
    #   * `INVALID_DEVICE_TOKEN` indicates that an `AppInstanceUserEndpoint`
    #     is `INACTIVE` due to invalid device token
    #
    #   * `INVALID_PINPOINT_ARN` indicates that an `AppInstanceUserEndpoint`
    #     is `INACTIVE` due to an invalid pinpoint ARN that was input
    #     through the `ResourceArn` field.
    #   @return [Types::EndpointState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/AppInstanceUserEndpoint AWS API Documentation
    #
    class AppInstanceUserEndpoint < Struct.new(
      :app_instance_user_arn,
      :endpoint_id,
      :name,
      :type,
      :resource_arn,
      :endpoint_attributes,
      :created_timestamp,
      :last_updated_timestamp,
      :allow_messages,
      :endpoint_state)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # Summary of the details of an `AppInstanceUserEndpoint`.
    #
    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_id
    #   The unique identifier of the `AppInstanceUserEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `AppInstanceUserEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the `AppInstanceUserEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] allow_messages
    #   BBoolean that controls whether the `AppInstanceUserEndpoint` is
    #   opted in to receive messages. `ALL` indicates the endpoint will
    #   receive all messages. `NONE` indicates the endpoint will receive no
    #   messages.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_state
    #   A read-only field that represent the state of an
    #   `AppInstanceUserEndpoint`.
    #   @return [Types::EndpointState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/AppInstanceUserEndpointSummary AWS API Documentation
    #
    class AppInstanceUserEndpointSummary < Struct.new(
      :app_instance_user_arn,
      :endpoint_id,
      :name,
      :type,
      :allow_messages,
      :endpoint_state)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # Summary of the details of an `AppInstanceUser`.
    #
    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of an `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the `AppInstanceUser`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/AppInstanceUserSummary AWS API Documentation
    #
    class AppInstanceUserSummary < Struct.new(
      :app_instance_user_arn,
      :name,
      :metadata)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # The input parameters don't match the service's restrictions.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the retention settings for a channel.
    #
    # @!attribute [rw] retention_days
    #   The time in days to retain the messages in a channel.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ChannelRetentionSettings AWS API Documentation
    #
    class ChannelRetentionSettings < Struct.new(
      :retention_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains configuration data.
    #
    # @!attribute [rw] lex
    #   The configuration for an Amazon Lex V2 bot.
    #   @return [Types::LexConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/Configuration AWS API Documentation
    #
    class Configuration < Struct.new(
      :lex)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be processed because of conflict in the current
    # state of the resource.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_admin_arn
    #   The ARN of the administrator of the current `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/CreateAppInstanceAdminRequest AWS API Documentation
    #
    class CreateAppInstanceAdminRequest < Struct.new(
      :app_instance_admin_arn,
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_admin
    #   The ARN and name of the administrator, the ARN of the `AppInstance`,
    #   and the created and last-updated timestamps. All timestamps use
    #   epoch milliseconds.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the of the admin for the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/CreateAppInstanceAdminResponse AWS API Documentation
    #
    class CreateAppInstanceAdminResponse < Struct.new(
      :app_instance_admin,
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance` request.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The user's name.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The request metadata. Limited to a 1KB string in UTF-8.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The unique ID for the client making the request. Use different
    #   tokens for different `AppInstanceBots`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the `AppInstanceBot`.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] configuration
    #   Configuration information about the Amazon Lex V2 V2 bot.
    #   @return [Types::Configuration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/CreateAppInstanceBotRequest AWS API Documentation
    #
    class CreateAppInstanceBotRequest < Struct.new(
      :app_instance_arn,
      :name,
      :metadata,
      :client_request_token,
      :tags,
      :configuration)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_bot_arn
    #   The ARN of the `AppinstanceBot`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/CreateAppInstanceBotResponse AWS API Documentation
    #
    class CreateAppInstanceBotResponse < Struct.new(
      :app_instance_bot_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the `AppInstance`. Limited to a 1KB string in UTF-8.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The unique ID of the request. Use different tokens to create
    #   different `AppInstances`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags assigned to the `AppInstance`.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/CreateAppInstanceRequest AWS API Documentation
    #
    class CreateAppInstanceRequest < Struct.new(
      :name,
      :metadata,
      :client_request_token,
      :tags)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The Amazon Resource Number (ARN) of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/CreateAppInstanceResponse AWS API Documentation
    #
    class CreateAppInstanceResponse < Struct.new(
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance` request.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_user_id
    #   The user ID of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The user's name.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The request's metadata. Limited to a 1KB string in UTF-8.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The unique ID of the request. Use different tokens to request
    #   additional `AppInstances`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags assigned to the `AppInstanceUser`.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] expiration_settings
    #   Settings that control the interval after which the `AppInstanceUser`
    #   is automatically deleted.
    #   @return [Types::ExpirationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/CreateAppInstanceUserRequest AWS API Documentation
    #
    class CreateAppInstanceUserRequest < Struct.new(
      :app_instance_arn,
      :app_instance_user_id,
      :name,
      :metadata,
      :client_request_token,
      :tags,
      :expiration_settings)
      SENSITIVE = [:app_instance_user_id, :name, :metadata]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The user's ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/CreateAppInstanceUserResponse AWS API Documentation
    #
    class CreateAppInstanceUserResponse < Struct.new(
      :app_instance_user_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_admin_arn
    #   The ARN of the `AppInstance`'s administrator.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DeleteAppInstanceAdminRequest AWS API Documentation
    #
    class DeleteAppInstanceAdminRequest < Struct.new(
      :app_instance_admin_arn,
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_bot_arn
    #   The ARN of the `AppInstanceBot` being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DeleteAppInstanceBotRequest AWS API Documentation
    #
    class DeleteAppInstanceBotRequest < Struct.new(
      :app_instance_bot_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DeleteAppInstanceRequest AWS API Documentation
    #
    class DeleteAppInstanceRequest < Struct.new(
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the user request being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DeleteAppInstanceUserRequest AWS API Documentation
    #
    class DeleteAppInstanceUserRequest < Struct.new(
      :app_instance_user_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_id
    #   The unique identifier of the `AppInstanceUserEndpoint`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DeregisterAppInstanceUserEndpointRequest AWS API Documentation
    #
    class DeregisterAppInstanceUserEndpointRequest < Struct.new(
      :app_instance_user_arn,
      :endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_admin_arn
    #   The ARN of the `AppInstanceAdmin`.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DescribeAppInstanceAdminRequest AWS API Documentation
    #
    class DescribeAppInstanceAdminRequest < Struct.new(
      :app_instance_admin_arn,
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_admin
    #   The ARN and name of the `AppInstanceUser`, the ARN of the
    #   `AppInstance`, and the created and last-updated timestamps. All
    #   timestamps use epoch milliseconds.
    #   @return [Types::AppInstanceAdmin]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DescribeAppInstanceAdminResponse AWS API Documentation
    #
    class DescribeAppInstanceAdminResponse < Struct.new(
      :app_instance_admin)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_bot_arn
    #   The ARN of the `AppInstanceBot`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DescribeAppInstanceBotRequest AWS API Documentation
    #
    class DescribeAppInstanceBotRequest < Struct.new(
      :app_instance_bot_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_bot
    #   The detials of the `AppInstanceBot`.
    #   @return [Types::AppInstanceBot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DescribeAppInstanceBotResponse AWS API Documentation
    #
    class DescribeAppInstanceBotResponse < Struct.new(
      :app_instance_bot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DescribeAppInstanceRequest AWS API Documentation
    #
    class DescribeAppInstanceRequest < Struct.new(
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance
    #   The ARN, metadata, created and last-updated timestamps, and the name
    #   of the `AppInstance`. All timestamps use epoch milliseconds.
    #   @return [Types::AppInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DescribeAppInstanceResponse AWS API Documentation
    #
    class DescribeAppInstanceResponse < Struct.new(
      :app_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_id
    #   The unique identifier of the `AppInstanceUserEndpoint`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DescribeAppInstanceUserEndpointRequest AWS API Documentation
    #
    class DescribeAppInstanceUserEndpointRequest < Struct.new(
      :app_instance_user_arn,
      :endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_endpoint
    #   The full details of an `AppInstanceUserEndpoint`: the
    #   `AppInstanceUserArn`, ID, name, type, resource ARN, attributes,
    #   allow messages, state, and created and last updated timestamps. All
    #   timestamps use epoch milliseconds.
    #   @return [Types::AppInstanceUserEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DescribeAppInstanceUserEndpointResponse AWS API Documentation
    #
    class DescribeAppInstanceUserEndpointResponse < Struct.new(
      :app_instance_user_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DescribeAppInstanceUserRequest AWS API Documentation
    #
    class DescribeAppInstanceUserRequest < Struct.new(
      :app_instance_user_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user
    #   The name of the `AppInstanceUser`.
    #   @return [Types::AppInstanceUser]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DescribeAppInstanceUserResponse AWS API Documentation
    #
    class DescribeAppInstanceUserResponse < Struct.new(
      :app_instance_user)
      SENSITIVE = []
      include Aws::Structure
    end

    # The attributes of an `Endpoint`.
    #
    # @!attribute [rw] device_token
    #   The device token for the GCM, APNS, and APNS\_SANDBOX endpoint
    #   types.
    #   @return [String]
    #
    # @!attribute [rw] voip_device_token
    #   The VOIP device token for the APNS and APNS\_SANDBOX endpoint types.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/EndpointAttributes AWS API Documentation
    #
    class EndpointAttributes < Struct.new(
      :device_token,
      :voip_device_token)
      SENSITIVE = [:device_token, :voip_device_token]
      include Aws::Structure
    end

    # A read-only field that represents the state of an
    # `AppInstanceUserEndpoint`. Supported values:
    #
    # * `ACTIVE`: The `AppInstanceUserEndpoint` is active and able to
    #   receive messages. When `ACTIVE`, the `EndpointStatusReason` remains
    #   empty.
    #
    # * `INACTIVE`: The `AppInstanceUserEndpoint` is inactive and can't
    #   receive message. When INACTIVE, the corresponding reason will be
    #   conveyed through EndpointStatusReason.
    #
    # * `INVALID_DEVICE_TOKEN` indicates that an `AppInstanceUserEndpoint`
    #   is `INACTIVE` due to invalid device token
    #
    # * `INVALID_PINPOINT_ARN` indicates that an `AppInstanceUserEndpoint`
    #   is `INACTIVE` due to an invalid pinpoint ARN that was input through
    #   the `ResourceArn` field.
    #
    # @!attribute [rw] status
    #   Enum that indicates the Status of an `AppInstanceUserEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the `EndpointStatus`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/EndpointState AWS API Documentation
    #
    class EndpointState < Struct.new(
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines the interval after which an `AppInstanceUser` is
    # automatically deleted.
    #
    # @!attribute [rw] expiration_days
    #   The period in days after which an `AppInstanceUser` will be
    #   automatically deleted.
    #   @return [Integer]
    #
    # @!attribute [rw] expiration_criterion
    #   Specifies the conditions under which an `AppInstanceUser` will
    #   expire.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ExpirationSettings AWS API Documentation
    #
    class ExpirationSettings < Struct.new(
      :expiration_days,
      :expiration_criterion)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client is permanently forbidden from making the request.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/GetAppInstanceRetentionSettingsRequest AWS API Documentation
    #
    class GetAppInstanceRetentionSettingsRequest < Struct.new(
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_retention_settings
    #   The retention settings for the `AppInstance`.
    #   @return [Types::AppInstanceRetentionSettings]
    #
    # @!attribute [rw] initiate_deletion_timestamp
    #   The timestamp representing the time at which the specified items are
    #   retained, in Epoch Seconds.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/GetAppInstanceRetentionSettingsResponse AWS API Documentation
    #
    class GetAppInstanceRetentionSettingsResponse < Struct.new(
      :app_instance_retention_settings,
      :initiate_deletion_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a user or bot.
    #
    # @!attribute [rw] arn
    #   The ARN in an Identity.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name in an Identity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/Identity AWS API Documentation
    #
    class Identity < Struct.new(
      :arn,
      :name)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # Specifies the type of message that triggers a bot.
    #
    # @!attribute [rw] standard_messages
    #   Sets standard messages as the bot trigger. For standard messages:
    #
    #   * `ALL`: The bot processes all standard messages.
    #
    #   * `AUTO`: The bot responds to ALL messages when the channel has one
    #     other non-hidden member, and responds to MENTIONS when the channel
    #     has more than one other non-hidden member.
    #
    #   * `MENTIONS`: The bot processes all standard messages that have a
    #     message attribute with `CHIME.mentions` and a value of the bot
    #     ARN.
    #
    #   * `NONE`: The bot processes no standard messages.
    #   @return [String]
    #
    # @!attribute [rw] targeted_messages
    #   Sets targeted messages as the bot trigger. For targeted messages:
    #
    #   * `ALL`: The bot processes all `TargetedMessages` sent to it. The
    #     bot then responds with a targeted message back to the sender.
    #
    #   * `NONE`: The bot processes no targeted messages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/InvokedBy AWS API Documentation
    #
    class InvokedBy < Struct.new(
      :standard_messages,
      :targeted_messages)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for an Amazon Lex V2 bot.
    #
    # @!attribute [rw] responds_to
    #   **Deprecated**. Use `InvokedBy` instead.
    #
    #   Determines whether the Amazon Lex V2 bot responds to all standard
    #   messages. Control messages are not supported.
    #   @return [String]
    #
    # @!attribute [rw] invoked_by
    #   Specifies the type of message that triggers a bot.
    #   @return [Types::InvokedBy]
    #
    # @!attribute [rw] lex_bot_alias_arn
    #   The ARN of the Amazon Lex V2 bot's alias. The ARN uses this format:
    #   `arn:aws:lex:REGION:ACCOUNT:bot-alias/MYBOTID/MYBOTALIAS`
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   Identifies the Amazon Lex V2 bot's language and locale. The string
    #   must match one of the supported locales in Amazon Lex V2. All of the
    #   intents, slot types, and slots used in the bot must have the same
    #   locale. For more information, see [Supported languages][1] in the
    #   *Amazon Lex V2 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] welcome_intent
    #   The name of the welcome intent configured in the Amazon Lex V2 bot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/LexConfiguration AWS API Documentation
    #
    class LexConfiguration < Struct.new(
      :responds_to,
      :invoked_by,
      :lex_bot_alias_arn,
      :locale_id,
      :welcome_intent)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of administrators that you want to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token returned from previous API requests until the number of
    #   administrators is reached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListAppInstanceAdminsRequest AWS API Documentation
    #
    class ListAppInstanceAdminsRequest < Struct.new(
      :app_instance_arn,
      :max_results,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_admins
    #   The information for each administrator.
    #   @return [Array<Types::AppInstanceAdminSummary>]
    #
    # @!attribute [rw] next_token
    #   The token returned from previous API requests until the number of
    #   administrators is reached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListAppInstanceAdminsResponse AWS API Documentation
    #
    class ListAppInstanceAdminsResponse < Struct.new(
      :app_instance_arn,
      :app_instance_admins,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of requests to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested bots are
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListAppInstanceBotsRequest AWS API Documentation
    #
    class ListAppInstanceBotsRequest < Struct.new(
      :app_instance_arn,
      :max_results,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the AppInstance.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_bots
    #   The information for each requested `AppInstanceBot`.
    #   @return [Array<Types::AppInstanceBotSummary>]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested bots are
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListAppInstanceBotsResponse AWS API Documentation
    #
    class ListAppInstanceBotsResponse < Struct.new(
      :app_instance_arn,
      :app_instance_bots,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of endpoints that you want to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested endpoints
    #   are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListAppInstanceUserEndpointsRequest AWS API Documentation
    #
    class ListAppInstanceUserEndpointsRequest < Struct.new(
      :app_instance_user_arn,
      :max_results,
      :next_token)
      SENSITIVE = [:app_instance_user_arn, :next_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_endpoints
    #   The information for each requested `AppInstanceUserEndpoint`.
    #   @return [Array<Types::AppInstanceUserEndpointSummary>]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested endpoints
    #   are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListAppInstanceUserEndpointsResponse AWS API Documentation
    #
    class ListAppInstanceUserEndpointsResponse < Struct.new(
      :app_instance_user_endpoints,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of requests that you want returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested users are
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListAppInstanceUsersRequest AWS API Documentation
    #
    class ListAppInstanceUsersRequest < Struct.new(
      :app_instance_arn,
      :max_results,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_users
    #   The information for each requested `AppInstanceUser`.
    #   @return [Array<Types::AppInstanceUserSummary>]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested users are
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListAppInstanceUsersResponse AWS API Documentation
    #
    class ListAppInstanceUsersResponse < Struct.new(
      :app_instance_arn,
      :app_instance_users,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of `AppInstance`s that you want to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API requests until you reach the
    #   maximum number of `AppInstances`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListAppInstancesRequest AWS API Documentation
    #
    class ListAppInstancesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instances
    #   The information for each `AppInstance`.
    #   @return [Array<Types::AppInstanceSummary>]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API requests until the maximum number
    #   of `AppInstance`s is reached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListAppInstancesResponse AWS API Documentation
    #
    class ListAppInstancesResponse < Struct.new(
      :app_instances,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tag key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more of the resources in the request does not exist in the
    # system.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_retention_settings
    #   The time in days to retain data. Data type: number.
    #   @return [Types::AppInstanceRetentionSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/PutAppInstanceRetentionSettingsRequest AWS API Documentation
    #
    class PutAppInstanceRetentionSettingsRequest < Struct.new(
      :app_instance_arn,
      :app_instance_retention_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_retention_settings
    #   The time in days to retain data. Data type: number.
    #   @return [Types::AppInstanceRetentionSettings]
    #
    # @!attribute [rw] initiate_deletion_timestamp
    #   The time at which the API deletes data.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/PutAppInstanceRetentionSettingsResponse AWS API Documentation
    #
    class PutAppInstanceRetentionSettingsResponse < Struct.new(
      :app_instance_retention_settings,
      :initiate_deletion_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] expiration_settings
    #   Settings that control the interval after which an `AppInstanceUser`
    #   is automatically deleted.
    #   @return [Types::ExpirationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/PutAppInstanceUserExpirationSettingsRequest AWS API Documentation
    #
    class PutAppInstanceUserExpirationSettingsRequest < Struct.new(
      :app_instance_user_arn,
      :expiration_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] expiration_settings
    #   Settings that control the interval after which an `AppInstanceUser`
    #   is automatically deleted.
    #   @return [Types::ExpirationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/PutAppInstanceUserExpirationSettingsResponse AWS API Documentation
    #
    class PutAppInstanceUserExpirationSettingsResponse < Struct.new(
      :app_instance_user_arn,
      :expiration_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `AppInstanceUserEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the `AppInstanceUserEndpoint`. Supported types:
    #
    #   * `APNS`: The mobile notification service for an Apple device.
    #
    #   * `APNS_SANDBOX`: The sandbox environment of the mobile notification
    #     service for an Apple device.
    #
    #   * `GCM`: The mobile notification service for an Android device.
    #
    #   Populate the `ResourceArn` value of each type as `PinpointAppArn`.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource to which the endpoint belongs.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_attributes
    #   The attributes of an `Endpoint`.
    #   @return [Types::EndpointAttributes]
    #
    # @!attribute [rw] client_request_token
    #   The unique ID assigned to the request. Use different tokens to
    #   register other endpoints.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] allow_messages
    #   Boolean that controls whether the AppInstanceUserEndpoint is opted
    #   in to receive messages. `ALL` indicates the endpoint receives all
    #   messages. `NONE` indicates the endpoint receives no messages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/RegisterAppInstanceUserEndpointRequest AWS API Documentation
    #
    class RegisterAppInstanceUserEndpointRequest < Struct.new(
      :app_instance_user_arn,
      :name,
      :type,
      :resource_arn,
      :endpoint_attributes,
      :client_request_token,
      :allow_messages)
      SENSITIVE = [:app_instance_user_arn, :name]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_id
    #   The unique identifier of the `AppInstanceUserEndpoint`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/RegisterAppInstanceUserEndpointResponse AWS API Documentation
    #
    class RegisterAppInstanceUserEndpointResponse < Struct.new(
      :app_instance_user_arn,
      :endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeds the resource limit.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ResourceLimitExceededException AWS API Documentation
    #
    class ResourceLimitExceededException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service encountered an unexpected error.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ServiceFailureException AWS API Documentation
    #
    class ServiceFailureException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is currently unavailable.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag object containing a key-value pair.
    #
    # @!attribute [rw] key
    #   The key in a tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value in a tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = [:key, :value]
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client exceeded its request rate limit.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ThrottledClientException AWS API Documentation
    #
    class ThrottledClientException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client is not currently authorized to make the request.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/UnauthorizedClientException AWS API Documentation
    #
    class UnauthorizedClientException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_bot_arn
    #   The ARN of the `AppInstanceBot`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `AppInstanceBot`.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the `AppInstanceBot`.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration for the bot update.
    #   @return [Types::Configuration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/UpdateAppInstanceBotRequest AWS API Documentation
    #
    class UpdateAppInstanceBotRequest < Struct.new(
      :app_instance_bot_arn,
      :name,
      :metadata,
      :configuration)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_bot_arn
    #   The ARN of the `AppInstanceBot`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/UpdateAppInstanceBotResponse AWS API Documentation
    #
    class UpdateAppInstanceBotResponse < Struct.new(
      :app_instance_bot_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name that you want to change.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata that you want to change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/UpdateAppInstanceRequest AWS API Documentation
    #
    class UpdateAppInstanceRequest < Struct.new(
      :app_instance_arn,
      :name,
      :metadata)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/UpdateAppInstanceResponse AWS API Documentation
    #
    class UpdateAppInstanceResponse < Struct.new(
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_id
    #   The unique identifier of the `AppInstanceUserEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `AppInstanceUserEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] allow_messages
    #   Boolean that controls whether the `AppInstanceUserEndpoint` is opted
    #   in to receive messages. `ALL` indicates the endpoint will receive
    #   all messages. `NONE` indicates the endpoint will receive no
    #   messages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/UpdateAppInstanceUserEndpointRequest AWS API Documentation
    #
    class UpdateAppInstanceUserEndpointRequest < Struct.new(
      :app_instance_user_arn,
      :endpoint_id,
      :name,
      :allow_messages)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_id
    #   The unique identifier of the `AppInstanceUserEndpoint`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/UpdateAppInstanceUserEndpointResponse AWS API Documentation
    #
    class UpdateAppInstanceUserEndpointResponse < Struct.new(
      :app_instance_user_arn,
      :endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the `AppInstanceUser`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/UpdateAppInstanceUserRequest AWS API Documentation
    #
    class UpdateAppInstanceUserRequest < Struct.new(
      :app_instance_user_arn,
      :name,
      :metadata)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/UpdateAppInstanceUserResponse AWS API Documentation
    #
    class UpdateAppInstanceUserResponse < Struct.new(
      :app_instance_user_arn)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

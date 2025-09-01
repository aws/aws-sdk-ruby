# frozen_string_literal: true

# This is generated code!

module Aws::ChimeSDKIdentity
  # This module contains the types returned by client operations.
  module Types

    module AllowMessages
      ALL = 'ALL'
      NONE = 'NONE'
    end

    # <p>The details of an <code>AppInstance</code>, an instance of an Amazon Chime SDK messaging
    #          application.</p>
    # @!attribute app_instance_arn
    #   <p>The ARN of the messaging instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of an <code>AppInstance</code>.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time at which an <code>AppInstance</code> was created. In epoch milliseconds.</p>
    #   @return [Time]
    # @!attribute last_updated_timestamp
    #   <p>The time an <code>AppInstance</code> was last updated. In epoch milliseconds.</p>
    #   @return [Time]
    # @!attribute metadata
    #   <p>The metadata of an <code>AppInstance</code>.</p>
    #   @return [String]
    class AppInstance < Struct.new(
      :app_instance_arn,
      :name,
      :created_timestamp,
      :last_updated_timestamp,
      :metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The name and ARN of the admin for the <code>AppInstance</code>.</p>
    # @!attribute admin
    #   <p>The <code>AppInstanceAdmin</code> data.</p>
    #   @return [Types::Identity]
    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code> for which the user is an administrator.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time at which an administrator was created.</p>
    #   @return [Time]
    class AppInstanceAdmin < Struct.new(
      :admin,
      :app_instance_arn,
      :created_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary of the details of an <code>AppInstanceAdmin</code>.</p>
    # @!attribute admin
    #   <p>The details of the <code>AppInstanceAdmin</code>.</p>
    #   @return [Types::Identity]
    class AppInstanceAdminSummary < Struct.new(
      :admin,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An Amazon Lex V2 chat bot created under an <code>AppInstance</code>.</p>
    # @!attribute app_instance_bot_arn
    #   <p>The ARN of the AppInstanceBot.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the AppInstanceBot.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The data processing instructions for an AppInstanceBot.</p>
    #   @return [Types::Configuration]
    # @!attribute created_timestamp
    #   <p>The time at which the <code>AppInstanceBot</code> was created.</p>
    #   @return [Time]
    # @!attribute last_updated_timestamp
    #   <p>The time at which the <code>AppInstanceBot</code> was last updated.</p>
    #   @return [Time]
    # @!attribute metadata
    #   <p>The metadata for an AppInstanceBot.</p>
    #   @return [String]
    class AppInstanceBot < Struct.new(
      :app_instance_bot_arn,
      :name,
      :configuration,
      :created_timestamp,
      :last_updated_timestamp,
      :metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>High-level information about an AppInstanceBot.</p>
    # @!attribute app_instance_bot_arn
    #   <p>The ARN of the AppInstanceBot.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the AppInstanceBox.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata of the AppInstanceBot.</p>
    #   @return [String]
    class AppInstanceBotSummary < Struct.new(
      :app_instance_bot_arn,
      :name,
      :metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the data-retention settings for an <code>AppInstance</code>.</p>
    # @!attribute channel_retention_settings
    #   <p>The length of time in days to retain the messages in a channel.</p>
    #   @return [Types::ChannelRetentionSettings]
    class AppInstanceRetentionSettings < Struct.new(
      :channel_retention_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary of the data for an <code>AppInstance</code>.</p>
    # @!attribute app_instance_arn
    #   <p>The <code>AppInstance</code> ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <code>AppInstance</code>.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata of the <code>AppInstance</code>.</p>
    #   @return [String]
    class AppInstanceSummary < Struct.new(
      :app_instance_arn,
      :name,
      :metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of an <code>AppInstanceUser</code>.</p>
    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <code>AppInstanceUser</code>.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata of the <code>AppInstanceUser</code>.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time at which the <code>AppInstanceUser</code> was created.</p>
    #   @return [Time]
    # @!attribute last_updated_timestamp
    #   <p>The time at which the <code>AppInstanceUser</code> was last updated.</p>
    #   @return [Time]
    # @!attribute expiration_settings
    #   <p>The interval after which an <code>AppInstanceUser</code> is automatically deleted.</p>
    #   @return [Types::ExpirationSettings]
    class AppInstanceUser < Struct.new(
      :app_instance_user_arn,
      :name,
      :metadata,
      :created_timestamp,
      :last_updated_timestamp,
      :expiration_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An endpoint under an Amazon Chime <code>AppInstanceUser</code> that receives messages for a user. For push notifications, the endpoint is a mobile device used to receive mobile push notifications for a user.</p>
    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #   @return [String]
    # @!attribute endpoint_id
    #   <p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <code>AppInstanceUserEndpoint</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the <code>AppInstanceUserEndpoint</code>.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the resource to which the endpoint belongs.</p>
    #   @return [String]
    # @!attribute endpoint_attributes
    #   <p>The attributes of an <code>Endpoint</code>.</p>
    #   @return [Types::EndpointAttributes]
    # @!attribute created_timestamp
    #   <p>The time at which an <code>AppInstanceUserEndpoint</code> was created.</p>
    #   @return [Time]
    # @!attribute last_updated_timestamp
    #   <p>The time at which an <code>AppInstanceUserEndpoint</code> was last updated.</p>
    #   @return [Time]
    # @!attribute allow_messages
    #   <p>Boolean that controls whether the <code>AppInstanceUserEndpoint</code> is opted in to receive messages. <code>ALL</code> indicates the endpoint will receive all messages. 
    #            <code>NONE</code> indicates the endpoint will receive no messages.</p>
    #   @return [String]
    # @!attribute endpoint_state
    #   <p>A read-only field that represents the state of an <code>AppInstanceUserEndpoint</code>. Supported values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>: The <code>AppInstanceUserEndpoint</code> is active and able to receive messages. When <code>ACTIVE</code>, the <code>EndpointStatusReason</code> remains empty.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACTIVE</code>: The <code>AppInstanceUserEndpoint</code> is inactive and can't receive message. When <code>INACTIVE</code>, the corresponding reason will be 
    #               conveyed through <code>EndpointStatusReason</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INVALID_DEVICE_TOKEN</code> indicates that an <code>AppInstanceUserEndpoint</code> is <code>INACTIVE</code> due to invalid device token</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INVALID_PINPOINT_ARN</code> indicates that an <code>AppInstanceUserEndpoint</code> is <code>INACTIVE</code> due to an invalid pinpoint ARN that was input 
    #               through the <code>ResourceArn</code> field.</p>
    #               </li>
    #            </ul>
    #   @return [Types::EndpointState]
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
      :endpoint_state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary of the details of an <code>AppInstanceUserEndpoint</code>.</p>
    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #   @return [String]
    # @!attribute endpoint_id
    #   <p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <code>AppInstanceUserEndpoint</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the <code>AppInstanceUserEndpoint</code>.</p>
    #   @return [String]
    # @!attribute allow_messages
    #   <p>BBoolean that controls whether the <code>AppInstanceUserEndpoint</code> is opted in to receive messages. <code>ALL</code> indicates the endpoint will receive all messages. 
    #            <code>NONE</code> indicates the endpoint will receive no messages.</p>
    #   @return [String]
    # @!attribute endpoint_state
    #   <p>A read-only field that represent the state of an <code>AppInstanceUserEndpoint</code>.</p>
    #   @return [Types::EndpointState]
    class AppInstanceUserEndpointSummary < Struct.new(
      :app_instance_user_arn,
      :endpoint_id,
      :name,
      :type,
      :allow_messages,
      :endpoint_state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AppInstanceUserEndpointType
      APNS = 'APNS'
      APNS_SANDBOX = 'APNS_SANDBOX'
      GCM = 'GCM'
    end

    # <p>Summary of the details of an <code>AppInstanceUser</code>.</p>
    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of an <code>AppInstanceUser</code>.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata of the <code>AppInstanceUser</code>.</p>
    #   @return [String]
    class AppInstanceUserSummary < Struct.new(
      :app_instance_user_arn,
      :name,
      :metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input parameters don't match the service's restrictions.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of the retention settings for a channel.</p>
    # @!attribute retention_days
    #   <p>The time in days to retain the messages in a channel.</p>
    #   @return [Integer]
    class ChannelRetentionSettings < Struct.new(
      :retention_days,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure that contains configuration data.</p>
    # @!attribute lex
    #   <p>The configuration for an Amazon Lex V2 bot.</p>
    #   @return [Types::LexConfiguration]
    class Configuration < Struct.new(
      :lex,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request could not be processed because of conflict in the current state of the
    #          resource.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_admin_arn
    #   <p>The ARN of the administrator of the current <code>AppInstance</code>.</p>
    #   @return [String]
    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #   @return [String]
    class CreateAppInstanceAdminRequest < Struct.new(
      :app_instance_admin_arn,
      :app_instance_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_admin
    #   <p>The ARN and name of the administrator, the ARN of the <code>AppInstance</code>, and the created and 
    #            last-updated timestamps. All timestamps use epoch milliseconds.</p>
    #   @return [Types::Identity]
    # @!attribute app_instance_arn
    #   <p>The ARN of the of the admin for the <code>AppInstance</code>.</p>
    #   @return [String]
    class CreateAppInstanceAdminResponse < Struct.new(
      :app_instance_admin,
      :app_instance_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code> request.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The user's name.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The request metadata. Limited to a 1KB string in UTF-8.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>The unique ID for the client making the request. Use different tokens for different <code>AppInstanceBots</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the <code>AppInstanceBot</code>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute configuration
    #   <p>Configuration information about the Amazon Lex V2 V2 bot.</p>
    #   @return [Types::Configuration]
    class CreateAppInstanceBotRequest < Struct.new(
      :app_instance_arn,
      :name,
      :metadata,
      :client_request_token,
      :tags,
      :configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_bot_arn
    #   <p>The ARN of the <code>AppinstanceBot</code>.</p>
    #   @return [String]
    class CreateAppInstanceBotResponse < Struct.new(
      :app_instance_bot_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the <code>AppInstance</code>.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata of the <code>AppInstance</code>. Limited to a 1KB string in UTF-8.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>The unique ID of the request. Use different tokens to create different <code>AppInstances</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags assigned to the <code>AppInstance</code>.</p>
    #   @return [Array<Types::Tag>]
    class CreateAppInstanceRequest < Struct.new(
      :name,
      :metadata,
      :client_request_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The Amazon Resource Number (ARN) of the <code>AppInstance</code>.</p>
    #   @return [String]
    class CreateAppInstanceResponse < Struct.new(
      :app_instance_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code> request.</p>
    #   @return [String]
    # @!attribute app_instance_user_id
    #   <p>The user ID of the <code>AppInstance</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The user's name.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The request's metadata. Limited to a 1KB string in UTF-8.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>The unique ID of the request. Use different tokens to request additional <code>AppInstances</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags assigned to the <code>AppInstanceUser</code>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute expiration_settings
    #   <p>Settings that control the interval after which the <code>AppInstanceUser</code> is automatically deleted.</p>
    #   @return [Types::ExpirationSettings]
    class CreateAppInstanceUserRequest < Struct.new(
      :app_instance_arn,
      :app_instance_user_id,
      :name,
      :metadata,
      :client_request_token,
      :tags,
      :expiration_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The user's ARN.</p>
    #   @return [String]
    class CreateAppInstanceUserResponse < Struct.new(
      :app_instance_user_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_admin_arn
    #   <p>The ARN of the <code>AppInstance</code>'s administrator.</p>
    #   @return [String]
    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #   @return [String]
    class DeleteAppInstanceAdminRequest < Struct.new(
      :app_instance_admin_arn,
      :app_instance_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_bot_arn
    #   <p>The ARN of the <code>AppInstanceBot</code> being deleted.</p>
    #   @return [String]
    class DeleteAppInstanceBotRequest < Struct.new(
      :app_instance_bot_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #   @return [String]
    class DeleteAppInstanceRequest < Struct.new(
      :app_instance_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the user request being deleted.</p>
    #   @return [String]
    class DeleteAppInstanceUserRequest < Struct.new(
      :app_instance_user_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #   @return [String]
    # @!attribute endpoint_id
    #   <p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>
    #   @return [String]
    class DeregisterAppInstanceUserEndpointRequest < Struct.new(
      :app_instance_user_arn,
      :endpoint_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_admin_arn
    #   <p>The ARN of the <code>AppInstanceAdmin</code>.</p>
    #   @return [String]
    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #   @return [String]
    class DescribeAppInstanceAdminRequest < Struct.new(
      :app_instance_admin_arn,
      :app_instance_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_admin
    #   <p>The ARN and name of the <code>AppInstanceUser</code>, the ARN of the
    #               <code>AppInstance</code>, and the created and last-updated timestamps. All timestamps
    #            use epoch milliseconds.</p>
    #   @return [Types::AppInstanceAdmin]
    class DescribeAppInstanceAdminResponse < Struct.new(
      :app_instance_admin,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_bot_arn
    #   <p>The ARN of the <code>AppInstanceBot</code>.</p>
    #   @return [String]
    class DescribeAppInstanceBotRequest < Struct.new(
      :app_instance_bot_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_bot
    #   <p>The detials of the <code>AppInstanceBot</code>.</p>
    #   @return [Types::AppInstanceBot]
    class DescribeAppInstanceBotResponse < Struct.new(
      :app_instance_bot,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #   @return [String]
    class DescribeAppInstanceRequest < Struct.new(
      :app_instance_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance
    #   <p>The ARN, metadata, created and last-updated timestamps, and the name of the
    #               <code>AppInstance</code>. All timestamps use epoch milliseconds.</p>
    #   @return [Types::AppInstance]
    class DescribeAppInstanceResponse < Struct.new(
      :app_instance,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #   @return [String]
    # @!attribute endpoint_id
    #   <p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>
    #   @return [String]
    class DescribeAppInstanceUserEndpointRequest < Struct.new(
      :app_instance_user_arn,
      :endpoint_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_user_endpoint
    #   <p>The full details of an <code>AppInstanceUserEndpoint</code>: the <code>AppInstanceUserArn</code>, ID, name, type, resource ARN, attributes, 
    #            allow messages, state, and created and last updated timestamps. All timestamps use epoch milliseconds.</p>
    #   @return [Types::AppInstanceUserEndpoint]
    class DescribeAppInstanceUserEndpointResponse < Struct.new(
      :app_instance_user_endpoint,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #   @return [String]
    class DescribeAppInstanceUserRequest < Struct.new(
      :app_instance_user_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_user
    #   <p>The name of the <code>AppInstanceUser</code>.</p>
    #   @return [Types::AppInstanceUser]
    class DescribeAppInstanceUserResponse < Struct.new(
      :app_instance_user,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The attributes of an <code>Endpoint</code>.</p>
    # @!attribute device_token
    #   <p>The device token for the GCM, APNS, and APNS_SANDBOX endpoint types.</p>
    #   @return [String]
    # @!attribute voip_device_token
    #   <p>The VOIP device token for the APNS and APNS_SANDBOX endpoint types.</p>
    #   @return [String]
    class EndpointAttributes < Struct.new(
      :device_token,
      :voip_device_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A read-only field that represents the state of an <code>AppInstanceUserEndpoint</code>. Supported values:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ACTIVE</code>: The <code>AppInstanceUserEndpoint</code> is active and able to receive messages. When <code>ACTIVE</code>, the <code>EndpointStatusReason</code> remains empty.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>INACTIVE</code>: The <code>AppInstanceUserEndpoint</code> is inactive and can't receive
    #                message. When INACTIVE, the corresponding reason will be conveyed through
    #                EndpointStatusReason.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>INVALID_DEVICE_TOKEN</code> indicates that an <code>AppInstanceUserEndpoint</code> is <code>INACTIVE</code> due to invalid device token</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>INVALID_PINPOINT_ARN</code> indicates that an <code>AppInstanceUserEndpoint</code> is <code>INACTIVE</code> due to an invalid pinpoint ARN that was input through the <code>ResourceArn</code> field.</p>
    #             </li>
    #          </ul>
    # @!attribute status
    #   <p>Enum that indicates the Status of an <code>AppInstanceUserEndpoint</code>.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the <code>EndpointStatus</code>.</p>
    #   @return [String]
    class EndpointState < Struct.new(
      :status,
      :status_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EndpointStatus
      ACTIVE = 'ACTIVE'
      INACTIVE = 'INACTIVE'
    end

    module EndpointStatusReason
      INVALID_DEVICE_TOKEN = 'INVALID_DEVICE_TOKEN'
      INVALID_PINPOINT_ARN = 'INVALID_PINPOINT_ARN'
    end

    module ErrorCode
      BadRequest = 'BadRequest'
      Conflict = 'Conflict'
      Forbidden = 'Forbidden'
      NotFound = 'NotFound'
      PreconditionFailed = 'PreconditionFailed'
      ResourceLimitExceeded = 'ResourceLimitExceeded'
      ServiceFailure = 'ServiceFailure'
      AccessDenied = 'AccessDenied'
      ServiceUnavailable = 'ServiceUnavailable'
      Throttled = 'Throttled'
      Throttling = 'Throttling'
      Unauthorized = 'Unauthorized'
      Unprocessable = 'Unprocessable'
      VoiceConnectorGroupAssociationsExist = 'VoiceConnectorGroupAssociationsExist'
      PhoneNumberAssociationsExist = 'PhoneNumberAssociationsExist'
    end

    module ExpirationCriterion
      CREATED_TIMESTAMP = 'CREATED_TIMESTAMP'
    end

    # <p>Determines the interval after which an <code>AppInstanceUser</code> is automatically deleted.</p>
    # @!attribute expiration_days
    #   <p>The period in days after which an <code>AppInstanceUser</code> will be automatically deleted.</p>
    #   @return [Integer]
    # @!attribute expiration_criterion
    #   <p>Specifies the conditions under which an <code>AppInstanceUser</code> will expire.</p>
    #   @return [String]
    class ExpirationSettings < Struct.new(
      :expiration_days,
      :expiration_criterion,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The client is permanently forbidden from making the request.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ForbiddenException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #   @return [String]
    class GetAppInstanceRetentionSettingsRequest < Struct.new(
      :app_instance_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_retention_settings
    #   <p>The retention settings for the <code>AppInstance</code>.</p>
    #   @return [Types::AppInstanceRetentionSettings]
    # @!attribute initiate_deletion_timestamp
    #   <p>The timestamp representing the time at which the specified items are retained, in Epoch
    #            Seconds.</p>
    #   @return [Time]
    class GetAppInstanceRetentionSettingsResponse < Struct.new(
      :app_instance_retention_settings,
      :initiate_deletion_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of a user or bot.</p>
    # @!attribute arn
    #   <p>The ARN in an Identity.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name in an Identity.</p>
    #   @return [String]
    class Identity < Struct.new(
      :arn,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the type of message that triggers a bot.</p>
    # @!attribute standard_messages
    #   <p>Sets standard messages as the bot trigger. For standard messages:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code>: The bot processes all standard messages.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AUTO</code>: The bot responds to ALL messages when the channel has one other non-hidden member, and responds to MENTIONS when the 
    #               channel has more than one other non-hidden member.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MENTIONS</code>: The bot processes all standard messages that have a message attribute with <code>CHIME.mentions</code> and a 
    #               value of the bot ARN.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>: The bot processes no standard messages.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute targeted_messages
    #   <p>Sets targeted messages as the bot trigger. For targeted messages:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code>: The bot processes all <code>TargetedMessages</code> sent to it. The bot then responds with a targeted message back to the sender.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>: The bot processes no targeted messages.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class InvokedBy < Struct.new(
      :standard_messages,
      :targeted_messages,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration for an Amazon Lex V2 bot.</p>
    # @!attribute responds_to
    #   <important>
    #               <p>
    #                  <b>Deprecated</b>. Use <code>InvokedBy</code> instead.</p>
    #            </important>
    #            <p>Determines whether the Amazon Lex V2 bot responds to all standard messages. Control messages are not supported.</p>
    #   @return [String]
    # @!attribute invoked_by
    #   <p>Specifies the type of message that triggers a bot.</p>
    #   @return [Types::InvokedBy]
    # @!attribute lex_bot_alias_arn
    #   <p>The ARN of the Amazon Lex V2 bot's alias. The ARN uses this format: 
    #            <code>arn:aws:lex:REGION:ACCOUNT:bot-alias/MYBOTID/MYBOTALIAS</code>
    #            </p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>Identifies the Amazon Lex V2 bot's language and locale. The string must match one of the 
    #            supported locales in Amazon Lex V2. All of the intents, slot types, and slots used in the bot must have the same 
    #            locale. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a> in the <i>Amazon Lex V2 Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute welcome_intent
    #   <p>The name of the welcome intent configured in the Amazon Lex V2 bot.</p>
    #   @return [String]
    class LexConfiguration < Struct.new(
      :responds_to,
      :invoked_by,
      :lex_bot_alias_arn,
      :locale_id,
      :welcome_intent,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of administrators that you want to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token returned from previous API requests until the number of administrators is
    #            reached.</p>
    #   @return [String]
    class ListAppInstanceAdminsRequest < Struct.new(
      :app_instance_arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #   @return [String]
    # @!attribute app_instance_admins
    #   <p>The information for each administrator.</p>
    #   @return [Array<Types::AppInstanceAdminSummary>]
    # @!attribute next_token
    #   <p>The token returned from previous API requests until the number of administrators is
    #            reached.</p>
    #   @return [String]
    class ListAppInstanceAdminsResponse < Struct.new(
      :app_instance_arn,
      :app_instance_admins,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of requests to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested bots are returned.</p>
    #   @return [String]
    class ListAppInstanceBotsRequest < Struct.new(
      :app_instance_arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the AppInstance.</p>
    #   @return [String]
    # @!attribute app_instance_bots
    #   <p>The information for each requested <code>AppInstanceBot</code>.</p>
    #   @return [Array<Types::AppInstanceBotSummary>]
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested bots are returned.</p>
    #   @return [String]
    class ListAppInstanceBotsResponse < Struct.new(
      :app_instance_arn,
      :app_instance_bots,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of endpoints that you want to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested endpoints are returned.</p>
    #   @return [String]
    class ListAppInstanceUserEndpointsRequest < Struct.new(
      :app_instance_user_arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_user_endpoints
    #   <p>The information for each requested <code>AppInstanceUserEndpoint</code>.</p>
    #   @return [Array<Types::AppInstanceUserEndpointSummary>]
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested endpoints are returned.</p>
    #   @return [String]
    class ListAppInstanceUserEndpointsResponse < Struct.new(
      :app_instance_user_endpoints,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of requests that you want returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested users are returned.</p>
    #   @return [String]
    class ListAppInstanceUsersRequest < Struct.new(
      :app_instance_arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #   @return [String]
    # @!attribute app_instance_users
    #   <p>The information for each requested <code>AppInstanceUser</code>.</p>
    #   @return [Array<Types::AppInstanceUserSummary>]
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested users are returned.</p>
    #   @return [String]
    class ListAppInstanceUsersResponse < Struct.new(
      :app_instance_arn,
      :app_instance_users,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of <code>AppInstance</code>s that you want to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token passed by previous API requests until you reach the maximum number of
    #               <code>AppInstances</code>.</p>
    #   @return [String]
    class ListAppInstancesRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instances
    #   <p>The information for each <code>AppInstance</code>.</p>
    #   @return [Array<Types::AppInstanceSummary>]
    # @!attribute next_token
    #   <p>The token passed by previous API requests until the maximum number of
    #               <code>AppInstance</code>s is reached.</p>
    #   @return [String]
    class ListAppInstancesResponse < Struct.new(
      :app_instances,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tag key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>One or more of the resources in the request does not exist in the system.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #   @return [String]
    # @!attribute app_instance_retention_settings
    #   <p>The time in days to retain data. Data type: number.</p>
    #   @return [Types::AppInstanceRetentionSettings]
    class PutAppInstanceRetentionSettingsRequest < Struct.new(
      :app_instance_arn,
      :app_instance_retention_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_retention_settings
    #   <p>The time in days to retain data. Data type: number.</p>
    #   @return [Types::AppInstanceRetentionSettings]
    # @!attribute initiate_deletion_timestamp
    #   <p>The time at which the API deletes data.</p>
    #   @return [Time]
    class PutAppInstanceRetentionSettingsResponse < Struct.new(
      :app_instance_retention_settings,
      :initiate_deletion_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #   @return [String]
    # @!attribute expiration_settings
    #   <p>Settings that control the interval after which an <code>AppInstanceUser</code> is automatically deleted.</p>
    #   @return [Types::ExpirationSettings]
    class PutAppInstanceUserExpirationSettingsRequest < Struct.new(
      :app_instance_user_arn,
      :expiration_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #   @return [String]
    # @!attribute expiration_settings
    #   <p>Settings that control the interval after which an <code>AppInstanceUser</code> is automatically deleted.</p>
    #   @return [Types::ExpirationSettings]
    class PutAppInstanceUserExpirationSettingsResponse < Struct.new(
      :app_instance_user_arn,
      :expiration_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <code>AppInstanceUserEndpoint</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the <code>AppInstanceUserEndpoint</code>. Supported types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>APNS</code>: The mobile notification service for an Apple device.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APNS_SANDBOX</code>: The sandbox environment of the mobile notification service for an Apple device.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GCM</code>: The mobile notification service for an Android device.</p>
    #               </li>
    #            </ul>
    #            <p>Populate the <code>ResourceArn</code> value of each type as <code>PinpointAppArn</code>.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the resource to which the endpoint belongs.</p>
    #   @return [String]
    # @!attribute endpoint_attributes
    #   <p>The attributes of an <code>Endpoint</code>.</p>
    #   @return [Types::EndpointAttributes]
    # @!attribute client_request_token
    #   <p>The unique ID assigned to the request. Use different tokens to register other endpoints.</p>
    #   @return [String]
    # @!attribute allow_messages
    #   <p>Boolean that controls whether the AppInstanceUserEndpoint is opted in to receive messages. <code>ALL</code> indicates the endpoint receives all messages. 
    #            <code>NONE</code> indicates the endpoint receives no messages.</p>
    #   @return [String]
    class RegisterAppInstanceUserEndpointRequest < Struct.new(
      :app_instance_user_arn,
      :name,
      :type,
      :resource_arn,
      :endpoint_attributes,
      :client_request_token,
      :allow_messages,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #   @return [String]
    # @!attribute endpoint_id
    #   <p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>
    #   @return [String]
    class RegisterAppInstanceUserEndpointResponse < Struct.new(
      :app_instance_user_arn,
      :endpoint_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request exceeds the resource limit.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ResourceLimitExceededException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RespondsTo
      STANDARD_MESSAGES = 'STANDARD_MESSAGES'
    end

    # <p>The service encountered an unexpected error.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ServiceFailureException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The service is currently unavailable.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module StandardMessages
      AUTO = 'AUTO'
      ALL = 'ALL'
      MENTIONS = 'MENTIONS'
      NONE = 'NONE'
    end

    # <p>A tag object containing a key-value pair.</p>
    # @!attribute key
    #   <p>The key in a tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value in a tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TargetedMessages
      ALL = 'ALL'
      NONE = 'NONE'
    end

    # <p>The client exceeded its request rate limit.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ThrottledClientException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The client is not currently authorized to make the request.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class UnauthorizedClientException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_bot_arn
    #   <p>The ARN of the <code>AppInstanceBot</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <code>AppInstanceBot</code>.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata of the <code>AppInstanceBot</code>.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration for the bot update.</p>
    #   @return [Types::Configuration]
    class UpdateAppInstanceBotRequest < Struct.new(
      :app_instance_bot_arn,
      :name,
      :metadata,
      :configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_bot_arn
    #   <p>The ARN of the <code>AppInstanceBot</code>.</p>
    #   @return [String]
    class UpdateAppInstanceBotResponse < Struct.new(
      :app_instance_bot_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name that you want to change.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata that you want to change.</p>
    #   @return [String]
    class UpdateAppInstanceRequest < Struct.new(
      :app_instance_arn,
      :name,
      :metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #   @return [String]
    class UpdateAppInstanceResponse < Struct.new(
      :app_instance_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #   @return [String]
    # @!attribute endpoint_id
    #   <p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <code>AppInstanceUserEndpoint</code>.</p>
    #   @return [String]
    # @!attribute allow_messages
    #   <p>Boolean that controls whether the <code>AppInstanceUserEndpoint</code> is opted in to receive messages. <code>ALL</code> indicates the endpoint will receive all messages. 
    #            <code>NONE</code> indicates the endpoint will receive no messages.</p>
    #   @return [String]
    class UpdateAppInstanceUserEndpointRequest < Struct.new(
      :app_instance_user_arn,
      :endpoint_id,
      :name,
      :allow_messages,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #   @return [String]
    # @!attribute endpoint_id
    #   <p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>
    #   @return [String]
    class UpdateAppInstanceUserEndpointResponse < Struct.new(
      :app_instance_user_arn,
      :endpoint_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <code>AppInstanceUser</code>.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata of the <code>AppInstanceUser</code>.</p>
    #   @return [String]
    class UpdateAppInstanceUserRequest < Struct.new(
      :app_instance_user_arn,
      :name,
      :metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #   @return [String]
    class UpdateAppInstanceUserResponse < Struct.new(
      :app_instance_user_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end

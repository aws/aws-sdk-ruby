# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Connect
  module Types

    # @note When making an API call, you may pass AssociateRoutingProfileQueuesRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         routing_profile_id: "RoutingProfileId", # required
    #         queue_configs: [ # required
    #           {
    #             queue_reference: { # required
    #               queue_id: "QueueId", # required
    #               channel: "VOICE", # required, accepts VOICE, CHAT
    #             },
    #             priority: 1, # required
    #             delay: 1, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] routing_profile_id
    #   The identifier of the routing profile.
    #   @return [String]
    #
    # @!attribute [rw] queue_configs
    #   The queues to associate with this routing profile.
    #   @return [Array<Types::RoutingProfileQueueConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateRoutingProfileQueuesRequest AWS API Documentation
    #
    class AssociateRoutingProfileQueuesRequest < Struct.new(
      :instance_id,
      :routing_profile_id,
      :queue_configs)
      SENSITIVE = []
      include Aws::Structure
    end

    # A chat message.
    #
    # @note When making an API call, you may pass ChatMessage
    #   data as a hash:
    #
    #       {
    #         content_type: "ChatContentType", # required
    #         content: "ChatContent", # required
    #       }
    #
    # @!attribute [rw] content_type
    #   The type of the content. Supported types are text/plain.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the chat message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ChatMessage AWS API Documentation
    #
    class ChatMessage < Struct.new(
      :content_type,
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a contact flow.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the contact flow.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the contact flow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the contact flow.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the contact flow. For descriptions of the available
    #   types, see [Choose a Contact Flow Type][1] in the *Amazon Connect
    #   Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html#contact-flow-types
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the contact flow.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the contact flow.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ContactFlow AWS API Documentation
    #
    class ContactFlow < Struct.new(
      :arn,
      :id,
      :name,
      :type,
      :description,
      :content,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The contact flow has not been published.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ContactFlowNotPublishedException AWS API Documentation
    #
    class ContactFlowNotPublishedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a contact flow.
    #
    # You can also create and update contact flows using the [Amazon Connect
    # Flow language][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html
    #
    # @!attribute [rw] id
    #   The identifier of the contact flow.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the contact flow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the contact flow.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_type
    #   The type of contact flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ContactFlowSummary AWS API Documentation
    #
    class ContactFlowSummary < Struct.new(
      :id,
      :arn,
      :name,
      :contact_flow_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The contact with the specified ID is not active or does not exist.
    #
    # @!attribute [rw] message
    #   The message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ContactNotFoundException AWS API Documentation
    #
    class ContactNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateContactFlowRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         name: "ContactFlowName", # required
    #         type: "CONTACT_FLOW", # required, accepts CONTACT_FLOW, CUSTOMER_QUEUE, CUSTOMER_HOLD, CUSTOMER_WHISPER, AGENT_HOLD, AGENT_WHISPER, OUTBOUND_WHISPER, AGENT_TRANSFER, QUEUE_TRANSFER
    #         description: "ContactFlowDescription",
    #         content: "ContactFlowContent", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the contact flow.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the contact flow. For descriptions of the available
    #   types, see [Choose a Contact Flow Type][1] in the *Amazon Connect
    #   Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html#contact-flow-types
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the contact flow.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the contact flow.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateContactFlowRequest AWS API Documentation
    #
    class CreateContactFlowRequest < Struct.new(
      :instance_id,
      :name,
      :type,
      :description,
      :content,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_flow_id
    #   The identifier of the contact flow.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_arn
    #   The Amazon Resource Name (ARN) of the contact flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateContactFlowResponse AWS API Documentation
    #
    class CreateContactFlowResponse < Struct.new(
      :contact_flow_id,
      :contact_flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRoutingProfileRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         name: "RoutingProfileName", # required
    #         description: "RoutingProfileDescription", # required
    #         default_outbound_queue_id: "QueueId", # required
    #         queue_configs: [
    #           {
    #             queue_reference: { # required
    #               queue_id: "QueueId", # required
    #               channel: "VOICE", # required, accepts VOICE, CHAT
    #             },
    #             priority: 1, # required
    #             delay: 1, # required
    #           },
    #         ],
    #         media_concurrencies: [ # required
    #           {
    #             channel: "VOICE", # required, accepts VOICE, CHAT
    #             concurrency: 1, # required
    #           },
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the routing profile. Must not be more than 127
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the routing profile. Must not be more than 250
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] default_outbound_queue_id
    #   The default outbound queue for the routing profile.
    #   @return [String]
    #
    # @!attribute [rw] queue_configs
    #   The inbound queues associated with the routing profile. If no queue
    #   is added, the agent can only make outbound calls.
    #   @return [Array<Types::RoutingProfileQueueConfig>]
    #
    # @!attribute [rw] media_concurrencies
    #   The channels agents can handle in the Contact Control Panel (CCP)
    #   for this routing profile.
    #   @return [Array<Types::MediaConcurrency>]
    #
    # @!attribute [rw] tags
    #   One or more tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateRoutingProfileRequest AWS API Documentation
    #
    class CreateRoutingProfileRequest < Struct.new(
      :instance_id,
      :name,
      :description,
      :default_outbound_queue_id,
      :queue_configs,
      :media_concurrencies,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] routing_profile_arn
    #   The Amazon Resource Name (ARN) of the routing profile.
    #   @return [String]
    #
    # @!attribute [rw] routing_profile_id
    #   The identifier of the routing profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateRoutingProfileResponse AWS API Documentation
    #
    class CreateRoutingProfileResponse < Struct.new(
      :routing_profile_arn,
      :routing_profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateUserRequest
    #   data as a hash:
    #
    #       {
    #         username: "AgentUsername", # required
    #         password: "Password",
    #         identity_info: {
    #           first_name: "AgentFirstName",
    #           last_name: "AgentLastName",
    #           email: "Email",
    #         },
    #         phone_config: { # required
    #           phone_type: "SOFT_PHONE", # required, accepts SOFT_PHONE, DESK_PHONE
    #           auto_accept: false,
    #           after_contact_work_time_limit: 1,
    #           desk_phone_number: "PhoneNumber",
    #         },
    #         directory_user_id: "DirectoryUserId",
    #         security_profile_ids: ["SecurityProfileId"], # required
    #         routing_profile_id: "RoutingProfileId", # required
    #         hierarchy_group_id: "HierarchyGroupId",
    #         instance_id: "InstanceId", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] username
    #   The user name for the account. For instances not using SAML for
    #   identity management, the user name can include up to 20 characters.
    #   If you are using SAML for identity management, the user name can
    #   include up to 64 characters from \[a-zA-Z0-9\_-.\\@\]+.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password for the user account. A password is required if you are
    #   using Amazon Connect for identity management. Otherwise, it is an
    #   error to include a password.
    #   @return [String]
    #
    # @!attribute [rw] identity_info
    #   The information about the identity of the user.
    #   @return [Types::UserIdentityInfo]
    #
    # @!attribute [rw] phone_config
    #   The phone settings for the user.
    #   @return [Types::UserPhoneConfig]
    #
    # @!attribute [rw] directory_user_id
    #   The identifier of the user account in the directory used for
    #   identity management. If Amazon Connect cannot access the directory,
    #   you can specify this identifier to authenticate users. If you
    #   include the identifier, we assume that Amazon Connect cannot access
    #   the directory. Otherwise, the identity information is used to
    #   authenticate users from your directory.
    #
    #   This parameter is required if you are using an existing directory
    #   for identity management in Amazon Connect when Amazon Connect cannot
    #   access your directory to authenticate users. If you are using SAML
    #   for identity management and include this parameter, an error is
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] security_profile_ids
    #   The identifier of the security profile for the user.
    #   @return [Array<String>]
    #
    # @!attribute [rw] routing_profile_id
    #   The identifier of the routing profile for the user.
    #   @return [String]
    #
    # @!attribute [rw] hierarchy_group_id
    #   The identifier of the hierarchy group for the user.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateUserRequest AWS API Documentation
    #
    class CreateUserRequest < Struct.new(
      :username,
      :password,
      :identity_info,
      :phone_config,
      :directory_user_id,
      :security_profile_ids,
      :routing_profile_id,
      :hierarchy_group_id,
      :instance_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The identifier of the user account.
    #   @return [String]
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) of the user account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateUserResponse AWS API Documentation
    #
    class CreateUserResponse < Struct.new(
      :user_id,
      :user_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains credentials to use for federation.
    #
    # @!attribute [rw] access_token
    #   An access token generated for a federated user to access Amazon
    #   Connect.
    #   @return [String]
    #
    # @!attribute [rw] access_token_expiration
    #   A token generated with an expiration time for the session a user is
    #   logged in to Amazon Connect.
    #   @return [Time]
    #
    # @!attribute [rw] refresh_token
    #   Renews a token generated for a user to access the Amazon Connect
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] refresh_token_expiration
    #   Renews the expiration timer for a generated token.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Credentials AWS API Documentation
    #
    class Credentials < Struct.new(
      :access_token,
      :access_token_expiration,
      :refresh_token,
      :refresh_token_expiration)
      SENSITIVE = [:access_token, :refresh_token]
      include Aws::Structure
    end

    # Contains information about a real-time metric. For a description of
    # each metric, see [Real-time Metrics Definitions][1] in the *Amazon
    # Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html
    #
    # @note When making an API call, you may pass CurrentMetric
    #   data as a hash:
    #
    #       {
    #         name: "AGENTS_ONLINE", # accepts AGENTS_ONLINE, AGENTS_AVAILABLE, AGENTS_ON_CALL, AGENTS_NON_PRODUCTIVE, AGENTS_AFTER_CONTACT_WORK, AGENTS_ERROR, AGENTS_STAFFED, CONTACTS_IN_QUEUE, OLDEST_CONTACT_AGE, CONTACTS_SCHEDULED, AGENTS_ON_CONTACT, SLOTS_ACTIVE, SLOTS_AVAILABLE
    #         unit: "SECONDS", # accepts SECONDS, COUNT, PERCENT
    #       }
    #
    # @!attribute [rw] name
    #   The name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit for the metric.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CurrentMetric AWS API Documentation
    #
    class CurrentMetric < Struct.new(
      :name,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the data for a real-time metric.
    #
    # @!attribute [rw] metric
    #   Information about the metric.
    #   @return [Types::CurrentMetric]
    #
    # @!attribute [rw] value
    #   The value of the metric.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CurrentMetricData AWS API Documentation
    #
    class CurrentMetricData < Struct.new(
      :metric,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a set of real-time metrics.
    #
    # @!attribute [rw] dimensions
    #   The dimensions for the metrics.
    #   @return [Types::Dimensions]
    #
    # @!attribute [rw] collections
    #   The set of metrics.
    #   @return [Array<Types::CurrentMetricData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CurrentMetricResult AWS API Documentation
    #
    class CurrentMetricResult < Struct.new(
      :dimensions,
      :collections)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteUserRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         user_id: "UserId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteUserRequest AWS API Documentation
    #
    class DeleteUserRequest < Struct.new(
      :instance_id,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeContactFlowRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         contact_flow_id: "ContactFlowId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the contact flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeContactFlowRequest AWS API Documentation
    #
    class DescribeContactFlowRequest < Struct.new(
      :instance_id,
      :contact_flow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_flow
    #   Information about the contact flow.
    #   @return [Types::ContactFlow]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeContactFlowResponse AWS API Documentation
    #
    class DescribeContactFlowResponse < Struct.new(
      :contact_flow)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRoutingProfileRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         routing_profile_id: "RoutingProfileId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] routing_profile_id
    #   The identifier of the routing profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeRoutingProfileRequest AWS API Documentation
    #
    class DescribeRoutingProfileRequest < Struct.new(
      :instance_id,
      :routing_profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] routing_profile
    #   The routing profile.
    #   @return [Types::RoutingProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeRoutingProfileResponse AWS API Documentation
    #
    class DescribeRoutingProfileResponse < Struct.new(
      :routing_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeUserHierarchyGroupRequest
    #   data as a hash:
    #
    #       {
    #         hierarchy_group_id: "HierarchyGroupId", # required
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] hierarchy_group_id
    #   The identifier of the hierarchy group.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUserHierarchyGroupRequest AWS API Documentation
    #
    class DescribeUserHierarchyGroupRequest < Struct.new(
      :hierarchy_group_id,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hierarchy_group
    #   Information about the hierarchy group.
    #   @return [Types::HierarchyGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUserHierarchyGroupResponse AWS API Documentation
    #
    class DescribeUserHierarchyGroupResponse < Struct.new(
      :hierarchy_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeUserHierarchyStructureRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUserHierarchyStructureRequest AWS API Documentation
    #
    class DescribeUserHierarchyStructureRequest < Struct.new(
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hierarchy_structure
    #   Information about the hierarchy structure.
    #   @return [Types::HierarchyStructure]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUserHierarchyStructureResponse AWS API Documentation
    #
    class DescribeUserHierarchyStructureResponse < Struct.new(
      :hierarchy_structure)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeUserRequest
    #   data as a hash:
    #
    #       {
    #         user_id: "UserId", # required
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] user_id
    #   The identifier of the user account.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUserRequest AWS API Documentation
    #
    class DescribeUserRequest < Struct.new(
      :user_id,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   Information about the user account and configuration settings.
    #   @return [Types::User]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUserResponse AWS API Documentation
    #
    class DescribeUserResponse < Struct.new(
      :user)
      SENSITIVE = []
      include Aws::Structure
    end

    # Outbound calls to the destination number are not allowed.
    #
    # @!attribute [rw] message
    #   The message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DestinationNotAllowedException AWS API Documentation
    #
    class DestinationNotAllowedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the dimensions for a set of metrics.
    #
    # @!attribute [rw] queue
    #   Information about the queue for which metrics are returned.
    #   @return [Types::QueueReference]
    #
    # @!attribute [rw] channel
    #   The channel used for grouping and filters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Dimensions AWS API Documentation
    #
    class Dimensions < Struct.new(
      :queue,
      :channel)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateRoutingProfileQueuesRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         routing_profile_id: "RoutingProfileId", # required
    #         queue_references: [ # required
    #           {
    #             queue_id: "QueueId", # required
    #             channel: "VOICE", # required, accepts VOICE, CHAT
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] routing_profile_id
    #   The identifier of the routing profile.
    #   @return [String]
    #
    # @!attribute [rw] queue_references
    #   The queues to disassociate from this routing profile.
    #   @return [Array<Types::RoutingProfileQueueReference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateRoutingProfileQueuesRequest AWS API Documentation
    #
    class DisassociateRoutingProfileQueuesRequest < Struct.new(
      :instance_id,
      :routing_profile_id,
      :queue_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource with the specified name already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DuplicateResourceException AWS API Documentation
    #
    class DuplicateResourceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the filter to apply when retrieving metrics.
    #
    # @note When making an API call, you may pass Filters
    #   data as a hash:
    #
    #       {
    #         queues: ["QueueId"],
    #         channels: ["VOICE"], # accepts VOICE, CHAT
    #       }
    #
    # @!attribute [rw] queues
    #   The queues to use to filter the metrics. You can specify up to 100
    #   queues per request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] channels
    #   The channel to use to filter the metrics.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Filters AWS API Documentation
    #
    class Filters < Struct.new(
      :queues,
      :channels)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetContactAttributesRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         initial_contact_id: "ContactId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] initial_contact_id
    #   The identifier of the initial contact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetContactAttributesRequest AWS API Documentation
    #
    class GetContactAttributesRequest < Struct.new(
      :instance_id,
      :initial_contact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   Information about the attributes.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetContactAttributesResponse AWS API Documentation
    #
    class GetContactAttributesResponse < Struct.new(
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCurrentMetricDataRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         filters: { # required
    #           queues: ["QueueId"],
    #           channels: ["VOICE"], # accepts VOICE, CHAT
    #         },
    #         groupings: ["QUEUE"], # accepts QUEUE, CHANNEL
    #         current_metrics: [ # required
    #           {
    #             name: "AGENTS_ONLINE", # accepts AGENTS_ONLINE, AGENTS_AVAILABLE, AGENTS_ON_CALL, AGENTS_NON_PRODUCTIVE, AGENTS_AFTER_CONTACT_WORK, AGENTS_ERROR, AGENTS_STAFFED, CONTACTS_IN_QUEUE, OLDEST_CONTACT_AGE, CONTACTS_SCHEDULED, AGENTS_ON_CONTACT, SLOTS_ACTIVE, SLOTS_AVAILABLE
    #             unit: "SECONDS", # accepts SECONDS, COUNT, PERCENT
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The queues, up to 100, or channels, to use to filter the metrics
    #   returned. Metric data is retrieved only for the resources associated
    #   with the queues or channels included in the filter. You can include
    #   both queue IDs and queue ARNs in the same request. Both `VOICE` and
    #   `CHAT` channels are supported.
    #   @return [Types::Filters]
    #
    # @!attribute [rw] groupings
    #   The grouping applied to the metrics returned. For example, when
    #   grouped by `QUEUE`, the metrics returned apply to each queue rather
    #   than aggregated for all queues. If you group by `CHANNEL`, you
    #   should include a Channels filter. Both `VOICE` and `CHAT` channels
    #   are supported.
    #
    #   If no `Grouping` is included in the request, a summary of metrics is
    #   returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] current_metrics
    #   The metrics to retrieve. Specify the name and unit for each metric.
    #   The following metrics are available. For a description of all the
    #   metrics, see [Real-time Metrics Definitions][1] in the *Amazon
    #   Connect Administrator Guide*.
    #
    #   AGENTS\_AFTER\_CONTACT\_WORK
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [ACW][2]
    #
    #   AGENTS\_AVAILABLE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Available][3]
    #
    #   AGENTS\_ERROR
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Error][4]
    #
    #   AGENTS\_NON\_PRODUCTIVE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [NPT (Non-Productive Time)][5]
    #
    #   AGENTS\_ON\_CALL
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [On contact][6]
    #
    #   AGENTS\_ON\_CONTACT
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [On contact][6]
    #
    #   AGENTS\_ONLINE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Online][7]
    #
    #   AGENTS\_STAFFED
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Staffed][8]
    #
    #   CONTACTS\_IN\_QUEUE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [In queue][9]
    #
    #   CONTACTS\_SCHEDULED
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Scheduled][10]
    #
    #   OLDEST\_CONTACT\_AGE
    #
    #   : Unit: SECONDS
    #
    #     When you use groupings, Unit says SECONDS but the Value is
    #     returned in MILLISECONDS. For example, if you get a response like
    #     this:
    #
    #     `\{ "Metric": \{ "Name": "OLDEST_CONTACT_AGE", "Unit": "SECONDS"
    #     \}, "Value": 24113.0 `\\}
    #
    #     The actual OLDEST\_CONTACT\_AGE is 24 seconds.
    #
    #     Name in real-time metrics report: [Oldest][11]
    #
    #   SLOTS\_ACTIVE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Active][12]
    #
    #   SLOTS\_AVAILABLE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Availability][13]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html
    #   [2]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#aftercallwork-real-time
    #   [3]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#available-real-time
    #   [4]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#error-real-time
    #   [5]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#non-productive-time-real-time
    #   [6]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#on-call-real-time
    #   [7]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#online-real-time
    #   [8]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#staffed-real-time
    #   [9]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#in-queue-real-time
    #   [10]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#scheduled-real-time
    #   [11]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#oldest-real-time
    #   [12]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#active-real-time
    #   [13]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#availability-real-time
    #   @return [Array<Types::CurrentMetric>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    #   The token expires after 5 minutes from the time it is created.
    #   Subsequent requests that use the token must use the same request
    #   parameters as the request that generated the token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximimum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetCurrentMetricDataRequest AWS API Documentation
    #
    class GetCurrentMetricDataRequest < Struct.new(
      :instance_id,
      :filters,
      :groupings,
      :current_metrics,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #
    #   The token expires after 5 minutes from the time it is created.
    #   Subsequent requests that use the token must use the same request
    #   parameters as the request that generated the token.
    #   @return [String]
    #
    # @!attribute [rw] metric_results
    #   Information about the real-time metrics.
    #   @return [Array<Types::CurrentMetricResult>]
    #
    # @!attribute [rw] data_snapshot_time
    #   The time at which the metrics were retrieved and cached for
    #   pagination.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetCurrentMetricDataResponse AWS API Documentation
    #
    class GetCurrentMetricDataResponse < Struct.new(
      :next_token,
      :metric_results,
      :data_snapshot_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFederationTokenRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetFederationTokenRequest AWS API Documentation
    #
    class GetFederationTokenRequest < Struct.new(
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] credentials
    #   The credentials to use for federation.
    #   @return [Types::Credentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetFederationTokenResponse AWS API Documentation
    #
    class GetFederationTokenResponse < Struct.new(
      :credentials)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMetricDataRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #         filters: { # required
    #           queues: ["QueueId"],
    #           channels: ["VOICE"], # accepts VOICE, CHAT
    #         },
    #         groupings: ["QUEUE"], # accepts QUEUE, CHANNEL
    #         historical_metrics: [ # required
    #           {
    #             name: "CONTACTS_QUEUED", # accepts CONTACTS_QUEUED, CONTACTS_HANDLED, CONTACTS_ABANDONED, CONTACTS_CONSULTED, CONTACTS_AGENT_HUNG_UP_FIRST, CONTACTS_HANDLED_INCOMING, CONTACTS_HANDLED_OUTBOUND, CONTACTS_HOLD_ABANDONS, CONTACTS_TRANSFERRED_IN, CONTACTS_TRANSFERRED_OUT, CONTACTS_TRANSFERRED_IN_FROM_QUEUE, CONTACTS_TRANSFERRED_OUT_FROM_QUEUE, CONTACTS_MISSED, CALLBACK_CONTACTS_HANDLED, API_CONTACTS_HANDLED, OCCUPANCY, HANDLE_TIME, AFTER_CONTACT_WORK_TIME, QUEUED_TIME, ABANDON_TIME, QUEUE_ANSWER_TIME, HOLD_TIME, INTERACTION_TIME, INTERACTION_AND_HOLD_TIME, SERVICE_LEVEL
    #             threshold: {
    #               comparison: "LT", # accepts LT
    #               threshold_value: 1.0,
    #             },
    #             statistic: "SUM", # accepts SUM, MAX, AVG
    #             unit: "SECONDS", # accepts SECONDS, COUNT, PERCENT
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp, in UNIX Epoch time format, at which to start the
    #   reporting interval for the retrieval of historical metrics data. The
    #   time must be specified using a multiple of 5 minutes, such as 10:05,
    #   10:10, 10:15.
    #
    #   The start time cannot be earlier than 24 hours before the time of
    #   the request. Historical metrics are available only for 24 hours.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The timestamp, in UNIX Epoch time format, at which to end the
    #   reporting interval for the retrieval of historical metrics data. The
    #   time must be specified using an interval of 5 minutes, such as
    #   11:00, 11:05, 11:10, and must be later than the start time
    #   timestamp.
    #
    #   The time range between the start and end time must be less than 24
    #   hours.
    #   @return [Time]
    #
    # @!attribute [rw] filters
    #   The queues, up to 100, or channels, to use to filter the metrics
    #   returned. Metric data is retrieved only for the resources associated
    #   with the queues or channels included in the filter. You can include
    #   both queue IDs and queue ARNs in the same request. Both `VOICE` and
    #   `CHAT` channels are supported.
    #   @return [Types::Filters]
    #
    # @!attribute [rw] groupings
    #   The grouping applied to the metrics returned. For example, when
    #   results are grouped by queue, the metrics returned are grouped by
    #   queue. The values returned apply to the metrics for each queue
    #   rather than aggregated for all queues.
    #
    #   The only supported grouping is `QUEUE`.
    #
    #   If no grouping is specified, a summary of metrics for all queues is
    #   returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] historical_metrics
    #   The metrics to retrieve. Specify the name, unit, and statistic for
    #   each metric. The following historical metrics are available. For a
    #   description of each metric, see [Historical Metrics Definitions][1]
    #   in the *Amazon Connect Administrator Guide*.
    #
    #   ABANDON\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #   AFTER\_CONTACT\_WORK\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #   API\_CONTACTS\_HANDLED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CALLBACK\_CONTACTS\_HANDLED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_ABANDONED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_AGENT\_HUNG\_UP\_FIRST
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_CONSULTED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_HANDLED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_HANDLED\_INCOMING
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_HANDLED\_OUTBOUND
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_HOLD\_ABANDONS
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_MISSED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_QUEUED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_TRANSFERRED\_IN
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_TRANSFERRED\_IN\_FROM\_QUEUE
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_TRANSFERRED\_OUT
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_TRANSFERRED\_OUT\_FROM\_QUEUE
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   HANDLE\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #   HOLD\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #   INTERACTION\_AND\_HOLD\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #   INTERACTION\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #   OCCUPANCY
    #
    #   : Unit: PERCENT
    #
    #     Statistic: AVG
    #
    #   QUEUE\_ANSWER\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #   QUEUED\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: MAX
    #
    #   SERVICE\_LEVEL
    #
    #   : Unit: PERCENT
    #
    #     Statistic: AVG
    #
    #     Threshold: Only "Less than" comparisons are supported, with the
    #     following service level thresholds: 15, 20, 25, 30, 45, 60, 90,
    #     120, 180, 240, 300, 600
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html
    #   @return [Array<Types::HistoricalMetric>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximimum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetMetricDataRequest AWS API Documentation
    #
    class GetMetricDataRequest < Struct.new(
      :instance_id,
      :start_time,
      :end_time,
      :filters,
      :groupings,
      :historical_metrics,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #
    #   The token expires after 5 minutes from the time it is created.
    #   Subsequent requests that use the token must use the same request
    #   parameters as the request that generated the token.
    #   @return [String]
    #
    # @!attribute [rw] metric_results
    #   Information about the historical metrics.
    #
    #   If no grouping is specified, a summary of metric data is returned.
    #   @return [Array<Types::HistoricalMetricResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetMetricDataResponse AWS API Documentation
    #
    class GetMetricDataResponse < Struct.new(
      :next_token,
      :metric_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a hierarchy group.
    #
    # @!attribute [rw] id
    #   The identifier of the hierarchy group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the hierarchy group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the hierarchy group.
    #   @return [String]
    #
    # @!attribute [rw] level_id
    #   The identifier of the level in the hierarchy group.
    #   @return [String]
    #
    # @!attribute [rw] hierarchy_path
    #   Information about the levels in the hierarchy group.
    #   @return [Types::HierarchyPath]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HierarchyGroup AWS API Documentation
    #
    class HierarchyGroup < Struct.new(
      :id,
      :arn,
      :name,
      :level_id,
      :hierarchy_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a hierarchy group.
    #
    # @!attribute [rw] id
    #   The identifier of the hierarchy group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the hierarchy group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the hierarchy group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HierarchyGroupSummary AWS API Documentation
    #
    class HierarchyGroupSummary < Struct.new(
      :id,
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a hierarchy level.
    #
    # @!attribute [rw] id
    #   The identifier of the hierarchy level.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the hierarchy level.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the hierarchy level.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HierarchyLevel AWS API Documentation
    #
    class HierarchyLevel < Struct.new(
      :id,
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the levels of a hierarchy group.
    #
    # @!attribute [rw] level_one
    #   Information about level one.
    #   @return [Types::HierarchyGroupSummary]
    #
    # @!attribute [rw] level_two
    #   Information about level two.
    #   @return [Types::HierarchyGroupSummary]
    #
    # @!attribute [rw] level_three
    #   Information about level three.
    #   @return [Types::HierarchyGroupSummary]
    #
    # @!attribute [rw] level_four
    #   Information about level four.
    #   @return [Types::HierarchyGroupSummary]
    #
    # @!attribute [rw] level_five
    #   Information about level five.
    #   @return [Types::HierarchyGroupSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HierarchyPath AWS API Documentation
    #
    class HierarchyPath < Struct.new(
      :level_one,
      :level_two,
      :level_three,
      :level_four,
      :level_five)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a hierarchy structure.
    #
    # @!attribute [rw] level_one
    #   Information about level one.
    #   @return [Types::HierarchyLevel]
    #
    # @!attribute [rw] level_two
    #   Information about level two.
    #   @return [Types::HierarchyLevel]
    #
    # @!attribute [rw] level_three
    #   Information about level three.
    #   @return [Types::HierarchyLevel]
    #
    # @!attribute [rw] level_four
    #   Information about level four.
    #   @return [Types::HierarchyLevel]
    #
    # @!attribute [rw] level_five
    #   Information about level five.
    #   @return [Types::HierarchyLevel]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HierarchyStructure AWS API Documentation
    #
    class HierarchyStructure < Struct.new(
      :level_one,
      :level_two,
      :level_three,
      :level_four,
      :level_five)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a historical metric. For a description of
    # each metric, see [Historical Metrics Definitions][1] in the *Amazon
    # Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html
    #
    # @note When making an API call, you may pass HistoricalMetric
    #   data as a hash:
    #
    #       {
    #         name: "CONTACTS_QUEUED", # accepts CONTACTS_QUEUED, CONTACTS_HANDLED, CONTACTS_ABANDONED, CONTACTS_CONSULTED, CONTACTS_AGENT_HUNG_UP_FIRST, CONTACTS_HANDLED_INCOMING, CONTACTS_HANDLED_OUTBOUND, CONTACTS_HOLD_ABANDONS, CONTACTS_TRANSFERRED_IN, CONTACTS_TRANSFERRED_OUT, CONTACTS_TRANSFERRED_IN_FROM_QUEUE, CONTACTS_TRANSFERRED_OUT_FROM_QUEUE, CONTACTS_MISSED, CALLBACK_CONTACTS_HANDLED, API_CONTACTS_HANDLED, OCCUPANCY, HANDLE_TIME, AFTER_CONTACT_WORK_TIME, QUEUED_TIME, ABANDON_TIME, QUEUE_ANSWER_TIME, HOLD_TIME, INTERACTION_TIME, INTERACTION_AND_HOLD_TIME, SERVICE_LEVEL
    #         threshold: {
    #           comparison: "LT", # accepts LT
    #           threshold_value: 1.0,
    #         },
    #         statistic: "SUM", # accepts SUM, MAX, AVG
    #         unit: "SECONDS", # accepts SECONDS, COUNT, PERCENT
    #       }
    #
    # @!attribute [rw] name
    #   The name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] threshold
    #   The threshold for the metric, used with service level metrics.
    #   @return [Types::Threshold]
    #
    # @!attribute [rw] statistic
    #   The statistic for the metric.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit for the metric.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HistoricalMetric AWS API Documentation
    #
    class HistoricalMetric < Struct.new(
      :name,
      :threshold,
      :statistic,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the data for a historical metric.
    #
    # @!attribute [rw] metric
    #   Information about the metric.
    #   @return [Types::HistoricalMetric]
    #
    # @!attribute [rw] value
    #   The value of the metric.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HistoricalMetricData AWS API Documentation
    #
    class HistoricalMetricData < Struct.new(
      :metric,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the historical metrics retrieved.
    #
    # @!attribute [rw] dimensions
    #   The dimension for the metrics.
    #   @return [Types::Dimensions]
    #
    # @!attribute [rw] collections
    #   The set of metrics.
    #   @return [Array<Types::HistoricalMetricData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HistoricalMetricResult AWS API Documentation
    #
    class HistoricalMetricResult < Struct.new(
      :dimensions,
      :collections)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about hours of operation for a contact
    # center.
    #
    # @!attribute [rw] id
    #   The identifier of the hours of operation.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the hours of operation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the hours of operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HoursOfOperationSummary AWS API Documentation
    #
    class HoursOfOperationSummary < Struct.new(
      :id,
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request processing failed due to an error or failure with the service.
    #
    # @!attribute [rw] message
    #   The message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/InternalServiceException AWS API Documentation
    #
    class InternalServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The contact flow is not valid.
    #
    # @!attribute [rw] problems
    #   The problems with the contact flow. Please fix before trying again.
    #   @return [Array<Types::ProblemDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/InvalidContactFlowException AWS API Documentation
    #
    class InvalidContactFlowException < Struct.new(
      :problems)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more of the specified parameters are not valid.
    #
    # @!attribute [rw] message
    #   The message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is not valid.
    #
    # @!attribute [rw] message
    #   The message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The allowed limit for the resource has been exceeded.
    #
    # @!attribute [rw] message
    #   The message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListContactFlowsRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         contact_flow_types: ["CONTACT_FLOW"], # accepts CONTACT_FLOW, CUSTOMER_QUEUE, CUSTOMER_HOLD, CUSTOMER_WHISPER, AGENT_HOLD, AGENT_WHISPER, OUTBOUND_WHISPER, AGENT_TRANSFER, QUEUE_TRANSFER
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_types
    #   The type of contact flow.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximimum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListContactFlowsRequest AWS API Documentation
    #
    class ListContactFlowsRequest < Struct.new(
      :instance_id,
      :contact_flow_types,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_flow_summary_list
    #   Information about the contact flows.
    #   @return [Array<Types::ContactFlowSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListContactFlowsResponse AWS API Documentation
    #
    class ListContactFlowsResponse < Struct.new(
      :contact_flow_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListHoursOfOperationsRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximimum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListHoursOfOperationsRequest AWS API Documentation
    #
    class ListHoursOfOperationsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hours_of_operation_summary_list
    #   Information about the hours of operation.
    #   @return [Array<Types::HoursOfOperationSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListHoursOfOperationsResponse AWS API Documentation
    #
    class ListHoursOfOperationsResponse < Struct.new(
      :hours_of_operation_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPhoneNumbersRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         phone_number_types: ["TOLL_FREE"], # accepts TOLL_FREE, DID
    #         phone_number_country_codes: ["AF"], # accepts AF, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BA, BW, BR, IO, VG, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CK, CR, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, TL, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, PF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GU, GT, GG, GN, GW, GY, HT, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, CI, JM, JP, JE, JO, KZ, KE, KI, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, KP, MP, NO, OM, PK, PW, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, CG, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, KR, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TG, TK, TO, TT, TN, TR, TM, TC, TV, VI, UG, UA, AE, GB, US, UY, UZ, VU, VA, VE, VN, WF, EH, YE, ZM, ZW
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_types
    #   The type of phone number.
    #   @return [Array<String>]
    #
    # @!attribute [rw] phone_number_country_codes
    #   The ISO country code.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximimum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListPhoneNumbersRequest AWS API Documentation
    #
    class ListPhoneNumbersRequest < Struct.new(
      :instance_id,
      :phone_number_types,
      :phone_number_country_codes,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_summary_list
    #   Information about the phone numbers.
    #   @return [Array<Types::PhoneNumberSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListPhoneNumbersResponse AWS API Documentation
    #
    class ListPhoneNumbersResponse < Struct.new(
      :phone_number_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPromptsRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListPromptsRequest AWS API Documentation
    #
    class ListPromptsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] prompt_summary_list
    #   Information about the prompts.
    #   @return [Array<Types::PromptSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListPromptsResponse AWS API Documentation
    #
    class ListPromptsResponse < Struct.new(
      :prompt_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListQueuesRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         queue_types: ["STANDARD"], # accepts STANDARD, AGENT
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] queue_types
    #   The type of queue.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximimum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListQueuesRequest AWS API Documentation
    #
    class ListQueuesRequest < Struct.new(
      :instance_id,
      :queue_types,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_summary_list
    #   Information about the queues.
    #   @return [Array<Types::QueueSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListQueuesResponse AWS API Documentation
    #
    class ListQueuesResponse < Struct.new(
      :queue_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRoutingProfileQueuesRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         routing_profile_id: "RoutingProfileId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] routing_profile_id
    #   The identifier of the routing profile.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximimum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListRoutingProfileQueuesRequest AWS API Documentation
    #
    class ListRoutingProfileQueuesRequest < Struct.new(
      :instance_id,
      :routing_profile_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] routing_profile_queue_config_summary_list
    #   Information about the routing profiles.
    #   @return [Array<Types::RoutingProfileQueueConfigSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListRoutingProfileQueuesResponse AWS API Documentation
    #
    class ListRoutingProfileQueuesResponse < Struct.new(
      :next_token,
      :routing_profile_queue_config_summary_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRoutingProfilesRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximimum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListRoutingProfilesRequest AWS API Documentation
    #
    class ListRoutingProfilesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] routing_profile_summary_list
    #   Information about the routing profiles.
    #   @return [Array<Types::RoutingProfileSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListRoutingProfilesResponse AWS API Documentation
    #
    class ListRoutingProfilesResponse < Struct.new(
      :routing_profile_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSecurityProfilesRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximimum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListSecurityProfilesRequest AWS API Documentation
    #
    class ListSecurityProfilesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_profile_summary_list
    #   Information about the security profiles.
    #   @return [Array<Types::SecurityProfileSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListSecurityProfilesResponse AWS API Documentation
    #
    class ListSecurityProfilesResponse < Struct.new(
      :security_profile_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ARN", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Information about the tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListUserHierarchyGroupsRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximimum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUserHierarchyGroupsRequest AWS API Documentation
    #
    class ListUserHierarchyGroupsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_hierarchy_group_summary_list
    #   Information about the hierarchy groups.
    #   @return [Array<Types::HierarchyGroupSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUserHierarchyGroupsResponse AWS API Documentation
    #
    class ListUserHierarchyGroupsResponse < Struct.new(
      :user_hierarchy_group_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListUsersRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximimum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUsersRequest AWS API Documentation
    #
    class ListUsersRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_summary_list
    #   Information about the users.
    #   @return [Array<Types::UserSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUsersResponse AWS API Documentation
    #
    class ListUsersResponse < Struct.new(
      :user_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about which channels are supported, and how many
    # contacts an agent can have on a channel simultaneously.
    #
    # @note When making an API call, you may pass MediaConcurrency
    #   data as a hash:
    #
    #       {
    #         channel: "VOICE", # required, accepts VOICE, CHAT
    #         concurrency: 1, # required
    #       }
    #
    # @!attribute [rw] channel
    #   The channels that agents can handle in the Contact Control Panel
    #   (CCP).
    #   @return [String]
    #
    # @!attribute [rw] concurrency
    #   The number of contacts an agent can have on a channel
    #   simultaneously.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/MediaConcurrency AWS API Documentation
    #
    class MediaConcurrency < Struct.new(
      :channel,
      :concurrency)
      SENSITIVE = []
      include Aws::Structure
    end

    # The contact is not permitted.
    #
    # @!attribute [rw] message
    #   The message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/OutboundContactNotPermittedException AWS API Documentation
    #
    class OutboundContactNotPermittedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The customer's details.
    #
    # @note When making an API call, you may pass ParticipantDetails
    #   data as a hash:
    #
    #       {
    #         display_name: "DisplayName", # required
    #       }
    #
    # @!attribute [rw] display_name
    #   Display name of the participant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ParticipantDetails AWS API Documentation
    #
    class ParticipantDetails < Struct.new(
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a phone number for a contact
    # center.
    #
    # @!attribute [rw] id
    #   The identifier of the phone number.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the phone number.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_type
    #   The type of phone number.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_country_code
    #   The ISO country code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/PhoneNumberSummary AWS API Documentation
    #
    class PhoneNumberSummary < Struct.new(
      :id,
      :arn,
      :phone_number,
      :phone_number_type,
      :phone_number_country_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a problem detail.
    #
    # @!attribute [rw] message
    #   The problem detail's message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ProblemDetail AWS API Documentation
    #
    class ProblemDetail < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the prompt.
    #
    # @!attribute [rw] id
    #   The identifier of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the prompt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/PromptSummary AWS API Documentation
    #
    class PromptSummary < Struct.new(
      :id,
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a queue resource for which metrics are
    # returned.
    #
    # @!attribute [rw] id
    #   The identifier of the queue.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/QueueReference AWS API Documentation
    #
    class QueueReference < Struct.new(
      :id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a queue.
    #
    # @!attribute [rw] id
    #   The identifier of the queue.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the queue.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the queue.
    #   @return [String]
    #
    # @!attribute [rw] queue_type
    #   The type of queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/QueueSummary AWS API Documentation
    #
    class QueueSummary < Struct.new(
      :id,
      :arn,
      :name,
      :queue_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found.
    #
    # @!attribute [rw] message
    #   The message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ResumeContactRecordingRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         contact_id: "ContactId", # required
    #         initial_contact_id: "ContactId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_id
    #   The identifier of the contact.
    #   @return [String]
    #
    # @!attribute [rw] initial_contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ResumeContactRecordingRequest AWS API Documentation
    #
    class ResumeContactRecordingRequest < Struct.new(
      :instance_id,
      :contact_id,
      :initial_contact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ResumeContactRecordingResponse AWS API Documentation
    #
    class ResumeContactRecordingResponse < Aws::EmptyStructure; end

    # Contains information about a routing profile.
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the routing profile.
    #   @return [String]
    #
    # @!attribute [rw] routing_profile_arn
    #   The Amazon Resource Name (ARN) of the routing profile.
    #   @return [String]
    #
    # @!attribute [rw] routing_profile_id
    #   The identifier of the routing profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the routing profile.
    #   @return [String]
    #
    # @!attribute [rw] media_concurrencies
    #   The channels agents can handle in the Contact Control Panel (CCP)
    #   for this routing profile.
    #   @return [Array<Types::MediaConcurrency>]
    #
    # @!attribute [rw] default_outbound_queue_id
    #   The identifier of the default outbound queue for this routing
    #   profile.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RoutingProfile AWS API Documentation
    #
    class RoutingProfile < Struct.new(
      :instance_id,
      :name,
      :routing_profile_arn,
      :routing_profile_id,
      :description,
      :media_concurrencies,
      :default_outbound_queue_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the queue and channel for which priority
    # and delay can be set.
    #
    # @note When making an API call, you may pass RoutingProfileQueueConfig
    #   data as a hash:
    #
    #       {
    #         queue_reference: { # required
    #           queue_id: "QueueId", # required
    #           channel: "VOICE", # required, accepts VOICE, CHAT
    #         },
    #         priority: 1, # required
    #         delay: 1, # required
    #       }
    #
    # @!attribute [rw] queue_reference
    #   Contains information about a queue resource.
    #   @return [Types::RoutingProfileQueueReference]
    #
    # @!attribute [rw] priority
    #   The order in which contacts are to be handled for the queue. For
    #   more information, see [Queues: priority and delay][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing-profiles-priority.html
    #   @return [Integer]
    #
    # @!attribute [rw] delay
    #   The delay, in seconds, a contact should be in the queue before they
    #   are routed to an available agent. For more information, see [Queues:
    #   priority and delay][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing-profiles-priority.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RoutingProfileQueueConfig AWS API Documentation
    #
    class RoutingProfileQueueConfig < Struct.new(
      :queue_reference,
      :priority,
      :delay)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a routing profile queue.
    #
    # @!attribute [rw] queue_id
    #   The identifier of the queue.
    #   @return [String]
    #
    # @!attribute [rw] queue_arn
    #   The Amazon Resource Name (ARN) of the queue.
    #   @return [String]
    #
    # @!attribute [rw] queue_name
    #   The name of the queue.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The order in which contacts are to be handled for the queue. For
    #   more information, see [Queues: priority and delay][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing-profiles-priority.html
    #   @return [Integer]
    #
    # @!attribute [rw] delay
    #   The delay, in seconds, that a contact should be in the queue before
    #   they are routed to an available agent. For more information, see
    #   [Queues: priority and delay][1] in the *Amazon Connect Administrator
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing-profiles-priority.html
    #   @return [Integer]
    #
    # @!attribute [rw] channel
    #   The channels this queue supports.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RoutingProfileQueueConfigSummary AWS API Documentation
    #
    class RoutingProfileQueueConfigSummary < Struct.new(
      :queue_id,
      :queue_arn,
      :queue_name,
      :priority,
      :delay,
      :channel)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the channel and queue identifier for a routing profile.
    #
    # @note When making an API call, you may pass RoutingProfileQueueReference
    #   data as a hash:
    #
    #       {
    #         queue_id: "QueueId", # required
    #         channel: "VOICE", # required, accepts VOICE, CHAT
    #       }
    #
    # @!attribute [rw] queue_id
    #   The identifier of the queue.
    #   @return [String]
    #
    # @!attribute [rw] channel
    #   The channels agents can handle in the Contact Control Panel (CCP)
    #   for this routing profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RoutingProfileQueueReference AWS API Documentation
    #
    class RoutingProfileQueueReference < Struct.new(
      :queue_id,
      :channel)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a routing profile.
    #
    # @!attribute [rw] id
    #   The identifier of the routing profile.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the routing profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the routing profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RoutingProfileSummary AWS API Documentation
    #
    class RoutingProfileSummary < Struct.new(
      :id,
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a security profile.
    #
    # @!attribute [rw] id
    #   The identifier of the security profile.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the security profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the security profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SecurityProfileSummary AWS API Documentation
    #
    class SecurityProfileSummary < Struct.new(
      :id,
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartChatContactRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         contact_flow_id: "ContactFlowId", # required
    #         attributes: {
    #           "AttributeName" => "AttributeValue",
    #         },
    #         participant_details: { # required
    #           display_name: "DisplayName", # required
    #         },
    #         initial_message: {
    #           content_type: "ChatContentType", # required
    #           content: "ChatContent", # required
    #         },
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the contact flow for initiating the chat. To see
    #   the ContactFlowId in the Amazon Connect console user interface, on
    #   the navigation menu go to **Routing**, **Contact Flows**. Choose the
    #   contact flow. On the contact flow page, under the name of the
    #   contact flow, choose **Show additional flow information**. The
    #   ContactFlowId is the last part of the ARN, shown here in bold:
    #
    #   arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/**846ec553-a005-41c0-8341-xxxxxxxxxxxx**
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A custom key-value pair using an attribute map. The attributes are
    #   standard Amazon Connect attributes, and can be accessed in contact
    #   flows just like any other contact attributes.
    #
    #   There can be up to 32,768 UTF-8 bytes across all key-value pairs per
    #   contact. Attribute keys can include only alphanumeric, dash, and
    #   underscore characters.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] participant_details
    #   Information identifying the participant.
    #   @return [Types::ParticipantDetails]
    #
    # @!attribute [rw] initial_message
    #   The initial message to be sent to the newly created chat.
    #   @return [Types::ChatMessage]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartChatContactRequest AWS API Documentation
    #
    class StartChatContactRequest < Struct.new(
      :instance_id,
      :contact_flow_id,
      :attributes,
      :participant_details,
      :initial_message,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_id
    #   The identifier of this contact within the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] participant_id
    #   The identifier for a chat participant. The participantId for a chat
    #   participant is the same throughout the chat lifecycle.
    #   @return [String]
    #
    # @!attribute [rw] participant_token
    #   The token used by the chat participant to call
    #   [CreateParticipantConnection][1]. The participant token is valid for
    #   the lifetime of a chat participant.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartChatContactResponse AWS API Documentation
    #
    class StartChatContactResponse < Struct.new(
      :contact_id,
      :participant_id,
      :participant_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartContactRecordingRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         contact_id: "ContactId", # required
    #         initial_contact_id: "ContactId", # required
    #         voice_recording_configuration: { # required
    #           voice_recording_track: "FROM_AGENT", # accepts FROM_AGENT, TO_AGENT, ALL
    #         },
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_id
    #   The identifier of the contact.
    #   @return [String]
    #
    # @!attribute [rw] initial_contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #   @return [String]
    #
    # @!attribute [rw] voice_recording_configuration
    #   Who is being recorded.
    #   @return [Types::VoiceRecordingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartContactRecordingRequest AWS API Documentation
    #
    class StartContactRecordingRequest < Struct.new(
      :instance_id,
      :contact_id,
      :initial_contact_id,
      :voice_recording_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartContactRecordingResponse AWS API Documentation
    #
    class StartContactRecordingResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StartOutboundVoiceContactRequest
    #   data as a hash:
    #
    #       {
    #         destination_phone_number: "PhoneNumber", # required
    #         contact_flow_id: "ContactFlowId", # required
    #         instance_id: "InstanceId", # required
    #         client_token: "ClientToken",
    #         source_phone_number: "PhoneNumber",
    #         queue_id: "QueueId",
    #         attributes: {
    #           "AttributeName" => "AttributeValue",
    #         },
    #       }
    #
    # @!attribute [rw] destination_phone_number
    #   The phone number of the customer, in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the contact flow for the outbound call. To see the
    #   ContactFlowId in the Amazon Connect console user interface, on the
    #   navigation menu go to **Routing**, **Contact Flows**. Choose the
    #   contact flow. On the contact flow page, under the name of the
    #   contact flow, choose **Show additional flow information**. The
    #   ContactFlowId is the last part of the ARN, shown here in bold:
    #
    #   arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/**846ec553-a005-41c0-8341-xxxxxxxxxxxx**
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. The token is valid for 7 days after
    #   creation. If a contact is already started, the contact ID is
    #   returned. If the contact is disconnected, a new contact is started.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] source_phone_number
    #   The phone number associated with the Amazon Connect instance, in
    #   E.164 format. If you do not specify a source phone number, you must
    #   specify a queue.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue for the call. If you specify a queue, the phone displayed
    #   for caller ID is the phone number specified in the queue. If you do
    #   not specify a queue, the queue defined in the contact flow is used.
    #   If you do not specify a queue, you must specify a source phone
    #   number.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A custom key-value pair using an attribute map. The attributes are
    #   standard Amazon Connect attributes, and can be accessed in contact
    #   flows just like any other contact attributes.
    #
    #   There can be up to 32,768 UTF-8 bytes across all key-value pairs per
    #   contact. Attribute keys can include only alphanumeric, dash, and
    #   underscore characters.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartOutboundVoiceContactRequest AWS API Documentation
    #
    class StartOutboundVoiceContactRequest < Struct.new(
      :destination_phone_number,
      :contact_flow_id,
      :instance_id,
      :client_token,
      :source_phone_number,
      :queue_id,
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_id
    #   The identifier of this contact within the Amazon Connect instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartOutboundVoiceContactResponse AWS API Documentation
    #
    class StartOutboundVoiceContactResponse < Struct.new(
      :contact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopContactRecordingRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         contact_id: "ContactId", # required
    #         initial_contact_id: "ContactId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_id
    #   The identifier of the contact.
    #   @return [String]
    #
    # @!attribute [rw] initial_contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StopContactRecordingRequest AWS API Documentation
    #
    class StopContactRecordingRequest < Struct.new(
      :instance_id,
      :contact_id,
      :initial_contact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StopContactRecordingResponse AWS API Documentation
    #
    class StopContactRecordingResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StopContactRequest
    #   data as a hash:
    #
    #       {
    #         contact_id: "ContactId", # required
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] contact_id
    #   The ID of the contact.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StopContactRequest AWS API Documentation
    #
    class StopContactRequest < Struct.new(
      :contact_id,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StopContactResponse AWS API Documentation
    #
    class StopContactResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass SuspendContactRecordingRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         contact_id: "ContactId", # required
    #         initial_contact_id: "ContactId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_id
    #   The identifier of the contact.
    #   @return [String]
    #
    # @!attribute [rw] initial_contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SuspendContactRecordingRequest AWS API Documentation
    #
    class SuspendContactRecordingRequest < Struct.new(
      :instance_id,
      :contact_id,
      :initial_contact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SuspendContactRecordingResponse AWS API Documentation
    #
    class SuspendContactRecordingResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ARN", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags. For example, \\\{ "tags":
    #   \\\{"key1":"value1", "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the threshold for service level metrics.
    #
    # @note When making an API call, you may pass Threshold
    #   data as a hash:
    #
    #       {
    #         comparison: "LT", # accepts LT
    #         threshold_value: 1.0,
    #       }
    #
    # @!attribute [rw] comparison
    #   The type of comparison. Only "less than" (LT) comparisons are
    #   supported.
    #   @return [String]
    #
    # @!attribute [rw] threshold_value
    #   The threshold value to compare.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Threshold AWS API Documentation
    #
    class Threshold < Struct.new(
      :comparison,
      :threshold_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The throttling limit has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ARN", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateContactAttributesRequest
    #   data as a hash:
    #
    #       {
    #         initial_contact_id: "ContactId", # required
    #         instance_id: "InstanceId", # required
    #         attributes: { # required
    #           "AttributeName" => "AttributeValue",
    #         },
    #       }
    #
    # @!attribute [rw] initial_contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The Amazon Connect attributes. These attributes can be accessed in
    #   contact flows just like any other contact attributes.
    #
    #   You can have up to 32,768 UTF-8 bytes across all attributes for a
    #   contact. Attribute keys can include only alphanumeric, dash, and
    #   underscore characters.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactAttributesRequest AWS API Documentation
    #
    class UpdateContactAttributesRequest < Struct.new(
      :initial_contact_id,
      :instance_id,
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactAttributesResponse AWS API Documentation
    #
    class UpdateContactAttributesResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateContactFlowContentRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         contact_flow_id: "ContactFlowId", # required
    #         content: "ContactFlowContent", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the contact flow.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The JSON string that represents contact flow’s content. For an
    #   example, see [Example contact flow in Amazon Connect Flow
    #   language][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/flow-language-example.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactFlowContentRequest AWS API Documentation
    #
    class UpdateContactFlowContentRequest < Struct.new(
      :instance_id,
      :contact_flow_id,
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateContactFlowNameRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         contact_flow_id: "ContactFlowId", # required
    #         name: "ContactFlowName",
    #         description: "ContactFlowDescription",
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the contact flow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the contact flow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the contact flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactFlowNameRequest AWS API Documentation
    #
    class UpdateContactFlowNameRequest < Struct.new(
      :instance_id,
      :contact_flow_id,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRoutingProfileConcurrencyRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         routing_profile_id: "RoutingProfileId", # required
    #         media_concurrencies: [ # required
    #           {
    #             channel: "VOICE", # required, accepts VOICE, CHAT
    #             concurrency: 1, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] routing_profile_id
    #   The identifier of the routing profile.
    #   @return [String]
    #
    # @!attribute [rw] media_concurrencies
    #   The channels agents can handle in the Contact Control Panel (CCP).
    #   @return [Array<Types::MediaConcurrency>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateRoutingProfileConcurrencyRequest AWS API Documentation
    #
    class UpdateRoutingProfileConcurrencyRequest < Struct.new(
      :instance_id,
      :routing_profile_id,
      :media_concurrencies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRoutingProfileDefaultOutboundQueueRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         routing_profile_id: "RoutingProfileId", # required
    #         default_outbound_queue_id: "QueueId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] routing_profile_id
    #   The identifier of the routing profile.
    #   @return [String]
    #
    # @!attribute [rw] default_outbound_queue_id
    #   The identifier for the default outbound queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateRoutingProfileDefaultOutboundQueueRequest AWS API Documentation
    #
    class UpdateRoutingProfileDefaultOutboundQueueRequest < Struct.new(
      :instance_id,
      :routing_profile_id,
      :default_outbound_queue_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRoutingProfileNameRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         routing_profile_id: "RoutingProfileId", # required
    #         name: "RoutingProfileName",
    #         description: "RoutingProfileDescription",
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] routing_profile_id
    #   The identifier of the routing profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the routing profile. Must not be more than 127
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the routing profile. Must not be more than 250
    #   characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateRoutingProfileNameRequest AWS API Documentation
    #
    class UpdateRoutingProfileNameRequest < Struct.new(
      :instance_id,
      :routing_profile_id,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRoutingProfileQueuesRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         routing_profile_id: "RoutingProfileId", # required
    #         queue_configs: [ # required
    #           {
    #             queue_reference: { # required
    #               queue_id: "QueueId", # required
    #               channel: "VOICE", # required, accepts VOICE, CHAT
    #             },
    #             priority: 1, # required
    #             delay: 1, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] routing_profile_id
    #   The identifier of the routing profile.
    #   @return [String]
    #
    # @!attribute [rw] queue_configs
    #   The queues to be updated for this routing profile.
    #   @return [Array<Types::RoutingProfileQueueConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateRoutingProfileQueuesRequest AWS API Documentation
    #
    class UpdateRoutingProfileQueuesRequest < Struct.new(
      :instance_id,
      :routing_profile_id,
      :queue_configs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateUserHierarchyRequest
    #   data as a hash:
    #
    #       {
    #         hierarchy_group_id: "HierarchyGroupId",
    #         user_id: "UserId", # required
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] hierarchy_group_id
    #   The identifier of the hierarchy group.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user account.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserHierarchyRequest AWS API Documentation
    #
    class UpdateUserHierarchyRequest < Struct.new(
      :hierarchy_group_id,
      :user_id,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateUserIdentityInfoRequest
    #   data as a hash:
    #
    #       {
    #         identity_info: { # required
    #           first_name: "AgentFirstName",
    #           last_name: "AgentLastName",
    #           email: "Email",
    #         },
    #         user_id: "UserId", # required
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] identity_info
    #   The identity information for the user.
    #   @return [Types::UserIdentityInfo]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user account.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserIdentityInfoRequest AWS API Documentation
    #
    class UpdateUserIdentityInfoRequest < Struct.new(
      :identity_info,
      :user_id,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateUserPhoneConfigRequest
    #   data as a hash:
    #
    #       {
    #         phone_config: { # required
    #           phone_type: "SOFT_PHONE", # required, accepts SOFT_PHONE, DESK_PHONE
    #           auto_accept: false,
    #           after_contact_work_time_limit: 1,
    #           desk_phone_number: "PhoneNumber",
    #         },
    #         user_id: "UserId", # required
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] phone_config
    #   Information about phone configuration settings for the user.
    #   @return [Types::UserPhoneConfig]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user account.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserPhoneConfigRequest AWS API Documentation
    #
    class UpdateUserPhoneConfigRequest < Struct.new(
      :phone_config,
      :user_id,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateUserRoutingProfileRequest
    #   data as a hash:
    #
    #       {
    #         routing_profile_id: "RoutingProfileId", # required
    #         user_id: "UserId", # required
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] routing_profile_id
    #   The identifier of the routing profile for the user.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user account.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserRoutingProfileRequest AWS API Documentation
    #
    class UpdateUserRoutingProfileRequest < Struct.new(
      :routing_profile_id,
      :user_id,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateUserSecurityProfilesRequest
    #   data as a hash:
    #
    #       {
    #         security_profile_ids: ["SecurityProfileId"], # required
    #         user_id: "UserId", # required
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] security_profile_ids
    #   The identifiers of the security profiles for the user.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user account.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserSecurityProfilesRequest AWS API Documentation
    #
    class UpdateUserSecurityProfilesRequest < Struct.new(
      :security_profile_ids,
      :user_id,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a user account for a Amazon Connect
    # instance.
    #
    # @!attribute [rw] id
    #   The identifier of the user account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the user account.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name assigned to the user account.
    #   @return [String]
    #
    # @!attribute [rw] identity_info
    #   Information about the user identity.
    #   @return [Types::UserIdentityInfo]
    #
    # @!attribute [rw] phone_config
    #   Information about the phone configuration for the user.
    #   @return [Types::UserPhoneConfig]
    #
    # @!attribute [rw] directory_user_id
    #   The identifier of the user account in the directory used for
    #   identity management.
    #   @return [String]
    #
    # @!attribute [rw] security_profile_ids
    #   The identifiers of the security profiles for the user.
    #   @return [Array<String>]
    #
    # @!attribute [rw] routing_profile_id
    #   The identifier of the routing profile for the user.
    #   @return [String]
    #
    # @!attribute [rw] hierarchy_group_id
    #   The identifier of the hierarchy group for the user.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/User AWS API Documentation
    #
    class User < Struct.new(
      :id,
      :arn,
      :username,
      :identity_info,
      :phone_config,
      :directory_user_id,
      :security_profile_ids,
      :routing_profile_id,
      :hierarchy_group_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the identity of a user.
    #
    # @note When making an API call, you may pass UserIdentityInfo
    #   data as a hash:
    #
    #       {
    #         first_name: "AgentFirstName",
    #         last_name: "AgentLastName",
    #         email: "Email",
    #       }
    #
    # @!attribute [rw] first_name
    #   The first name. This is required if you are using Amazon Connect or
    #   SAML for identity management.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name. This is required if you are using Amazon Connect or
    #   SAML for identity management.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address. If you are using SAML for identity management and
    #   include this parameter, an error is returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UserIdentityInfo AWS API Documentation
    #
    class UserIdentityInfo < Struct.new(
      :first_name,
      :last_name,
      :email)
      SENSITIVE = []
      include Aws::Structure
    end

    # No user with the specified credentials was found in the Amazon Connect
    # instance.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UserNotFoundException AWS API Documentation
    #
    class UserNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the phone configuration settings for a
    # user.
    #
    # @note When making an API call, you may pass UserPhoneConfig
    #   data as a hash:
    #
    #       {
    #         phone_type: "SOFT_PHONE", # required, accepts SOFT_PHONE, DESK_PHONE
    #         auto_accept: false,
    #         after_contact_work_time_limit: 1,
    #         desk_phone_number: "PhoneNumber",
    #       }
    #
    # @!attribute [rw] phone_type
    #   The phone type.
    #   @return [String]
    #
    # @!attribute [rw] auto_accept
    #   The Auto accept setting.
    #   @return [Boolean]
    #
    # @!attribute [rw] after_contact_work_time_limit
    #   The After Call Work (ACW) timeout setting, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] desk_phone_number
    #   The phone number for the user's desk phone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UserPhoneConfig AWS API Documentation
    #
    class UserPhoneConfig < Struct.new(
      :phone_type,
      :auto_accept,
      :after_contact_work_time_limit,
      :desk_phone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a user.
    #
    # @!attribute [rw] id
    #   The identifier of the user account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the user account.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The Amazon Connect user name of the user account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UserSummary AWS API Documentation
    #
    class UserSummary < Struct.new(
      :id,
      :arn,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the recording configuration settings.
    #
    # @note When making an API call, you may pass VoiceRecordingConfiguration
    #   data as a hash:
    #
    #       {
    #         voice_recording_track: "FROM_AGENT", # accepts FROM_AGENT, TO_AGENT, ALL
    #       }
    #
    # @!attribute [rw] voice_recording_track
    #   Identifies which track is being recorded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/VoiceRecordingConfiguration AWS API Documentation
    #
    class VoiceRecordingConfiguration < Struct.new(
      :voice_recording_track)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

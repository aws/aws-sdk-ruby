# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Connect
  module Types

    # You do not have sufficient permissions to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the agent who accepted the contact.
    #
    # @!attribute [rw] id
    #   The identifier of the agent who accepted the contact.
    #   @return [String]
    #
    # @!attribute [rw] connected_to_agent_timestamp
    #   The timestamp when the contact was connected to the agent.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AgentInfo AWS API Documentation
    #
    class AgentInfo < Struct.new(
      :id,
      :connected_to_agent_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an agent status.
    #
    # @!attribute [rw] agent_status_arn
    #   The Amazon Resource Name (ARN) of the agent status.
    #   @return [String]
    #
    # @!attribute [rw] agent_status_id
    #   The identifier of the agent status.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the agent status.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the agent status.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of agent status.
    #   @return [String]
    #
    # @!attribute [rw] display_order
    #   The display order of the agent status.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The state of the agent status.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AgentStatus AWS API Documentation
    #
    class AgentStatus < Struct.new(
      :agent_status_arn,
      :agent_status_id,
      :name,
      :description,
      :type,
      :display_order,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for an agent status.
    #
    # @!attribute [rw] id
    #   The identifier for an agent status.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the agent status.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the agent status.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the agent status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AgentStatusSummary AWS API Documentation
    #
    class AgentStatusSummary < Struct.new(
      :id,
      :arn,
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration of the answering machine detection.
    #
    # @note When making an API call, you may pass AnswerMachineDetectionConfig
    #   data as a hash:
    #
    #       {
    #         enable_answer_machine_detection: false,
    #         await_answer_machine_prompt: false,
    #       }
    #
    # @!attribute [rw] enable_answer_machine_detection
    #   The flag to indicate if answer machine detection analysis needs to
    #   be performed for a voice call. If set to `true`, `TrafficType` must
    #   be set as `CAMPAIGN`.
    #   @return [Boolean]
    #
    # @!attribute [rw] await_answer_machine_prompt
    #   Wait for the answering machine prompt.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AnswerMachineDetectionConfig AWS API Documentation
    #
    class AnswerMachineDetectionConfig < Struct.new(
      :enable_answer_machine_detection,
      :await_answer_machine_prompt)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateApprovedOriginRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         origin: "Origin", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   The domain to add to your allow list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateApprovedOriginRequest AWS API Documentation
    #
    class AssociateApprovedOriginRequest < Struct.new(
      :instance_id,
      :origin)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateBotRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         lex_bot: {
    #           name: "BotName",
    #           lex_region: "LexRegion",
    #         },
    #         lex_v2_bot: {
    #           alias_arn: "AliasArn",
    #         },
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] lex_bot
    #   Configuration information of an Amazon Lex bot.
    #   @return [Types::LexBot]
    #
    # @!attribute [rw] lex_v2_bot
    #   The Amazon Lex V2 bot to associate with the instance.
    #   @return [Types::LexV2Bot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateBotRequest AWS API Documentation
    #
    class AssociateBotRequest < Struct.new(
      :instance_id,
      :lex_bot,
      :lex_v2_bot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateDefaultVocabularyRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         language_code: "ar-AE", # required, accepts ar-AE, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fr-CA, fr-FR, hi-IN, it-IT, ja-JP, ko-KR, pt-BR, pt-PT, zh-CN
    #         vocabulary_id: "VocabularyId",
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the vocabulary entries. For a list of languages
    #   and their corresponding language codes, see [What is Amazon
    #   Transcribe?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_id
    #   The identifier of the custom vocabulary. If this is empty, the
    #   default is set to none.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateDefaultVocabularyRequest AWS API Documentation
    #
    class AssociateDefaultVocabularyRequest < Struct.new(
      :instance_id,
      :language_code,
      :vocabulary_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateDefaultVocabularyResponse AWS API Documentation
    #
    class AssociateDefaultVocabularyResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AssociateInstanceStorageConfigRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         resource_type: "CHAT_TRANSCRIPTS", # required, accepts CHAT_TRANSCRIPTS, CALL_RECORDINGS, SCHEDULED_REPORTS, MEDIA_STREAMS, CONTACT_TRACE_RECORDS, AGENT_EVENTS
    #         storage_config: { # required
    #           association_id: "AssociationId",
    #           storage_type: "S3", # required, accepts S3, KINESIS_VIDEO_STREAM, KINESIS_STREAM, KINESIS_FIREHOSE
    #           s3_config: {
    #             bucket_name: "BucketName", # required
    #             bucket_prefix: "Prefix", # required
    #             encryption_config: {
    #               encryption_type: "KMS", # required, accepts KMS
    #               key_id: "KeyId", # required
    #             },
    #           },
    #           kinesis_video_stream_config: {
    #             prefix: "Prefix", # required
    #             retention_period_hours: 1, # required
    #             encryption_config: { # required
    #               encryption_type: "KMS", # required, accepts KMS
    #               key_id: "KeyId", # required
    #             },
    #           },
    #           kinesis_stream_config: {
    #             stream_arn: "ARN", # required
    #           },
    #           kinesis_firehose_config: {
    #             firehose_arn: "ARN", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   A valid resource type.
    #   @return [String]
    #
    # @!attribute [rw] storage_config
    #   A valid storage type.
    #   @return [Types::InstanceStorageConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateInstanceStorageConfigRequest AWS API Documentation
    #
    class AssociateInstanceStorageConfigRequest < Struct.new(
      :instance_id,
      :resource_type,
      :storage_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] association_id
    #   The existing association identifier that uniquely identifies the
    #   resource type and storage config for the given instance ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateInstanceStorageConfigResponse AWS API Documentation
    #
    class AssociateInstanceStorageConfigResponse < Struct.new(
      :association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateLambdaFunctionRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         function_arn: "FunctionArn", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) for the Lambda function being
    #   associated. Maximum number of characters allowed is 140.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateLambdaFunctionRequest AWS API Documentation
    #
    class AssociateLambdaFunctionRequest < Struct.new(
      :instance_id,
      :function_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateLexBotRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         lex_bot: { # required
    #           name: "BotName",
    #           lex_region: "LexRegion",
    #         },
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] lex_bot
    #   The Amazon Lex bot to associate with the instance.
    #   @return [Types::LexBot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateLexBotRequest AWS API Documentation
    #
    class AssociateLexBotRequest < Struct.new(
      :instance_id,
      :lex_bot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateQueueQuickConnectsRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         queue_id: "QueueId", # required
    #         quick_connect_ids: ["QuickConnectId"], # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The identifier for the queue.
    #   @return [String]
    #
    # @!attribute [rw] quick_connect_ids
    #   The quick connects to associate with this queue.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateQueueQuickConnectsRequest AWS API Documentation
    #
    class AssociateQueueQuickConnectsRequest < Struct.new(
      :instance_id,
      :queue_id,
      :quick_connect_ids)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #               channel: "VOICE", # required, accepts VOICE, CHAT, TASK
    #             },
    #             priority: 1, # required
    #             delay: 1, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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

    # @note When making an API call, you may pass AssociateSecurityKeyRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         key: "PEM", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   A valid security key in PEM format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateSecurityKeyRequest AWS API Documentation
    #
    class AssociateSecurityKeyRequest < Struct.new(
      :instance_id,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] association_id
    #   The existing association identifier that uniquely identifies the
    #   resource type and storage config for the given instance ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateSecurityKeyResponse AWS API Documentation
    #
    class AssociateSecurityKeyResponse < Struct.new(
      :association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the attachment reference if the `referenceType` is
    # `ATTACHMENT`. Otherwise, null.
    #
    # @!attribute [rw] name
    #   Identifier of the attachment reference.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Contains the location path of the attachment reference.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of an attachment reference type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AttachmentReference AWS API Documentation
    #
    class AttachmentReference < Struct.new(
      :name,
      :value,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A toggle for an individual feature at the instance level.
    #
    # @!attribute [rw] attribute_type
    #   The type of attribute.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Attribute AWS API Documentation
    #
    class Attribute < Struct.new(
      :attribute_type,
      :value)
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
    #   The type of the content. Supported types are text and plain.
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

    # The streaming configuration, such as the Amazon SNS streaming
    # endpoint.
    #
    # @note When making an API call, you may pass ChatStreamingConfiguration
    #   data as a hash:
    #
    #       {
    #         streaming_endpoint_arn: "ChatStreamingEndpointARN", # required
    #       }
    #
    # @!attribute [rw] streaming_endpoint_arn
    #   The Amazon Resource Name (ARN) of the standard Amazon SNS topic. The
    #   Amazon Resource Name (ARN) of the streaming endpoint that is used to
    #   publish real-time message streaming for chat conversations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ChatStreamingConfiguration AWS API Documentation
    #
    class ChatStreamingConfiguration < Struct.new(
      :streaming_endpoint_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a contact.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the contact.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier for the contact.
    #   @return [String]
    #
    # @!attribute [rw] initial_contact_id
    #   If this contact is related to other contacts, this is the ID of the
    #   initial contact.
    #   @return [String]
    #
    # @!attribute [rw] previous_contact_id
    #   If this contact is not the first contact, this is the ID of the
    #   previous contact.
    #   @return [String]
    #
    # @!attribute [rw] initiation_method
    #   Indicates how the contact was initiated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the contact.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the contact.
    #   @return [String]
    #
    # @!attribute [rw] channel
    #   How the contact reached your contact center.
    #   @return [String]
    #
    # @!attribute [rw] queue_info
    #   If this contact was queued, this contains information about the
    #   queue.
    #   @return [Types::QueueInfo]
    #
    # @!attribute [rw] agent_info
    #   Information about the agent who accepted the contact.
    #   @return [Types::AgentInfo]
    #
    # @!attribute [rw] initiation_timestamp
    #   The date and time this contact was initiated, in UTC time. For
    #   `INBOUND`, this is when the contact arrived. For `OUTBOUND`, this is
    #   when the agent began dialing. For `CALLBACK`, this is when the
    #   callback contact was created. For `TRANSFER` and `QUEUE_TRANSFER`,
    #   this is when the transfer was initiated. For `API`, this is when the
    #   request arrived.
    #   @return [Time]
    #
    # @!attribute [rw] disconnect_timestamp
    #   The timestamp when the customer endpoint disconnected from Amazon
    #   Connect.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_timestamp
    #   The timestamp when contact was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] scheduled_timestamp
    #   The timestamp, in Unix epoch time format, at which to start running
    #   the inbound flow.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Contact AWS API Documentation
    #
    class Contact < Struct.new(
      :arn,
      :id,
      :initial_contact_id,
      :previous_contact_id,
      :initiation_method,
      :name,
      :description,
      :channel,
      :queue_info,
      :agent_info,
      :initiation_timestamp,
      :disconnect_timestamp,
      :last_update_timestamp,
      :scheduled_timestamp)
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
    # @!attribute [rw] state
    #   The type of contact flow.
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
      :state,
      :description,
      :content,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a contact flow module.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the contact flow module.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the contact flow module.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the contact flow module.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the contact flow module.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The type of contact flow module.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the contact flow module.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ContactFlowModule AWS API Documentation
    #
    class ContactFlowModule < Struct.new(
      :arn,
      :id,
      :name,
      :content,
      :description,
      :state,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a contact flow.
    #
    # @!attribute [rw] id
    #   The identifier of the contact flow module.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the contact flow module.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the contact flow module.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The type of contact flow module.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ContactFlowModuleSummary AWS API Documentation
    #
    class ContactFlowModuleSummary < Struct.new(
      :id,
      :arn,
      :name,
      :state)
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
    # @!attribute [rw] contact_flow_state
    #   The type of contact flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ContactFlowSummary AWS API Documentation
    #
    class ContactFlowSummary < Struct.new(
      :id,
      :arn,
      :name,
      :contact_flow_type,
      :contact_flow_state)
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

    # @note When making an API call, you may pass CreateAgentStatusRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         name: "AgentStatusName", # required
    #         description: "AgentStatusDescription",
    #         state: "ENABLED", # required, accepts ENABLED, DISABLED
    #         display_order: 1,
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the status.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the status.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the status.
    #   @return [String]
    #
    # @!attribute [rw] display_order
    #   The display order of the status.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateAgentStatusRequest AWS API Documentation
    #
    class CreateAgentStatusRequest < Struct.new(
      :instance_id,
      :name,
      :description,
      :state,
      :display_order,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_status_arn
    #   The Amazon Resource Name (ARN) of the agent status.
    #   @return [String]
    #
    # @!attribute [rw] agent_status_id
    #   The identifier of the agent status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateAgentStatusResponse AWS API Documentation
    #
    class CreateAgentStatusResponse < Struct.new(
      :agent_status_arn,
      :agent_status_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateContactFlowModuleRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         name: "ContactFlowModuleName", # required
    #         description: "ContactFlowModuleDescription",
    #         content: "ContactFlowModuleContent", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the contact flow module.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the contact flow module.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the contact flow module.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateContactFlowModuleRequest AWS API Documentation
    #
    class CreateContactFlowModuleRequest < Struct.new(
      :instance_id,
      :name,
      :description,
      :content,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the contact flow module.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the contact flow module.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateContactFlowModuleResponse AWS API Documentation
    #
    class CreateContactFlowModuleResponse < Struct.new(
      :id,
      :arn)
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

    # @note When making an API call, you may pass CreateHoursOfOperationRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         name: "CommonNameLength127", # required
    #         description: "HoursOfOperationDescription",
    #         time_zone: "TimeZone", # required
    #         config: [ # required
    #           {
    #             day: "SUNDAY", # required, accepts SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
    #             start_time: { # required
    #               hours: 1, # required
    #               minutes: 1, # required
    #             },
    #             end_time: { # required
    #               hours: 1, # required
    #               minutes: 1, # required
    #             },
    #           },
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the hours of operation.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the hours of operation.
    #   @return [String]
    #
    # @!attribute [rw] time_zone
    #   The time zone of the hours of operation.
    #   @return [String]
    #
    # @!attribute [rw] config
    #   Configuration information for the hours of operation: day, start
    #   time, and end time.
    #   @return [Array<Types::HoursOfOperationConfig>]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateHoursOfOperationRequest AWS API Documentation
    #
    class CreateHoursOfOperationRequest < Struct.new(
      :instance_id,
      :name,
      :description,
      :time_zone,
      :config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hours_of_operation_id
    #   The identifier for the hours of operation.
    #   @return [String]
    #
    # @!attribute [rw] hours_of_operation_arn
    #   The Amazon Resource Name (ARN) for the hours of operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateHoursOfOperationResponse AWS API Documentation
    #
    class CreateHoursOfOperationResponse < Struct.new(
      :hours_of_operation_id,
      :hours_of_operation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateInstanceRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         identity_management_type: "SAML", # required, accepts SAML, CONNECT_MANAGED, EXISTING_DIRECTORY
    #         instance_alias: "DirectoryAlias",
    #         directory_id: "DirectoryId",
    #         inbound_calls_enabled: false, # required
    #         outbound_calls_enabled: false, # required
    #       }
    #
    # @!attribute [rw] client_token
    #   The idempotency token.
    #   @return [String]
    #
    # @!attribute [rw] identity_management_type
    #   The type of identity management for your Amazon Connect users.
    #   @return [String]
    #
    # @!attribute [rw] instance_alias
    #   The name for your instance.
    #   @return [String]
    #
    # @!attribute [rw] directory_id
    #   The identifier for the directory.
    #   @return [String]
    #
    # @!attribute [rw] inbound_calls_enabled
    #   Your contact center handles incoming contacts.
    #   @return [Boolean]
    #
    # @!attribute [rw] outbound_calls_enabled
    #   Your contact center allows outbound calls.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateInstanceRequest AWS API Documentation
    #
    class CreateInstanceRequest < Struct.new(
      :client_token,
      :identity_management_type,
      :instance_alias,
      :directory_id,
      :inbound_calls_enabled,
      :outbound_calls_enabled)
      SENSITIVE = [:instance_alias]
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier for the instance.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateInstanceResponse AWS API Documentation
    #
    class CreateInstanceResponse < Struct.new(
      :id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateIntegrationAssociationRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         integration_type: "EVENT", # required, accepts EVENT, VOICE_ID, PINPOINT_APP, WISDOM_ASSISTANT, WISDOM_KNOWLEDGE_BASE
    #         integration_arn: "ARN", # required
    #         source_application_url: "URI",
    #         source_application_name: "SourceApplicationName",
    #         source_type: "SALESFORCE", # accepts SALESFORCE, ZENDESK
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] integration_type
    #   The type of information to be ingested.
    #   @return [String]
    #
    # @!attribute [rw] integration_arn
    #   The Amazon Resource Name (ARN) of the integration.
    #   @return [String]
    #
    # @!attribute [rw] source_application_url
    #   The URL for the external application. This field is only required
    #   for the EVENT integration type.
    #   @return [String]
    #
    # @!attribute [rw] source_application_name
    #   The name of the external application. This field is only required
    #   for the EVENT integration type.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of the data source. This field is only required for the
    #   EVENT integration type.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateIntegrationAssociationRequest AWS API Documentation
    #
    class CreateIntegrationAssociationRequest < Struct.new(
      :instance_id,
      :integration_type,
      :integration_arn,
      :source_application_url,
      :source_application_name,
      :source_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_association_id
    #   The identifier for the integration association.
    #   @return [String]
    #
    # @!attribute [rw] integration_association_arn
    #   The Amazon Resource Name (ARN) for the association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateIntegrationAssociationResponse AWS API Documentation
    #
    class CreateIntegrationAssociationResponse < Struct.new(
      :integration_association_id,
      :integration_association_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateQueueRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         name: "CommonNameLength127", # required
    #         description: "QueueDescription",
    #         outbound_caller_config: {
    #           outbound_caller_id_name: "OutboundCallerIdName",
    #           outbound_caller_id_number_id: "PhoneNumberId",
    #           outbound_flow_id: "ContactFlowId",
    #         },
    #         hours_of_operation_id: "HoursOfOperationId", # required
    #         max_contacts: 1,
    #         quick_connect_ids: ["QuickConnectId"],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the queue.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the queue.
    #   @return [String]
    #
    # @!attribute [rw] outbound_caller_config
    #   The outbound caller ID name, number, and outbound whisper flow.
    #   @return [Types::OutboundCallerConfig]
    #
    # @!attribute [rw] hours_of_operation_id
    #   The identifier for the hours of operation.
    #   @return [String]
    #
    # @!attribute [rw] max_contacts
    #   The maximum number of contacts that can be in the queue before it is
    #   considered full.
    #   @return [Integer]
    #
    # @!attribute [rw] quick_connect_ids
    #   The quick connects available to agents who are working the queue.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateQueueRequest AWS API Documentation
    #
    class CreateQueueRequest < Struct.new(
      :instance_id,
      :name,
      :description,
      :outbound_caller_config,
      :hours_of_operation_id,
      :max_contacts,
      :quick_connect_ids,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_arn
    #   The Amazon Resource Name (ARN) of the queue.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The identifier for the queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateQueueResponse AWS API Documentation
    #
    class CreateQueueResponse < Struct.new(
      :queue_arn,
      :queue_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateQuickConnectRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         name: "QuickConnectName", # required
    #         description: "QuickConnectDescription",
    #         quick_connect_config: { # required
    #           quick_connect_type: "USER", # required, accepts USER, QUEUE, PHONE_NUMBER
    #           user_config: {
    #             user_id: "UserId", # required
    #             contact_flow_id: "ContactFlowId", # required
    #           },
    #           queue_config: {
    #             queue_id: "QueueId", # required
    #             contact_flow_id: "ContactFlowId", # required
    #           },
    #           phone_config: {
    #             phone_number: "PhoneNumber", # required
    #           },
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the quick connect.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the quick connect.
    #   @return [String]
    #
    # @!attribute [rw] quick_connect_config
    #   Configuration settings for the quick connect.
    #   @return [Types::QuickConnectConfig]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateQuickConnectRequest AWS API Documentation
    #
    class CreateQuickConnectRequest < Struct.new(
      :instance_id,
      :name,
      :description,
      :quick_connect_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] quick_connect_arn
    #   The Amazon Resource Name (ARN) for the quick connect.
    #   @return [String]
    #
    # @!attribute [rw] quick_connect_id
    #   The identifier for the quick connect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateQuickConnectResponse AWS API Documentation
    #
    class CreateQuickConnectResponse < Struct.new(
      :quick_connect_arn,
      :quick_connect_id)
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
    #               channel: "VOICE", # required, accepts VOICE, CHAT, TASK
    #             },
    #             priority: 1, # required
    #             delay: 1, # required
    #           },
    #         ],
    #         media_concurrencies: [ # required
    #           {
    #             channel: "VOICE", # required, accepts VOICE, CHAT, TASK
    #             concurrency: 1, # required
    #           },
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    #   is added, the agent can make only outbound calls.
    #   @return [Array<Types::RoutingProfileQueueConfig>]
    #
    # @!attribute [rw] media_concurrencies
    #   The channels that agents can handle in the Contact Control Panel
    #   (CCP) for this routing profile.
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

    # @note When making an API call, you may pass CreateSecurityProfileRequest
    #   data as a hash:
    #
    #       {
    #         security_profile_name: "SecurityProfileName", # required
    #         description: "SecurityProfileDescription",
    #         permissions: ["SecurityProfilePermission"],
    #         instance_id: "InstanceId", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] security_profile_name
    #   The name of the security profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the security profile.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   Permissions assigned to the security profile.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateSecurityProfileRequest AWS API Documentation
    #
    class CreateSecurityProfileRequest < Struct.new(
      :security_profile_name,
      :description,
      :permissions,
      :instance_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_profile_id
    #   The identifier for the security profle.
    #   @return [String]
    #
    # @!attribute [rw] security_profile_arn
    #   The Amazon Resource Name (ARN) for the security profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateSecurityProfileResponse AWS API Documentation
    #
    class CreateSecurityProfileResponse < Struct.new(
      :security_profile_id,
      :security_profile_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateUseCaseRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         integration_association_id: "IntegrationAssociationId", # required
    #         use_case_type: "RULES_EVALUATION", # required, accepts RULES_EVALUATION, CONNECT_CAMPAIGNS
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] integration_association_id
    #   The identifier for the integration association.
    #   @return [String]
    #
    # @!attribute [rw] use_case_type
    #   The type of use case to associate to the integration association.
    #   Each integration association can have only one of each use case
    #   type.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateUseCaseRequest AWS API Documentation
    #
    class CreateUseCaseRequest < Struct.new(
      :instance_id,
      :integration_association_id,
      :use_case_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] use_case_id
    #   The identifier of the use case.
    #   @return [String]
    #
    # @!attribute [rw] use_case_arn
    #   The Amazon Resource Name (ARN) for the use case.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateUseCaseResponse AWS API Documentation
    #
    class CreateUseCaseResponse < Struct.new(
      :use_case_id,
      :use_case_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateUserHierarchyGroupRequest
    #   data as a hash:
    #
    #       {
    #         name: "HierarchyGroupName", # required
    #         parent_group_id: "HierarchyGroupId",
    #         instance_id: "InstanceId", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the user hierarchy group. Must not be more than 100
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] parent_group_id
    #   The identifier for the parent hierarchy group. The user hierarchy is
    #   created at level one if the parent group ID is null.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateUserHierarchyGroupRequest AWS API Documentation
    #
    class CreateUserHierarchyGroupRequest < Struct.new(
      :name,
      :parent_group_id,
      :instance_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hierarchy_group_id
    #   The identifier of the hierarchy group.
    #   @return [String]
    #
    # @!attribute [rw] hierarchy_group_arn
    #   The Amazon Resource Name (ARN) of the hierarchy group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateUserHierarchyGroupResponse AWS API Documentation
    #
    class CreateUserHierarchyGroupResponse < Struct.new(
      :hierarchy_group_id,
      :hierarchy_group_arn)
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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

    # @note When making an API call, you may pass CreateVocabularyRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         instance_id: "InstanceId", # required
    #         vocabulary_name: "VocabularyName", # required
    #         language_code: "ar-AE", # required, accepts ar-AE, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fr-CA, fr-FR, hi-IN, it-IT, ja-JP, ko-KR, pt-BR, pt-PT, zh-CN
    #         content: "VocabularyContent", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If a create request is received more
    #   than once with same client token, subsequent requests return the
    #   previous response without creating a vocabulary again.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_name
    #   A unique name of the custom vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the vocabulary entries. For a list of languages
    #   and their corresponding language codes, see [What is Amazon
    #   Transcribe?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the custom vocabulary in plain-text format with a
    #   table of values. Each row in the table represents a word or a
    #   phrase, described with `Phrase`, `IPA`, `SoundsLike`, and
    #   `DisplayAs` fields. Separate the fields with TAB characters. The
    #   size limit is 50KB. For more information, see [Create a custom
    #   vocabulary using a table][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html#create-vocabulary-table
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateVocabularyRequest AWS API Documentation
    #
    class CreateVocabularyRequest < Struct.new(
      :client_token,
      :instance_id,
      :vocabulary_name,
      :language_code,
      :content,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary_arn
    #   The Amazon Resource Name (ARN) of the custom vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_id
    #   The identifier of the custom vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the custom vocabulary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateVocabularyResponse AWS API Documentation
    #
    class CreateVocabularyResponse < Struct.new(
      :vocabulary_arn,
      :vocabulary_id,
      :state)
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

    # Contains information about a default vocabulary.
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the vocabulary entries. For a list of languages
    #   and their corresponding language codes, see [What is Amazon
    #   Transcribe?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_id
    #   The identifier of the custom vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_name
    #   A unique name of the custom vocabulary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DefaultVocabulary AWS API Documentation
    #
    class DefaultVocabulary < Struct.new(
      :instance_id,
      :language_code,
      :vocabulary_id,
      :vocabulary_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteContactFlowModuleRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         contact_flow_module_id: "ContactFlowModuleId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_module_id
    #   The identifier of the contact flow module.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteContactFlowModuleRequest AWS API Documentation
    #
    class DeleteContactFlowModuleRequest < Struct.new(
      :instance_id,
      :contact_flow_module_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteContactFlowModuleResponse AWS API Documentation
    #
    class DeleteContactFlowModuleResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteContactFlowRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         contact_flow_id: "ContactFlowId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the contact flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteContactFlowRequest AWS API Documentation
    #
    class DeleteContactFlowRequest < Struct.new(
      :instance_id,
      :contact_flow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteHoursOfOperationRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         hours_of_operation_id: "HoursOfOperationId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] hours_of_operation_id
    #   The identifier for the hours of operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteHoursOfOperationRequest AWS API Documentation
    #
    class DeleteHoursOfOperationRequest < Struct.new(
      :instance_id,
      :hours_of_operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteInstanceRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteInstanceRequest AWS API Documentation
    #
    class DeleteInstanceRequest < Struct.new(
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteIntegrationAssociationRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         integration_association_id: "IntegrationAssociationId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] integration_association_id
    #   The identifier for the integration association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteIntegrationAssociationRequest AWS API Documentation
    #
    class DeleteIntegrationAssociationRequest < Struct.new(
      :instance_id,
      :integration_association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteQuickConnectRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         quick_connect_id: "QuickConnectId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] quick_connect_id
    #   The identifier for the quick connect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteQuickConnectRequest AWS API Documentation
    #
    class DeleteQuickConnectRequest < Struct.new(
      :instance_id,
      :quick_connect_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSecurityProfileRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         security_profile_id: "SecurityProfileId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] security_profile_id
    #   The identifier for the security profle.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteSecurityProfileRequest AWS API Documentation
    #
    class DeleteSecurityProfileRequest < Struct.new(
      :instance_id,
      :security_profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteUseCaseRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         integration_association_id: "IntegrationAssociationId", # required
    #         use_case_id: "UseCaseId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] integration_association_id
    #   The identifier for the integration association.
    #   @return [String]
    #
    # @!attribute [rw] use_case_id
    #   The identifier for the use case.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteUseCaseRequest AWS API Documentation
    #
    class DeleteUseCaseRequest < Struct.new(
      :instance_id,
      :integration_association_id,
      :use_case_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteUserHierarchyGroupRequest
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteUserHierarchyGroupRequest AWS API Documentation
    #
    class DeleteUserHierarchyGroupRequest < Struct.new(
      :hierarchy_group_id,
      :instance_id)
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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

    # @note When making an API call, you may pass DeleteVocabularyRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         vocabulary_id: "VocabularyId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_id
    #   The identifier of the custom vocabulary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteVocabularyRequest AWS API Documentation
    #
    class DeleteVocabularyRequest < Struct.new(
      :instance_id,
      :vocabulary_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary_arn
    #   The Amazon Resource Name (ARN) of the custom vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_id
    #   The identifier of the custom vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the custom vocabulary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteVocabularyResponse AWS API Documentation
    #
    class DeleteVocabularyResponse < Struct.new(
      :vocabulary_arn,
      :vocabulary_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAgentStatusRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         agent_status_id: "AgentStatusId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] agent_status_id
    #   The identifier for the agent status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeAgentStatusRequest AWS API Documentation
    #
    class DescribeAgentStatusRequest < Struct.new(
      :instance_id,
      :agent_status_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_status
    #   The agent status.
    #   @return [Types::AgentStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeAgentStatusResponse AWS API Documentation
    #
    class DescribeAgentStatusResponse < Struct.new(
      :agent_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeContactFlowModuleRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         contact_flow_module_id: "ContactFlowModuleId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_module_id
    #   The identifier of the contact flow module.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeContactFlowModuleRequest AWS API Documentation
    #
    class DescribeContactFlowModuleRequest < Struct.new(
      :instance_id,
      :contact_flow_module_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_flow_module
    #   Information about the contact flow module.
    #   @return [Types::ContactFlowModule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeContactFlowModuleResponse AWS API Documentation
    #
    class DescribeContactFlowModuleResponse < Struct.new(
      :contact_flow_module)
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

    # @note When making an API call, you may pass DescribeContactRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         contact_id: "ContactId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_id
    #   The identifier of the contact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeContactRequest AWS API Documentation
    #
    class DescribeContactRequest < Struct.new(
      :instance_id,
      :contact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact
    #   Information about the contact.
    #   @return [Types::Contact]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeContactResponse AWS API Documentation
    #
    class DescribeContactResponse < Struct.new(
      :contact)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeHoursOfOperationRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         hours_of_operation_id: "HoursOfOperationId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] hours_of_operation_id
    #   The identifier for the hours of operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeHoursOfOperationRequest AWS API Documentation
    #
    class DescribeHoursOfOperationRequest < Struct.new(
      :instance_id,
      :hours_of_operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hours_of_operation
    #   The hours of operation.
    #   @return [Types::HoursOfOperation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeHoursOfOperationResponse AWS API Documentation
    #
    class DescribeHoursOfOperationResponse < Struct.new(
      :hours_of_operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeInstanceAttributeRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         attribute_type: "INBOUND_CALLS", # required, accepts INBOUND_CALLS, OUTBOUND_CALLS, CONTACTFLOW_LOGS, CONTACT_LENS, AUTO_RESOLVE_BEST_VOICES, USE_CUSTOM_TTS_VOICES, EARLY_MEDIA
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] attribute_type
    #   The type of attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeInstanceAttributeRequest AWS API Documentation
    #
    class DescribeInstanceAttributeRequest < Struct.new(
      :instance_id,
      :attribute_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attribute
    #   The type of attribute.
    #   @return [Types::Attribute]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeInstanceAttributeResponse AWS API Documentation
    #
    class DescribeInstanceAttributeResponse < Struct.new(
      :attribute)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeInstanceRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeInstanceRequest AWS API Documentation
    #
    class DescribeInstanceRequest < Struct.new(
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance
    #   The name of the instance.
    #   @return [Types::Instance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeInstanceResponse AWS API Documentation
    #
    class DescribeInstanceResponse < Struct.new(
      :instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeInstanceStorageConfigRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         association_id: "AssociationId", # required
    #         resource_type: "CHAT_TRANSCRIPTS", # required, accepts CHAT_TRANSCRIPTS, CALL_RECORDINGS, SCHEDULED_REPORTS, MEDIA_STREAMS, CONTACT_TRACE_RECORDS, AGENT_EVENTS
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The existing association identifier that uniquely identifies the
    #   resource type and storage config for the given instance ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   A valid resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeInstanceStorageConfigRequest AWS API Documentation
    #
    class DescribeInstanceStorageConfigRequest < Struct.new(
      :instance_id,
      :association_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_config
    #   A valid storage type.
    #   @return [Types::InstanceStorageConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeInstanceStorageConfigResponse AWS API Documentation
    #
    class DescribeInstanceStorageConfigResponse < Struct.new(
      :storage_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeQueueRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         queue_id: "QueueId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The identifier for the queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeQueueRequest AWS API Documentation
    #
    class DescribeQueueRequest < Struct.new(
      :instance_id,
      :queue_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue
    #   The name of the queue.
    #   @return [Types::Queue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeQueueResponse AWS API Documentation
    #
    class DescribeQueueResponse < Struct.new(
      :queue)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeQuickConnectRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         quick_connect_id: "QuickConnectId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] quick_connect_id
    #   The identifier for the quick connect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeQuickConnectRequest AWS API Documentation
    #
    class DescribeQuickConnectRequest < Struct.new(
      :instance_id,
      :quick_connect_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] quick_connect
    #   Information about the quick connect.
    #   @return [Types::QuickConnect]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeQuickConnectResponse AWS API Documentation
    #
    class DescribeQuickConnectResponse < Struct.new(
      :quick_connect)
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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

    # @note When making an API call, you may pass DescribeSecurityProfileRequest
    #   data as a hash:
    #
    #       {
    #         security_profile_id: "SecurityProfileId", # required
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] security_profile_id
    #   The identifier for the security profle.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeSecurityProfileRequest AWS API Documentation
    #
    class DescribeSecurityProfileRequest < Struct.new(
      :security_profile_id,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_profile
    #   The security profile.
    #   @return [Types::SecurityProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeSecurityProfileResponse AWS API Documentation
    #
    class DescribeSecurityProfileResponse < Struct.new(
      :security_profile)
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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

    # @note When making an API call, you may pass DescribeVocabularyRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         vocabulary_id: "VocabularyId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_id
    #   The identifier of the custom vocabulary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeVocabularyRequest AWS API Documentation
    #
    class DescribeVocabularyRequest < Struct.new(
      :instance_id,
      :vocabulary_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary
    #   A list of specific words that you want Contact Lens for Amazon
    #   Connect to recognize in your audio input. They are generally
    #   domain-specific words and phrases, words that Contact Lens is not
    #   recognizing, or proper nouns.
    #   @return [Types::Vocabulary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeVocabularyResponse AWS API Documentation
    #
    class DescribeVocabularyResponse < Struct.new(
      :vocabulary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Outbound calls to the destination number are not allowed.
    #
    # @!attribute [rw] message
    #   The message about the outbound calls.
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

    # @note When making an API call, you may pass DisassociateApprovedOriginRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         origin: "Origin", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   The domain URL of the integrated application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateApprovedOriginRequest AWS API Documentation
    #
    class DisassociateApprovedOriginRequest < Struct.new(
      :instance_id,
      :origin)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateBotRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         lex_bot: {
    #           name: "BotName",
    #           lex_region: "LexRegion",
    #         },
    #         lex_v2_bot: {
    #           alias_arn: "AliasArn",
    #         },
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] lex_bot
    #   Configuration information of an Amazon Lex bot.
    #   @return [Types::LexBot]
    #
    # @!attribute [rw] lex_v2_bot
    #   The Amazon Lex V2 bot to disassociate from the instance.
    #   @return [Types::LexV2Bot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateBotRequest AWS API Documentation
    #
    class DisassociateBotRequest < Struct.new(
      :instance_id,
      :lex_bot,
      :lex_v2_bot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateInstanceStorageConfigRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         association_id: "AssociationId", # required
    #         resource_type: "CHAT_TRANSCRIPTS", # required, accepts CHAT_TRANSCRIPTS, CALL_RECORDINGS, SCHEDULED_REPORTS, MEDIA_STREAMS, CONTACT_TRACE_RECORDS, AGENT_EVENTS
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The existing association identifier that uniquely identifies the
    #   resource type and storage config for the given instance ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   A valid resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateInstanceStorageConfigRequest AWS API Documentation
    #
    class DisassociateInstanceStorageConfigRequest < Struct.new(
      :instance_id,
      :association_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateLambdaFunctionRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         function_arn: "FunctionArn", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance..
    #   @return [String]
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of the Lambda function being
    #   disassociated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateLambdaFunctionRequest AWS API Documentation
    #
    class DisassociateLambdaFunctionRequest < Struct.new(
      :instance_id,
      :function_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateLexBotRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         bot_name: "BotName", # required
    #         lex_region: "LexRegion", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] bot_name
    #   The name of the Amazon Lex bot. Maximum character limit of 50.
    #   @return [String]
    #
    # @!attribute [rw] lex_region
    #   The Region in which the Amazon Lex bot has been created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateLexBotRequest AWS API Documentation
    #
    class DisassociateLexBotRequest < Struct.new(
      :instance_id,
      :bot_name,
      :lex_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateQueueQuickConnectsRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         queue_id: "QueueId", # required
    #         quick_connect_ids: ["QuickConnectId"], # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The identifier for the queue.
    #   @return [String]
    #
    # @!attribute [rw] quick_connect_ids
    #   The quick connects to disassociate from the queue.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateQueueQuickConnectsRequest AWS API Documentation
    #
    class DisassociateQueueQuickConnectsRequest < Struct.new(
      :instance_id,
      :queue_id,
      :quick_connect_ids)
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
    #             channel: "VOICE", # required, accepts VOICE, CHAT, TASK
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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

    # @note When making an API call, you may pass DisassociateSecurityKeyRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         association_id: "AssociationId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The existing association identifier that uniquely identifies the
    #   resource type and storage config for the given instance ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateSecurityKeyRequest AWS API Documentation
    #
    class DisassociateSecurityKeyRequest < Struct.new(
      :instance_id,
      :association_id)
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

    # The encryption configuration.
    #
    # @note When making an API call, you may pass EncryptionConfig
    #   data as a hash:
    #
    #       {
    #         encryption_type: "KMS", # required, accepts KMS
    #         key_id: "KeyId", # required
    #       }
    #
    # @!attribute [rw] encryption_type
    #   The type of encryption.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The full ARN of the encryption key.
    #
    #   <note markdown="1"> Be sure to provide the full ARN of the encryption key, not just the
    #   ID.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EncryptionConfig AWS API Documentation
    #
    class EncryptionConfig < Struct.new(
      :encryption_type,
      :key_id)
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
    #         channels: ["VOICE"], # accepts VOICE, CHAT, TASK
    #       }
    #
    # @!attribute [rw] queues
    #   The queues to use to filter the metrics. You should specify at least
    #   one queue, and can specify up to 100 queues per request. The
    #   `GetCurrentMetricsData` API in particular requires a queue when you
    #   include a `Filter` in your request.
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
    #           channels: ["VOICE"], # accepts VOICE, CHAT, TASK
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The queues, up to 100, or channels, to use to filter the metrics
    #   returned. Metric data is retrieved only for the resources associated
    #   with the queues or channels included in the filter. You can include
    #   both queue IDs and queue ARNs in the same request. VOICE, CHAT, and
    #   TASK channels are supported.
    #   @return [Types::Filters]
    #
    # @!attribute [rw] groupings
    #   The grouping applied to the metrics returned. For example, when
    #   grouped by `QUEUE`, the metrics returned apply to each queue rather
    #   than aggregated for all queues. If you group by `CHANNEL`, you
    #   should include a Channels filter. VOICE, CHAT, and TASK channels are
    #   supported.
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
    #     When you use groupings, Unit says SECONDS and the Value is
    #     returned in SECONDS.
    #
    #     When you do not use groupings, Unit says SECONDS but the Value is
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
    #   The maximum number of results to return per page.
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    #           channels: ["VOICE"], # accepts VOICE, CHAT, TASK
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    #   both queue IDs and queue ARNs in the same request. VOICE, CHAT, and
    #   TASK channels are supported.
    #
    #   <note markdown="1"> To filter by `Queues`, enter the queue ID/ARN, not the name of the
    #   queue.
    #
    #    </note>
    #   @return [Types::Filters]
    #
    # @!attribute [rw] groupings
    #   The grouping applied to the metrics returned. For example, when
    #   results are grouped by queue, the metrics returned are grouped by
    #   queue. The values returned apply to the metrics for each queue
    #   rather than aggregated for all queues.
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
    #   <note markdown="1"> This API does not support a contacts incoming metric (there's no
    #   CONTACTS\_INCOMING metric missing from the documented list).
    #
    #    </note>
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
    #   : You can include up to 20 SERVICE\_LEVEL metrics in a request.
    #
    #     Unit: PERCENT
    #
    #     Statistic: AVG
    #
    #     Threshold: For `ThresholdValue`, enter any whole number from 1 to
    #     604800 (inclusive), in seconds. For `Comparison`, you must enter
    #     `LT` (for "Less than").
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
    #   The maximum number of results to return per page.
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
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HierarchyGroup AWS API Documentation
    #
    class HierarchyGroup < Struct.new(
      :id,
      :arn,
      :name,
      :level_id,
      :hierarchy_path,
      :tags)
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

    # Contains information about the hierarchy level to update.
    #
    # @note When making an API call, you may pass HierarchyLevelUpdate
    #   data as a hash:
    #
    #       {
    #         name: "HierarchyLevelName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the user hierarchy level. Must not be more than 50
    #   characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HierarchyLevelUpdate AWS API Documentation
    #
    class HierarchyLevelUpdate < Struct.new(
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

    # Contains information about the level hierarchy to update.
    #
    # @note When making an API call, you may pass HierarchyStructureUpdate
    #   data as a hash:
    #
    #       {
    #         level_one: {
    #           name: "HierarchyLevelName", # required
    #         },
    #         level_two: {
    #           name: "HierarchyLevelName", # required
    #         },
    #         level_three: {
    #           name: "HierarchyLevelName", # required
    #         },
    #         level_four: {
    #           name: "HierarchyLevelName", # required
    #         },
    #         level_five: {
    #           name: "HierarchyLevelName", # required
    #         },
    #       }
    #
    # @!attribute [rw] level_one
    #   The update for level one.
    #   @return [Types::HierarchyLevelUpdate]
    #
    # @!attribute [rw] level_two
    #   The update for level two.
    #   @return [Types::HierarchyLevelUpdate]
    #
    # @!attribute [rw] level_three
    #   The update for level three.
    #   @return [Types::HierarchyLevelUpdate]
    #
    # @!attribute [rw] level_four
    #   The update for level four.
    #   @return [Types::HierarchyLevelUpdate]
    #
    # @!attribute [rw] level_five
    #   The update for level five.
    #   @return [Types::HierarchyLevelUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HierarchyStructureUpdate AWS API Documentation
    #
    class HierarchyStructureUpdate < Struct.new(
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

    # Information about of the hours of operation.
    #
    # @!attribute [rw] hours_of_operation_id
    #   The identifier for the hours of operation.
    #   @return [String]
    #
    # @!attribute [rw] hours_of_operation_arn
    #   The Amazon Resource Name (ARN) for the hours of operation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the hours of operation.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the hours of operation.
    #   @return [String]
    #
    # @!attribute [rw] time_zone
    #   The time zone for the hours of operation.
    #   @return [String]
    #
    # @!attribute [rw] config
    #   Configuration information for the hours of operation.
    #   @return [Array<Types::HoursOfOperationConfig>]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HoursOfOperation AWS API Documentation
    #
    class HoursOfOperation < Struct.new(
      :hours_of_operation_id,
      :hours_of_operation_arn,
      :name,
      :description,
      :time_zone,
      :config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the hours of operation.
    #
    # @note When making an API call, you may pass HoursOfOperationConfig
    #   data as a hash:
    #
    #       {
    #         day: "SUNDAY", # required, accepts SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
    #         start_time: { # required
    #           hours: 1, # required
    #           minutes: 1, # required
    #         },
    #         end_time: { # required
    #           hours: 1, # required
    #           minutes: 1, # required
    #         },
    #       }
    #
    # @!attribute [rw] day
    #   The day that the hours of operation applies to.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time that your contact center opens.
    #   @return [Types::HoursOfOperationTimeSlice]
    #
    # @!attribute [rw] end_time
    #   The end time that your contact center closes.
    #   @return [Types::HoursOfOperationTimeSlice]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HoursOfOperationConfig AWS API Documentation
    #
    class HoursOfOperationConfig < Struct.new(
      :day,
      :start_time,
      :end_time)
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

    # The start time or end time for an hours of operation.
    #
    # @note When making an API call, you may pass HoursOfOperationTimeSlice
    #   data as a hash:
    #
    #       {
    #         hours: 1, # required
    #         minutes: 1, # required
    #       }
    #
    # @!attribute [rw] hours
    #   The hours.
    #   @return [Integer]
    #
    # @!attribute [rw] minutes
    #   The minutes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HoursOfOperationTimeSlice AWS API Documentation
    #
    class HoursOfOperationTimeSlice < Struct.new(
      :hours,
      :minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # An entity with the same name already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/IdempotencyException AWS API Documentation
    #
    class IdempotencyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Connect instance.
    #
    # @!attribute [rw] id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the instance.
    #   @return [String]
    #
    # @!attribute [rw] identity_management_type
    #   The identity management type.
    #   @return [String]
    #
    # @!attribute [rw] instance_alias
    #   The alias of instance.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] service_role
    #   The service role of the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_status
    #   The state of the instance.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Relevant details why the instance was not successfully created.
    #   @return [Types::InstanceStatusReason]
    #
    # @!attribute [rw] inbound_calls_enabled
    #   Whether inbound calls are enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] outbound_calls_enabled
    #   Whether outbound calls are enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Instance AWS API Documentation
    #
    class Instance < Struct.new(
      :id,
      :arn,
      :identity_management_type,
      :instance_alias,
      :created_time,
      :service_role,
      :instance_status,
      :status_reason,
      :inbound_calls_enabled,
      :outbound_calls_enabled)
      SENSITIVE = [:instance_alias]
      include Aws::Structure
    end

    # Relevant details why the instance was not successfully created.
    #
    # @!attribute [rw] message
    #   The message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/InstanceStatusReason AWS API Documentation
    #
    class InstanceStatusReason < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The storage configuration for the instance.
    #
    # @note When making an API call, you may pass InstanceStorageConfig
    #   data as a hash:
    #
    #       {
    #         association_id: "AssociationId",
    #         storage_type: "S3", # required, accepts S3, KINESIS_VIDEO_STREAM, KINESIS_STREAM, KINESIS_FIREHOSE
    #         s3_config: {
    #           bucket_name: "BucketName", # required
    #           bucket_prefix: "Prefix", # required
    #           encryption_config: {
    #             encryption_type: "KMS", # required, accepts KMS
    #             key_id: "KeyId", # required
    #           },
    #         },
    #         kinesis_video_stream_config: {
    #           prefix: "Prefix", # required
    #           retention_period_hours: 1, # required
    #           encryption_config: { # required
    #             encryption_type: "KMS", # required, accepts KMS
    #             key_id: "KeyId", # required
    #           },
    #         },
    #         kinesis_stream_config: {
    #           stream_arn: "ARN", # required
    #         },
    #         kinesis_firehose_config: {
    #           firehose_arn: "ARN", # required
    #         },
    #       }
    #
    # @!attribute [rw] association_id
    #   The existing association identifier that uniquely identifies the
    #   resource type and storage config for the given instance ID.
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   A valid storage type.
    #   @return [String]
    #
    # @!attribute [rw] s3_config
    #   The S3 bucket configuration.
    #   @return [Types::S3Config]
    #
    # @!attribute [rw] kinesis_video_stream_config
    #   The configuration of the Kinesis video stream.
    #   @return [Types::KinesisVideoStreamConfig]
    #
    # @!attribute [rw] kinesis_stream_config
    #   The configuration of the Kinesis data stream.
    #   @return [Types::KinesisStreamConfig]
    #
    # @!attribute [rw] kinesis_firehose_config
    #   The configuration of the Kinesis Firehose delivery stream.
    #   @return [Types::KinesisFirehoseConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/InstanceStorageConfig AWS API Documentation
    #
    class InstanceStorageConfig < Struct.new(
      :association_id,
      :storage_type,
      :s3_config,
      :kinesis_video_stream_config,
      :kinesis_stream_config,
      :kinesis_firehose_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the instance.
    #
    # @!attribute [rw] id
    #   The identifier of the instance.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the instance.
    #   @return [String]
    #
    # @!attribute [rw] identity_management_type
    #   The identity management type of the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_alias
    #   The alias of the instance.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] service_role
    #   The service role of the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_status
    #   The state of the instance.
    #   @return [String]
    #
    # @!attribute [rw] inbound_calls_enabled
    #   Whether inbound calls are enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] outbound_calls_enabled
    #   Whether outbound calls are enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/InstanceSummary AWS API Documentation
    #
    class InstanceSummary < Struct.new(
      :id,
      :arn,
      :identity_management_type,
      :instance_alias,
      :created_time,
      :service_role,
      :instance_status,
      :inbound_calls_enabled,
      :outbound_calls_enabled)
      SENSITIVE = [:instance_alias]
      include Aws::Structure
    end

    # Contains summary information about the associated AppIntegrations.
    #
    # @!attribute [rw] integration_association_id
    #   The identifier for the AppIntegration association.
    #   @return [String]
    #
    # @!attribute [rw] integration_association_arn
    #   The Amazon Resource Name (ARN) for the AppIntegration association.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] integration_type
    #   The integration type.
    #   @return [String]
    #
    # @!attribute [rw] integration_arn
    #   The Amazon Resource Name (ARN) for the AppIntegration.
    #   @return [String]
    #
    # @!attribute [rw] source_application_url
    #   The URL for the external application.
    #   @return [String]
    #
    # @!attribute [rw] source_application_name
    #   The user-provided, friendly name for the external application.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The name of the source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/IntegrationAssociationSummary AWS API Documentation
    #
    class IntegrationAssociationSummary < Struct.new(
      :integration_association_id,
      :integration_association_arn,
      :instance_id,
      :integration_type,
      :integration_arn,
      :source_application_url,
      :source_application_name,
      :source_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request processing failed because of an error or failure with the
    # service.
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

    # The problems with the module. Please fix before trying again.
    #
    # @!attribute [rw] problems
    #   @return [Array<Types::ProblemDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/InvalidContactFlowModuleException AWS API Documentation
    #
    class InvalidContactFlowModuleException < Struct.new(
      :problems)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more of the specified parameters are not valid.
    #
    # @!attribute [rw] message
    #   The message about the parameters.
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
    #   The message about the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information of a Kinesis Data Firehose delivery stream.
    #
    # @note When making an API call, you may pass KinesisFirehoseConfig
    #   data as a hash:
    #
    #       {
    #         firehose_arn: "ARN", # required
    #       }
    #
    # @!attribute [rw] firehose_arn
    #   The Amazon Resource Name (ARN) of the delivery stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/KinesisFirehoseConfig AWS API Documentation
    #
    class KinesisFirehoseConfig < Struct.new(
      :firehose_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information of a Kinesis data stream.
    #
    # @note When making an API call, you may pass KinesisStreamConfig
    #   data as a hash:
    #
    #       {
    #         stream_arn: "ARN", # required
    #       }
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the data stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/KinesisStreamConfig AWS API Documentation
    #
    class KinesisStreamConfig < Struct.new(
      :stream_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information of a Kinesis video stream.
    #
    # @note When making an API call, you may pass KinesisVideoStreamConfig
    #   data as a hash:
    #
    #       {
    #         prefix: "Prefix", # required
    #         retention_period_hours: 1, # required
    #         encryption_config: { # required
    #           encryption_type: "KMS", # required, accepts KMS
    #           key_id: "KeyId", # required
    #         },
    #       }
    #
    # @!attribute [rw] prefix
    #   The prefix of the video stream.
    #   @return [String]
    #
    # @!attribute [rw] retention_period_hours
    #   The number of hours data is retained in the stream. Kinesis Video
    #   Streams retains the data in a data store that is associated with the
    #   stream.
    #
    #   The default value is 0, indicating that the stream does not persist
    #   data.
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_config
    #   The encryption configuration.
    #   @return [Types::EncryptionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/KinesisVideoStreamConfig AWS API Documentation
    #
    class KinesisVideoStreamConfig < Struct.new(
      :prefix,
      :retention_period_hours,
      :encryption_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information of an Amazon Lex bot.
    #
    # @note When making an API call, you may pass LexBot
    #   data as a hash:
    #
    #       {
    #         name: "BotName",
    #         lex_region: "LexRegion",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Amazon Lex bot.
    #   @return [String]
    #
    # @!attribute [rw] lex_region
    #   The Region that the Amazon Lex bot was created in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/LexBot AWS API Documentation
    #
    class LexBot < Struct.new(
      :name,
      :lex_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information of an Amazon Lex or Amazon Lex V2 bot.
    #
    # @!attribute [rw] lex_bot
    #   Configuration information of an Amazon Lex bot.
    #   @return [Types::LexBot]
    #
    # @!attribute [rw] lex_v2_bot
    #   Configuration information of an Amazon Lex V2 bot.
    #   @return [Types::LexV2Bot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/LexBotConfig AWS API Documentation
    #
    class LexBotConfig < Struct.new(
      :lex_bot,
      :lex_v2_bot)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information of an Amazon Lex V2 bot.
    #
    # @note When making an API call, you may pass LexV2Bot
    #   data as a hash:
    #
    #       {
    #         alias_arn: "AliasArn",
    #       }
    #
    # @!attribute [rw] alias_arn
    #   The Amazon Resource Name (ARN) of the Amazon Lex V2 bot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/LexV2Bot AWS API Documentation
    #
    class LexV2Bot < Struct.new(
      :alias_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The allowed limit for the resource has been exceeded.
    #
    # @!attribute [rw] message
    #   The message about the limit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAgentStatusRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #         agent_status_types: ["ROUTABLE"], # accepts ROUTABLE, CUSTOM, OFFLINE
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    # @!attribute [rw] agent_status_types
    #   Available agent status types.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListAgentStatusRequest AWS API Documentation
    #
    class ListAgentStatusRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :agent_status_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] agent_status_summary_list
    #   A summary of agent statuses.
    #   @return [Array<Types::AgentStatusSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListAgentStatusResponse AWS API Documentation
    #
    class ListAgentStatusResponse < Struct.new(
      :next_token,
      :agent_status_summary_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListApprovedOriginsRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListApprovedOriginsRequest AWS API Documentation
    #
    class ListApprovedOriginsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origins
    #   The approved origins.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListApprovedOriginsResponse AWS API Documentation
    #
    class ListApprovedOriginsResponse < Struct.new(
      :origins,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBotsRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #         lex_version: "V1", # required, accepts V1, V2
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    # @!attribute [rw] lex_version
    #   The version of Amazon Lex or Amazon Lex V2.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListBotsRequest AWS API Documentation
    #
    class ListBotsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :lex_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lex_bots
    #   The names and Regions of the Amazon Lex or Amazon Lex V2 bots
    #   associated with the specified instance.
    #   @return [Array<Types::LexBotConfig>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListBotsResponse AWS API Documentation
    #
    class ListBotsResponse < Struct.new(
      :lex_bots,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListContactFlowModulesRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #         contact_flow_module_state: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    # @!attribute [rw] contact_flow_module_state
    #   The state of the contact flow module.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListContactFlowModulesRequest AWS API Documentation
    #
    class ListContactFlowModulesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :contact_flow_module_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_flow_modules_summary_list
    #   Information about the contact flow module.
    #   @return [Array<Types::ContactFlowModuleSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListContactFlowModulesResponse AWS API Documentation
    #
    class ListContactFlowModulesResponse < Struct.new(
      :contact_flow_modules_summary_list,
      :next_token)
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    #   The maximum number of results to return per page.
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

    # @note When making an API call, you may pass ListContactReferencesRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         contact_id: "ContactId", # required
    #         reference_types: ["URL"], # required, accepts URL, ATTACHMENT
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_id
    #   The identifier of the initial contact.
    #   @return [String]
    #
    # @!attribute [rw] reference_types
    #   The type of reference.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    #   This is not expected to be set, because the value returned in the
    #   previous response is always null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListContactReferencesRequest AWS API Documentation
    #
    class ListContactReferencesRequest < Struct.new(
      :instance_id,
      :contact_id,
      :reference_types,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reference_summary_list
    #   Information about the contact flows.
    #   @return [Array<Types::ReferenceSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #
    #   This is always returned as null in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListContactReferencesResponse AWS API Documentation
    #
    class ListContactReferencesResponse < Struct.new(
      :reference_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDefaultVocabulariesRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         language_code: "ar-AE", # accepts ar-AE, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fr-CA, fr-FR, hi-IN, it-IT, ja-JP, ko-KR, pt-BR, pt-PT, zh-CN
    #         max_results: 1,
    #         next_token: "VocabularyNextToken",
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the vocabulary entries. For a list of languages
    #   and their corresponding language codes, see [What is Amazon
    #   Transcribe?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListDefaultVocabulariesRequest AWS API Documentation
    #
    class ListDefaultVocabulariesRequest < Struct.new(
      :instance_id,
      :language_code,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] default_vocabulary_list
    #   A list of default vocabularies.
    #   @return [Array<Types::DefaultVocabulary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListDefaultVocabulariesResponse AWS API Documentation
    #
    class ListDefaultVocabulariesResponse < Struct.new(
      :default_vocabulary_list,
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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

    # @note When making an API call, you may pass ListInstanceAttributesRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListInstanceAttributesRequest AWS API Documentation
    #
    class ListInstanceAttributesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   The attribute types.
    #   @return [Array<Types::Attribute>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListInstanceAttributesResponse AWS API Documentation
    #
    class ListInstanceAttributesResponse < Struct.new(
      :attributes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInstanceStorageConfigsRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         resource_type: "CHAT_TRANSCRIPTS", # required, accepts CHAT_TRANSCRIPTS, CALL_RECORDINGS, SCHEDULED_REPORTS, MEDIA_STREAMS, CONTACT_TRACE_RECORDS, AGENT_EVENTS
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   A valid resource type.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListInstanceStorageConfigsRequest AWS API Documentation
    #
    class ListInstanceStorageConfigsRequest < Struct.new(
      :instance_id,
      :resource_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_configs
    #   A valid storage type.
    #   @return [Array<Types::InstanceStorageConfig>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListInstanceStorageConfigsResponse AWS API Documentation
    #
    class ListInstanceStorageConfigsResponse < Struct.new(
      :storage_configs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInstancesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListInstancesRequest AWS API Documentation
    #
    class ListInstancesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_summary_list
    #   Information about the instances.
    #   @return [Array<Types::InstanceSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListInstancesResponse AWS API Documentation
    #
    class ListInstancesResponse < Struct.new(
      :instance_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListIntegrationAssociationsRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         integration_type: "EVENT", # accepts EVENT, VOICE_ID, PINPOINT_APP, WISDOM_ASSISTANT, WISDOM_KNOWLEDGE_BASE
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] integration_type
    #   The integration type.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListIntegrationAssociationsRequest AWS API Documentation
    #
    class ListIntegrationAssociationsRequest < Struct.new(
      :instance_id,
      :integration_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_association_summary_list
    #   The associations.
    #   @return [Array<Types::IntegrationAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListIntegrationAssociationsResponse AWS API Documentation
    #
    class ListIntegrationAssociationsResponse < Struct.new(
      :integration_association_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListLambdaFunctionsRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListLambdaFunctionsRequest AWS API Documentation
    #
    class ListLambdaFunctionsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lambda_functions
    #   The Lambdafunction ARNs associated with the specified instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListLambdaFunctionsResponse AWS API Documentation
    #
    class ListLambdaFunctionsResponse < Struct.new(
      :lambda_functions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListLexBotsRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page. If no value is
    #   specified, the default is 10.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListLexBotsRequest AWS API Documentation
    #
    class ListLexBotsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lex_bots
    #   The names and Regions of the Amazon Lex bots associated with the
    #   specified instance.
    #   @return [Array<Types::LexBot>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListLexBotsResponse AWS API Documentation
    #
    class ListLexBotsResponse < Struct.new(
      :lex_bots,
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    #   The maximum number of results to return per page.
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

    # @note When making an API call, you may pass ListQueueQuickConnectsRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         queue_id: "QueueId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The identifier for the queue.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListQueueQuickConnectsRequest AWS API Documentation
    #
    class ListQueueQuickConnectsRequest < Struct.new(
      :instance_id,
      :queue_id,
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
    # @!attribute [rw] quick_connect_summary_list
    #   Information about the quick connects.
    #   @return [Array<Types::QuickConnectSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListQueueQuickConnectsResponse AWS API Documentation
    #
    class ListQueueQuickConnectsResponse < Struct.new(
      :next_token,
      :quick_connect_summary_list)
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    #   The maximum number of results to return per page.
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

    # @note When making an API call, you may pass ListQuickConnectsRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #         quick_connect_types: ["USER"], # accepts USER, QUEUE, PHONE_NUMBER
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    # @!attribute [rw] quick_connect_types
    #   The type of quick connect. In the Amazon Connect console, when you
    #   create a quick connect, you are prompted to assign one of the
    #   following types: Agent (USER), External (PHONE\_NUMBER), or Queue
    #   (QUEUE).
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListQuickConnectsRequest AWS API Documentation
    #
    class ListQuickConnectsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :quick_connect_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] quick_connect_summary_list
    #   Information about the quick connects.
    #   @return [Array<Types::QuickConnectSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListQuickConnectsResponse AWS API Documentation
    #
    class ListQuickConnectsResponse < Struct.new(
      :quick_connect_summary_list,
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    #   The maximum number of results to return per page.
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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

    # @note When making an API call, you may pass ListSecurityKeysRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListSecurityKeysRequest AWS API Documentation
    #
    class ListSecurityKeysRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_keys
    #   The security keys.
    #   @return [Array<Types::SecurityKey>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListSecurityKeysResponse AWS API Documentation
    #
    class ListSecurityKeysResponse < Struct.new(
      :security_keys,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSecurityProfilePermissionsRequest
    #   data as a hash:
    #
    #       {
    #         security_profile_id: "SecurityProfileId", # required
    #         instance_id: "InstanceId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] security_profile_id
    #   The identifier for the security profle.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListSecurityProfilePermissionsRequest AWS API Documentation
    #
    class ListSecurityProfilePermissionsRequest < Struct.new(
      :security_profile_id,
      :instance_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permissions
    #   The permissions granted to the security profile.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListSecurityProfilePermissionsResponse AWS API Documentation
    #
    class ListSecurityProfilePermissionsResponse < Struct.new(
      :permissions,
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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

    # Provides summary information about the use cases for the specified
    # integration association.
    #
    # @note When making an API call, you may pass ListUseCasesRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         integration_association_id: "IntegrationAssociationId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] integration_association_id
    #   The identifier for the integration association.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUseCasesRequest AWS API Documentation
    #
    class ListUseCasesRequest < Struct.new(
      :instance_id,
      :integration_association_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] use_case_summary_list
    #   The use cases.
    #   @return [Array<Types::UseCase>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUseCasesResponse AWS API Documentation
    #
    class ListUseCasesResponse < Struct.new(
      :use_case_summary_list,
      :next_token)
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    #         channel: "VOICE", # required, accepts VOICE, CHAT, TASK
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
    #
    #   Valid Range for `VOICE`\: Minimum value of 1. Maximum value of 1.
    #
    #   Valid Range for `CHAT`\: Minimum value of 1. Maximum value of 10.
    #
    #   Valid Range for `TASK`\: Minimum value of 1. Maximum value of 10.
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

    # The outbound caller ID name, number, and outbound whisper flow.
    #
    # @note When making an API call, you may pass OutboundCallerConfig
    #   data as a hash:
    #
    #       {
    #         outbound_caller_id_name: "OutboundCallerIdName",
    #         outbound_caller_id_number_id: "PhoneNumberId",
    #         outbound_flow_id: "ContactFlowId",
    #       }
    #
    # @!attribute [rw] outbound_caller_id_name
    #   The caller ID name.
    #   @return [String]
    #
    # @!attribute [rw] outbound_caller_id_number_id
    #   The caller ID number.
    #   @return [String]
    #
    # @!attribute [rw] outbound_flow_id
    #   The outbound whisper flow to be used during an outbound call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/OutboundCallerConfig AWS API Documentation
    #
    class OutboundCallerConfig < Struct.new(
      :outbound_caller_id_name,
      :outbound_caller_id_number_id,
      :outbound_flow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The contact is not permitted.
    #
    # @!attribute [rw] message
    #   The message about the contact.
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

    # Contains information about a phone number for a quick connect.
    #
    # @note When making an API call, you may pass PhoneNumberQuickConnectConfig
    #   data as a hash:
    #
    #       {
    #         phone_number: "PhoneNumber", # required
    #       }
    #
    # @!attribute [rw] phone_number
    #   The phone number in E.164 format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/PhoneNumberQuickConnectConfig AWS API Documentation
    #
    class PhoneNumberQuickConnectConfig < Struct.new(
      :phone_number)
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

    # Contains information about a queue.
    #
    # @!attribute [rw] name
    #   The name of the queue.
    #   @return [String]
    #
    # @!attribute [rw] queue_arn
    #   The Amazon Resource Name (ARN) for the queue.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The identifier for the queue.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the queue.
    #   @return [String]
    #
    # @!attribute [rw] outbound_caller_config
    #   The outbound caller ID name, number, and outbound whisper flow.
    #   @return [Types::OutboundCallerConfig]
    #
    # @!attribute [rw] hours_of_operation_id
    #   The identifier for the hours of operation.
    #   @return [String]
    #
    # @!attribute [rw] max_contacts
    #   The maximum number of contacts that can be in the queue before it is
    #   considered full.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the queue.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Queue AWS API Documentation
    #
    class Queue < Struct.new(
      :name,
      :queue_arn,
      :queue_id,
      :description,
      :outbound_caller_config,
      :hours_of_operation_id,
      :max_contacts,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # If this contact was queued, this contains information about the queue.
    #
    # @!attribute [rw] id
    #   The identifier of the agent who accepted the contact.
    #   @return [String]
    #
    # @!attribute [rw] enqueue_timestamp
    #   The timestamp when the contact was added to the queue.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/QueueInfo AWS API Documentation
    #
    class QueueInfo < Struct.new(
      :id,
      :enqueue_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a queue for a quick connect. The contact
    # flow must be of type Transfer to Queue.
    #
    # @note When making an API call, you may pass QueueQuickConnectConfig
    #   data as a hash:
    #
    #       {
    #         queue_id: "QueueId", # required
    #         contact_flow_id: "ContactFlowId", # required
    #       }
    #
    # @!attribute [rw] queue_id
    #   The identifier for the queue.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the contact flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/QueueQuickConnectConfig AWS API Documentation
    #
    class QueueQuickConnectConfig < Struct.new(
      :queue_id,
      :contact_flow_id)
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

    # Contains information about a quick connect.
    #
    # @!attribute [rw] quick_connect_arn
    #   The Amazon Resource Name (ARN) of the quick connect.
    #   @return [String]
    #
    # @!attribute [rw] quick_connect_id
    #   The identifier for the quick connect.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the quick connect.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] quick_connect_config
    #   Contains information about the quick connect.
    #   @return [Types::QuickConnectConfig]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/QuickConnect AWS API Documentation
    #
    class QuickConnect < Struct.new(
      :quick_connect_arn,
      :quick_connect_id,
      :name,
      :description,
      :quick_connect_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration settings for a quick connect.
    #
    # @note When making an API call, you may pass QuickConnectConfig
    #   data as a hash:
    #
    #       {
    #         quick_connect_type: "USER", # required, accepts USER, QUEUE, PHONE_NUMBER
    #         user_config: {
    #           user_id: "UserId", # required
    #           contact_flow_id: "ContactFlowId", # required
    #         },
    #         queue_config: {
    #           queue_id: "QueueId", # required
    #           contact_flow_id: "ContactFlowId", # required
    #         },
    #         phone_config: {
    #           phone_number: "PhoneNumber", # required
    #         },
    #       }
    #
    # @!attribute [rw] quick_connect_type
    #   The type of quick connect. In the Amazon Connect console, when you
    #   create a quick connect, you are prompted to assign one of the
    #   following types: Agent (USER), External (PHONE\_NUMBER), or Queue
    #   (QUEUE).
    #   @return [String]
    #
    # @!attribute [rw] user_config
    #   The user configuration. This is required only if QuickConnectType is
    #   USER.
    #   @return [Types::UserQuickConnectConfig]
    #
    # @!attribute [rw] queue_config
    #   The queue configuration. This is required only if QuickConnectType
    #   is QUEUE.
    #   @return [Types::QueueQuickConnectConfig]
    #
    # @!attribute [rw] phone_config
    #   The phone configuration. This is required only if QuickConnectType
    #   is PHONE\_NUMBER.
    #   @return [Types::PhoneNumberQuickConnectConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/QuickConnectConfig AWS API Documentation
    #
    class QuickConnectConfig < Struct.new(
      :quick_connect_type,
      :user_config,
      :queue_config,
      :phone_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a quick connect.
    #
    # @!attribute [rw] id
    #   The identifier for the quick connect.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the quick connect.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the quick connect.
    #   @return [String]
    #
    # @!attribute [rw] quick_connect_type
    #   The type of quick connect. In the Amazon Connect console, when you
    #   create a quick connect, you are prompted to assign one of the
    #   following types: Agent (USER), External (PHONE\_NUMBER), or Queue
    #   (QUEUE).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/QuickConnectSummary AWS API Documentation
    #
    class QuickConnectSummary < Struct.new(
      :id,
      :arn,
      :name,
      :quick_connect_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A link that an agent selects to complete a given task. You can have up
    # to 4,096 UTF-8 bytes across all references for a contact.
    #
    # @note When making an API call, you may pass Reference
    #   data as a hash:
    #
    #       {
    #         value: "ReferenceValue", # required
    #         type: "URL", # required, accepts URL, ATTACHMENT
    #       }
    #
    # @!attribute [rw] value
    #   A valid value for the reference. For example, for a URL reference, a
    #   formatted URL that is displayed to an agent in the Contact Control
    #   Panel (CCP).
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the reference. Only `URL` type can be added or updated
    #   on a contact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Reference AWS API Documentation
    #
    class Reference < Struct.new(
      :value,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a reference. `ReferenceSummary`
    # contains only one non null field between the URL and attachment based
    # on the reference type.
    #
    # @note ReferenceSummary is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ReferenceSummary corresponding to the set member.
    #
    # @!attribute [rw] url
    #   Information about the URL reference if the `referenceType` is `URL`.
    #   Otherwise, null.
    #   @return [Types::UrlReference]
    #
    # @!attribute [rw] attachment
    #   Information about the attachment reference if the `referenceType` is
    #   `ATTACHMENT`. Otherwise, null.
    #   @return [Types::AttachmentReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ReferenceSummary AWS API Documentation
    #
    class ReferenceSummary < Struct.new(
      :url,
      :attachment,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Url < ReferenceSummary; end
      class Attachment < ReferenceSummary; end
      class Unknown < ReferenceSummary; end
    end

    # A resource already has that name.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ResourceConflictException AWS API Documentation
    #
    class ResourceConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # That resource is already in use. Please try another.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier for the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message,
      :resource_type,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found.
    #
    # @!attribute [rw] message
    #   The message about the resource.
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    #           channel: "VOICE", # required, accepts VOICE, CHAT, TASK
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
    #   The identifier for the queue.
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
    #         channel: "VOICE", # required, accepts VOICE, CHAT, TASK
    #       }
    #
    # @!attribute [rw] queue_id
    #   The identifier for the queue.
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

    # Information about the Amazon Simple Storage Service (Amazon S3)
    # storage type.
    #
    # @note When making an API call, you may pass S3Config
    #   data as a hash:
    #
    #       {
    #         bucket_name: "BucketName", # required
    #         bucket_prefix: "Prefix", # required
    #         encryption_config: {
    #           encryption_type: "KMS", # required, accepts KMS
    #           key_id: "KeyId", # required
    #         },
    #       }
    #
    # @!attribute [rw] bucket_name
    #   The S3 bucket name.
    #   @return [String]
    #
    # @!attribute [rw] bucket_prefix
    #   The S3 bucket prefix.
    #   @return [String]
    #
    # @!attribute [rw] encryption_config
    #   The Amazon S3 encryption configuration.
    #   @return [Types::EncryptionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/S3Config AWS API Documentation
    #
    class S3Config < Struct.new(
      :bucket_name,
      :bucket_prefix,
      :encryption_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchVocabulariesRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         max_results: 1,
    #         next_token: "VocabularyNextToken",
    #         state: "CREATION_IN_PROGRESS", # accepts CREATION_IN_PROGRESS, ACTIVE, CREATION_FAILED, DELETE_IN_PROGRESS
    #         name_starts_with: "VocabularyName",
    #         language_code: "ar-AE", # accepts ar-AE, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fr-CA, fr-FR, hi-IN, it-IT, ja-JP, ko-KR, pt-BR, pt-PT, zh-CN
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the custom vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] name_starts_with
    #   The starting pattern of the name of the vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the vocabulary entries. For a list of languages
    #   and their corresponding language codes, see [What is Amazon
    #   Transcribe?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchVocabulariesRequest AWS API Documentation
    #
    class SearchVocabulariesRequest < Struct.new(
      :instance_id,
      :max_results,
      :next_token,
      :state,
      :name_starts_with,
      :language_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary_summary_list
    #   The list of the available custom vocabularies.
    #   @return [Array<Types::VocabularySummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchVocabulariesResponse AWS API Documentation
    #
    class SearchVocabulariesResponse < Struct.new(
      :vocabulary_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information of the security key.
    #
    # @!attribute [rw] association_id
    #   The existing association identifier that uniquely identifies the
    #   resource type and storage config for the given instance ID.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The key of the security key.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When the security key was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SecurityKey AWS API Documentation
    #
    class SecurityKey < Struct.new(
      :association_id,
      :key,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a security profile.
    #
    # @!attribute [rw] id
    #   The identifier for the security profile.
    #   @return [String]
    #
    # @!attribute [rw] organization_resource_id
    #   The organization resource identifier for the security profile.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the secruity profile.
    #   @return [String]
    #
    # @!attribute [rw] security_profile_name
    #   The name for the security profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the security profile.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SecurityProfile AWS API Documentation
    #
    class SecurityProfile < Struct.new(
      :id,
      :organization_resource_id,
      :arn,
      :security_profile_name,
      :description,
      :tags)
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

    # The service quota has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
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
    #         chat_duration_in_minutes: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    #   standard Amazon Connect attributes. They can be accessed in contact
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
    # @!attribute [rw] chat_duration_in_minutes
    #   The total duration of the newly started chat session. If not
    #   specified, the chat session duration defaults to 25 hour. The
    #   minumum configurable time is 60 minutes. The maximum configurable
    #   time is 10,080 minutes (7 days).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartChatContactRequest AWS API Documentation
    #
    class StartChatContactRequest < Struct.new(
      :instance_id,
      :contact_flow_id,
      :attributes,
      :participant_details,
      :initial_message,
      :client_token,
      :chat_duration_in_minutes)
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    #   The person being recorded.
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

    # @note When making an API call, you may pass StartContactStreamingRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         contact_id: "ContactId", # required
    #         chat_streaming_configuration: { # required
    #           streaming_endpoint_arn: "ChatStreamingEndpointARN", # required
    #         },
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #   @return [String]
    #
    # @!attribute [rw] chat_streaming_configuration
    #   The streaming configuration, such as the Amazon SNS streaming
    #   endpoint.
    #   @return [Types::ChatStreamingConfiguration]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartContactStreamingRequest AWS API Documentation
    #
    class StartContactStreamingRequest < Struct.new(
      :instance_id,
      :contact_id,
      :chat_streaming_configuration,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] streaming_id
    #   The identifier of the streaming configuration enabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartContactStreamingResponse AWS API Documentation
    #
    class StartContactStreamingResponse < Struct.new(
      :streaming_id)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #         answer_machine_detection_config: {
    #           enable_answer_machine_detection: false,
    #           await_answer_machine_prompt: false,
    #         },
    #         campaign_id: "CampaignId",
    #         traffic_type: "GENERAL", # accepts GENERAL, CAMPAIGN
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. The token is valid for 7 days after
    #   creation. If a contact is already started, the contact ID is
    #   returned.
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
    # @!attribute [rw] answer_machine_detection_config
    #   Configuration of the answering machine detection for this outbound
    #   call.
    #   @return [Types::AnswerMachineDetectionConfig]
    #
    # @!attribute [rw] campaign_id
    #   The campaign identifier of the outbound communication.
    #   @return [String]
    #
    # @!attribute [rw] traffic_type
    #   Denotes the class of traffic. Calls with different traffic types are
    #   handled differently by Amazon Connect. The default value is
    #   `GENERAL`. Use `CAMPAIGN` if `EnableAnswerMachineDetection` is set
    #   to `true`. For all other cases, use `GENERAL`.
    #   @return [String]
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
      :attributes,
      :answer_machine_detection_config,
      :campaign_id,
      :traffic_type)
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

    # @note When making an API call, you may pass StartTaskContactRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         previous_contact_id: "ContactId",
    #         contact_flow_id: "ContactFlowId", # required
    #         attributes: {
    #           "AttributeName" => "AttributeValue",
    #         },
    #         name: "Name", # required
    #         references: {
    #           "ReferenceKey" => {
    #             value: "ReferenceValue", # required
    #             type: "URL", # required, accepts URL, ATTACHMENT
    #           },
    #         },
    #         description: "Description",
    #         client_token: "ClientToken",
    #         scheduled_time: Time.now,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] previous_contact_id
    #   The identifier of the previous chat, voice, or task contact.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the contact flow for initiating the tasks. To see
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
    # @!attribute [rw] name
    #   The name of a task that is shown to an agent in the Contact Control
    #   Panel (CCP).
    #   @return [String]
    #
    # @!attribute [rw] references
    #   A formatted URL that is shown to an agent in the Contact Control
    #   Panel (CCP).
    #   @return [Hash<String,Types::Reference>]
    #
    # @!attribute [rw] description
    #   A description of the task that is shown to an agent in the Contact
    #   Control Panel (CCP).
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_time
    #   The timestamp, in Unix Epoch seconds format, at which to start
    #   running the inbound contact flow. The scheduled time cannot be in
    #   the past. It must be within up to 6 days in future.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartTaskContactRequest AWS API Documentation
    #
    class StartTaskContactRequest < Struct.new(
      :instance_id,
      :previous_contact_id,
      :contact_flow_id,
      :attributes,
      :name,
      :references,
      :description,
      :client_token,
      :scheduled_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_id
    #   The identifier of this contact within the Amazon Connect instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartTaskContactResponse AWS API Documentation
    #
    class StartTaskContactResponse < Struct.new(
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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

    # @note When making an API call, you may pass StopContactStreamingRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         contact_id: "ContactId", # required
    #         streaming_id: "StreamingId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   that is associated with the first interaction with the contact
    #   center.
    #   @return [String]
    #
    # @!attribute [rw] streaming_id
    #   The identifier of the streaming configuration enabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StopContactStreamingRequest AWS API Documentation
    #
    class StopContactStreamingRequest < Struct.new(
      :instance_id,
      :contact_id,
      :streaming_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StopContactStreamingResponse AWS API Documentation
    #
    class StopContactStreamingResponse < Aws::EmptyStructure; end

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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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

    # @note When making an API call, you may pass UpdateAgentStatusRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         agent_status_id: "AgentStatusId", # required
    #         name: "AgentStatusName",
    #         description: "UpdateAgentStatusDescription",
    #         state: "ENABLED", # accepts ENABLED, DISABLED
    #         display_order: 1,
    #         reset_order_number: false,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] agent_status_id
    #   The identifier of the agent status.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the agent status.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the agent status.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the agent status.
    #   @return [String]
    #
    # @!attribute [rw] display_order
    #   The display order of the agent status.
    #   @return [Integer]
    #
    # @!attribute [rw] reset_order_number
    #   A number indicating the reset order of the agent status.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateAgentStatusRequest AWS API Documentation
    #
    class UpdateAgentStatusRequest < Struct.new(
      :instance_id,
      :agent_status_id,
      :name,
      :description,
      :state,
      :display_order,
      :reset_order_number)
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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

    # @note When making an API call, you may pass UpdateContactFlowMetadataRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         contact_flow_id: "ContactFlowId", # required
    #         name: "ContactFlowName",
    #         description: "ContactFlowDescription",
    #         contact_flow_state: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the contact flow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   TThe name of the contact flow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the contact flow.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_state
    #   The state of contact flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactFlowMetadataRequest AWS API Documentation
    #
    class UpdateContactFlowMetadataRequest < Struct.new(
      :instance_id,
      :contact_flow_id,
      :name,
      :description,
      :contact_flow_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateContactFlowModuleContentRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         contact_flow_module_id: "ContactFlowModuleId", # required
    #         content: "ContactFlowModuleContent", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_module_id
    #   The identifier of the contact flow module.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the contact flow module.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactFlowModuleContentRequest AWS API Documentation
    #
    class UpdateContactFlowModuleContentRequest < Struct.new(
      :instance_id,
      :contact_flow_module_id,
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactFlowModuleContentResponse AWS API Documentation
    #
    class UpdateContactFlowModuleContentResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateContactFlowModuleMetadataRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         contact_flow_module_id: "ContactFlowModuleId", # required
    #         name: "ContactFlowModuleName",
    #         description: "ContactFlowModuleDescription",
    #         state: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_module_id
    #   The identifier of the contact flow module.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the contact flow module.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the contact flow module.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of contact flow module.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactFlowModuleMetadataRequest AWS API Documentation
    #
    class UpdateContactFlowModuleMetadataRequest < Struct.new(
      :instance_id,
      :contact_flow_module_id,
      :name,
      :description,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactFlowModuleMetadataResponse AWS API Documentation
    #
    class UpdateContactFlowModuleMetadataResponse < Aws::EmptyStructure; end

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

    # @note When making an API call, you may pass UpdateContactRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         contact_id: "ContactId", # required
    #         name: "Name",
    #         description: "Description",
    #         references: {
    #           "ReferenceKey" => {
    #             value: "ReferenceValue", # required
    #             type: "URL", # required, accepts URL, ATTACHMENT
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with your contact center.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the contact.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the contact.
    #   @return [String]
    #
    # @!attribute [rw] references
    #   A formatted URL that is shown to an agent in the Contact Control
    #   Panel (CCP).
    #   @return [Hash<String,Types::Reference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactRequest AWS API Documentation
    #
    class UpdateContactRequest < Struct.new(
      :instance_id,
      :contact_id,
      :name,
      :description,
      :references)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactResponse AWS API Documentation
    #
    class UpdateContactResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateContactScheduleRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         contact_id: "ContactId", # required
    #         scheduled_time: Time.now, # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_id
    #   The identifier of the contact.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_time
    #   The timestamp, in Unix Epoch seconds format, at which to start
    #   running the inbound contact flow. The scheduled time cannot be in
    #   the past. It must be within up to 6 days in future.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactScheduleRequest AWS API Documentation
    #
    class UpdateContactScheduleRequest < Struct.new(
      :instance_id,
      :contact_id,
      :scheduled_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactScheduleResponse AWS API Documentation
    #
    class UpdateContactScheduleResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateHoursOfOperationRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         hours_of_operation_id: "HoursOfOperationId", # required
    #         name: "CommonNameLength127",
    #         description: "UpdateHoursOfOperationDescription",
    #         time_zone: "TimeZone",
    #         config: [
    #           {
    #             day: "SUNDAY", # required, accepts SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
    #             start_time: { # required
    #               hours: 1, # required
    #               minutes: 1, # required
    #             },
    #             end_time: { # required
    #               hours: 1, # required
    #               minutes: 1, # required
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] hours_of_operation_id
    #   The identifier of the hours of operation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the hours of operation.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the hours of operation.
    #   @return [String]
    #
    # @!attribute [rw] time_zone
    #   The time zone of the hours of operation.
    #   @return [String]
    #
    # @!attribute [rw] config
    #   Configuration information of the hours of operation.
    #   @return [Array<Types::HoursOfOperationConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateHoursOfOperationRequest AWS API Documentation
    #
    class UpdateHoursOfOperationRequest < Struct.new(
      :instance_id,
      :hours_of_operation_id,
      :name,
      :description,
      :time_zone,
      :config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateInstanceAttributeRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         attribute_type: "INBOUND_CALLS", # required, accepts INBOUND_CALLS, OUTBOUND_CALLS, CONTACTFLOW_LOGS, CONTACT_LENS, AUTO_RESOLVE_BEST_VOICES, USE_CUSTOM_TTS_VOICES, EARLY_MEDIA
    #         value: "InstanceAttributeValue", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] attribute_type
    #   The type of attribute.
    #
    #   <note markdown="1"> Only allowlisted customers can consume USE\_CUSTOM\_TTS\_VOICES. To
    #   access this feature, contact Amazon Web Services Support for
    #   allowlisting.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the attribute. Maximum character limit is 100.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateInstanceAttributeRequest AWS API Documentation
    #
    class UpdateInstanceAttributeRequest < Struct.new(
      :instance_id,
      :attribute_type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateInstanceStorageConfigRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         association_id: "AssociationId", # required
    #         resource_type: "CHAT_TRANSCRIPTS", # required, accepts CHAT_TRANSCRIPTS, CALL_RECORDINGS, SCHEDULED_REPORTS, MEDIA_STREAMS, CONTACT_TRACE_RECORDS, AGENT_EVENTS
    #         storage_config: { # required
    #           association_id: "AssociationId",
    #           storage_type: "S3", # required, accepts S3, KINESIS_VIDEO_STREAM, KINESIS_STREAM, KINESIS_FIREHOSE
    #           s3_config: {
    #             bucket_name: "BucketName", # required
    #             bucket_prefix: "Prefix", # required
    #             encryption_config: {
    #               encryption_type: "KMS", # required, accepts KMS
    #               key_id: "KeyId", # required
    #             },
    #           },
    #           kinesis_video_stream_config: {
    #             prefix: "Prefix", # required
    #             retention_period_hours: 1, # required
    #             encryption_config: { # required
    #               encryption_type: "KMS", # required, accepts KMS
    #               key_id: "KeyId", # required
    #             },
    #           },
    #           kinesis_stream_config: {
    #             stream_arn: "ARN", # required
    #           },
    #           kinesis_firehose_config: {
    #             firehose_arn: "ARN", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The existing association identifier that uniquely identifies the
    #   resource type and storage config for the given instance ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   A valid resource type.
    #   @return [String]
    #
    # @!attribute [rw] storage_config
    #   The storage configuration for the instance.
    #   @return [Types::InstanceStorageConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateInstanceStorageConfigRequest AWS API Documentation
    #
    class UpdateInstanceStorageConfigRequest < Struct.new(
      :instance_id,
      :association_id,
      :resource_type,
      :storage_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateQueueHoursOfOperationRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         queue_id: "QueueId", # required
    #         hours_of_operation_id: "HoursOfOperationId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The identifier for the queue.
    #   @return [String]
    #
    # @!attribute [rw] hours_of_operation_id
    #   The identifier for the hours of operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateQueueHoursOfOperationRequest AWS API Documentation
    #
    class UpdateQueueHoursOfOperationRequest < Struct.new(
      :instance_id,
      :queue_id,
      :hours_of_operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateQueueMaxContactsRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         queue_id: "QueueId", # required
    #         max_contacts: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The identifier for the queue.
    #   @return [String]
    #
    # @!attribute [rw] max_contacts
    #   The maximum number of contacts that can be in the queue before it is
    #   considered full.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateQueueMaxContactsRequest AWS API Documentation
    #
    class UpdateQueueMaxContactsRequest < Struct.new(
      :instance_id,
      :queue_id,
      :max_contacts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateQueueNameRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         queue_id: "QueueId", # required
    #         name: "CommonNameLength127",
    #         description: "QueueDescription",
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The identifier for the queue.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the queue.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateQueueNameRequest AWS API Documentation
    #
    class UpdateQueueNameRequest < Struct.new(
      :instance_id,
      :queue_id,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateQueueOutboundCallerConfigRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         queue_id: "QueueId", # required
    #         outbound_caller_config: { # required
    #           outbound_caller_id_name: "OutboundCallerIdName",
    #           outbound_caller_id_number_id: "PhoneNumberId",
    #           outbound_flow_id: "ContactFlowId",
    #         },
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The identifier for the queue.
    #   @return [String]
    #
    # @!attribute [rw] outbound_caller_config
    #   The outbound caller ID name, number, and outbound whisper flow.
    #   @return [Types::OutboundCallerConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateQueueOutboundCallerConfigRequest AWS API Documentation
    #
    class UpdateQueueOutboundCallerConfigRequest < Struct.new(
      :instance_id,
      :queue_id,
      :outbound_caller_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateQueueStatusRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         queue_id: "QueueId", # required
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The identifier for the queue.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateQueueStatusRequest AWS API Documentation
    #
    class UpdateQueueStatusRequest < Struct.new(
      :instance_id,
      :queue_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateQuickConnectConfigRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         quick_connect_id: "QuickConnectId", # required
    #         quick_connect_config: { # required
    #           quick_connect_type: "USER", # required, accepts USER, QUEUE, PHONE_NUMBER
    #           user_config: {
    #             user_id: "UserId", # required
    #             contact_flow_id: "ContactFlowId", # required
    #           },
    #           queue_config: {
    #             queue_id: "QueueId", # required
    #             contact_flow_id: "ContactFlowId", # required
    #           },
    #           phone_config: {
    #             phone_number: "PhoneNumber", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] quick_connect_id
    #   The identifier for the quick connect.
    #   @return [String]
    #
    # @!attribute [rw] quick_connect_config
    #   Information about the configuration settings for the quick connect.
    #   @return [Types::QuickConnectConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateQuickConnectConfigRequest AWS API Documentation
    #
    class UpdateQuickConnectConfigRequest < Struct.new(
      :instance_id,
      :quick_connect_id,
      :quick_connect_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateQuickConnectNameRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         quick_connect_id: "QuickConnectId", # required
    #         name: "QuickConnectName",
    #         description: "UpdateQuickConnectDescription",
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] quick_connect_id
    #   The identifier for the quick connect.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the quick connect.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the quick connect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateQuickConnectNameRequest AWS API Documentation
    #
    class UpdateQuickConnectNameRequest < Struct.new(
      :instance_id,
      :quick_connect_id,
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
    #             channel: "VOICE", # required, accepts VOICE, CHAT, TASK
    #             concurrency: 1, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] routing_profile_id
    #   The identifier of the routing profile.
    #   @return [String]
    #
    # @!attribute [rw] media_concurrencies
    #   The channels that agents can handle in the Contact Control Panel
    #   (CCP).
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    #               channel: "VOICE", # required, accepts VOICE, CHAT, TASK
    #             },
    #             priority: 1, # required
    #             delay: 1, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] routing_profile_id
    #   The identifier of the routing profile.
    #   @return [String]
    #
    # @!attribute [rw] queue_configs
    #   The queues to be updated for this routing profile. Queues must first
    #   be associated to the routing profile. You can do this using
    #   AssociateRoutingProfileQueues.
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

    # @note When making an API call, you may pass UpdateSecurityProfileRequest
    #   data as a hash:
    #
    #       {
    #         description: "SecurityProfileDescription",
    #         permissions: ["SecurityProfilePermission"],
    #         security_profile_id: "SecurityProfileId", # required
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] description
    #   The description of the security profile.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   The permissions granted to a security profile.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_profile_id
    #   The identifier for the security profle.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateSecurityProfileRequest AWS API Documentation
    #
    class UpdateSecurityProfileRequest < Struct.new(
      :description,
      :permissions,
      :security_profile_id,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateUserHierarchyGroupNameRequest
    #   data as a hash:
    #
    #       {
    #         name: "HierarchyGroupName", # required
    #         hierarchy_group_id: "HierarchyGroupId", # required
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the hierarchy group. Must not be more than 100
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] hierarchy_group_id
    #   The identifier of the hierarchy group.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserHierarchyGroupNameRequest AWS API Documentation
    #
    class UpdateUserHierarchyGroupNameRequest < Struct.new(
      :name,
      :hierarchy_group_id,
      :instance_id)
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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

    # @note When making an API call, you may pass UpdateUserHierarchyStructureRequest
    #   data as a hash:
    #
    #       {
    #         hierarchy_structure: { # required
    #           level_one: {
    #             name: "HierarchyLevelName", # required
    #           },
    #           level_two: {
    #             name: "HierarchyLevelName", # required
    #           },
    #           level_three: {
    #             name: "HierarchyLevelName", # required
    #           },
    #           level_four: {
    #             name: "HierarchyLevelName", # required
    #           },
    #           level_five: {
    #             name: "HierarchyLevelName", # required
    #           },
    #         },
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] hierarchy_structure
    #   The hierarchy levels to update.
    #   @return [Types::HierarchyStructureUpdate]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserHierarchyStructureRequest AWS API Documentation
    #
    class UpdateUserHierarchyStructureRequest < Struct.new(
      :hierarchy_structure,
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
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

    # The URL reference.
    #
    # @!attribute [rw] name
    #   Identifier of the URL reference.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A valid URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UrlReference AWS API Documentation
    #
    class UrlReference < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the use case.
    #
    # @!attribute [rw] use_case_id
    #   The identifier for the use case.
    #   @return [String]
    #
    # @!attribute [rw] use_case_arn
    #   The Amazon Resource Name (ARN) for the use case.
    #   @return [String]
    #
    # @!attribute [rw] use_case_type
    #   The type of use case to associate to the integration association.
    #   Each integration association can have only one of each use case
    #   type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UseCase AWS API Documentation
    #
    class UseCase < Struct.new(
      :use_case_id,
      :use_case_arn,
      :use_case_type)
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

    # Contains information about the quick connect configuration settings
    # for a user. The contact flow must be of type Transfer to Agent.
    #
    # @note When making an API call, you may pass UserQuickConnectConfig
    #   data as a hash:
    #
    #       {
    #         user_id: "UserId", # required
    #         contact_flow_id: "ContactFlowId", # required
    #       }
    #
    # @!attribute [rw] user_id
    #   The identifier of the user.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the contact flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UserQuickConnectConfig AWS API Documentation
    #
    class UserQuickConnectConfig < Struct.new(
      :user_id,
      :contact_flow_id)
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

    # Contains information about a custom vocabulary.
    #
    # @!attribute [rw] name
    #   A unique name of the custom vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the custom vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the custom vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the vocabulary entries. For a list of languages
    #   and their corresponding language codes, see [What is Amazon
    #   Transcribe?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the custom vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when the custom vocabulary was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The reason why the custom vocabulary was not created.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the custom vocabulary in plain-text format with a
    #   table of values. Each row in the table represents a word or a
    #   phrase, described with `Phrase`, `IPA`, `SoundsLike`, and
    #   `DisplayAs` fields. Separate the fields with TAB characters. For
    #   more information, see [Create a custom vocabulary using a table][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html#create-vocabulary-table
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Vocabulary AWS API Documentation
    #
    class Vocabulary < Struct.new(
      :name,
      :id,
      :arn,
      :language_code,
      :state,
      :last_modified_time,
      :failure_reason,
      :content,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about the custom vocabulary.
    #
    # @!attribute [rw] name
    #   A unique name of the custom vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the custom vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the custom vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the vocabulary entries. For a list of languages
    #   and their corresponding language codes, see [What is Amazon
    #   Transcribe?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the custom vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when the custom vocabulary was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The reason why the custom vocabulary was not created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/VocabularySummary AWS API Documentation
    #
    class VocabularySummary < Struct.new(
      :name,
      :id,
      :arn,
      :language_code,
      :state,
      :last_modified_time,
      :failure_reason)
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

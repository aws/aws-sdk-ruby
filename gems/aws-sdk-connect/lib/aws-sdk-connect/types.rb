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

    # Information about an action.
    #
    # @!attribute [rw] action_type
    #   The action type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ActionSummary AWS API Documentation
    #
    class ActionSummary < Struct.new(
      :action_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_id
    #   The unique identifier for the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_version
    #   The version of the evaluation form to activate. If the version
    #   property is not provided, the latest version of the evaluation form
    #   is activated.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ActivateEvaluationFormRequest AWS API Documentation
    #
    class ActivateEvaluationFormRequest < Struct.new(
      :instance_id,
      :evaluation_form_id,
      :evaluation_form_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evaluation_form_id
    #   The unique identifier for the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_arn
    #   The Amazon Resource Name (ARN) for the evaluation form resource.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_version
    #   A version of the evaluation form.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ActivateEvaluationFormResponse AWS API Documentation
    #
    class ActivateEvaluationFormResponse < Struct.new(
      :evaluation_form_id,
      :evaluation_form_arn,
      :evaluation_form_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the [contact][1] associated to the user.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_Contact.html
    #
    # @!attribute [rw] contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #   @return [String]
    #
    # @!attribute [rw] channel
    #   The channel of the contact.
    #   @return [String]
    #
    # @!attribute [rw] initiation_method
    #   How the contact was initiated.
    #   @return [String]
    #
    # @!attribute [rw] agent_contact_state
    #   The [state of the contact][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/about-contact-states.html
    #   @return [String]
    #
    # @!attribute [rw] state_start_timestamp
    #   The epoch timestamp when the contact state started.
    #   @return [Time]
    #
    # @!attribute [rw] connected_to_agent_timestamp
    #   The time at which the contact was connected to an agent.
    #   @return [Time]
    #
    # @!attribute [rw] queue
    #   Contains information about a queue resource for which metrics are
    #   returned.
    #   @return [Types::QueueReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AgentContactReference AWS API Documentation
    #
    class AgentContactReference < Struct.new(
      :contact_id,
      :channel,
      :initiation_method,
      :agent_contact_state,
      :state_start_timestamp,
      :connected_to_agent_timestamp,
      :queue)
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
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
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

    # Information about the agent's status.
    #
    # @!attribute [rw] status_start_timestamp
    #   The start timestamp of the agent's status.
    #   @return [Time]
    #
    # @!attribute [rw] status_arn
    #   The Amazon Resource Name (ARN) of the agent's status.
    #   @return [String]
    #
    # @!attribute [rw] status_name
    #   The name of the agent status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AgentStatusReference AWS API Documentation
    #
    class AgentStatusReference < Struct.new(
      :status_start_timestamp,
      :status_arn,
      :status_name)
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

    # This action must be set if `TriggerEventSource` is one of the
    # following values: `OnPostCallAnalysisAvailable` \|
    # `OnRealTimeCallAnalysisAvailable` \| `OnPostChatAnalysisAvailable`.
    # Contact is categorized using the rule name.
    #
    # `RuleName` is used as `ContactCategory`.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssignContactCategoryActionDefinition AWS API Documentation
    #
    class AssignContactCategoryActionDefinition < Aws::EmptyStructure; end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] phone_number_id
    #   A unique identifier for the phone number.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociatePhoneNumberContactFlowRequest AWS API Documentation
    #
    class AssociatePhoneNumberContactFlowRequest < Struct.new(
      :phone_number_id,
      :instance_id,
      :contact_flow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # Information about a reference when the `referenceType` is
    # `ATTACHMENT`. Otherwise, null.
    #
    # @!attribute [rw] name
    #   Identifier of the attachment reference.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The location path of the attachment reference.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the attachment reference type.
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

    # Information about available phone numbers.
    #
    # @!attribute [rw] phone_number
    #   The phone number. Phone numbers are formatted `[+] [country code]
    #   [subscriber number including area code]`.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_country_code
    #   The ISO country code.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_type
    #   The type of phone number.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AvailableNumberSummary AWS API Documentation
    #
    class AvailableNumberSummary < Struct.new(
      :phone_number,
      :phone_number_country_code,
      :phone_number_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A chat message.
    #
    # @!attribute [rw] content_type
    #   The type of the content. Supported types are `text/plain`,
    #   `text/markdown`, `application/json`, and
    #   `application/vnd.amazonaws.connect.message.interactive.response`.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the chat message.
    #
    #   * For `text/plain` and `text/markdown`, the Length Constraints are
    #     Minimum of 1, Maximum of 1024.
    #
    #   * For `application/json`, the Length Constraints are Minimum of 1,
    #     Maximum of 12000.
    #
    #   * For
    #     `application/vnd.amazonaws.connect.message.interactive.response`,
    #     the Length Constraints are Minimum of 1, Maximum of 12288.
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

    # Configuration information for the chat participant role.
    #
    # @!attribute [rw] participant_timer_config_list
    #   A list of participant timers. You can specify any unique combination
    #   of role and timer type. Duplicate entries error out the request with
    #   a 400.
    #   @return [Array<Types::ParticipantTimerConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ChatParticipantRoleConfig AWS API Documentation
    #
    class ChatParticipantRoleConfig < Struct.new(
      :participant_timer_config_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The streaming configuration, such as the Amazon SNS streaming
    # endpoint.
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

    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) for Amazon Connect instances or
    #   traffic distribution groups that phone numbers are claimed to.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number you want to claim. Phone numbers are formatted `[+]
    #   [country code] [subscriber number including area code]`.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_description
    #   The description of the phone number.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   Pattern:
    #   `^[a-f0-9]\{8\}-[a-f0-9]\{4\}-[a-f0-9]\{4\}-[a-f0-9]\{4\}-[a-f0-9]\{12\}$`
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ClaimPhoneNumberRequest AWS API Documentation
    #
    class ClaimPhoneNumberRequest < Struct.new(
      :target_arn,
      :phone_number,
      :phone_number_description,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_id
    #   A unique identifier for the phone number.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_arn
    #   The Amazon Resource Name (ARN) of the phone number.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ClaimPhoneNumberResponse AWS API Documentation
    #
    class ClaimPhoneNumberResponse < Struct.new(
      :phone_number_id,
      :phone_number_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a phone number that has been claimed to your Amazon
    # Connect instance or traffic distribution group.
    #
    # @!attribute [rw] phone_number_id
    #   A unique identifier for the phone number.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_arn
    #   The Amazon Resource Name (ARN) of the phone number.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number. Phone numbers are formatted `[+] [country code]
    #   [subscriber number including area code]`.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_country_code
    #   The ISO country code.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_type
    #   The type of phone number.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_description
    #   The description of the phone number.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) for Amazon Connect instances or
    #   traffic distribution groups that phone numbers are claimed to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] phone_number_status
    #   The status of the phone number.
    #
    #   * `CLAIMED` means the previous [ClaimedPhoneNumber][1] or
    #     [UpdatePhoneNumber][2] operation succeeded.
    #
    #   * `IN_PROGRESS` means a [ClaimedPhoneNumber][1] or
    #     [UpdatePhoneNumber][2] operation is still in progress and has not
    #     yet completed. You can call [DescribePhoneNumber][3] at a later
    #     time to verify if the previous operation has completed.
    #
    #   * `FAILED` indicates that the previous [ClaimedPhoneNumber][1] or
    #     [UpdatePhoneNumber][2] operation has failed. It will include a
    #     message indicating the failure reason. A common reason for a
    #     failure may be that the `TargetArn` value you are claiming or
    #     updating a phone number to has reached its limit of total claimed
    #     numbers. If you received a `FAILED` status from a
    #     `ClaimPhoneNumber` API call, you have one day to retry claiming
    #     the phone number before the number is released back to the
    #     inventory for other customers to claim.
    #
    #   <note markdown="1"> You will not be billed for the phone number during the 1-day period
    #   if number claiming fails.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_ClaimedPhoneNumber.html
    #   [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdatePhoneNumber.html
    #   [3]: https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html
    #   @return [Types::PhoneNumberStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ClaimedPhoneNumberSummary AWS API Documentation
    #
    class ClaimedPhoneNumberSummary < Struct.new(
      :phone_number_id,
      :phone_number_arn,
      :phone_number,
      :phone_number_country_code,
      :phone_number_type,
      :phone_number_description,
      :target_arn,
      :tags,
      :phone_number_status)
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
    #   request arrived. For `EXTERNAL_OUTBOUND`, this is when the agent
    #   started dialing the external participant. For `MONITOR`, this is
    #   when the supervisor started listening to a contact.
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
    # @!attribute [rw] related_contact_id
    #   The contactId that is [related][1] to this contact.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html#relatedcontactid
    #   @return [String]
    #
    # @!attribute [rw] wisdom_info
    #   Information about Amazon Connect Wisdom.
    #   @return [Types::WisdomInfo]
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
      :scheduled_timestamp,
      :related_contact_id,
      :wisdom_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters user data based on the contact information that is associated
    # to the users. It contains a list of [contact states][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/about-contact-states.html
    #
    # @!attribute [rw] contact_states
    #   A list of up to 9 [contact states][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/about-contact-states.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ContactFilter AWS API Documentation
    #
    class ContactFilter < Struct.new(
      :contact_states)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a flow.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the flow.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the flow.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the flow. For descriptions of the available types, see
    #   [Choose a flow type][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html#contact-flow-types
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The type of flow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the flow.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the flow.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
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

    # Contains information about a flow module.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the flow module.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the flow module.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the flow module.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the flow module.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The type of flow module.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the flow module.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
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

    # Contains summary information about a flow.
    #
    # @!attribute [rw] id
    #   The identifier of the flow module.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the flow module.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the flow module.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The type of flow module.
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

    # The flow has not been published.
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

    # Contains summary information about a flow.
    #
    # You can also create and update flows using the [Amazon Connect Flow
    # language][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html
    #
    # @!attribute [rw] id
    #   The identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the flow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the flow.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_type
    #   The type of flow.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_state
    #   The type of flow.
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
    # Applies to Voice calls only, not to Chat, Task, or Voice Callback.
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

    # An object that can be used to specify Tag conditions inside the
    # `SearchFilter`. This accepts an `OR` of `AND` (List of List) input
    # where:
    #
    # * Top level list specifies conditions that need to be applied with
    #   `OR` operator
    #
    # * Inner list specifies conditions that need to be applied with `AND`
    #   operator.
    #
    # @!attribute [rw] or_conditions
    #   A list of conditions which would be applied together with an `OR`
    #   condition.
    #   @return [Array<Array<Types::TagCondition>>]
    #
    # @!attribute [rw] and_conditions
    #   A list of conditions which would be applied together with an `AND`
    #   condition.
    #   @return [Array<Types::TagCondition>]
    #
    # @!attribute [rw] tag_condition
    #   A leaf node condition which can be used to specify a tag condition.
    #   @return [Types::TagCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ControlPlaneTagFilter AWS API Documentation
    #
    class ControlPlaneTagFilter < Struct.new(
      :or_conditions,
      :and_conditions,
      :tag_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the flow module.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the flow module.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the flow module.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
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
    #   The identifier of the flow module.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the flow module.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the flow.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the flow. For descriptions of the available types, see
    #   [Choose a flow type][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html#contact-flow-types
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the flow.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the flow.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
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
    #   The identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_arn
    #   The Amazon Resource Name (ARN) of the flow.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A title of the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Items that are part of the evaluation form. The total number of
    #   sections and questions must not exceed 100 each. Questions must be
    #   contained in a section.
    #   @return [Array<Types::EvaluationFormItem>]
    #
    # @!attribute [rw] scoring_strategy
    #   A scoring strategy of the evaluation form.
    #   @return [Types::EvaluationFormScoringStrategy]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateEvaluationFormRequest AWS API Documentation
    #
    class CreateEvaluationFormRequest < Struct.new(
      :instance_id,
      :title,
      :description,
      :items,
      :scoring_strategy,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evaluation_form_id
    #   The unique identifier for the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_arn
    #   The Amazon Resource Name (ARN) for the evaluation form resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateEvaluationFormResponse AWS API Documentation
    #
    class CreateEvaluationFormResponse < Struct.new(
      :evaluation_form_id,
      :evaluation_form_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] integration_type
    #   The type of information to be ingested.
    #   @return [String]
    #
    # @!attribute [rw] integration_arn
    #   The Amazon Resource Name (ARN) of the integration.
    #
    #   <note markdown="1"> When integrating with Amazon Pinpoint, the Amazon Connect and Amazon
    #   Pinpoint instances must be in the same account.
    #
    #    </note>
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
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #   Only contacts in the CHAT channel are supported.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] participant_details
    #   Information identifying the participant.
    #
    #   The only Valid value for `ParticipantRole` is `CUSTOM_BOT`.
    #
    #    `DisplayName` is **Required**.
    #   @return [Types::ParticipantDetailsToAdd]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateParticipantRequest AWS API Documentation
    #
    class CreateParticipantRequest < Struct.new(
      :instance_id,
      :contact_id,
      :client_token,
      :participant_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] participant_credentials
    #   The token used by the chat participant to call
    #   `CreateParticipantConnection`. The participant token is valid for
    #   the lifetime of a chat participant.
    #   @return [Types::ParticipantTokenCredentials]
    #
    # @!attribute [rw] participant_id
    #   The identifier for a chat participant. The participantId for a chat
    #   participant is the same throughout the chat lifecycle.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateParticipantResponse AWS API Documentation
    #
    class CreateParticipantResponse < Struct.new(
      :participant_credentials,
      :participant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] s3_uri
    #   The URI for the S3 bucket where the prompt is stored.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreatePromptRequest AWS API Documentation
    #
    class CreatePromptRequest < Struct.new(
      :instance_id,
      :name,
      :description,
      :s3_uri,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] prompt_arn
    #   The Amazon Resource Name (ARN) of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] prompt_id
    #   A unique identifier for the prompt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreatePromptResponse AWS API Documentation
    #
    class CreatePromptResponse < Struct.new(
      :prompt_arn,
      :prompt_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    #
    #   The limit of 10 array members applies to the maximum number of
    #   `RoutingProfileQueueConfig` objects that can be passed during a
    #   CreateRoutingProfile API request. It is different from the quota of
    #   50 queues per routing profile per instance that is listed in [Amazon
    #   Connect service quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html
    #   @return [Array<Types::RoutingProfileQueueConfig>]
    #
    # @!attribute [rw] media_concurrencies
    #   The channels that agents can handle in the Contact Control Panel
    #   (CCP) for this routing profile.
    #   @return [Array<Types::MediaConcurrency>]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A unique name for the rule.
    #   @return [String]
    #
    # @!attribute [rw] trigger_event_source
    #   The event source to trigger the rule.
    #   @return [Types::RuleTriggerEventSource]
    #
    # @!attribute [rw] function
    #   The conditions of the rule.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   A list of actions to be run when the rule is triggered.
    #   @return [Array<Types::RuleAction>]
    #
    # @!attribute [rw] publish_status
    #   The publish status of the rule.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateRuleRequest AWS API Documentation
    #
    class CreateRuleRequest < Struct.new(
      :instance_id,
      :name,
      :trigger_event_source,
      :function,
      :actions,
      :publish_status,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_id
    #   A unique identifier for the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateRuleResponse AWS API Documentation
    #
    class CreateRuleResponse < Struct.new(
      :rule_arn,
      :rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_profile_name
    #   The name of the security profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the security profile.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   Permissions assigned to the security profile. For a list of valid
    #   permissions, see [List of security profile permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] allowed_access_control_tags
    #   The list of tags that a security profile uses to restrict access to
    #   resources in Amazon Connect.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tag_restricted_resources
    #   The list of resources that a security profile applies tag
    #   restrictions to in Amazon Connect. Following are acceptable
    #   ResourceNames: `User` \| `SecurityProfile` \| `Queue` \|
    #   `RoutingProfile`
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateSecurityProfileRequest AWS API Documentation
    #
    class CreateSecurityProfileRequest < Struct.new(
      :security_profile_name,
      :description,
      :permissions,
      :instance_id,
      :tags,
      :allowed_access_control_tags,
      :tag_restricted_resources)
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the task template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the task template.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the flow that runs by default when a task is
    #   created by referencing this template.
    #   @return [String]
    #
    # @!attribute [rw] constraints
    #   Constraints that are applicable to the fields listed.
    #   @return [Types::TaskTemplateConstraints]
    #
    # @!attribute [rw] defaults
    #   The default values for fields when a task is created by referencing
    #   this template.
    #   @return [Types::TaskTemplateDefaults]
    #
    # @!attribute [rw] status
    #   Marks a template as `ACTIVE` or `INACTIVE` for a task to refer to
    #   it. Tasks can only be created from `ACTIVE` templates. If a template
    #   is marked as `INACTIVE`, then a task that refers to this template
    #   cannot be created.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   Fields that are part of the template.
    #   @return [Array<Types::TaskTemplateField>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateTaskTemplateRequest AWS API Documentation
    #
    class CreateTaskTemplateRequest < Struct.new(
      :instance_id,
      :name,
      :description,
      :contact_flow_id,
      :constraints,
      :defaults,
      :status,
      :fields,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the task template resource.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the task template resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateTaskTemplateResponse AWS API Documentation
    #
    class CreateTaskTemplateResponse < Struct.new(
      :id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name for the traffic distribution group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the traffic distribution group.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance that has been
    #   replicated. You can find the `instanceId` in the ARN of the
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateTrafficDistributionGroupRequest AWS API Documentation
    #
    class CreateTrafficDistributionGroupRequest < Struct.new(
      :name,
      :description,
      :instance_id,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the traffic distribution group. This can be the ID
    #   or the ARN if the API is being called in the Region where the
    #   traffic distribution group was created. The ARN must be provided if
    #   the call is from the replicated Region.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the traffic distribution group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateTrafficDistributionGroupResponse AWS API Documentation
    #
    class CreateTrafficDistributionGroupResponse < Struct.new(
      :id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
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
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
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
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
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

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1]. If a create
    #   request is received more than once with same client token,
    #   subsequent requests return the previous response without creating a
    #   vocabulary again.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
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

    # Defines the cross-channel routing behavior that allows an agent
    # working on a contact in one channel to be offered a contact from a
    # different channel.
    #
    # @!attribute [rw] behavior_type
    #   Specifies the other channels that can be routed to an agent handling
    #   their current channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CrossChannelBehavior AWS API Documentation
    #
    class CrossChannelBehavior < Struct.new(
      :behavior_type)
      SENSITIVE = []
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

    # The way to sort the resulting response based on metrics. By default
    # resources are sorted based on `AGENTS_ONLINE`, `DESCENDING`. The
    # metric collection is sorted based on the input metrics.
    #
    # @!attribute [rw] sort_by_metric
    #   The current metric names.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The way to sort.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CurrentMetricSortCriteria AWS API Documentation
    #
    class CurrentMetricSortCriteria < Struct.new(
      :sort_by_metric,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a reference when the `referenceType` is `DATE`.
    # Otherwise, null.
    #
    # @!attribute [rw] name
    #   Identifier of the date reference.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A valid date.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DateReference AWS API Documentation
    #
    class DateReference < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_id
    #   The unique identifier for the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_version
    #   A version of the evaluation form. If the version property is not
    #   provided, the latest version of the evaluation form is deactivated.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeactivateEvaluationFormRequest AWS API Documentation
    #
    class DeactivateEvaluationFormRequest < Struct.new(
      :instance_id,
      :evaluation_form_id,
      :evaluation_form_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evaluation_form_id
    #   The unique identifier for the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_arn
    #   The Amazon Resource Name (ARN) for the evaluation form resource.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_version
    #   The version of the deactivated evaluation form resource.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeactivateEvaluationFormResponse AWS API Documentation
    #
    class DeactivateEvaluationFormResponse < Struct.new(
      :evaluation_form_id,
      :evaluation_form_arn,
      :evaluation_form_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a default vocabulary.
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] evaluation_id
    #   A unique identifier for the contact evaluation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteContactEvaluationRequest AWS API Documentation
    #
    class DeleteContactEvaluationRequest < Struct.new(
      :instance_id,
      :evaluation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_module_id
    #   The identifier of the flow module.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the flow.
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

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteContactFlowResponse AWS API Documentation
    #
    class DeleteContactFlowResponse < Aws::EmptyStructure; end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_id
    #   The unique identifier for the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_version
    #   The unique identifier for the evaluation form.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteEvaluationFormRequest AWS API Documentation
    #
    class DeleteEvaluationFormRequest < Struct.new(
      :instance_id,
      :evaluation_form_id,
      :evaluation_form_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteInstanceRequest AWS API Documentation
    #
    class DeleteInstanceRequest < Struct.new(
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] prompt_id
    #   A unique identifier for the prompt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeletePromptRequest AWS API Documentation
    #
    class DeletePromptRequest < Struct.new(
      :instance_id,
      :prompt_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The identifier for the queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteQueueRequest AWS API Documentation
    #
    class DeleteQueueRequest < Struct.new(
      :instance_id,
      :queue_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] routing_profile_id
    #   The identifier of the routing profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteRoutingProfileRequest AWS API Documentation
    #
    class DeleteRoutingProfileRequest < Struct.new(
      :instance_id,
      :routing_profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] rule_id
    #   A unique identifier for the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteRuleRequest AWS API Documentation
    #
    class DeleteRuleRequest < Struct.new(
      :instance_id,
      :rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] task_template_id
    #   A unique identifier for the task template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteTaskTemplateRequest AWS API Documentation
    #
    class DeleteTaskTemplateRequest < Struct.new(
      :instance_id,
      :task_template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteTaskTemplateResponse AWS API Documentation
    #
    class DeleteTaskTemplateResponse < Aws::EmptyStructure; end

    # @!attribute [rw] traffic_distribution_group_id
    #   The identifier of the traffic distribution group. This can be the ID
    #   or the ARN if the API is being called in the Region where the
    #   traffic distribution group was created. The ARN must be provided if
    #   the call is from the replicated Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteTrafficDistributionGroupRequest AWS API Documentation
    #
    class DeleteTrafficDistributionGroupRequest < Struct.new(
      :traffic_distribution_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteTrafficDistributionGroupResponse AWS API Documentation
    #
    class DeleteTrafficDistributionGroupResponse < Aws::EmptyStructure; end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] hierarchy_group_id
    #   The identifier of the hierarchy group.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] evaluation_id
    #   A unique identifier for the contact evaluation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeContactEvaluationRequest AWS API Documentation
    #
    class DescribeContactEvaluationRequest < Struct.new(
      :instance_id,
      :evaluation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evaluation
    #   Information about the evaluation form completed for a specific
    #   contact.
    #   @return [Types::Evaluation]
    #
    # @!attribute [rw] evaluation_form
    #   Information about the evaluation form.
    #   @return [Types::EvaluationFormContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeContactEvaluationResponse AWS API Documentation
    #
    class DescribeContactEvaluationResponse < Struct.new(
      :evaluation,
      :evaluation_form)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_module_id
    #   The identifier of the flow module.
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
    #   Information about the flow module.
    #   @return [Types::ContactFlowModule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeContactFlowModuleResponse AWS API Documentation
    #
    class DescribeContactFlowModuleResponse < Struct.new(
      :contact_flow_module)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the flow.
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
    #   Information about the flow.
    #   @return [Types::ContactFlow]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeContactFlowResponse AWS API Documentation
    #
    class DescribeContactFlowResponse < Struct.new(
      :contact_flow)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_id
    #   A unique identifier for the contact evaluation.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_version
    #   A version of the evaluation form.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeEvaluationFormRequest AWS API Documentation
    #
    class DescribeEvaluationFormRequest < Struct.new(
      :instance_id,
      :evaluation_form_id,
      :evaluation_form_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evaluation_form
    #   Information about the evaluation form.
    #   @return [Types::EvaluationForm]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeEvaluationFormResponse AWS API Documentation
    #
    class DescribeEvaluationFormResponse < Struct.new(
      :evaluation_form)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] phone_number_id
    #   A unique identifier for the phone number.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribePhoneNumberRequest AWS API Documentation
    #
    class DescribePhoneNumberRequest < Struct.new(
      :phone_number_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] claimed_phone_number_summary
    #   Information about a phone number that's been claimed to your Amazon
    #   Connect instance or traffic distribution group.
    #   @return [Types::ClaimedPhoneNumberSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribePhoneNumberResponse AWS API Documentation
    #
    class DescribePhoneNumberResponse < Struct.new(
      :claimed_phone_number_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] prompt_id
    #   A unique identifier for the prompt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribePromptRequest AWS API Documentation
    #
    class DescribePromptRequest < Struct.new(
      :instance_id,
      :prompt_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] prompt
    #   Information about the prompt.
    #   @return [Types::Prompt]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribePromptResponse AWS API Documentation
    #
    class DescribePromptResponse < Struct.new(
      :prompt)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] rule_id
    #   A unique identifier for the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeRuleRequest AWS API Documentation
    #
    class DescribeRuleRequest < Struct.new(
      :instance_id,
      :rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule
    #   Information about the rule.
    #   @return [Types::Rule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeRuleResponse AWS API Documentation
    #
    class DescribeRuleResponse < Struct.new(
      :rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_profile_id
    #   The identifier for the security profle.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] traffic_distribution_group_id
    #   The identifier of the traffic distribution group. This can be the ID
    #   or the ARN if the API is being called in the Region where the
    #   traffic distribution group was created. The ARN must be provided if
    #   the call is from the replicated Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeTrafficDistributionGroupRequest AWS API Documentation
    #
    class DescribeTrafficDistributionGroupRequest < Struct.new(
      :traffic_distribution_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] traffic_distribution_group
    #   Information about the traffic distribution group.
    #   @return [Types::TrafficDistributionGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeTrafficDistributionGroupResponse AWS API Documentation
    #
    class DescribeTrafficDistributionGroupResponse < Struct.new(
      :traffic_distribution_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hierarchy_group_id
    #   The identifier of the hierarchy group.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] user_id
    #   The identifier of the user account.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    # @!attribute [rw] routing_profile
    #   Information about the routing profile assigned to the user.
    #   @return [Types::RoutingProfileReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Dimensions AWS API Documentation
    #
    class Dimensions < Struct.new(
      :queue,
      :channel,
      :routing_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance..
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] bot_name
    #   The name of the Amazon Lex bot. Maximum character limit of 50.
    #   @return [String]
    #
    # @!attribute [rw] lex_region
    #   The Amazon Web Services Region in which the Amazon Lex bot has been
    #   created.
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

    # @!attribute [rw] phone_number_id
    #   A unique identifier for the phone number.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociatePhoneNumberContactFlowRequest AWS API Documentation
    #
    class DisassociatePhoneNumberContactFlowRequest < Struct.new(
      :phone_number_id,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] user_id
    #   The identifier of the user account.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DismissUserContactRequest AWS API Documentation
    #
    class DismissUserContactRequest < Struct.new(
      :user_id,
      :instance_id,
      :contact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DismissUserContactResponse AWS API Documentation
    #
    class DismissUserContactResponse < Aws::EmptyStructure; end

    # Information about a traffic distribution.
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region where the traffic is distributed.
    #   @return [String]
    #
    # @!attribute [rw] percentage
    #   The percentage of the traffic that is distributed, in increments of
    #   10.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Distribution AWS API Documentation
    #
    class Distribution < Struct.new(
      :region,
      :percentage)
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

    # Information about a reference when the `referenceType` is `EMAIL`.
    # Otherwise, null.
    #
    # @!attribute [rw] name
    #   Identifier of the email reference.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A valid email address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EmailReference AWS API Documentation
    #
    class EmailReference < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The encryption configuration.
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
    #    Amazon Connect supports only KMS keys with the default key spec of [
    #   `SYMMETRIC_DEFAULT` ][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/asymmetric-key-specs.html#key-spec-symmetric-default
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

    # Information about a contact evaluation.
    #
    # @!attribute [rw] evaluation_id
    #   A unique identifier for the contact evaluation.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_arn
    #   The Amazon Resource Name (ARN) for the contact evaluation resource.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Metadata about the contact evaluation.
    #   @return [Types::EvaluationMetadata]
    #
    # @!attribute [rw] answers
    #   A map of question identifiers to answer value.
    #   @return [Hash<String,Types::EvaluationAnswerOutput>]
    #
    # @!attribute [rw] notes
    #   A map of question identifiers to note value.
    #   @return [Hash<String,Types::EvaluationNote>]
    #
    # @!attribute [rw] status
    #   The status of the contact evaluation.
    #   @return [String]
    #
    # @!attribute [rw] scores
    #   A map of item (section or question) identifiers to score value.
    #   @return [Hash<String,Types::EvaluationScore>]
    #
    # @!attribute [rw] created_time
    #   The timestamp for when the evaluation was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp for when the evaluation was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Evaluation AWS API Documentation
    #
    class Evaluation < Struct.new(
      :evaluation_id,
      :evaluation_arn,
      :metadata,
      :answers,
      :notes,
      :status,
      :scores,
      :created_time,
      :last_modified_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about answer data for a contact evaluation. Answer data
    # must be either string, numeric, or not applicable.
    #
    # @note EvaluationAnswerData is a union - when making an API calls you must set exactly one of the members.
    #
    # @note EvaluationAnswerData is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of EvaluationAnswerData corresponding to the set member.
    #
    # @!attribute [rw] string_value
    #   The string value for an answer in a contact evaluation.
    #   @return [String]
    #
    # @!attribute [rw] numeric_value
    #   The numeric value for an answer in a contact evaluation.
    #   @return [Float]
    #
    # @!attribute [rw] not_applicable
    #   The flag to mark the question as not applicable.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationAnswerData AWS API Documentation
    #
    class EvaluationAnswerData < Struct.new(
      :string_value,
      :numeric_value,
      :not_applicable,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class StringValue < EvaluationAnswerData; end
      class NumericValue < EvaluationAnswerData; end
      class NotApplicable < EvaluationAnswerData; end
      class Unknown < EvaluationAnswerData; end
    end

    # Information about input answers for a contact evaluation.
    #
    # @!attribute [rw] value
    #   The value for an answer in a contact evaluation.
    #   @return [Types::EvaluationAnswerData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationAnswerInput AWS API Documentation
    #
    class EvaluationAnswerInput < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about output answers for a contact evaluation.
    #
    # @!attribute [rw] value
    #   The value for an answer in a contact evaluation.
    #   @return [Types::EvaluationAnswerData]
    #
    # @!attribute [rw] system_suggested_value
    #   The system suggested value for an answer in a contact evaluation.
    #   @return [Types::EvaluationAnswerData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationAnswerOutput AWS API Documentation
    #
    class EvaluationAnswerOutput < Struct.new(
      :value,
      :system_suggested_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the evaluation form.
    #
    # @!attribute [rw] evaluation_form_id
    #   The unique identifier for the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_version
    #   A version of the evaluation form.
    #   @return [Integer]
    #
    # @!attribute [rw] locked
    #   The flag indicating whether the evaluation form is locked for
    #   changes.
    #   @return [Boolean]
    #
    # @!attribute [rw] evaluation_form_arn
    #   The Amazon Resource Name (ARN) for the evaluation form resource.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A title of the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Items that are part of the evaluation form. The total number of
    #   sections and questions must not exceed 100 each. Questions must be
    #   contained in a section.
    #   @return [Array<Types::EvaluationFormItem>]
    #
    # @!attribute [rw] scoring_strategy
    #   A scoring strategy of the evaluation form.
    #   @return [Types::EvaluationFormScoringStrategy]
    #
    # @!attribute [rw] created_time
    #   The timestamp for when the evaluation form was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon Resource Name (ARN) of the user who created the
    #   evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp for when the evaluation form was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The Amazon Resource Name (ARN) of the user who last updated the
    #   evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationForm AWS API Documentation
    #
    class EvaluationForm < Struct.new(
      :evaluation_form_id,
      :evaluation_form_version,
      :locked,
      :evaluation_form_arn,
      :title,
      :description,
      :status,
      :items,
      :scoring_strategy,
      :created_time,
      :created_by,
      :last_modified_time,
      :last_modified_by,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an evaluation form used in a contact evaluation.
    #
    # @!attribute [rw] evaluation_form_version
    #   A version of the evaluation form.
    #   @return [Integer]
    #
    # @!attribute [rw] evaluation_form_id
    #   The unique identifier for the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_arn
    #   The Amazon Resource Name (ARN) for the evaluation form resource.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A title of the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Items that are part of the evaluation form. The total number of
    #   sections and questions must not exceed 100 each. Questions must be
    #   contained in a section.
    #   @return [Array<Types::EvaluationFormItem>]
    #
    # @!attribute [rw] scoring_strategy
    #   A scoring strategy of the evaluation form.
    #   @return [Types::EvaluationFormScoringStrategy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationFormContent AWS API Documentation
    #
    class EvaluationFormContent < Struct.new(
      :evaluation_form_version,
      :evaluation_form_id,
      :evaluation_form_arn,
      :title,
      :description,
      :items,
      :scoring_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an item from an evaluation form. The item must be
    # either a section or a question.
    #
    # @note EvaluationFormItem is a union - when making an API calls you must set exactly one of the members.
    #
    # @note EvaluationFormItem is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of EvaluationFormItem corresponding to the set member.
    #
    # @!attribute [rw] section
    #   The information of the section.
    #   @return [Types::EvaluationFormSection]
    #
    # @!attribute [rw] question
    #   The information of the question.
    #   @return [Types::EvaluationFormQuestion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationFormItem AWS API Documentation
    #
    class EvaluationFormItem < Struct.new(
      :section,
      :question,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Section < EvaluationFormItem; end
      class Question < EvaluationFormItem; end
      class Unknown < EvaluationFormItem; end
    end

    # Information about the automation configuration in numeric questions.
    #
    # @note EvaluationFormNumericQuestionAutomation is a union - when making an API calls you must set exactly one of the members.
    #
    # @note EvaluationFormNumericQuestionAutomation is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of EvaluationFormNumericQuestionAutomation corresponding to the set member.
    #
    # @!attribute [rw] property_value
    #   The property value of the automation.
    #   @return [Types::NumericQuestionPropertyValueAutomation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationFormNumericQuestionAutomation AWS API Documentation
    #
    class EvaluationFormNumericQuestionAutomation < Struct.new(
      :property_value,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class PropertyValue < EvaluationFormNumericQuestionAutomation; end
      class Unknown < EvaluationFormNumericQuestionAutomation; end
    end

    # Information about the option range used for scoring in numeric
    # questions.
    #
    # @!attribute [rw] min_value
    #   The minimum answer value of the range option.
    #   @return [Integer]
    #
    # @!attribute [rw] max_value
    #   The maximum answer value of the range option.
    #   @return [Integer]
    #
    # @!attribute [rw] score
    #   The score assigned to answer values within the range option.
    #   @return [Integer]
    #
    # @!attribute [rw] automatic_fail
    #   The flag to mark the option as automatic fail. If an automatic fail
    #   answer is provided, the overall evaluation gets a score of 0.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationFormNumericQuestionOption AWS API Documentation
    #
    class EvaluationFormNumericQuestionOption < Struct.new(
      :min_value,
      :max_value,
      :score,
      :automatic_fail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about properties for a numeric question in an evaluation
    # form.
    #
    # @!attribute [rw] min_value
    #   The minimum answer value.
    #   @return [Integer]
    #
    # @!attribute [rw] max_value
    #   The maximum answer value.
    #   @return [Integer]
    #
    # @!attribute [rw] options
    #   The scoring options of the numeric question.
    #   @return [Array<Types::EvaluationFormNumericQuestionOption>]
    #
    # @!attribute [rw] automation
    #   The automation properties of the numeric question.
    #   @return [Types::EvaluationFormNumericQuestionAutomation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationFormNumericQuestionProperties AWS API Documentation
    #
    class EvaluationFormNumericQuestionProperties < Struct.new(
      :min_value,
      :max_value,
      :options,
      :automation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a question from an evaluation form.
    #
    # @!attribute [rw] title
    #   The title of the question.
    #   @return [String]
    #
    # @!attribute [rw] instructions
    #   The instructions of the section.
    #   @return [String]
    #
    # @!attribute [rw] ref_id
    #   The identifier of the question. An identifier must be unique within
    #   the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] not_applicable_enabled
    #   The flag to enable not applicable answers to the question.
    #   @return [Boolean]
    #
    # @!attribute [rw] question_type
    #   The type of the question.
    #   @return [String]
    #
    # @!attribute [rw] question_type_properties
    #   The properties of the type of question. Text questions do not have
    #   to define question type properties.
    #   @return [Types::EvaluationFormQuestionTypeProperties]
    #
    # @!attribute [rw] weight
    #   The scoring weight of the section.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationFormQuestion AWS API Documentation
    #
    class EvaluationFormQuestion < Struct.new(
      :title,
      :instructions,
      :ref_id,
      :not_applicable_enabled,
      :question_type,
      :question_type_properties,
      :weight)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about properties for a question in an evaluation form. The
    # question type properties must be either for a numeric question or a
    # single select question.
    #
    # @note EvaluationFormQuestionTypeProperties is a union - when making an API calls you must set exactly one of the members.
    #
    # @note EvaluationFormQuestionTypeProperties is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of EvaluationFormQuestionTypeProperties corresponding to the set member.
    #
    # @!attribute [rw] numeric
    #   The properties of the numeric question.
    #   @return [Types::EvaluationFormNumericQuestionProperties]
    #
    # @!attribute [rw] single_select
    #   The properties of the numeric question.
    #   @return [Types::EvaluationFormSingleSelectQuestionProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationFormQuestionTypeProperties AWS API Documentation
    #
    class EvaluationFormQuestionTypeProperties < Struct.new(
      :numeric,
      :single_select,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Numeric < EvaluationFormQuestionTypeProperties; end
      class SingleSelect < EvaluationFormQuestionTypeProperties; end
      class Unknown < EvaluationFormQuestionTypeProperties; end
    end

    # Information about scoring strategy for an evaluation form.
    #
    # @!attribute [rw] mode
    #   The scoring mode of the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The scoring status of the evaluation form.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationFormScoringStrategy AWS API Documentation
    #
    class EvaluationFormScoringStrategy < Struct.new(
      :mode,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a section from an evaluation form. A section can
    # contain sections and/or questions. Evaluation forms can only contain
    # sections and subsections (two level nesting).
    #
    # @!attribute [rw] title
    #   The title of the section.
    #   @return [String]
    #
    # @!attribute [rw] ref_id
    #   The identifier of the section. An identifier must be unique within
    #   the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] instructions
    #   The instructions of the section.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The items of the section.
    #   @return [Array<Types::EvaluationFormItem>]
    #
    # @!attribute [rw] weight
    #   The scoring weight of the section.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationFormSection AWS API Documentation
    #
    class EvaluationFormSection < Struct.new(
      :title,
      :ref_id,
      :instructions,
      :items,
      :weight)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the automation configuration in single select
    # questions. Automation options are evaluated in order, and the first
    # matched option is applied. If no automation option matches, and there
    # is a default option, then the default option is applied.
    #
    # @!attribute [rw] options
    #   The automation options of the single select question.
    #   @return [Array<Types::EvaluationFormSingleSelectQuestionAutomationOption>]
    #
    # @!attribute [rw] default_option_ref_id
    #   The identifier of the default answer option, when none of the
    #   automation options match the criteria.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationFormSingleSelectQuestionAutomation AWS API Documentation
    #
    class EvaluationFormSingleSelectQuestionAutomation < Struct.new(
      :options,
      :default_option_ref_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the automation option of a single select question.
    #
    # @note EvaluationFormSingleSelectQuestionAutomationOption is a union - when making an API calls you must set exactly one of the members.
    #
    # @note EvaluationFormSingleSelectQuestionAutomationOption is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of EvaluationFormSingleSelectQuestionAutomationOption corresponding to the set member.
    #
    # @!attribute [rw] rule_category
    #   The automation option based on a rule category for the single select
    #   question.
    #   @return [Types::SingleSelectQuestionRuleCategoryAutomation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationFormSingleSelectQuestionAutomationOption AWS API Documentation
    #
    class EvaluationFormSingleSelectQuestionAutomationOption < Struct.new(
      :rule_category,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class RuleCategory < EvaluationFormSingleSelectQuestionAutomationOption; end
      class Unknown < EvaluationFormSingleSelectQuestionAutomationOption; end
    end

    # Information about the automation configuration in single select
    # questions.
    #
    # @!attribute [rw] ref_id
    #   The identifier of the answer option. An identifier must be unique
    #   within the question.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The title of the answer option.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The score assigned to the answer option.
    #   @return [Integer]
    #
    # @!attribute [rw] automatic_fail
    #   The flag to mark the option as automatic fail. If an automatic fail
    #   answer is provided, the overall evaluation gets a score of 0.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationFormSingleSelectQuestionOption AWS API Documentation
    #
    class EvaluationFormSingleSelectQuestionOption < Struct.new(
      :ref_id,
      :text,
      :score,
      :automatic_fail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the options in single select questions.
    #
    # @!attribute [rw] options
    #   The answer options of the single select question.
    #   @return [Array<Types::EvaluationFormSingleSelectQuestionOption>]
    #
    # @!attribute [rw] display_as
    #   The display mode of the single select question.
    #   @return [String]
    #
    # @!attribute [rw] automation
    #   The display mode of the single select question.
    #   @return [Types::EvaluationFormSingleSelectQuestionAutomation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationFormSingleSelectQuestionProperties AWS API Documentation
    #
    class EvaluationFormSingleSelectQuestionProperties < Struct.new(
      :options,
      :display_as,
      :automation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about an evaluation form.
    #
    # @!attribute [rw] evaluation_form_id
    #   The unique identifier for the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_arn
    #   The Amazon Resource Name (ARN) for the evaluation form resource.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A title of the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp for when the evaluation form was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon Resource Name (ARN) of the user who created the
    #   evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp for when the evaluation form was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The Amazon Resource Name (ARN) of the user who last updated the
    #   evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] last_activated_time
    #   The timestamp for when the evaluation form was last activated.
    #   @return [Time]
    #
    # @!attribute [rw] last_activated_by
    #   The Amazon Resource Name (ARN) of the user who last activated the
    #   evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   The version number of the latest evaluation form version.
    #   @return [Integer]
    #
    # @!attribute [rw] active_version
    #   The version of the active evaluation form version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationFormSummary AWS API Documentation
    #
    class EvaluationFormSummary < Struct.new(
      :evaluation_form_id,
      :evaluation_form_arn,
      :title,
      :created_time,
      :created_by,
      :last_modified_time,
      :last_modified_by,
      :last_activated_time,
      :last_activated_by,
      :latest_version,
      :active_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about an evaluation form.
    #
    # @!attribute [rw] evaluation_form_arn
    #   The Amazon Resource Name (ARN) for the evaluation form resource.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_id
    #   The unique identifier for the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_version
    #   A version of the evaluation form.
    #   @return [Integer]
    #
    # @!attribute [rw] locked
    #   The flag indicating whether the evaluation form is locked for
    #   changes.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The status of the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp for when the evaluation form was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The Amazon Resource Name (ARN) of the user who created the
    #   evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp for when the evaluation form was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The Amazon Resource Name (ARN) of the user who last updated the
    #   evaluation form.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationFormVersionSummary AWS API Documentation
    #
    class EvaluationFormVersionSummary < Struct.new(
      :evaluation_form_arn,
      :evaluation_form_id,
      :evaluation_form_version,
      :locked,
      :status,
      :created_time,
      :created_by,
      :last_modified_time,
      :last_modified_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata information about a contact evaluation.
    #
    # @!attribute [rw] contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #   @return [String]
    #
    # @!attribute [rw] evaluator_arn
    #   The Amazon Resource Name (ARN) of the user who last updated the
    #   evaluation.
    #   @return [String]
    #
    # @!attribute [rw] contact_agent_id
    #   The identifier of the agent who performed the contact.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The overall score of the contact evaluation.
    #   @return [Types::EvaluationScore]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationMetadata AWS API Documentation
    #
    class EvaluationMetadata < Struct.new(
      :contact_id,
      :evaluator_arn,
      :contact_agent_id,
      :score)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about notes for a contact evaluation.
    #
    # @!attribute [rw] value
    #   The note for an item (section or question) in a contact evaluation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationNote AWS API Documentation
    #
    class EvaluationNote < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about scores of a contact evaluation item (section or
    # question).
    #
    # @!attribute [rw] percentage
    #   The score percentage for an item in a contact evaluation.
    #   @return [Float]
    #
    # @!attribute [rw] not_applicable
    #   The flag to mark the item as not applicable for scoring.
    #   @return [Boolean]
    #
    # @!attribute [rw] automatic_fail
    #   The flag that marks the item as automatic fail. If the item or a
    #   child item gets an automatic fail answer, this flag will be true.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationScore AWS API Documentation
    #
    class EvaluationScore < Struct.new(
      :percentage,
      :not_applicable,
      :automatic_fail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a contact evaluation.
    #
    # @!attribute [rw] evaluation_id
    #   A unique identifier for the contact evaluation.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_arn
    #   The Amazon Resource Name (ARN) for the contact evaluation resource.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_title
    #   A title of the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_id
    #   The unique identifier for the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the contact evaluation.
    #   @return [String]
    #
    # @!attribute [rw] evaluator_arn
    #   The Amazon Resource Name (ARN) of the user who last updated the
    #   evaluation.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The overall score of the contact evaluation.
    #   @return [Types::EvaluationScore]
    #
    # @!attribute [rw] created_time
    #   The timestamp for when the evaluation was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp for when the evaluation was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EvaluationSummary AWS API Documentation
    #
    class EvaluationSummary < Struct.new(
      :evaluation_id,
      :evaluation_arn,
      :evaluation_form_title,
      :evaluation_form_id,
      :status,
      :evaluator_arn,
      :score,
      :created_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The EventBridge action definition.
    #
    # @!attribute [rw] name
    #   The name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EventBridgeActionDefinition AWS API Documentation
    #
    class EventBridgeActionDefinition < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the filter to apply when retrieving metrics with the
    # [GetMetricDataV2][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_GetMetricDataV2.html
    #
    # @!attribute [rw] filter_key
    #   The key to use for filtering data. For example, `QUEUE`,
    #   `ROUTING_PROFILE, AGENT`, `CHANNEL`, `AGENT_HIERARCHY_LEVEL_ONE`,
    #   `AGENT_HIERARCHY_LEVEL_TWO`, `AGENT_HIERARCHY_LEVEL_THREE`,
    #   `AGENT_HIERARCHY_LEVEL_FOUR`, `AGENT_HIERARCHY_LEVEL_FIVE`. There
    #   must be at least 1 key and a maximum 5 keys.
    #   @return [String]
    #
    # @!attribute [rw] filter_values
    #   The identifiers to use for filtering data. For example, if you have
    #   a filter key of `QUEUE`, you would add queue IDs or ARNs in
    #   `FilterValues`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/FilterV2 AWS API Documentation
    #
    class FilterV2 < Struct.new(
      :filter_key,
      :filter_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the filter to apply when retrieving metrics.
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
    # @!attribute [rw] routing_profiles
    #   A list of up to 100 routing profile IDs or ARNs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Filters AWS API Documentation
    #
    class Filters < Struct.new(
      :queues,
      :channels,
      :routing_profiles)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The filters to apply to returned metrics. You can filter up to the
    #   following limits:
    #
    #   * Queues: 100
    #
    #   * Routing profiles: 100
    #
    #   * Channels: 3 (VOICE, CHAT, and TASK channels are supported.)
    #
    #   Metric data is retrieved only for the resources associated with the
    #   queues or routing profiles, and by any channels included in the
    #   filter. (You cannot filter by both queue AND routing profile.) You
    #   can include both resource IDs and resource ARNs in the same request.
    #
    #   Currently tagging is only supported on the resources that are passed
    #   in the filter.
    #   @return [Types::Filters]
    #
    # @!attribute [rw] groupings
    #   The grouping applied to the metrics returned. For example, when
    #   grouped by `QUEUE`, the metrics returned apply to each queue rather
    #   than aggregated for all queues.
    #
    #   * If you group by `CHANNEL`, you should include a Channels filter.
    #     VOICE, CHAT, and TASK channels are supported.
    #
    #   * If you group by `ROUTING_PROFILE`, you must include either a queue
    #     or routing profile filter. In addition, a routing profile filter
    #     is required for metrics `CONTACTS_SCHEDULED`, `CONTACTS_IN_QUEUE`,
    #     and ` OLDEST_CONTACT_AGE`.
    #
    #   * If no `Grouping` is included in the request, a summary of metrics
    #     is returned.
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
    # @!attribute [rw] sort_criteria
    #   The way to sort the resulting response based on metrics. You can
    #   enter one sort criteria. By default resources are sorted based on
    #   `AGENTS_ONLINE`, `DESCENDING`. The metric collection is sorted based
    #   on the input metrics.
    #
    #   Note the following:
    #
    #   * Sorting on `SLOTS_ACTIVE` and `SLOTS_AVAILABLE` is not supported.
    #
    #   ^
    #   @return [Array<Types::CurrentMetricSortCriteria>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetCurrentMetricDataRequest AWS API Documentation
    #
    class GetCurrentMetricDataRequest < Struct.new(
      :instance_id,
      :filters,
      :groupings,
      :current_metrics,
      :next_token,
      :max_results,
      :sort_criteria)
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
    # @!attribute [rw] approximate_total_count
    #   The total count of the result, regardless of the current page size.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetCurrentMetricDataResponse AWS API Documentation
    #
    class GetCurrentMetricDataResponse < Struct.new(
      :next_token,
      :metric_results,
      :data_snapshot_time,
      :approximate_total_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The filters to apply to returned user data. You can filter up to the
    #   following limits:
    #
    #   * Queues: 100
    #
    #   * Routing profiles: 100
    #
    #   * Agents: 100
    #
    #   * Contact states: 9
    #
    #   * User hierarchy groups: 1
    #
    #   The user data is retrieved for only the specified values/resources
    #   in the filter. A maximum of one filter can be passed from queues,
    #   routing profiles, agents, and user hierarchy groups.
    #
    #   Currently tagging is only supported on the resources that are passed
    #   in the filter.
    #   @return [Types::UserDataFilters]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetCurrentUserDataRequest AWS API Documentation
    #
    class GetCurrentUserDataRequest < Struct.new(
      :instance_id,
      :filters,
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
    # @!attribute [rw] user_data_list
    #   A list of the user data that is returned.
    #   @return [Array<Types::UserData>]
    #
    # @!attribute [rw] approximate_total_count
    #   The total count of the result, regardless of the current page size.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetCurrentUserDataResponse AWS API Documentation
    #
    class GetCurrentUserDataResponse < Struct.new(
      :next_token,
      :user_data_list,
      :approximate_total_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    # @!attribute [rw] sign_in_url
    #   The URL to sign into the user's instance.
    #   @return [String]
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) of the user.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier for the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetFederationTokenResponse AWS API Documentation
    #
    class GetFederationTokenResponse < Struct.new(
      :credentials,
      :sign_in_url,
      :user_arn,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource. This includes the
    #   `instanceId` an Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp, in UNIX Epoch time format, at which to start the
    #   reporting interval for the retrieval of historical metrics data. The
    #   time must be before the end time timestamp. The time range between
    #   the start and end time must be less than 24 hours. The start time
    #   cannot be earlier than 35 days before the time of the request.
    #   Historical metrics are available for 35 days.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The timestamp, in UNIX Epoch time format, at which to end the
    #   reporting interval for the retrieval of historical metrics data. The
    #   time must be later than the start time timestamp. It cannot be later
    #   than the current timestamp.
    #
    #   The time range between the start and end time must be less than 24
    #   hours.
    #   @return [Time]
    #
    # @!attribute [rw] filters
    #   The filters to apply to returned metrics. You can filter on the
    #   following resources:
    #
    #   * Queues
    #
    #   * Routing profiles
    #
    #   * Agents
    #
    #   * Channels
    #
    #   * User hierarchy groups
    #
    #   At least one filter must be passed from queues, routing profiles,
    #   agents, or user hierarchy groups.
    #
    #   To filter by phone number, see [Create a historical metrics
    #   report][1] in the *Amazon Connect Administrator's Guide*.
    #
    #   Note the following limits:
    #
    #   * **Filter keys**: A maximum of 5 filter keys are supported in a
    #     single request. Valid filter keys: `QUEUE` \| `ROUTING_PROFILE` \|
    #     `AGENT` \| `CHANNEL` \| `AGENT_HIERARCHY_LEVEL_ONE` \|
    #     `AGENT_HIERARCHY_LEVEL_TWO` \| `AGENT_HIERARCHY_LEVEL_THREE` \|
    #     `AGENT_HIERARCHY_LEVEL_FOUR` \| `AGENT_HIERARCHY_LEVEL_FIVE`
    #
    #   * **Filter values**: A maximum of 100 filter values are supported in
    #     a single request. VOICE, CHAT, and TASK are valid `filterValue`
    #     for the CHANNEL filter key. They do not count towards limitation
    #     of 100 filter values. For example, a GetMetricDataV2 request can
    #     filter by 50 queues, 35 agents, and 15 routing profiles for a
    #     total of 100 filter values, along with 3 channel filters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/create-historical-metrics-report.html
    #   @return [Array<Types::FilterV2>]
    #
    # @!attribute [rw] groupings
    #   The grouping applied to the metrics that are returned. For example,
    #   when results are grouped by queue, the metrics returned are grouped
    #   by queue. The values that are returned apply to the metrics for each
    #   queue. They are not aggregated for all queues.
    #
    #   If no grouping is specified, a summary of all metrics is returned.
    #
    #   Valid grouping keys: `QUEUE` \| `ROUTING_PROFILE` \| `AGENT` \|
    #   `CHANNEL` \| `AGENT_HIERARCHY_LEVEL_ONE` \|
    #   `AGENT_HIERARCHY_LEVEL_TWO` \| `AGENT_HIERARCHY_LEVEL_THREE` \|
    #   `AGENT_HIERARCHY_LEVEL_FOUR` \| `AGENT_HIERARCHY_LEVEL_FIVE`
    #   @return [Array<String>]
    #
    # @!attribute [rw] metrics
    #   The metrics to retrieve. Specify the name, groupings, and filters
    #   for each metric. The following historical metrics are available. For
    #   a description of each metric, see [Historical metrics
    #   definitions][1] in the *Amazon Connect Administrator's Guide*.
    #
    #   AGENT\_ADHERENT\_TIME
    #
    #   : This metric is available only in Amazon Web Services Regions where
    #     [Forecasting, capacity planning, and scheduling][2] is available.
    #
    #     Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   AGENT\_NON\_RESPONSE
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   AGENT\_OCCUPANCY
    #
    #   : Unit: Percentage
    #
    #     Valid groupings and filters: Routing Profile, Agent, Agent
    #     Hierarchy
    #
    #   AGENT\_SCHEDULE\_ADHERENCE
    #
    #   : This metric is available only in Amazon Web Services Regions where
    #     [Forecasting, capacity planning, and scheduling][2] is available.
    #
    #     Unit: Percent
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   AGENT\_SCHEDULED\_TIME
    #
    #   : This metric is available only in Amazon Web Services Regions where
    #     [Forecasting, capacity planning, and scheduling][2] is available.
    #
    #     Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   AVG\_ABANDON\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   AVG\_AFTER\_CONTACT\_WORK\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   AVG\_AGENT\_CONNECTING\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid metric filter key: `INITIATION_METHOD`. For now, this metric
    #     only supports the following as `INITIATION_METHOD`: `INBOUND` \|
    #     `OUTBOUND` \| `CALLBACK` \| `API`
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   AVG\_HANDLE\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   AVG\_HOLD\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   AVG\_INTERACTION\_AND\_HOLD\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   AVG\_INTERACTION\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile
    #
    #   AVG\_QUEUE\_ANSWER\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile
    #
    #   CONTACTS\_ABANDONED
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   CONTACTS\_CREATED
    #
    #   : Unit: Count
    #
    #     Valid metric filter key: `INITIATION_METHOD`
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile
    #
    #   CONTACTS\_HANDLED
    #
    #   : Unit: Count
    #
    #     Valid metric filter key: `INITIATION_METHOD`, `DISCONNECT_REASON`
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   CONTACTS\_HOLD\_ABANDONS
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   CONTACTS\_QUEUED
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   CONTACTS\_TRANSFERRED\_OUT
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   CONTACTS\_TRANSFERRED\_OUT\_BY\_AGENT
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   CONTACTS\_TRANSFERRED\_OUT\_FROM\_QUEUE
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   MAX\_QUEUED\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   SERVICE\_LEVEL
    #
    #   : You can include up to 20 SERVICE\_LEVEL metrics in a request.
    #
    #     Unit: Percent
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile
    #
    #     Threshold: For `ThresholdValue`, enter any whole number from 1 to
    #     604800 (inclusive), in seconds. For `Comparison`, you must enter
    #     `LT` (for "Less than").
    #
    #   SUM\_CONTACTS\_ANSWERED\_IN\_X
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile
    #
    #     Threshold: For `ThresholdValue`, enter any whole number from 1 to
    #     604800 (inclusive), in seconds. For `Comparison`, you must enter
    #     `LT` (for "Less than").
    #
    #   SUM\_CONTACTS\_ABANDONED\_IN\_X
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile
    #
    #     Threshold: For `ThresholdValue`, enter any whole number from 1 to
    #     604800 (inclusive), in seconds. For `Comparison`, you must enter
    #     `LT` (for "Less than").
    #
    #   SUM\_CONTACTS\_DISCONNECTED
    #
    #   : Valid metric filter key: `DISCONNECT_REASON`
    #
    #     Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile
    #
    #   SUM\_RETRY\_CALLBACK\_ATTEMPTS
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html
    #   [2]: https://docs.aws.amazon.com/connect/latest/adminguide/regions.html#optimization_region
    #   @return [Array<Types::MetricV2>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetMetricDataV2Request AWS API Documentation
    #
    class GetMetricDataV2Request < Struct.new(
      :resource_arn,
      :start_time,
      :end_time,
      :filters,
      :groupings,
      :metrics,
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
    # @!attribute [rw] metric_results
    #   Information about the metrics requested in the API request If no
    #   grouping is specified, a summary of metric data is returned.
    #   @return [Array<Types::MetricResultV2>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetMetricDataV2Response AWS API Documentation
    #
    class GetMetricDataV2Response < Struct.new(
      :next_token,
      :metric_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] prompt_id
    #   A unique identifier for the prompt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetPromptFileRequest AWS API Documentation
    #
    class GetPromptFileRequest < Struct.new(
      :instance_id,
      :prompt_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] prompt_presigned_url
    #   A generated URL to the prompt that can be given to an unauthorized
    #   user so they can access the prompt in S3.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetPromptFileResponse AWS API Documentation
    #
    class GetPromptFileResponse < Struct.new(
      :prompt_presigned_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] task_template_id
    #   A unique identifier for the task template.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_version
    #   The system generated version of a task template that is associated
    #   with a task, when the task is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetTaskTemplateRequest AWS API Documentation
    #
    class GetTaskTemplateRequest < Struct.new(
      :instance_id,
      :task_template_id,
      :snapshot_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the task template.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the task template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the task template.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the flow that runs by default when a task is
    #   created by referencing this template.
    #   @return [String]
    #
    # @!attribute [rw] constraints
    #   Constraints that are applicable to the fields listed.
    #   @return [Types::TaskTemplateConstraints]
    #
    # @!attribute [rw] defaults
    #   The default values for fields when a task is created by referencing
    #   this template.
    #   @return [Types::TaskTemplateDefaults]
    #
    # @!attribute [rw] fields
    #   Fields that are part of the template.
    #   @return [Array<Types::TaskTemplateField>]
    #
    # @!attribute [rw] status
    #   Marks a template as `ACTIVE` or `INACTIVE` for a task to refer to
    #   it. Tasks can only be created from `ACTIVE` templates. If a template
    #   is marked as `INACTIVE`, then a task that refers to this template
    #   cannot be created.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when the task template was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the task template was created.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetTaskTemplateResponse AWS API Documentation
    #
    class GetTaskTemplateResponse < Struct.new(
      :instance_id,
      :id,
      :arn,
      :name,
      :description,
      :contact_flow_id,
      :constraints,
      :defaults,
      :fields,
      :status,
      :last_modified_time,
      :created_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the traffic distribution group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetTrafficDistributionRequest AWS API Documentation
    #
    class GetTrafficDistributionRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] telephony_config
    #   The distribution of traffic between the instance and its replicas.
    #   @return [Types::TelephonyConfig]
    #
    # @!attribute [rw] id
    #   The identifier of the traffic distribution group. This can be the ID
    #   or the ARN if the API is being called in the Region where the
    #   traffic distribution group was created. The ARN must be provided if
    #   the call is from the replicated Region.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the traffic distribution group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetTrafficDistributionResponse AWS API Documentation
    #
    class GetTrafficDistributionResponse < Struct.new(
      :telephony_config,
      :id,
      :arn)
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
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
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

    # A leaf node condition which can be used to specify a hierarchy group
    # condition.
    #
    # @!attribute [rw] value
    #   The value in the hierarchy group condition.
    #   @return [String]
    #
    # @!attribute [rw] hierarchy_group_match_type
    #   The type of hierarchy group match.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HierarchyGroupCondition AWS API Documentation
    #
    class HierarchyGroupCondition < Struct.new(
      :value,
      :hierarchy_group_match_type)
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

    # Information about the hierarchy group.
    #
    # @!attribute [rw] id
    #   The unique identifier for the hierarchy group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the hierarchy group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HierarchyGroupSummaryReference AWS API Documentation
    #
    class HierarchyGroupSummaryReference < Struct.new(
      :id,
      :arn)
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

    # Information about the levels in the hierarchy group.
    #
    # @!attribute [rw] level_one
    #   Information about level one.
    #   @return [Types::HierarchyGroupSummaryReference]
    #
    # @!attribute [rw] level_two
    #   Information about level two.
    #   @return [Types::HierarchyGroupSummaryReference]
    #
    # @!attribute [rw] level_three
    #   Information about level three.
    #   @return [Types::HierarchyGroupSummaryReference]
    #
    # @!attribute [rw] level_four
    #   Information about level four.
    #   @return [Types::HierarchyGroupSummaryReference]
    #
    # @!attribute [rw] level_five
    #   Information about level five.
    #   @return [Types::HierarchyGroupSummaryReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HierarchyPathReference AWS API Documentation
    #
    class HierarchyPathReference < Struct.new(
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
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
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

    # The search criteria to be used to return hours of operations.
    #
    # @!attribute [rw] or_conditions
    #   A list of conditions which would be applied together with an OR
    #   condition.
    #   @return [Array<Types::HoursOfOperationSearchCriteria>]
    #
    # @!attribute [rw] and_conditions
    #   A list of conditions which would be applied together with an AND
    #   condition.
    #   @return [Array<Types::HoursOfOperationSearchCriteria>]
    #
    # @!attribute [rw] string_condition
    #   A leaf node condition which can be used to specify a string
    #   condition.
    #
    #   <note markdown="1"> The currently supported values for `FieldName` are `name`,
    #   `description`, `timezone`, and `resourceID`.
    #
    #    </note>
    #   @return [Types::StringCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HoursOfOperationSearchCriteria AWS API Documentation
    #
    class HoursOfOperationSearchCriteria < Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters to be applied to search results.
    #
    # @!attribute [rw] tag_filter
    #   An object that can be used to specify Tag conditions inside the
    #   `SearchFilter`. This accepts an `OR` of `AND` (List of List) input
    #   where:
    #
    #   * Top level list specifies conditions that need to be applied with
    #     `OR` operator
    #
    #   * Inner list specifies conditions that need to be applied with `AND`
    #     operator.
    #   @return [Types::ControlPlaneTagFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HoursOfOperationSearchFilter AWS API Documentation
    #
    class HoursOfOperationSearchFilter < Struct.new(
      :tag_filter)
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
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    # @!attribute [rw] instance_access_url
    #   This URL allows contact center users to access the Amazon Connect
    #   admin website.
    #   @return [String]
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
      :outbound_calls_enabled,
      :instance_access_url)
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
    # @!attribute [rw] instance_access_url
    #   This URL allows contact center users to access the Amazon Connect
    #   admin website.
    #   @return [String]
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
      :outbound_calls_enabled,
      :instance_access_url)
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
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # The flow is not valid.
    #
    # @!attribute [rw] problems
    #   The problems with the flow. Please fix before trying again.
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

    # A field that is invisible to an agent.
    #
    # @!attribute [rw] id
    #   Identifier of the invisible field.
    #   @return [Types::TaskTemplateFieldIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/InvisibleFieldInfo AWS API Documentation
    #
    class InvisibleFieldInfo < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information of a Kinesis Data Firehose delivery stream.
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
    # @!attribute [rw] name
    #   The name of the Amazon Lex bot.
    #   @return [String]
    #
    # @!attribute [rw] lex_region
    #   The Amazon Web Services Region where the Amazon Lex bot was created.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    #   The names and Amazon Web Services Regions of the Amazon Lex or
    #   Amazon Lex V2 bots associated with the specified instance.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    #   This is not expected to be set because the value returned in the
    #   previous response is always null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListContactEvaluationsRequest AWS API Documentation
    #
    class ListContactEvaluationsRequest < Struct.new(
      :instance_id,
      :contact_id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evaluation_summary_list
    #   Provides details about a list of contact evaluations belonging to an
    #   instance.
    #   @return [Array<Types::EvaluationSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #
    #   This is always returned as null in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListContactEvaluationsResponse AWS API Documentation
    #
    class ListContactEvaluationsResponse < Struct.new(
      :evaluation_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    #   The state of the flow module.
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
    #   Information about the flow module.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_types
    #   The type of flow.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
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
    #   Information about the flows.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    #   Information about the flows.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_id
    #   The unique identifier for the evaluation form.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListEvaluationFormVersionsRequest AWS API Documentation
    #
    class ListEvaluationFormVersionsRequest < Struct.new(
      :instance_id,
      :evaluation_form_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evaluation_form_version_summary_list
    #   Provides details about a list of evaluation forms belonging to an
    #   instance.
    #   @return [Array<Types::EvaluationFormVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListEvaluationFormVersionsResponse AWS API Documentation
    #
    class ListEvaluationFormVersionsResponse < Struct.new(
      :evaluation_form_version_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListEvaluationFormsRequest AWS API Documentation
    #
    class ListEvaluationFormsRequest < Struct.new(
      :instance_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evaluation_form_summary_list
    #   Provides details about a list of evaluation forms belonging to an
    #   instance.
    #   @return [Array<Types::EvaluationFormSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListEvaluationFormsResponse AWS API Documentation
    #
    class ListEvaluationFormsResponse < Struct.new(
      :evaluation_form_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    #   The names and Amazon Web Services Regions of the Amazon Lex bots
    #   associated with the specified instance.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
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

    # Information about phone numbers that have been claimed to your Amazon
    # Connect instance or traffic distribution group.
    #
    # @!attribute [rw] phone_number_id
    #   A unique identifier for the phone number.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_arn
    #   The Amazon Resource Name (ARN) of the phone number.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number. Phone numbers are formatted `[+] [country code]
    #   [subscriber number including area code]`.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_country_code
    #   The ISO country code.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_type
    #   The type of phone number.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) for Amazon Connect instances or
    #   traffic distribution groups that phone numbers are claimed to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListPhoneNumbersSummary AWS API Documentation
    #
    class ListPhoneNumbersSummary < Struct.new(
      :phone_number_id,
      :phone_number_arn,
      :phone_number,
      :phone_number_country_code,
      :phone_number_type,
      :target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) for Amazon Connect instances or
    #   traffic distribution groups that phone numbers are claimed to. If
    #   `TargetArn` input is not provided, this API lists numbers claimed to
    #   all the Amazon Connect instances belonging to your account in the
    #   same Amazon Web Services Region as the request.
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
    # @!attribute [rw] phone_number_country_codes
    #   The ISO country code.
    #   @return [Array<String>]
    #
    # @!attribute [rw] phone_number_types
    #   The type of phone number.
    #   @return [Array<String>]
    #
    # @!attribute [rw] phone_number_prefix
    #   The prefix of the phone number. If provided, it must contain `+` as
    #   part of the country code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListPhoneNumbersV2Request AWS API Documentation
    #
    class ListPhoneNumbersV2Request < Struct.new(
      :target_arn,
      :max_results,
      :next_token,
      :phone_number_country_codes,
      :phone_number_types,
      :phone_number_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] list_phone_numbers_summary_list
    #   Information about phone numbers that have been claimed to your
    #   Amazon Connect instances or traffic distribution groups.
    #   @return [Array<Types::ListPhoneNumbersSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListPhoneNumbersV2Response AWS API Documentation
    #
    class ListPhoneNumbersV2Response < Struct.new(
      :next_token,
      :list_phone_numbers_summary_list)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] publish_status
    #   The publish status of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_source_name
    #   The name of the event source.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListRulesRequest AWS API Documentation
    #
    class ListRulesRequest < Struct.new(
      :instance_id,
      :publish_status,
      :event_source_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_summary_list
    #   Summary information about a rule.
    #   @return [Array<Types::RuleSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListRulesResponse AWS API Documentation
    #
    class ListRulesResponse < Struct.new(
      :rule_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] security_profile_id
    #   The identifier for the security profle.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    #   The permissions granted to the security profile. For a complete list
    #   of valid permissions, see [List of security profile permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
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

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource. All Amazon Connect
    #   resources (instances, queues, flows, routing profiles, etc) have an
    #   ARN. To locate the ARN for an instance, for example, see [Find your
    #   Amazon Connect instance ID/ARN][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    #   It is not expected that you set this because the value returned in
    #   the previous response is always null.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #
    #   It is not expected that you set this.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Marks a template as `ACTIVE` or `INACTIVE` for a task to refer to
    #   it. Tasks can only be created from `ACTIVE` templates. If a template
    #   is marked as `INACTIVE`, then a task that refers to this template
    #   cannot be created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the task template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListTaskTemplatesRequest AWS API Documentation
    #
    class ListTaskTemplatesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :status,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_templates
    #   Provides details about a list of task templates belonging to an
    #   instance.
    #   @return [Array<Types::TaskTemplateMetadata>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #
    #   This is always returned as a null in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListTaskTemplatesResponse AWS API Documentation
    #
    class ListTaskTemplatesResponse < Struct.new(
      :task_templates,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListTrafficDistributionGroupsRequest AWS API Documentation
    #
    class ListTrafficDistributionGroupsRequest < Struct.new(
      :max_results,
      :next_token,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] traffic_distribution_group_summary_list
    #   A list of traffic distribution groups.
    #   @return [Array<Types::TrafficDistributionGroupSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListTrafficDistributionGroupsResponse AWS API Documentation
    #
    class ListTrafficDistributionGroupsResponse < Struct.new(
      :next_token,
      :traffic_distribution_group_summary_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about the use cases for the specified
    # integration association.
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
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

    # Maximum number (1000) of tags have been returned with current request.
    # Consider changing request parameters to get more tags.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/MaximumResultReturnedException AWS API Documentation
    #
    class MaximumResultReturnedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about which channels are supported, and how many
    # contacts an agent can have on a channel simultaneously.
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
    #   Valid Range for `VOICE`: Minimum value of 1. Maximum value of 1.
    #
    #   Valid Range for `CHAT`: Minimum value of 1. Maximum value of 10.
    #
    #   Valid Range for `TASK`: Minimum value of 1. Maximum value of 10.
    #   @return [Integer]
    #
    # @!attribute [rw] cross_channel_behavior
    #   Defines the cross-channel routing behavior for each channel that is
    #   enabled for this Routing Profile. For example, this allows you to
    #   offer an agent a different contact from another channel when they
    #   are currently working with a contact from a Voice channel.
    #   @return [Types::CrossChannelBehavior]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/MediaConcurrency AWS API Documentation
    #
    class MediaConcurrency < Struct.new(
      :channel,
      :concurrency,
      :cross_channel_behavior)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the name, thresholds, and metric filters.
    #
    # @!attribute [rw] metric
    #   The metric name, thresholds, and metric filters of the returned
    #   metric.
    #   @return [Types::MetricV2]
    #
    # @!attribute [rw] value
    #   The corresponding value of the metric returned in the response.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/MetricDataV2 AWS API Documentation
    #
    class MetricDataV2 < Struct.new(
      :metric,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the filter used when retrieving metrics.
    # `MetricFiltersV2` can be used on the following metrics:
    # `AVG_AGENT_CONNECTING_TIME`, `CONTACTS_CREATED`, `CONTACTS_HANDLED`,
    # `SUM_CONTACTS_DISCONNECTED`.
    #
    # @!attribute [rw] metric_filter_key
    #   The key to use for filtering data.
    #
    #   Valid metric filter keys: `INITIATION_METHOD`, `DISCONNECT_REASON`.
    #   These are the same values as the `InitiationMethod` and
    #   `DisconnectReason` in the contact record. For more information, see
    #   [ContactTraceRecord][1] in the *Amazon Connect Administrator's
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/ctr-data-model.html#ctr-ContactTraceRecord
    #   @return [String]
    #
    # @!attribute [rw] metric_filter_values
    #   The values to use for filtering data.
    #
    #   Valid metric filter values for `INITIATION_METHOD`: `INBOUND` \|
    #   `OUTBOUND` \| `TRANSFER` \| `QUEUE_TRANSFER` \| `CALLBACK` \| `API`
    #
    #   Valid metric filter values for `DISCONNECT_REASON`:
    #   `CUSTOMER_DISCONNECT` \| `AGENT_DISCONNECT` \|
    #   `THIRD_PARTY_DISCONNECT` \| `TELECOM_PROBLEM` \| `BARGED` \|
    #   `CONTACT_FLOW_DISCONNECT` \| `OTHER` \| `EXPIRED` \| `API`
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/MetricFilterV2 AWS API Documentation
    #
    class MetricFilterV2 < Struct.new(
      :metric_filter_key,
      :metric_filter_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the metric results.
    #
    # @!attribute [rw] dimensions
    #   The dimension for the metrics.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] collections
    #   The set of metrics.
    #   @return [Array<Types::MetricDataV2>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/MetricResultV2 AWS API Documentation
    #
    class MetricResultV2 < Struct.new(
      :dimensions,
      :collections)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the metric.
    #
    # @!attribute [rw] name
    #   The name of the metric.
    #
    #   This parameter is required. The following Required = No is
    #   incorrect.
    #   @return [String]
    #
    # @!attribute [rw] threshold
    #   Contains information about the threshold for service level metrics.
    #   @return [Array<Types::ThresholdV2>]
    #
    # @!attribute [rw] metric_filters
    #   Contains the filters to be used when returning data.
    #   @return [Array<Types::MetricFilterV2>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/MetricV2 AWS API Documentation
    #
    class MetricV2 < Struct.new(
      :name,
      :threshold,
      :metric_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_id
    #   The identifier of the contact.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user account.
    #   @return [String]
    #
    # @!attribute [rw] allowed_monitor_capabilities
    #   Specify which monitoring actions the user is allowed to take. For
    #   example, whether the user is allowed to escalate from silent
    #   monitoring to barge.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/MonitorContactRequest AWS API Documentation
    #
    class MonitorContactRequest < Struct.new(
      :instance_id,
      :contact_id,
      :user_id,
      :allowed_monitor_capabilities,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_id
    #   The identifier of the contact.
    #   @return [String]
    #
    # @!attribute [rw] contact_arn
    #   The ARN of the contact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/MonitorContactResponse AWS API Documentation
    #
    class MonitorContactResponse < Struct.new(
      :contact_id,
      :contact_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The type of notification recipient.
    #
    # @!attribute [rw] user_tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}. Amazon Connect users with the specified
    #   tags will be notified.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] user_ids
    #   A list of user IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/NotificationRecipientType AWS API Documentation
    #
    class NotificationRecipientType < Struct.new(
      :user_tags,
      :user_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a reference when the `referenceType` is `NUMBER`.
    # Otherwise, null.
    #
    # @!attribute [rw] name
    #   Identifier of the number reference.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A valid number.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/NumberReference AWS API Documentation
    #
    class NumberReference < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the property value used in automation of a numeric
    # questions. Label values are associated with minimum and maximum values
    # for the numeric question.
    #
    # * Sentiment scores have a minimum value of -5 and maximum value of 5.
    #
    # * Duration labels, such as `NON_TALK_TIME`, `CONTACT_DURATION`,
    #   `AGENT_INTERACTION_DURATION`, `CUSTOMER_HOLD_TIME` have a minimum
    #   value of 0 and maximum value of 28800.
    #
    # * Percentages have a minimum value of 0 and maximum value of 100.
    #
    # * `NUMBER_OF_INTERRUPTIONS` has a minimum value of 0 and maximum value
    #   of 1000.
    #
    # @!attribute [rw] label
    #   The property label of the automation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/NumericQuestionPropertyValueAutomation AWS API Documentation
    #
    class NumericQuestionPropertyValueAutomation < Struct.new(
      :label)
      SENSITIVE = []
      include Aws::Structure
    end

    # The outbound caller ID name, number, and outbound whisper flow.
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

    # The details to add for the participant.
    #
    # @!attribute [rw] participant_role
    #   The role of the participant being added.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the participant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ParticipantDetailsToAdd AWS API Documentation
    #
    class ParticipantDetailsToAdd < Struct.new(
      :participant_role,
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for the timer. After the timer configuration
    # is set, it persists for the duration of the chat. It persists across
    # new contacts in the chain, for example, transfer contacts.
    #
    # For more information about how chat timeouts work, see [Set up chat
    # timeouts for human participants][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/setup-chat-timeouts.html
    #
    # @!attribute [rw] participant_role
    #   The role of the participant in the chat conversation.
    #   @return [String]
    #
    # @!attribute [rw] timer_type
    #   The type of timer. `IDLE` indicates the timer applies for
    #   considering a human chat participant as idle.
    #   `DISCONNECT_NONCUSTOMER` indicates the timer applies to
    #   automatically disconnecting a chat participant due to idleness.
    #   @return [String]
    #
    # @!attribute [rw] timer_value
    #   The value of the timer. Either the timer action (Unset to delete the
    #   timer), or the duration of the timer in minutes. Only one value can
    #   be set.
    #   @return [Types::ParticipantTimerValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ParticipantTimerConfiguration AWS API Documentation
    #
    class ParticipantTimerConfiguration < Struct.new(
      :participant_role,
      :timer_type,
      :timer_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value of the timer. Either the timer action (`Unset` to delete the
    # timer), or the duration of the timer in minutes. Only one value can be
    # set.
    #
    # For more information about how chat timeouts work, see [Set up chat
    # timeouts for human participants][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/setup-chat-timeouts.html
    #
    # @note ParticipantTimerValue is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] participant_timer_action
    #   The timer action. Currently only one value is allowed: `Unset`. It
    #   deletes a timer.
    #   @return [String]
    #
    # @!attribute [rw] participant_timer_duration_in_minutes
    #   The duration of a timer, in minutes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ParticipantTimerValue AWS API Documentation
    #
    class ParticipantTimerValue < Struct.new(
      :participant_timer_action,
      :participant_timer_duration_in_minutes,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ParticipantTimerAction < ParticipantTimerValue; end
      class ParticipantTimerDurationInMinutes < ParticipantTimerValue; end
      class Unknown < ParticipantTimerValue; end
    end

    # The credentials used by the participant.
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
    # @!attribute [rw] expiry
    #   The expiration of the token. It's specified in ISO 8601 format:
    #   yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ParticipantTokenCredentials AWS API Documentation
    #
    class ParticipantTokenCredentials < Struct.new(
      :participant_token,
      :expiry)
      SENSITIVE = []
      include Aws::Structure
    end

    # Enable persistent chats. For more information about enabling
    # persistent chat, and for example use cases and how to configure for
    # them, see [Enable persistent chat][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html
    #
    # @!attribute [rw] rehydration_type
    #   The contactId that is used for rehydration depends on the
    #   rehydration type. RehydrationType is required for persistent chat.
    #
    #   * `ENTIRE_PAST_SESSION`: Rehydrates a chat from the most recently
    #     terminated past chat contact of the specified past ended chat
    #     session. To use this type, provide the `initialContactId` of the
    #     past ended chat session in the `sourceContactId` field. In this
    #     type, Amazon Connect determines the most recent chat contact on
    #     the specified chat session that has ended, and uses it to start a
    #     persistent chat.
    #
    #   * `FROM_SEGMENT`: Rehydrates a chat from the past chat contact that
    #     is specified in the `sourceContactId` field.
    #
    #   The actual contactId used for rehydration is provided in the
    #   response of this API.
    #   @return [String]
    #
    # @!attribute [rw] source_contact_id
    #   The contactId from which a persistent chat session must be started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/PersistentChat AWS API Documentation
    #
    class PersistentChat < Struct.new(
      :rehydration_type,
      :source_contact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a phone number for a quick connect.
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

    # The status of the phone number.
    #
    # * `CLAIMED` means the previous [ClaimedPhoneNumber][1] or
    #   [UpdatePhoneNumber][2] operation succeeded.
    #
    # * `IN_PROGRESS` means a [ClaimedPhoneNumber][1] or
    #   [UpdatePhoneNumber][2] operation is still in progress and has not
    #   yet completed. You can call [DescribePhoneNumber][3] at a later time
    #   to verify if the previous operation has completed.
    #
    # * `FAILED` indicates that the previous [ClaimedPhoneNumber][1] or
    #   [UpdatePhoneNumber][2] operation has failed. It will include a
    #   message indicating the failure reason. A common reason for a failure
    #   may be that the `TargetArn` value you are claiming or updating a
    #   phone number to has reached its limit of total claimed numbers. If
    #   you received a `FAILED` status from a `ClaimPhoneNumber` API call,
    #   you have one day to retry claiming the phone number before the
    #   number is released back to the inventory for other customers to
    #   claim.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_ClaimedPhoneNumber.html
    # [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdatePhoneNumber.html
    # [3]: https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html
    #
    # @!attribute [rw] status
    #   The status.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The status message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/PhoneNumberStatus AWS API Documentation
    #
    class PhoneNumberStatus < Struct.new(
      :status,
      :message)
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

    # Information about a prompt.
    #
    # @!attribute [rw] prompt_arn
    #   The Amazon Resource Name (ARN) of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] prompt_id
    #   A unique identifier for the prompt.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Prompt AWS API Documentation
    #
    class Prompt < Struct.new(
      :prompt_arn,
      :prompt_id,
      :name,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The search criteria to be used to return prompts.
    #
    # @!attribute [rw] or_conditions
    #   A list of conditions which would be applied together with an OR
    #   condition.
    #   @return [Array<Types::PromptSearchCriteria>]
    #
    # @!attribute [rw] and_conditions
    #   A list of conditions which would be applied together with an AND
    #   condition.
    #   @return [Array<Types::PromptSearchCriteria>]
    #
    # @!attribute [rw] string_condition
    #   A leaf node condition which can be used to specify a string
    #   condition.
    #
    #   <note markdown="1"> The currently supported values for `FieldName` are `name`,
    #   `description`, and `resourceID`.
    #
    #    </note>
    #   @return [Types::StringCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/PromptSearchCriteria AWS API Documentation
    #
    class PromptSearchCriteria < Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters to be applied to search results.
    #
    # @!attribute [rw] tag_filter
    #   An object that can be used to specify Tag conditions inside the
    #   `SearchFilter`. This accepts an `OR` of `AND` (List of List) input
    #   where:
    #
    #   * Top level list specifies conditions that need to be applied with
    #     `OR` operator
    #
    #   * Inner list specifies conditions that need to be applied with `AND`
    #     operator.
    #   @return [Types::ControlPlaneTagFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/PromptSearchFilter AWS API Documentation
    #
    class PromptSearchFilter < Struct.new(
      :tag_filter)
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

    # The property is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] property_list
    #   @return [Array<Types::PropertyValidationExceptionProperty>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/PropertyValidationException AWS API Documentation
    #
    class PropertyValidationException < Struct.new(
      :message,
      :property_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about why a property is not valid.
    #
    # @!attribute [rw] property_path
    #   The full property path.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Why the property is not valid.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message describing why the property is not valid.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/PropertyValidationExceptionProperty AWS API Documentation
    #
    class PropertyValidationExceptionProperty < Struct.new(
      :property_path,
      :reason,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The identifier of the user.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] agent_status_id
    #   The identifier of the agent status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/PutUserStatusRequest AWS API Documentation
    #
    class PutUserStatusRequest < Struct.new(
      :user_id,
      :instance_id,
      :agent_status_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/PutUserStatusResponse AWS API Documentation
    #
    class PutUserStatusResponse < Aws::EmptyStructure; end

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
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
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
    #   The unique identifier for the queue.
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

    # Contains information about a queue for a quick connect. The flow must
    # be of type Transfer to Queue.
    #
    # @!attribute [rw] queue_id
    #   The identifier for the queue.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the flow.
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

    # The search criteria to be used to return queues.
    #
    # <note markdown="1"> The `name` and `description` fields support "contains" queries with
    # a minimum of 2 characters and a maximum of 25 characters. Any queries
    # with character lengths outside of this range will throw invalid
    # results.
    #
    #  </note>
    #
    # @!attribute [rw] or_conditions
    #   A list of conditions which would be applied together with an OR
    #   condition.
    #   @return [Array<Types::QueueSearchCriteria>]
    #
    # @!attribute [rw] and_conditions
    #   A list of conditions which would be applied together with an AND
    #   condition.
    #   @return [Array<Types::QueueSearchCriteria>]
    #
    # @!attribute [rw] string_condition
    #   A leaf node condition which can be used to specify a string
    #   condition.
    #
    #   <note markdown="1"> The currently supported values for `FieldName` are `name`,
    #   `description`, and `resourceID`.
    #
    #    </note>
    #   @return [Types::StringCondition]
    #
    # @!attribute [rw] queue_type_condition
    #   The type of queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/QueueSearchCriteria AWS API Documentation
    #
    class QueueSearchCriteria < Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition,
      :queue_type_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters to be applied to search results.
    #
    # @!attribute [rw] tag_filter
    #   An object that can be used to specify Tag conditions inside the
    #   `SearchFilter`. This accepts an `OR` of `AND` (List of List) input
    #   where:
    #
    #   * Top level list specifies conditions that need to be applied with
    #     `OR` operator
    #
    #   * Inner list specifies conditions that need to be applied with `AND`
    #     operator.
    #   @return [Types::ControlPlaneTagFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/QueueSearchFilter AWS API Documentation
    #
    class QueueSearchFilter < Struct.new(
      :tag_filter)
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
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
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

    # The search criteria to be used to return quick connects.
    #
    # @!attribute [rw] or_conditions
    #   A list of conditions which would be applied together with an OR
    #   condition.
    #   @return [Array<Types::QuickConnectSearchCriteria>]
    #
    # @!attribute [rw] and_conditions
    #   A list of conditions which would be applied together with an AND
    #   condition.
    #   @return [Array<Types::QuickConnectSearchCriteria>]
    #
    # @!attribute [rw] string_condition
    #   A leaf node condition which can be used to specify a string
    #   condition.
    #
    #   <note markdown="1"> The currently supported values for `FieldName` are `name`,
    #   `description`, and `resourceID`.
    #
    #    </note>
    #   @return [Types::StringCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/QuickConnectSearchCriteria AWS API Documentation
    #
    class QuickConnectSearchCriteria < Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters to be applied to search results.
    #
    # @!attribute [rw] tag_filter
    #   An object that can be used to specify Tag conditions inside the
    #   `SearchFilter`. This accepts an `OR` of `AND` (List of List) input
    #   where:
    #
    #   * Top level list specifies conditions that need to be applied with
    #     `OR` operator
    #
    #   * Inner list specifies conditions that need to be applied with `AND`
    #     operator.
    #   @return [Types::ControlPlaneTagFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/QuickConnectSearchFilter AWS API Documentation
    #
    class QuickConnectSearchFilter < Struct.new(
      :tag_filter)
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

    # Indicates a field that is read-only to an agent.
    #
    # @!attribute [rw] id
    #   Identifier of the read-only field.
    #   @return [Types::TaskTemplateFieldIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ReadOnlyFieldInfo AWS API Documentation
    #
    class ReadOnlyFieldInfo < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Well-formed data on a contact, used by agents to complete a contact
    # request. You can have up to 4,096 UTF-8 bytes across all references
    # for a contact.
    #
    # @!attribute [rw] value
    #   A valid value for the reference. For example, for a URL reference, a
    #   formatted URL that is displayed to an agent in the Contact Control
    #   Panel (CCP).
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the reference. `DATE` must be of type Epoch timestamp.
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
    #   Information about the reference when the `referenceType` is `URL`.
    #   Otherwise, null.
    #   @return [Types::UrlReference]
    #
    # @!attribute [rw] attachment
    #   Information about the reference when the `referenceType` is
    #   `ATTACHMENT`. Otherwise, null.
    #   @return [Types::AttachmentReference]
    #
    # @!attribute [rw] string
    #   Information about a reference when the `referenceType` is `STRING`.
    #   Otherwise, null.
    #   @return [Types::StringReference]
    #
    # @!attribute [rw] number
    #   Information about a reference when the `referenceType` is `NUMBER`.
    #   Otherwise, null.
    #   @return [Types::NumberReference]
    #
    # @!attribute [rw] date
    #   Information about a reference when the `referenceType` is `DATE`.
    #   Otherwise, null.
    #   @return [Types::DateReference]
    #
    # @!attribute [rw] email
    #   Information about a reference when the `referenceType` is `EMAIL`.
    #   Otherwise, null.
    #   @return [Types::EmailReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ReferenceSummary AWS API Documentation
    #
    class ReferenceSummary < Struct.new(
      :url,
      :attachment,
      :string,
      :number,
      :date,
      :email,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Url < ReferenceSummary; end
      class Attachment < ReferenceSummary; end
      class String < ReferenceSummary; end
      class Number < ReferenceSummary; end
      class Date < ReferenceSummary; end
      class Email < ReferenceSummary; end
      class Unknown < ReferenceSummary; end
    end

    # @!attribute [rw] phone_number_id
    #   A unique identifier for the phone number.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ReleasePhoneNumberRequest AWS API Documentation
    #
    class ReleasePhoneNumberRequest < Struct.new(
      :phone_number_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #   You can provide the `InstanceId`, or the entire ARN.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] replica_region
    #   The Amazon Web Services Region where to replicate the Amazon Connect
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] replica_alias
    #   The alias for the replicated instance. The `ReplicaAlias` must be
    #   unique.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ReplicateInstanceRequest AWS API Documentation
    #
    class ReplicateInstanceRequest < Struct.new(
      :instance_id,
      :replica_region,
      :client_token,
      :replica_alias)
      SENSITIVE = [:replica_alias]
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the replicated instance. You can find the
    #   `instanceId` in the ARN of the instance. The replicated instance has
    #   the same identifier as the instance it was replicated from.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the replicated instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ReplicateInstanceResponse AWS API Documentation
    #
    class ReplicateInstanceResponse < Struct.new(
      :id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a required field.
    #
    # @!attribute [rw] id
    #   The unique identifier for the field.
    #   @return [Types::TaskTemplateFieldIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RequiredFieldInfo AWS API Documentation
    #
    class RequiredFieldInfo < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
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

    # The resource is not ready.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ResourceNotReadyException AWS API Documentation
    #
    class ResourceNotReadyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The search criteria to be used to search tags.
    #
    # @!attribute [rw] tag_search_condition
    #   The search criteria to be used to return tags.
    #   @return [Types::TagSearchCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ResourceTagsSearchCriteria AWS API Documentation
    #
    class ResourceTagsSearchCriteria < Struct.new(
      :tag_search_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] number_of_associated_queues
    #   The number of associated queues in routing profile.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_associated_users
    #   The number of associated users in routing profile.
    #   @return [Integer]
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
      :tags,
      :number_of_associated_queues,
      :number_of_associated_users)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the queue and channel for which priority
    # and delay can be set.
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

    # Information about the routing profile assigned to the user.
    #
    # @!attribute [rw] id
    #   The identifier of the routing profile.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the routing profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RoutingProfileReference AWS API Documentation
    #
    class RoutingProfileReference < Struct.new(
      :id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The search criteria to be used to return routing profiles.
    #
    # <note markdown="1"> The `name` and `description` fields support "contains" queries with
    # a minimum of 2 characters and a maximum of 25 characters. Any queries
    # with character lengths outside of this range will throw invalid
    # results.
    #
    #  </note>
    #
    # @!attribute [rw] or_conditions
    #   A list of conditions which would be applied together with an OR
    #   condition.
    #   @return [Array<Types::RoutingProfileSearchCriteria>]
    #
    # @!attribute [rw] and_conditions
    #   A list of conditions which would be applied together with an AND
    #   condition.
    #   @return [Array<Types::RoutingProfileSearchCriteria>]
    #
    # @!attribute [rw] string_condition
    #   A leaf node condition which can be used to specify a string
    #   condition.
    #
    #   <note markdown="1"> The currently supported values for `FieldName` are `name`,
    #   `description`, and `resourceID`.
    #
    #    </note>
    #   @return [Types::StringCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RoutingProfileSearchCriteria AWS API Documentation
    #
    class RoutingProfileSearchCriteria < Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters to be applied to search results.
    #
    # @!attribute [rw] tag_filter
    #   An object that can be used to specify Tag conditions inside the
    #   `SearchFilter`. This accepts an `OR` of `AND` (List of List) input
    #   where:
    #
    #   * Top level list specifies conditions that need to be applied with
    #     `OR` operator
    #
    #   * Inner list specifies conditions that need to be applied with `AND`
    #     operator.
    #   @return [Types::ControlPlaneTagFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RoutingProfileSearchFilter AWS API Documentation
    #
    class RoutingProfileSearchFilter < Struct.new(
      :tag_filter)
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

    # Information about a rule.
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_id
    #   A unique identifier for the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @!attribute [rw] trigger_event_source
    #   The event source to trigger the rule.
    #   @return [Types::RuleTriggerEventSource]
    #
    # @!attribute [rw] function
    #   The conditions of the rule.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   A list of actions to be run when the rule is triggered.
    #   @return [Array<Types::RuleAction>]
    #
    # @!attribute [rw] publish_status
    #   The publish status of the rule.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp for when the rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp for the when the rule was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_by
    #   The Amazon Resource Name (ARN) of the user who last updated the
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Rule AWS API Documentation
    #
    class Rule < Struct.new(
      :name,
      :rule_id,
      :rule_arn,
      :trigger_event_source,
      :function,
      :actions,
      :publish_status,
      :created_time,
      :last_updated_time,
      :last_updated_by,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the action to be performed when a rule is triggered.
    #
    # @!attribute [rw] action_type
    #   The type of action that creates a rule.
    #   @return [String]
    #
    # @!attribute [rw] task_action
    #   Information about the task action. This field is required if
    #   `TriggerEventSource` is one of the following values:
    #   `OnZendeskTicketCreate` \| `OnZendeskTicketStatusUpdate` \|
    #   `OnSalesforceCaseCreate`
    #   @return [Types::TaskActionDefinition]
    #
    # @!attribute [rw] event_bridge_action
    #   Information about the EventBridge action.
    #   @return [Types::EventBridgeActionDefinition]
    #
    # @!attribute [rw] assign_contact_category_action
    #   Information about the contact category action.
    #   @return [Types::AssignContactCategoryActionDefinition]
    #
    # @!attribute [rw] send_notification_action
    #   Information about the send notification action.
    #   @return [Types::SendNotificationActionDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RuleAction AWS API Documentation
    #
    class RuleAction < Struct.new(
      :action_type,
      :task_action,
      :event_bridge_action,
      :assign_contact_category_action,
      :send_notification_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of `ActionTypes` associated with a rule.
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_id
    #   A unique identifier for the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_source_name
    #   The name of the event source.
    #   @return [String]
    #
    # @!attribute [rw] publish_status
    #   The publish status of the rule.
    #   @return [String]
    #
    # @!attribute [rw] action_summaries
    #   A list of ActionTypes associated with a rule.
    #   @return [Array<Types::ActionSummary>]
    #
    # @!attribute [rw] created_time
    #   The timestamp for when the rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp for when the rule was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RuleSummary AWS API Documentation
    #
    class RuleSummary < Struct.new(
      :name,
      :rule_id,
      :rule_arn,
      :event_source_name,
      :publish_status,
      :action_summaries,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The name of the event source. This field is required if
    # `TriggerEventSource` is one of the following values:
    # `OnZendeskTicketCreate` \| `OnZendeskTicketStatusUpdate` \|
    # `OnSalesforceCaseCreate`
    #
    # @!attribute [rw] event_source_name
    #   The name of the event source.
    #   @return [String]
    #
    # @!attribute [rw] integration_association_id
    #   The identifier for the integration association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RuleTriggerEventSource AWS API Documentation
    #
    class RuleTriggerEventSource < Struct.new(
      :event_source_name,
      :integration_association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the Amazon Simple Storage Service (Amazon S3)
    # storage type.
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

    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) for Amazon Connect instances or
    #   traffic distribution groups that phone numbers are claimed to.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_country_code
    #   The ISO country code.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_type
    #   The type of phone number.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_prefix
    #   The prefix of the phone number. If provided, it must contain `+` as
    #   part of the country code.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchAvailablePhoneNumbersRequest AWS API Documentation
    #
    class SearchAvailablePhoneNumbersRequest < Struct.new(
      :target_arn,
      :phone_number_country_code,
      :phone_number_type,
      :phone_number_prefix,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] available_numbers_list
    #   A list of available phone numbers that you can claim to your Amazon
    #   Connect instance or traffic distribution group.
    #   @return [Array<Types::AvailableNumberSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchAvailablePhoneNumbersResponse AWS API Documentation
    #
    class SearchAvailablePhoneNumbersResponse < Struct.new(
      :next_token,
      :available_numbers_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    # @!attribute [rw] search_filter
    #   Filters to be applied to search results.
    #   @return [Types::HoursOfOperationSearchFilter]
    #
    # @!attribute [rw] search_criteria
    #   The search criteria to be used to return hours of operations.
    #   @return [Types::HoursOfOperationSearchCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchHoursOfOperationsRequest AWS API Documentation
    #
    class SearchHoursOfOperationsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :search_filter,
      :search_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hours_of_operations
    #   Information about the hours of operations.
    #   @return [Array<Types::HoursOfOperation>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] approximate_total_count
    #   The total number of hours of operations which matched your search
    #   query.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchHoursOfOperationsResponse AWS API Documentation
    #
    class SearchHoursOfOperationsResponse < Struct.new(
      :hours_of_operations,
      :next_token,
      :approximate_total_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    # @!attribute [rw] search_filter
    #   Filters to be applied to search results.
    #   @return [Types::PromptSearchFilter]
    #
    # @!attribute [rw] search_criteria
    #   The search criteria to be used to return prompts.
    #   @return [Types::PromptSearchCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchPromptsRequest AWS API Documentation
    #
    class SearchPromptsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :search_filter,
      :search_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] prompts
    #   Information about the prompts.
    #   @return [Array<Types::Prompt>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] approximate_total_count
    #   The total number of quick connects which matched your search query.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchPromptsResponse AWS API Documentation
    #
    class SearchPromptsResponse < Struct.new(
      :prompts,
      :next_token,
      :approximate_total_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    # @!attribute [rw] search_filter
    #   Filters to be applied to search results.
    #   @return [Types::QueueSearchFilter]
    #
    # @!attribute [rw] search_criteria
    #   The search criteria to be used to return queues.
    #
    #   <note markdown="1"> The `name` and `description` fields support "contains" queries
    #   with a minimum of 2 characters and a maximum of 25 characters. Any
    #   queries with character lengths outside of this range will throw
    #   invalid results.
    #
    #    </note>
    #   @return [Types::QueueSearchCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchQueuesRequest AWS API Documentation
    #
    class SearchQueuesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :search_filter,
      :search_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queues
    #   Information about the queues.
    #   @return [Array<Types::Queue>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] approximate_total_count
    #   The total number of queues which matched your search query.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchQueuesResponse AWS API Documentation
    #
    class SearchQueuesResponse < Struct.new(
      :queues,
      :next_token,
      :approximate_total_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    # @!attribute [rw] search_filter
    #   Filters to be applied to search results.
    #   @return [Types::QuickConnectSearchFilter]
    #
    # @!attribute [rw] search_criteria
    #   The search criteria to be used to return quick connects.
    #   @return [Types::QuickConnectSearchCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchQuickConnectsRequest AWS API Documentation
    #
    class SearchQuickConnectsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :search_filter,
      :search_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] quick_connects
    #   Information about the quick connects.
    #   @return [Array<Types::QuickConnect>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] approximate_total_count
    #   The total number of quick connects which matched your search query.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchQuickConnectsResponse AWS API Documentation
    #
    class SearchQuickConnectsResponse < Struct.new(
      :quick_connects,
      :next_token,
      :approximate_total_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the Amazon Resource Name (ARN) of the instance.
    #   @return [String]
    #
    # @!attribute [rw] resource_types
    #   The list of resource types to be used to search tags from. If not
    #   provided or if any empty list is provided, this API will search from
    #   all supported resource types.
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
    # @!attribute [rw] search_criteria
    #   The search criteria to be used to return tags.
    #   @return [Types::ResourceTagsSearchCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchResourceTagsRequest AWS API Documentation
    #
    class SearchResourceTagsRequest < Struct.new(
      :instance_id,
      :resource_types,
      :next_token,
      :max_results,
      :search_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags used in the Amazon Connect instance.
    #   @return [Array<Types::TagSet>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchResourceTagsResponse AWS API Documentation
    #
    class SearchResourceTagsResponse < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    # @!attribute [rw] search_filter
    #   Filters to be applied to search results.
    #   @return [Types::RoutingProfileSearchFilter]
    #
    # @!attribute [rw] search_criteria
    #   The search criteria to be used to return routing profiles.
    #
    #   <note markdown="1"> The `name` and `description` fields support "contains" queries
    #   with a minimum of 2 characters and a maximum of 25 characters. Any
    #   queries with character lengths outside of this range will throw
    #   invalid results.
    #
    #    </note>
    #   @return [Types::RoutingProfileSearchCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchRoutingProfilesRequest AWS API Documentation
    #
    class SearchRoutingProfilesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :search_filter,
      :search_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] routing_profiles
    #   Information about the routing profiles.
    #   @return [Array<Types::RoutingProfile>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] approximate_total_count
    #   The total number of routing profiles which matched your search
    #   query.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchRoutingProfilesResponse AWS API Documentation
    #
    class SearchRoutingProfilesResponse < Struct.new(
      :routing_profiles,
      :next_token,
      :approximate_total_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    # @!attribute [rw] search_criteria
    #   The search criteria to be used to return security profiles.
    #
    #   <note markdown="1"> The `name` field support "contains" queries with a minimum of 2
    #   characters and maximum of 25 characters. Any queries with character
    #   lengths outside of this range will throw invalid results.
    #
    #    </note>
    #
    #   <note markdown="1"> The currently supported value for `FieldName`: `name`
    #
    #    </note>
    #   @return [Types::SecurityProfileSearchCriteria]
    #
    # @!attribute [rw] search_filter
    #   Filters to be applied to search results.
    #   @return [Types::SecurityProfilesSearchFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchSecurityProfilesRequest AWS API Documentation
    #
    class SearchSecurityProfilesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :search_criteria,
      :search_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_profiles
    #   Information about the security profiles.
    #   @return [Array<Types::SecurityProfileSearchSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] approximate_total_count
    #   The total number of security profiles which matched your search
    #   query.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchSecurityProfilesResponse AWS API Documentation
    #
    class SearchSecurityProfilesResponse < Struct.new(
      :security_profiles,
      :next_token,
      :approximate_total_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    # @!attribute [rw] search_filter
    #   Filters to be applied to search results.
    #   @return [Types::UserSearchFilter]
    #
    # @!attribute [rw] search_criteria
    #   The search criteria to be used to return users.
    #
    #   <note markdown="1"> The `name` and `description` fields support "contains" queries
    #   with a minimum of 2 characters and a maximum of 25 characters. Any
    #   queries with character lengths outside of this range will throw
    #   invalid results.
    #
    #    </note>
    #   @return [Types::UserSearchCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchUsersRequest AWS API Documentation
    #
    class SearchUsersRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :search_filter,
      :search_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] users
    #   Information about the users.
    #   @return [Array<Types::UserSearchSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] approximate_total_count
    #   The total number of users who matched your search query.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchUsersResponse AWS API Documentation
    #
    class SearchUsersResponse < Struct.new(
      :users,
      :next_token,
      :approximate_total_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] allowed_access_control_tags
    #   The list of tags that a security profile uses to restrict access to
    #   resources in Amazon Connect.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tag_restricted_resources
    #   The list of resources that a security profile applies tag
    #   restrictions to in Amazon Connect.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SecurityProfile AWS API Documentation
    #
    class SecurityProfile < Struct.new(
      :id,
      :organization_resource_id,
      :arn,
      :security_profile_name,
      :description,
      :tags,
      :allowed_access_control_tags,
      :tag_restricted_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # The search criteria to be used to return security profiles.
    #
    # <note markdown="1"> The `name` field support "contains" queries with a minimum of 2
    # characters and maximum of 25 characters. Any queries with character
    # lengths outside of this range will throw invalid results.
    #
    #  </note>
    #
    # @!attribute [rw] or_conditions
    #   A list of conditions which would be applied together with an OR
    #   condition.
    #   @return [Array<Types::SecurityProfileSearchCriteria>]
    #
    # @!attribute [rw] and_conditions
    #   A list of conditions which would be applied together with an AND
    #   condition.
    #   @return [Array<Types::SecurityProfileSearchCriteria>]
    #
    # @!attribute [rw] string_condition
    #   A leaf node condition which can be used to specify a string
    #   condition.
    #   @return [Types::StringCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SecurityProfileSearchCriteria AWS API Documentation
    #
    class SecurityProfileSearchCriteria < Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the returned security profiles.
    #
    # @!attribute [rw] id
    #   The identifier of the security profile.
    #   @return [String]
    #
    # @!attribute [rw] organization_resource_id
    #   The organization resource identifier.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the security profile.
    #   @return [String]
    #
    # @!attribute [rw] security_profile_name
    #   The name of the security profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the security profile.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SecurityProfileSearchSummary AWS API Documentation
    #
    class SecurityProfileSearchSummary < Struct.new(
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

    # Filters to be applied to search results.
    #
    # @!attribute [rw] tag_filter
    #   An object that can be used to specify Tag conditions inside the
    #   `SearchFilter`. This accepts an `OR` of `AND` (List of List) input
    #   where:
    #
    #   * Top level list specifies conditions that need to be applied with
    #     `OR` operator
    #
    #   * Inner list specifies conditions that need to be applied with `AND`
    #     operator.
    #   @return [Types::ControlPlaneTagFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SecurityProfilesSearchFilter AWS API Documentation
    #
    class SecurityProfilesSearchFilter < Struct.new(
      :tag_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the send notification action.
    #
    # @!attribute [rw] delivery_method
    #   Notification delivery method.
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   The subject of the email if the delivery method is `EMAIL`. Supports
    #   variable injection. For more information, see [JSONPath
    #   reference][1] in the *Amazon Connect Administrators Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-variable-injection.html
    #   @return [String]
    #
    # @!attribute [rw] content
    #   Notification content. Supports variable injection. For more
    #   information, see [JSONPath reference][1] in the *Amazon Connect
    #   Administrators Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-variable-injection.html
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   Content type format.
    #   @return [String]
    #
    # @!attribute [rw] recipient
    #   Notification recipient.
    #   @return [Types::NotificationRecipientType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SendNotificationActionDefinition AWS API Documentation
    #
    class SendNotificationActionDefinition < Struct.new(
      :delivery_method,
      :subject,
      :content,
      :content_type,
      :recipient)
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

    # Information about the automation option based on a rule category for a
    # single select question.
    #
    # @!attribute [rw] category
    #   The category name, as defined in Rules.
    #   @return [String]
    #
    # @!attribute [rw] condition
    #   The condition to apply for the automation option. If the condition
    #   is `PRESENT`, then the option is applied when the contact data
    #   includes the category. Similarly, if the condition is `NOT_PRESENT`,
    #   then the option is applied when the contact data does not include
    #   the category.
    #   @return [String]
    #
    # @!attribute [rw] option_ref_id
    #   The identifier of the answer option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SingleSelectQuestionRuleCategoryAutomation AWS API Documentation
    #
    class SingleSelectQuestionRuleCategoryAutomation < Struct.new(
      :category,
      :condition,
      :option_ref_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the flow for initiating the chat. To see the
    #   ContactFlowId in the Amazon Connect console user interface, on the
    #   navigation menu go to **Routing**, **Contact Flows**. Choose the
    #   flow. On the flow page, under the name of the flow, choose **Show
    #   additional flow information**. The ContactFlowId is the last part of
    #   the ARN, shown here in bold:
    #
    #   arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/**846ec553-a005-41c0-8341-xxxxxxxxxxxx**
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A custom key-value pair using an attribute map. The attributes are
    #   standard Amazon Connect attributes. They can be accessed in flows
    #   just like any other contact attributes.
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
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] chat_duration_in_minutes
    #   The total duration of the newly started chat session. If not
    #   specified, the chat session duration defaults to 25 hour. The
    #   minimum configurable time is 60 minutes. The maximum configurable
    #   time is 10,080 minutes (7 days).
    #   @return [Integer]
    #
    # @!attribute [rw] supported_messaging_content_types
    #   The supported chat message content types. Supported types are
    #   `text/plain`, `text/markdown`, `application/json`,
    #   `application/vnd.amazonaws.connect.message.interactive`, and
    #   `application/vnd.amazonaws.connect.message.interactive.response`.
    #
    #   Content types must always contain `text/plain`. You can then put any
    #   other supported type in the list. For example, all the following
    #   lists are valid because they contain `text/plain`: `[text/plain,
    #   text/markdown, application/json]`, `[text/markdown, text/plain]`,
    #   `[text/plain, application/json,
    #   application/vnd.amazonaws.connect.message.interactive.response]`.
    #
    #   <note markdown="1"> The type `application/vnd.amazonaws.connect.message.interactive` is
    #   required to use the [Show view][1] flow block.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/show-view-block.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] persistent_chat
    #   Enable persistent chats. For more information about enabling
    #   persistent chat, and for example use cases and how to configure for
    #   them, see [Enable persistent chat][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html
    #   @return [Types::PersistentChat]
    #
    # @!attribute [rw] related_contact_id
    #   The unique identifier for an Amazon Connect contact. This identifier
    #   is related to the chat starting.
    #
    #   <note markdown="1"> You cannot provide data for both RelatedContactId and
    #   PersistentChat.
    #
    #    </note>
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
      :client_token,
      :chat_duration_in_minutes,
      :supported_messaging_content_types,
      :persistent_chat,
      :related_contact_id)
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
    # @!attribute [rw] continued_from_contact_id
    #   The contactId from which a persistent chat session is started. This
    #   field is populated only for persistent chats.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartChatContactResponse AWS API Documentation
    #
    class StartChatContactResponse < Struct.new(
      :contact_id,
      :participant_id,
      :participant_token,
      :continued_from_contact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_id
    #   The unique identifier for the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartContactEvaluationRequest AWS API Documentation
    #
    class StartContactEvaluationRequest < Struct.new(
      :instance_id,
      :contact_id,
      :evaluation_form_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evaluation_id
    #   A unique identifier for the contact evaluation.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_arn
    #   The Amazon Resource Name (ARN) for the contact evaluation resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartContactEvaluationResponse AWS API Documentation
    #
    class StartContactEvaluationResponse < Struct.new(
      :evaluation_id,
      :evaluation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
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

    # @!attribute [rw] destination_phone_number
    #   The phone number of the customer, in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the flow for the outbound call. To see the
    #   ContactFlowId in the Amazon Connect console user interface, on the
    #   navigation menu go to **Routing**, **Contact Flows**. Choose the
    #   flow. On the flow page, under the name of the flow, choose **Show
    #   additional flow information**. The ContactFlowId is the last part of
    #   the ARN, shown here in bold:
    #
    #   arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/**846ec553-a005-41c0-8341-xxxxxxxxxxxx**
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1]. The token is
    #   valid for 7 days after creation. If a contact is already started,
    #   the contact ID is returned.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
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
    #   not specify a queue, the queue defined in the flow is used. If you
    #   do not specify a queue, you must specify a source phone number.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A custom key-value pair using an attribute map. The attributes are
    #   standard Amazon Connect attributes, and can be accessed in flows
    #   just like any other contact attributes.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] previous_contact_id
    #   The identifier of the previous chat, voice, or task contact.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the flow for initiating the tasks. To see the
    #   ContactFlowId in the Amazon Connect console user interface, on the
    #   navigation menu go to **Routing**, **Contact Flows**. Choose the
    #   flow. On the flow page, under the name of the flow, choose **Show
    #   additional flow information**. The ContactFlowId is the last part of
    #   the ARN, shown here in bold:
    #
    #   arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/**846ec553-a005-41c0-8341-xxxxxxxxxxxx**
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A custom key-value pair using an attribute map. The attributes are
    #   standard Amazon Connect attributes, and can be accessed in flows
    #   just like any other contact attributes.
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
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] scheduled_time
    #   The timestamp, in Unix Epoch seconds format, at which to start
    #   running the inbound flow. The scheduled time cannot be in the past.
    #   It must be within up to 6 days in future.
    #   @return [Time]
    #
    # @!attribute [rw] task_template_id
    #   A unique identifier for the task template.
    #   @return [String]
    #
    # @!attribute [rw] quick_connect_id
    #   The identifier for the quick connect.
    #   @return [String]
    #
    # @!attribute [rw] related_contact_id
    #   The contactId that is [related][1] to this contact.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/tasks.html#linked-tasks
    #   @return [String]
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
      :scheduled_time,
      :task_template_id,
      :quick_connect_id,
      :related_contact_id)
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] contact_id
    #   The ID of the contact.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # A leaf node condition which can be used to specify a string condition.
    #
    # @!attribute [rw] field_name
    #   The name of the field in the string condition.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the string.
    #   @return [String]
    #
    # @!attribute [rw] comparison_type
    #   The type of comparison to be made when evaluating the string
    #   condition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StringCondition AWS API Documentation
    #
    class StringCondition < Struct.new(
      :field_name,
      :value,
      :comparison_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a reference when the `referenceType` is `STRING`.
    # Otherwise, null.
    #
    # @!attribute [rw] name
    #   Identifier of the string reference.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A valid string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StringReference AWS API Documentation
    #
    class StringReference < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] evaluation_id
    #   A unique identifier for the contact evaluation.
    #   @return [String]
    #
    # @!attribute [rw] answers
    #   A map of question identifiers to answer value.
    #   @return [Hash<String,Types::EvaluationAnswerInput>]
    #
    # @!attribute [rw] notes
    #   A map of question identifiers to note value.
    #   @return [Hash<String,Types::EvaluationNote>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SubmitContactEvaluationRequest AWS API Documentation
    #
    class SubmitContactEvaluationRequest < Struct.new(
      :instance_id,
      :evaluation_id,
      :answers,
      :notes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evaluation_id
    #   A unique identifier for the contact evaluation.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_arn
    #   The Amazon Resource Name (ARN) for the contact evaluation resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SubmitContactEvaluationResponse AWS API Documentation
    #
    class SubmitContactEvaluationResponse < Struct.new(
      :evaluation_id,
      :evaluation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # A leaf node condition which can be used to specify a tag condition,
    # for example, `HAVE BPO = 123`.
    #
    # @!attribute [rw] tag_key
    #   The tag key in the tag condition.
    #   @return [String]
    #
    # @!attribute [rw] tag_value
    #   The tag value in the tag condition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TagCondition AWS API Documentation
    #
    class TagCondition < Struct.new(
      :tag_key,
      :tag_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
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

    # The search criteria to be used to return tags.
    #
    # @!attribute [rw] tag_key
    #   The tag key used in the tag search condition.
    #   @return [String]
    #
    # @!attribute [rw] tag_value
    #   The tag value used in the tag search condition.
    #   @return [String]
    #
    # @!attribute [rw] tag_key_comparison_type
    #   The type of comparison to be made when evaluating the tag key in tag
    #   search condition.
    #   @return [String]
    #
    # @!attribute [rw] tag_value_comparison_type
    #   The type of comparison to be made when evaluating the tag value in
    #   tag search condition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TagSearchCondition AWS API Documentation
    #
    class TagSearchCondition < Struct.new(
      :tag_key,
      :tag_value,
      :tag_key_comparison_type,
      :tag_value_comparison_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag set contains tag key and tag value.
    #
    # @!attribute [rw] key
    #   The tag key in the tagSet.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value in the tagSet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TagSet AWS API Documentation
    #
    class TagSet < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the task action.
    #
    # @!attribute [rw] name
    #   The name. Supports variable injection. For more information, see
    #   [JSONPath reference][1] in the *Amazon Connect Administrators
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-variable-injection.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description. Supports variable injection. For more information,
    #   see [JSONPath reference][1] in the *Amazon Connect Administrators
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-variable-injection.html
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] references
    #   Information about the reference when the `referenceType` is `URL`.
    #   Otherwise, null. (Supports variable injection in the `Value` field.)
    #   @return [Hash<String,Types::Reference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TaskActionDefinition AWS API Documentation
    #
    class TaskActionDefinition < Struct.new(
      :name,
      :description,
      :contact_flow_id,
      :references)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes constraints that apply to the template fields.
    #
    # @!attribute [rw] required_fields
    #   Lists the fields that are required to be filled by agents.
    #   @return [Array<Types::RequiredFieldInfo>]
    #
    # @!attribute [rw] read_only_fields
    #   Lists the fields that are read-only to agents, and cannot be edited.
    #   @return [Array<Types::ReadOnlyFieldInfo>]
    #
    # @!attribute [rw] invisible_fields
    #   Lists the fields that are invisible to agents.
    #   @return [Array<Types::InvisibleFieldInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TaskTemplateConstraints AWS API Documentation
    #
    class TaskTemplateConstraints < Struct.new(
      :required_fields,
      :read_only_fields,
      :invisible_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a default field and its corresponding value.
    #
    # @!attribute [rw] id
    #   Identifier of a field.
    #   @return [Types::TaskTemplateFieldIdentifier]
    #
    # @!attribute [rw] default_value
    #   Default value for the field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TaskTemplateDefaultFieldValue AWS API Documentation
    #
    class TaskTemplateDefaultFieldValue < Struct.new(
      :id,
      :default_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes default values for fields on a template.
    #
    # @!attribute [rw] default_field_values
    #   Default value for the field.
    #   @return [Array<Types::TaskTemplateDefaultFieldValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TaskTemplateDefaults AWS API Documentation
    #
    class TaskTemplateDefaults < Struct.new(
      :default_field_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a single task template field.
    #
    # @!attribute [rw] id
    #   The unique identifier for the field.
    #   @return [Types::TaskTemplateFieldIdentifier]
    #
    # @!attribute [rw] description
    #   The description of the field.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Indicates the type of field.
    #   @return [String]
    #
    # @!attribute [rw] single_select_options
    #   A list of options for a single select field.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TaskTemplateField AWS API Documentation
    #
    class TaskTemplateField < Struct.new(
      :id,
      :description,
      :type,
      :single_select_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The identifier of the task template field.
    #
    # @!attribute [rw] name
    #   The name of the task template field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TaskTemplateFieldIdentifier AWS API Documentation
    #
    class TaskTemplateFieldIdentifier < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about the task template.
    #
    # @!attribute [rw] id
    #   A unique identifier for the task template.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the task template.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the task template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the task template.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Marks a template as `ACTIVE` or `INACTIVE` for a task to refer to
    #   it. Tasks can only be created from `ACTIVE` templates. If a template
    #   is marked as `INACTIVE`, then a task that refers to this template
    #   cannot be created.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when the task template was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the task template was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TaskTemplateMetadata AWS API Documentation
    #
    class TaskTemplateMetadata < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :status,
      :last_modified_time,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The distribution of traffic between the instance and its replicas.
    #
    # @!attribute [rw] distributions
    #   Information about traffic distributions.
    #   @return [Array<Types::Distribution>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TelephonyConfig AWS API Documentation
    #
    class TelephonyConfig < Struct.new(
      :distributions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the threshold for service level metrics.
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

    # Contains information about the threshold for service level metrics.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ThresholdV2 AWS API Documentation
    #
    class ThresholdV2 < Struct.new(
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

    # Information about a traffic distribution group.
    #
    # @!attribute [rw] id
    #   The identifier of the traffic distribution group. This can be the ID
    #   or the ARN if the API is being called in the Region where the
    #   traffic distribution group was created. The ARN must be provided if
    #   the call is from the replicated Region.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the traffic distribution group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the traffic distribution group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the traffic distribution group.
    #   @return [String]
    #
    # @!attribute [rw] instance_arn
    #   The Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the traffic distribution group.
    #
    #   * `CREATION_IN_PROGRESS` means the previous
    #     [CreateTrafficDistributionGroup][1] operation is still in progress
    #     and has not yet completed.
    #
    #   * `ACTIVE` means the previous [CreateTrafficDistributionGroup][1]
    #     operation has succeeded.
    #
    #   * `CREATION_FAILED` indicates that the previous
    #     [CreateTrafficDistributionGroup][1] operation has failed.
    #
    #   * `PENDING_DELETION` means the previous
    #     [DeleteTrafficDistributionGroup][2] operation is still in progress
    #     and has not yet completed.
    #
    #   * `DELETION_FAILED` means the previous
    #     [DeleteTrafficDistributionGroup][2] operation has failed.
    #
    #   * `UPDATE_IN_PROGRESS` means the previous
    #     [UpdateTrafficDistributionGroup][3] operation is still in progress
    #     and has not yet completed.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_CreateTrafficDistributionGroup.html
    #   [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteTrafficDistributionGroup.html
    #   [3]: https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdateTrafficDistributionGroup.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TrafficDistributionGroup AWS API Documentation
    #
    class TrafficDistributionGroup < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :instance_arn,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about traffic distribution groups.
    #
    # @!attribute [rw] id
    #   The identifier of the traffic distribution group. This can be the ID
    #   or the ARN if the API is being called in the Region where the
    #   traffic distribution group was created. The ARN must be provided if
    #   the call is from the replicated Region.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the traffic distribution group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the traffic distribution group.
    #   @return [String]
    #
    # @!attribute [rw] instance_arn
    #   The Amazon Resource Name (ARN) of the traffic distribution group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the traffic distribution group.
    #
    #   * `CREATION_IN_PROGRESS` means the previous
    #     [CreateTrafficDistributionGroup][1] operation is still in progress
    #     and has not yet completed.
    #
    #   * `ACTIVE` means the previous [CreateTrafficDistributionGroup][1]
    #     operation has succeeded.
    #
    #   * `CREATION_FAILED` indicates that the previous
    #     [CreateTrafficDistributionGroup][1] operation has failed.
    #
    #   * `PENDING_DELETION` means the previous
    #     [DeleteTrafficDistributionGroup][2] operation is still in progress
    #     and has not yet completed.
    #
    #   * `DELETION_FAILED` means the previous
    #     [DeleteTrafficDistributionGroup][2] operation has failed.
    #
    #   * `UPDATE_IN_PROGRESS` means the previous
    #     [UpdateTrafficDistributionGroup][3] operation is still in progress
    #     and has not yet completed.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_CreateTrafficDistributionGroup.html
    #   [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteTrafficDistributionGroup.html
    #   [3]: https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdateTrafficDistributionGroup.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TrafficDistributionGroupSummary AWS API Documentation
    #
    class TrafficDistributionGroupSummary < Struct.new(
      :id,
      :arn,
      :name,
      :instance_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The identifier for the queue.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier for the user.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TransferContactRequest AWS API Documentation
    #
    class TransferContactRequest < Struct.new(
      :instance_id,
      :contact_id,
      :queue_id,
      :user_id,
      :contact_flow_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #   @return [String]
    #
    # @!attribute [rw] contact_arn
    #   The Amazon Resource Name (ARN) of the contact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TransferContactResponse AWS API Documentation
    #
    class TransferContactResponse < Struct.new(
      :contact_id,
      :contact_arn)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] initial_contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The Amazon Connect attributes. These attributes can be accessed in
    #   flows just like any other contact attributes.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] evaluation_id
    #   A unique identifier for the contact evaluation.
    #   @return [String]
    #
    # @!attribute [rw] answers
    #   A map of question identifiers to answer value.
    #   @return [Hash<String,Types::EvaluationAnswerInput>]
    #
    # @!attribute [rw] notes
    #   A map of question identifiers to note value.
    #   @return [Hash<String,Types::EvaluationNote>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactEvaluationRequest AWS API Documentation
    #
    class UpdateContactEvaluationRequest < Struct.new(
      :instance_id,
      :evaluation_id,
      :answers,
      :notes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evaluation_id
    #   A unique identifier for the contact evaluation.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_arn
    #   The Amazon Resource Name (ARN) for the contact evaluation resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactEvaluationResponse AWS API Documentation
    #
    class UpdateContactEvaluationResponse < Struct.new(
      :evaluation_id,
      :evaluation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The JSON string that represents flow's content. For an example, see
    #   [Example contact flow in Amazon Connect Flow language][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html
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

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactFlowContentResponse AWS API Documentation
    #
    class UpdateContactFlowContentResponse < Aws::EmptyStructure; end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the flow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the flow.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_state
    #   The state of flow.
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

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactFlowMetadataResponse AWS API Documentation
    #
    class UpdateContactFlowMetadataResponse < Aws::EmptyStructure; end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_module_id
    #   The identifier of the flow module.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the flow module.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_module_id
    #   The identifier of the flow module.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the flow module.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the flow module.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of flow module.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the flow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the flow.
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

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactFlowNameResponse AWS API Documentation
    #
    class UpdateContactFlowNameResponse < Aws::EmptyStructure; end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    #   Well-formed data on contact, shown to agents on Contact Control
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] contact_id
    #   The identifier of the contact.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_time
    #   The timestamp, in Unix Epoch seconds format, at which to start
    #   running the inbound flow. The scheduled time cannot be in the past.
    #   It must be within up to 6 days in future.
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_id
    #   The unique identifier for the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_version
    #   A version of the evaluation form to update.
    #   @return [Integer]
    #
    # @!attribute [rw] create_new_version
    #   A flag indicating whether the operation must create a new version.
    #   @return [Boolean]
    #
    # @!attribute [rw] title
    #   A title of the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Items that are part of the evaluation form. The total number of
    #   sections and questions must not exceed 100 each. Questions must be
    #   contained in a section.
    #   @return [Array<Types::EvaluationFormItem>]
    #
    # @!attribute [rw] scoring_strategy
    #   A scoring strategy of the evaluation form.
    #   @return [Types::EvaluationFormScoringStrategy]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateEvaluationFormRequest AWS API Documentation
    #
    class UpdateEvaluationFormRequest < Struct.new(
      :instance_id,
      :evaluation_form_id,
      :evaluation_form_version,
      :create_new_version,
      :title,
      :description,
      :items,
      :scoring_strategy,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evaluation_form_id
    #   The unique identifier for the evaluation form.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_arn
    #   The Amazon Resource Name (ARN) for the contact evaluation resource.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_form_version
    #   The version of the updated evaluation form resource.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateEvaluationFormResponse AWS API Documentation
    #
    class UpdateEvaluationFormResponse < Struct.new(
      :evaluation_form_id,
      :evaluation_form_arn,
      :evaluation_form_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # Configuration information for the chat participant role.
    #
    # @note UpdateParticipantRoleConfigChannelInfo is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] chat
    #   Configuration information for the chat participant role.
    #   @return [Types::ChatParticipantRoleConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateParticipantRoleConfigChannelInfo AWS API Documentation
    #
    class UpdateParticipantRoleConfigChannelInfo < Struct.new(
      :chat,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Chat < UpdateParticipantRoleConfigChannelInfo; end
      class Unknown < UpdateParticipantRoleConfigChannelInfo; end
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #   @return [String]
    #
    # @!attribute [rw] channel_configuration
    #   The Amazon Connect channel you want to configure.
    #   @return [Types::UpdateParticipantRoleConfigChannelInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateParticipantRoleConfigRequest AWS API Documentation
    #
    class UpdateParticipantRoleConfigRequest < Struct.new(
      :instance_id,
      :contact_id,
      :channel_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateParticipantRoleConfigResponse AWS API Documentation
    #
    class UpdateParticipantRoleConfigResponse < Aws::EmptyStructure; end

    # @!attribute [rw] phone_number_id
    #   A unique identifier for the phone number.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) for Amazon Connect instances or
    #   traffic distribution groups that phone numbers are claimed to.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdatePhoneNumberRequest AWS API Documentation
    #
    class UpdatePhoneNumberRequest < Struct.new(
      :phone_number_id,
      :target_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_id
    #   A unique identifier for the phone number.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_arn
    #   The Amazon Resource Name (ARN) of the phone number.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdatePhoneNumberResponse AWS API Documentation
    #
    class UpdatePhoneNumberResponse < Struct.new(
      :phone_number_id,
      :phone_number_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] prompt_id
    #   A unique identifier for the prompt.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] s3_uri
    #   The URI for the S3 bucket where the prompt is stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdatePromptRequest AWS API Documentation
    #
    class UpdatePromptRequest < Struct.new(
      :instance_id,
      :prompt_id,
      :name,
      :description,
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] prompt_arn
    #   The Amazon Resource Name (ARN) of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] prompt_id
    #   A unique identifier for the prompt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdatePromptResponse AWS API Documentation
    #
    class UpdatePromptResponse < Struct.new(
      :prompt_arn,
      :prompt_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] rule_id
    #   A unique identifier for the rule.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rule. You can change the name only if
    #   `TriggerEventSource` is one of the following values:
    #   `OnZendeskTicketCreate` \| `OnZendeskTicketStatusUpdate` \|
    #   `OnSalesforceCaseCreate`
    #   @return [String]
    #
    # @!attribute [rw] function
    #   The conditions of the rule.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   A list of actions to be run when the rule is triggered.
    #   @return [Array<Types::RuleAction>]
    #
    # @!attribute [rw] publish_status
    #   The publish status of the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateRuleRequest AWS API Documentation
    #
    class UpdateRuleRequest < Struct.new(
      :rule_id,
      :instance_id,
      :name,
      :function,
      :actions,
      :publish_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the security profile.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   The permissions granted to a security profile. For a list of valid
    #   permissions, see [List of security profile permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_profile_id
    #   The identifier for the security profle.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] allowed_access_control_tags
    #   The list of tags that a security profile uses to restrict access to
    #   resources in Amazon Connect.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tag_restricted_resources
    #   The list of resources that a security profile applies tag
    #   restrictions to in Amazon Connect.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateSecurityProfileRequest AWS API Documentation
    #
    class UpdateSecurityProfileRequest < Struct.new(
      :description,
      :permissions,
      :security_profile_id,
      :instance_id,
      :allowed_access_control_tags,
      :tag_restricted_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_template_id
    #   A unique identifier for the task template.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the task template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the task template.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the flow that runs by default when a task is
    #   created by referencing this template.
    #   @return [String]
    #
    # @!attribute [rw] constraints
    #   Constraints that are applicable to the fields listed.
    #   @return [Types::TaskTemplateConstraints]
    #
    # @!attribute [rw] defaults
    #   The default values for fields when a task is created by referencing
    #   this template.
    #   @return [Types::TaskTemplateDefaults]
    #
    # @!attribute [rw] status
    #   Marks a template as `ACTIVE` or `INACTIVE` for a task to refer to
    #   it. Tasks can only be created from `ACTIVE` templates. If a template
    #   is marked as `INACTIVE`, then a task that refers to this template
    #   cannot be created.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   Fields that are part of the template.
    #   @return [Array<Types::TaskTemplateField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateTaskTemplateRequest AWS API Documentation
    #
    class UpdateTaskTemplateRequest < Struct.new(
      :task_template_id,
      :instance_id,
      :name,
      :description,
      :contact_flow_id,
      :constraints,
      :defaults,
      :status,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the task template resource.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the task template resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the task template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the task template.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the flow that runs by default when a task is
    #   created by referencing this template.
    #   @return [String]
    #
    # @!attribute [rw] constraints
    #   Constraints that are applicable to the fields listed.
    #   @return [Types::TaskTemplateConstraints]
    #
    # @!attribute [rw] defaults
    #   The default values for fields when a task is created by referencing
    #   this template.
    #   @return [Types::TaskTemplateDefaults]
    #
    # @!attribute [rw] fields
    #   Fields that are part of the template.
    #   @return [Array<Types::TaskTemplateField>]
    #
    # @!attribute [rw] status
    #   Marks a template as `ACTIVE` or `INACTIVE` for a task to refer to
    #   it. Tasks can only be created from `ACTIVE` templates. If a template
    #   is marked as `INACTIVE`, then a task that refers to this template
    #   cannot be created.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when the task template was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the task template was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateTaskTemplateResponse AWS API Documentation
    #
    class UpdateTaskTemplateResponse < Struct.new(
      :instance_id,
      :id,
      :arn,
      :name,
      :description,
      :contact_flow_id,
      :constraints,
      :defaults,
      :fields,
      :status,
      :last_modified_time,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the traffic distribution group. This can be the ID
    #   or the ARN if the API is being called in the Region where the
    #   traffic distribution group was created. The ARN must be provided if
    #   the call is from the replicated Region.
    #   @return [String]
    #
    # @!attribute [rw] telephony_config
    #   The distribution of traffic between the instance and its replica(s).
    #   @return [Types::TelephonyConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateTrafficDistributionRequest AWS API Documentation
    #
    class UpdateTrafficDistributionRequest < Struct.new(
      :id,
      :telephony_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateTrafficDistributionResponse AWS API Documentation
    #
    class UpdateTrafficDistributionResponse < Aws::EmptyStructure; end

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
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] hierarchy_group_id
    #   The identifier of the hierarchy group.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user account.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] hierarchy_structure
    #   The hierarchy levels to update.
    #   @return [Types::HierarchyStructureUpdate]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] identity_info
    #   The identity information for the user.
    #   @return [Types::UserIdentityInfo]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user account.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] phone_config
    #   Information about phone configuration settings for the user.
    #   @return [Types::UserPhoneConfig]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user account.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] routing_profile_id
    #   The identifier of the routing profile for the user.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user account.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # @!attribute [rw] security_profile_ids
    #   The identifiers of the security profiles for the user.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user account.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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

    # Contains information about a user account for an Amazon Connect
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

    # Data for a user.
    #
    # @!attribute [rw] user
    #   Information about the user for the data that is returned. It
    #   contains the `resourceId` and ARN of the user.
    #   @return [Types::UserReference]
    #
    # @!attribute [rw] routing_profile
    #   Information about the routing profile that is assigned to the user.
    #   @return [Types::RoutingProfileReference]
    #
    # @!attribute [rw] hierarchy_path
    #   Contains information about the levels of a hierarchy group assigned
    #   to a user.
    #   @return [Types::HierarchyPathReference]
    #
    # @!attribute [rw] status
    #   The status of the agent that they manually set in their Contact
    #   Control Panel (CCP), or that the supervisor manually changes in the
    #   real-time metrics report.
    #   @return [Types::AgentStatusReference]
    #
    # @!attribute [rw] available_slots_by_channel
    #   A map of available slots by channel. The key is a channel name. The
    #   value is an integer: the available number of slots.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] max_slots_by_channel
    #   A map of maximum slots by channel. The key is a channel name. The
    #   value is an integer: the maximum number of slots. This is calculated
    #   from [MediaConcurrency][1] of the `RoutingProfile` assigned to the
    #   agent.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_MediaConcurrency.html
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] active_slots_by_channel
    #   A map of active slots by channel. The key is a channel name. The
    #   value is an integer: the number of active slots.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] contacts
    #   A list of contact reference information.
    #   @return [Array<Types::AgentContactReference>]
    #
    # @!attribute [rw] next_status
    #   The Next status of the agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UserData AWS API Documentation
    #
    class UserData < Struct.new(
      :user,
      :routing_profile,
      :hierarchy_path,
      :status,
      :available_slots_by_channel,
      :max_slots_by_channel,
      :active_slots_by_channel,
      :contacts,
      :next_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for the user data.
    #
    # @!attribute [rw] queues
    #   A list of up to 100 queues or ARNs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] contact_filter
    #   A filter for the user data based on the contact information that is
    #   associated to the user. It contains a list of contact states.
    #   @return [Types::ContactFilter]
    #
    # @!attribute [rw] routing_profiles
    #   A list of up to 100 routing profile IDs or ARNs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] agents
    #   A list of up to 100 agent IDs or ARNs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_hierarchy_groups
    #   A UserHierarchyGroup ID or ARN.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UserDataFilters AWS API Documentation
    #
    class UserDataFilters < Struct.new(
      :queues,
      :contact_filter,
      :routing_profiles,
      :agents,
      :user_hierarchy_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the identity of a user.
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
    # @!attribute [rw] secondary_email
    #   The user's secondary email address. If you provide a secondary
    #   email, the user receives email notifications - other than password
    #   reset notifications - to this email address instead of to their
    #   primary email address.
    #
    #   Pattern:
    #   `(?=^.\{0,265\}$)[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]\{2,63\}`
    #   @return [String]
    #
    # @!attribute [rw] mobile
    #   The user's mobile number.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UserIdentityInfo AWS API Documentation
    #
    class UserIdentityInfo < Struct.new(
      :first_name,
      :last_name,
      :email,
      :secondary_email,
      :mobile)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user's first name and last name.
    #
    # @!attribute [rw] first_name
    #   The user's first name.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The user's last name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UserIdentityInfoLite AWS API Documentation
    #
    class UserIdentityInfoLite < Struct.new(
      :first_name,
      :last_name)
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
    #
    #   <note markdown="1"> When returned by a `SearchUsers` call, `AfterContactWorkTimeLimit`
    #   is returned in milliseconds.
    #
    #    </note>
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
    # @!attribute [rw] user_id
    #   The identifier of the user.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the flow.
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

    # Information about the user.
    #
    # @!attribute [rw] id
    #   The unique identifier for the user.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UserReference AWS API Documentation
    #
    class UserReference < Struct.new(
      :id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The search criteria to be used to return users.
    #
    # <note markdown="1"> The `name` and `description` fields support "contains" queries with
    # a minimum of 2 characters and a maximum of 25 characters. Any queries
    # with character lengths outside of this range will throw invalid
    # results.
    #
    #  </note>
    #
    # @!attribute [rw] or_conditions
    #   A list of conditions which would be applied together with an `OR`
    #   condition.
    #   @return [Array<Types::UserSearchCriteria>]
    #
    # @!attribute [rw] and_conditions
    #   A list of conditions which would be applied together with an `AND`
    #   condition.
    #   @return [Array<Types::UserSearchCriteria>]
    #
    # @!attribute [rw] string_condition
    #   A leaf node condition which can be used to specify a string
    #   condition.
    #
    #   <note markdown="1"> The currently supported values for `FieldName` are `name`,
    #   `description`, and `resourceID`.
    #
    #    </note>
    #   @return [Types::StringCondition]
    #
    # @!attribute [rw] hierarchy_group_condition
    #   A leaf node condition which can be used to specify a hierarchy group
    #   condition.
    #   @return [Types::HierarchyGroupCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UserSearchCriteria AWS API Documentation
    #
    class UserSearchCriteria < Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition,
      :hierarchy_group_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters to be applied to search results.
    #
    # @!attribute [rw] tag_filter
    #   An object that can be used to specify Tag conditions inside the
    #   `SearchFilter`. This accepts an `OR` of `AND` (List of List) input
    #   where:
    #
    #   * Top level list specifies conditions that need to be applied with
    #     `OR` operator
    #
    #   * Inner list specifies conditions that need to be applied with `AND`
    #     operator.
    #   @return [Types::ControlPlaneTagFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UserSearchFilter AWS API Documentation
    #
    class UserSearchFilter < Struct.new(
      :tag_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the returned users.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the user.
    #   @return [String]
    #
    # @!attribute [rw] directory_user_id
    #   The directory identifier of the user.
    #   @return [String]
    #
    # @!attribute [rw] hierarchy_group_id
    #   The identifier of the user's hierarchy group.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the user's summary.
    #   @return [String]
    #
    # @!attribute [rw] identity_info
    #   The user's first name and last name.
    #   @return [Types::UserIdentityInfoLite]
    #
    # @!attribute [rw] phone_config
    #   Contains information about the phone configuration settings for a
    #   user.
    #   @return [Types::UserPhoneConfig]
    #
    # @!attribute [rw] routing_profile_id
    #   The identifier of the user's routing profile.
    #   @return [String]
    #
    # @!attribute [rw] security_profile_ids
    #   The identifiers of the user's security profiles.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] username
    #   The name of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UserSearchSummary AWS API Documentation
    #
    class UserSearchSummary < Struct.new(
      :arn,
      :directory_user_id,
      :hierarchy_group_id,
      :id,
      :identity_info,
      :phone_config,
      :routing_profile_id,
      :security_profile_ids,
      :tags,
      :username)
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
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
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

    # Information about Amazon Connect Wisdom.
    #
    # @!attribute [rw] session_arn
    #   The Amazon Resource Name (ARN) of the Wisdom session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/WisdomInfo AWS API Documentation
    #
    class WisdomInfo < Struct.new(
      :session_arn)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

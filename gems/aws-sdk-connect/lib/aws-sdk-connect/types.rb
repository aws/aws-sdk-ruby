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

    # The distribution of agents between the instance and its replica(s).
    #
    # @!attribute [rw] distributions
    #   Information about traffic distributions.
    #   @return [Array<Types::Distribution>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AgentConfig AWS API Documentation
    #
    class AgentConfig < Struct.new(
      :distributions)
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

    # A structure that defines search criteria for contacts using agent
    # hierarchy group levels. For more information about agent hierarchies,
    # see [Set Up Agent Hierarchies][1] in the *Amazon Connect Administrator
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/agent-hierarchy.html
    #
    # @!attribute [rw] l1_ids
    #   The identifiers for level 1 hierarchy groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] l2_ids
    #   The identifiers for level 2 hierarchy groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] l3_ids
    #   The identifiers for level 3 hierarchy groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] l4_ids
    #   The identifiers for level 4 hierarchy groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] l5_ids
    #   The identifiers for level 5 hierarchy groups.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AgentHierarchyGroups AWS API Documentation
    #
    class AgentHierarchyGroups < Struct.new(
      :l1_ids,
      :l2_ids,
      :l3_ids,
      :l4_ids,
      :l5_ids)
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
    # @!attribute [rw] agent_pause_duration_in_seconds
    #   Agent pause duration for a contact in seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AgentInfo AWS API Documentation
    #
    class AgentInfo < Struct.new(
      :id,
      :connected_to_agent_timestamp,
      :agent_pause_duration_in_seconds)
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
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
      :tags,
      :last_modified_time,
      :last_modified_region)
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
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AgentStatusSummary AWS API Documentation
    #
    class AgentStatusSummary < Struct.new(
      :id,
      :arn,
      :name,
      :type,
      :last_modified_time,
      :last_modified_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the capabilities enabled for participants of the
    # contact.
    #
    # @!attribute [rw] customer
    #   Information about the customer's video sharing capabilities.
    #   @return [Types::ParticipantCapabilities]
    #
    # @!attribute [rw] agent
    #   Information about the agent's video sharing capabilities.
    #   @return [Types::ParticipantCapabilities]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AllowedCapabilities AWS API Documentation
    #
    class AllowedCapabilities < Struct.new(
      :customer,
      :agent)
      SENSITIVE = []
      include Aws::Structure
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Information about associations that are successfully created:
    # `DataSetId`, `TargetAccountId`, `ResourceShareId`, `ResourceShareArn`.
    #
    # @!attribute [rw] data_set_id
    #   The identifier of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] target_account_id
    #   The identifier of the target account.
    #   @return [String]
    #
    # @!attribute [rw] resource_share_id
    #   The Resource Access Manager share ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_share_arn
    #   The Amazon Resource Name (ARN) of the Resource Access Manager share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AnalyticsDataAssociationResult AWS API Documentation
    #
    class AnalyticsDataAssociationResult < Struct.new(
      :data_set_id,
      :target_account_id,
      :resource_share_id,
      :resource_share_arn)
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

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # A third-party application's metadata.
    #
    # @!attribute [rw] namespace
    #   Namespace of the application that you want to give access to.
    #   @return [String]
    #
    # @!attribute [rw] application_permissions
    #   The permissions that the agent is granted on the application. Only
    #   the `ACCESS` permission is supported.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Application AWS API Documentation
    #
    class Application < Struct.new(
      :namespace,
      :application_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # This action must be set if `TriggerEventSource` is one of the
    # following values: `OnPostCallAnalysisAvailable` \|
    # `OnRealTimeCallAnalysisAvailable` \| `OnRealTimeChatAnalysisAvailable`
    # \| `OnPostChatAnalysisAvailable`. Contact is categorized using the
    # rule name.
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
    # @!attribute [rw] data_set_id
    #   The identifier of the dataset to associate with the target account.
    #   @return [String]
    #
    # @!attribute [rw] target_account_id
    #   The identifier of the target account. Use to associate a dataset to
    #   a different account than the one containing the Amazon Connect
    #   instance. If not specified, by default this value is the Amazon Web
    #   Services account that has the Amazon Connect instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateAnalyticsDataSetRequest AWS API Documentation
    #
    class AssociateAnalyticsDataSetRequest < Struct.new(
      :instance_id,
      :data_set_id,
      :target_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_set_id
    #   The identifier of the dataset that was associated.
    #   @return [String]
    #
    # @!attribute [rw] target_account_id
    #   The identifier of the target account.
    #   @return [String]
    #
    # @!attribute [rw] resource_share_id
    #   The Resource Access Manager share ID that is generated.
    #   @return [String]
    #
    # @!attribute [rw] resource_share_arn
    #   The Amazon Resource Name (ARN) of the Resource Access Manager share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateAnalyticsDataSetResponse AWS API Documentation
    #
    class AssociateAnalyticsDataSetResponse < Struct.new(
      :data_set_id,
      :target_account_id,
      :resource_share_id,
      :resource_share_arn)
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
    # @!attribute [rw] resource_id
    #   The identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] flow_id
    #   The identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   A valid resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateFlowRequest AWS API Documentation
    #
    class AssociateFlowRequest < Struct.new(
      :instance_id,
      :resource_id,
      :flow_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateFlowResponse AWS API Documentation
    #
    class AssociateFlowResponse < Aws::EmptyStructure; end

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

    # @!attribute [rw] traffic_distribution_group_id
    #   The identifier of the traffic distribution group. This can be the ID
    #   or the ARN if the API is being called in the Region where the
    #   traffic distribution group was created. The ARN must be provided if
    #   the call is from the replicated Region.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user account. This can be the ID or the ARN of
    #   the user.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateTrafficDistributionGroupUserRequest AWS API Documentation
    #
    class AssociateTrafficDistributionGroupUserRequest < Struct.new(
      :traffic_distribution_group_id,
      :user_id,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateTrafficDistributionGroupUserResponse AWS API Documentation
    #
    class AssociateTrafficDistributionGroupUserResponse < Aws::EmptyStructure; end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN of the instance).
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user account.
    #   @return [String]
    #
    # @!attribute [rw] user_proficiencies
    #   The proficiencies to associate with the user.
    #   @return [Array<Types::UserProficiency>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateUserProficienciesRequest AWS API Documentation
    #
    class AssociateUserProficienciesRequest < Struct.new(
      :instance_id,
      :user_id,
      :user_proficiencies)
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

    # The attendee information, including attendee ID and join token.
    #
    # @!attribute [rw] attendee_id
    #   The Amazon Chime SDK attendee ID.
    #   @return [String]
    #
    # @!attribute [rw] join_token
    #   The join token used by the Amazon Chime SDK attendee.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Attendee AWS API Documentation
    #
    class Attendee < Struct.new(
      :attendee_id,
      :join_token)
      SENSITIVE = [:join_token]
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

    # Has audio-specific configurations as the operating parameter for Echo
    # Reduction.
    #
    # @!attribute [rw] echo_reduction
    #   Makes echo reduction available to clients who connect to the
    #   meeting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AudioFeatures AWS API Documentation
    #
    class AudioFeatures < Struct.new(
      :echo_reduction)
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] data_set_ids
    #   An array of dataset identifiers to associate.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_account_id
    #   The identifier of the target account. Use to associate a dataset to
    #   a different account than the one containing the Amazon Connect
    #   instance. If not specified, by default this value is the Amazon Web
    #   Services account that has the Amazon Connect instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/BatchAssociateAnalyticsDataSetRequest AWS API Documentation
    #
    class BatchAssociateAnalyticsDataSetRequest < Struct.new(
      :instance_id,
      :data_set_ids,
      :target_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created
    #   Information about associations that are successfully created:
    #   `DataSetId`, `TargetAccountId`, `ResourceShareId`,
    #   `ResourceShareArn`.
    #   @return [Array<Types::AnalyticsDataAssociationResult>]
    #
    # @!attribute [rw] errors
    #   A list of errors for datasets that aren't successfully associated
    #   with the target account.
    #   @return [Array<Types::ErrorResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/BatchAssociateAnalyticsDataSetResponse AWS API Documentation
    #
    class BatchAssociateAnalyticsDataSetResponse < Struct.new(
      :created,
      :errors)
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
    # @!attribute [rw] data_set_ids
    #   An array of associated dataset identifiers to remove.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_account_id
    #   The identifier of the target account. Use to disassociate a dataset
    #   from a different account than the one containing the Amazon Connect
    #   instance. If not specified, by default this value is the Amazon Web
    #   Services account that has the Amazon Connect instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/BatchDisassociateAnalyticsDataSetRequest AWS API Documentation
    #
    class BatchDisassociateAnalyticsDataSetRequest < Struct.new(
      :instance_id,
      :data_set_ids,
      :target_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deleted
    #   An array of successfully disassociated dataset identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] errors
    #   A list of errors for any datasets not successfully removed.
    #   @return [Array<Types::ErrorResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/BatchDisassociateAnalyticsDataSetResponse AWS API Documentation
    #
    class BatchDisassociateAnalyticsDataSetResponse < Struct.new(
      :deleted,
      :errors)
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
    # @!attribute [rw] resource_ids
    #   A list of resource identifiers to retrieve flow associations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_type
    #   The type of resource association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/BatchGetFlowAssociationRequest AWS API Documentation
    #
    class BatchGetFlowAssociationRequest < Struct.new(
      :instance_id,
      :resource_ids,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_association_summary_list
    #   Information about flow associations.
    #   @return [Array<Types::FlowAssociationSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/BatchGetFlowAssociationResponse AWS API Documentation
    #
    class BatchGetFlowAssociationResponse < Struct.new(
      :flow_association_summary_list)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] contact_data_request_list
    #   List of individual contact requests.
    #   @return [Array<Types::ContactDataRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/BatchPutContactRequest AWS API Documentation
    #
    class BatchPutContactRequest < Struct.new(
      :client_token,
      :instance_id,
      :contact_data_request_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] successful_request_list
    #   List of requests for which contact was successfully created.
    #   @return [Array<Types::SuccessfulRequest>]
    #
    # @!attribute [rw] failed_request_list
    #   List of requests for which contact creation failed.
    #   @return [Array<Types::FailedRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/BatchPutContactResponse AWS API Documentation
    #
    class BatchPutContactResponse < Struct.new(
      :successful_request_list,
      :failed_request_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information associated with a campaign.
    #
    # @!attribute [rw] campaign_id
    #   A unique identifier for a campaign.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Campaign AWS API Documentation
    #
    class Campaign < Struct.new(
      :campaign_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Chat integration event containing payload to perform different chat
    # actions such as:
    #
    # * Sending a chat message
    #
    # * Sending a chat event, such as typing
    #
    # * Disconnecting from a chat
    #
    # @!attribute [rw] type
    #   Type of chat integration event.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   Type of content. This is required when `Type` is `MESSAGE` or
    #   `EVENT`.
    #
    #   * For allowed message content types, see the `ContentType` parameter
    #     in the [SendMessage][1] topic in the *Amazon Connect Participant
    #     Service API Reference*.
    #
    #   * For allowed event content types, see the `ContentType` parameter
    #     in the [SendEvent][2] topic in the *Amazon Connect Participant
    #     Service API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_SendMessage.html
    #   [2]: https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_SendEvent.html
    #   @return [String]
    #
    # @!attribute [rw] content
    #   Content of the message or event. This is required when `Type` is
    #   `MESSAGE` and for certain `ContentTypes` when `Type` is `EVENT`.
    #
    #   * For allowed message content, see the `Content` parameter in the
    #     [SendMessage][1] topic in the *Amazon Connect Participant Service
    #     API Reference*.
    #
    #   * For allowed event content, see the `Content` parameter in the
    #     [SendEvent][2] topic in the *Amazon Connect Participant Service
    #     API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_SendMessage.html
    #   [2]: https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_SendEvent.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ChatEvent AWS API Documentation
    #
    class ChatEvent < Struct.new(
      :type,
      :content_type,
      :content)
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
    #   traffic distribution groups that phone number inbound traffic is
    #   routed through. You must enter `InstanceId` or `TargetArn`.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance that phone numbers are
    #   claimed to. You can [find the instance ID][1] in the Amazon Resource
    #   Name (ARN) of the instance. You must enter `InstanceId` or
    #   `TargetArn`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
      :instance_id,
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
    #   traffic distribution groups that phone number inbound traffic is
    #   routed through.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance that phone numbers are
    #   claimed to. You can [find the instance ID][1] in the Amazon Resource
    #   Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] phone_number_status
    #   The status of the phone number.
    #
    #   * `CLAIMED` means the previous [ClaimPhoneNumber][1] or
    #     [UpdatePhoneNumber][2] operation succeeded.
    #
    #   * `IN_PROGRESS` means a [ClaimPhoneNumber][1],
    #     [UpdatePhoneNumber][2], or [UpdatePhoneNumberMetadata][3]
    #     operation is still in progress and has not yet completed. You can
    #     call [DescribePhoneNumber][4] at a later time to verify if the
    #     previous operation has completed.
    #
    #   * `FAILED` indicates that the previous [ClaimPhoneNumber][1] or
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
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_ClaimPhoneNumber.html
    #   [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdatePhoneNumber.html
    #   [3]: https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdatePhoneNumberMetadata.html
    #   [4]: https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html
    #   @return [Types::PhoneNumberStatus]
    #
    # @!attribute [rw] source_phone_number_arn
    #   The claimed phone number ARN that was previously imported from the
    #   external service, such as Amazon Pinpoint. If it is from Amazon
    #   Pinpoint, it looks like the ARN of the phone number that was
    #   imported from Amazon Pinpoint.
    #   @return [String]
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
      :instance_id,
      :tags,
      :phone_number_status,
      :source_phone_number_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Operation cannot be performed at this time as there is a conflict with
    # another operation or contact state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information required to join the call.
    #
    # @!attribute [rw] attendee
    #   The attendee information, including attendee ID and join token.
    #   @return [Types::Attendee]
    #
    # @!attribute [rw] meeting
    #   A meeting created using the Amazon Chime SDK.
    #   @return [Types::Meeting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ConnectionData AWS API Documentation
    #
    class ConnectionData < Struct.new(
      :attendee,
      :meeting)
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
    # @!attribute [rw] last_paused_timestamp
    #   The timestamp when the contact was last paused.
    #   @return [Time]
    #
    # @!attribute [rw] last_resumed_timestamp
    #   The timestamp when the contact was last resumed.
    #   @return [Time]
    #
    # @!attribute [rw] total_pause_count
    #   Total pause count for a contact.
    #   @return [Integer]
    #
    # @!attribute [rw] total_pause_duration_in_seconds
    #   Total pause duration for a contact in seconds.
    #   @return [Integer]
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
    # @!attribute [rw] queue_time_adjustment_seconds
    #   An integer that represents the queue time adjust to be applied to
    #   the contact, in seconds (longer / larger queue time are routed
    #   preferentially). Cannot be specified if the QueuePriority is
    #   specified. Must be statically defined and a valid integer value.
    #   @return [Integer]
    #
    # @!attribute [rw] queue_priority
    #   An integer that represents the queue priority to be applied to the
    #   contact (lower priorities are routed preferentially). Cannot be
    #   specified if the QueueTimeAdjustmentSeconds is specified. Must be
    #   statically defined, must be larger than zero, and a valid integer
    #   value. Default Value is 5.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Tags associated with the contact. This contains both Amazon Web
    #   Services generated and user-defined tags.
    #   @return [Hash<String,String>]
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
      :last_paused_timestamp,
      :last_resumed_timestamp,
      :total_pause_count,
      :total_pause_duration_in_seconds,
      :scheduled_timestamp,
      :related_contact_id,
      :wisdom_info,
      :queue_time_adjustment_seconds,
      :queue_priority,
      :tags)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # A structure that defines search criteria for contacts using analysis
    # outputs from Amazon Connect Contact Lens.
    #
    # @!attribute [rw] transcript
    #   Search criteria based on transcript analyzed by Amazon Connect
    #   Contact Lens.
    #   @return [Types::Transcript]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ContactAnalysis AWS API Documentation
    #
    class ContactAnalysis < Struct.new(
      :transcript)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request object with information to create a contact.
    #
    # @!attribute [rw] system_endpoint
    #   Endpoint associated with the Amazon Connect instance from which
    #   outbound contact will be initiated for the campaign.
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] customer_endpoint
    #   Endpoint of the customer for which contact will be initiated.
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] request_identifier
    #   Identifier to uniquely identify individual requests in the batch.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The identifier of the queue associated with the Amazon Connect
    #   instance in which contacts that are created will be queued.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   List of attributes to be stored in a contact.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] campaign
    #   Structure to store information associated with a campaign.
    #   @return [Types::Campaign]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ContactDataRequest AWS API Documentation
    #
    class ContactDataRequest < Struct.new(
      :system_endpoint,
      :customer_endpoint,
      :request_identifier,
      :queue_id,
      :attributes,
      :campaign)
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
    #   The JSON string that represents the content of the flow. For an
    #   example, see [Example flow in Amazon Connect Flow language][1].
    #
    #   Length Constraints: Minimum length of 1. Maximum length of 256000.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    #   The JSON string that represents the content of the flow. For an
    #   example, see [Example flow in Amazon Connect Flow language][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    # Applies to Voice calls only, not to Chat or Task contacts.
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

    # Information of returned contact.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the contact.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the contact summary.
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
    # @!attribute [rw] channel
    #   How the contact reached your contact center.
    #   @return [String]
    #
    # @!attribute [rw] queue_info
    #   If this contact was queued, this contains information about the
    #   queue.
    #   @return [Types::ContactSearchSummaryQueueInfo]
    #
    # @!attribute [rw] agent_info
    #   Information about the agent who accepted the contact.
    #   @return [Types::ContactSearchSummaryAgentInfo]
    #
    # @!attribute [rw] initiation_timestamp
    #   The date and time this contact was initiated, in UTC time. For
    #   `INBOUND`, this is when the contact arrived. For `OUTBOUND`, this is
    #   when the agent began dialing. For `CALLBACK`, this is when the
    #   callback contact was created. For `TRANSFER` and `QUEUE_TRANSFER`,
    #   this is when the transfer was initiated. For API, this is when the
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
    # @!attribute [rw] scheduled_timestamp
    #   The timestamp, in Unix epoch time format, at which to start running
    #   the inbound flow.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ContactSearchSummary AWS API Documentation
    #
    class ContactSearchSummary < Struct.new(
      :arn,
      :id,
      :initial_contact_id,
      :previous_contact_id,
      :initiation_method,
      :channel,
      :queue_info,
      :agent_info,
      :initiation_timestamp,
      :disconnect_timestamp,
      :scheduled_timestamp)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ContactSearchSummaryAgentInfo AWS API Documentation
    #
    class ContactSearchSummaryAgentInfo < Struct.new(
      :id,
      :connected_to_agent_timestamp)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ContactSearchSummaryQueueInfo AWS API Documentation
    #
    class ContactSearchSummaryQueueInfo < Struct.new(
      :id,
      :enqueue_timestamp)
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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

    # The `CreateCase` action definition.
    #
    # @!attribute [rw] fields
    #   An array of objects with `Field ID` and `Value` data.
    #   @return [Array<Types::FieldValue>]
    #
    # @!attribute [rw] template_id
    #   A unique identifier of a template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateCaseActionDefinition AWS API Documentation
    #
    class CreateCaseActionDefinition < Struct.new(
      :fields,
      :template_id)
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
    #   The JSON string that represents the content of the flow. For an
    #   example, see [Example flow in Amazon Connect Flow language][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    #   The JSON string that represents the content of the flow. For an
    #   example, see [Example flow in Amazon Connect Flow language][1].
    #
    #   Length Constraints: Minimum length of 1. Maximum length of 256000.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, `\{ "tags": \{"key1":"value1",
    #   "key2":"value2"\} \}`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateInstanceRequest AWS API Documentation
    #
    class CreateInstanceRequest < Struct.new(
      :client_token,
      :identity_management_type,
      :instance_alias,
      :directory_id,
      :inbound_calls_enabled,
      :outbound_calls_enabled,
      :tags)
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    # @!attribute [rw] initial_contact_id
    #   This is the contactId of the current contact that the
    #   `CreatePersistentContactAssociation` API is being called from.
    #   @return [String]
    #
    # @!attribute [rw] rehydration_type
    #   The contactId chosen for rehydration depends on the type chosen.
    #
    #   * `ENTIRE_PAST_SESSION`: Rehydrates a chat from the most recently
    #     terminated past chat contact of the specified past ended chat
    #     session. To use this type, provide the `initialContactId` of the
    #     past ended chat session in the `sourceContactId` field. In this
    #     type, Amazon Connect determines what the most recent chat contact
    #     on the past ended chat session and uses it to start a persistent
    #     chat.
    #
    #   * `FROM_SEGMENT`: Rehydrates a chat from the specified past chat
    #     contact provided in the `sourceContactId` field.
    #
    #   The actual contactId used for rehydration is provided in the
    #   response of this API.
    #
    #   To illustrate how to use rehydration type, consider the following
    #   example: A customer starts a chat session. Agent a1 accepts the chat
    #   and a conversation starts between the customer and Agent a1. This
    #   first contact creates a contact ID **C1**. Agent a1 then transfers
    #   the chat to Agent a2. This creates another contact ID **C2**. At
    #   this point Agent a2 ends the chat. The customer is forwarded to the
    #   disconnect flow for a post chat survey that creates another contact
    #   ID **C3**. After the chat survey, the chat session ends. Later, the
    #   customer returns and wants to resume their past chat session. At
    #   this point, the customer can have following use cases:
    #
    #   * **Use Case 1**: The customer wants to continue the past chat
    #     session but they want to hide the post chat survey. For this they
    #     will use the following configuration:
    #
    #     * **Configuration**
    #
    #       * SourceContactId = "C2"
    #
    #       * RehydrationType = "FROM\_SEGMENT"
    #
    #     * **Expected behavior**
    #
    #       * This starts a persistent chat session from the specified past
    #         ended contact (C2). Transcripts of past chat sessions C2 and
    #         C1 are accessible in the current persistent chat session. Note
    #         that chat segment C3 is dropped from the persistent chat
    #         session.
    #
    #       ^
    #
    #   * **Use Case 2**: The customer wants to continue the past chat
    #     session and see the transcript of the entire past engagement,
    #     including the post chat survey. For this they will use the
    #     following configuration:
    #
    #     * **Configuration**
    #
    #       * SourceContactId = "C1"
    #
    #       * RehydrationType = "ENTIRE\_PAST\_SESSION"
    #
    #     * **Expected behavior**
    #
    #       * This starts a persistent chat session from the most recently
    #         ended chat contact (C3). Transcripts of past chat sessions C3,
    #         C2 and C1 are accessible in the current persistent chat
    #         session.
    #
    #       ^
    #   @return [String]
    #
    # @!attribute [rw] source_contact_id
    #   The contactId from which a persistent chat session must be started.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreatePersistentContactAssociationRequest AWS API Documentation
    #
    class CreatePersistentContactAssociationRequest < Struct.new(
      :instance_id,
      :initial_contact_id,
      :rehydration_type,
      :source_contact_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] continued_from_contact_id
    #   The contactId from which a persistent chat session is started. This
    #   field is populated only for persistent chat.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreatePersistentContactAssociationResponse AWS API Documentation
    #
    class CreatePersistentContactAssociationResponse < Struct.new(
      :continued_from_contact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN) of the instance.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the predefined attribute.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values of the predefined attribute.
    #   @return [Types::PredefinedAttributeValues]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreatePredefinedAttributeRequest AWS API Documentation
    #
    class CreatePredefinedAttributeRequest < Struct.new(
      :instance_id,
      :name,
      :values)
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
    #   The URI for the S3 bucket where the prompt is stored. You can
    #   provide S3 pre-signed URLs returned by the [GetPromptFile][1] API
    #   instead of providing S3 URIs.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_GetPromptFile.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    #   A unique name of the quick connect.
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] agent_availability_timer
    #   Whether agents with this routing profile will have their routing
    #   order calculated based on *longest idle time* or *time since their
    #   last inbound contact*.
    #   @return [String]
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
      :tags,
      :agent_availability_timer)
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    # @!attribute [rw] applications
    #   This API is in preview release for Amazon Connect and is subject to
    #   change.
    #
    #   A list of third-party applications that the security profile will
    #   give access to.
    #   @return [Array<Types::Application>]
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
      :tag_restricted_resources,
      :applications)
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
      SENSITIVE = [:password]
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique Id for each create view request to avoid duplicate view
    #   creation. For example, the view is idempotent ClientToken is
    #   provided.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the view status as either `SAVED` or `PUBLISHED`. The
    #   `PUBLISHED` status will initiate validation on the content.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   View content containing all content necessary to render a view
    #   except for runtime input data.
    #
    #   The total uncompressed content has a maximum file size of 400kB.
    #   @return [Types::ViewInputContent]
    #
    # @!attribute [rw] description
    #   The description of the view.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the view.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the view resource (not specific to view
    #   version).These tags can be used to organize, track, or control
    #   access for this resource. For example, \\\{ "tags":
    #   \\\{"key1":"value1", "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateViewRequest AWS API Documentation
    #
    class CreateViewRequest < Struct.new(
      :instance_id,
      :client_token,
      :status,
      :content,
      :description,
      :name,
      :tags)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] view
    #   A view resource object. Contains metadata and content necessary to
    #   render the view.
    #   @return [Types::View]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateViewResponse AWS API Documentation
    #
    class CreateViewResponse < Struct.new(
      :view)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] view_id
    #   The identifier of the view. Both `ViewArn` and `ViewId` can be used.
    #   @return [String]
    #
    # @!attribute [rw] version_description
    #   The description for the version being published.
    #   @return [String]
    #
    # @!attribute [rw] view_content_sha_256
    #   Indicates the checksum value of the latest published view content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateViewVersionRequest AWS API Documentation
    #
    class CreateViewVersionRequest < Struct.new(
      :instance_id,
      :view_id,
      :version_description,
      :view_content_sha_256)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] view
    #   All view data is contained within the View object.
    #   @return [Types::View]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateViewVersionResponse AWS API Documentation
    #
    class CreateViewVersionResponse < Struct.new(
      :view)
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN) of the instance.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the predefined attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeletePredefinedAttributeRequest AWS API Documentation
    #
    class DeletePredefinedAttributeRequest < Struct.new(
      :instance_id,
      :name)
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] view_id
    #   The identifier of the view. Both `ViewArn` and `ViewId` can be used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteViewRequest AWS API Documentation
    #
    class DeleteViewRequest < Struct.new(
      :instance_id,
      :view_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteViewResponse AWS API Documentation
    #
    class DeleteViewResponse < Aws::EmptyStructure; end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] view_id
    #   The identifier of the view. Both `ViewArn` and `ViewId` can be used.
    #   @return [String]
    #
    # @!attribute [rw] view_version
    #   The version number of the view.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteViewVersionRequest AWS API Documentation
    #
    class DeleteViewVersionRequest < Struct.new(
      :instance_id,
      :view_id,
      :view_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteViewVersionResponse AWS API Documentation
    #
    class DeleteViewVersionResponse < Aws::EmptyStructure; end

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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN) of the instance.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the predefined attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribePredefinedAttributeRequest AWS API Documentation
    #
    class DescribePredefinedAttributeRequest < Struct.new(
      :instance_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] predefined_attribute
    #   Information about the predefined attribute.
    #   @return [Types::PredefinedAttribute]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribePredefinedAttributeResponse AWS API Documentation
    #
    class DescribePredefinedAttributeResponse < Struct.new(
      :predefined_attribute)
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] view_id
    #   The ViewId of the view. This must be an ARN for Amazon Web Services
    #   managed views.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeViewRequest AWS API Documentation
    #
    class DescribeViewRequest < Struct.new(
      :instance_id,
      :view_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] view
    #   All view data is contained within the View object.
    #   @return [Types::View]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeViewResponse AWS API Documentation
    #
    class DescribeViewResponse < Struct.new(
      :view)
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
    # @!attribute [rw] routing_step_expression
    #   The expression of a step in a routing criteria.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Dimensions AWS API Documentation
    #
    class Dimensions < Struct.new(
      :queue,
      :channel,
      :routing_profile,
      :routing_step_expression)
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
    # @!attribute [rw] data_set_id
    #   The identifier of the dataset to remove.
    #   @return [String]
    #
    # @!attribute [rw] target_account_id
    #   The identifier of the target account. Use to associate a dataset to
    #   a different account than the one containing the Amazon Connect
    #   instance. If not specified, by default this value is the Amazon Web
    #   Services account that has the Amazon Connect instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateAnalyticsDataSetRequest AWS API Documentation
    #
    class DisassociateAnalyticsDataSetRequest < Struct.new(
      :instance_id,
      :data_set_id,
      :target_account_id)
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
    # @!attribute [rw] resource_id
    #   The identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   A valid resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateFlowRequest AWS API Documentation
    #
    class DisassociateFlowRequest < Struct.new(
      :instance_id,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateFlowResponse AWS API Documentation
    #
    class DisassociateFlowResponse < Aws::EmptyStructure; end

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

    # @!attribute [rw] traffic_distribution_group_id
    #   The identifier of the traffic distribution group. This can be the ID
    #   or the ARN if the API is being called in the Region where the
    #   traffic distribution group was created. The ARN must be provided if
    #   the call is from the replicated Region.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier for the user. This can be the ID or the ARN of the
    #   user.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateTrafficDistributionGroupUserRequest AWS API Documentation
    #
    class DisassociateTrafficDistributionGroupUserRequest < Struct.new(
      :traffic_distribution_group_id,
      :user_id,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateTrafficDistributionGroupUserResponse AWS API Documentation
    #
    class DisassociateTrafficDistributionGroupUserResponse < Aws::EmptyStructure; end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN) of the instance.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user account.
    #   @return [String]
    #
    # @!attribute [rw] user_proficiencies
    #   The proficiencies to disassociate from the user.
    #   @return [Array<Types::UserProficiencyDisassociate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateUserProficienciesRequest AWS API Documentation
    #
    class DisassociateUserProficienciesRequest < Struct.new(
      :instance_id,
      :user_id,
      :user_proficiencies)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about why a contact was disconnected. Only Amazon
    # Connect outbound campaigns can provide this field.
    #
    # @!attribute [rw] code
    #   A code that indicates how the contact was terminated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisconnectReason AWS API Documentation
    #
    class DisconnectReason < Struct.new(
      :code)
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

    # An empty value.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EmptyFieldValue AWS API Documentation
    #
    class EmptyFieldValue < Aws::EmptyStructure; end

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

    # End associated tasks related to a case.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/EndAssociatedTasksActionDefinition AWS API Documentation
    #
    class EndAssociatedTasksActionDefinition < Aws::EmptyStructure; end

    # Information about the endpoint.
    #
    # @!attribute [rw] type
    #   Type of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   Address of the endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Endpoint AWS API Documentation
    #
    class Endpoint < Struct.new(
      :type,
      :address)
      SENSITIVE = []
      include Aws::Structure
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # List of errors for dataset association failures.
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The corresponding error message for the error code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ErrorResult AWS API Documentation
    #
    class ErrorResult < Struct.new(
      :error_code,
      :error_message)
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    #
    #   <note markdown="1"> Even though a note in an evaluation can have up to 3072 chars, there
    #   is also a limit on the total number of chars for all the notes in
    #   the evaluation combined. Assuming there are N questions in the
    #   evaluation being submitted, then the max char limit for all notes
    #   combined is N x 1024.
    #
    #    </note>
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

    # Request for which contact failed to be generated.
    #
    # @!attribute [rw] request_identifier
    #   Request identifier provided in the API call in the
    #   ContactDataRequest to create a contact.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason_code
    #   Reason code for the failure.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason_message
    #   Why the request to create a contact failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/FailedRequest AWS API Documentation
    #
    class FailedRequest < Struct.new(
      :request_identifier,
      :failure_reason_code,
      :failure_reason_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object for case field values.
    #
    # @!attribute [rw] id
    #   Unique identifier of a field.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Union of potential field value types.
    #   @return [Types::FieldValueUnion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/FieldValue AWS API Documentation
    #
    class FieldValue < Struct.new(
      :id,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object to store union of Field values.
    #
    # @!attribute [rw] boolean_value
    #   A Boolean number value type.
    #   @return [Boolean]
    #
    # @!attribute [rw] double_value
    #   a Double number value type.
    #   @return [Float]
    #
    # @!attribute [rw] empty_value
    #   An empty value.
    #   @return [Types::EmptyFieldValue]
    #
    # @!attribute [rw] string_value
    #   String value type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/FieldValueUnion AWS API Documentation
    #
    class FieldValueUnion < Struct.new(
      :boolean_value,
      :double_value,
      :empty_value,
      :string_value)
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
    # @!attribute [rw] routing_step_expressions
    #   A list of expressions as a filter, in which an expression is an
    #   object of a step in a routing criteria.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Filters AWS API Documentation
    #
    class Filters < Struct.new(
      :queues,
      :channels,
      :routing_profiles,
      :routing_step_expressions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about flow associations.
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] flow_id
    #   The identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/FlowAssociationSummary AWS API Documentation
    #
    class FlowAssociationSummary < Struct.new(
      :resource_id,
      :flow_id,
      :resource_type)
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
    #   * RoutingStepExpressions: 50
    #
    #   Metric data is retrieved only for the resources associated with the
    #   queues or routing profiles, and by any channels included in the
    #   filter. (You cannot filter by both queue AND routing profile.) You
    #   can include both resource IDs and resource ARNs in the same request.
    #
    #   When using the `RoutingStepExpression` filter, you need to pass
    #   exactly one `QueueId`. The filter is also case sensitive so when
    #   using the `RoutingStepExpression` filter, grouping by
    #   `ROUTING_STEP_EXPRESSION` is required.
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
    #
    #   * When using the `RoutingStepExpression` filter, group by
    #     `ROUTING_STEP_EXPRESSION` is required.
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
    #     When the filter `RoutingStepExpression` is used, this metric is
    #     still calculated from enqueue time. For example, if a contact that
    #     has been queued under `<Expression 1>` for 10 seconds has expired
    #     and `<Expression 2>` becomes active, then `OLDEST_CONTACT_AGE` for
    #     this queue will be counted starting from 10, not 0.
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
    #   The identifier for the user. This can be the ID or the ARN of the
    #   user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetFederationTokenResponse AWS API Documentation
    #
    class GetFederationTokenResponse < Struct.new(
      :credentials,
      :sign_in_url,
      :user_arn,
      :user_id)
      SENSITIVE = [:credentials]
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
    # @!attribute [rw] resource_id
    #   The identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   A valid resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetFlowAssociationRequest AWS API Documentation
    #
    class GetFlowAssociationRequest < Struct.new(
      :instance_id,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_id
    #   The identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] flow_id
    #   The identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   A valid resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetFlowAssociationResponse AWS API Documentation
    #
    class GetFlowAssociationResponse < Struct.new(
      :resource_id,
      :flow_id,
      :resource_type)
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
    #   RoutingStepExpression is not a valid filter for GetMetricData and we
    #   recommend switching to GetMetricDataV2 for more up-to-date features.
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
    #
    #   RoutingStepExpression is not a valid filter for GetMetricData and we
    #   recommend switching to GetMetricDataV2 for more up-to-date features.
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
    #   time must be before the end time timestamp. The start and end time
    #   depends on the `IntervalPeriod` selected. By default the time range
    #   between start and end time is 35 days. Historical metrics are
    #   available for 3 months.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The timestamp, in UNIX Epoch time format, at which to end the
    #   reporting interval for the retrieval of historical metrics data. The
    #   time must be later than the start time timestamp. It cannot be later
    #   than the current timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] interval
    #   The interval period and timezone to apply to returned metrics.
    #
    #   * `IntervalPeriod`: An aggregated grouping applied to request
    #     metrics. Valid `IntervalPeriod` values are: `FIFTEEN_MIN` \|
    #     `THIRTY_MIN` \| `HOUR` \| `DAY` \| `WEEK` \| `TOTAL`.
    #
    #     For example, if `IntervalPeriod` is selected `THIRTY_MIN`,
    #     `StartTime` and `EndTime` differs by 1 day, then Amazon Connect
    #     returns 48 results in the response. Each result is aggregated by
    #     the THIRTY\_MIN period. By default Amazon Connect aggregates
    #     results based on the `TOTAL` interval period.
    #
    #     The following list describes restrictions on `StartTime` and
    #     `EndTime` based on which `IntervalPeriod` is requested.
    #
    #     * `FIFTEEN_MIN`: The difference between `StartTime` and `EndTime`
    #       must be less than 3 days.
    #
    #     * `THIRTY_MIN`: The difference between `StartTime` and `EndTime`
    #       must be less than 3 days.
    #
    #     * `HOUR`: The difference between `StartTime` and `EndTime` must be
    #       less than 3 days.
    #
    #     * `DAY`: The difference between `StartTime` and `EndTime` must be
    #       less than 35 days.
    #
    #     * `WEEK`: The difference between `StartTime` and `EndTime` must be
    #       less than 35 days.
    #
    #     * `TOTAL`: The difference between `StartTime` and `EndTime` must
    #       be less than 35 days.
    #
    #   * `TimeZone`: The timezone applied to requested metrics.
    #   @return [Types::IntervalDetails]
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
    #   * Feature
    #
    #   * Routing step expression
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
    #     `AGENT_HIERARCHY_LEVEL_FOUR` \| `AGENT_HIERARCHY_LEVEL_FIVE` \|
    #     `FEATURE` \| `contact/segmentAttributes/connect:Subtype` \|
    #     `ROUTING_STEP_EXPRESSION`
    #
    #   * **Filter values**: A maximum of 100 filter values are supported in
    #     a single request. VOICE, CHAT, and TASK are valid `filterValue`
    #     for the CHANNEL filter key. They do not count towards limitation
    #     of 100 filter values. For example, a GetMetricDataV2 request can
    #     filter by 50 queues, 35 agents, and 15 routing profiles for a
    #     total of 100 filter values, along with 3 channel filters.
    #
    #     `contact_lens_conversational_analytics` is a valid filterValue for
    #     the `FEATURE` filter key. It is available only to contacts
    #     analyzed by Contact Lens conversational analytics.
    #
    #     `connect:Chat`, `connect:SMS`, `connect:Telephony`, and
    #     `connect:WebRTC` are valid `filterValue` examples (not exhaustive)
    #     for the `contact/segmentAttributes/connect:Subtype filter` key.
    #
    #     `ROUTING_STEP_EXPRESSION` is a valid filter key with a filter
    #     value up to 3000 length. This filter is case and order sensitive.
    #     JSON string fields must be sorted in ascending order and JSON
    #     array order should be kept as is.
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
    #   `AGENT_HIERARCHY_LEVEL_FOUR` \| `AGENT_HIERARCHY_LEVEL_FIVE`,
    #   `contact/segmentAttributes/connect:Subtype` \|
    #   `ROUTING_STEP_EXPRESSION`
    #   @return [Array<String>]
    #
    # @!attribute [rw] metrics
    #   The metrics to retrieve. Specify the name, groupings, and filters
    #   for each metric. The following historical metrics are available. For
    #   a description of each metric, see [Historical metrics
    #   definitions][1] in the *Amazon Connect Administrator's Guide*.
    #
    #   ABANDONMENT\_RATE
    #
    #   : Unit: Percent
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, Feature,
    #     contact/segmentAttributes/connect:Subtype
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
    #   AGENT\_ANSWER\_RATE
    #
    #   : Unit: Percent
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   AGENT\_NON\_ADHERENT\_TIME
    #
    #   : Unit: Seconds
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
    #   AGENT\_NON\_RESPONSE\_WITHOUT\_CUSTOMER\_ABANDONS
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #     Data for this metric is available starting from October 1, 2023
    #     0:00:00 GMT.
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
    #     Agent, Agent Hierarchy, Feature,
    #     contact/segmentAttributes/connect:Subtype
    #
    #   AVG\_ACTIVE\_TIME
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
    #     Valid metric filter key: `INITIATION_METHOD`
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, Feature,
    #     contact/segmentAttributes/connect:Subtype
    #
    #     <note markdown="1"> Feature is a valid filter but not a valid grouping.
    #
    #      </note>
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
    #     <note markdown="1"> The `Negate` key in Metric Level Filters is not applicable for
    #     this metric.
    #
    #      </note>
    #
    #   AVG\_AGENT\_PAUSE\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   AVG\_CONTACT\_DURATION
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, Feature,
    #     contact/segmentAttributes/connect:Subtype
    #
    #     <note markdown="1"> Feature is a valid filter but not a valid grouping.
    #
    #      </note>
    #
    #   AVG\_CONVERSATION\_DURATION
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, Feature,
    #     contact/segmentAttributes/connect:Subtype
    #
    #   AVG\_GREETING\_TIME\_AGENT
    #
    #   : This metric is available only for contacts analyzed by Contact
    #     Lens conversational analytics.
    #
    #     Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, contact/segmentAttributes/connect:Subtype
    #
    #   AVG\_HANDLE\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, Feature,
    #     contact/segmentAttributes/connect:Subtype, RoutingStepExpression
    #
    #     <note markdown="1"> Feature is a valid filter but not a valid grouping.
    #
    #      </note>
    #
    #   AVG\_HOLD\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, Feature,
    #     contact/segmentAttributes/connect:Subtype
    #
    #     <note markdown="1"> Feature is a valid filter but not a valid grouping.
    #
    #      </note>
    #
    #   AVG\_HOLD\_TIME\_ALL\_CONTACTS
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, contact/segmentAttributes/connect:Subtype
    #
    #   AVG\_HOLDS
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, Feature,
    #     contact/segmentAttributes/connect:Subtype
    #
    #     <note markdown="1"> Feature is a valid filter but not a valid grouping.
    #
    #      </note>
    #
    #   AVG\_INTERACTION\_AND\_HOLD\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, contact/segmentAttributes/connect:Subtype
    #
    #   AVG\_INTERACTION\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid metric filter key: `INITIATION_METHOD`
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Feature, contact/segmentAttributes/connect:Subtype
    #
    #     <note markdown="1"> Feature is a valid filter but not a valid grouping.
    #
    #      </note>
    #
    #   AVG\_INTERRUPTIONS\_AGENT
    #
    #   : This metric is available only for contacts analyzed by Contact
    #     Lens conversational analytics.
    #
    #     Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, contact/segmentAttributes/connect:Subtype
    #
    #   AVG\_INTERRUPTION\_TIME\_AGENT
    #
    #   : This metric is available only for contacts analyzed by Contact
    #     Lens conversational analytics.
    #
    #     Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, contact/segmentAttributes/connect:Subtype
    #
    #   AVG\_NON\_TALK\_TIME
    #
    #   : This metric is available only for contacts analyzed by Contact
    #     Lens conversational analytics.
    #
    #     Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, contact/segmentAttributes/connect:Subtype
    #
    #   AVG\_QUEUE\_ANSWER\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Feature, contact/segmentAttributes/connect:Subtype
    #
    #     <note markdown="1"> Feature is a valid filter but not a valid grouping.
    #
    #      </note>
    #
    #   AVG\_RESOLUTION\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     contact/segmentAttributes/connect:Subtype
    #
    #   AVG\_TALK\_TIME
    #
    #   : This metric is available only for contacts analyzed by Contact
    #     Lens conversational analytics.
    #
    #     Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, contact/segmentAttributes/connect:Subtype
    #
    #   AVG\_TALK\_TIME\_AGENT
    #
    #   : This metric is available only for contacts analyzed by Contact
    #     Lens conversational analytics.
    #
    #     Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, contact/segmentAttributes/connect:Subtype
    #
    #   AVG\_TALK\_TIME\_CUSTOMER
    #
    #   : This metric is available only for contacts analyzed by Contact
    #     Lens conversational analytics.
    #
    #     Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, contact/segmentAttributes/connect:Subtype
    #
    #   CONTACTS\_ABANDONED
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, contact/segmentAttributes/connect:Subtype,
    #     RoutingStepExpression
    #
    #   CONTACTS\_CREATED
    #
    #   : Unit: Count
    #
    #     Valid metric filter key: `INITIATION_METHOD`
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Feature, contact/segmentAttributes/connect:Subtype
    #
    #     <note markdown="1"> Feature is a valid filter but not a valid grouping.
    #
    #      </note>
    #
    #   CONTACTS\_HANDLED
    #
    #   : Unit: Count
    #
    #     Valid metric filter key: `INITIATION_METHOD`, `DISCONNECT_REASON`
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, Feature,
    #     contact/segmentAttributes/connect:Subtype, RoutingStepExpression
    #
    #     <note markdown="1"> Feature is a valid filter but not a valid grouping.
    #
    #      </note>
    #
    #   CONTACTS\_HANDLED\_BY\_CONNECTED\_TO\_AGENT
    #
    #   : Unit: Count
    #
    #     Valid metric filter key: `INITIATION_METHOD`
    #
    #     Valid groupings and filters: Queue, Channel, Agent, Agent
    #     Hierarchy, contact/segmentAttributes/connect:Subtype
    #
    #   CONTACTS\_HOLD\_ABANDONS
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, contact/segmentAttributes/connect:Subtype
    #
    #   CONTACTS\_ON\_HOLD\_AGENT\_DISCONNECT
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   CONTACTS\_ON\_HOLD\_CUSTOMER\_DISCONNECT
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   CONTACTS\_PUT\_ON\_HOLD
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   CONTACTS\_TRANSFERRED\_OUT\_EXTERNAL
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   CONTACTS\_TRANSFERRED\_OUT\_INTERNAL
    #
    #   : Unit: Percent
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   CONTACTS\_QUEUED
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, contact/segmentAttributes/connect:Subtype
    #
    #   CONTACTS\_QUEUED\_BY\_ENQUEUE
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Agent, Agent
    #     Hierarchy, contact/segmentAttributes/connect:Subtype
    #
    #   CONTACTS\_RESOLVED\_IN\_X
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     contact/segmentAttributes/connect:Subtype
    #
    #     Threshold: For `ThresholdValue` enter any whole number from 1 to
    #     604800 (inclusive), in seconds. For `Comparison`, you must enter
    #     `LT` (for "Less than").
    #
    #   CONTACTS\_TRANSFERRED\_OUT
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, Feature,
    #     contact/segmentAttributes/connect:Subtype
    #
    #     <note markdown="1"> Feature is a valid filter but not a valid grouping.
    #
    #      </note>
    #
    #   CONTACTS\_TRANSFERRED\_OUT\_BY\_AGENT
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, contact/segmentAttributes/connect:Subtype
    #
    #   CONTACTS\_TRANSFERRED\_OUT\_FROM\_QUEUE
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, contact/segmentAttributes/connect:Subtype
    #
    #   MAX\_QUEUED\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, contact/segmentAttributes/connect:Subtype
    #
    #   PERCENT\_CONTACTS\_STEP\_EXPIRED
    #
    #   : Unit: Percent
    #
    #     Valid groupings and filters: Queue, RoutingStepExpression
    #
    #   PERCENT\_CONTACTS\_STEP\_JOINED
    #
    #   : Unit: Percent
    #
    #     Valid groupings and filters: Queue, RoutingStepExpression
    #
    #   PERCENT\_NON\_TALK\_TIME
    #
    #   : This metric is available only for contacts analyzed by Contact
    #     Lens conversational analytics.
    #
    #     Unit: Percentage
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, contact/segmentAttributes/connect:Subtype
    #
    #   PERCENT\_TALK\_TIME
    #
    #   : This metric is available only for contacts analyzed by Contact
    #     Lens conversational analytics.
    #
    #     Unit: Percentage
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, contact/segmentAttributes/connect:Subtype
    #
    #   PERCENT\_TALK\_TIME\_AGENT
    #
    #   : This metric is available only for contacts analyzed by Contact
    #     Lens conversational analytics.
    #
    #     Unit: Percentage
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, contact/segmentAttributes/connect:Subtype
    #
    #   PERCENT\_TALK\_TIME\_CUSTOMER
    #
    #   : This metric is available only for contacts analyzed by Contact
    #     Lens conversational analytics.
    #
    #     Unit: Percentage
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, contact/segmentAttributes/connect:Subtype
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
    #   STEP\_CONTACTS\_QUEUED
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, RoutingStepExpression
    #
    #   SUM\_AFTER\_CONTACT\_WORK\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   SUM\_CONNECTING\_TIME\_AGENT
    #
    #   : Unit: Seconds
    #
    #     Valid metric filter key: `INITIATION_METHOD`. This metric only
    #     supports the following filter keys as `INITIATION_METHOD`:
    #     `INBOUND` \| `OUTBOUND` \| `CALLBACK` \| `API`
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #     <note markdown="1"> The `Negate` key in Metric Level Filters is not applicable for
    #     this metric.
    #
    #      </note>
    #
    #   SUM\_CONTACT\_FLOW\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   SUM\_CONTACT\_TIME\_AGENT
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   SUM\_CONTACTS\_ANSWERED\_IN\_X
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     contact/segmentAttributes/connect:Subtype
    #
    #     Threshold: For `ThresholdValue`, enter any whole number from 1 to
    #     604800 (inclusive), in seconds. For `Comparison`, you must enter
    #     `LT` (for "Less than").
    #
    #   SUM\_CONTACTS\_ABANDONED\_IN\_X
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     contact/segmentAttributes/connect:Subtype
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
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy, contact/segmentAttributes/connect:Subtype
    #
    #   SUM\_ERROR\_STATUS\_TIME\_AGENT
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   SUM\_HANDLE\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   SUM\_HOLD\_TIME
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   SUM\_IDLE\_TIME\_AGENT
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Routing Profile, Agent, Agent
    #     Hierarchy
    #
    #   SUM\_INTERACTION\_AND\_HOLD\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   SUM\_INTERACTION\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     Agent, Agent Hierarchy
    #
    #   SUM\_NON\_PRODUCTIVE\_TIME\_AGENT
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Routing Profile, Agent, Agent
    #     Hierarchy
    #
    #   SUM\_ONLINE\_TIME\_AGENT
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Routing Profile, Agent, Agent
    #     Hierarchy
    #
    #   SUM\_RETRY\_CALLBACK\_ATTEMPTS
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile,
    #     contact/segmentAttributes/connect:Subtype
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
      :interval,
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
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetPromptFileResponse AWS API Documentation
    #
    class GetPromptFileResponse < Struct.new(
      :prompt_presigned_url,
      :last_modified_time,
      :last_modified_region)
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    #   The identifier of the traffic distribution group. This can be the ID
    #   or the ARN if the API is being called in the Region where the
    #   traffic distribution group was created. The ARN must be provided if
    #   the call is from the replicated Region.
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
    # @!attribute [rw] sign_in_config
    #   The distribution that determines which Amazon Web Services Regions
    #   should be used to sign in agents in to both the instance and its
    #   replica(s).
    #   @return [Types::SignInConfig]
    #
    # @!attribute [rw] agent_config
    #   The distribution of agents between the instance and its replica(s).
    #   @return [Types::AgentConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetTrafficDistributionResponse AWS API Documentation
    #
    class GetTrafficDistributionResponse < Struct.new(
      :telephony_config,
      :id,
      :arn,
      :sign_in_config,
      :agent_config)
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HierarchyGroup AWS API Documentation
    #
    class HierarchyGroup < Struct.new(
      :id,
      :arn,
      :name,
      :level_id,
      :hierarchy_path,
      :tags,
      :last_modified_time,
      :last_modified_region)
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
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HierarchyGroupSummary AWS API Documentation
    #
    class HierarchyGroupSummary < Struct.new(
      :id,
      :arn,
      :name,
      :last_modified_time,
      :last_modified_region)
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
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HierarchyLevel AWS API Documentation
    #
    class HierarchyLevel < Struct.new(
      :id,
      :arn,
      :name,
      :last_modified_time,
      :last_modified_region)
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
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
      :tags,
      :last_modified_time,
      :last_modified_region)
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
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HoursOfOperationSummary AWS API Documentation
    #
    class HoursOfOperationSummary < Struct.new(
      :id,
      :arn,
      :name,
      :last_modified_time,
      :last_modified_region)
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] source_phone_number_arn
    #   The claimed phone number ARN being imported from the external
    #   service, such as Amazon Pinpoint. If it is from Amazon Pinpoint, it
    #   looks like the ARN of the phone number to import from Amazon
    #   Pinpoint.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_description
    #   The description of the phone number.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ImportPhoneNumberRequest AWS API Documentation
    #
    class ImportPhoneNumberRequest < Struct.new(
      :instance_id,
      :source_phone_number_arn,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ImportPhoneNumberResponse AWS API Documentation
    #
    class ImportPhoneNumberResponse < Struct.new(
      :phone_number_id,
      :phone_number_arn)
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
    # @!attribute [rw] tags
    #   The tags of an instance.
    #   @return [Hash<String,String>]
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
      :instance_access_url,
      :tags)
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

    # Information about the interval period to use for returning results.
    #
    # @!attribute [rw] time_zone
    #   The timezone applied to requested metrics.
    #   @return [String]
    #
    # @!attribute [rw] interval_period
    #   `IntervalPeriod`: An aggregated grouping applied to request metrics.
    #   Valid `IntervalPeriod` values are: `FIFTEEN_MIN` \| `THIRTY_MIN` \|
    #   `HOUR` \| `DAY` \| `WEEK` \| `TOTAL`.
    #
    #   For example, if `IntervalPeriod` is selected `THIRTY_MIN`,
    #   `StartTime` and `EndTime` differs by 1 day, then Amazon Connect
    #   returns 48 results in the response. Each result is aggregated by the
    #   THIRTY\_MIN period. By default Amazon Connect aggregates results
    #   based on the `TOTAL` interval period.
    #
    #   The following list describes restrictions on `StartTime` and
    #   `EndTime` based on what `IntervalPeriod` is requested.
    #
    #   * `FIFTEEN_MIN`: The difference between `StartTime` and `EndTime`
    #     must be less than 3 days.
    #
    #   * `THIRTY_MIN`: The difference between `StartTime` and `EndTime`
    #     must be less than 3 days.
    #
    #   * `HOUR`: The difference between `StartTime` and `EndTime` must be
    #     less than 3 days.
    #
    #   * `DAY`: The difference between `StartTime` and `EndTime` must be
    #     less than 35 days.
    #
    #   * `WEEK`: The difference between `StartTime` and `EndTime` must be
    #     less than 35 days.
    #
    #   * `TOTAL`: The difference between `StartTime` and `EndTime` must be
    #     less than 35 days.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/IntervalDetails AWS API Documentation
    #
    class IntervalDetails < Struct.new(
      :time_zone,
      :interval_period)
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
    # @!attribute [rw] data_set_id
    #   The identifier of the dataset to get the association status.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListAnalyticsDataAssociationsRequest AWS API Documentation
    #
    class ListAnalyticsDataAssociationsRequest < Struct.new(
      :instance_id,
      :data_set_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   An array of successful results: `DataSetId`, `TargetAccountId`,
    #   `ResourceShareId`, `ResourceShareArn`. This is a paginated API, so
    #   `nextToken` is given if there are more results to be returned.
    #   @return [Array<Types::AnalyticsDataAssociationResult>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListAnalyticsDataAssociationsResponse AWS API Documentation
    #
    class ListAnalyticsDataAssociationsResponse < Struct.new(
      :results,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListFlowAssociationsRequest AWS API Documentation
    #
    class ListFlowAssociationsRequest < Struct.new(
      :instance_id,
      :resource_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_association_summary_list
    #   Summary of flow associations.
    #   @return [Array<Types::FlowAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListFlowAssociationsResponse AWS API Documentation
    #
    class ListFlowAssociationsResponse < Struct.new(
      :flow_association_summary_list,
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
    # @!attribute [rw] integration_arn
    #   The Amazon Resource Name (ARN) of the integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListIntegrationAssociationsRequest AWS API Documentation
    #
    class ListIntegrationAssociationsRequest < Struct.new(
      :instance_id,
      :integration_type,
      :next_token,
      :max_results,
      :integration_arn)
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
    #
    #   <note markdown="1"> We recommend using [ListPhoneNumbersV2][1] to return phone number
    #   types. While ListPhoneNumbers returns number types `UIFN`, `SHARED`,
    #   `THIRD_PARTY_TF`, and `THIRD_PARTY_DID`, it incorrectly lists them
    #   as `TOLL_FREE` or `DID`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html
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
    #   traffic distribution groups that phone number inbound traffic is
    #   routed through.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance that phone numbers are
    #   claimed to. You can [find the instance ID][1] in the Amazon Resource
    #   Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #   @return [String]
    #
    # @!attribute [rw] phone_number_description
    #   The description of the phone number.
    #   @return [String]
    #
    # @!attribute [rw] source_phone_number_arn
    #   The claimed phone number ARN that was previously imported from the
    #   external service, such as Amazon Pinpoint. If it is from Amazon
    #   Pinpoint, it looks like the ARN of the phone number that was
    #   imported from Amazon Pinpoint.
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
      :target_arn,
      :instance_id,
      :phone_number_description,
      :source_phone_number_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) for Amazon Connect instances or
    #   traffic distribution groups that phone number inbound traffic is
    #   routed through. If both `TargetArn` and `InstanceId` input are not
    #   provided, this API lists numbers claimed to all the Amazon Connect
    #   instances belonging to your account in the same Amazon Web Services
    #   Region as the request.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance that phone numbers are
    #   claimed to. You can [find the instance ID][1] in the Amazon Resource
    #   Name (ARN) of the instance. If both `TargetArn` and `InstanceId` are
    #   not provided, this API lists numbers claimed to all the Amazon
    #   Connect instances belonging to your account in the same AWS Region
    #   as the request.
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
      :instance_id,
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN) of the instance.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListPredefinedAttributesRequest AWS API Documentation
    #
    class ListPredefinedAttributesRequest < Struct.new(
      :instance_id,
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
    # @!attribute [rw] predefined_attribute_summary_list
    #   Summary of the predefined attributes.
    #   @return [Array<Types::PredefinedAttributeSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListPredefinedAttributesResponse AWS API Documentation
    #
    class ListPredefinedAttributesResponse < Struct.new(
      :next_token,
      :predefined_attribute_summary_list)
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
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListQueueQuickConnectsResponse AWS API Documentation
    #
    class ListQueueQuickConnectsResponse < Struct.new(
      :next_token,
      :quick_connect_summary_list,
      :last_modified_time,
      :last_modified_region)
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
    #   The type of quick connect. In the Amazon Connect admin website, when
    #   you create a quick connect, you are prompted to assign one of the
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
    # @!attribute [rw] contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
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
    # @!attribute [rw] output_type
    #   The Contact Lens output type to be returned.
    #   @return [String]
    #
    # @!attribute [rw] segment_types
    #   Enum with segment types . Each value corresponds to a segment type
    #   returned in the segments list of the API. Each segment type has its
    #   own structure. Different channels may have different sets of
    #   supported segment types.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListRealtimeContactAnalysisSegmentsV2Request AWS API Documentation
    #
    class ListRealtimeContactAnalysisSegmentsV2Request < Struct.new(
      :instance_id,
      :contact_id,
      :max_results,
      :next_token,
      :output_type,
      :segment_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel
    #   The channel of the contact. `Voice` will not be returned.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of real-time contact analysis.
    #   @return [String]
    #
    # @!attribute [rw] segments
    #   An analyzed transcript or category.
    #   @return [Array<Types::RealtimeContactAnalysisSegment>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListRealtimeContactAnalysisSegmentsV2Response AWS API Documentation
    #
    class ListRealtimeContactAnalysisSegmentsV2Response < Struct.new(
      :channel,
      :status,
      :segments,
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
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListRoutingProfileQueuesResponse AWS API Documentation
    #
    class ListRoutingProfileQueuesResponse < Struct.new(
      :next_token,
      :routing_profile_queue_config_summary_list,
      :last_modified_time,
      :last_modified_region)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListSecurityProfileApplicationsRequest AWS API Documentation
    #
    class ListSecurityProfileApplicationsRequest < Struct.new(
      :security_profile_id,
      :instance_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] applications
    #   This API is in preview release for Amazon Connect and is subject to
    #   change.
    #
    #   A list of the third-party application's metadata.
    #   @return [Array<Types::Application>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListSecurityProfileApplicationsResponse AWS API Documentation
    #
    class ListSecurityProfileApplicationsResponse < Struct.new(
      :applications,
      :next_token,
      :last_modified_time,
      :last_modified_region)
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
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListSecurityProfilePermissionsResponse AWS API Documentation
    #
    class ListSecurityProfilePermissionsResponse < Struct.new(
      :permissions,
      :next_token,
      :last_modified_time,
      :last_modified_region)
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

    # @!attribute [rw] traffic_distribution_group_id
    #   The identifier of the traffic distribution group. This can be the ID
    #   or the ARN if the API is being called in the Region where the
    #   traffic distribution group was created. The ARN must be provided if
    #   the call is from the replicated Region.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListTrafficDistributionGroupUsersRequest AWS API Documentation
    #
    class ListTrafficDistributionGroupUsersRequest < Struct.new(
      :traffic_distribution_group_id,
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
    # @!attribute [rw] traffic_distribution_group_user_summary_list
    #   A list of traffic distribution group users.
    #   @return [Array<Types::TrafficDistributionGroupUserSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListTrafficDistributionGroupUsersResponse AWS API Documentation
    #
    class ListTrafficDistributionGroupUsersResponse < Struct.new(
      :next_token,
      :traffic_distribution_group_user_summary_list)
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN) of the instance.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user account.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUserProficienciesRequest AWS API Documentation
    #
    class ListUserProficienciesRequest < Struct.new(
      :instance_id,
      :user_id,
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
    # @!attribute [rw] user_proficiency_list
    #   Information about the user proficiencies.
    #   @return [Array<Types::UserProficiency>]
    #
    # @!attribute [rw] last_modified_time
    #   The last time that the user's proficiencies are were modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The region in which a user's proficiencies were last modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUserProficienciesResponse AWS API Documentation
    #
    class ListUserProficienciesResponse < Struct.new(
      :next_token,
      :user_proficiency_list,
      :last_modified_time,
      :last_modified_region)
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] view_id
    #   The identifier of the view. Both `ViewArn` and `ViewId` can be used.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListViewVersionsRequest AWS API Documentation
    #
    class ListViewVersionsRequest < Struct.new(
      :instance_id,
      :view_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] view_version_summary_list
    #   A list of view version summaries.
    #   @return [Array<Types::ViewVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListViewVersionsResponse AWS API Documentation
    #
    class ListViewVersionsResponse < Struct.new(
      :view_version_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the view.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListViewsRequest AWS API Documentation
    #
    class ListViewsRequest < Struct.new(
      :instance_id,
      :type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] views_summary_list
    #   A list of view summaries.
    #   @return [Array<Types::ViewSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListViewsResponse AWS API Documentation
    #
    class ListViewsResponse < Struct.new(
      :views_summary_list,
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

    # A set of endpoints used by clients to connect to the media service
    # group for an Amazon Chime SDK meeting.
    #
    # @!attribute [rw] audio_host_url
    #   The audio host URL.
    #   @return [String]
    #
    # @!attribute [rw] audio_fallback_url
    #   The audio fallback URL.
    #   @return [String]
    #
    # @!attribute [rw] signaling_url
    #   The signaling URL.
    #   @return [String]
    #
    # @!attribute [rw] turn_control_url
    #   The turn control URL.
    #   @return [String]
    #
    # @!attribute [rw] event_ingestion_url
    #   The event ingestion URL to which you send client meeting events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/MediaPlacement AWS API Documentation
    #
    class MediaPlacement < Struct.new(
      :audio_host_url,
      :audio_fallback_url,
      :signaling_url,
      :turn_control_url,
      :event_ingestion_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # A meeting created using the Amazon Chime SDK.
    #
    # @!attribute [rw] media_region
    #   The Amazon Web Services Region in which you create the meeting.
    #   @return [String]
    #
    # @!attribute [rw] media_placement
    #   The media placement for the meeting.
    #   @return [Types::MediaPlacement]
    #
    # @!attribute [rw] meeting_features
    #   The configuration settings of the features available to a meeting.
    #   @return [Types::MeetingFeaturesConfiguration]
    #
    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Meeting AWS API Documentation
    #
    class Meeting < Struct.new(
      :media_region,
      :media_placement,
      :meeting_features,
      :meeting_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration settings of the features available to a meeting.
    #
    # @!attribute [rw] audio
    #   The configuration settings for the audio features available to a
    #   meeting.
    #   @return [Types::AudioFeatures]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/MeetingFeaturesConfiguration AWS API Documentation
    #
    class MeetingFeaturesConfiguration < Struct.new(
      :audio)
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
    # @!attribute [rw] negate
    #   The flag to use to filter on requested metric filter values or to
    #   not filter on requested metric filter values. By default the negate
    #   is `false`, which indicates to filter on the requested metric
    #   filter.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/MetricFilterV2 AWS API Documentation
    #
    class MetricFilterV2 < Struct.new(
      :metric_filter_key,
      :metric_filter_values,
      :negate)
      SENSITIVE = []
      include Aws::Structure
    end

    # The interval period with the start and end time for the metrics.
    #
    # @!attribute [rw] interval
    #   The interval period provided in the API request.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp, in UNIX Epoch time format. Start time is based on the
    #   interval period selected.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The timestamp, in UNIX Epoch time format. End time is based on the
    #   interval period selected. For example, If `IntervalPeriod` is
    #   selected `THIRTY_MIN`, `StartTime` and `EndTime` in the API request
    #   differs by 1 day, then 48 results are returned in the response. Each
    #   result is aggregated by the 30 minutes period, with each `StartTime`
    #   and `EndTime` differing by 30 minutes.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/MetricInterval AWS API Documentation
    #
    class MetricInterval < Struct.new(
      :interval,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the metric results.
    #
    # @!attribute [rw] dimensions
    #   The dimension for the metrics.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] metric_interval
    #   The interval period with the start and end time for the metrics.
    #   @return [Types::MetricInterval]
    #
    # @!attribute [rw] collections
    #   The set of metrics.
    #   @return [Array<Types::MetricDataV2>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/MetricResultV2 AWS API Documentation
    #
    class MetricResultV2 < Struct.new(
      :dimensions,
      :metric_interval,
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
    #   monitoring to barge. AllowedMonitorCapabilities is required if barge
    #   is enabled.
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

    # Payload of chat properties to apply when starting a new contact.
    #
    # @!attribute [rw] supported_messaging_content_types
    #   The supported chat message content types. Supported types are
    #   `text/plain`, `text/markdown`, `application/json`,
    #   `application/vnd.amazonaws.connect.message.interactive`, and
    #   `application/vnd.amazonaws.connect.message.interactive.response`.
    #
    #   Content types must always contain ` text/plain`. You can then put
    #   any other supported type in the list. For example, all the following
    #   lists are valid because they contain `text/plain`: `[text/plain,
    #   text/markdown, application/json]`, ` [text/markdown, text/plain]`,
    #   `[text/plain, application/json,
    #   application/vnd.amazonaws.connect.message.interactive.response]`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] participant_details
    #   The customer's details.
    #   @return [Types::ParticipantDetails]
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
    # @!attribute [rw] streaming_configuration
    #   The streaming configuration, such as the Amazon SNS streaming
    #   endpoint.
    #   @return [Types::ChatStreamingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/NewSessionDetails AWS API Documentation
    #
    class NewSessionDetails < Struct.new(
      :supported_messaging_content_types,
      :participant_details,
      :attributes,
      :streaming_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The type of notification recipient.
    #
    # @!attribute [rw] user_tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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

    # Thrown for analyzed content when requested OutputType was not enabled
    # for a given contact. For example, if an OutputType.Raw was requested
    # for a contact that had `RedactedOnly` Redaction policy set in
    # Contact flow.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/OutputTypeNotFoundException AWS API Documentation
    #
    class OutputTypeNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for the allowed capabilities for participants
    # present over the call.
    #
    # @!attribute [rw] video
    #   The configuration having the video sharing capabilities for
    #   participants over the call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ParticipantCapabilities AWS API Documentation
    #
    class ParticipantCapabilities < Struct.new(
      :video)
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

    # @!attribute [rw] contact_id
    #   The identifier of the contact.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   `instanceId` in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/PauseContactRequest AWS API Documentation
    #
    class PauseContactRequest < Struct.new(
      :contact_id,
      :instance_id,
      :contact_flow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/PauseContactResponse AWS API Documentation
    #
    class PauseContactResponse < Aws::EmptyStructure; end

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
    # * `CLAIMED` means the previous [ClaimPhoneNumber][1] or
    #   [UpdatePhoneNumber][2] operation succeeded.
    #
    # * `IN_PROGRESS` means a [ClaimPhoneNumber][1], [UpdatePhoneNumber][2],
    #   or [UpdatePhoneNumberMetadata][3] operation is still in progress and
    #   has not yet completed. You can call [DescribePhoneNumber][4] at a
    #   later time to verify if the previous operation has completed.
    #
    # * `FAILED` indicates that the previous [ClaimPhoneNumber][1] or
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
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_ClaimPhoneNumber.html
    # [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdatePhoneNumber.html
    # [3]: https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdatePhoneNumberMetadata.html
    # [4]: https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html
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

    # Information about a predefined attribute.
    #
    # @!attribute [rw] name
    #   The name of the predefined attribute.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values of the predefined attribute.
    #   @return [Types::PredefinedAttributeValues]
    #
    # @!attribute [rw] last_modified_time
    #   Last modified time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   Last modified region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/PredefinedAttribute AWS API Documentation
    #
    class PredefinedAttribute < Struct.new(
      :name,
      :values,
      :last_modified_time,
      :last_modified_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The search criteria to be used to return predefined attributes.
    #
    # @!attribute [rw] or_conditions
    #   A list of conditions which would be applied together with an `OR`
    #   condition.
    #   @return [Array<Types::PredefinedAttributeSearchCriteria>]
    #
    # @!attribute [rw] and_conditions
    #   A list of conditions which would be applied together with an `AND`
    #   condition.
    #   @return [Array<Types::PredefinedAttributeSearchCriteria>]
    #
    # @!attribute [rw] string_condition
    #   A leaf node condition which can be used to specify a string
    #   condition.
    #
    #   <note markdown="1"> The currently supported values for `FieldName` are `name` and
    #   `description`.
    #
    #    </note>
    #   @return [Types::StringCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/PredefinedAttributeSearchCriteria AWS API Documentation
    #
    class PredefinedAttributeSearchCriteria < Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of a predefined attribute.
    #
    # @!attribute [rw] name
    #   The name of the predefined attribute.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   Last modified time.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   Last modified region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/PredefinedAttributeSummary AWS API Documentation
    #
    class PredefinedAttributeSummary < Struct.new(
      :name,
      :last_modified_time,
      :last_modified_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about values of a predefined attribute.
    #
    # @note PredefinedAttributeValues is a union - when making an API calls you must set exactly one of the members.
    #
    # @note PredefinedAttributeValues is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PredefinedAttributeValues corresponding to the set member.
    #
    # @!attribute [rw] string_list
    #   Predefined attribute values of type string list.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/PredefinedAttributeValues AWS API Documentation
    #
    class PredefinedAttributeValues < Struct.new(
      :string_list,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class StringList < PredefinedAttributeValues; end
      class Unknown < PredefinedAttributeValues; end
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Prompt AWS API Documentation
    #
    class Prompt < Struct.new(
      :prompt_arn,
      :prompt_id,
      :name,
      :description,
      :tags,
      :last_modified_time,
      :last_modified_region)
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
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/PromptSummary AWS API Documentation
    #
    class PromptSummary < Struct.new(
      :id,
      :arn,
      :name,
      :last_modified_time,
      :last_modified_region)
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
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
      :tags,
      :last_modified_time,
      :last_modified_region)
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
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/QueueSummary AWS API Documentation
    #
    class QueueSummary < Struct.new(
      :id,
      :arn,
      :name,
      :queue_type,
      :last_modified_time,
      :last_modified_region)
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/QuickConnect AWS API Documentation
    #
    class QuickConnect < Struct.new(
      :quick_connect_arn,
      :quick_connect_id,
      :name,
      :description,
      :quick_connect_config,
      :tags,
      :last_modified_time,
      :last_modified_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration settings for a quick connect.
    #
    # @!attribute [rw] quick_connect_type
    #   The type of quick connect. In the Amazon Connect admin website, when
    #   you create a quick connect, you are prompted to assign one of the
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
    #   The type of quick connect. In the Amazon Connect admin website, when
    #   you create a quick connect, you are prompted to assign one of the
    #   following types: Agent (USER), External (PHONE\_NUMBER), or Queue
    #   (QUEUE).
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/QuickConnectSummary AWS API Documentation
    #
    class QuickConnectSummary < Struct.new(
      :id,
      :arn,
      :name,
      :quick_connect_type,
      :last_modified_time,
      :last_modified_region)
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

    # Object that describes attached file.
    #
    # @!attribute [rw] attachment_name
    #   A case-sensitive name of the attachment being uploaded. Can be
    #   redacted.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   Describes the MIME file type of the attachment. For a list of
    #   supported file types, see [Feature specifications][1] in the *Amazon
    #   Connect Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/feature-limits.html
    #   @return [String]
    #
    # @!attribute [rw] attachment_id
    #   A unique identifier for the attachment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RealTimeContactAnalysisAttachment AWS API Documentation
    #
    class RealTimeContactAnalysisAttachment < Struct.new(
      :attachment_name,
      :content_type,
      :attachment_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the category rule that was matched.
    #
    # @!attribute [rw] points_of_interest
    #   List of PointOfInterest - objects describing a single match of a
    #   rule.
    #   @return [Array<Types::RealTimeContactAnalysisPointOfInterest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RealTimeContactAnalysisCategoryDetails AWS API Documentation
    #
    class RealTimeContactAnalysisCategoryDetails < Struct.new(
      :points_of_interest)
      SENSITIVE = []
      include Aws::Structure
    end

    # Begin and end offsets for a part of text.
    #
    # @!attribute [rw] begin_offset_char
    #   The beginning of the character interval.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset_char
    #   The end of the character interval.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RealTimeContactAnalysisCharacterInterval AWS API Documentation
    #
    class RealTimeContactAnalysisCharacterInterval < Struct.new(
      :begin_offset_char,
      :end_offset_char)
      SENSITIVE = []
      include Aws::Structure
    end

    # Potential issues that are detected based on an artificial intelligence
    # analysis of each turn in the conversation.
    #
    # @!attribute [rw] transcript_items
    #   List of the transcript items (segments) that are associated with a
    #   given issue.
    #   @return [Array<Types::RealTimeContactAnalysisTranscriptItemWithContent>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RealTimeContactAnalysisIssueDetected AWS API Documentation
    #
    class RealTimeContactAnalysisIssueDetected < Struct.new(
      :transcript_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The section of the contact transcript segment that category rule was
    # detected.
    #
    # @!attribute [rw] transcript_items
    #   List of the transcript items (segments) that are associated with a
    #   given point of interest.
    #   @return [Array<Types::RealTimeContactAnalysisTranscriptItemWithCharacterOffsets>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RealTimeContactAnalysisPointOfInterest AWS API Documentation
    #
    class RealTimeContactAnalysisPointOfInterest < Struct.new(
      :transcript_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Segment containing list of attachments.
    #
    # @!attribute [rw] id
    #   The identifier of the segment.
    #   @return [String]
    #
    # @!attribute [rw] participant_id
    #   The identifier of the participant.
    #   @return [String]
    #
    # @!attribute [rw] participant_role
    #   The role of the participant. For example, is it a customer, agent,
    #   or system.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the participant. Can be redacted.
    #   @return [String]
    #
    # @!attribute [rw] attachments
    #   List of objects describing an individual attachment.
    #   @return [Array<Types::RealTimeContactAnalysisAttachment>]
    #
    # @!attribute [rw] time
    #   Field describing the time of the event. It can have different
    #   representations of time.
    #   @return [Types::RealTimeContactAnalysisTimeData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RealTimeContactAnalysisSegmentAttachments AWS API Documentation
    #
    class RealTimeContactAnalysisSegmentAttachments < Struct.new(
      :id,
      :participant_id,
      :participant_role,
      :display_name,
      :attachments,
      :time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The matched category rules.
    #
    # @!attribute [rw] matched_details
    #   Map between the name of the matched rule and
    #   RealTimeContactAnalysisCategoryDetails.
    #   @return [Hash<String,Types::RealTimeContactAnalysisCategoryDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RealTimeContactAnalysisSegmentCategories AWS API Documentation
    #
    class RealTimeContactAnalysisSegmentCategories < Struct.new(
      :matched_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Segment type describing a contact event.
    #
    # @!attribute [rw] id
    #   The identifier of the contact event.
    #   @return [String]
    #
    # @!attribute [rw] participant_id
    #   The identifier of the participant.
    #   @return [String]
    #
    # @!attribute [rw] participant_role
    #   The role of the participant. For example, is it a customer, agent,
    #   or system.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the participant. Can be redacted.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   Type of the event. For example,
    #   `application/vnd.amazonaws.connect.event.participant.left`.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   Field describing the time of the event. It can have different
    #   representations of time.
    #   @return [Types::RealTimeContactAnalysisTimeData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RealTimeContactAnalysisSegmentEvent AWS API Documentation
    #
    class RealTimeContactAnalysisSegmentEvent < Struct.new(
      :id,
      :participant_id,
      :participant_role,
      :display_name,
      :event_type,
      :time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Segment type containing a list of detected issues.
    #
    # @!attribute [rw] issues_detected
    #   List of the issues detected.
    #   @return [Array<Types::RealTimeContactAnalysisIssueDetected>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RealTimeContactAnalysisSegmentIssues AWS API Documentation
    #
    class RealTimeContactAnalysisSegmentIssues < Struct.new(
      :issues_detected)
      SENSITIVE = []
      include Aws::Structure
    end

    # The analyzed transcript segment.
    #
    # @!attribute [rw] id
    #   The identifier of the transcript.
    #   @return [String]
    #
    # @!attribute [rw] participant_id
    #   The identifier of the participant.
    #   @return [String]
    #
    # @!attribute [rw] participant_role
    #   The role of the participant. For example, is it a customer, agent,
    #   or system.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the participant.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the transcript. Can be redacted.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The type of content of the item. For example, `text/plain`.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   Field describing the time of the event. It can have different
    #   representations of time.
    #   @return [Types::RealTimeContactAnalysisTimeData]
    #
    # @!attribute [rw] redaction
    #   Object describing redaction that was applied to the transcript. If
    #   transcript has the field it means part of the transcript was
    #   redacted.
    #   @return [Types::RealTimeContactAnalysisTranscriptItemRedaction]
    #
    # @!attribute [rw] sentiment
    #   The sentiment detected for this piece of transcript.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RealTimeContactAnalysisSegmentTranscript AWS API Documentation
    #
    class RealTimeContactAnalysisSegmentTranscript < Struct.new(
      :id,
      :participant_id,
      :participant_role,
      :display_name,
      :content,
      :content_type,
      :time,
      :redaction,
      :sentiment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object describing time with which the segment is associated. It can
    # have different representations of time. Currently supported:
    # absoluteTime
    #
    # @note RealTimeContactAnalysisTimeData is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RealTimeContactAnalysisTimeData corresponding to the set member.
    #
    # @!attribute [rw] absolute_time
    #   Time represented in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For
    #   example, 2019-11-08T02:41:28.172Z.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RealTimeContactAnalysisTimeData AWS API Documentation
    #
    class RealTimeContactAnalysisTimeData < Struct.new(
      :absolute_time,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AbsoluteTime < RealTimeContactAnalysisTimeData; end
      class Unknown < RealTimeContactAnalysisTimeData; end
    end

    # Object describing redaction applied to the segment.
    #
    # @!attribute [rw] character_offsets
    #   List of character intervals each describing a part of the text that
    #   was redacted. For `OutputType.Raw`, part of the original text that
    #   contains data that can be redacted. For ` OutputType.Redacted`, part
    #   of the string with redaction tag.
    #   @return [Array<Types::RealTimeContactAnalysisCharacterInterval>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RealTimeContactAnalysisTranscriptItemRedaction AWS API Documentation
    #
    class RealTimeContactAnalysisTranscriptItemRedaction < Struct.new(
      :character_offsets)
      SENSITIVE = []
      include Aws::Structure
    end

    # Transcript representation containing Id and list of character
    # intervals that are associated with analysis data. For example, this
    # object within a `RealTimeContactAnalysisPointOfInterest` in
    # `Category.MatchedDetails` would have character interval describing
    # part of the text that matched category.
    #
    # @!attribute [rw] id
    #   Transcript identifier. Matches the identifier from one of the
    #   TranscriptSegments.
    #   @return [String]
    #
    # @!attribute [rw] character_offsets
    #   List of character intervals within transcript content/text.
    #   @return [Types::RealTimeContactAnalysisCharacterInterval]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RealTimeContactAnalysisTranscriptItemWithCharacterOffsets AWS API Documentation
    #
    class RealTimeContactAnalysisTranscriptItemWithCharacterOffsets < Struct.new(
      :id,
      :character_offsets)
      SENSITIVE = []
      include Aws::Structure
    end

    # Transcript representation containing Id, Content and list of character
    # intervals that are associated with analysis data. For example, this
    # object within an issue detected would describe both content that
    # contains identified issue and intervals where that content is taken
    # from.
    #
    # @!attribute [rw] content
    #   Part of the transcript content that contains identified issue. Can
    #   be redacted
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Transcript identifier. Matches the identifier from one of the
    #   TranscriptSegments.
    #   @return [String]
    #
    # @!attribute [rw] character_offsets
    #   Begin and end offsets for a part of text.
    #   @return [Types::RealTimeContactAnalysisCharacterInterval]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RealTimeContactAnalysisTranscriptItemWithContent AWS API Documentation
    #
    class RealTimeContactAnalysisTranscriptItemWithContent < Struct.new(
      :content,
      :id,
      :character_offsets)
      SENSITIVE = []
      include Aws::Structure
    end

    # An analyzed segment for a real-time analysis session.
    #
    # @note RealtimeContactAnalysisSegment is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RealtimeContactAnalysisSegment corresponding to the set member.
    #
    # @!attribute [rw] transcript
    #   The analyzed transcript segment.
    #   @return [Types::RealTimeContactAnalysisSegmentTranscript]
    #
    # @!attribute [rw] categories
    #   The matched category rules.
    #   @return [Types::RealTimeContactAnalysisSegmentCategories]
    #
    # @!attribute [rw] issues
    #   Segment type containing a list of detected issues.
    #   @return [Types::RealTimeContactAnalysisSegmentIssues]
    #
    # @!attribute [rw] event
    #   Segment type describing a contact event.
    #   @return [Types::RealTimeContactAnalysisSegmentEvent]
    #
    # @!attribute [rw] attachments
    #   The analyzed attachments.
    #   @return [Types::RealTimeContactAnalysisSegmentAttachments]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RealtimeContactAnalysisSegment AWS API Documentation
    #
    class RealtimeContactAnalysisSegment < Struct.new(
      :transcript,
      :categories,
      :issues,
      :event,
      :attachments,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Transcript < RealtimeContactAnalysisSegment; end
      class Categories < RealtimeContactAnalysisSegment; end
      class Issues < RealtimeContactAnalysisSegment; end
      class Event < RealtimeContactAnalysisSegment; end
      class Attachments < RealtimeContactAnalysisSegment; end
      class Unknown < RealtimeContactAnalysisSegment; end
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

    # @!attribute [rw] contact_id
    #   The identifier of the contact.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   `instanceId` in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ResumeContactRequest AWS API Documentation
    #
    class ResumeContactRequest < Struct.new(
      :contact_id,
      :instance_id,
      :contact_flow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ResumeContactResponse AWS API Documentation
    #
    class ResumeContactResponse < Aws::EmptyStructure; end

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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    # @!attribute [rw] agent_availability_timer
    #   Whether agents with this routing profile will have their routing
    #   order calculated based on *time since their last inbound contact* or
    #   *longest idle time*.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
    #
    # @!attribute [rw] is_default
    #   Whether this a default routing profile.
    #   @return [Boolean]
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
      :number_of_associated_users,
      :agent_availability_timer,
      :last_modified_time,
      :last_modified_region,
      :is_default)
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
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RoutingProfileSummary AWS API Documentation
    #
    class RoutingProfileSummary < Struct.new(
      :id,
      :arn,
      :name,
      :last_modified_time,
      :last_modified_region)
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    #
    #   Supported only for `TriggerEventSource` values:
    #   `OnPostCallAnalysisAvailable` \| `OnRealTimeCallAnalysisAvailable`
    #   \| `OnRealTimeChatAnalysisAvailable` \|
    #   `OnPostChatAnalysisAvailable` \| `OnContactEvaluationSubmit` \|
    #   `OnMetricDataUpdate`
    #   @return [Types::EventBridgeActionDefinition]
    #
    # @!attribute [rw] assign_contact_category_action
    #   Information about the contact category action.
    #
    #   Supported only for `TriggerEventSource` values:
    #   `OnPostCallAnalysisAvailable` \| `OnRealTimeCallAnalysisAvailable`
    #   \| `OnRealTimeChatAnalysisAvailable` \|
    #   `OnPostChatAnalysisAvailable` \| `OnZendeskTicketCreate` \|
    #   `OnZendeskTicketStatusUpdate` \| `OnSalesforceCaseCreate`
    #   @return [Types::AssignContactCategoryActionDefinition]
    #
    # @!attribute [rw] send_notification_action
    #   Information about the send notification action.
    #
    #   Supported only for `TriggerEventSource` values:
    #   `OnPostCallAnalysisAvailable` \| `OnRealTimeCallAnalysisAvailable`
    #   \| `OnRealTimeChatAnalysisAvailable` \|
    #   `OnPostChatAnalysisAvailable` \| `OnContactEvaluationSubmit` \|
    #   `OnMetricDataUpdate`
    #   @return [Types::SendNotificationActionDefinition]
    #
    # @!attribute [rw] create_case_action
    #   Information about the create case action.
    #
    #   Supported only for `TriggerEventSource` values:
    #   `OnPostCallAnalysisAvailable` \| `OnPostChatAnalysisAvailable`.
    #   @return [Types::CreateCaseActionDefinition]
    #
    # @!attribute [rw] update_case_action
    #   Information about the update case action.
    #
    #   Supported only for `TriggerEventSource` values: `OnCaseCreate` \|
    #   `OnCaseUpdate`.
    #   @return [Types::UpdateCaseActionDefinition]
    #
    # @!attribute [rw] end_associated_tasks_action
    #   Information about the end associated tasks action.
    #
    #   Supported only for `TriggerEventSource` values: `OnCaseUpdate`.
    #   @return [Types::EndAssociatedTasksActionDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RuleAction AWS API Documentation
    #
    class RuleAction < Struct.new(
      :action_type,
      :task_action,
      :event_bridge_action,
      :assign_contact_category_action,
      :send_notification_action,
      :create_case_action,
      :update_case_action,
      :end_associated_tasks_action)
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
    # `OnSalesforceCaseCreate` \| `OnContactEvaluationSubmit` \|
    # `OnMetricDataUpdate`.
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
    #   traffic distribution groups that phone number inbound traffic is
    #   routed through. You must enter `InstanceId` or `TargetArn`.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance that phone numbers are
    #   claimed to. You can [find the instance ID][1] in the Amazon Resource
    #   Name (ARN) of the instance. You must enter `InstanceId` or
    #   `TargetArn`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
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
      :instance_id,
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
    #   The identifier of Amazon Connect instance. You can find the instance
    #   ID in the Amazon Resource Name (ARN) of the instance.
    #   @return [String]
    #
    # @!attribute [rw] time_range
    #   Time range that you want to search results.
    #   @return [Types::SearchContactsTimeRange]
    #
    # @!attribute [rw] search_criteria
    #   The search criteria to be used to return contacts.
    #   @return [Types::SearchCriteria]
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
    # @!attribute [rw] sort
    #   Specifies a field to sort by and a sort order.
    #   @return [Types::Sort]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchContactsRequest AWS API Documentation
    #
    class SearchContactsRequest < Struct.new(
      :instance_id,
      :time_range,
      :search_criteria,
      :max_results,
      :next_token,
      :sort)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contacts
    #   Information about the contacts.
    #   @return [Array<Types::ContactSearchSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] total_count
    #   The total number of contacts which matched your search query.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchContactsResponse AWS API Documentation
    #
    class SearchContactsResponse < Struct.new(
      :contacts,
      :next_token,
      :total_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure of time range that you want to search results.
    #
    # @!attribute [rw] type
    #   The type of timestamp to search.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the time range.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the time range.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchContactsTimeRange AWS API Documentation
    #
    class SearchContactsTimeRange < Struct.new(
      :type,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure of search criteria to be used to return contacts.
    #
    # @!attribute [rw] agent_ids
    #   The identifiers of agents who handled the contacts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] agent_hierarchy_groups
    #   The agent hierarchy groups of the agent at the time of handling the
    #   contact.
    #   @return [Types::AgentHierarchyGroups]
    #
    # @!attribute [rw] channels
    #   The list of channels associated with contacts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] contact_analysis
    #   Search criteria based on analysis outputs from Amazon Connect
    #   Contact Lens.
    #   @return [Types::ContactAnalysis]
    #
    # @!attribute [rw] initiation_methods
    #   The list of initiation methods associated with contacts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] queue_ids
    #   The list of queue IDs associated with contacts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] searchable_contact_attributes
    #   The search criteria based on user-defined contact attributes that
    #   have been configured for contact search. For more information, see
    #   [Search by customer contact attributes][1] in the *Amazon Connect
    #   Administrator Guide*.
    #
    #   To use `SearchableContactAttributes` in a search request, the
    #   `GetContactAttributes` action is required to perform an API request.
    #   For more information, see
    #   [https://docs.aws.amazon.com/service-authorization/latest/reference/list\_amazonconnect.html#amazonconnect-actions-as-permissions][2]Actions
    #   defined by Amazon Connect.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/search-custom-attributes.html
    #   [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonconnect.html#amazonconnect-actions-as-permissions
    #   @return [Types::SearchableContactAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchCriteria AWS API Documentation
    #
    class SearchCriteria < Struct.new(
      :agent_ids,
      :agent_hierarchy_groups,
      :channels,
      :contact_analysis,
      :initiation_methods,
      :queue_ids,
      :searchable_contact_attributes)
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN) of the instance.
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
    #   The search criteria to be used to return predefined attributes.
    #   @return [Types::PredefinedAttributeSearchCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchPredefinedAttributesRequest AWS API Documentation
    #
    class SearchPredefinedAttributesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :search_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] predefined_attributes
    #   Predefined attributes matched by the search criteria.
    #   @return [Array<Types::PredefinedAttribute>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] approximate_total_count
    #   The approximate number of predefined attributes which matched your
    #   search query.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchPredefinedAttributesResponse AWS API Documentation
    #
    class SearchPredefinedAttributesResponse < Struct.new(
      :predefined_attributes,
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
    #   <note markdown="1"> InstanceID is a required field. The "Required: No" below is
    #   incorrect.
    #
    #    </note>
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

    # A structure that defines search criteria based on user-defined contact
    # attributes that are configured for contact search.
    #
    # @!attribute [rw] criteria
    #   The list of criteria based on user-defined contact attributes that
    #   are configured for contact search.
    #   @return [Array<Types::SearchableContactAttributesCriteria>]
    #
    # @!attribute [rw] match_type
    #   The match type combining search criteria using multiple searchable
    #   contact attributes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchableContactAttributes AWS API Documentation
    #
    class SearchableContactAttributes < Struct.new(
      :criteria,
      :match_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The search criteria based on user-defned contact attribute key and
    # values to search on.
    #
    # @!attribute [rw] key
    #   The key containing a searchable user-defined contact attribute.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The list of values to search for within a user-defined contact
    #   attribute.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchableContactAttributesCriteria AWS API Documentation
    #
    class SearchableContactAttributesCriteria < Struct.new(
      :key,
      :values)
      SENSITIVE = [:key]
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
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
      :tag_restricted_resources,
      :last_modified_time,
      :last_modified_region)
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
    #
    #   <note markdown="1"> The currently supported values for `FieldName` are `name` and
    #   `description`.
    #
    #    </note>
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SecurityProfileSummary AWS API Documentation
    #
    class SecurityProfileSummary < Struct.new(
      :id,
      :arn,
      :name,
      :last_modified_time,
      :last_modified_region)
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

    # A value for a segment attribute. This is structured as a map where the
    # key is `valueString` and the value is a string.
    #
    # @!attribute [rw] value_string
    #   The value of a segment attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SegmentAttributeValue AWS API Documentation
    #
    class SegmentAttributeValue < Struct.new(
      :value_string)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_id
    #   External identifier of chat customer participant, used in part to
    #   uniquely identify a chat. For SMS, this is the E164 phone number of
    #   the chat customer participant.
    #   @return [String]
    #
    # @!attribute [rw] destination_id
    #   Chat system identifier, used in part to uniquely identify chat. This
    #   is associated with the Amazon Connect instance and flow to be used
    #   to start chats. For SMS, this is the phone number destination of
    #   inbound SMS messages represented by an Amazon Pinpoint phone number
    #   ARN.
    #   @return [String]
    #
    # @!attribute [rw] subtype
    #   Classification of a channel. This is used in part to uniquely
    #   identify chat.
    #
    #   Valid value: `["connect:sms"]`
    #   @return [String]
    #
    # @!attribute [rw] event
    #   Chat integration event payload
    #   @return [Types::ChatEvent]
    #
    # @!attribute [rw] new_session_details
    #   Contact properties to apply when starting a new chat. If the
    #   integration event is handled with an existing chat, this is ignored.
    #   @return [Types::NewSessionDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SendChatIntegrationEventRequest AWS API Documentation
    #
    class SendChatIntegrationEventRequest < Struct.new(
      :source_id,
      :destination_id,
      :subtype,
      :event,
      :new_session_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] initial_contact_id
    #   Identifier of chat contact used to handle integration event. This
    #   may be null if the integration event is not valid without an already
    #   existing chat contact.
    #   @return [String]
    #
    # @!attribute [rw] new_chat_created
    #   Whether handling the integration event resulted in creating a new
    #   chat or acting on existing chat.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SendChatIntegrationEventResponse AWS API Documentation
    #
    class SendChatIntegrationEventResponse < Struct.new(
      :initial_contact_id,
      :new_chat_created)
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

    # The distribution that determines which Amazon Web Services Regions
    # should be used to sign in agents in to both the instance and its
    # replica(s).
    #
    # @!attribute [rw] distributions
    #   Information about traffic distributions.
    #   @return [Array<Types::SignInDistribution>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SignInConfig AWS API Documentation
    #
    class SignInConfig < Struct.new(
      :distributions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The distribution of sign in traffic between the instance and its
    # replica(s).
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region of the sign in distribution.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Whether sign in distribution is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SignInDistribution AWS API Documentation
    #
    class SignInDistribution < Struct.new(
      :region,
      :enabled)
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

    # A structure that defineds the field name to sort by and a sort order.
    #
    # @!attribute [rw] field_name
    #   The name of the field on which to sort.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   An ascending or descending sort.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Sort AWS API Documentation
    #
    class Sort < Struct.new(
      :field_name,
      :order)
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
    #   ContactFlowId in the Amazon Connect admin website, on the navigation
    #   menu go to **Routing**, **Contact Flows**. Choose the flow. On the
    #   flow page, under the name of the flow, choose **Show additional flow
    #   information**. The ContactFlowId is the last part of the ARN, shown
    #   here in bold:
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
    # @!attribute [rw] segment_attributes
    #   A set of system defined key-value pairs stored on individual contact
    #   segments using an attribute map. The attributes are standard Amazon
    #   Connect attributes. They can be accessed in flows.
    #
    #   Attribute keys can include only alphanumeric, -, and \_.
    #
    #   This field can be used to show channel subtype, such as
    #   `connect:Guide`.
    #
    #   <note markdown="1"> The types `application/vnd.amazonaws.connect.message.interactive`
    #   and `application/vnd.amazonaws.connect.message.interactive.response`
    #   must be present in the SupportedMessagingContentTypes field of this
    #   API in order to set `SegmentAttributes` as \\\{` "connect:Subtype":
    #   \{"valueString" : "connect:Guide" \}\}`.
    #
    #    </note>
    #   @return [Hash<String,Types::SegmentAttributeValue>]
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
      :related_contact_id,
      :segment_attributes)
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

    # @!attribute [rw] name
    #   The name of a voice contact that is shown to an agent in the Contact
    #   Control Panel (CCP).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the voice contact that is shown to an agent in the
    #   Contact Control Panel (CCP).
    #   @return [String]
    #
    # @!attribute [rw] references
    #   A formatted URL that is shown to an agent in the Contact Control
    #   Panel (CCP). Contacts can have the following reference types at the
    #   time of creation: `URL` \| `NUMBER` \| `STRING` \| `DATE` \|
    #   `EMAIL`. `ATTACHMENT` is not a supported reference type during voice
    #   contact creation.
    #   @return [Hash<String,Types::Reference>]
    #
    # @!attribute [rw] related_contact_id
    #   The `contactId` that is related to this contact. Linking voice,
    #   task, or chat by using `RelatedContactID` copies over contact
    #   attributes from the related contact to the new contact. All updates
    #   to user-defined attributes in the new contact are limited to the
    #   individual contact ID. There are no limits to the number of contacts
    #   that can be linked by using `RelatedContactId`.
    #   @return [String]
    #
    # @!attribute [rw] destination_phone_number
    #   The phone number of the customer, in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the flow for the outbound call. To see the
    #   ContactFlowId in the Amazon Connect admin website, on the navigation
    #   menu go to **Routing**, **Contact Flows**. Choose the flow. On the
    #   flow page, under the name of the flow, choose **Show additional flow
    #   information**. The ContactFlowId is the last part of the ARN, shown
    #   here in bold:
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
      :name,
      :description,
      :references,
      :related_contact_id,
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
      SENSITIVE = [:name, :description]
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
    #   The identifier of the previous chat, voice, or task contact. Any
    #   updates to user-defined attributes to task contacts linked using the
    #   same `PreviousContactID` will affect every contact in the chain.
    #   There can be a maximum of 12 linked task contacts in a chain.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the flow for initiating the tasks. To see the
    #   ContactFlowId in the Amazon Connect admin website, on the navigation
    #   menu go to **Routing**, **Contact Flows**. Choose the flow. On the
    #   flow page, under the name of the flow, choose **Show additional flow
    #   information**. The ContactFlowId is the last part of the ARN, shown
    #   here in bold:
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
    #   Panel (CCP). Tasks can have the following reference types at the
    #   time of creation: `URL` \| `NUMBER` \| `STRING` \| `DATE` \|
    #   `EMAIL`. `ATTACHMENT` is not a supported reference type during task
    #   creation.
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
    #   A unique identifier for the task template. For more information
    #   about task templates, see [Create task templates][1] in the *Amazon
    #   Connect Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/task-templates.html
    #   @return [String]
    #
    # @!attribute [rw] quick_connect_id
    #   The identifier for the quick connect. Tasks that are created by
    #   using `QuickConnectId` will use the flow that is defined on agent or
    #   queue quick connect. For more information about quick connects, see
    #   [Create quick connects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/quick-connects.html
    #   @return [String]
    #
    # @!attribute [rw] related_contact_id
    #   The contactId that is [related][1] to this contact. Linking tasks
    #   together by using `RelatedContactID` copies over contact attributes
    #   from the related task contact to the new task contact. All updates
    #   to user-defined attributes in the new task contact are limited to
    #   the individual contact ID, unlike what happens when tasks are linked
    #   by using `PreviousContactID`. There are no limits to the number of
    #   contacts that can be linked by using `RelatedContactId`.
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
      SENSITIVE = [:name, :description]
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

    # @!attribute [rw] attributes
    #   A custom key-value pair using an attribute map. The attributes are
    #   standard Amazon Connect attributes, and can be accessed in flows
    #   just like any other contact attributes.
    #
    #   There can be up to 32,768 UTF-8 bytes across all key-value pairs per
    #   contact. Attribute keys can include only alphanumeric, -, and \_
    #   characters.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   The token is valid for 7 days after creation. If a contact is
    #   already started, the contact ID is returned.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier of the flow for the call. To see the ContactFlowId in
    #   the Amazon Connect admin website, on the navigation menu go to
    #   **Routing**, **Contact Flows**. Choose the flow. On the flow page,
    #   under the name of the flow, choose **Show additional flow
    #   information**. The ContactFlowId is the last part of the ARN, shown
    #   here in bold:
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
    # @!attribute [rw] allowed_capabilities
    #   Information about the video sharing capabilities of the participants
    #   (customer, agent).
    #   @return [Types::AllowedCapabilities]
    #
    # @!attribute [rw] participant_details
    #   The customer's details.
    #   @return [Types::ParticipantDetails]
    #
    # @!attribute [rw] related_contact_id
    #   The unique identifier for an Amazon Connect contact. This identifier
    #   is related to the contact starting.
    #   @return [String]
    #
    # @!attribute [rw] references
    #   A formatted URL that is shown to an agent in the Contact Control
    #   Panel (CCP). Tasks can have the following reference types at the
    #   time of creation: `URL` \| `NUMBER` \| `STRING` \| `DATE` \|
    #   `EMAIL`. `ATTACHMENT` is not a supported reference type during task
    #   creation.
    #   @return [Hash<String,Types::Reference>]
    #
    # @!attribute [rw] description
    #   A description of the task that is shown to an agent in the Contact
    #   Control Panel (CCP).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartWebRTCContactRequest AWS API Documentation
    #
    class StartWebRTCContactRequest < Struct.new(
      :attributes,
      :client_token,
      :contact_flow_id,
      :instance_id,
      :allowed_capabilities,
      :participant_details,
      :related_contact_id,
      :references,
      :description)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] connection_data
    #   Information required for the client application (mobile application
    #   or website) to connect to the call.
    #   @return [Types::ConnectionData]
    #
    # @!attribute [rw] contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #   @return [String]
    #
    # @!attribute [rw] participant_id
    #   The identifier for a contact participant. The `ParticipantId` for a
    #   contact participant is the same throughout the contact lifecycle.
    #   @return [String]
    #
    # @!attribute [rw] participant_token
    #   The token used by the contact participant to call the
    #   [CreateParticipantConnection][1] API. The participant token is valid
    #   for the lifetime of a contact participant.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartWebRTCContactResponse AWS API Documentation
    #
    class StartWebRTCContactResponse < Struct.new(
      :connection_data,
      :contact_id,
      :participant_id,
      :participant_token)
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
    # @!attribute [rw] disconnect_reason
    #   The reason a contact can be disconnected. Only Amazon Connect
    #   outbound campaigns can provide this field.
    #   @return [Types::DisconnectReason]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StopContactRequest AWS API Documentation
    #
    class StopContactRequest < Struct.new(
      :contact_id,
      :instance_id,
      :disconnect_reason)
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
    # <note markdown="1"> The currently supported values for `FieldName` are `name` and
    # `description`.
    #
    #  </note>
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

    # Request for which contact was successfully created.
    #
    # @!attribute [rw] request_identifier
    #   Request identifier provided in the API call in the
    #   ContactDataRequest to create a contact.
    #   @return [String]
    #
    # @!attribute [rw] contact_id
    #   The contactId of the contact that was created successfully.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SuccessfulRequest AWS API Documentation
    #
    class SuccessfulRequest < Struct.new(
      :request_identifier,
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

    # @!attribute [rw] contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
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
    #   The tags to be assigned to the contact resource. For example, \\\{
    #   "Tags": \\\{"key1":"value1", "key2":"value2"\\} \\}.
    #
    #   <note markdown="1"> Authorization is not supported by this tag.
    #
    #    </note>
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TagContactRequest AWS API Documentation
    #
    class TagContactRequest < Struct.new(
      :contact_id,
      :instance_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TagContactResponse AWS API Documentation
    #
    class TagContactResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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

    # Displayed when rate-related API limits are exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
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
    #     [UpdateTrafficDistribution][3] operation is still in progress and
    #     has not yet completed.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_CreateTrafficDistributionGroup.html
    #   [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteTrafficDistributionGroup.html
    #   [3]: https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdateTrafficDistribution.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] is_default
    #   Whether this is the default traffic distribution group created
    #   during instance replication. The default traffic distribution group
    #   cannot be deleted by the `DeleteTrafficDistributionGroup` API. The
    #   default traffic distribution group is deleted as part of the process
    #   for deleting a replica.
    #
    #   <note markdown="1"> The `SignInConfig` distribution is available only on a default
    #   `TrafficDistributionGroup` (see the `IsDefault` parameter in the
    #   [TrafficDistributionGroup][1] data type). If you call
    #   `UpdateTrafficDistribution` with a modified `SignInConfig` and a
    #   non-default `TrafficDistributionGroup`, an `InvalidRequestException`
    #   is returned.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_TrafficDistributionGroup.html
    #   @return [Boolean]
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
      :tags,
      :is_default)
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
    # @!attribute [rw] is_default
    #   Whether this is the default traffic distribution group created
    #   during instance replication. The default traffic distribution group
    #   cannot be deleted by the `DeleteTrafficDistributionGroup` API. The
    #   default traffic distribution group is deleted as part of the process
    #   for deleting a replica.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TrafficDistributionGroupSummary AWS API Documentation
    #
    class TrafficDistributionGroupSummary < Struct.new(
      :id,
      :arn,
      :name,
      :instance_arn,
      :status,
      :is_default)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a traffic distribution group user.
    #
    # @!attribute [rw] user_id
    #   The identifier for the user. This can be the ID or the ARN of the
    #   user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TrafficDistributionGroupUserSummary AWS API Documentation
    #
    class TrafficDistributionGroupUserSummary < Struct.new(
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines search criteria and matching logic to search
    # for contacts by matching text with transcripts analyzed by Amazon
    # Connect Contact Lens.
    #
    # @!attribute [rw] criteria
    #   The list of search criteria based on Contact Lens conversational
    #   analytics transcript.
    #   @return [Array<Types::TranscriptCriteria>]
    #
    # @!attribute [rw] match_type
    #   The match type combining search criteria using multiple transcript
    #   criteria.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Transcript AWS API Documentation
    #
    class Transcript < Struct.new(
      :criteria,
      :match_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines search criteria base on words or phrases,
    # participants in the Contact Lens conversational analytics transcript.
    #
    # @!attribute [rw] participant_role
    #   The participant role in a transcript
    #   @return [String]
    #
    # @!attribute [rw] search_text
    #   The words or phrases used to search within a transcript.
    #   @return [Array<String>]
    #
    # @!attribute [rw] match_type
    #   The match type combining search criteria using multiple search texts
    #   in a transcript criteria.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TranscriptCriteria AWS API Documentation
    #
    class TranscriptCriteria < Struct.new(
      :participant_role,
      :search_text,
      :match_type)
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
    #   The identifier for the user. This can be the ID or the ARN of the
    #   user.
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

    # @!attribute [rw] contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
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
    # @!attribute [rw] tag_keys
    #   A list of tag keys. Existing tags on the contact whose keys are
    #   members of this list will be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UntagContactRequest AWS API Documentation
    #
    class UntagContactRequest < Struct.new(
      :contact_id,
      :instance_id,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UntagContactResponse AWS API Documentation
    #
    class UntagContactResponse < Aws::EmptyStructure; end

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

    # The `UpdateCase` action definition.
    #
    # @!attribute [rw] fields
    #   An array of objects with `Field ID` and Value data.
    #   @return [Array<Types::FieldValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateCaseActionDefinition AWS API Documentation
    #
    class UpdateCaseActionDefinition < Struct.new(
      :fields)
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
    #   The JSON string that represents the content of the flow. For an
    #   example, see [Example flow in Amazon Connect Flow language][1].
    #
    #   Length Constraints: Minimum length of 1. Maximum length of 256000.
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
    #   The JSON string that represents the content of the flow. For an
    #   example, see [Example flow in Amazon Connect Flow language][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html
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
      SENSITIVE = [:name, :description]
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
    #   The identifier of the contact in this instance of Amazon Connect.
    #   @return [String]
    #
    # @!attribute [rw] queue_time_adjustment_seconds
    #   The number of seconds to add or subtract from the contact's routing
    #   age. Contacts are routed to agents on a first-come, first-serve
    #   basis. This means that changing their amount of time in queue
    #   compared to others also changes their position in queue.
    #   @return [Integer]
    #
    # @!attribute [rw] queue_priority
    #   Priority of the contact in the queue. The default priority for new
    #   contacts is 5. You can raise the priority of a contact compared to
    #   other contacts in the queue by assigning them a higher priority,
    #   such as 1 or 2.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactRoutingDataRequest AWS API Documentation
    #
    class UpdateContactRoutingDataRequest < Struct.new(
      :instance_id,
      :contact_id,
      :queue_time_adjustment_seconds,
      :queue_priority)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactRoutingDataResponse AWS API Documentation
    #
    class UpdateContactRoutingDataResponse < Aws::EmptyStructure; end

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
    #   The Amazon Resource Name (ARN) or resource ID of the phone number.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_description
    #   The description of the phone number.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdatePhoneNumberMetadataRequest AWS API Documentation
    #
    class UpdatePhoneNumberMetadataRequest < Struct.new(
      :phone_number_id,
      :phone_number_description,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_id
    #   A unique identifier for the phone number.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) for Amazon Connect instances or
    #   traffic distribution groups that phone number inbound traffic is
    #   routed through. You must enter `InstanceId` or `TargetArn`.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance that phone numbers are
    #   claimed to. You can [find the instance ID][1] in the Amazon Resource
    #   Name (ARN) of the instance. You must enter `InstanceId` or
    #   `TargetArn`.
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
      :instance_id,
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
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN) of the instance.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the predefined attribute.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values of the predefined attribute.
    #   @return [Types::PredefinedAttributeValues]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdatePredefinedAttributeRequest AWS API Documentation
    #
    class UpdatePredefinedAttributeRequest < Struct.new(
      :instance_id,
      :name,
      :values)
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
    #   The URI for the S3 bucket where the prompt is stored. You can
    #   provide S3 pre-signed URLs returned by the [GetPromptFile][1] API
    #   instead of providing S3 URIs.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_GetPromptFile.html
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
    # @!attribute [rw] agent_availability_timer
    #   Whether agents with this routing profile will have their routing
    #   order calculated based on *time since their last inbound contact* or
    #   *longest idle time*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateRoutingProfileAgentAvailabilityTimerRequest AWS API Documentation
    #
    class UpdateRoutingProfileAgentAvailabilityTimerRequest < Struct.new(
      :instance_id,
      :routing_profile_id,
      :agent_availability_timer)
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
    # @!attribute [rw] applications
    #   This API is in preview release for Amazon Connect and is subject to
    #   change.
    #
    #   A list of the third-party application's metadata.
    #   @return [Array<Types::Application>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateSecurityProfileRequest AWS API Documentation
    #
    class UpdateSecurityProfileRequest < Struct.new(
      :description,
      :permissions,
      :security_profile_id,
      :instance_id,
      :allowed_access_control_tags,
      :tag_restricted_resources,
      :applications)
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
    # @!attribute [rw] sign_in_config
    #   The distribution that determines which Amazon Web Services Regions
    #   should be used to sign in agents in to both the instance and its
    #   replica(s).
    #   @return [Types::SignInConfig]
    #
    # @!attribute [rw] agent_config
    #   The distribution of agents between the instance and its replica(s).
    #   @return [Types::AgentConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateTrafficDistributionRequest AWS API Documentation
    #
    class UpdateTrafficDistributionRequest < Struct.new(
      :id,
      :telephony_config,
      :sign_in_config,
      :agent_config)
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instance ID in the Amazon Resource Name (ARN) of the instance.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user account.
    #   @return [String]
    #
    # @!attribute [rw] user_proficiencies
    #   The proficiencies to be updated for the user. Proficiencies must
    #   first be associated to the user. You can do this using
    #   AssociateUserProficiencies API.
    #   @return [Array<Types::UserProficiency>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserProficienciesRequest AWS API Documentation
    #
    class UpdateUserProficienciesRequest < Struct.new(
      :instance_id,
      :user_id,
      :user_proficiencies)
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

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] view_id
    #   The identifier of the view. Both `ViewArn` and `ViewId` can be used.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the view status as either `SAVED` or `PUBLISHED`. The
    #   `PUBLISHED` status will initiate validation on the content.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   View content containing all content necessary to render a view
    #   except for runtime input data and the runtime input schema, which is
    #   auto-generated by this operation.
    #
    #   The total uncompressed content has a maximum file size of 400kB.
    #   @return [Types::ViewInputContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateViewContentRequest AWS API Documentation
    #
    class UpdateViewContentRequest < Struct.new(
      :instance_id,
      :view_id,
      :status,
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] view
    #   A view resource object. Contains metadata and content necessary to
    #   render the view.
    #   @return [Types::View]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateViewContentResponse AWS API Documentation
    #
    class UpdateViewContentResponse < Struct.new(
      :view)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] view_id
    #   The identifier of the view. Both `ViewArn` and `ViewId` can be used.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the view.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the view.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateViewMetadataRequest AWS API Documentation
    #
    class UpdateViewMetadataRequest < Struct.new(
      :instance_id,
      :view_id,
      :name,
      :description)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateViewMetadataResponse AWS API Documentation
    #
    class UpdateViewMetadataResponse < Aws::EmptyStructure; end

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
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
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
      :tags,
      :last_modified_time,
      :last_modified_region)
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
      SENSITIVE = [:first_name, :last_name, :email, :secondary_email]
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
      SENSITIVE = [:first_name, :last_name]
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

    # Information about proficiency of a user.
    #
    # @!attribute [rw] attribute_name
    #   The name of user's proficiency. You must use name of predefined
    #   attribute present in the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] attribute_value
    #   The value of user's proficiency. You must use value of predefined
    #   attribute present in the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] level
    #   The level of the proficiency. The valid values are 1, 2, 3, 4 and 5.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UserProficiency AWS API Documentation
    #
    class UserProficiency < Struct.new(
      :attribute_name,
      :attribute_value,
      :level)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about proficiency to be disassociated from the user.
    #
    # @!attribute [rw] attribute_name
    #   The name of user's proficiency.
    #   @return [String]
    #
    # @!attribute [rw] attribute_value
    #   The value of user's proficiency.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UserProficiencyDisassociate AWS API Documentation
    #
    class UserProficiencyDisassociate < Struct.new(
      :attribute_name,
      :attribute_value)
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
    #   The currently supported values for `FieldName` are `username`,
    #   `firstname`, `lastname`, `resourceId`, `routingProfileId`,
    #   `securityProfileId`, `agentGroupId`, and `agentGroupPathIds`.
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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
    # @!attribute [rw] last_modified_time
    #   The timestamp when this resource was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_region
    #   The Amazon Web Services Region where this resource was last
    #   modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UserSummary AWS API Documentation
    #
    class UserSummary < Struct.new(
      :id,
      :arn,
      :username,
      :last_modified_time,
      :last_modified_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # A view resource object. Contains metadata and content necessary to
    # render the view.
    #
    # @!attribute [rw] id
    #   The identifier of the view.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the view.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the view.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the view status as either `SAVED` or `PUBLISHED`. The
    #   `PUBLISHED` status will initiate validation on the content.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the view - `CUSTOMER_MANAGED`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the view.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Current version of the view.
    #   @return [Integer]
    #
    # @!attribute [rw] version_description
    #   The description of the version.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   View content containing all content necessary to render a view
    #   except for runtime input data.
    #   @return [Types::ViewContent]
    #
    # @!attribute [rw] tags
    #   The tags associated with the view resource (not specific to view
    #   version).
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_time
    #   The timestamp of when the view was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   Latest timestamp of the `UpdateViewContent` or `CreateViewVersion`
    #   operations.
    #   @return [Time]
    #
    # @!attribute [rw] view_content_sha_256
    #   Indicates the checksum value of the latest published view content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/View AWS API Documentation
    #
    class View < Struct.new(
      :id,
      :arn,
      :name,
      :status,
      :type,
      :description,
      :version,
      :version_description,
      :content,
      :tags,
      :created_time,
      :last_modified_time,
      :view_content_sha_256)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # View content containing all content necessary to render a view except
    # for runtime input data.
    #
    # @!attribute [rw] input_schema
    #   The data schema matching data that the view template must be
    #   provided to render.
    #   @return [String]
    #
    # @!attribute [rw] template
    #   The view template representing the structure of the view.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   A list of possible actions from the view.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ViewContent AWS API Documentation
    #
    class ViewContent < Struct.new(
      :input_schema,
      :template,
      :actions)
      SENSITIVE = [:input_schema]
      include Aws::Structure
    end

    # View content containing all content necessary to render a view except
    # for runtime input data and the runtime input schema, which is
    # auto-generated by this operation.
    #
    # @!attribute [rw] template
    #   The view template representing the structure of the view.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   A list of possible actions from the view.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ViewInputContent AWS API Documentation
    #
    class ViewInputContent < Struct.new(
      :template,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a view's metadata.
    #
    # @!attribute [rw] id
    #   The identifier of the view.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the view.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the view.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the view.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the view status as either `SAVED` or `PUBLISHED`. The
    #   `PUBLISHED` status will initiate validation on the content.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the view.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ViewSummary AWS API Documentation
    #
    class ViewSummary < Struct.new(
      :id,
      :arn,
      :name,
      :type,
      :status,
      :description)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # A summary of a view version's metadata.
    #
    # @!attribute [rw] id
    #   The identifier of the view version.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the view version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the view version.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the view version.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the view version.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The sequentially incremented version of the view version.
    #   @return [Integer]
    #
    # @!attribute [rw] version_description
    #   The description of the view version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ViewVersionSummary AWS API Documentation
    #
    class ViewVersionSummary < Struct.new(
      :id,
      :arn,
      :description,
      :name,
      :type,
      :version,
      :version_description)
      SENSITIVE = [:name]
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
    #   resource. For example, \\\{ "Tags": \\\{"key1":"value1",
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

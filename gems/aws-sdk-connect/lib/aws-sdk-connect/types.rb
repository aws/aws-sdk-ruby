# frozen_string_literal: true

# This is generated code!

module Aws::Connect
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient permissions to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an action.</p>
    # @!attribute action_type
    #   <p>The action type.</p>
    #   @return [String]
    class ActionSummary < Struct.new(
      :action_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute evaluation_form_id
    #   <p>The unique identifier for the evaluation form.</p>
    #   @return [String]
    # @!attribute evaluation_form_version
    #   <p>The version of the evaluation form to activate. If the version property is not provided, the
    #      latest version of the evaluation form is activated.</p>
    #   @return [Integer]
    class ActivateEvaluationFormRequest < Struct.new(
      :instance_id,
      :evaluation_form_id,
      :evaluation_form_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluation_form_id
    #   <p>The unique identifier for the evaluation form.</p>
    #   @return [String]
    # @!attribute evaluation_form_arn
    #   <p>The Amazon Resource Name (ARN) for the evaluation form resource.</p>
    #   @return [String]
    # @!attribute evaluation_form_version
    #   <p>A version of the evaluation form.</p>
    #   @return [Integer]
    class ActivateEvaluationFormResponse < Struct.new(
      :evaluation_form_id,
      :evaluation_form_arn,
      :evaluation_form_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:evaluation_form_version] = 0 unless options.key?(:evaluation_form_version)
        super
      end
    end

    # <p>List of additional email addresses for an email contact.</p>
    # @!attribute to_list
    #   <p>List of additional TO email recipients for an email contact.</p>
    #   @return [Array<Types::EmailRecipient>]
    # @!attribute cc_list
    #   <p>List of additional CC email recipients for an email contact.</p>
    #   @return [Array<Types::EmailRecipient>]
    class AdditionalEmailRecipients < Struct.new(
      :to_list,
      :cc_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The distribution of agents between the instance and its replica(s).</p>
    # @!attribute distributions
    #   <p>Information about traffic distributions.</p>
    #   @return [Array<Types::Distribution>]
    class AgentConfig < Struct.new(
      :distributions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_Contact.html">contact</a> associated to the
    #    user.</p>
    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #   @return [String]
    # @!attribute channel
    #   <p>The channel of the contact.</p>
    #   @return [String]
    # @!attribute initiation_method
    #   <p>How the contact was initiated.</p>
    #   @return [String]
    # @!attribute agent_contact_state
    #   <p>The <a href="https://docs.aws.amazon.com/connect/latest/adminguide/about-contact-states.html">state of the contact</a>.</p>
    #            <note>
    #               <p>When <code>AgentContactState</code> is set to <code>CONNECTED_ONHOLD</code>,
    #        <code>StateStartTimestamp</code> is not changed. Instead, <code>StateStartTimestamp</code>
    #       reflects the time the contact was <code>CONNECTED</code> to the agent.</p>
    #            </note>
    #   @return [String]
    # @!attribute state_start_timestamp
    #   <p>The epoch timestamp when the contact state started.</p>
    #   @return [Time]
    # @!attribute connected_to_agent_timestamp
    #   <p>The time at which the contact was connected to an agent.</p>
    #   @return [Time]
    # @!attribute queue
    #   <p>Contains information about a queue resource for which metrics are returned.</p>
    #   @return [Types::QueueReference]
    class AgentContactReference < Struct.new(
      :contact_id,
      :channel,
      :initiation_method,
      :agent_contact_state,
      :state_start_timestamp,
      :connected_to_agent_timestamp,
      :queue,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an agent hierarchy group.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the group.</p>
    #   @return [String]
    class AgentHierarchyGroup < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that defines search criteria for contacts using agent hierarchy group levels.
    #    For more information about agent hierarchies, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/agent-hierarchy.html">Set Up Agent Hierarchies</a> in the
    #      <i>Amazon Connect Administrator Guide</i>.</p>
    # @!attribute l1_ids
    #   <p>The identifiers for level 1 hierarchy groups.</p>
    #   @return [Array<String>]
    # @!attribute l2_ids
    #   <p>The identifiers for level 2 hierarchy groups.</p>
    #   @return [Array<String>]
    # @!attribute l3_ids
    #   <p>The identifiers for level 3 hierarchy groups.</p>
    #   @return [Array<String>]
    # @!attribute l4_ids
    #   <p>The identifiers for level 4 hierarchy groups.</p>
    #   @return [Array<String>]
    # @!attribute l5_ids
    #   <p>The identifiers for level 5 hierarchy groups.</p>
    #   @return [Array<String>]
    class AgentHierarchyGroups < Struct.new(
      :l1_ids,
      :l2_ids,
      :l3_ids,
      :l4_ids,
      :l5_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the agent who accepted the contact.</p>
    # @!attribute id
    #   <p>The identifier of the agent who accepted the contact.</p>
    #   @return [String]
    # @!attribute connected_to_agent_timestamp
    #   <p>The timestamp when the contact was connected to the agent.</p>
    #   @return [Time]
    # @!attribute agent_pause_duration_in_seconds
    #   <p>Agent pause duration for a contact in seconds.</p>
    #   @return [Integer]
    # @!attribute hierarchy_groups
    #   <p>The agent hierarchy groups for the agent.</p>
    #   @return [Types::HierarchyGroups]
    # @!attribute device_info
    #   <p>Information regarding Agent’s device.</p>
    #   @return [Types::DeviceInfo]
    # @!attribute capabilities
    #   <p>The configuration for the allowed video and screen sharing capabilities for participants
    #      present over the call. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/inapp-calling.html">Set up in-app, web, video calling, and screen
    #       sharing capabilities</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #   @return [Types::ParticipantCapabilities]
    # @!attribute after_contact_work_duration
    #   <p>The difference in time, in whole seconds, between
    #       <code>AfterContactWorkStartTimestamp</code> and
    #      <code>AfterContactWorkEndTimestamp</code>.</p>
    #   @return [Integer]
    # @!attribute after_contact_work_start_timestamp
    #   <p>The date and time when the agent started doing After Contact Work for the contact, in UTC
    #      time.</p>
    #   @return [Time]
    # @!attribute after_contact_work_end_timestamp
    #   <p>The date and time when the agent ended After Contact Work for the contact, in UTC time. In
    #      cases when agent finishes doing <code>AfterContactWork</code> for chat contacts and switches
    #      their activity status to offline or equivalent without clearing the contact in CCP, discrepancies
    #      may be noticed for <code>AfterContactWorkEndTimestamp</code>.</p>
    #   @return [Time]
    # @!attribute agent_initiated_hold_duration
    #   <p>The total hold duration in seconds initiated by the agent.</p>
    #   @return [Integer]
    # @!attribute state_transitions
    #   <p>List of <code>StateTransition</code> for a supervisor.</p>
    #   @return [Array<Types::StateTransition>]
    class AgentInfo < Struct.new(
      :id,
      :connected_to_agent_timestamp,
      :agent_pause_duration_in_seconds,
      :hierarchy_groups,
      :device_info,
      :capabilities,
      :after_contact_work_duration,
      :after_contact_work_start_timestamp,
      :after_contact_work_end_timestamp,
      :agent_initiated_hold_duration,
      :state_transitions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the quality of the Agent's media connection</p>
    # @!attribute audio
    #   <p>Information about the audio quality of the Agent</p>
    #   @return [Types::AudioQualityMetricsInfo]
    class AgentQualityMetrics < Struct.new(
      :audio,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an agent status.</p>
    # @!attribute agent_status_arn
    #   <p>The Amazon Resource Name (ARN) of the agent status.</p>
    #   @return [String]
    # @!attribute agent_status_id
    #   <p>The identifier of the agent status.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the agent status.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the agent status.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of agent status.</p>
    #   @return [String]
    # @!attribute display_order
    #   <p>The display order of the agent status.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>The state of the agent status.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
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
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the agent status assigned to the user.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the agent status.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the agent status.</p>
    #   @return [String]
    class AgentStatusIdentifier < Struct.new(
      :arn,
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the agent's status.</p>
    # @!attribute status_start_timestamp
    #   <p>The start timestamp of the agent's status.</p>
    #   @return [Time]
    # @!attribute status_arn
    #   <p>The Amazon Resource Name (ARN) of the agent's status.</p>
    #   @return [String]
    # @!attribute status_name
    #   <p>The name of the agent status.</p>
    #   @return [String]
    class AgentStatusReference < Struct.new(
      :status_start_timestamp,
      :status_arn,
      :status_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The search criteria to be used to return agent statuses.</p>
    # @!attribute or_conditions
    #   <p>A list of conditions which would be applied together with an <code>OR</code>
    #      condition.</p>
    #   @return [Array<Types::AgentStatusSearchCriteria>]
    # @!attribute and_conditions
    #   <p>A leaf node condition which can be used to specify a string condition.</p>
    #            <note>
    #               <p>The currently supported values for <code>FieldName</code> are <code>name</code>,  
    #        <code>description</code>, <code>state</code>, <code>type</code>, <code>displayOrder</code>, 
    #       and <code>resourceID</code>.</p>
    #            </note>
    #   @return [Array<Types::AgentStatusSearchCriteria>]
    # @!attribute string_condition
    #   <p>A leaf node condition which can be used to specify a string condition.</p>
    #            <note>
    #               <p>The currently supported values for <code>FieldName</code> are <code>name</code>,  
    #        <code>description</code>, <code>state</code>, <code>type</code>, <code>displayOrder</code>, 
    #       and <code>resourceID</code>.</p>
    #            </note>
    #   @return [Types::StringCondition]
    class AgentStatusSearchCriteria < Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters to be applied to search results.</p>
    # @!attribute attribute_filter
    #   <p>An object that can be used to specify Tag conditions inside the <code>SearchFilter</code>.
    #      This accepts an <code>OR</code> of <code>AND</code> (List of List) input where: </p>
    #            <ul>
    #               <li>
    #                  <p>The top level list specifies conditions that need to be applied with <code>OR</code>
    #        operator.</p>
    #               </li>
    #               <li>
    #                  <p>The inner list specifies conditions that need to be applied with <code>AND</code>
    #        operator.</p>
    #               </li>
    #            </ul>
    #   @return [Types::ControlPlaneAttributeFilter]
    class AgentStatusSearchFilter < Struct.new(
      :attribute_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information for an agent status.</p>
    # @!attribute id
    #   <p>The identifier for an agent status.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the agent status.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the agent status.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the agent status.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    class AgentStatusSummary < Struct.new(
      :id,
      :arn,
      :name,
      :type,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Can be used to define a list of preferred agents to target the contact to within the queue. 
    #    Note that agents must have the queue in their routing profile in order to be offered the 
    #    contact.</p>
    # @!attribute agent_ids
    #   <p>An object to specify a list of agents, by user ID.</p>
    #   @return [Array<String>]
    class AgentsCriteria < Struct.new(
      :agent_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the capabilities enabled for participants of the contact.</p>
    # @!attribute customer
    #   <p>Information about the customer's video sharing capabilities.</p>
    #   @return [Types::ParticipantCapabilities]
    # @!attribute agent
    #   <p>Information about the agent's video sharing capabilities.</p>
    #   @return [Types::ParticipantCapabilities]
    class AllowedCapabilities < Struct.new(
      :customer,
      :agent,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Information about associations that are successfully created: <code>DataSetId</code>,
    #     <code>TargetAccountId</code>, <code>ResourceShareId</code>,
    #    <code>ResourceShareArn</code>. </p>
    # @!attribute data_set_id
    #   <p>The identifier of the dataset.</p>
    #   @return [String]
    # @!attribute target_account_id
    #   <p>The identifier of the target account. </p>
    #   @return [String]
    # @!attribute resource_share_id
    #   <p>The Resource Access Manager share ID.</p>
    #   @return [String]
    # @!attribute resource_share_arn
    #   <p>The Amazon Resource Name (ARN) of the Resource Access Manager share. </p>
    #   @return [String]
    # @!attribute resource_share_status
    #   <p>The Amazon Web Services Resource Access Manager status of association.</p>
    #   @return [String]
    class AnalyticsDataAssociationResult < Struct.new(
      :data_set_id,
      :target_account_id,
      :resource_share_id,
      :resource_share_arn,
      :resource_share_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about datasets that are available to associate with: <code>DataSetId</code>,
    #     <code>DataSetName</code>.</p>
    # @!attribute data_set_id
    #   <p>The identifier of the dataset.</p>
    #   @return [String]
    # @!attribute data_set_name
    #   <p>The name of the dataset.</p>
    #   @return [String]
    class AnalyticsDataSetsResult < Struct.new(
      :data_set_id,
      :data_set_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration of the answering machine detection.</p>
    # @!attribute enable_answer_machine_detection
    #   <p>The flag to indicate if answer machine detection analysis needs to be performed for a voice
    #      call. If set to <code>true</code>, <code>TrafficType</code> must be set as <code>CAMPAIGN</code>.
    #     </p>
    #   @return [Boolean]
    # @!attribute await_answer_machine_prompt
    #   <p>Wait for the answering machine prompt.</p>
    #   @return [Boolean]
    class AnswerMachineDetectionConfig < Struct.new(
      :enable_answer_machine_detection,
      :await_answer_machine_prompt,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enable_answer_machine_detection] = false unless options.key?(:enable_answer_machine_detection)
        options[:await_answer_machine_prompt] = false unless options.key?(:await_answer_machine_prompt)
        super
      end
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>A third-party application's metadata.</p>
    # @!attribute namespace
    #   <p>Namespace of the application that you want to give access to.</p>
    #   @return [String]
    # @!attribute application_permissions
    #   <p>The permissions that the agent is granted on the application. Only the <code>ACCESS</code>
    #      permission is supported.</p>
    #   @return [Array<String>]
    class Application < Struct.new(
      :namespace,
      :application_permissions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This action must be set if <code>TriggerEventSource</code> is one of the following values:
    #     <code>OnPostCallAnalysisAvailable</code> | <code>OnRealTimeCallAnalysisAvailable</code> |
    #     <code>OnRealTimeChatAnalysisAvailable</code> | <code>OnPostChatAnalysisAvailable</code>. Contact
    #    is categorized using the rule name.</p>
    #          <p>
    #             <code>RuleName</code> is used as <code>ContactCategory</code>.</p>
    class AssignContactCategoryActionDefinition < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The AssignSla action definition.</p>
    # @!attribute sla_assignment_type
    #   <p>Type of SLA assignment.</p>
    #   @return [String]
    # @!attribute case_sla_configuration
    #   <p>The SLA configuration for Case SLA Assignment.</p>
    #   @return [Types::CaseSlaConfiguration]
    class AssignSlaActionDefinition < Struct.new(
      :sla_assignment_type,
      :case_sla_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute data_set_id
    #   <p>The identifier of the dataset to associate with the target account.</p>
    #   @return [String]
    # @!attribute target_account_id
    #   <p>The identifier of the target account.  Use to associate a dataset to a different account than the one containing
    #      the Amazon Connect instance. If not specified, by default this value is the Amazon Web Services account that has the Amazon Connect instance.</p>
    #   @return [String]
    class AssociateAnalyticsDataSetRequest < Struct.new(
      :instance_id,
      :data_set_id,
      :target_account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_set_id
    #   <p>The identifier of the dataset that was associated.</p>
    #   @return [String]
    # @!attribute target_account_id
    #   <p>The identifier of the target account. </p>
    #   @return [String]
    # @!attribute resource_share_id
    #   <p>The Resource Access Manager share ID that is generated.</p>
    #   @return [String]
    # @!attribute resource_share_arn
    #   <p>The Amazon Resource Name (ARN) of the Resource Access Manager share. </p>
    #   @return [String]
    class AssociateAnalyticsDataSetResponse < Struct.new(
      :data_set_id,
      :target_account_id,
      :resource_share_id,
      :resource_share_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute origin
    #   <p>The domain to add to your allow list.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class AssociateApprovedOriginRequest < Struct.new(
      :instance_id,
      :origin,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute lex_bot
    #   <p>Configuration information of an Amazon Lex bot.</p>
    #   @return [Types::LexBot]
    # @!attribute lex_v2_bot
    #   <p>The Amazon Lex V2 bot to associate with the instance.</p>
    #   @return [Types::LexV2Bot]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class AssociateBotRequest < Struct.new(
      :instance_id,
      :lex_bot,
      :lex_v2_bot,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see 
    #   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html">What is Amazon Transcribe?</a>
    #            </p>
    #   @return [String]
    # @!attribute vocabulary_id
    #   <p>The identifier of the custom vocabulary. If this is empty, the default is set to none.</p>
    #   @return [String]
    class AssociateDefaultVocabularyRequest < Struct.new(
      :instance_id,
      :language_code,
      :vocabulary_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AssociateDefaultVocabularyResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource.</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Web Services End User Messaging SMS phone number ARN when using
    #         <code>SMS_PHONE_NUMBER</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Web Services End User Messaging Social phone number ARN when using
    #         <code>WHATSAPP_MESSAGING_PHONE_NUMBER</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute flow_id
    #   <p>The identifier of the flow.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>A valid resource type.</p>
    #   @return [String]
    class AssociateFlowRequest < Struct.new(
      :instance_id,
      :resource_id,
      :flow_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AssociateFlowResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>A valid resource type. To <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-contact-analysis-segment-streams.html">enable streaming
    #       for real-time analysis of contacts</a>, use the following types:</p>
    #            <ul>
    #               <li>
    #                  <p>For chat contacts, use <code>REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For voice contacts, use <code>REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS</code>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>
    #                  <code>REAL_TIME_CONTACT_ANALYSIS_SEGMENTS</code> is deprecated, but it is still supported
    #       and will apply only to VOICE channel contacts. Use
    #        <code>REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS</code> for voice contacts moving
    #       forward.</p>
    #               <p>If you have previously associated a stream with
    #        <code>REAL_TIME_CONTACT_ANALYSIS_SEGMENTS</code>, no action is needed to update the stream to
    #        <code>REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute storage_config
    #   <p>A valid storage type.</p>
    #   @return [Types::InstanceStorageConfig]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class AssociateInstanceStorageConfigRequest < Struct.new(
      :instance_id,
      :resource_type,
      :storage_config,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    #   @return [String]
    class AssociateInstanceStorageConfigResponse < Struct.new(
      :association_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) for the Lambda function being associated. Maximum number of characters
    #      allowed is 140.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class AssociateLambdaFunctionRequest < Struct.new(
      :instance_id,
      :function_arn,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute lex_bot
    #   <p>The Amazon Lex bot to associate with the instance.</p>
    #   @return [Types::LexBot]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class AssociateLexBotRequest < Struct.new(
      :instance_id,
      :lex_bot,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow.</p>
    #   @return [String]
    class AssociatePhoneNumberContactFlowRequest < Struct.new(
      :phone_number_id,
      :instance_id,
      :contact_flow_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #   @return [String]
    # @!attribute quick_connect_ids
    #   <p>The quick connects to associate with this queue.</p>
    #   @return [Array<String>]
    class AssociateQueueQuickConnectsRequest < Struct.new(
      :instance_id,
      :queue_id,
      :quick_connect_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #   @return [String]
    # @!attribute queue_configs
    #   <p>The queues to associate with this routing profile.</p>
    #   @return [Array<Types::RoutingProfileQueueConfig>]
    class AssociateRoutingProfileQueuesRequest < Struct.new(
      :instance_id,
      :routing_profile_id,
      :queue_configs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute key
    #   <p>A valid security key in PEM format as a String.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class AssociateSecurityKeyRequest < Struct.new(
      :instance_id,
      :key,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    #   @return [String]
    class AssociateSecurityKeyResponse < Struct.new(
      :association_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute traffic_distribution_group_id
    #   <p>The identifier of the traffic distribution group.
    #   This can be the ID or the ARN of the traffic distribution group.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier of the user account. This can be the ID or the ARN of the user. </p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    class AssociateTrafficDistributionGroupUserRequest < Struct.new(
      :traffic_distribution_group_id,
      :user_id,
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AssociateTrafficDistributionGroupUserResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instance ID in the Amazon Resource
    #      Name (ARN of the instance).</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier of the user account.</p>
    #   @return [String]
    # @!attribute user_proficiencies
    #   <p>The proficiencies to associate with the user.</p>
    #   @return [Array<Types::UserProficiency>]
    class AssociateUserProficienciesRequest < Struct.new(
      :instance_id,
      :user_id,
      :user_proficiencies,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contact summary of a contact in contact tree associated with unique identifier.</p>
    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #   @return [String]
    # @!attribute contact_arn
    #   <p>The Amazon Resource Name (ARN) of the contact</p>
    #   @return [String]
    # @!attribute initiation_timestamp
    #   <p>The date and time this contact was initiated, in UTC time.</p>
    #   @return [Time]
    # @!attribute disconnect_timestamp
    #   <p>The date and time that the customer endpoint disconnected from the current contact, in UTC
    #      time. In transfer scenarios, the DisconnectTimestamp of the previous contact indicates the date
    #      and time when that contact ended.</p>
    #   @return [Time]
    # @!attribute initial_contact_id
    #   <p>If this contact is related to other contacts, this is the ID of the initial contact.</p>
    #   @return [String]
    # @!attribute previous_contact_id
    #   <p>If this contact is not the first contact, this is the ID of the previous contact.</p>
    #   @return [String]
    # @!attribute related_contact_id
    #   <p>The contactId that is related to this contact.</p>
    #   @return [String]
    # @!attribute initiation_method
    #   <p>Indicates how the contact was initiated.</p>
    #   @return [String]
    # @!attribute channel
    #   <p>How the contact reached your contact center.</p>
    #   @return [String]
    class AssociatedContactSummary < Struct.new(
      :contact_id,
      :contact_arn,
      :initiation_timestamp,
      :disconnect_timestamp,
      :initial_contact_id,
      :previous_contact_id,
      :related_contact_id,
      :initiation_method,
      :channel,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the attached file.</p>
    # @!attribute creation_time
    #   <p>The time of Creation of the file resource as an ISO timestamp. It's specified in ISO 8601
    #      format: <code>yyyy-MM-ddThh:mm:ss.SSSZ</code>. For example,
    #      <code>2024-05-03T02:41:28.172Z</code>.</p>
    #   @return [String]
    # @!attribute file_arn
    #   <p>The unique identifier of the attached file resource (ARN).</p>
    #   @return [String]
    # @!attribute file_id
    #   <p>The unique identifier of the attached file resource.</p>
    #   @return [String]
    # @!attribute file_name
    #   <p>A case-sensitive name of the attached file being uploaded.</p>
    #   @return [String]
    # @!attribute file_size_in_bytes
    #   <p>The size of the attached file in bytes.</p>
    #   @return [Integer]
    # @!attribute file_status
    #   <p>The current status of the attached file.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>Represents the identity that created the file.</p>
    #   @return [Types::CreatedByInfo]
    # @!attribute file_use_case_type
    #   <p>The use case for the file.</p>
    #   @return [String]
    # @!attribute associated_resource_arn
    #   <p>The resource to which the attached file is (being) uploaded to. <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateCase.html">Cases</a> are the only
    #      current supported resource.</p>
    #            <note>
    #               <p>This value must be a valid ARN.</p>
    #            </note>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, <code>{
    #       "Tags": {"key1":"value1", "key2":"value2"} }</code>.</p>
    #   @return [Hash<String, String>]
    class AttachedFile < Struct.new(
      :creation_time,
      :file_arn,
      :file_id,
      :file_name,
      :file_size_in_bytes,
      :file_status,
      :created_by,
      :file_use_case_type,
      :associated_resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Error describing a failure to retrieve attached file metadata through
    #    BatchGetAttachedFileMetadata action.</p>
    # @!attribute error_code
    #   <p> Status code describing the failure. </p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Why the attached file couldn't be retrieved. </p>
    #   @return [String]
    # @!attribute file_id
    #   <p>The unique identifier of the attached file resource.</p>
    #   @return [String]
    class AttachedFileError < Struct.new(
      :error_code,
      :error_message,
      :file_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a reference when the <code>referenceType</code> is
    #    <code>ATTACHMENT</code>. Otherwise, null.</p>
    # @!attribute name
    #   <p>Identifier of the attachment reference.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The location path of the attachment reference.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the attachment reference type.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the attachment reference.</p>
    #   @return [String]
    class AttachmentReference < Struct.new(
      :name,
      :value,
      :status,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The attendee information, including attendee ID and join token.</p>
    # @!attribute attendee_id
    #   <p>The Amazon Chime SDK attendee ID.</p>
    #   @return [String]
    # @!attribute join_token
    #   <p>The join token used by the Amazon Chime SDK attendee.</p>
    #   @return [String]
    class Attendee < Struct.new(
      :attendee_id,
      :join_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A toggle for an individual feature at the instance level.</p>
    # @!attribute attribute_type
    #   <p>The type of attribute.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the attribute.</p>
    #   @return [String]
    class Attribute < Struct.new(
      :attribute_type,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of conditions which would be applied together with an <code>AND</code>
    #    condition.</p>
    # @!attribute tag_conditions
    #   <p>A leaf node condition which can be used to specify a tag condition.</p>
    #   @return [Array<Types::TagCondition>]
    # @!attribute hierarchy_group_condition
    #   <p>A leaf node condition which can be used to specify a hierarchy group condition.</p>
    #   @return [Types::HierarchyGroupCondition]
    class AttributeAndCondition < Struct.new(
      :tag_conditions,
      :hierarchy_group_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object to specify the predefined attribute condition.</p>
    # @!attribute name
    #   <p>The name of predefined attribute.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of predefined attribute.</p>
    #   @return [String]
    # @!attribute proficiency_level
    #   <p>The proficiency level of the condition.</p>
    #   @return [Float]
    # @!attribute range
    #   <p>An Object to define the minimum and maximum proficiency levels.</p>
    #   @return [Types::Range]
    # @!attribute match_criteria
    #   <p>An object to define <code>AgentsCriteria</code>.</p>
    #   @return [Types::MatchCriteria]
    # @!attribute comparison_operator
    #   <p>The operator of the condition.</p>
    #   @return [String]
    class AttributeCondition < Struct.new(
      :name,
      :value,
      :proficiency_level,
      :range,
      :match_criteria,
      :comparison_operator,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Has audio-specific configurations as the operating parameter for Echo Reduction.</p>
    # @!attribute echo_reduction
    #   <p>Makes echo reduction available to clients who connect to the meeting.</p>
    #   @return [String]
    class AudioFeatures < Struct.new(
      :echo_reduction,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information for score and potential quality issues for Audio</p>
    # @!attribute quality_score
    #   <p>Number measuring the estimated quality of the media connection.</p>
    #   @return [Float]
    # @!attribute potential_quality_issues
    #   <p>List of potential issues causing degradation of quality on a media connection. If the
    #      service did not detect any potential quality issues the list is empty.</p>
    #            <p>Valid values: <code>HighPacketLoss</code> | <code>HighRoundTripTime</code> |
    #       <code>HighJitterBuffer</code>
    #            </p>
    #   @return [Array<String>]
    class AudioQualityMetricsInfo < Struct.new(
      :quality_score,
      :potential_quality_issues,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:quality_score] = 0 unless options.key?(:quality_score)
        super
      end
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change. To 
    # request access to this API, contact Amazon Web Services Support.</p>
    #          <p>Information about an authentication profile. An authentication profile is a resource that
    #    stores the authentication settings for users in your contact center. You use authentication
    #    profiles to set up IP address range restrictions and session timeouts. For more information, see
    #     <a href="https://docs.aws.amazon.com/connect/latest/adminguide/authentication-profiles.html">Set IP
    #     address restrictions or session timeouts</a>. </p>
    # @!attribute id
    #   <p>A unique identifier for the authentication profile. </p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the authentication profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for the authentication profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the authentication profile.</p>
    #   @return [String]
    # @!attribute allowed_ips
    #   <p>A list of IP address range strings that are allowed to access the Amazon Connect
    #      instance. For more information about how to configure IP addresses, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/authentication-profiles.html#configure-ip-based-ac">Configure IP
    #       address based access control</a> in the <i>Amazon Connect Administrator
    #       Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute blocked_ips
    #   <p>A list of IP address range strings that are blocked from accessing the Amazon Connect
    #      instance. For more information about how to configure IP addresses, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/authentication-profiles.html#configure-ip-based-ac">Configure IP
    #       address based access control</a> in the <i>Amazon Connect Administrator
    #       Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute is_default
    #   <p>Shows whether the authentication profile is the default authentication profile for the
    #       Amazon Connect instance. The default authentication profile applies to all agents in an
    #       Amazon Connect instance, unless overridden by another authentication profile.</p>
    #   @return [Boolean]
    # @!attribute created_time
    #   <p>The timestamp when the authentication profile was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The timestamp when the authentication profile was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where the authentication profile was last modified.</p>
    #   @return [String]
    # @!attribute periodic_session_duration
    #   <p>The short lived session duration configuration for users logged in to Amazon Connect, in
    #      minutes. This value determines the maximum possible time before an agent is authenticated. For
    #      more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/authentication-profiles.html#configure-session-timeouts">Configure the session duration</a> in the <i>Amazon Connect Administrator
    #       Guide</i>.</p>
    #   @return [Integer]
    # @!attribute max_session_duration
    #   <p>The long lived session duration for users logged in to Amazon Connect, in minutes. After
    #      this time period, users must log in again. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/authentication-profiles.html#configure-session-timeouts">Configure the session duration</a> in the <i>Amazon Connect Administrator
    #       Guide</i>.</p>
    #   @return [Integer]
    class AuthenticationProfile < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :allowed_ips,
      :blocked_ips,
      :is_default,
      :created_time,
      :last_modified_time,
      :last_modified_region,
      :periodic_session_duration,
      :max_session_duration,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_default] = false unless options.key?(:is_default)
        super
      end
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change. To 
    # request access to this API, contact Amazon Web Services Support.</p>
    #          <p>A summary of a given authentication profile.</p>
    # @!attribute id
    #   <p>The unique identifier of the authentication profile.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the authentication profile summary.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the authentication profile summary.</p>
    #   @return [String]
    # @!attribute is_default
    #   <p>Shows whether the authentication profile is the default authentication profile for the
    #       Amazon Connect instance. The default authentication profile applies to all agents in an
    #       Amazon Connect instance, unless overridden by another authentication profile.</p>
    #   @return [Boolean]
    # @!attribute last_modified_time
    #   <p>The timestamp when the authentication profile summary was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region when the authentication profile summary was last
    #      modified.</p>
    #   @return [String]
    class AuthenticationProfileSummary < Struct.new(
      :id,
      :arn,
      :name,
      :is_default,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_default] = false unless options.key?(:is_default)
        super
      end
    end

    # <p>Information about available phone numbers.</p>
    # @!attribute phone_number
    #   <p>The phone number. Phone numbers are formatted <code>[+] [country code] [subscriber number including area code]</code>.</p>
    #   @return [String]
    # @!attribute phone_number_country_code
    #   <p>The ISO country code.</p>
    #   @return [String]
    # @!attribute phone_number_type
    #   <p>The type of phone number.</p>
    #   @return [String]
    class AvailableNumberSummary < Struct.new(
      :phone_number,
      :phone_number_country_code,
      :phone_number_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute data_set_ids
    #   <p>An array of dataset identifiers to associate.</p>
    #   @return [Array<String>]
    # @!attribute target_account_id
    #   <p>The identifier of the target account.  Use to associate a dataset to a different account than the one containing
    #      the Amazon Connect instance. If not specified, by default this value is the Amazon Web Services account that has the Amazon Connect instance.</p>
    #   @return [String]
    class BatchAssociateAnalyticsDataSetRequest < Struct.new(
      :instance_id,
      :data_set_ids,
      :target_account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute created
    #   <p>Information about associations that are successfully created: <code>DataSetId</code>,
    #       <code>TargetAccountId</code>, <code>ResourceShareId</code>,
    #      <code>ResourceShareArn</code>. </p>
    #   @return [Array<Types::AnalyticsDataAssociationResult>]
    # @!attribute errors
    #   <p>A list of errors for datasets that aren't successfully associated with the target
    #      account.</p>
    #   @return [Array<Types::ErrorResult>]
    class BatchAssociateAnalyticsDataSetResponse < Struct.new(
      :created,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute data_set_ids
    #   <p>An array of associated dataset identifiers to remove.</p>
    #   @return [Array<String>]
    # @!attribute target_account_id
    #   <p>The identifier of the target account.  Use to disassociate a dataset from a different account than the one containing
    #      the Amazon Connect instance. If not specified, by default this value is the Amazon Web Services account that has the Amazon Connect instance.</p>
    #   @return [String]
    class BatchDisassociateAnalyticsDataSetRequest < Struct.new(
      :instance_id,
      :data_set_ids,
      :target_account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute deleted
    #   <p>An array of successfully disassociated dataset identifiers.</p>
    #   @return [Array<String>]
    # @!attribute errors
    #   <p>A list of errors for any datasets not successfully removed.</p>
    #   @return [Array<Types::ErrorResult>]
    class BatchDisassociateAnalyticsDataSetResponse < Struct.new(
      :deleted,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_ids
    #   <p>The unique identifiers of the attached file resource.</p>
    #   @return [Array<String>]
    # @!attribute instance_id
    #   <p>The unique identifier of the Connect instance.</p>
    #   @return [String]
    # @!attribute associated_resource_arn
    #   <p>The resource to which the attached file is (being) uploaded to. The supported resources are
    #       <a href="https://docs.aws.amazon.com/connect/latest/adminguide/cases.html">Cases</a> and <a href="https://docs.aws.amazon.com/connect/latest/adminguide/setup-email-channel.html">Email</a>.</p>
    #            <note>
    #               <p>This value must be a valid ARN.</p>
    #            </note>
    #   @return [String]
    class BatchGetAttachedFileMetadataRequest < Struct.new(
      :file_ids,
      :instance_id,
      :associated_resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute files
    #   <p>List of attached files that were successfully retrieved. </p>
    #   @return [Array<Types::AttachedFile>]
    # @!attribute errors
    #   <p>List of errors of attached files that could not be retrieved. </p>
    #   @return [Array<Types::AttachedFileError>]
    class BatchGetAttachedFileMetadataResponse < Struct.new(
      :files,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute resource_ids
    #   <p>A list of resource identifiers to retrieve flow associations.</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Web Services End User Messaging SMS phone number ARN when using
    #         <code>SMS_PHONE_NUMBER</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Web Services End User Messaging Social phone number ARN when using
    #         <code>WHATSAPP_MESSAGING_PHONE_NUMBER</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute resource_type
    #   <p>The type of resource association.</p>
    #   @return [String]
    class BatchGetFlowAssociationRequest < Struct.new(
      :instance_id,
      :resource_ids,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_association_summary_list
    #   <p>Information about flow associations.</p>
    #   @return [Array<Types::FlowAssociationSummary>]
    class BatchGetFlowAssociationResponse < Struct.new(
      :flow_association_summary_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_data_request_list
    #   <p>List of individual contact requests.</p>
    #   @return [Array<Types::ContactDataRequest>]
    class BatchPutContactRequest < Struct.new(
      :client_token,
      :instance_id,
      :contact_data_request_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute successful_request_list
    #   <p>List of requests for which contact was successfully created.</p>
    #   @return [Array<Types::SuccessfulRequest>]
    # @!attribute failed_request_list
    #   <p>List of requests for which contact creation failed.</p>
    #   @return [Array<Types::FailedRequest>]
    class BatchPutContactResponse < Struct.new(
      :successful_request_list,
      :failed_request_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information associated with a campaign.</p>
    # @!attribute campaign_id
    #   <p>A unique identifier for a campaign.</p>
    #   @return [String]
    class Campaign < Struct.new(
      :campaign_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The SLA configuration for Case SlaAssignmentType.</p>
    # @!attribute name
    #   <p>Name of an SLA.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of SLA for Case SlaAssignmentType.</p>
    #   @return [String]
    # @!attribute field_id
    #   <p>Unique identifier of a Case field.</p>
    #   @return [String]
    # @!attribute target_field_values
    #   <p>Represents a list of target field values for the fieldId specified in CaseSlaConfiguration.
    #      The SLA is considered met if any one of these target field values matches the actual field
    #      value.</p>
    #   @return [Array<Types::FieldValueUnion>]
    # @!attribute target_sla_minutes
    #   <p>Target duration in minutes within which an SLA should be completed.</p>
    #   @return [Integer]
    class CaseSlaConfiguration < Struct.new(
      :name,
      :type,
      :field_id,
      :target_field_values,
      :target_sla_minutes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the overall participant interactions at the contact level.</p>
    # @!attribute multi_party
    #   <p>A boolean flag indicating whether multiparty chat or supervisor barge were enabled on this
    #      contact.</p>
    #   @return [Boolean]
    # @!attribute total_messages
    #   <p>The number of chat messages on the contact.</p>
    #   @return [Integer]
    # @!attribute total_bot_messages
    #   <p>The total number of bot and automated messages on a chat contact.</p>
    #   @return [Integer]
    # @!attribute total_bot_message_length_in_chars
    #   <p>The total number of characters from bot and automated messages on a chat contact.</p>
    #   @return [Integer]
    # @!attribute conversation_close_time_in_millis
    #   <p>The time it took for a contact to end after the last customer message.</p>
    #   @return [Integer]
    # @!attribute conversation_turn_count
    #   <p>The number of conversation turns in a chat contact, which represents the back-and-forth
    #      exchanges between customer and other participants.</p>
    #   @return [Integer]
    # @!attribute agent_first_response_timestamp
    #   <p>The agent first response timestamp for a chat contact.</p>
    #   @return [Time]
    # @!attribute agent_first_response_time_in_millis
    #   <p>The time for an agent to respond after obtaining a chat contact.</p>
    #   @return [Integer]
    class ChatContactMetrics < Struct.new(
      :multi_party,
      :total_messages,
      :total_bot_messages,
      :total_bot_message_length_in_chars,
      :conversation_close_time_in_millis,
      :conversation_turn_count,
      :agent_first_response_timestamp,
      :agent_first_response_time_in_millis,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Chat integration event containing payload to perform different chat actions such as:</p>
    #          <ul>
    #             <li>
    #                <p>Sending a chat message</p>
    #             </li>
    #             <li>
    #                <p>Sending a chat event, such as typing</p>
    #             </li>
    #             <li>
    #                <p>Disconnecting from a chat</p>
    #             </li>
    #          </ul>
    # @!attribute type
    #   <p>Type of chat integration event. </p>
    #   @return [String]
    # @!attribute content_type
    #   <p>Type of content. This is required when <code>Type</code> is <code>MESSAGE</code> or
    #       <code>EVENT</code>. </p>
    #            <ul>
    #               <li>
    #                  <p>For allowed message content types, see the <code>ContentType</code> parameter in the
    #         <a href="https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_SendMessage.html">SendMessage</a> topic in the <i>Amazon Connect Participant Service API
    #         Reference</i>.</p>
    #               </li>
    #               <li>
    #                  <p>For allowed event content types, see the <code>ContentType</code> parameter in the <a href="https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_SendEvent.html">SendEvent</a> topic in the <i>Amazon Connect Participant Service API
    #         Reference</i>. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute content
    #   <p>Content of the message or event. This is required when <code>Type</code> is
    #       <code>MESSAGE</code> and for certain <code>ContentTypes</code> when <code>Type</code> is
    #       <code>EVENT</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>For allowed message content, see the <code>Content</code> parameter in the <a href="https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_SendMessage.html">SendMessage</a> topic in the <i>Amazon Connect Participant Service API
    #         Reference</i>.</p>
    #               </li>
    #               <li>
    #                  <p>For allowed event content, see the <code>Content</code> parameter in the <a href="https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_SendEvent.html">SendEvent</a> topic in the <i>Amazon Connect Participant Service API
    #         Reference</i>. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ChatEvent < Struct.new(
      :type,
      :content_type,
      :content,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A chat message.</p>
    # @!attribute content_type
    #   <p>The type of the content. Supported types are <code>text/plain</code>,
    #       <code>text/markdown</code>, <code>application/json</code>, and
    #       <code>application/vnd.amazonaws.connect.message.interactive.response</code>.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the chat message. </p>
    #            <ul>
    #               <li>
    #                  <p>For <code>text/plain</code> and <code>text/markdown</code>, the Length Constraints are
    #        Minimum of 1, Maximum of 1024. </p>
    #               </li>
    #               <li>
    #                  <p>For <code>application/json</code>, the Length Constraints are Minimum of 1, Maximum of
    #        12000. </p>
    #               </li>
    #               <li>
    #                  <p>For <code>application/vnd.amazonaws.connect.message.interactive.response</code>, the
    #        Length Constraints are Minimum of 1, Maximum of 12288.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ChatMessage < Struct.new(
      :content_type,
      :content,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about how agent, bot, and customer interact in a chat contact.</p>
    # @!attribute chat_contact_metrics
    #   <p>Information about the overall participant interactions at the contact level.</p>
    #   @return [Types::ChatContactMetrics]
    # @!attribute agent_metrics
    #   <p>Information about agent interactions in a contact.</p>
    #   @return [Types::ParticipantMetrics]
    # @!attribute customer_metrics
    #   <p>Information about customer interactions in a contact.</p>
    #   @return [Types::ParticipantMetrics]
    class ChatMetrics < Struct.new(
      :chat_contact_metrics,
      :agent_metrics,
      :customer_metrics,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information for the chat participant role.</p>
    # @!attribute participant_timer_config_list
    #   <p>A list of participant timers. You can specify any unique combination of role and timer type.
    #      Duplicate entries error out the request with a 400.</p>
    #   @return [Array<Types::ParticipantTimerConfiguration>]
    class ChatParticipantRoleConfig < Struct.new(
      :participant_timer_config_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The streaming configuration, such as the Amazon SNS streaming endpoint.</p>
    # @!attribute streaming_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the standard Amazon SNS topic. The Amazon Resource Name (ARN) of the streaming endpoint that is used
    #      to publish real-time message streaming for chat conversations.</p>
    #   @return [String]
    class ChatStreamingConfiguration < Struct.new(
      :streaming_endpoint_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) for Amazon Connect instances or traffic distribution groups that phone number inbound traffic is routed through. You must enter <code>InstanceId</code> or <code>TargetArn</code>. </p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance that phone numbers are claimed to. You
    #      can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the
    #       instance ID</a> in the Amazon Resource Name (ARN) of the instance. You must enter <code>InstanceId</code> or <code>TargetArn</code>. </p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number you want to claim. Phone numbers are formatted <code>[+] [country code]
    #       [subscriber number including area code]</code>.</p>
    #   @return [String]
    # @!attribute phone_number_description
    #   <p>The description of the phone number.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #            <p>Pattern: <code>^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$</code>
    #            </p>
    #   @return [String]
    class ClaimPhoneNumberRequest < Struct.new(
      :target_arn,
      :instance_id,
      :phone_number,
      :phone_number_description,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #   @return [String]
    # @!attribute phone_number_arn
    #   <p>The Amazon Resource Name (ARN) of the phone number.</p>
    #   @return [String]
    class ClaimPhoneNumberResponse < Struct.new(
      :phone_number_id,
      :phone_number_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a phone number that has been claimed to your Amazon Connect instance
    #    or traffic distribution group.</p>
    # @!attribute phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #   @return [String]
    # @!attribute phone_number_arn
    #   <p>The Amazon Resource Name (ARN) of the phone number.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number. Phone numbers are formatted <code>[+] [country code] [subscriber number including area code]</code>.</p>
    #   @return [String]
    # @!attribute phone_number_country_code
    #   <p>The ISO country code.</p>
    #   @return [String]
    # @!attribute phone_number_type
    #   <p>The type of phone number.</p>
    #   @return [String]
    # @!attribute phone_number_description
    #   <p>The description of the phone number.</p>
    #   @return [String]
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) for Amazon Connect instances or traffic distribution groups that phone number inbound traffic is routed through.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance that phone numbers are claimed to. You
    #      can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the
    #       instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute phone_number_status
    #   <p>The status of the phone number.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CLAIMED</code> means the previous <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_ClaimPhoneNumber.html">ClaimPhoneNumber</a> or <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdatePhoneNumber.html">UpdatePhoneNumber</a> operation succeeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code> means a <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_ClaimPhoneNumber.html">ClaimPhoneNumber</a>, <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdatePhoneNumber.html">UpdatePhoneNumber</a>, or <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdatePhoneNumberMetadata.html">UpdatePhoneNumberMetadata</a> operation is still in progress and has not yet completed.
    #        You can call <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html">DescribePhoneNumber</a> at
    #        a later time to verify if the previous operation has completed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> indicates that the previous <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_ClaimPhoneNumber.html">ClaimPhoneNumber</a> or <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdatePhoneNumber.html">UpdatePhoneNumber</a> operation has failed. It will include a message indicating the
    #        failure reason. A common reason for a failure may be that the <code>TargetArn</code> value you
    #        are claiming or updating a phone number to has reached its limit of total claimed numbers. If
    #        you received a <code>FAILED</code> status from a <code>ClaimPhoneNumber</code> API call, you
    #        have one day to retry claiming the phone number before the number is released back to the
    #        inventory for other customers to claim.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>You will not be billed for the phone number during the 1-day period if number claiming
    #       fails. </p>
    #            </note>
    #   @return [Types::PhoneNumberStatus]
    # @!attribute source_phone_number_arn
    #   <p>The claimed phone number ARN that was previously imported from the external service, such as
    #       Amazon Web Services End User Messaging. If it is from Amazon Web Services End User Messaging, it
    #      looks like the ARN of the phone number that was imported from Amazon Web Services End User
    #      Messaging.</p>
    #   @return [String]
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
      :source_phone_number_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of conditions which would be applied together with an <code>AND</code>
    #    condition.</p>
    # @!attribute tag_conditions
    #   <p>A leaf node condition which can be used to specify a tag condition.</p>
    #   @return [Array<Types::TagCondition>]
    class CommonAttributeAndCondition < Struct.new(
      :tag_conditions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Request to CompleteAttachedFileUpload API
    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute file_id
    #   <p>The unique identifier of the attached file resource.</p>
    #   @return [String]
    # @!attribute associated_resource_arn
    #   <p>The resource to which the attached file is (being) uploaded to. The supported resources are
    #       <a href="https://docs.aws.amazon.com/connect/latest/adminguide/cases.html">Cases</a> and <a href="https://docs.aws.amazon.com/connect/latest/adminguide/setup-email-channel.html">Email</a>.</p>
    #            <note>
    #               <p>This value must be a valid ARN.</p>
    #            </note>
    #   @return [String]
    class CompleteAttachedFileUploadRequest < Struct.new(
      :instance_id,
      :file_id,
      :associated_resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Response from CompleteAttachedFileUpload API
    class CompleteAttachedFileUploadResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A leaf node condition which can be used to specify a ProficiencyName, ProficiencyValue and
    #    ProficiencyLimit.</p>
    # @!attribute string_condition
    #   <p>A leaf node condition which can be used to specify a string condition.</p>
    #            <note>
    #               <p>The currently supported values for <code>FieldName</code> are <code>name</code> and 
    #        <code>value</code>.</p>
    #            </note>
    #   @return [Types::StringCondition]
    # @!attribute number_condition
    #   <p>A leaf node condition which can be used to specify a numeric condition.</p>
    #   @return [Types::NumberCondition]
    class Condition < Struct.new(
      :string_condition,
      :number_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Request processing failed because dependent condition failed.</p>
    # @!attribute message
    #   @return [String]
    class ConditionalOperationFailedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Operation cannot be performed at this time as there is a conflict with another operation or
    #    contact state.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information required to join the call.</p>
    # @!attribute attendee
    #   <p>The attendee information, including attendee ID and join token.</p>
    #   @return [Types::Attendee]
    # @!attribute meeting
    #   <p>A meeting created using the Amazon Chime SDK.</p>
    #   @return [Types::Meeting]
    class ConnectionData < Struct.new(
      :attendee,
      :meeting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a contact.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the contact.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier for the contact.</p>
    #   @return [String]
    # @!attribute initial_contact_id
    #   <p>If this contact is related to other contacts, this is the ID of the initial contact.</p>
    #   @return [String]
    # @!attribute previous_contact_id
    #   <p>If this contact is not the first contact, this is the ID of the previous contact.</p>
    #   @return [String]
    # @!attribute contact_association_id
    #   <p>This is the root contactId which is used as a unique identifier for all subsequent contacts
    #      in a contact tree.</p>
    #   @return [String]
    # @!attribute initiation_method
    #   <p>Indicates how the contact was initiated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the contact.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the contact.</p>
    #   @return [String]
    # @!attribute channel
    #   <p>How the contact reached your contact center.</p>
    #   @return [String]
    # @!attribute queue_info
    #   <p>If this contact was queued, this contains information about the queue. </p>
    #   @return [Types::QueueInfo]
    # @!attribute agent_info
    #   <p>Information about the agent who accepted the contact.</p>
    #   @return [Types::AgentInfo]
    # @!attribute initiation_timestamp
    #   <p>The date and time this contact was initiated, in UTC time. For <code>INBOUND</code>, this is
    #      when the contact arrived. For <code>OUTBOUND</code>, this is when the agent began dialing. For
    #       <code>CALLBACK</code>, this is when the callback contact was created. For <code>TRANSFER</code>
    #      and <code>QUEUE_TRANSFER</code>, this is when the transfer was initiated. For <code>API</code>,
    #      this is when the request arrived. For <code>EXTERNAL_OUTBOUND</code>, this is when the agent
    #      started dialing the external participant. For <code>MONITOR</code>, this is when the supervisor
    #      started listening to a contact.</p>
    #   @return [Time]
    # @!attribute disconnect_timestamp
    #   <p>The date and time that the customer endpoint disconnected from the current contact, in UTC
    #      time. In transfer scenarios, the DisconnectTimestamp of the previous contact indicates the date
    #      and time when that contact ended.</p>
    #   @return [Time]
    # @!attribute last_update_timestamp
    #   <p>The timestamp when contact was last updated.</p>
    #   @return [Time]
    # @!attribute last_paused_timestamp
    #   <p>The timestamp when the contact was last paused.</p>
    #   @return [Time]
    # @!attribute last_resumed_timestamp
    #   <p>The timestamp when the contact was last resumed.</p>
    #   @return [Time]
    # @!attribute total_pause_count
    #   <p>Total pause count for a contact.</p>
    #   @return [Integer]
    # @!attribute total_pause_duration_in_seconds
    #   <p>Total pause duration for a contact in seconds.</p>
    #   @return [Integer]
    # @!attribute scheduled_timestamp
    #   <p>The timestamp, in Unix epoch time format, at which to start running the inbound flow.
    #     </p>
    #   @return [Time]
    # @!attribute related_contact_id
    #   <p>The contactId that is <a href="https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html#relatedcontactid">related</a> to this
    #      contact.</p>
    #   @return [String]
    # @!attribute wisdom_info
    #   <p>Information about Amazon Connect Wisdom.</p>
    #   @return [Types::WisdomInfo]
    # @!attribute customer_id
    #   <p>The customer's identification number. For example, the <code>CustomerId</code> may be a
    #      customer number from your CRM. You can create a Lambda function to pull the unique customer ID of
    #      the caller from your CRM system. If you enable Amazon Connect Voice ID capability, this
    #      attribute is populated with the <code>CustomerSpeakerId</code> of the caller.</p>
    #   @return [String]
    # @!attribute customer_endpoint
    #   <p>The customer or external third party participant endpoint.</p>
    #   @return [Types::EndpointInfo]
    # @!attribute system_endpoint
    #   <p>The system endpoint. For <code>INBOUND</code>, this is the phone number or email address
    #      that the customer dialed. For <code>OUTBOUND</code> and <code>EXTERNAL_OUTBOUND</code>, this is
    #      the outbound caller ID number assigned to the outbound queue that is used to dial the customer.
    #      For callback, this shows up as Softphone for calls handled by agents with softphone.</p>
    #   @return [Types::EndpointInfo]
    # @!attribute queue_time_adjustment_seconds
    #   <p>An integer that represents the queue time adjust to be applied to the contact, in seconds
    #      (longer / larger queue time are routed preferentially). Cannot be specified if the QueuePriority
    #      is specified. Must be statically defined and a valid integer value.</p>
    #   @return [Integer]
    # @!attribute queue_priority
    #   <p>An integer that represents the queue priority to be applied to the contact (lower priorities
    #      are routed preferentially). Cannot be specified if the QueueTimeAdjustmentSeconds is specified.
    #      Must be statically defined, must be larger than zero, and a valid integer value. Default Value is
    #      5.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>Tags associated with the contact. This contains both Amazon Web Services generated and
    #      user-defined tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute connected_to_system_timestamp
    #   <p>The timestamp when customer endpoint connected to Amazon Connect.</p>
    #   @return [Time]
    # @!attribute routing_criteria
    #   <p>Latest routing criteria on the contact.</p>
    #   @return [Types::RoutingCriteria]
    # @!attribute customer
    #   <p>Information about the Customer on the contact.</p>
    #   @return [Types::Customer]
    # @!attribute campaign
    #   <p>Information associated with a campaign.</p>
    #   @return [Types::Campaign]
    # @!attribute answering_machine_detection_status
    #   <p>Indicates how an <a href="https://docs.aws.amazon.com/connect/latest/adminguide/how-to-create-campaigns.html">outbound campaign</a> call is
    #      actually disposed if the contact is connected to Amazon Connect.</p>
    #   @return [String]
    # @!attribute customer_voice_activity
    #   <p>Information about customer’s voice activity.</p>
    #   @return [Types::CustomerVoiceActivity]
    # @!attribute quality_metrics
    #   <p>Information about the quality of the participant's media connection.</p>
    #   @return [Types::QualityMetrics]
    # @!attribute chat_metrics
    #   <p>Information about how agent, bot, and customer interact in a chat contact.</p>
    #   @return [Types::ChatMetrics]
    # @!attribute disconnect_details
    #   <p>Information about the call disconnect experience.</p>
    #   @return [Types::DisconnectDetails]
    # @!attribute additional_email_recipients
    #   <p>List of additional email addresses for an email contact.</p>
    #   @return [Types::AdditionalEmailRecipients]
    # @!attribute segment_attributes
    #   <p>A set of system defined key-value pairs stored on individual contact segments using an
    #      attribute map. The attributes are standard Amazon Connect attributes and can be accessed in
    #      flows. Attribute keys can include only alphanumeric, -, and _ characters. This field can be used
    #      to show channel subtype. For example, <code>connect:Guide</code> or
    #      <code>connect:SMS</code>.</p>
    #   @return [Hash<String, Types::SegmentAttributeValue>]
    # @!attribute recordings
    #   <p>If recording was enabled, this is information about the recordings.</p>
    #   @return [Array<Types::RecordingInfo>]
    # @!attribute disconnect_reason
    #   <p>The disconnect reason for the contact.</p>
    #   @return [String]
    # @!attribute contact_evaluations
    #   <p>Information about the contact evaluations where the key is the FormId, which is a unique
    #      identifier for the form.</p>
    #   @return [Hash<String, Types::ContactEvaluation>]
    # @!attribute contact_details
    #   <p>A map of string key/value pairs that contain user-defined attributes which are lightly typed
    #      within the contact. This object is used only for task contacts.</p>
    #   @return [Types::ContactDetails]
    # @!attribute attributes
    #   <p>The attributes of the contact.</p>
    #   @return [Hash<String, String>]
    class Contact < Struct.new(
      :arn,
      :id,
      :initial_contact_id,
      :previous_contact_id,
      :contact_association_id,
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
      :customer_id,
      :customer_endpoint,
      :system_endpoint,
      :queue_time_adjustment_seconds,
      :queue_priority,
      :tags,
      :connected_to_system_timestamp,
      :routing_criteria,
      :customer,
      :campaign,
      :answering_machine_detection_status,
      :customer_voice_activity,
      :quality_metrics,
      :chat_metrics,
      :disconnect_details,
      :additional_email_recipients,
      :segment_attributes,
      :recordings,
      :disconnect_reason,
      :contact_evaluations,
      :contact_details,
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that defines search criteria for contacts using analysis outputs from Amazon Connect Contact Lens.</p>
    # @!attribute transcript
    #   <p>Search criteria based on transcript analyzed by Amazon Connect Contact Lens.</p>
    #   @return [Types::Transcript]
    class ContactAnalysis < Struct.new(
      :transcript,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The contact configuration for push notification registration.</p>
    # @!attribute contact_id
    #   <p>The identifier of the contact within the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute participant_role
    #   <p>The role of the participant in the chat conversation.</p>
    #            <note>
    #               <p>Only <code>CUSTOMER</code> is currently supported. Any other values other than
    #        <code>CUSTOMER</code> will result in an exception (4xx error).</p>
    #            </note>
    #   @return [String]
    # @!attribute include_raw_message
    #   <p>Whether to include raw connect message in the push notification payload. Default is
    #       <code>False</code>.</p>
    #   @return [Boolean]
    class ContactConfiguration < Struct.new(
      :contact_id,
      :participant_role,
      :include_raw_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:include_raw_message] = false unless options.key?(:include_raw_message)
        super
      end
    end

    # <p>Request object with information to create a contact.</p>
    # @!attribute system_endpoint
    #   <p>Endpoint associated with the Amazon Connect instance from which outbound contact will be
    #      initiated for the campaign.</p>
    #   @return [Types::Endpoint]
    # @!attribute customer_endpoint
    #   <p>Endpoint of the customer for which contact will be initiated.</p>
    #   @return [Types::Endpoint]
    # @!attribute request_identifier
    #   <p>Identifier to uniquely identify individual requests in the batch.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The identifier of the queue associated with the Amazon Connect instance in which
    #      contacts that are created will be queued.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>List of attributes to be stored in a contact.</p>
    #   @return [Hash<String, String>]
    # @!attribute campaign
    #   <p>Structure to store information associated with a campaign.</p>
    #   @return [Types::Campaign]
    class ContactDataRequest < Struct.new(
      :system_endpoint,
      :customer_endpoint,
      :request_identifier,
      :queue_id,
      :attributes,
      :campaign,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A map of string key/value pairs that contain user-defined attributes which are lightly typed
    #    within the contact. This object is used only for task contacts. </p>
    # @!attribute name
    #   <p>The name of the contact details.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Teh description of the contact details.</p>
    #   @return [String]
    class ContactDetails < Struct.new(
      :name,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the contact evaluations where the key is the FormId, which is a unique
    #    identifier for the form.</p>
    # @!attribute form_id
    #   <p>The <code>FormId</code> of the contact evaluation.</p>
    #   @return [String]
    # @!attribute evaluation_arn
    #   <p>The Amazon Resource Name for the evaluation form. It is always present.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the evaluation.</p>
    #   @return [String]
    # @!attribute start_timestamp
    #   <p>The date and time when the evaluation was started, in UTC time.</p>
    #   @return [Time]
    # @!attribute end_timestamp
    #   <p>The date and time when the evaluation was submitted, in UTC time.</p>
    #   @return [Time]
    # @!attribute delete_timestamp
    #   <p>The date and time when the evaluation was deleted, in UTC time.</p>
    #   @return [Time]
    # @!attribute export_location
    #   <p>The path where evaluation was exported.</p>
    #   @return [String]
    class ContactEvaluation < Struct.new(
      :form_id,
      :evaluation_arn,
      :status,
      :start_timestamp,
      :end_timestamp,
      :delete_timestamp,
      :export_location,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters user data based on the contact information that is associated to the users. It
    #    contains a list of <a href="https://docs.aws.amazon.com/connect/latest/adminguide/about-contact-states.html">contact states</a>.</p>
    # @!attribute contact_states
    #   <p>A list of up to 9 <a href="https://docs.aws.amazon.com/connect/latest/adminguide/about-contact-states.html">contact states</a>.</p>
    #   @return [Array<String>]
    class ContactFilter < Struct.new(
      :contact_states,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a flow.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the flow.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the flow.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the flow.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the flow. For descriptions of the available types, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html#contact-flow-types">Choose a flow type</a> in the <i>Amazon Connect Administrator
    #      Guide</i>.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The type of flow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the flow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the flow.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The JSON string that represents the content of the flow. For an example, see <a href="https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html">Example
    #       flow in Amazon Connect Flow language</a>. </p>
    #            <p>Length Constraints: Minimum length of 1. Maximum length of 256000.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute flow_content_sha256
    #   <p>Indicates the checksum value of the flow content.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The identifier of the flow version.</p>
    #   @return [Integer]
    # @!attribute version_description
    #   <p>The description of the flow version.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The time at which the flow was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The region in which the flow was last modified</p>
    #   @return [String]
    class ContactFlow < Struct.new(
      :arn,
      :id,
      :name,
      :type,
      :state,
      :status,
      :description,
      :content,
      :tags,
      :flow_content_sha256,
      :version,
      :version_description,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a flow module.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the flow module.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the flow module.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The JSON string that represents the content of the flow. For an example, see <a href="https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html">Example
    #       flow in Amazon Connect Flow language</a>. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the flow module.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The type of flow module.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the flow module.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    class ContactFlowModule < Struct.new(
      :arn,
      :id,
      :name,
      :content,
      :description,
      :state,
      :status,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The search criteria to be used to return flow modules.</p>
    # @!attribute or_conditions
    #   <p>A list of conditions which would be applied together with an <code>OR</code>
    #      condition.</p>
    #   @return [Array<Types::ContactFlowModuleSearchCriteria>]
    # @!attribute and_conditions
    #   <p>A list of conditions which would be applied together with an <code>AND</code>
    #      condition.</p>
    #   @return [Array<Types::ContactFlowModuleSearchCriteria>]
    # @!attribute string_condition
    #   <p>A leaf node condition which can be used to specify a string condition.</p>
    #   @return [Types::StringCondition]
    # @!attribute state_condition
    #   <p>The state of the flow.</p>
    #   @return [String]
    # @!attribute status_condition
    #   <p>The status of the flow.</p>
    #   @return [String]
    class ContactFlowModuleSearchCriteria < Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition,
      :state_condition,
      :status_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The search criteria to be used to return flow modules.</p>
    # @!attribute tag_filter
    #   <p>An object that can be used to specify Tag conditions inside the <code>SearchFilter</code>.
    #      This accepts an <code>OR</code> of <code>AND</code> (List of List) input where: </p>
    #            <ul>
    #               <li>
    #                  <p>Top level list specifies conditions that need to be applied with <code>OR</code>
    #        operator</p>
    #               </li>
    #               <li>
    #                  <p>Inner list specifies conditions that need to be applied with <code>AND</code>
    #        operator.</p>
    #               </li>
    #            </ul>
    #   @return [Types::ControlPlaneTagFilter]
    class ContactFlowModuleSearchFilter < Struct.new(
      :tag_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a flow.</p>
    # @!attribute id
    #   <p>The identifier of the flow module.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the flow module.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the flow module.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The type of flow module.</p>
    #   @return [String]
    class ContactFlowModuleSummary < Struct.new(
      :id,
      :arn,
      :name,
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The flow has not been published.</p>
    # @!attribute message
    #   @return [String]
    class ContactFlowNotPublishedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The search criteria to be used to return flows.</p>
    # @!attribute or_conditions
    #   <p>A list of conditions which would be applied together with an <code>OR</code>
    #      condition.</p>
    #   @return [Array<Types::ContactFlowSearchCriteria>]
    # @!attribute and_conditions
    #   <p>A list of conditions which would be applied together with an <code>AND</code>
    #      condition.</p>
    #   @return [Array<Types::ContactFlowSearchCriteria>]
    # @!attribute string_condition
    #   <p>A leaf node condition which can be used to specify a string condition.</p>
    #   @return [Types::StringCondition]
    # @!attribute type_condition
    #   <p>The type of flow.</p>
    #   @return [String]
    # @!attribute state_condition
    #   <p>The state of the flow.</p>
    #   @return [String]
    # @!attribute status_condition
    #   <p>The status of the flow.</p>
    #   @return [String]
    class ContactFlowSearchCriteria < Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition,
      :type_condition,
      :state_condition,
      :status_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters to be applied to search results.</p>
    # @!attribute tag_filter
    #   <p>An object that can be used to specify Tag conditions inside the <code>SearchFilter</code>.
    #      This accepts an <code>OR</code> of <code>AND</code> (List of List) input where: </p>
    #            <ul>
    #               <li>
    #                  <p>Top level list specifies conditions that need to be applied with <code>OR</code>
    #        operator</p>
    #               </li>
    #               <li>
    #                  <p>Inner list specifies conditions that need to be applied with <code>AND</code>
    #        operator.</p>
    #               </li>
    #            </ul>
    #   @return [Types::ControlPlaneTagFilter]
    class ContactFlowSearchFilter < Struct.new(
      :tag_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a flow.</p>
    #          <p>You can also create and update flows using the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html">Amazon Connect
    #    Flow language</a>.</p>
    # @!attribute id
    #   <p>The identifier of the flow.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the flow.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the flow.</p>
    #   @return [String]
    # @!attribute contact_flow_type
    #   <p>The type of flow.</p>
    #   @return [String]
    # @!attribute contact_flow_state
    #   <p>The type of flow.</p>
    #   @return [String]
    # @!attribute contact_flow_status
    #   <p>The status of the flow.</p>
    #   @return [String]
    class ContactFlowSummary < Struct.new(
      :id,
      :arn,
      :name,
      :contact_flow_type,
      :contact_flow_state,
      :contact_flow_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a flow version's metadata.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the view version.</p>
    #   @return [String]
    # @!attribute version_description
    #   <p>The description of the flow version.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The identifier of the flow version.</p>
    #   @return [Integer]
    class ContactFlowVersionSummary < Struct.new(
      :arn,
      :version_description,
      :version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The object that contains information about metric being requested.</p>
    # @!attribute name
    #   <p>The name of the metric being retrieved in type String.</p>
    #   @return [String]
    class ContactMetricInfo < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Object containing information about metric requested for the contact.</p>
    # @!attribute name
    #   <p>The name of the metric being retrieved in type String.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Object result associated with the metric received.</p>
    #   @return [Types::ContactMetricValue]
    class ContactMetricResult < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Object which contains the number.</p>
    # @!attribute number
    #   <p>The number of type Double. This number is the contact's position in queue.</p>
    #   @return [Float]
    class ContactMetricValue < Struct.new(
      :number,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Number < ContactMetricValue; end
      class Unknown < ContactMetricValue; end
    end

    # <p>The contact with the specified ID is not active or does not exist. Applies to Voice calls
    #    only, not to Chat or Task contacts.</p>
    # @!attribute message
    #   <p>The message.</p>
    #   @return [String]
    class ContactNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information of returned contact.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the contact.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the contact summary.</p>
    #   @return [String]
    # @!attribute initial_contact_id
    #   <p>If this contact is related to other contacts, this is the ID of the initial contact.</p>
    #   @return [String]
    # @!attribute previous_contact_id
    #   <p>If this contact is not the first contact, this is the ID of the previous contact.</p>
    #   @return [String]
    # @!attribute initiation_method
    #   <p>Indicates how the contact was initiated.</p>
    #   @return [String]
    # @!attribute channel
    #   <p>How the contact reached your contact center.</p>
    #   @return [String]
    # @!attribute queue_info
    #   <p>If this contact was queued, this contains information about the queue.</p>
    #   @return [Types::ContactSearchSummaryQueueInfo]
    # @!attribute agent_info
    #   <p>Information about the agent who accepted the contact.</p>
    #   @return [Types::ContactSearchSummaryAgentInfo]
    # @!attribute initiation_timestamp
    #   <p>The date and time this contact was initiated, in UTC time. For <code>INBOUND</code>, this is
    #      when the contact arrived. For <code>OUTBOUND</code>, this is when the agent began dialing. For
    #       <code>CALLBACK</code>, this is when the callback contact was created. For <code>TRANSFER</code>
    #      and <code>QUEUE_TRANSFER</code>, this is when the transfer was initiated. For API, this is when
    #      the request arrived. For <code>EXTERNAL_OUTBOUND</code>, this is when the agent started dialing
    #      the external participant. For <code>MONITOR</code>, this is when the supervisor started listening
    #      to a contact.</p>
    #   @return [Time]
    # @!attribute disconnect_timestamp
    #   <p>The timestamp when the customer endpoint disconnected from Amazon Connect.</p>
    #   @return [Time]
    # @!attribute scheduled_timestamp
    #   <p>The timestamp, in Unix epoch time format, at which to start running the inbound flow.</p>
    #   @return [Time]
    # @!attribute segment_attributes
    #   <p>Set of segment attributes for a contact.</p>
    #   @return [Hash<String, Types::ContactSearchSummarySegmentAttributeValue>]
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
      :scheduled_timestamp,
      :segment_attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the agent who accepted the contact.</p>
    # @!attribute id
    #   <p>The identifier of the agent who accepted the contact.</p>
    #   @return [String]
    # @!attribute connected_to_agent_timestamp
    #   <p>The timestamp when the contact was connected to the agent.</p>
    #   @return [Time]
    class ContactSearchSummaryAgentInfo < Struct.new(
      :id,
      :connected_to_agent_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>If this contact was queued, this contains information about the queue.</p>
    # @!attribute id
    #   <p>The unique identifier for the queue.</p>
    #   @return [String]
    # @!attribute enqueue_timestamp
    #   <p>The timestamp when the contact was added to the queue.</p>
    #   @return [Time]
    class ContactSearchSummaryQueueInfo < Struct.new(
      :id,
      :enqueue_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The value of a segment attribute. This is structured as a map with a single key-value pair.
    #    The key 'valueString' indicates that the attribute type is a string, and its corresponding value
    #    is the actual string value of the segment attribute.</p>
    # @!attribute value_string
    #   <p>The value of a segment attribute represented as a string.</p>
    #   @return [String]
    class ContactSearchSummarySegmentAttributeValue < Struct.new(
      :value_string,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that can be used to specify Tag conditions inside the <code>SearchFilter</code>.
    #    This accepts an <code>OR</code> or <code>AND</code> (List of List) input where: </p>
    #          <ul>
    #             <li>
    #                <p>The top level list specifies conditions that need to be applied with <code>OR</code>
    #      operator.</p>
    #             </li>
    #             <li>
    #                <p>The inner list specifies conditions that need to be applied with <code>AND</code>
    #      operator.</p>
    #             </li>
    #          </ul>
    # @!attribute or_conditions
    #   <p>A list of conditions which would be applied together with an <code>OR</code>
    #      condition.</p>
    #   @return [Array<Types::CommonAttributeAndCondition>]
    # @!attribute and_condition
    #   <p>A list of conditions which would be applied together with an <code>AND</code>
    #      condition.</p>
    #   @return [Types::CommonAttributeAndCondition]
    # @!attribute tag_condition
    #   <p>A leaf node condition which can be used to specify a tag condition, for example, <code>HAVE
    #       BPO = 123</code>. </p>
    #   @return [Types::TagCondition]
    class ControlPlaneAttributeFilter < Struct.new(
      :or_conditions,
      :and_condition,
      :tag_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that can be used to specify Tag conditions inside the <code>SearchFilter</code>.
    #    This accepts an <code>OR</code> of <code>AND</code> (List of List) input where: </p>
    #          <ul>
    #             <li>
    #                <p>Top level list specifies conditions that need to be applied with <code>OR</code>
    #      operator</p>
    #             </li>
    #             <li>
    #                <p>Inner list specifies conditions that need to be applied with <code>AND</code>
    #      operator.</p>
    #             </li>
    #          </ul>
    # @!attribute or_conditions
    #   <p>A list of conditions which would be applied together with an <code>OR</code> condition.
    #     </p>
    #   @return [Array<Array<Types::TagCondition>>]
    # @!attribute and_conditions
    #   <p>A list of conditions which would be applied together with an <code>AND</code>
    #      condition.</p>
    #   @return [Array<Types::TagCondition>]
    # @!attribute tag_condition
    #   <p>A leaf node condition which can be used to specify a tag condition. </p>
    #   @return [Types::TagCondition]
    class ControlPlaneTagFilter < Struct.new(
      :or_conditions,
      :and_conditions,
      :tag_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that can be used to specify Tag conditions or Hierarchy Group conditions inside
    #    the <code>SearchFilter</code>.</p>
    #          <p>This accepts an <code>OR</code> of <code>AND</code> (List of List) input where:</p>
    #          <ul>
    #             <li>
    #                <p>The top level list specifies conditions that need to be applied with <code>OR</code>
    #      operator</p>
    #             </li>
    #             <li>
    #                <p>The inner list specifies conditions that need to be applied with <code>AND</code>
    #      operator.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>Only one field can be populated. Maximum number of allowed Tag conditions is 25. Maximum
    #     number of allowed Hierarchy Group conditions is 20. </p>
    #          </note>
    # @!attribute or_conditions
    #   <p>A list of conditions which would be applied together with an <code>OR</code>
    #      condition.</p>
    #   @return [Array<Types::AttributeAndCondition>]
    # @!attribute and_condition
    #   <p>A list of conditions which would be applied together with an <code>AND</code>
    #      condition.</p>
    #   @return [Types::AttributeAndCondition]
    # @!attribute tag_condition
    #   <p>A leaf node condition which can be used to specify a tag condition, for example, <code>HAVE
    #       BPO = 123</code>. </p>
    #   @return [Types::TagCondition]
    # @!attribute hierarchy_group_condition
    #   <p>A leaf node condition which can be used to specify a hierarchy group condition.</p>
    #   @return [Types::HierarchyGroupCondition]
    class ControlPlaneUserAttributeFilter < Struct.new(
      :or_conditions,
      :and_condition,
      :tag_condition,
      :hierarchy_group_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the status.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the status.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the status.</p>
    #   @return [String]
    # @!attribute display_order
    #   <p>The display order of the status.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    class CreateAgentStatusRequest < Struct.new(
      :instance_id,
      :name,
      :description,
      :state,
      :display_order,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_status_arn
    #   <p>The Amazon Resource Name (ARN) of the agent status.</p>
    #   @return [String]
    # @!attribute agent_status_id
    #   <p>The identifier of the agent status.</p>
    #   @return [String]
    class CreateAgentStatusResponse < Struct.new(
      :agent_status_arn,
      :agent_status_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>CreateCase</code> action definition.</p>
    # @!attribute fields
    #   <p>An array of objects with <code>Field ID</code> and <code>Value</code> data.</p>
    #   @return [Array<Types::FieldValue>]
    # @!attribute template_id
    #   <p>A unique identifier of a template.</p>
    #   @return [String]
    class CreateCaseActionDefinition < Struct.new(
      :fields,
      :template_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the flow module.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the flow module. </p>
    #   @return [String]
    # @!attribute content
    #   <p>The JSON string that represents the content of the flow. For an example, see <a href="https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html">Example
    #       flow in Amazon Connect Flow language</a>. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class CreateContactFlowModuleRequest < Struct.new(
      :instance_id,
      :name,
      :description,
      :content,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the flow module.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the flow module.</p>
    #   @return [String]
    class CreateContactFlowModuleResponse < Struct.new(
      :id,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the flow.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the flow. For descriptions of the available types, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html#contact-flow-types">Choose a flow type</a> in the <i>Amazon Connect Administrator
    #      Guide</i>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the flow. </p>
    #   @return [String]
    # @!attribute content
    #   <p>The JSON string that represents the content of the flow. For an example, see <a href="https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html">Example
    #       flow in Amazon Connect Flow language</a>. </p>
    #            <p>Length Constraints: Minimum length of 1. Maximum length of 256000.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the flow status as either <code>SAVED</code> or <code>PUBLISHED</code>. The
    #       <code>PUBLISHED</code> status will initiate validation on the content. the <code>SAVED</code>
    #      status does not initiate validation of the content. <code>SAVED</code> |
    #      <code>PUBLISHED</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    class CreateContactFlowRequest < Struct.new(
      :instance_id,
      :name,
      :type,
      :description,
      :content,
      :status,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_flow_id
    #   <p>The identifier of the flow.</p>
    #   @return [String]
    # @!attribute contact_flow_arn
    #   <p>The Amazon Resource Name (ARN) of the flow.</p>
    #   @return [String]
    # @!attribute flow_content_sha256
    #   <p>Indicates the checksum value of the latest published flow content.</p>
    #   @return [String]
    class CreateContactFlowResponse < Struct.new(
      :contact_flow_id,
      :contact_flow_arn,
      :flow_content_sha256,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the flow version.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow.</p>
    #   @return [String]
    # @!attribute flow_content_sha256
    #   <p>Indicates the checksum value of the flow content.</p>
    #   @return [String]
    # @!attribute contact_flow_version
    #   <p>The identifier of the flow version.</p>
    #   @return [Integer]
    # @!attribute last_modified_time
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    class CreateContactFlowVersionRequest < Struct.new(
      :instance_id,
      :description,
      :contact_flow_id,
      :flow_content_sha256,
      :contact_flow_version,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_flow_arn
    #   <p>The Amazon Resource Name (ARN) of the flow.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The identifier of the flow version.</p>
    #   @return [Integer]
    class CreateContactFlowVersionResponse < Struct.new(
      :contact_flow_arn,
      :version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute related_contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #   @return [String]
    # @!attribute attributes
    #   <p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes, and can be accessed in flows just like any other contact attributes.</p>
    #            <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys
    #      can include only alphanumeric, dash, and underscore characters.</p>
    #   @return [Hash<String, String>]
    # @!attribute references
    #   <p>A formatted URL that is shown to an agent in the Contact Control Panel (CCP). Tasks can have
    #      the following reference types at the time of creation: <code>URL</code> | <code>NUMBER</code> |
    #       <code>STRING</code> | <code>DATE</code> | <code>EMAIL</code> | <code>ATTACHMENT</code>.</p>
    #   @return [Hash<String, Types::Reference>]
    # @!attribute channel
    #   <p>The channel for the contact.</p>
    #            <important>
    #               <p>The CHAT channel is not supported. The following information is incorrect. We're working to
    #       correct it.</p>
    #            </important>
    #   @return [String]
    # @!attribute initiation_method
    #   <p>Indicates how the contact was initiated. </p>
    #            <important>
    #               <p>CreateContact only supports the following initiation methods. Valid values by channel are: </p>
    #               <ul>
    #                  <li>
    #                     <p>For VOICE: <code>TRANSFER</code> and the subtype <code>connect:ExternalAudio</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>For EMAIL: <code>OUTBOUND</code> | <code>AGENT_REPLY</code> | <code>FLOW</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>For TASK: <code>API</code>
    #                     </p>
    #                  </li>
    #               </ul>
    #               <p>The other channels listed below are incorrect. We're working to correct this
    #       information.</p>
    #            </important>
    #   @return [String]
    # @!attribute expiry_duration_in_minutes
    #   <p>Number of minutes the contact will be active for before expiring</p>
    #   @return [Integer]
    # @!attribute user_info
    #   <p>User details for the contact</p>
    #            <important>
    #               <p>UserInfo is required when creating an EMAIL contact with <code>OUTBOUND</code> and
    #        <code>AGENT_REPLY</code> contact initiation methods.</p>
    #            </important>
    #   @return [Types::UserInfo]
    # @!attribute initiate_as
    #   <p>Initial state of the contact when it's created. Only TASK channel contacts can be initiated
    #      with <code>COMPLETED</code> state.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a the contact.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the contact.</p>
    #   @return [String]
    # @!attribute segment_attributes
    #   <p>A set of system defined key-value pairs stored on individual contact segments (unique
    #      contact ID) using an attribute map. The attributes are standard Amazon Connect attributes.
    #      They can be accessed in flows.</p>
    #            <p>Attribute keys can include only alphanumeric, -, and _.</p>
    #            <p>This field can be used to set Segment Contact Expiry as a duration in minutes.</p>
    #            <note>
    #               <p>To set contact expiry, a ValueMap must be specified containing the integer number of
    #       minutes the contact will be active for before expiring, with <code>SegmentAttributes</code> like
    #       { <code> "connect:ContactExpiry": {"ValueMap" : { "ExpiryDuration": { "ValueInteger":
    #        135}}}}</code>. </p>
    #            </note>
    #   @return [Hash<String, Types::SegmentAttributeValue>]
    # @!attribute previous_contact_id
    #   <p>The ID of the previous contact when creating a transfer contact. This value can be provided
    #      only for external audio contacts. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-integration.html">Integrate Amazon Connect Contact Lens
    #       with external voice systems</a> in the <i>Amazon Connect Administrator
    #       Guide</i>.</p>
    #   @return [String]
    class CreateContactRequest < Struct.new(
      :instance_id,
      :client_token,
      :related_contact_id,
      :attributes,
      :references,
      :channel,
      :initiation_method,
      :expiry_duration_in_minutes,
      :user_info,
      :initiate_as,
      :name,
      :description,
      :segment_attributes,
      :previous_contact_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #   @return [String]
    # @!attribute contact_arn
    #   <p>The Amazon Resource Name (ARN) of the created contact.</p>
    #   @return [String]
    class CreateContactResponse < Struct.new(
      :contact_id,
      :contact_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>The description of the email address.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute email_address
    #   <p>The email address, including the domain.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of email address</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class CreateEmailAddressRequest < Struct.new(
      :description,
      :instance_id,
      :email_address,
      :display_name,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute email_address_id
    #   <p>The identifier of the email address.</p>
    #   @return [String]
    # @!attribute email_address_arn
    #   <p>The Amazon Resource Name (ARN) of the email address.</p>
    #   @return [String]
    class CreateEmailAddressResponse < Struct.new(
      :email_address_id,
      :email_address_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute title
    #   <p>A title of the evaluation form.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the evaluation form.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Items that are part of the evaluation form.  The total number of sections and questions must not exceed 100 each.  Questions must be contained in a section.</p>
    #   @return [Array<Types::EvaluationFormItem>]
    # @!attribute scoring_strategy
    #   <p>A scoring strategy of the evaluation form.</p>
    #   @return [Types::EvaluationFormScoringStrategy]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class CreateEvaluationFormRequest < Struct.new(
      :instance_id,
      :title,
      :description,
      :items,
      :scoring_strategy,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluation_form_id
    #   <p>The unique identifier for the evaluation form.</p>
    #   @return [String]
    # @!attribute evaluation_form_arn
    #   <p>The Amazon Resource Name (ARN) for the evaluation form resource.</p>
    #   @return [String]
    class CreateEvaluationFormResponse < Struct.new(
      :evaluation_form_id,
      :evaluation_form_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute hours_of_operation_id
    #   <p>The identifier for the hours of operation</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the hours of operation override.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the hours of operation override.</p>
    #   @return [String]
    # @!attribute config
    #   <p>Configuration information for the hours of operation override: day, start time, and end
    #      time.</p>
    #   @return [Array<Types::HoursOfOperationOverrideConfig>]
    # @!attribute effective_from
    #   <p>The date from when the hours of operation override is effective.</p>
    #   @return [String]
    # @!attribute effective_till
    #   <p>The date until when the hours of operation override is effective.</p>
    #   @return [String]
    class CreateHoursOfOperationOverrideRequest < Struct.new(
      :instance_id,
      :hours_of_operation_id,
      :name,
      :description,
      :config,
      :effective_from,
      :effective_till,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hours_of_operation_override_id
    #   <p>The identifier for the hours of operation override.</p>
    #   @return [String]
    class CreateHoursOfOperationOverrideResponse < Struct.new(
      :hours_of_operation_override_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the hours of operation.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the hours of operation.</p>
    #   @return [String]
    # @!attribute time_zone
    #   <p>The time zone of the hours of operation.</p>
    #   @return [String]
    # @!attribute config
    #   <p>Configuration information for the hours of operation: day, start time, and end time.</p>
    #   @return [Array<Types::HoursOfOperationConfig>]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    class CreateHoursOfOperationRequest < Struct.new(
      :instance_id,
      :name,
      :description,
      :time_zone,
      :config,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #   @return [String]
    # @!attribute hours_of_operation_arn
    #   <p>The Amazon Resource Name (ARN) for the hours of operation.</p>
    #   @return [String]
    class CreateHoursOfOperationResponse < Struct.new(
      :hours_of_operation_id,
      :hours_of_operation_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>The idempotency token.</p>
    #   @return [String]
    # @!attribute identity_management_type
    #   <p>The type of identity management for your Amazon Connect users.</p>
    #   @return [String]
    # @!attribute instance_alias
    #   <p>The name for your instance.</p>
    #   @return [String]
    # @!attribute directory_id
    #   <p>The identifier for the directory.</p>
    #   @return [String]
    # @!attribute inbound_calls_enabled
    #   <p>Your contact center handles incoming contacts.</p>
    #   @return [Boolean]
    # @!attribute outbound_calls_enabled
    #   <p>Your contact center allows outbound calls.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, <code>{
    #       "tags": {"key1":"value1", "key2":"value2"} }</code>.</p>
    #   @return [Hash<String, String>]
    class CreateInstanceRequest < Struct.new(
      :client_token,
      :identity_management_type,
      :instance_alias,
      :directory_id,
      :inbound_calls_enabled,
      :outbound_calls_enabled,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier for the instance.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    class CreateInstanceResponse < Struct.new(
      :id,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute integration_type
    #   <p>The type of information to be ingested.</p>
    #   @return [String]
    # @!attribute integration_arn
    #   <p>The Amazon Resource Name (ARN) of the integration.</p>
    #            <note>
    #               <p>When integrating with Amazon Web Services End User Messaging, the Amazon Connect and
    #        Amazon Web Services End User Messaging instances must be in the same account.</p>
    #            </note>
    #   @return [String]
    # @!attribute source_application_url
    #   <p>The URL for the external application. This field is only required for the EVENT integration type.</p>
    #   @return [String]
    # @!attribute source_application_name
    #   <p>The name of the external application. This field is only required for the EVENT integration type.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>The type of the data source. This field is only required for the EVENT integration type.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    class CreateIntegrationAssociationRequest < Struct.new(
      :instance_id,
      :integration_type,
      :integration_arn,
      :source_application_url,
      :source_application_name,
      :source_type,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute integration_association_id
    #   <p>The identifier for the integration association.</p>
    #   @return [String]
    # @!attribute integration_association_arn
    #   <p>The Amazon Resource Name (ARN) for the association.</p>
    #   @return [String]
    class CreateIntegrationAssociationResponse < Struct.new(
      :integration_association_id,
      :integration_association_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance. </p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect.  Supports contacts in the CHAT channel and VOICE (WebRTC) channels. For WebRTC
    #      calls, this should be the initial contact ID that was generated when the contact was first
    #      created (from the StartWebRTCContact API) in the VOICE channel</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute participant_details
    #   <p>Information identifying the participant.</p>
    #            <important>
    #               <p>The only valid value for <code>ParticipantRole</code> is <code>CUSTOM_BOT</code> for chat
    #       contact and <code>CUSTOMER</code> for voice contact.</p>
    #            </important>
    #   @return [Types::ParticipantDetailsToAdd]
    class CreateParticipantRequest < Struct.new(
      :instance_id,
      :contact_id,
      :client_token,
      :participant_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute participant_credentials
    #   <p>The token used by the chat participant to call <code>CreateParticipantConnection</code>. The
    #      participant token is valid for the lifetime of a chat participant.</p>
    #   @return [Types::ParticipantTokenCredentials]
    # @!attribute participant_id
    #   <p>The identifier for a chat participant. The participantId for a chat participant is the same
    #      throughout the chat lifecycle.</p>
    #   @return [String]
    class CreateParticipantResponse < Struct.new(
      :participant_credentials,
      :participant_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute initial_contact_id
    #   <p>This is the contactId of the current contact that the
    #       <code>CreatePersistentContactAssociation</code> API is being called from.</p>
    #   @return [String]
    # @!attribute rehydration_type
    #   <p>The contactId chosen for rehydration depends on the type chosen.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENTIRE_PAST_SESSION</code>: Rehydrates a chat from the most recently terminated past
    #        chat contact of the specified past ended chat session. To use this type, provide the
    #         <code>initialContactId</code> of the past ended chat session in the
    #         <code>sourceContactId</code> field. In this type, Amazon Connect determines what the most
    #        recent chat contact on the past ended chat session and uses it to start a persistent chat.
    #       </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FROM_SEGMENT</code>: Rehydrates a chat from the specified past chat contact provided
    #        in the <code>sourceContactId</code> field. </p>
    #               </li>
    #            </ul>
    #            <p>The actual contactId used for rehydration is provided in the response of this API.</p>
    #            <p>To illustrate how to use rehydration type, consider the following example: A customer starts
    #      a chat session. Agent a1 accepts the chat and a conversation starts between the customer and
    #      Agent a1. This first contact creates a contact ID <b>C1</b>. Agent a1
    #      then transfers the chat to Agent a2. This creates another contact ID <b>C2</b>. At this point Agent a2 ends the chat. The customer is forwarded to the
    #      disconnect flow for a post chat survey that creates another contact ID <b>C3</b>. After the chat survey, the chat session ends. Later, the customer returns and
    #      wants to resume their past chat session. At this point, the customer can have following use
    #      cases: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Use Case 1</b>: The customer wants to continue the past chat
    #        session but they want to hide the post chat survey. For this they will use the following
    #        configuration:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <b>Configuration</b>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>SourceContactId = "C2"</p>
    #                           </li>
    #                           <li>
    #                              <p>RehydrationType = "FROM_SEGMENT"</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>Expected behavior</b>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>This starts a persistent chat session from the specified past ended contact (C2).
    #            Transcripts of past chat sessions C2 and C1 are accessible in the current persistent chat
    #            session. Note that chat segment C3 is dropped from the persistent chat session.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Use Case 2</b>: The customer wants to continue the past chat
    #        session and see the transcript of the entire past engagement, including the post chat survey.
    #        For this they will use the following configuration:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <b>Configuration</b>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>SourceContactId = "C1"</p>
    #                           </li>
    #                           <li>
    #                              <p>RehydrationType = "ENTIRE_PAST_SESSION"</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>Expected behavior</b>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>This starts a persistent chat session from the most recently ended chat contact (C3).
    #            Transcripts of past chat sessions C3, C2 and C1 are accessible in the current persistent
    #            chat session.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute source_contact_id
    #   <p>The contactId from which a persistent chat session must be started.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class CreatePersistentContactAssociationRequest < Struct.new(
      :instance_id,
      :initial_contact_id,
      :rehydration_type,
      :source_contact_id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute continued_from_contact_id
    #   <p>The contactId from which a persistent chat session is started. This field is populated only
    #      for persistent chat.</p>
    #   @return [String]
    class CreatePersistentContactAssociationResponse < Struct.new(
      :continued_from_contact_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instance ID in the Amazon Resource
    #      Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the predefined attribute. </p>
    #   @return [String]
    # @!attribute values
    #   <p> The values of the predefined attribute. </p>
    #   @return [Types::PredefinedAttributeValues]
    class CreatePredefinedAttributeRequest < Struct.new(
      :instance_id,
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the prompt.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the prompt.</p>
    #   @return [String]
    # @!attribute s3_uri
    #   <p>The URI for the S3 bucket where the prompt is stored. You can provide S3 pre-signed URLs returned by the 
    #   <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_GetPromptFile.html">GetPromptFile</a>
    #    API instead of providing S3 URIs.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    class CreatePromptRequest < Struct.new(
      :instance_id,
      :name,
      :description,
      :s3_uri,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute prompt_arn
    #   <p>The Amazon Resource Name (ARN) of the prompt.</p>
    #   @return [String]
    # @!attribute prompt_id
    #   <p>A unique identifier for the prompt.</p>
    #   @return [String]
    class CreatePromptResponse < Struct.new(
      :prompt_arn,
      :prompt_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the
    #      Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute pinpoint_app_arn
    #   <p>The Amazon Resource Name (ARN) of the Pinpoint application.</p>
    #   @return [String]
    # @!attribute device_token
    #   <p>The push notification token issued by the Apple or Google gateways.</p>
    #   @return [String]
    # @!attribute device_type
    #   <p>The device type to use when sending the message.</p>
    #   @return [String]
    # @!attribute contact_configuration
    #   <p>The contact configuration for push notification registration.</p>
    #   @return [Types::ContactConfiguration]
    class CreatePushNotificationRegistrationRequest < Struct.new(
      :instance_id,
      :client_token,
      :pinpoint_app_arn,
      :device_token,
      :device_type,
      :contact_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registration_id
    #   <p>The identifier for the registration.</p>
    #   @return [String]
    class CreatePushNotificationRegistrationResponse < Struct.new(
      :registration_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the queue.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the queue.</p>
    #   @return [String]
    # @!attribute outbound_caller_config
    #   <p>The outbound caller ID name, number, and outbound whisper flow.</p>
    #   @return [Types::OutboundCallerConfig]
    # @!attribute outbound_email_config
    #   <p>The outbound email address ID for a specified queue.</p>
    #   @return [Types::OutboundEmailConfig]
    # @!attribute hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #   @return [String]
    # @!attribute max_contacts
    #   <p>The maximum number of contacts that can be in the queue before it is considered full.</p>
    #   @return [Integer]
    # @!attribute quick_connect_ids
    #   <p>The quick connects available to agents who are working the queue.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    class CreateQueueRequest < Struct.new(
      :instance_id,
      :name,
      :description,
      :outbound_caller_config,
      :outbound_email_config,
      :hours_of_operation_id,
      :max_contacts,
      :quick_connect_ids,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute queue_arn
    #   <p>The Amazon Resource Name (ARN) of the queue.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #   @return [String]
    class CreateQueueResponse < Struct.new(
      :queue_arn,
      :queue_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A unique name of the quick connect.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the quick connect.</p>
    #   @return [String]
    # @!attribute quick_connect_config
    #   <p>Configuration settings for the quick connect.</p>
    #   @return [Types::QuickConnectConfig]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    class CreateQuickConnectRequest < Struct.new(
      :instance_id,
      :name,
      :description,
      :quick_connect_config,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute quick_connect_arn
    #   <p>The Amazon Resource Name (ARN) for the quick connect. </p>
    #   @return [String]
    # @!attribute quick_connect_id
    #   <p>The identifier for the quick connect. </p>
    #   @return [String]
    class CreateQuickConnectResponse < Struct.new(
      :quick_connect_arn,
      :quick_connect_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the routing profile. Must not be more than 127 characters.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the routing profile. Must not be more than 250 characters.</p>
    #   @return [String]
    # @!attribute default_outbound_queue_id
    #   <p>The default outbound queue for the routing profile.</p>
    #   @return [String]
    # @!attribute queue_configs
    #   <p>The inbound queues associated with the routing profile. If no queue is added, the agent can
    #      make only outbound calls.</p>
    #            <p>The limit of 10 array members applies to the maximum number of
    #       <code>RoutingProfileQueueConfig</code> objects that can be passed during a CreateRoutingProfile
    #      API request. It is different from the quota of 50 queues per routing profile per instance that is
    #      listed in <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html">Amazon Connect service
    #       quotas</a>. </p>
    #   @return [Array<Types::RoutingProfileQueueConfig>]
    # @!attribute media_concurrencies
    #   <p>The channels that agents can handle in the Contact Control Panel (CCP) for this routing
    #      profile.</p>
    #   @return [Array<Types::MediaConcurrency>]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute agent_availability_timer
    #   <p>Whether agents with this routing profile will have their routing order calculated based on
    #       <i>longest idle time</i> or <i>time since their last inbound
    #       contact</i>. </p>
    #   @return [String]
    class CreateRoutingProfileRequest < Struct.new(
      :instance_id,
      :name,
      :description,
      :default_outbound_queue_id,
      :queue_configs,
      :media_concurrencies,
      :tags,
      :agent_availability_timer,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute routing_profile_arn
    #   <p>The Amazon Resource Name (ARN) of the routing profile.</p>
    #   @return [String]
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #   @return [String]
    class CreateRoutingProfileResponse < Struct.new(
      :routing_profile_arn,
      :routing_profile_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A unique name for the rule.</p>
    #   @return [String]
    # @!attribute trigger_event_source
    #   <p>The event source to trigger the rule.</p>
    #   @return [Types::RuleTriggerEventSource]
    # @!attribute function
    #   <p>The conditions of the rule.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>A list of actions to be run when the rule is triggered.</p>
    #   @return [Array<Types::RuleAction>]
    # @!attribute publish_status
    #   <p>The publish status of the rule.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class CreateRuleRequest < Struct.new(
      :instance_id,
      :name,
      :trigger_event_source,
      :function,
      :actions,
      :publish_status,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #   @return [String]
    # @!attribute rule_id
    #   <p>A unique identifier for the rule.</p>
    #   @return [String]
    class CreateRuleResponse < Struct.new(
      :rule_arn,
      :rule_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profile_name
    #   <p>The name of the security profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the security profile.</p>
    #   @return [String]
    # @!attribute permissions
    #   <p>Permissions assigned to the security profile. For a list of valid permissions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html">List of security
    #       profile permissions</a>. </p>
    #   @return [Array<String>]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute allowed_access_control_tags
    #   <p>The list of tags that a security profile uses to restrict access to resources in Amazon Connect.</p>
    #   @return [Hash<String, String>]
    # @!attribute tag_restricted_resources
    #   <p>The list of resources that a security profile applies tag restrictions to in Amazon Connect. For a list of Amazon Connect resources that you can tag, see
    #       <a href="https://docs.aws.amazon.com/connect/latest/adminguide/tagging.html">Add tags to resources
    #       in Amazon Connect</a> in the <i>Amazon Connect Administrator
    #      Guide</i>. </p>
    #   @return [Array<String>]
    # @!attribute applications
    #   <p>A list of third-party applications that the security profile will give access to.</p>
    #   @return [Array<Types::Application>]
    # @!attribute hierarchy_restricted_resources
    #   <p>The list of resources that a security profile applies hierarchy restrictions to in Amazon Connect. Following are acceptable ResourceNames: <code>User</code>.</p>
    #   @return [Array<String>]
    # @!attribute allowed_access_control_hierarchy_group_id
    #   <p>The identifier of the hierarchy group that a security profile uses to restrict access to
    #      resources in Amazon Connect.</p>
    #   @return [String]
    class CreateSecurityProfileRequest < Struct.new(
      :security_profile_name,
      :description,
      :permissions,
      :instance_id,
      :tags,
      :allowed_access_control_tags,
      :tag_restricted_resources,
      :applications,
      :hierarchy_restricted_resources,
      :allowed_access_control_hierarchy_group_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profile_id
    #   <p>The identifier for the security profle.</p>
    #   @return [String]
    # @!attribute security_profile_arn
    #   <p>The Amazon Resource Name (ARN) for the security profile.</p>
    #   @return [String]
    class CreateSecurityProfileResponse < Struct.new(
      :security_profile_id,
      :security_profile_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the task template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the task template.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow that runs by default when a task is created by referencing this template.</p>
    #   @return [String]
    # @!attribute self_assign_flow_id
    #   <p>The ContactFlowId for the flow that will be run if this template is used to create a
    #      self-assigned task.</p>
    #   @return [String]
    # @!attribute constraints
    #   <p>Constraints that are applicable to the fields listed.</p>
    #   @return [Types::TaskTemplateConstraints]
    # @!attribute defaults
    #   <p>The default values for fields when a task is created by referencing this template.</p>
    #   @return [Types::TaskTemplateDefaults]
    # @!attribute status
    #   <p>Marks a template as <code>ACTIVE</code> or <code>INACTIVE</code> for a task to refer to it. 
    #   Tasks can only be created from <code>ACTIVE</code> templates.
    #   If a template is marked as <code>INACTIVE</code>, then a task that refers to this template cannot be created. </p>
    #   @return [String]
    # @!attribute fields
    #   <p>Fields that are part of the template.</p>
    #   @return [Array<Types::TaskTemplateField>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class CreateTaskTemplateRequest < Struct.new(
      :instance_id,
      :name,
      :description,
      :contact_flow_id,
      :self_assign_flow_id,
      :constraints,
      :defaults,
      :status,
      :fields,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the task template resource.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the task template resource.</p>
    #   @return [String]
    class CreateTaskTemplateResponse < Struct.new(
      :id,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name for the traffic distribution group. </p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the traffic distribution group.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance that has been replicated. You can find the
    #       <code>instanceId</code> in the ARN of the instance.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    class CreateTrafficDistributionGroupRequest < Struct.new(
      :name,
      :description,
      :instance_id,
      :client_token,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the traffic distribution group.
    #   This can be the ID or the ARN of the traffic distribution group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the traffic distribution group.</p>
    #   @return [String]
    class CreateTrafficDistributionGroupResponse < Struct.new(
      :id,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute integration_association_id
    #   <p>The identifier for the integration association.</p>
    #   @return [String]
    # @!attribute use_case_type
    #   <p>The type of use case to associate to the integration association. Each integration
    #      association can have only one of each use case type.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    class CreateUseCaseRequest < Struct.new(
      :instance_id,
      :integration_association_id,
      :use_case_type,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute use_case_id
    #   <p>The identifier of the use case.</p>
    #   @return [String]
    # @!attribute use_case_arn
    #   <p>The Amazon Resource Name (ARN) for the use case.</p>
    #   @return [String]
    class CreateUseCaseResponse < Struct.new(
      :use_case_id,
      :use_case_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the user hierarchy group. Must not be more than 100 characters.</p>
    #   @return [String]
    # @!attribute parent_group_id
    #   <p>The identifier for the parent hierarchy group. The user hierarchy is created at level one if
    #      the parent group ID is null.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    class CreateUserHierarchyGroupRequest < Struct.new(
      :name,
      :parent_group_id,
      :instance_id,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hierarchy_group_id
    #   <p>The identifier of the hierarchy group.</p>
    #   @return [String]
    # @!attribute hierarchy_group_arn
    #   <p>The Amazon Resource Name (ARN) of the hierarchy group. </p>
    #   @return [String]
    class CreateUserHierarchyGroupResponse < Struct.new(
      :hierarchy_group_id,
      :hierarchy_group_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute username
    #   <p>The user name for the account. For instances not using SAML for identity management, the
    #      user name can include up to 20 characters. If you are using SAML for identity management, the
    #      user name can include up to 64 characters from [a-zA-Z0-9_-.\@]+.</p>
    #            <p>Username can include @ only if used in an email format. For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Correct: testuser</p>
    #               </li>
    #               <li>
    #                  <p>Correct: testuser@example.com</p>
    #               </li>
    #               <li>
    #                  <p>Incorrect: testuser@example</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute password
    #   <p>The password for the user account. A password is required if you are using Amazon Connect for identity management. Otherwise, it is an error to include a password.</p>
    #   @return [String]
    # @!attribute identity_info
    #   <p>The information about the identity of the user.</p>
    #   @return [Types::UserIdentityInfo]
    # @!attribute phone_config
    #   <p>The phone settings for the user.</p>
    #   @return [Types::UserPhoneConfig]
    # @!attribute directory_user_id
    #   <p>The identifier of the user account in the directory used for identity management. If Amazon Connect cannot access the directory, you can specify this identifier to authenticate users.
    #      If you include the identifier, we assume that Amazon Connect cannot access the directory.
    #      Otherwise, the identity information is used to authenticate users from your directory.</p>
    #            <p>This parameter is required if you are using an existing directory for identity management in
    #       Amazon Connect when Amazon Connect cannot access your directory to authenticate users.
    #      If you are using SAML for identity management and include this parameter, an error is
    #      returned.</p>
    #   @return [String]
    # @!attribute security_profile_ids
    #   <p>The identifier of the security profile for the user.</p>
    #   @return [Array<String>]
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile for the user.</p>
    #   @return [String]
    # @!attribute hierarchy_group_id
    #   <p>The identifier of the hierarchy group for the user.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_id
    #   <p>The identifier of the user account.</p>
    #   @return [String]
    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the user account.</p>
    #   @return [String]
    class CreateUserResponse < Struct.new(
      :user_id,
      :user_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique Id for each create view request to avoid duplicate view creation. For example, the
    #      view is idempotent ClientToken is provided.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the view status as either <code>SAVED</code> or <code>PUBLISHED</code>. The
    #       <code>PUBLISHED</code> status will initiate validation on the content.</p>
    #   @return [String]
    # @!attribute content
    #   <p>View content containing all content necessary to render a view except for runtime input
    #      data.</p>
    #            <p>The total uncompressed content has a maximum file size of 400kB.</p>
    #   @return [Types::ViewInputContent]
    # @!attribute description
    #   <p>The description of the view.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the view.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the view resource (not specific to view version).These tags can be
    #      used to organize, track, or control access for this resource. For example, { "tags":
    #      {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    class CreateViewRequest < Struct.new(
      :instance_id,
      :client_token,
      :status,
      :content,
      :description,
      :name,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute view
    #   <p>A view resource object. Contains metadata and content necessary to render the view.</p>
    #   @return [Types::View]
    class CreateViewResponse < Struct.new(
      :view,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    #   @return [String]
    # @!attribute view_id
    #   <p>The identifier of the view. Both <code>ViewArn</code> and <code>ViewId</code> can be
    #      used.</p>
    #   @return [String]
    # @!attribute version_description
    #   <p>The description for the version being published.</p>
    #   @return [String]
    # @!attribute view_content_sha256
    #   <p>Indicates the checksum value of the latest published view content.</p>
    #   @return [String]
    class CreateViewVersionRequest < Struct.new(
      :instance_id,
      :view_id,
      :version_description,
      :view_content_sha256,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute view
    #   <p>All view data is contained within the View object.</p>
    #   @return [Types::View]
    class CreateViewVersionResponse < Struct.new(
      :view,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>. If a create request is received more than once with same client token,
    #      subsequent requests return the previous response without creating a vocabulary again.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute vocabulary_name
    #   <p>A unique name of the custom vocabulary.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see 
    #   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html">What is Amazon Transcribe?</a>
    #            </p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the custom vocabulary in plain-text format with a table of values. Each row
    #      in the table represents a word or a phrase, described with <code>Phrase</code>, <code>IPA</code>,
    #       <code>SoundsLike</code>, and <code>DisplayAs</code> fields. Separate the fields with TAB
    #      characters. The size limit is 50KB. For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html#create-vocabulary-table">Create a custom
    #       vocabulary using a table</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    class CreateVocabularyRequest < Struct.new(
      :client_token,
      :instance_id,
      :vocabulary_name,
      :language_code,
      :content,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vocabulary_arn
    #   <p>The Amazon Resource Name (ARN) of the custom vocabulary.</p>
    #   @return [String]
    # @!attribute vocabulary_id
    #   <p>The identifier of the custom vocabulary.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the custom vocabulary.</p>
    #   @return [String]
    class CreateVocabularyResponse < Struct.new(
      :vocabulary_arn,
      :vocabulary_id,
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information on the identity that created the file.</p>
    # @!attribute connect_user_arn
    #   <p>An agent ARN representing a <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonconnect.html#amazonconnect-resources-for-iam-policies">connect user</a>.</p>
    #   @return [String]
    # @!attribute aws_identity_arn
    #   <p>STS or IAM ARN representing the identity of API Caller. SDK users cannot populate this and
    #      this value is calculated automatically if <code>ConnectUserArn</code> is not provided.</p>
    #   @return [String]
    class CreatedByInfo < Struct.new(
      :connect_user_arn,
      :aws_identity_arn,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class ConnectUserArn < CreatedByInfo; end
      class AWSIdentityArn < CreatedByInfo; end
      class Unknown < CreatedByInfo; end
    end

    # <p>Contains credentials to use for federation.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute access_token
    #   <p>An access token generated for a federated user to access Amazon Connect.</p>
    #   @return [String]
    # @!attribute access_token_expiration
    #   <p>A token generated with an expiration time for the session a user is logged in to Amazon Connect.</p>
    #   @return [Time]
    # @!attribute refresh_token
    #   <p>Renews a token generated for a user to access the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute refresh_token_expiration
    #   <p>Renews the expiration timer for a generated token.</p>
    #   @return [Time]
    class Credentials < Struct.new(
      :access_token,
      :access_token_expiration,
      :refresh_token,
      :refresh_token_expiration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the cross-channel routing behavior that allows an agent working on a contact in one
    #    channel to be offered a contact from a different channel.</p>
    # @!attribute behavior_type
    #   <p>Specifies the other channels that can be routed to an agent handling their current
    #      channel.</p>
    #   @return [String]
    class CrossChannelBehavior < Struct.new(
      :behavior_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a real-time metric. For a description of each metric, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html">Metrics
    #     definitions</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    # @!attribute name
    #   <p>The name of the metric.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The unit for the metric.</p>
    #   @return [String]
    class CurrentMetric < Struct.new(
      :name,
      :unit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the data for a real-time metric.</p>
    # @!attribute metric
    #   <p>Information about the metric.</p>
    #   @return [Types::CurrentMetric]
    # @!attribute value
    #   <p>The value of the metric.</p>
    #   @return [Float]
    class CurrentMetricData < Struct.new(
      :metric,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a set of real-time metrics.</p>
    # @!attribute dimensions
    #   <p>The dimensions for the metrics.</p>
    #   @return [Types::Dimensions]
    # @!attribute collections
    #   <p>The set of metrics.</p>
    #   @return [Array<Types::CurrentMetricData>]
    class CurrentMetricResult < Struct.new(
      :dimensions,
      :collections,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The way to sort the resulting response based on metrics. By default resources are sorted
    #    based on <code>AGENTS_ONLINE</code>, <code>DESCENDING</code>. The metric collection is sorted
    #    based on the input metrics.</p>
    # @!attribute sort_by_metric
    #   <p>The current metric names.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The way to sort.</p>
    #   @return [String]
    class CurrentMetricSortCriteria < Struct.new(
      :sort_by_metric,
      :sort_order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the Customer on the contact.</p>
    # @!attribute device_info
    #   <p>Information regarding Customer’s device.</p>
    #   @return [Types::DeviceInfo]
    # @!attribute capabilities
    #   <p>The configuration for the allowed video and screen sharing capabilities for participants
    #      present over the call. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/inapp-calling.html">Set up in-app, web, video calling, and screen
    #       sharing capabilities</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #   @return [Types::ParticipantCapabilities]
    class Customer < Struct.new(
      :device_info,
      :capabilities,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the quality of the Customer's media connection</p>
    # @!attribute audio
    #   <p>Information about the audio quality of the Customer</p>
    #   @return [Types::AudioQualityMetricsInfo]
    class CustomerQualityMetrics < Struct.new(
      :audio,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about customer’s voice activity.</p>
    # @!attribute greeting_start_timestamp
    #   <p>Timestamp that measures the beginning of the customer greeting from an outbound voice
    #      call.</p>
    #   @return [Time]
    # @!attribute greeting_end_timestamp
    #   <p>Timestamp that measures the end of the customer greeting from an outbound voice call.</p>
    #   @return [Time]
    class CustomerVoiceActivity < Struct.new(
      :greeting_start_timestamp,
      :greeting_end_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object to specify the hours of operation override date condition.</p>
    # @!attribute field_name
    #   <p>An object to specify the hours of operation override date field.</p>
    #   @return [String]
    # @!attribute value
    #   <p>An object to specify the hours of operation override date value.</p>
    #   @return [String]
    # @!attribute comparison_type
    #   <p>An object to specify the hours of operation override date condition
    #       <code>comparisonType</code>.</p>
    #   @return [String]
    class DateCondition < Struct.new(
      :field_name,
      :value,
      :comparison_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a reference when the <code>referenceType</code> is <code>DATE</code>.
    #    Otherwise, null.</p>
    # @!attribute name
    #   <p>Identifier of the date reference.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A valid date.</p>
    #   @return [String]
    class DateReference < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute evaluation_form_id
    #   <p>The unique identifier for the evaluation form.</p>
    #   @return [String]
    # @!attribute evaluation_form_version
    #   <p>A version of the evaluation form. If the version property is not provided, the latest version of the
    #      evaluation form is deactivated.</p>
    #   @return [Integer]
    class DeactivateEvaluationFormRequest < Struct.new(
      :instance_id,
      :evaluation_form_id,
      :evaluation_form_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluation_form_id
    #   <p>The unique identifier for the evaluation form.</p>
    #   @return [String]
    # @!attribute evaluation_form_arn
    #   <p>The Amazon Resource Name (ARN) for the evaluation form resource.</p>
    #   @return [String]
    # @!attribute evaluation_form_version
    #   <p>The version of the deactivated evaluation form resource.</p>
    #   @return [Integer]
    class DeactivateEvaluationFormResponse < Struct.new(
      :evaluation_form_id,
      :evaluation_form_arn,
      :evaluation_form_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:evaluation_form_version] = 0 unless options.key?(:evaluation_form_version)
        super
      end
    end

    # <p>Contains information about a default vocabulary.</p>
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see 
    #   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html">What is Amazon Transcribe?</a>
    #            </p>
    #   @return [String]
    # @!attribute vocabulary_id
    #   <p>The identifier of the custom vocabulary.</p>
    #   @return [String]
    # @!attribute vocabulary_name
    #   <p>A unique name of the custom vocabulary.</p>
    #   @return [String]
    class DefaultVocabulary < Struct.new(
      :instance_id,
      :language_code,
      :vocabulary_id,
      :vocabulary_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Request to DeleteAttachedFile API
    # @!attribute instance_id
    #   <p>The unique identifier of the Connect instance.</p>
    #   @return [String]
    # @!attribute file_id
    #   <p>The unique identifier of the attached file resource.</p>
    #   @return [String]
    # @!attribute associated_resource_arn
    #   <p>The resource to which the attached file is (being) uploaded to. <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateCase.html">Cases</a> are the only
    #      current supported resource.</p>
    #            <note>
    #               <p>This value must be a valid ARN.</p>
    #            </note>
    #   @return [String]
    class DeleteAttachedFileRequest < Struct.new(
      :instance_id,
      :file_id,
      :associated_resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Response from DeleteAttachedFile API
    class DeleteAttachedFileResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute evaluation_id
    #   <p>A unique identifier for the contact evaluation.</p>
    #   @return [String]
    class DeleteContactEvaluationRequest < Struct.new(
      :instance_id,
      :evaluation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_flow_module_id
    #   <p>The identifier of the flow module.</p>
    #   @return [String]
    class DeleteContactFlowModuleRequest < Struct.new(
      :instance_id,
      :contact_flow_module_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteContactFlowModuleResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow.</p>
    #   @return [String]
    class DeleteContactFlowRequest < Struct.new(
      :instance_id,
      :contact_flow_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteContactFlowResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow.</p>
    #   @return [String]
    # @!attribute contact_flow_version
    #   <p>The identifier of the flow version.</p>
    #   @return [Integer]
    class DeleteContactFlowVersionRequest < Struct.new(
      :instance_id,
      :contact_flow_id,
      :contact_flow_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteContactFlowVersionResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute email_address_id
    #   <p>The identifier of the email address.</p>
    #   @return [String]
    class DeleteEmailAddressRequest < Struct.new(
      :instance_id,
      :email_address_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteEmailAddressResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute evaluation_form_id
    #   <p>The unique identifier for the evaluation form.</p>
    #   @return [String]
    # @!attribute evaluation_form_version
    #   <p>The unique identifier for the evaluation form.</p>
    #   @return [Integer]
    class DeleteEvaluationFormRequest < Struct.new(
      :instance_id,
      :evaluation_form_id,
      :evaluation_form_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #   @return [String]
    # @!attribute hours_of_operation_override_id
    #   <p>The identifier for the hours of operation override.</p>
    #   @return [String]
    class DeleteHoursOfOperationOverrideRequest < Struct.new(
      :instance_id,
      :hours_of_operation_id,
      :hours_of_operation_override_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #   @return [String]
    class DeleteHoursOfOperationRequest < Struct.new(
      :instance_id,
      :hours_of_operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class DeleteInstanceRequest < Struct.new(
      :instance_id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute integration_association_id
    #   <p>The identifier for the integration association.</p>
    #   @return [String]
    class DeleteIntegrationAssociationRequest < Struct.new(
      :instance_id,
      :integration_association_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p> The identifier of the Amazon Connect instance. You can find the instance ID in the Amazon Resource
    #      Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the predefined attribute.</p>
    #   @return [String]
    class DeletePredefinedAttributeRequest < Struct.new(
      :instance_id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute prompt_id
    #   <p>A unique identifier for the prompt.</p>
    #   @return [String]
    class DeletePromptRequest < Struct.new(
      :instance_id,
      :prompt_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the
    #      Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute registration_id
    #   <p>The identifier for the registration.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact within the Amazon Connect instance.</p>
    #   @return [String]
    class DeletePushNotificationRegistrationRequest < Struct.new(
      :instance_id,
      :registration_id,
      :contact_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeletePushNotificationRegistrationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #   @return [String]
    class DeleteQueueRequest < Struct.new(
      :instance_id,
      :queue_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute quick_connect_id
    #   <p>The identifier for the quick connect.</p>
    #   @return [String]
    class DeleteQuickConnectRequest < Struct.new(
      :instance_id,
      :quick_connect_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #   @return [String]
    class DeleteRoutingProfileRequest < Struct.new(
      :instance_id,
      :routing_profile_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute rule_id
    #   <p>A unique identifier for the rule.</p>
    #   @return [String]
    class DeleteRuleRequest < Struct.new(
      :instance_id,
      :rule_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute security_profile_id
    #   <p>The identifier for the security profle.</p>
    #   @return [String]
    class DeleteSecurityProfileRequest < Struct.new(
      :instance_id,
      :security_profile_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute task_template_id
    #   <p>A unique identifier for the task template.</p>
    #   @return [String]
    class DeleteTaskTemplateRequest < Struct.new(
      :instance_id,
      :task_template_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteTaskTemplateResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute traffic_distribution_group_id
    #   <p>The identifier of the traffic distribution group.
    #   This can be the ID or the ARN of the traffic distribution group.</p>
    #   @return [String]
    class DeleteTrafficDistributionGroupRequest < Struct.new(
      :traffic_distribution_group_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteTrafficDistributionGroupResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute integration_association_id
    #   <p>The identifier for the integration association.</p>
    #   @return [String]
    # @!attribute use_case_id
    #   <p>The identifier for the use case.</p>
    #   @return [String]
    class DeleteUseCaseRequest < Struct.new(
      :instance_id,
      :integration_association_id,
      :use_case_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hierarchy_group_id
    #   <p>The identifier of the hierarchy group.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    class DeleteUserHierarchyGroupRequest < Struct.new(
      :hierarchy_group_id,
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier of the user.</p>
    #   @return [String]
    class DeleteUserRequest < Struct.new(
      :instance_id,
      :user_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    #   @return [String]
    # @!attribute view_id
    #   <p>The identifier of the view. Both <code>ViewArn</code> and <code>ViewId</code> can be
    #      used.</p>
    #   @return [String]
    class DeleteViewRequest < Struct.new(
      :instance_id,
      :view_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteViewResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    #   @return [String]
    # @!attribute view_id
    #   <p>The identifier of the view. Both <code>ViewArn</code> and <code>ViewId</code> can be
    #      used.</p>
    #   @return [String]
    # @!attribute view_version
    #   <p>The version number of the view.</p>
    #   @return [Integer]
    class DeleteViewVersionRequest < Struct.new(
      :instance_id,
      :view_id,
      :view_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteViewVersionResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute vocabulary_id
    #   <p>The identifier of the custom vocabulary.</p>
    #   @return [String]
    class DeleteVocabularyRequest < Struct.new(
      :instance_id,
      :vocabulary_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vocabulary_arn
    #   <p>The Amazon Resource Name (ARN) of the custom vocabulary.</p>
    #   @return [String]
    # @!attribute vocabulary_id
    #   <p>The identifier of the custom vocabulary.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the custom vocabulary.</p>
    #   @return [String]
    class DeleteVocabularyResponse < Struct.new(
      :vocabulary_arn,
      :vocabulary_id,
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute agent_status_id
    #   <p>The identifier for the agent status.</p>
    #   @return [String]
    class DescribeAgentStatusRequest < Struct.new(
      :instance_id,
      :agent_status_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_status
    #   <p>The agent status.</p>
    #   @return [Types::AgentStatus]
    class DescribeAgentStatusResponse < Struct.new(
      :agent_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_profile_id
    #   <p>A unique identifier for the authentication profile. </p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    class DescribeAuthenticationProfileRequest < Struct.new(
      :authentication_profile_id,
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_profile
    #   <p>The authentication profile object being described.</p>
    #   @return [Types::AuthenticationProfile]
    class DescribeAuthenticationProfileResponse < Struct.new(
      :authentication_profile,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute evaluation_id
    #   <p>A unique identifier for the contact evaluation.</p>
    #   @return [String]
    class DescribeContactEvaluationRequest < Struct.new(
      :instance_id,
      :evaluation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluation
    #   <p>Information about the evaluation form completed for a specific contact.</p>
    #   @return [Types::Evaluation]
    # @!attribute evaluation_form
    #   <p>Information about the evaluation form.</p>
    #   @return [Types::EvaluationFormContent]
    class DescribeContactEvaluationResponse < Struct.new(
      :evaluation,
      :evaluation_form,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_flow_module_id
    #   <p>The identifier of the flow module.</p>
    #   @return [String]
    class DescribeContactFlowModuleRequest < Struct.new(
      :instance_id,
      :contact_flow_module_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_flow_module
    #   <p>Information about the flow module.</p>
    #   @return [Types::ContactFlowModule]
    class DescribeContactFlowModuleResponse < Struct.new(
      :contact_flow_module,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow.</p>
    #   @return [String]
    class DescribeContactFlowRequest < Struct.new(
      :instance_id,
      :contact_flow_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_flow
    #   <p>Information about the flow.</p>
    #   @return [Types::ContactFlow]
    class DescribeContactFlowResponse < Struct.new(
      :contact_flow,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact.</p>
    #   @return [String]
    class DescribeContactRequest < Struct.new(
      :instance_id,
      :contact_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact
    #   <p>Information about the contact.</p>
    #   @return [Types::Contact]
    class DescribeContactResponse < Struct.new(
      :contact,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute email_address_id
    #   <p>The identifier of the email address.</p>
    #   @return [String]
    class DescribeEmailAddressRequest < Struct.new(
      :instance_id,
      :email_address_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute email_address_id
    #   <p>The identifier of the email address.</p>
    #   @return [String]
    # @!attribute email_address_arn
    #   <p>The Amazon Resource Name (ARN) of the email address.</p>
    #   @return [String]
    # @!attribute email_address
    #   <p>The email address, including the domain.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of email address</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the email address.</p>
    #   @return [String]
    # @!attribute create_timestamp
    #   <p>The email address creation timestamp in ISO 8601 Datetime.</p>
    #   @return [String]
    # @!attribute modified_timestamp
    #   <p>The email address last modification timestamp in ISO 8601 Datetime.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    class DescribeEmailAddressResponse < Struct.new(
      :email_address_id,
      :email_address_arn,
      :email_address,
      :display_name,
      :description,
      :create_timestamp,
      :modified_timestamp,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute evaluation_form_id
    #   <p>A unique identifier for the contact evaluation.</p>
    #   @return [String]
    # @!attribute evaluation_form_version
    #   <p>A version of the evaluation form.</p>
    #   @return [Integer]
    class DescribeEvaluationFormRequest < Struct.new(
      :instance_id,
      :evaluation_form_id,
      :evaluation_form_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluation_form
    #   <p>Information about the evaluation form.</p>
    #   @return [Types::EvaluationForm]
    class DescribeEvaluationFormResponse < Struct.new(
      :evaluation_form,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #   @return [String]
    # @!attribute hours_of_operation_override_id
    #   <p>The identifier for the hours of operation override.</p>
    #   @return [String]
    class DescribeHoursOfOperationOverrideRequest < Struct.new(
      :instance_id,
      :hours_of_operation_id,
      :hours_of_operation_override_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hours_of_operation_override
    #   <p>Information about the hours of operations override. </p>
    #   @return [Types::HoursOfOperationOverride]
    class DescribeHoursOfOperationOverrideResponse < Struct.new(
      :hours_of_operation_override,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #   @return [String]
    class DescribeHoursOfOperationRequest < Struct.new(
      :instance_id,
      :hours_of_operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hours_of_operation
    #   <p>The hours of operation.</p>
    #   @return [Types::HoursOfOperation]
    class DescribeHoursOfOperationResponse < Struct.new(
      :hours_of_operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute attribute_type
    #   <p>The type of attribute.</p>
    #   @return [String]
    class DescribeInstanceAttributeRequest < Struct.new(
      :instance_id,
      :attribute_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute attribute
    #   <p>The
    #      type
    #      of attribute.</p>
    #   @return [Types::Attribute]
    class DescribeInstanceAttributeResponse < Struct.new(
      :attribute,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    class DescribeInstanceRequest < Struct.new(
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance
    #   <p>The name of the instance.</p>
    #   @return [Types::Instance]
    # @!attribute replication_configuration
    #   <p>Status information about the replication process. This field is included only when you are
    #      using the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_ReplicateInstance.html">ReplicateInstance</a> API to
    #      replicate an Amazon Connect instance across Amazon Web Services Regions. For information about
    #      replicating Amazon Connect instances, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/create-replica-connect-instance.html">Create a replica of your
    #       existing Amazon Connect instance</a> in the <i>Amazon Connect Administrator
    #       Guide</i>.</p>
    #   @return [Types::ReplicationConfiguration]
    class DescribeInstanceResponse < Struct.new(
      :instance,
      :replication_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>A valid resource type.</p>
    #   @return [String]
    class DescribeInstanceStorageConfigRequest < Struct.new(
      :instance_id,
      :association_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute storage_config
    #   <p>A valid storage type.</p>
    #   @return [Types::InstanceStorageConfig]
    class DescribeInstanceStorageConfigResponse < Struct.new(
      :storage_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #   @return [String]
    class DescribePhoneNumberRequest < Struct.new(
      :phone_number_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute claimed_phone_number_summary
    #   <p>Information about a phone number that's been claimed to your Amazon Connect instance or
    #      traffic distribution group.</p>
    #   @return [Types::ClaimedPhoneNumberSummary]
    class DescribePhoneNumberResponse < Struct.new(
      :claimed_phone_number_summary,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instance ID in the Amazon Resource
    #      Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the predefined attribute.</p>
    #   @return [String]
    class DescribePredefinedAttributeRequest < Struct.new(
      :instance_id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute predefined_attribute
    #   <p>Information about the predefined attribute.</p>
    #   @return [Types::PredefinedAttribute]
    class DescribePredefinedAttributeResponse < Struct.new(
      :predefined_attribute,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute prompt_id
    #   <p>A unique identifier for the prompt.</p>
    #   @return [String]
    class DescribePromptRequest < Struct.new(
      :instance_id,
      :prompt_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute prompt
    #   <p>Information about the prompt.</p>
    #   @return [Types::Prompt]
    class DescribePromptResponse < Struct.new(
      :prompt,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #   @return [String]
    class DescribeQueueRequest < Struct.new(
      :instance_id,
      :queue_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute queue
    #   <p>The name of the queue.</p>
    #   @return [Types::Queue]
    class DescribeQueueResponse < Struct.new(
      :queue,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute quick_connect_id
    #   <p>The identifier for the quick connect.</p>
    #   @return [String]
    class DescribeQuickConnectRequest < Struct.new(
      :instance_id,
      :quick_connect_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute quick_connect
    #   <p>Information about the quick connect.</p>
    #   @return [Types::QuickConnect]
    class DescribeQuickConnectResponse < Struct.new(
      :quick_connect,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #   @return [String]
    class DescribeRoutingProfileRequest < Struct.new(
      :instance_id,
      :routing_profile_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute routing_profile
    #   <p>The routing profile.</p>
    #   @return [Types::RoutingProfile]
    class DescribeRoutingProfileResponse < Struct.new(
      :routing_profile,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute rule_id
    #   <p>A unique identifier for the rule.</p>
    #   @return [String]
    class DescribeRuleRequest < Struct.new(
      :instance_id,
      :rule_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule
    #   <p>Information about the rule.</p>
    #   @return [Types::Rule]
    class DescribeRuleResponse < Struct.new(
      :rule,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profile_id
    #   <p>The identifier for the security profle.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    class DescribeSecurityProfileRequest < Struct.new(
      :security_profile_id,
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profile
    #   <p>The security profile.</p>
    #   @return [Types::SecurityProfile]
    class DescribeSecurityProfileResponse < Struct.new(
      :security_profile,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute traffic_distribution_group_id
    #   <p>The identifier of the traffic distribution group.
    #   This can be the ID or the ARN if the API is being called in the Region where the traffic distribution group was created.
    #   The ARN must be provided if the call is from the replicated Region.</p>
    #   @return [String]
    class DescribeTrafficDistributionGroupRequest < Struct.new(
      :traffic_distribution_group_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute traffic_distribution_group
    #   <p>Information about the traffic distribution group.</p>
    #   @return [Types::TrafficDistributionGroup]
    class DescribeTrafficDistributionGroupResponse < Struct.new(
      :traffic_distribution_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hierarchy_group_id
    #   <p>The identifier of the hierarchy group.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    class DescribeUserHierarchyGroupRequest < Struct.new(
      :hierarchy_group_id,
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hierarchy_group
    #   <p>Information about the hierarchy group.</p>
    #   @return [Types::HierarchyGroup]
    class DescribeUserHierarchyGroupResponse < Struct.new(
      :hierarchy_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    class DescribeUserHierarchyStructureRequest < Struct.new(
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hierarchy_structure
    #   <p>Information about the hierarchy structure.</p>
    #   @return [Types::HierarchyStructure]
    class DescribeUserHierarchyStructureResponse < Struct.new(
      :hierarchy_structure,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_id
    #   <p>The identifier of the user account.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    class DescribeUserRequest < Struct.new(
      :user_id,
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user
    #   <p>Information about the user account and configuration settings.</p>
    #   @return [Types::User]
    class DescribeUserResponse < Struct.new(
      :user,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    #   @return [String]
    # @!attribute view_id
    #   <p>The ViewId of the view. This must be an ARN for Amazon Web Services managed views.</p>
    #   @return [String]
    class DescribeViewRequest < Struct.new(
      :instance_id,
      :view_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute view
    #   <p>All view data is contained within the View object.</p>
    #   @return [Types::View]
    class DescribeViewResponse < Struct.new(
      :view,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute vocabulary_id
    #   <p>The identifier of the custom vocabulary.</p>
    #   @return [String]
    class DescribeVocabularyRequest < Struct.new(
      :instance_id,
      :vocabulary_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vocabulary
    #   <p>A list of specific words that you want Contact Lens for Amazon Connect to recognize in your audio input. They are
    #      generally domain-specific words and phrases, words that Contact Lens is not recognizing, or proper
    #      nouns.</p>
    #   @return [Types::Vocabulary]
    class DescribeVocabularyResponse < Struct.new(
      :vocabulary,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Outbound calls to the destination number are not allowed.</p>
    # @!attribute message
    #   <p>The message about the outbound calls.</p>
    #   @return [String]
    class DestinationNotAllowedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information regarding the device.</p>
    # @!attribute platform_name
    #   <p>Name of the platform that the participant used for the call.</p>
    #   @return [String]
    # @!attribute platform_version
    #   <p>Version of the platform that the participant used for the call.</p>
    #   @return [String]
    # @!attribute operating_system
    #   <p>Operating system that the participant used for the call.</p>
    #   @return [String]
    class DeviceInfo < Struct.new(
      :platform_name,
      :platform_version,
      :operating_system,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the dimensions for a set of metrics.</p>
    # @!attribute queue
    #   <p>Information about the queue for which metrics are returned.</p>
    #   @return [Types::QueueReference]
    # @!attribute channel
    #   <p>The channel used for grouping and filters.</p>
    #   @return [String]
    # @!attribute routing_profile
    #   <p>Information about the routing profile assigned to the user.</p>
    #   @return [Types::RoutingProfileReference]
    # @!attribute routing_step_expression
    #   <p>The expression of a step in a routing criteria.</p>
    #   @return [String]
    # @!attribute agent_status
    #   <p>Information about the agent status assigned to the user.</p>
    #   @return [Types::AgentStatusIdentifier]
    class Dimensions < Struct.new(
      :queue,
      :channel,
      :routing_profile,
      :routing_step_expression,
      :agent_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute data_set_id
    #   <p>The identifier of the dataset to remove.</p>
    #   @return [String]
    # @!attribute target_account_id
    #   <p>The identifier of the target account.  Use to associate a dataset to a different account than the one containing
    #      the Amazon Connect instance. If not specified, by default this value is the Amazon Web Services account that has the Amazon Connect instance.</p>
    #   @return [String]
    class DisassociateAnalyticsDataSetRequest < Struct.new(
      :instance_id,
      :data_set_id,
      :target_account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute origin
    #   <p>The domain URL of the integrated application.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class DisassociateApprovedOriginRequest < Struct.new(
      :instance_id,
      :origin,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute lex_bot
    #   <p>Configuration information of an Amazon Lex bot.</p>
    #   @return [Types::LexBot]
    # @!attribute lex_v2_bot
    #   <p>The Amazon Lex V2 bot to disassociate from the instance.</p>
    #   @return [Types::LexV2Bot]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class DisassociateBotRequest < Struct.new(
      :instance_id,
      :lex_bot,
      :lex_v2_bot,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource.</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Web Services End User Messaging SMS phone number ARN when using
    #         <code>SMS_PHONE_NUMBER</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Web Services End User Messaging Social phone number ARN when using
    #         <code>WHATSAPP_MESSAGING_PHONE_NUMBER</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute resource_type
    #   <p>A valid resource type.</p>
    #   @return [String]
    class DisassociateFlowRequest < Struct.new(
      :instance_id,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateFlowResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>A valid resource type.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class DisassociateInstanceStorageConfigRequest < Struct.new(
      :instance_id,
      :association_id,
      :resource_type,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance..</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function being disassociated.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class DisassociateLambdaFunctionRequest < Struct.new(
      :instance_id,
      :function_arn,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute bot_name
    #   <p>The name of the Amazon Lex bot. Maximum character limit of 50.</p>
    #   @return [String]
    # @!attribute lex_region
    #   <p>The Amazon Web Services Region in which the Amazon Lex bot has been created.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class DisassociateLexBotRequest < Struct.new(
      :instance_id,
      :bot_name,
      :lex_region,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    class DisassociatePhoneNumberContactFlowRequest < Struct.new(
      :phone_number_id,
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #   @return [String]
    # @!attribute quick_connect_ids
    #   <p>The quick connects to disassociate from the queue.</p>
    #   @return [Array<String>]
    class DisassociateQueueQuickConnectsRequest < Struct.new(
      :instance_id,
      :queue_id,
      :quick_connect_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #   @return [String]
    # @!attribute queue_references
    #   <p>The queues to disassociate from this routing profile.</p>
    #   @return [Array<Types::RoutingProfileQueueReference>]
    class DisassociateRoutingProfileQueuesRequest < Struct.new(
      :instance_id,
      :routing_profile_id,
      :queue_references,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class DisassociateSecurityKeyRequest < Struct.new(
      :instance_id,
      :association_id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute traffic_distribution_group_id
    #   <p>The identifier of the traffic distribution group.
    #   This can be the ID or the ARN of the traffic distribution group.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier for the user. This can be the ID or the ARN of the user.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    class DisassociateTrafficDistributionGroupUserRequest < Struct.new(
      :traffic_distribution_group_id,
      :user_id,
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateTrafficDistributionGroupUserResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instance ID in the Amazon Resource
    #      Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier of the user account.</p>
    #   @return [String]
    # @!attribute user_proficiencies
    #   <p>The proficiencies to disassociate from the user.</p>
    #   @return [Array<Types::UserProficiencyDisassociate>]
    class DisassociateUserProficienciesRequest < Struct.new(
      :instance_id,
      :user_id,
      :user_proficiencies,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the call disconnect experience.</p>
    # @!attribute potential_disconnect_issue
    #   <p>Indicates the potential disconnection issues for a call. This field is not populated if the
    #      service does not detect potential issues.</p>
    #   @return [String]
    class DisconnectDetails < Struct.new(
      :potential_disconnect_issue,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about why a contact was disconnected. Only Amazon Connect outbound
    #    campaigns can provide this field.</p>
    # @!attribute code
    #   <p>A code that indicates how the contact was terminated.</p>
    #   @return [String]
    class DisconnectReason < Struct.new(
      :code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_id
    #   <p>The identifier of the user account.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the
    #      instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact.</p>
    #   @return [String]
    class DismissUserContactRequest < Struct.new(
      :user_id,
      :instance_id,
      :contact_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DismissUserContactResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a traffic distribution.</p>
    # @!attribute region
    #   <p>The Amazon Web Services Region where the traffic is distributed.</p>
    #   @return [String]
    # @!attribute percentage
    #   <p>The percentage of the traffic that is distributed, in increments of 10.</p>
    #   @return [Integer]
    class Distribution < Struct.new(
      :region,
      :percentage,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:percentage] = 0 unless options.key?(:percentage)
        super
      end
    end

    # <p>Metadata used to download the attached file.</p>
    # @!attribute url
    #   <p>A pre-signed URL that should be used to download the attached file. </p>
    #   @return [String]
    # @!attribute url_expiry
    #   <p>The expiration time of the URL in ISO timestamp. It's specified in ISO 8601 format:
    #      yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.</p>
    #   @return [String]
    class DownloadUrlMetadata < Struct.new(
      :url,
      :url_expiry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A resource with the specified name already exists.</p>
    # @!attribute message
    #   @return [String]
    class DuplicateResourceException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the hours of operations with the effective override applied.</p>
    # @!attribute date
    #   <p>The date that the hours of operation or overrides applies to.</p>
    #   @return [String]
    # @!attribute operational_hours
    #   <p>Information about the hours of operations with the effective override applied.</p>
    #   @return [Array<Types::OperationalHour>]
    class EffectiveHoursOfOperations < Struct.new(
      :date,
      :operational_hours,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a source or destination email address.</p>
    # @!attribute email_address
    #   <p>The email address, including the domain.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of email address.</p>
    #   @return [String]
    class EmailAddressInfo < Struct.new(
      :email_address,
      :display_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an email address for a contact center.</p>
    # @!attribute email_address_id
    #   <p>The identifier of the email address.</p>
    #   @return [String]
    # @!attribute email_address_arn
    #   <p>The Amazon Resource Name (ARN) of the email address.</p>
    #   @return [String]
    # @!attribute email_address
    #   <p>The email address, including the domain.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the email address.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of email address.</p>
    #   @return [String]
    class EmailAddressMetadata < Struct.new(
      :email_address_id,
      :email_address_arn,
      :email_address,
      :description,
      :display_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The search criteria to be used to return email addresses.</p>
    # @!attribute or_conditions
    #   <p>A list of conditions which would be applied together with an OR condition.</p>
    #   @return [Array<Types::EmailAddressSearchCriteria>]
    # @!attribute and_conditions
    #   <p>A list of conditions which would be applied together with an AND condition.</p>
    #   @return [Array<Types::EmailAddressSearchCriteria>]
    # @!attribute string_condition
    #   <p>A leaf node condition which can be used to specify a string condition.</p>
    #   @return [Types::StringCondition]
    class EmailAddressSearchCriteria < Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters to be applied to search results.</p>
    # @!attribute tag_filter
    #   <p>An object that can be used to specify Tag conditions inside the <code>SearchFilter</code>.
    #      This accepts an <code>OR</code> of <code>AND</code> (List of List) input where: </p>
    #            <ul>
    #               <li>
    #                  <p>Top level list specifies conditions that need to be applied with <code>OR</code>
    #        operator</p>
    #               </li>
    #               <li>
    #                  <p>Inner list specifies conditions that need to be applied with <code>AND</code>
    #        operator.</p>
    #               </li>
    #            </ul>
    #   @return [Types::ControlPlaneTagFilter]
    class EmailAddressSearchFilter < Struct.new(
      :tag_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the email attachment files.</p>
    # @!attribute file_name
    #   <p>A case-sensitive name of the attached file being uploaded.</p>
    #   @return [String]
    # @!attribute s3_url
    #   <p>The pre-signed URLs for the S3 bucket where the email attachment is stored.</p>
    #   @return [String]
    class EmailAttachment < Struct.new(
      :file_name,
      :s3_url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the reference when the referenceType is <code>EMAIL_MESSAGE</code>.
    #    Otherwise, null.</p>
    # @!attribute name
    #   <p>The name of the email message reference</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the email message reference</p>
    #   @return [String]
    class EmailMessageReference < Struct.new(
      :name,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the email recipient</p>
    # @!attribute address
    #   <p>Address of the email recipient.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>Display name of the email recipient.</p>
    #   @return [String]
    class EmailRecipient < Struct.new(
      :address,
      :display_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a reference when the <code>referenceType</code> is <code>EMAIL</code>.
    #    Otherwise, null.</p>
    # @!attribute name
    #   <p>Identifier of the email reference.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A valid email address.</p>
    #   @return [String]
    class EmailReference < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An empty value.</p>
    class EmptyFieldValue < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The encryption configuration.</p>
    # @!attribute encryption_type
    #   <p>The type of encryption.</p>
    #   @return [String]
    # @!attribute key_id
    #   <p>The full ARN of the encryption key. </p>
    #            <note>
    #               <p>Be sure to provide the full ARN of the encryption key, not just the ID.</p>
    #               <p>Amazon Connect supports only KMS keys with the default key spec of
    #        <a href="https://docs.aws.amazon.com/kms/latest/developerguide/asymmetric-key-specs.html#key-spec-symmetric-default">
    #                     <code>SYMMETRIC_DEFAULT</code>
    #                  </a>. </p>
    #            </note>
    #   @return [String]
    class EncryptionConfig < Struct.new(
      :encryption_type,
      :key_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>End associated tasks related to a case.</p>
    class EndAssociatedTasksActionDefinition < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the endpoint.</p>
    # @!attribute type
    #   <p>Type of the endpoint.</p>
    #   @return [String]
    # @!attribute address
    #   <p>Address of the endpoint.</p>
    #   @return [String]
    class Endpoint < Struct.new(
      :type,
      :address,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the endpoint.</p>
    # @!attribute type
    #   <p>Type of endpoint.</p>
    #   @return [String]
    # @!attribute address
    #   <p>Address of the endpoint.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>Display name of the endpoint.</p>
    #   @return [String]
    class EndpointInfo < Struct.new(
      :type,
      :address,
      :display_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>List of errors for dataset association failures. </p>
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The corresponding error message for the error code.</p>
    #   @return [String]
    class ErrorResult < Struct.new(
      :error_code,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a contact evaluation.</p>
    # @!attribute evaluation_id
    #   <p>A unique identifier for the contact evaluation.</p>
    #   @return [String]
    # @!attribute evaluation_arn
    #   <p>The Amazon Resource Name (ARN) for the contact evaluation resource.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>Metadata about the contact evaluation.</p>
    #   @return [Types::EvaluationMetadata]
    # @!attribute answers
    #   <p>A map of question identifiers to answer value.</p>
    #   @return [Hash<String, Types::EvaluationAnswerOutput>]
    # @!attribute notes
    #   <p>A map of question identifiers to note value.</p>
    #   @return [Hash<String, Types::EvaluationNote>]
    # @!attribute status
    #   <p>The status of the contact evaluation.</p>
    #   @return [String]
    # @!attribute scores
    #   <p>A map of item (section or question) identifiers to score value.</p>
    #   @return [Hash<String, Types::EvaluationScore>]
    # @!attribute created_time
    #   <p>The timestamp for when the evaluation was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The timestamp for when the evaluation was last updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about answer data for a contact evaluation. Answer data must be either string,
    #    numeric, or not applicable.</p>
    # @!attribute string_value
    #   <p>The string value for an answer in a contact evaluation.</p>
    #   @return [String]
    # @!attribute numeric_value
    #   <p>The numeric value for an answer in a contact evaluation.</p>
    #   @return [Float]
    # @!attribute not_applicable
    #   <p>The flag to mark the question as not applicable.</p>
    #   @return [Boolean]
    class EvaluationAnswerData < Struct.new(
      :string_value,
      :numeric_value,
      :not_applicable,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class StringValue < EvaluationAnswerData; end
      class NumericValue < EvaluationAnswerData; end
      class NotApplicable < EvaluationAnswerData; end
      class Unknown < EvaluationAnswerData; end
    end

    # <p>Information about input answers for a contact evaluation.</p>
    # @!attribute value
    #   <p>The value for an answer in a contact evaluation.</p>
    #   @return [Types::EvaluationAnswerData]
    class EvaluationAnswerInput < Struct.new(
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about output answers for a contact evaluation.</p>
    # @!attribute value
    #   <p>The value for an answer in a contact evaluation.</p>
    #   @return [Types::EvaluationAnswerData]
    # @!attribute system_suggested_value
    #   <p>The system suggested value for an answer in a contact evaluation.</p>
    #   @return [Types::EvaluationAnswerData]
    class EvaluationAnswerOutput < Struct.new(
      :value,
      :system_suggested_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the evaluation form.</p>
    # @!attribute evaluation_form_id
    #   <p>The unique identifier for the evaluation form.</p>
    #   @return [String]
    # @!attribute evaluation_form_version
    #   <p>A version of the evaluation form.</p>
    #   @return [Integer]
    # @!attribute locked
    #   <p>The flag indicating whether the evaluation form is locked for changes.</p>
    #   @return [Boolean]
    # @!attribute evaluation_form_arn
    #   <p>The Amazon Resource Name (ARN) for the evaluation form resource.</p>
    #   @return [String]
    # @!attribute title
    #   <p>A title of the evaluation form.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the evaluation form.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the evaluation form.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Items that are part of the evaluation form.  The total number of sections and questions must not exceed 100 each.  Questions must be contained in a section.</p>
    #   @return [Array<Types::EvaluationFormItem>]
    # @!attribute scoring_strategy
    #   <p>A scoring strategy of the evaluation form.</p>
    #   @return [Types::EvaluationFormScoringStrategy]
    # @!attribute created_time
    #   <p>The timestamp for when the evaluation form was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The Amazon Resource Name (ARN) of the user who created the evaluation form.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp for when the evaluation form was last updated.</p>
    #   @return [Time]
    # @!attribute last_modified_by
    #   <p>The Amazon Resource Name (ARN) of the user who last updated the evaluation form.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:evaluation_form_version] = 0 unless options.key?(:evaluation_form_version)
        options[:locked] = false unless options.key?(:locked)
        super
      end
    end

    # <p>Information about an evaluation form used in a contact evaluation.</p>
    # @!attribute evaluation_form_version
    #   <p>A version of the evaluation form.</p>
    #   @return [Integer]
    # @!attribute evaluation_form_id
    #   <p>The unique identifier for the evaluation form.</p>
    #   @return [String]
    # @!attribute evaluation_form_arn
    #   <p>The Amazon Resource Name (ARN) for the evaluation form resource.</p>
    #   @return [String]
    # @!attribute title
    #   <p>A title of the evaluation form.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the evaluation form.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Items that are part of the evaluation form.  The total number of sections and questions must not exceed 100 each.  Questions must be contained in a section.</p>
    #   @return [Array<Types::EvaluationFormItem>]
    # @!attribute scoring_strategy
    #   <p>A scoring strategy of the evaluation form.</p>
    #   @return [Types::EvaluationFormScoringStrategy]
    class EvaluationFormContent < Struct.new(
      :evaluation_form_version,
      :evaluation_form_id,
      :evaluation_form_arn,
      :title,
      :description,
      :items,
      :scoring_strategy,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:evaluation_form_version] = 0 unless options.key?(:evaluation_form_version)
        super
      end
    end

    # <p>Information about an item from an evaluation form. The item must be either a section or a
    #    question.</p>
    # @!attribute section
    #   <p>The information of the section.</p>
    #   @return [Types::EvaluationFormSection]
    # @!attribute question
    #   <p>The information of the question.</p>
    #   @return [Types::EvaluationFormQuestion]
    class EvaluationFormItem < Struct.new(
      :section,
      :question,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Section < EvaluationFormItem; end
      class Question < EvaluationFormItem; end
      class Unknown < EvaluationFormItem; end
    end

    # <p>Information about the automation configuration in numeric questions.</p>
    # @!attribute property_value
    #   <p>The property value of the automation.</p>
    #   @return [Types::NumericQuestionPropertyValueAutomation]
    class EvaluationFormNumericQuestionAutomation < Struct.new(
      :property_value,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class PropertyValue < EvaluationFormNumericQuestionAutomation; end
      class Unknown < EvaluationFormNumericQuestionAutomation; end
    end

    # <p>Information about the option range used for scoring in numeric questions.</p>
    # @!attribute min_value
    #   <p>The minimum answer value of the range option.</p>
    #   @return [Integer]
    # @!attribute max_value
    #   <p>The maximum answer value of the range option.</p>
    #   @return [Integer]
    # @!attribute score
    #   <p>The score assigned to answer values within the range option.</p>
    #   @return [Integer]
    # @!attribute automatic_fail
    #   <p>The flag to mark the option as automatic fail. If an automatic fail answer is provided, the
    #      overall evaluation gets a score of 0.</p>
    #   @return [Boolean]
    class EvaluationFormNumericQuestionOption < Struct.new(
      :min_value,
      :max_value,
      :score,
      :automatic_fail,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:min_value] = 0 unless options.key?(:min_value)
        options[:max_value] = 0 unless options.key?(:max_value)
        options[:score] = 0 unless options.key?(:score)
        options[:automatic_fail] = false unless options.key?(:automatic_fail)
        super
      end
    end

    # <p>Information about properties for a numeric question in an evaluation form.</p>
    # @!attribute min_value
    #   <p>The minimum answer value.</p>
    #   @return [Integer]
    # @!attribute max_value
    #   <p>The maximum answer value.</p>
    #   @return [Integer]
    # @!attribute options
    #   <p>The scoring options of the numeric question.</p>
    #   @return [Array<Types::EvaluationFormNumericQuestionOption>]
    # @!attribute automation
    #   <p>The automation properties of the numeric question.</p>
    #   @return [Types::EvaluationFormNumericQuestionAutomation]
    class EvaluationFormNumericQuestionProperties < Struct.new(
      :min_value,
      :max_value,
      :options,
      :automation,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:min_value] = 0 unless options.key?(:min_value)
        options[:max_value] = 0 unless options.key?(:max_value)
        super
      end
    end

    # <p>Information about a question from an evaluation form.</p>
    # @!attribute title
    #   <p>The title of the question.</p>
    #   @return [String]
    # @!attribute instructions
    #   <p>The instructions of the section.</p>
    #   @return [String]
    # @!attribute ref_id
    #   <p>The identifier of the question. An identifier must be unique within the evaluation
    #      form.</p>
    #   @return [String]
    # @!attribute not_applicable_enabled
    #   <p>The flag to enable not applicable answers to the question.</p>
    #   @return [Boolean]
    # @!attribute question_type
    #   <p>The type of the question.</p>
    #   @return [String]
    # @!attribute question_type_properties
    #   <p>The properties of the type of question. Text questions do not have to define question type
    #      properties.</p>
    #   @return [Types::EvaluationFormQuestionTypeProperties]
    # @!attribute weight
    #   <p>The scoring weight of the section.</p>
    #   @return [Float]
    class EvaluationFormQuestion < Struct.new(
      :title,
      :instructions,
      :ref_id,
      :not_applicable_enabled,
      :question_type,
      :question_type_properties,
      :weight,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:not_applicable_enabled] = false unless options.key?(:not_applicable_enabled)
        options[:weight] = 0 unless options.key?(:weight)
        super
      end
    end

    # <p>Information about properties for a question in an evaluation form. The question type
    #    properties must be either for a numeric question or a single select question.</p>
    # @!attribute numeric
    #   <p>The properties of the numeric question.</p>
    #   @return [Types::EvaluationFormNumericQuestionProperties]
    # @!attribute single_select
    #   <p>The properties of the numeric question.</p>
    #   @return [Types::EvaluationFormSingleSelectQuestionProperties]
    class EvaluationFormQuestionTypeProperties < Struct.new(
      :numeric,
      :single_select,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Numeric < EvaluationFormQuestionTypeProperties; end
      class SingleSelect < EvaluationFormQuestionTypeProperties; end
      class Unknown < EvaluationFormQuestionTypeProperties; end
    end

    # <p>Information about scoring strategy for an evaluation form.</p>
    # @!attribute mode
    #   <p>The scoring mode of the evaluation form.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The scoring status of the evaluation form.</p>
    #   @return [String]
    class EvaluationFormScoringStrategy < Struct.new(
      :mode,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a section from an evaluation form. A section can contain sections and/or
    #    questions. Evaluation forms can only contain sections and subsections (two level nesting).</p>
    # @!attribute title
    #   <p>The title of the section.</p>
    #   @return [String]
    # @!attribute ref_id
    #   <p>The identifier of the section. An identifier must be unique within the evaluation
    #      form.</p>
    #   @return [String]
    # @!attribute instructions
    #   <p>The instructions of the section.</p>
    #   @return [String]
    # @!attribute items
    #   <p>The items of the section.</p>
    #   @return [Array<Types::EvaluationFormItem>]
    # @!attribute weight
    #   <p>The scoring weight of the section.</p>
    #   @return [Float]
    class EvaluationFormSection < Struct.new(
      :title,
      :ref_id,
      :instructions,
      :items,
      :weight,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:weight] = 0 unless options.key?(:weight)
        super
      end
    end

    # <p>Information about the automation configuration in single select questions. Automation
    #    options are evaluated in order, and the first matched option is applied. If no automation option
    #    matches, and there is a default option, then the default option is applied.</p>
    # @!attribute options
    #   <p>The automation options of the single select question.</p>
    #   @return [Array<Types::EvaluationFormSingleSelectQuestionAutomationOption>]
    # @!attribute default_option_ref_id
    #   <p>The identifier of the default answer option, when none of the automation options match the
    #      criteria.</p>
    #   @return [String]
    class EvaluationFormSingleSelectQuestionAutomation < Struct.new(
      :options,
      :default_option_ref_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the automation option of a single select question.</p>
    # @!attribute rule_category
    #   <p>The automation option based on a rule category for the single select question.</p>
    #   @return [Types::SingleSelectQuestionRuleCategoryAutomation]
    class EvaluationFormSingleSelectQuestionAutomationOption < Struct.new(
      :rule_category,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class RuleCategory < EvaluationFormSingleSelectQuestionAutomationOption; end
      class Unknown < EvaluationFormSingleSelectQuestionAutomationOption; end
    end

    # <p>Information about the automation configuration in single select questions.</p>
    # @!attribute ref_id
    #   <p>The identifier of the answer option. An identifier must be unique within the
    #      question.</p>
    #   @return [String]
    # @!attribute text
    #   <p>The title of the answer option.</p>
    #   @return [String]
    # @!attribute score
    #   <p>The score assigned to the answer option.</p>
    #   @return [Integer]
    # @!attribute automatic_fail
    #   <p>The flag to mark the option as automatic fail. If an automatic fail answer is provided, the
    #      overall evaluation gets a score of 0.</p>
    #   @return [Boolean]
    class EvaluationFormSingleSelectQuestionOption < Struct.new(
      :ref_id,
      :text,
      :score,
      :automatic_fail,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:score] = 0 unless options.key?(:score)
        options[:automatic_fail] = false unless options.key?(:automatic_fail)
        super
      end
    end

    # <p>Information about the options in single select questions.</p>
    # @!attribute options
    #   <p>The answer options of the single select question.</p>
    #   @return [Array<Types::EvaluationFormSingleSelectQuestionOption>]
    # @!attribute display_as
    #   <p>The display mode of the single select question.</p>
    #   @return [String]
    # @!attribute automation
    #   <p>The display mode of the single select question.</p>
    #   @return [Types::EvaluationFormSingleSelectQuestionAutomation]
    class EvaluationFormSingleSelectQuestionProperties < Struct.new(
      :options,
      :display_as,
      :automation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about an evaluation form.</p>
    # @!attribute evaluation_form_id
    #   <p>The unique identifier for the evaluation form.</p>
    #   @return [String]
    # @!attribute evaluation_form_arn
    #   <p>The Amazon Resource Name (ARN) for the evaluation form resource.</p>
    #   @return [String]
    # @!attribute title
    #   <p>A title of the evaluation form.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp for when the evaluation form was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The Amazon Resource Name (ARN) of the user who created the evaluation form.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp for when the evaluation form was last updated.</p>
    #   @return [Time]
    # @!attribute last_modified_by
    #   <p>The Amazon Resource Name (ARN) of the user who last updated the evaluation form.</p>
    #   @return [String]
    # @!attribute last_activated_time
    #   <p>The timestamp for when the evaluation form was last activated.</p>
    #   @return [Time]
    # @!attribute last_activated_by
    #   <p> The Amazon Resource Name (ARN) of the user who last activated the evaluation form.</p>
    #   @return [String]
    # @!attribute latest_version
    #   <p>The version number of the latest evaluation form version.</p>
    #   @return [Integer]
    # @!attribute active_version
    #   <p>The version of the active evaluation form version.</p>
    #   @return [Integer]
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
      :active_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:latest_version] = 0 unless options.key?(:latest_version)
        options[:active_version] = nil unless options.key?(:active_version)
        super
      end
    end

    # <p>Summary information about an evaluation form.</p>
    # @!attribute evaluation_form_arn
    #   <p>The Amazon Resource Name (ARN) for the evaluation form resource.</p>
    #   @return [String]
    # @!attribute evaluation_form_id
    #   <p>The unique identifier for the evaluation form.</p>
    #   @return [String]
    # @!attribute evaluation_form_version
    #   <p>A version of the evaluation form.</p>
    #   @return [Integer]
    # @!attribute locked
    #   <p>The flag indicating whether the evaluation form is locked for changes.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>The status of the evaluation form.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp for when the evaluation form was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The Amazon Resource Name (ARN) of the user who created the evaluation form.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp for when the evaluation form was last updated.</p>
    #   @return [Time]
    # @!attribute last_modified_by
    #   <p>The Amazon Resource Name (ARN) of the user who last updated the evaluation form.</p>
    #   @return [String]
    class EvaluationFormVersionSummary < Struct.new(
      :evaluation_form_arn,
      :evaluation_form_id,
      :evaluation_form_version,
      :locked,
      :status,
      :created_time,
      :created_by,
      :last_modified_time,
      :last_modified_by,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:evaluation_form_version] = 0 unless options.key?(:evaluation_form_version)
        options[:locked] = false unless options.key?(:locked)
        super
      end
    end

    # <p>Metadata information about a contact evaluation.</p>
    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #   @return [String]
    # @!attribute evaluator_arn
    #   <p>The Amazon Resource Name (ARN) of the user who last updated the evaluation.</p>
    #   @return [String]
    # @!attribute contact_agent_id
    #   <p>The identifier of the agent who performed the contact.</p>
    #   @return [String]
    # @!attribute score
    #   <p>The overall score of the contact evaluation.</p>
    #   @return [Types::EvaluationScore]
    class EvaluationMetadata < Struct.new(
      :contact_id,
      :evaluator_arn,
      :contact_agent_id,
      :score,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about notes for a contact evaluation.</p>
    # @!attribute value
    #   <p>The note for an item (section or question) in a contact evaluation.</p>
    #            <note>
    #               <p>Even though a note in an evaluation can have up to 3072 chars, there is also a limit on the
    #       total number of chars for all the notes in the evaluation combined. Assuming there are N
    #       questions in the evaluation being submitted, then the max char limit for all notes combined is N
    #       x 1024.</p>
    #            </note>
    #   @return [String]
    class EvaluationNote < Struct.new(
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about scores of a contact evaluation item (section or question).</p>
    # @!attribute percentage
    #   <p>The score percentage for an item in a contact evaluation.</p>
    #   @return [Float]
    # @!attribute not_applicable
    #   <p>The flag to mark the item as not applicable for scoring.</p>
    #   @return [Boolean]
    # @!attribute automatic_fail
    #   <p>The flag that marks the item as automatic fail. If the item or a child item gets an
    #      automatic fail answer, this flag will be true.</p>
    #   @return [Boolean]
    class EvaluationScore < Struct.new(
      :percentage,
      :not_applicable,
      :automatic_fail,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:percentage] = 0 unless options.key?(:percentage)
        options[:not_applicable] = false unless options.key?(:not_applicable)
        options[:automatic_fail] = false unless options.key?(:automatic_fail)
        super
      end
    end

    # <p>Summary information about a contact evaluation.</p>
    # @!attribute evaluation_id
    #   <p>A unique identifier for the contact evaluation.</p>
    #   @return [String]
    # @!attribute evaluation_arn
    #   <p>The Amazon Resource Name (ARN) for the contact evaluation resource.</p>
    #   @return [String]
    # @!attribute evaluation_form_title
    #   <p>A title of the evaluation form.</p>
    #   @return [String]
    # @!attribute evaluation_form_id
    #   <p>The unique identifier for the evaluation form.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the contact evaluation.</p>
    #   @return [String]
    # @!attribute evaluator_arn
    #   <p>The Amazon Resource Name (ARN) of the user who last updated the evaluation.</p>
    #   @return [String]
    # @!attribute score
    #   <p>The overall score of the contact evaluation.</p>
    #   @return [Types::EvaluationScore]
    # @!attribute created_time
    #   <p>The timestamp for when the evaluation was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The timestamp for when the evaluation was last updated.</p>
    #   @return [Time]
    class EvaluationSummary < Struct.new(
      :evaluation_id,
      :evaluation_arn,
      :evaluation_form_title,
      :evaluation_form_id,
      :status,
      :evaluator_arn,
      :score,
      :created_time,
      :last_modified_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The EventBridge action definition.</p>
    # @!attribute name
    #   <p>The name.</p>
    #   @return [String]
    class EventBridgeActionDefinition < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object to specify the expiration of a routing step.</p>
    # @!attribute duration_in_seconds
    #   <p>The number of seconds to wait before expiring the routing step.</p>
    #   @return [Integer]
    # @!attribute expiry_timestamp
    #   <p>The timestamp indicating when the routing step expires.</p>
    #   @return [Time]
    class Expiry < Struct.new(
      :duration_in_seconds,
      :expiry_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A tagged union to specify expression for a routing step.</p>
    # @!attribute attribute_condition
    #   <p>An object to specify the predefined attribute condition.</p>
    #   @return [Types::AttributeCondition]
    # @!attribute and_expression
    #   <p>List of routing expressions which will be AND-ed together.</p>
    #   @return [Array<Types::Expression>]
    # @!attribute or_expression
    #   <p>List of routing expressions which will be OR-ed together.</p>
    #   @return [Array<Types::Expression>]
    # @!attribute not_attribute_condition
    #   <p>An object to specify the predefined attribute condition.</p>
    #   @return [Types::AttributeCondition]
    class Expression < Struct.new(
      :attribute_condition,
      :and_expression,
      :or_expression,
      :not_attribute_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Request for which contact failed to be generated.</p>
    # @!attribute request_identifier
    #   <p>Request identifier provided in the API call in the ContactDataRequest to create a
    #      contact.</p>
    #   @return [String]
    # @!attribute failure_reason_code
    #   <p>Reason code for the failure.</p>
    #   @return [String]
    # @!attribute failure_reason_message
    #   <p>Why the request to create a contact failed.</p>
    #   @return [String]
    class FailedRequest < Struct.new(
      :request_identifier,
      :failure_reason_code,
      :failure_reason_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Object for case field values.</p>
    # @!attribute id
    #   <p>Unique identifier of a field.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Union of potential field value types.</p>
    #   @return [Types::FieldValueUnion]
    class FieldValue < Struct.new(
      :id,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Object to store union of Field values.</p>
    # @!attribute boolean_value
    #   <p>A Boolean number value type.</p>
    #   @return [Boolean]
    # @!attribute double_value
    #   <p>A Double number value type.</p>
    #   @return [Float]
    # @!attribute empty_value
    #   <p>An empty value.</p>
    #   @return [Types::EmptyFieldValue]
    # @!attribute string_value
    #   <p>String value type.</p>
    #   @return [String]
    class FieldValueUnion < Struct.new(
      :boolean_value,
      :double_value,
      :empty_value,
      :string_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:boolean_value] = false unless options.key?(:boolean_value)
        super
      end
    end

    # <p>Contains the filter to apply when retrieving metrics with the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_GetMetricDataV2.html">GetMetricDataV2</a> API.</p>
    # @!attribute filter_key
    #   <p>The key to use for filtering data. For example, <code>QUEUE</code>, <code>ROUTING_PROFILE,
    #       AGENT</code>, <code>CHANNEL</code>, <code>AGENT_HIERARCHY_LEVEL_ONE</code>,
    #       <code>AGENT_HIERARCHY_LEVEL_TWO</code>, <code>AGENT_HIERARCHY_LEVEL_THREE</code>,
    #       <code>AGENT_HIERARCHY_LEVEL_FOUR</code>, <code>AGENT_HIERARCHY_LEVEL_FIVE</code>. There must be
    #      at least 1 key and a maximum 5 keys. </p>
    #   @return [String]
    # @!attribute filter_values
    #   <p>The identifiers to use for filtering data. For example, if you have a filter key of
    #       <code>QUEUE</code>, you would add queue IDs or ARNs in <code>FilterValues</code>. </p>
    #   @return [Array<String>]
    class FilterV2 < Struct.new(
      :filter_key,
      :filter_values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the filter to apply when retrieving metrics.</p>
    # @!attribute queues
    #   <p>The queues to use to filter the metrics. You should specify at least one queue, and can
    #      specify up to 100 queues per request. The <code>GetCurrentMetricsData</code> API in particular
    #      requires a queue when you include a <code>Filter</code> in your request. </p>
    #   @return [Array<String>]
    # @!attribute channels
    #   <p>The channel to use to filter the metrics.</p>
    #   @return [Array<String>]
    # @!attribute routing_profiles
    #   <p>A list of up to 100 routing profile IDs or ARNs.</p>
    #   @return [Array<String>]
    # @!attribute routing_step_expressions
    #   <p>A list of expressions as a filter, in which an expression is an object of a step in a
    #      routing criteria.</p>
    #   @return [Array<String>]
    # @!attribute agent_statuses
    #   <p>A list of up to 50 agent status IDs or ARNs.</p>
    #   @return [Array<String>]
    class Filters < Struct.new(
      :queues,
      :channels,
      :routing_profiles,
      :routing_step_expressions,
      :agent_statuses,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about flow associations.</p>
    # @!attribute resource_id
    #   <p>The identifier of the resource.</p>
    #   @return [String]
    # @!attribute flow_id
    #   <p>The identifier of the flow.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource association.</p>
    #   @return [String]
    class FlowAssociationSummary < Struct.new(
      :resource_id,
      :flow_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Request to GetAttachedFile API.
    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute file_id
    #   <p>The unique identifier of the attached file resource.</p>
    #   @return [String]
    # @!attribute url_expiry_in_seconds
    #   <p>Optional override for the expiry of the pre-signed S3 URL in seconds. The default value is
    #      300.</p>
    #   @return [Integer]
    # @!attribute associated_resource_arn
    #   <p>The resource to which the attached file is (being) uploaded to. The supported resources are
    #       <a href="https://docs.aws.amazon.com/connect/latest/adminguide/cases.html">Cases</a> and <a href="https://docs.aws.amazon.com/connect/latest/adminguide/setup-email-channel.html">Email</a>.</p>
    #            <note>
    #               <p>This value must be a valid ARN.</p>
    #            </note>
    #   @return [String]
    class GetAttachedFileRequest < Struct.new(
      :instance_id,
      :file_id,
      :url_expiry_in_seconds,
      :associated_resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Response from GetAttachedFile API.
    # @!attribute file_arn
    #   <p>The unique identifier of the attached file resource (ARN).</p>
    #   @return [String]
    # @!attribute file_id
    #   <p>The unique identifier of the attached file resource.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time of Creation of the file resource as an ISO timestamp. It's specified in ISO 8601
    #      format: <code>yyyy-MM-ddThh:mm:ss.SSSZ</code>. For example,
    #      <code>2024-05-03T02:41:28.172Z</code>.</p>
    #   @return [String]
    # @!attribute file_status
    #   <p>The current status of the attached file.</p>
    #   @return [String]
    # @!attribute file_name
    #   <p>A case-sensitive name of the attached file being uploaded.</p>
    #   @return [String]
    # @!attribute file_size_in_bytes
    #   <p>The size of the attached file in bytes.</p>
    #   @return [Integer]
    # @!attribute associated_resource_arn
    #   <p>The resource to which the attached file is (being) uploaded to. <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateCase.html">Cases</a> are the only
    #      current supported resource.</p>
    #   @return [String]
    # @!attribute file_use_case_type
    #   <p>The use case for the file.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>Represents the identity that created the file.</p>
    #   @return [Types::CreatedByInfo]
    # @!attribute download_url_metadata
    #   <p>URL and expiry to be used when downloading the attached file. </p>
    #   @return [Types::DownloadUrlMetadata]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, <code>{
    #       "Tags": {"key1":"value1", "key2":"value2"} }</code>.</p>
    #   @return [Hash<String, String>]
    class GetAttachedFileResponse < Struct.new(
      :file_arn,
      :file_id,
      :creation_time,
      :file_status,
      :file_name,
      :file_size_in_bytes,
      :associated_resource_arn,
      :file_use_case_type,
      :created_by,
      :download_url_metadata,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute initial_contact_id
    #   <p>The identifier of the initial contact.</p>
    #   @return [String]
    class GetContactAttributesRequest < Struct.new(
      :instance_id,
      :initial_contact_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute attributes
    #   <p>Information about the attributes.</p>
    #   @return [Hash<String, String>]
    class GetContactAttributesResponse < Struct.new(
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #   @return [String]
    # @!attribute metrics
    #   <p>A list of contact-level metrics to retrieve.</p>
    #   @return [Array<Types::ContactMetricInfo>]
    class GetContactMetricsRequest < Struct.new(
      :instance_id,
      :contact_id,
      :metrics,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_results
    #   <p>A list of metric results containing the calculated values for each requested metric. Each
    #      result includes the metric name and its corresponding calculated value.</p>
    #   @return [Array<Types::ContactMetricResult>]
    # @!attribute id
    #   <p>The unique identifier of the contact for which metrics were retrieved.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the contact for which metrics were retrieved.</p>
    #   @return [String]
    class GetContactMetricsResponse < Struct.new(
      :metric_results,
      :id,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>The filters to apply to returned metrics. You can filter up to the following limits:</p>
    #            <ul>
    #               <li>
    #                  <p>Queues: 100</p>
    #               </li>
    #               <li>
    #                  <p>Routing profiles: 100</p>
    #               </li>
    #               <li>
    #                  <p>Channels: 3 (VOICE, CHAT, and TASK channels are supported.)</p>
    #               </li>
    #               <li>
    #                  <p>RoutingStepExpressions: 50</p>
    #               </li>
    #               <li>
    #                  <p>AgentStatuses: 50</p>
    #               </li>
    #            </ul>
    #            <p>Metric data is retrieved only for the resources associated with the queues or routing
    #      profiles, and by any channels included in the filter. (You cannot filter by both queue AND
    #      routing profile.) You can include both resource IDs and resource ARNs in the same request.</p>
    #            <p>When using <code>AgentStatuses</code> as filter make sure Queues is added as primary
    #      filter.</p>
    #            <p>When using the <code>RoutingStepExpression</code> filter, you need to pass exactly one
    #       <code>QueueId</code>. The filter is also case sensitive so when using the
    #       <code>RoutingStepExpression</code> filter, grouping by <code>ROUTING_STEP_EXPRESSION</code> is
    #      required.</p>
    #            <p>Currently tagging is only supported on the resources that are passed in the filter.</p>
    #   @return [Types::Filters]
    # @!attribute groupings
    #   <p>Defines the level of aggregation for metrics data by a dimension(s). Its similar to sorting
    #      items into buckets based on a common characteristic, then counting or calculating something for
    #      each bucket. For example, when grouped by <code>QUEUE</code>, the metrics returned apply to each
    #      queue rather than aggregated for all queues. </p>
    #            <p>The grouping list is an ordered list, with the first item in the list defined as the primary
    #      grouping. If no grouping is included in the request, the aggregation happens at the
    #      instance-level.</p>
    #            <ul>
    #               <li>
    #                  <p>If you group by <code>CHANNEL</code>, you should include a Channels filter.
    #        VOICE, CHAT, and TASK channels are supported.</p>
    #               </li>
    #               <li>
    #                  <p>If you group by <code>AGENT_STATUS</code>, you must include the <code>QUEUE</code> as the
    #        primary grouping and use queue filter. When you group by <code>AGENT_STATUS</code>, the only
    #        metric available is the <code>AGENTS_ONLINE</code> metric.</p>
    #               </li>
    #               <li>
    #                  <p>If you group by <code>ROUTING_PROFILE</code>, you must include either a queue or routing
    #        profile filter. In addition, a routing profile filter is required for metrics
    #         <code>CONTACTS_SCHEDULED</code>, <code>CONTACTS_IN_QUEUE</code>, and <code>
    #         OLDEST_CONTACT_AGE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>When using the <code>RoutingStepExpression</code> filter, group by
    #         <code>ROUTING_STEP_EXPRESSION</code> is required.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute current_metrics
    #   <p>The metrics to retrieve. Specify the name and unit for each metric. The following metrics
    #      are available. For a description of all the metrics, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html">Metrics definitions</a> in the
    #        <i>Amazon Connect Administrator Guide</i>.</p>
    #            <dl>
    #               <dt>AGENTS_AFTER_CONTACT_WORK</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#aftercallwork-real-time">ACW</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_AVAILABLE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#available-real-time">Available</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_ERROR</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#error-real-time">Error</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_NON_PRODUCTIVE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#non-productive-time-real-time">NPT
    #          (Non-Productive Time)</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_ON_CALL</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#on-call-real-time">On
    #         contact</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_ON_CONTACT</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#on-call-real-time">On
    #         contact</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_ONLINE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#online-real-time">Online</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_STAFFED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#staffed-real-time">Staffed</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_IN_QUEUE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#in-queue-real-time">In
    #         queue</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_SCHEDULED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#scheduled-real-time">Scheduled</a>
    #                  </p>
    #               </dd>
    #               <dt>OLDEST_CONTACT_AGE</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>When you use groupings, Unit says SECONDS and the Value is returned in SECONDS. </p>
    #                  <p>When you do not use groupings, Unit says SECONDS but the Value is returned in
    #         MILLISECONDS. For example, if you get a response like this:</p>
    #                  <p>
    #                     <code>{ "Metric": { "Name": "OLDEST_CONTACT_AGE", "Unit": "SECONDS" }, "Value": 24113.0
    #         </code>}</p>
    #                  <p>The actual OLDEST_CONTACT_AGE is 24 seconds.</p>
    #                  <p>When the filter <code>RoutingStepExpression</code> is used, this metric is still
    #         calculated from enqueue time. For example, if a contact that has been queued under
    #          <code><Expression 1></code> for 10 seconds has expired and <code><Expression 2></code>
    #         becomes active, then <code>OLDEST_CONTACT_AGE</code> for this queue will be counted starting
    #         from 10, not 0.</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#oldest-real-time">Oldest</a>
    #                  </p>
    #               </dd>
    #               <dt>SLOTS_ACTIVE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#active-real-time">Active</a>
    #                  </p>
    #               </dd>
    #               <dt>SLOTS_AVAILABLE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#availability-real-time">Availability</a>
    #                  </p>
    #               </dd>
    #            </dl>
    #   @return [Array<Types::CurrentMetric>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #            <p>The token expires after 5 minutes from the time it is created. Subsequent requests that use
    #      the token must use the same request parameters as the request that generated the token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute sort_criteria
    #   <p>The way to sort the resulting response based on metrics. You can enter one sort criteria. By
    #      default resources are sorted based on <code>AGENTS_ONLINE</code>, <code>DESCENDING</code>. The
    #      metric collection is sorted based on the input metrics.</p>
    #            <p>Note the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Sorting on <code>SLOTS_ACTIVE</code> and <code>SLOTS_AVAILABLE</code> is not
    #        supported.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::CurrentMetricSortCriteria>]
    class GetCurrentMetricDataRequest < Struct.new(
      :instance_id,
      :filters,
      :groupings,
      :current_metrics,
      :next_token,
      :max_results,
      :sort_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #            <p>The token expires after 5 minutes from the time it is created. Subsequent requests that use
    #      the token must use the same request parameters as the request that generated the token.</p>
    #   @return [String]
    # @!attribute metric_results
    #   <p>Information about the real-time metrics.</p>
    #   @return [Array<Types::CurrentMetricResult>]
    # @!attribute data_snapshot_time
    #   <p>The time at which the metrics were retrieved and cached for pagination.</p>
    #   @return [Time]
    # @!attribute approximate_total_count
    #   <p>The total count of the result, regardless of the current page size. </p>
    #   @return [Integer]
    class GetCurrentMetricDataResponse < Struct.new(
      :next_token,
      :metric_results,
      :data_snapshot_time,
      :approximate_total_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>The filters to apply to returned user data. You can filter up to the following
    #      limits:</p>
    #            <ul>
    #               <li>
    #                  <p>Queues: 100</p>
    #               </li>
    #               <li>
    #                  <p>Routing profiles: 100</p>
    #               </li>
    #               <li>
    #                  <p>Agents: 100</p>
    #               </li>
    #               <li>
    #                  <p>Contact states: 9</p>
    #               </li>
    #               <li>
    #                  <p>User hierarchy groups: 1</p>
    #               </li>
    #            </ul>
    #            <p> The user data is retrieved for only the specified values/resources in the filter. A maximum
    #      of one filter can be passed from queues, routing profiles, agents, and user hierarchy groups. </p>
    #            <p>Currently tagging is only supported on the resources that are passed in the filter.</p>
    #   @return [Types::UserDataFilters]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class GetCurrentUserDataRequest < Struct.new(
      :instance_id,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute user_data_list
    #   <p>A list of the user data that is returned.</p>
    #   @return [Array<Types::UserData>]
    # @!attribute approximate_total_count
    #   <p>The total count of the result, regardless of the current page size.</p>
    #   @return [Integer]
    class GetCurrentUserDataResponse < Struct.new(
      :next_token,
      :user_data_list,
      :approximate_total_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #   @return [String]
    # @!attribute from_date
    #   <p>The date from when the hours of operation are listed.</p>
    #   @return [String]
    # @!attribute to_date
    #   <p>The date until when the hours of operation are listed.</p>
    #   @return [String]
    class GetEffectiveHoursOfOperationsRequest < Struct.new(
      :instance_id,
      :hours_of_operation_id,
      :from_date,
      :to_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute effective_hours_of_operation_list
    #   <p>Information about the effective hours of operations.</p>
    #   @return [Array<Types::EffectiveHoursOfOperations>]
    # @!attribute time_zone
    #   <p>The time zone for the hours of operation.</p>
    #   @return [String]
    class GetEffectiveHoursOfOperationsResponse < Struct.new(
      :effective_hours_of_operation_list,
      :time_zone,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    class GetFederationTokenRequest < Struct.new(
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute credentials
    #   <p>The credentials to use for federation.</p>
    #   @return [Types::Credentials]
    # @!attribute sign_in_url
    #   <p>The URL to sign into the user's instance. </p>
    #   @return [String]
    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the user.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier for the user. This can be the ID or the ARN of the user.</p>
    #   @return [String]
    class GetFederationTokenResponse < Struct.new(
      :credentials,
      :sign_in_url,
      :user_arn,
      :user_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource.</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Web Services End User Messaging SMS phone number ARN when using
    #         <code>SMS_PHONE_NUMBER</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Web Services End User Messaging Social phone number ARN when using
    #         <code>WHATSAPP_MESSAGING_PHONE_NUMBER</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute resource_type
    #   <p>A valid resource type.</p>
    #   @return [String]
    class GetFlowAssociationRequest < Struct.new(
      :instance_id,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The identifier of the resource.</p>
    #   @return [String]
    # @!attribute flow_id
    #   <p>The identifier of the flow.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>A valid resource type.</p>
    #   @return [String]
    class GetFlowAssociationResponse < Struct.new(
      :resource_id,
      :flow_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp, in UNIX Epoch time format, at which to start the reporting interval for the
    #      retrieval of historical metrics data. The time must be specified using a multiple of 5 minutes,
    #      such as 10:05, 10:10, 10:15.</p>
    #            <p>The start time cannot be earlier than 24 hours before the time of the request. Historical
    #      metrics are available only for 24 hours.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The timestamp, in UNIX Epoch time format, at which to end the reporting interval for the
    #      retrieval of historical metrics data. The time must be specified using an interval of 5 minutes,
    #      such as 11:00, 11:05, 11:10, and must be later than the start time timestamp.</p>
    #            <p>The time range between the start and end time must be less than 24 hours.</p>
    #   @return [Time]
    # @!attribute filters
    #   <p>The queues, up to 100, or channels, to use to filter the metrics returned. Metric data is
    #      retrieved only for the resources associated with the queues or channels included in the filter.
    #      You can include both queue IDs and queue ARNs in the same request. VOICE, CHAT, and TASK channels are supported.</p>
    #            <p>RoutingStepExpression is not a valid filter for GetMetricData and we recommend switching to
    #      GetMetricDataV2 for more up-to-date features.</p>
    #            <note>
    #               <p>To filter by <code>Queues</code>, enter the queue
    #       ID/ARN, not the name of the queue.</p>
    #            </note>
    #   @return [Types::Filters]
    # @!attribute groupings
    #   <p>The grouping applied to the metrics returned. For example, when results are grouped by
    #      queue, the metrics returned are grouped by queue. The values returned apply to the metrics for
    #      each queue rather than aggregated for all queues.</p>
    #            <p>If no grouping is specified, a summary of metrics for all queues is returned.</p>
    #            <p>RoutingStepExpression is not a valid filter for GetMetricData and we recommend switching to
    #      GetMetricDataV2 for more up-to-date features.</p>
    #   @return [Array<String>]
    # @!attribute historical_metrics
    #   <p>The metrics to retrieve. Specify the name, unit, and statistic for each metric. The
    #      following historical metrics are available. For a description of each metric, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html">Metrics
    #       definition</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #            <note>
    #               <p>This API does not support a contacts
    #       incoming metric (there's no CONTACTS_INCOMING metric missing from the documented list). </p>
    #            </note>
    #            <dl>
    #               <dt>ABANDON_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-queue-abandon-time">Average
    #          queue abandon time</a>
    #                  </p>
    #               </dd>
    #               <dt>AFTER_CONTACT_WORK_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#after-contact-work-time">After
    #          contact work time</a>
    #                  </p>
    #               </dd>
    #               <dt>API_CONTACTS_HANDLED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#api-contacts-handled">API contacts
    #          handled</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_HOLD_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-hold-time">Average
    #          customer hold time</a>
    #                  </p>
    #               </dd>
    #               <dt>CALLBACK_CONTACTS_HANDLED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#callback-contacts-handled">Callback
    #          contacts handled</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_ABANDONED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-abandoned">Contacts
    #          abandoned</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_AGENT_HUNG_UP_FIRST</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-agent-hung-up-first">Contacts agent hung up first</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_CONSULTED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-consulted">Contacts
    #          consulted</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_HANDLED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-handled">Contacts
    #          handled</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_HANDLED_INCOMING</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-handled-incoming">Contacts
    #          handled incoming</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_HANDLED_OUTBOUND</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-handled-outbound">Contacts
    #          handled outbound</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_HOLD_ABANDONS</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-hold-disconnect">Contacts
    #          hold disconnect</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_MISSED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-non-response">AGENT_NON_RESPONSE</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_QUEUED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-queued">Contacts
    #          queued</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_IN</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-in">Contacts
    #          transferred in</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_IN_FROM_QUEUE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-queue">Contacts transferred out queue</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_OUT</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out">Contacts
    #          transferred out</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_OUT_FROM_QUEUE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-queue">Contacts transferred out queue</a>
    #                  </p>
    #               </dd>
    #               <dt>HANDLE_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-handle-time">Average handle
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>INTERACTION_AND_HOLD_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-interaction-and-customer-hold-time">Average agent interaction and customer hold time</a>
    #                  </p>
    #               </dd>
    #               <dt>INTERACTION_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#aaverage-agent-interaction-time">Average agent interaction time</a>
    #                  </p>
    #               </dd>
    #               <dt>OCCUPANCY</dt>
    #               <dd>
    #                  <p>Unit: PERCENT</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#occupancy">Occupancy</a>
    #                  </p>
    #               </dd>
    #               <dt>QUEUE_ANSWER_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html##average-queue-answer-time">Average
    #          queue answer time</a>
    #                  </p>
    #               </dd>
    #               <dt>QUEUED_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: MAX</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#minimum-flow-time">Minimum flow
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>SERVICE_LEVEL</dt>
    #               <dd>
    #                  <p>You can include up to 20 SERVICE_LEVEL metrics in a request.</p>
    #                  <p>Unit: PERCENT</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>Threshold: For <code>ThresholdValue</code>, enter any whole number from 1 to 604800
    #         (inclusive), in seconds. For <code>Comparison</code>, you must enter <code>LT</code> (for
    #         "Less than"). </p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-queue-abandon-time">Average
    #          queue abandon time</a>
    #                  </p>
    #               </dd>
    #            </dl>
    #   @return [Array<Types::HistoricalMetric>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class GetMetricDataRequest < Struct.new(
      :instance_id,
      :start_time,
      :end_time,
      :filters,
      :groupings,
      :historical_metrics,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #            <p>The token expires after 5 minutes from the time it is created. Subsequent requests that use
    #      the token must use the same request parameters as the request that generated the token.</p>
    #   @return [String]
    # @!attribute metric_results
    #   <p>Information about the historical metrics.</p>
    #            <p>If no grouping is specified, a summary of metric data is returned.</p>
    #   @return [Array<Types::HistoricalMetricResult>]
    class GetMetricDataResponse < Struct.new(
      :next_token,
      :metric_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. This includes the <code>instanceId</code> an Amazon Connect
    #      instance.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp, in UNIX Epoch time format, at which to start the reporting interval for the
    #      retrieval of historical metrics data. The time must be before the end time timestamp. The start
    #      and end time depends on the <code>IntervalPeriod</code> selected. By default the time range
    #      between start and end time is 35 days. Historical metrics are available for 3 months.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The timestamp, in UNIX Epoch time format, at which to end the reporting interval for the
    #      retrieval of historical metrics data. The time must be later than the start time timestamp. It
    #      cannot be later than the current timestamp.</p>
    #   @return [Time]
    # @!attribute interval
    #   <p>The interval period and timezone to apply to returned metrics.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IntervalPeriod</code>: An aggregated grouping applied to request metrics. Valid
    #         <code>IntervalPeriod</code> values are: <code>FIFTEEN_MIN</code> | <code>THIRTY_MIN</code> |
    #         <code>HOUR</code> | <code>DAY</code> | <code>WEEK</code> | <code>TOTAL</code>. </p>
    #                  <p>For example, if <code>IntervalPeriod</code> is selected <code>THIRTY_MIN</code>,
    #         <code>StartTime</code> and <code>EndTime</code> differs by 1 day, then Amazon Connect
    #        returns 48 results in the response. Each result is aggregated by the THIRTY_MIN period. By
    #        default Amazon Connect aggregates results based on the <code>TOTAL</code> interval period. </p>
    #                  <p>The following list describes restrictions on <code>StartTime</code> and
    #         <code>EndTime</code> based on which <code>IntervalPeriod</code> is requested. </p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>FIFTEEN_MIN</code>: The difference between <code>StartTime</code> and
    #           <code>EndTime</code> must be less than 3 days.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>THIRTY_MIN</code>: The difference between <code>StartTime</code> and
    #           <code>EndTime</code> must be less than 3 days.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>HOUR</code>: The difference between <code>StartTime</code> and
    #           <code>EndTime</code> must be less than 3 days.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>DAY</code>: The difference between <code>StartTime</code> and <code>EndTime</code>
    #          must be less than 35 days.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>WEEK</code>: The difference between <code>StartTime</code> and
    #           <code>EndTime</code> must be less than 35 days.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TOTAL</code>: The difference between <code>StartTime</code> and
    #           <code>EndTime</code> must be less than 35 days.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TimeZone</code>: The timezone applied to requested metrics.</p>
    #               </li>
    #            </ul>
    #   @return [Types::IntervalDetails]
    # @!attribute filters
    #   <p>The filters to apply to returned metrics. You can filter on the following resources:</p>
    #            <ul>
    #               <li>
    #                  <p>Agents</p>
    #               </li>
    #               <li>
    #                  <p>Campaigns</p>
    #               </li>
    #               <li>
    #                  <p>Channels</p>
    #               </li>
    #               <li>
    #                  <p>Feature</p>
    #               </li>
    #               <li>
    #                  <p>Queues</p>
    #               </li>
    #               <li>
    #                  <p>Routing profiles</p>
    #               </li>
    #               <li>
    #                  <p>Routing step expression</p>
    #               </li>
    #               <li>
    #                  <p>User hierarchy groups</p>
    #               </li>
    #            </ul>
    #            <p>At least one filter must be passed from queues, routing profiles, agents, or user hierarchy
    #      groups.</p>
    #            <p>For metrics for outbound campaigns analytics, you can also use campaigns to satisfy at least
    #      one filter requirement.</p>
    #            <p>To filter by phone number, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/create-historical-metrics-report.html">Create a historical
    #       metrics report</a> in the <i>Amazon Connect Administrator
    #      Guide</i>.</p>
    #            <p>Note the following limits:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Filter keys</b>: A maximum of 5 filter keys are supported in
    #        a single request. Valid filter keys: <code>AGENT</code> |
    #         <code>AGENT_HIERARCHY_LEVEL_ONE</code> | <code>AGENT_HIERARCHY_LEVEL_TWO</code> |
    #         <code>AGENT_HIERARCHY_LEVEL_THREE</code> | <code>AGENT_HIERARCHY_LEVEL_FOUR</code> |
    #         <code>AGENT_HIERARCHY_LEVEL_FIVE</code> | <code>ANSWERING_MACHINE_DETECTION_STATUS</code> |
    #         <code> BOT_ID</code> | <code>BOT_ALIAS</code> | <code>BOT_VERSION</code> |
    #         <code>BOT_LOCALE</code> | <code>BOT_INTENT_NAME</code> | <code>CAMPAIGN</code> |
    #         <code>CAMPAIGN_DELIVERY_EVENT_TYPE</code> | <code>CAMPAIGN_EXCLUDED_EVENT_TYPE </code> |
    #         <code>CASE_TEMPLATE_ARN</code> | <code>CASE_STATUS</code> | <code>CHANNEL</code> |
    #         <code>contact/segmentAttributes/connect:Subtype</code> | <code>DISCONNECT_REASON</code> |
    #         <code>EVALUATION_FORM</code> | <code>EVALUATION_SECTION</code> |
    #         <code>EVALUATION_QUESTION</code> | <code>EVALUATION_SOURCE</code> | <code>FEATURE</code> |
    #         <code>FLOW_ACTION_ID</code> | <code>FLOW_TYPE</code> | <code>FLOWS_MODULE_RESOURCE_ID</code> |
    #         <code>FLOWS_NEXT_RESOURCE_ID</code> | <code>FLOWS_NEXT_RESOURCE_QUEUE_ID</code> |
    #         <code>FLOWS_OUTCOME_TYPE</code> | <code>FLOWS_RESOURCE_ID</code> | <code>FORM_VERSION</code> |
    #         <code>INITIATION_METHOD</code> | <code>INVOKING_RESOURCE_PUBLISHED_TIMESTAMP</code> |
    #         <code>INVOKING_RESOURCE_TYPE</code> | <code>PARENT_FLOWS_RESOURCE_ID</code> |
    #         <code>RESOURCE_PUBLISHED_TIMESTAMP</code> | <code>ROUTING_PROFILE</code> |
    #         <code>ROUTING_STEP_EXPRESSION</code> | <code>QUEUE</code> | <code>Q_CONNECT_ENABLED</code> |
    #       </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Filter values</b>: A maximum of 100 filter values are
    #        supported in a single request. VOICE, CHAT, and TASK are valid <code>filterValue</code> for the
    #        CHANNEL filter key. They do not count towards limitation of 100 filter values. For example, a
    #        GetMetricDataV2 request can filter by 50 queues, 35 agents, and 15 routing profiles for a total
    #        of 100 filter values, along with 3 channel filters. </p>
    #                  <p>
    #                     <code>contact_lens_conversational_analytics</code> is a valid filterValue for the
    #         <code>FEATURE</code> filter key. It is available only to contacts analyzed by Contact Lens
    #        conversational analytics.</p>
    #                  <p>
    #                     <code>connect:Chat</code>, <code>connect:SMS</code>, <code>connect:Telephony</code>, and
    #         <code>connect:WebRTC</code> are valid <code>filterValue</code> examples (not exhaustive) for
    #        the <code>contact/segmentAttributes/connect:Subtype filter</code> key.</p>
    #                  <p>
    #                     <code>ROUTING_STEP_EXPRESSION</code> is a valid filter key with a filter value up to 3000
    #        length. This filter is case and order sensitive. JSON string fields must be sorted in ascending
    #        order and JSON array order should be kept as is.</p>
    #                  <p>
    #                     <code>Q_CONNECT_ENABLED</code>. TRUE and FALSE are the only valid filterValues for the
    #         <code>Q_CONNECT_ENABLED</code> filter key. </p>
    #                  <ul>
    #                     <li>
    #                        <p>TRUE includes all contacts that had Amazon Q in Connect enabled as part of the flow.</p>
    #                     </li>
    #                     <li>
    #                        <p>FALSE includes all contacts that did not have Amazon Q in Connect enabled as part of the flow</p>
    #                     </li>
    #                  </ul>
    #                  <p>This filter is available only for contact record-driven metrics. </p>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-outbound-campaigns_Campaign.html">Campaign</a> ARNs are valid <code>filterValues</code> for the <code>CAMPAIGN</code>
    #        filter key.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::FilterV2>]
    # @!attribute groupings
    #   <p>The grouping applied to the metrics that are returned. For example, when results are grouped
    #      by queue, the metrics returned are grouped by queue. The values that are returned apply to the
    #      metrics for each queue. They are not aggregated for all queues.</p>
    #            <p>If no grouping is specified, a summary of all metrics is returned.</p>
    #            <p>Valid grouping keys: <code>AGENT</code> | <code>AGENT_HIERARCHY_LEVEL_ONE</code> |
    #       <code>AGENT_HIERARCHY_LEVEL_TWO</code> | <code>AGENT_HIERARCHY_LEVEL_THREE</code> |
    #       <code>AGENT_HIERARCHY_LEVEL_FOUR</code> | <code>AGENT_HIERARCHY_LEVEL_FIVE</code> |
    #       <code>ANSWERING_MACHINE_DETECTION_STATUS</code> | <code>BOT_ID</code> | <code>BOT_ALIAS</code> |
    #       <code>BOT_VERSION</code> | <code>BOT_LOCALE</code> | <code>BOT_INTENT_NAME</code> |
    #       <code>CAMPAIGN</code> | <code>CAMPAIGN_DELIVERY_EVENT_TYPE</code> |
    #       <code>CAMPAIGN_EXCLUDED_EVENT_TYPE</code> | <code>CAMPAIGN_EXECUTION_TIMESTAMP</code> |
    #       <code>CASE_TEMPLATE_ARN</code> | <code>CASE_STATUS</code> | <code>CHANNEL</code> |
    #       <code>contact/segmentAttributes/connect:Subtype</code> | <code>DISCONNECT_REASON</code> |
    #       <code>EVALUATION_FORM</code> | <code>EVALUATION_SECTION</code> |
    #       <code>EVALUATION_QUESTION</code> | <code>EVALUATION_SOURCE</code> |
    #       <code>FLOWS_RESOURCE_ID</code> | <code>FLOWS_MODULE_RESOURCE_ID</code> |
    #       <code>FLOW_ACTION_ID</code> | <code>FLOW_TYPE</code> | <code>FLOWS_OUTCOME_TYPE</code> |
    #       <code>FORM_VERSION</code> | <code>INITIATION_METHOD</code> |
    #       <code>INVOKING_RESOURCE_PUBLISHED_TIMESTAMP</code> | <code>INVOKING_RESOURCE_TYPE</code> |
    #       <code>PARENT_FLOWS_RESOURCE_ID</code> | <code>Q_CONNECT_ENABLED</code> | <code>QUEUE</code> |
    #       <code>RESOURCE_PUBLISHED_TIMESTAMP</code> | <code>ROUTING_PROFILE</code> |
    #       <code>ROUTING_STEP_EXPRESSION</code>
    #            </p>
    #            <p>Type: Array of strings</p>
    #            <p>Array Members: Maximum number of 4 items</p>
    #            <p>Required: No</p>
    #   @return [Array<String>]
    # @!attribute metrics
    #   <p>The metrics to retrieve. Specify the name, groupings, and filters for each metric. The
    #      following historical metrics are available. For a description of each metric, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html">Metrics
    #       definition</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #            <dl>
    #               <dt>ABANDONMENT_RATE</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Feature,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#abandonment-rate">Abandonment
    #          rate</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENT_ADHERENT_TIME</dt>
    #               <dd>
    #                  <p>This metric is available only in Amazon Web Services Regions where <a href="https://docs.aws.amazon.com/connect/latest/adminguide/regions.html#optimization_region">Forecasting, capacity planning, and scheduling</a> is available.</p>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy </p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#adherent-time">Adherent time</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENT_ANSWER_RATE</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-answer-rate">Agent answer
    #          rate</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENT_NON_ADHERENT_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#non-adherent-time">Non-adherent
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENT_NON_RESPONSE</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy </p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-non-response">Agent
    #          non-response</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENT_NON_RESPONSE_WITHOUT_CUSTOMER_ABANDONS</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>Data for this metric is available starting from October 1, 2023 0:00:00 GMT.</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-non-response-without-customer-abandons">Agent non-response without customer abandons</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENT_OCCUPANCY</dt>
    #               <dd>
    #                  <p>Unit: Percentage</p>
    #                  <p>Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy </p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#occupancy">Occupancy</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENT_SCHEDULE_ADHERENCE</dt>
    #               <dd>
    #                  <p>This metric is available only in Amazon Web Services Regions where <a href="https://docs.aws.amazon.com/connect/latest/adminguide/regions.html#optimization_region">Forecasting, capacity planning, and scheduling</a> is available.</p>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#adherence">Adherence</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENT_SCHEDULED_TIME</dt>
    #               <dd>
    #                  <p>This metric is available only in Amazon Web Services Regions where <a href="https://docs.aws.amazon.com/connect/latest/adminguide/regions.html#optimization_region">Forecasting, capacity planning, and scheduling</a> is available.</p>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#scheduled-time">Scheduled
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_ABANDON_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Feature,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-queue-abandon-time">Average
    #          queue abandon time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_ACTIVE_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-active-time">Average active
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_AFTER_CONTACT_WORK_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid metric filter key: <code>INITIATION_METHOD</code>
    #                  </p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Feature,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#after-contact-work-time">Average
    #          after contact work time</a>
    #                  </p>
    #                  <note>
    #                     <p>Feature is a valid filter but not a valid grouping.</p>
    #                  </note>
    #               </dd>
    #               <dt>AVG_AGENT_CONNECTING_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid metric filter key: <code>INITIATION_METHOD</code>. For now, this metric only
    #         supports the following as <code>INITIATION_METHOD</code>: <code>INBOUND</code> |
    #          <code>OUTBOUND</code> | <code>CALLBACK</code> | <code>API</code>
    #                  </p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-api-connecting-time">Average agent API connecting time</a>
    #                  </p>
    #                  <note>
    #                     <p>The <code>Negate</code> key in metric-level filters is not applicable for this
    #          metric.</p>
    #                  </note>
    #               </dd>
    #               <dt>AVG_AGENT_PAUSE_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-pause-time">Average
    #          agent pause time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_BOT_CONVERSATION_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
    #         version, Bot locale, Flows resource ID, Flows module resource ID, Flow type, Flow action ID,
    #         Invoking resource published timestamp, Initiation method, Invoking resource type, Parent flows
    #         resource ID</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#average-bot-conversation-time">Average bot
    #          conversation time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_BOT_CONVERSATION_TURNS</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
    #         version, Bot locale, Flows resource ID, Flows module resource ID, Flow type, Flow action ID,
    #         Invoking resource published timestamp, Initiation method, Invoking resource type, Parent flows
    #         resource ID</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#average-bot-conversation-turns">Average bot
    #          conversation turns</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_CASE_RELATED_CONTACTS</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Required filter key: CASE_TEMPLATE_ARN</p>
    #                  <p>Valid groupings and filters: CASE_TEMPLATE_ARN, CASE_STATUS</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-contacts-per-case">Average
    #          contacts per case</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_CASE_RESOLUTION_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Required filter key: CASE_TEMPLATE_ARN</p>
    #                  <p>Valid groupings and filters: CASE_TEMPLATE_ARN, CASE_STATUS</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-case-resolution-time">Average
    #          case resolution time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_CONTACT_DURATION</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Feature,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-contact-duration">Average
    #          contact duration</a>
    #                  </p>
    #                  <note>
    #                     <p>Feature is a valid filter but not a valid grouping.</p>
    #                  </note>
    #               </dd>
    #               <dt>AVG_CONTACT_FIRST_RESPONSE_TIME_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-average-contact-first-response-wait-time">Agent average contact first response wait time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_CONVERSATION_CLOSE_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-conversation-close-time">Average conversation close time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_CONVERSATION_DURATION</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Feature,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-conversation-duration">Average conversation duration</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_DIALS_PER_MINUTE</dt>
    #               <dd>
    #                  <p>This metric is available only for outbound campaigns that use the agent assisted voice
    #         and automated voice delivery modes.</p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Agent, Campaign, Queue, Routing Profile</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-dials-per-minute">Average
    #          dials per minute</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_EVALUATION_SCORE</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, Evaluation Form ID, Evaluation Section ID,
    #         Evaluation Question ID, Evaluation Source, Form Version, Queue, Routing Profile</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-evaluation-score">Average
    #          evaluation score</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_FIRST_RESPONSE_TIME_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-first-response-time">Average agent first response time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_FLOW_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Flow type, Flows module
    #         resource ID, Flows next resource ID, Flows next resource queue ID, Flows outcome type, Flows
    #         resource ID, Initiation method, Resource published timestamp</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-flow-time">Average flow
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_GREETING_TIME_AGENT</dt>
    #               <dd>
    #                  <p>This metric is available only for contacts analyzed by Contact Lens conversational
    #         analytics.</p>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-greeting-time">Average
    #          agent greeting time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_HANDLE_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Feature,
    #         contact/segmentAttributes/connect:Subtype, RoutingStepExpression</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-handle-time">Average handle
    #          time</a>
    #                  </p>
    #                  <note>
    #                     <p>Feature is a valid filter but not a valid grouping.</p>
    #                  </note>
    #               </dd>
    #               <dt>AVG_HOLD_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Feature,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-hold-time">Average
    #          customer hold time</a>
    #                  </p>
    #                  <note>
    #                     <p>Feature is a valid filter but not a valid grouping.</p>
    #                  </note>
    #               </dd>
    #               <dt>AVG_HOLD_TIME_ALL_CONTACTS</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-hold-time-all-contacts">Average customer hold time all contacts</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_HOLDS</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Feature,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-holds">Average holds</a>
    #                  </p>
    #                  <note>
    #                     <p>Feature is a valid filter but not a valid grouping.</p>
    #                  </note>
    #               </dd>
    #               <dt>AVG_INTERACTION_AND_HOLD_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-interaction-and-customer-hold-time">Average agent interaction and customer hold time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_INTERACTION_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid metric filter key: <code>INITIATION_METHOD</code>
    #                  </p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Feature,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-interaction-time">Average agent interaction time</a>
    #                  </p>
    #                  <note>
    #                     <p>Feature is a valid filter but not a valid grouping.</p>
    #                  </note>
    #               </dd>
    #               <dt>AVG_INTERRUPTIONS_AGENT</dt>
    #               <dd>
    #                  <p>This metric is available only for contacts analyzed by Contact Lens conversational
    #         analytics.</p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-interruptions">Average
    #          agent interruptions</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_INTERRUPTION_TIME_AGENT</dt>
    #               <dd>
    #                  <p>This metric is available only for contacts analyzed by Contact Lens conversational
    #         analytics.</p>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-interruption-time">Average agent interruption time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_MESSAGE_LENGTH_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-message-length">Average
    #          agent message length</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_MESSAGE_LENGTH_CUSTOMER</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-message-length">Average customer message length</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_MESSAGES</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-messages">Average
    #          messages</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_MESSAGES_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-messages">Average agent
    #          messages</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_MESSAGES_BOT</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-bot-messages">Average bot
    #          messages</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_MESSAGES_CUSTOMER</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-messages">Average
    #          customer messages</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_NON_TALK_TIME</dt>
    #               <dd>
    #                  <p>This metric is available only for contacts analyzed by Contact Lens conversational
    #         analytics.</p>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-non-talk-time">Average
    #          non-talk time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_QUEUE_ANSWER_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Feature,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-queue-answer-time">Average
    #          queue answer time</a>
    #                  </p>
    #                  <note>
    #                     <p>Feature is a valid filter but not a valid grouping.</p>
    #                  </note>
    #               </dd>
    #               <dt>AVG_RESPONSE_TIME_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-response-time-agent">Average
    #          agent response time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_RESPONSE_TIME_CUSTOMER</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-time-agent">Average
    #          customer response time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_RESOLUTION_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, contact/segmentAttributes/connect:Subtype,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-resolution-time">Average
    #          resolution time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_TALK_TIME</dt>
    #               <dd>
    #                  <p>This metric is available only for contacts analyzed by Contact Lens conversational
    #         analytics.</p>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-talk-time">Average talk
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_TALK_TIME_AGENT</dt>
    #               <dd>
    #                  <p>This metric is available only for contacts analyzed by Contact Lens conversational
    #         analytics.</p>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-talk-time">Average
    #          agent talk time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_TALK_TIME_CUSTOMER</dt>
    #               <dd>
    #                  <p>This metric is available only for contacts analyzed by Contact Lens conversational
    #         analytics.</p>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-talk-time">Average
    #          customer talk time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_WAIT_TIME_AFTER_CUSTOMER_CONNECTION</dt>
    #               <dd>
    #                  <p>This metric is available only for outbound campaigns that use the agent assisted voice
    #         and automated voice delivery modes.</p>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Campaign</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-wait-time-after-customer-connection">Average wait time after customer connection</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_WEIGHTED_EVALUATION_SCORE</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, Evaluation Form Id, Evaluation Section ID,
    #         Evaluation Question ID, Evaluation Source, Form Version, Queue, Routing Profile</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-weighted-evaluation-score">Average weighted evaluation score</a>
    #                  </p>
    #               </dd>
    #               <dt>BOT_CONVERSATIONS_COMPLETED</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
    #         version, Bot locale, Flows resource ID, Flows module resource ID, Flow type, Flow action ID,
    #         Invoking resource published timestamp, Initiation method, Invoking resource type, Parent flows
    #         resource ID</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#bot-conversations-completed">Bot
    #          conversations completed</a>
    #                  </p>
    #               </dd>
    #               <dt>BOT_INTENTS_COMPLETED</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
    #         version, Bot locale, Bot intent name, Flows resource ID, Flows module resource ID, Flow type,
    #         Flow action ID, Invoking resource published timestamp, Initiation method, Invoking resource
    #         type, Parent flows resource ID</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#bot-intents-completed">Bot intents
    #          completed</a>
    #                  </p>
    #               </dd>
    #               <dt>CAMPAIGN_CONTACTS_ABANDONED_AFTER_X</dt>
    #               <dd>
    #                  <p>This metric is available only for outbound campaigns using the agent assisted voice and
    #         automated voice delivery modes.</p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Agent, Campaign</p>
    #                  <p>Threshold: For <code>ThresholdValue</code>, enter any whole number from 1 to 604800
    #         (inclusive), in seconds. For <code>Comparison</code>, you must enter <code>GT</code> (for
    #          <i>Greater than</i>).</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#campaign-contacts-abandoned-after-x">Campaign contacts abandoned after X</a>
    #                  </p>
    #               </dd>
    #               <dt>CAMPAIGN_CONTACTS_ABANDONED_AFTER_X_RATE</dt>
    #               <dd>
    #                  <p>This metric is available only for outbound campaigns using the agent assisted voice and
    #         automated voice delivery modes.</p>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Agent, Campaign</p>
    #                  <p>Threshold: For <code>ThresholdValue</code>, enter any whole number from 1 to 604800
    #         (inclusive), in seconds. For <code>Comparison</code>, you must enter <code>GT</code> (for
    #          <i>Greater than</i>).</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#campaign-contacts-abandoned-after-x-rate">Campaign contacts abandoned after X rate</a>
    #                  </p>
    #               </dd>
    #               <dt>CAMPAIGN_INTERACTIONS</dt>
    #               <dd>
    #                  <p>This metric is available only for outbound campaigns using the email delivery mode. </p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid metric filter key: CAMPAIGN_INTERACTION_EVENT_TYPE</p>
    #                  <p>Valid groupings and filters: Campaign</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#campaign-interactions">Campaign
    #          interactions</a>
    #                  </p>
    #               </dd>
    #               <dt>CAMPAIGN_PROGRESS_RATE</dt>
    #               <dd>
    #                  <p>This metric is only available for outbound campaigns initiated using a customer segment.
    #         It is not available for event triggered campaigns.</p>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Campaign, Campaign Execution Timestamp</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#campaign-progress-rate">Campaign
    #          progress rate</a>
    #                  </p>
    #               </dd>
    #               <dt>CAMPAIGN_SEND_ATTEMPTS</dt>
    #               <dd>
    #                  <p>This metric is available only for outbound campaigns.</p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Campaign, Channel, contact/segmentAttributes/connect:Subtype </p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#campaign-send-attempts">Campaign send
    #          attempts</a>
    #                  </p>
    #               </dd>
    #               <dt>CAMPAIGN_SEND_EXCLUSIONS</dt>
    #               <dd>
    #                  <p>This metric is available only for outbound campaigns.</p>
    #                  <p>Valid metric filter key: CAMPAIGN_EXCLUDED_EVENT_TYPE</p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Campaign, Campaign Excluded Event Type, Campaign Execution
    #         Timestamp</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#campaign-send-exclusions">Campaign
    #          send exclusions</a>
    #                  </p>
    #               </dd>
    #               <dt>CASES_CREATED</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Required filter key: CASE_TEMPLATE_ARN</p>
    #                  <p>Valid groupings and filters: CASE_TEMPLATE_ARN, CASE_STATUS</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#cases-created">Cases created</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_CREATED</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid metric filter key: <code>INITIATION_METHOD</code>
    #                  </p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Feature,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-created">Contacts
    #          created</a>
    #                  </p>
    #                  <note>
    #                     <p>Feature is a valid filter but not a valid grouping.</p>
    #                  </note>
    #               </dd>
    #               <dt>CONTACTS_HANDLED</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid metric filter key: <code>INITIATION_METHOD</code>,
    #         <code>DISCONNECT_REASON</code>
    #                  </p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Feature,
    #         contact/segmentAttributes/connect:Subtype, RoutingStepExpression, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#api-contacts-handled">API contacts
    #          handled</a>
    #                  </p>
    #                  <note>
    #                     <p>Feature is a valid filter but not a valid grouping.</p>
    #                  </note>
    #               </dd>
    #               <dt>CONTACTS_HANDLED_BY_CONNECTED_TO_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid metric filter key: <code>INITIATION_METHOD</code>
    #                  </p>
    #                  <p>Valid groupings and filters: Queue, Channel, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-handled-by-connected-to-agent-timestamp">Contacts handled (connected to agent timestamp)</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_HOLD_ABANDONS</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-hold-disconnect">Contacts
    #          hold disconnect</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_ON_HOLD_AGENT_DISCONNECT</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-hold-agent-disconnect">Contacts hold agent disconnect</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_ON_HOLD_CUSTOMER_DISCONNECT</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-hold-customer-disconnect">Contacts hold customer disconnect</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_PUT_ON_HOLD</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-put-on-hold">Contacts put on
    #          hold</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_OUT_EXTERNAL</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-external">Contacts transferred out external</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_OUT_INTERNAL</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-internal">Contacts transferred out internal</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_QUEUED</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-queued">Contacts
    #          queued</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_QUEUED_BY_ENQUEUE</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-queued-by-enqueue">Contacts
    #          queued (enqueue timestamp)</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_REMOVED_FROM_QUEUE_IN_X</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Q in Connect</p>
    #                  <p>Threshold: For <code>ThresholdValue</code>, enter any whole number from 1 to 604800
    #         (inclusive), in seconds. For <code>Comparison</code>, you can use <code>LT</code> (for "Less
    #         than") or <code>LTE</code> (for "Less than equal").</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-removed-from-queue">Contacts
    #          removed from queue in X seconds</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_RESOLVED_IN_X</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, contact/segmentAttributes/connect:Subtype,
    #         Q in Connect</p>
    #                  <p>Threshold: For <code>ThresholdValue</code>, enter any whole number from 1 to 604800
    #         (inclusive), in seconds. For <code>Comparison</code>, you can use <code>LT</code> (for "Less
    #         than") or <code>LTE</code> (for "Less than equal").</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-resolved">Contacts resolved
    #          in X</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_OUT</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Feature,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out">Contacts
    #          transferred out</a>
    #                  </p>
    #                  <note>
    #                     <p>Feature is a valid filter but not a valid grouping.</p>
    #                  </note>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_OUT_BY_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-by-agent">Contacts transferred out by agent</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_OUT_FROM_QUEUE</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-queue">Contacts transferred out queue</a>
    #                  </p>
    #               </dd>
    #               <dt>CURRENT_CASES</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Required filter key: CASE_TEMPLATE_ARN</p>
    #                  <p>Valid groupings and filters: CASE_TEMPLATE_ARN, CASE_STATUS</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#current-cases">Current cases</a>
    #                  </p>
    #               </dd>
    #               <dt>CONVERSATIONS_ABANDONED</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#conversations-abandoned">Conversations abandoned</a>
    #                  </p>
    #               </dd>
    #               <dt>DELIVERY_ATTEMPTS</dt>
    #               <dd>
    #                  <p>This metric is available only for outbound campaigns.</p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid metric filter key: <code>ANSWERING_MACHINE_DETECTION_STATUS</code>,
    #          <code>CAMPAIGN_DELIVERY_EVENT_TYPE</code>, <code>DISCONNECT_REASON</code>
    #                  </p>
    #                  <p>Valid groupings and filters: Agent, Answering Machine Detection Status, Campaign, Campaign Delivery
    #         EventType, Channel, contact/segmentAttributes/connect:Subtype, Disconnect Reason, Queue,
    #         Routing Profile</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#delivery-attempts">Delivery
    #          attempts</a>
    #                  </p>
    #                  <note>
    #                     <p>Campaign Delivery EventType filter and grouping are only available for SMS and Email
    #          campaign delivery modes. Agent, Queue, Routing Profile, Answering Machine Detection Status
    #          and Disconnect Reason are only available for agent assisted voice and automated voice
    #          delivery modes. </p>
    #                  </note>
    #               </dd>
    #               <dt>DELIVERY_ATTEMPT_DISPOSITION_RATE</dt>
    #               <dd>
    #                  <p>This metric is available only for outbound campaigns. Dispositions for the agent assisted
    #         voice and automated voice delivery modes are only available with answering machine detection
    #         enabled.</p>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid metric filter key: <code>ANSWERING_MACHINE_DETECTION_STATUS</code>,
    #          <code>CAMPAIGN_DELIVERY_EVENT_TYPE</code>, <code>DISCONNECT_REASON</code>
    #                  </p>
    #                  <p>Valid groupings and filters: Agent, Answering Machine Detection Status, Campaign, Channel,
    #         contact/segmentAttributes/connect:Subtype, Disconnect Reason, Queue, Routing Profile</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#delivery-attempt-disposition-rate">Delivery attempt disposition rate</a>
    #                  </p>
    #                  <note>
    #                     <p>Campaign Delivery Event Type filter and grouping are only available for SMS and Email
    #          campaign delivery modes. Agent, Queue, Routing Profile, Answering Machine Detection Status
    #          and Disconnect Reason are only available for agent assisted voice and automated voice
    #          delivery modes. </p>
    #                  </note>
    #               </dd>
    #               <dt>EVALUATIONS_PERFORMED</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, Evaluation Form ID, Evaluation Source, Form
    #         Version, Queue, Routing Profile</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#evaluations-performed">Evaluations
    #          performed</a>
    #                  </p>
    #               </dd>
    #               <dt>FLOWS_OUTCOME</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Flow type, Flows module
    #         resource ID, Flows next resource ID, Flows next resource queue ID, Flows outcome type, Flows
    #         resource ID, Initiation method, Resource published timestamp</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#flows-outcome">Flows
    #         outcome</a>
    #                  </p>
    #               </dd>
    #               <dt>FLOWS_STARTED</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Flow type, Flows module
    #         resource ID, Flows resource ID, Initiation method, Resource published timestamp</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#flows-started">Flows
    #         started</a>
    #                  </p>
    #               </dd>
    #               <dt>HUMAN_ANSWERED_CALLS</dt>
    #               <dd>
    #                  <p>This metric is available only for outbound campaigns. Dispositions for the agent assisted
    #         voice and automated voice delivery modes are only available with answering machine detection
    #         enabled. </p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Agent, Campaign</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#human-answered">Human
    #          answered</a>
    #                  </p>
    #               </dd>
    #               <dt>MAX_FLOW_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Flow type, Flows module
    #         resource ID, Flows next resource ID, Flows next resource queue ID, Flows outcome type, Flows
    #         resource ID, Initiation method, Resource published timestamp</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#maximum-flow-time">Maximum flow
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>MAX_QUEUED_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#maximum-queued-time">Maximum queued
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>MIN_FLOW_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Flow type, Flows module
    #         resource ID, Flows next resource ID, Flows next resource queue ID, Flows outcome type, Flows
    #         resource ID, Initiation method, Resource published timestamp</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#minimum-flow-time">Minimum flow
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>PERCENT_AUTOMATIC_FAILS</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, Evaluation Form ID, Evaluation Source, Form
    #         Version, Queue, Routing Profile</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#automatic-fails-percent">Automatic
    #          fails percent</a>
    #                  </p>
    #               </dd>
    #               <dt>PERCENT_BOT_CONVERSATIONS_OUTCOME</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
    #         version, Bot locale, Flows resource ID, Flows module resource ID, Flow type, Flow action ID,
    #         Invoking resource published timestamp, Initiation method, Invoking resource type, Parent flows
    #         resource ID</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#percent-bot-conversations-outcome">Percent
    #          bot conversations outcome</a>
    #                  </p>
    #               </dd>
    #               <dt>PERCENT_BOT_INTENTS_OUTCOME</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
    #         version, Bot locale, Bot intent name, Flows resource ID, Flows module resource ID, Flow type,
    #         Flow action ID, Invoking resource published timestamp, Initiation method, Invoking resource
    #         type, Parent flows resource ID</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#percent-bot-intents-outcome">Percent bot
    #          intents outcome</a>
    #                  </p>
    #               </dd>
    #               <dt>PERCENT_CASES_FIRST_CONTACT_RESOLVED</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Required filter key: CASE_TEMPLATE_ARN</p>
    #                  <p>Valid groupings and filters: CASE_TEMPLATE_ARN, CASE_STATUS</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#cases-resolved-on-first-contact">Cases resolved on first contact</a>
    #                  </p>
    #               </dd>
    #               <dt>PERCENT_CONTACTS_STEP_EXPIRED</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Queue, RoutingStepExpression</p>
    #                  <p>UI name: This metric is available in Real-time Metrics UI but not on the Historical
    #         Metrics UI.</p>
    #               </dd>
    #               <dt>PERCENT_CONTACTS_STEP_JOINED</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Queue, RoutingStepExpression</p>
    #                  <p>UI name: This metric is available in Real-time Metrics UI but not on the Historical
    #         Metrics UI.</p>
    #               </dd>
    #               <dt>PERCENT_FLOWS_OUTCOME</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid metric filter key: <code>FLOWS_OUTCOME_TYPE</code>
    #                  </p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Flow type, Flows module
    #         resource ID, Flows next resource ID, Flows next resource queue ID, Flows outcome type, Flows
    #         resource ID, Initiation method, Resource published timestamp</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#flows-outcome-percentage">Flows
    #          outcome percentage</a>.</p>
    #                  <note>
    #                     <p>The <code>FLOWS_OUTCOME_TYPE</code> is not a valid grouping.</p>
    #                  </note>
    #               </dd>
    #               <dt>PERCENT_NON_TALK_TIME</dt>
    #               <dd>
    #                  <p>This metric is available only for contacts analyzed by Contact Lens conversational
    #         analytics.</p>
    #                  <p>Unit: Percentage</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#non-talk-time-percent">Non-talk time
    #          percent</a>
    #                  </p>
    #               </dd>
    #               <dt>PERCENT_TALK_TIME</dt>
    #               <dd>
    #                  <p>This metric is available only for contacts analyzed by Contact Lens conversational
    #         analytics.</p>
    #                  <p>Unit: Percentage</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#talk-time-percent">Talk time
    #          percent</a>
    #                  </p>
    #               </dd>
    #               <dt>PERCENT_TALK_TIME_AGENT</dt>
    #               <dd>
    #                  <p>This metric is available only for contacts analyzed by Contact Lens conversational
    #         analytics.</p>
    #                  <p>Unit: Percentage</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-talk-time-percent">Agent talk
    #          time percent</a>
    #                  </p>
    #               </dd>
    #               <dt>PERCENT_TALK_TIME_CUSTOMER</dt>
    #               <dd>
    #                  <p>This metric is available only for contacts analyzed by Contact Lens conversational
    #         analytics.</p>
    #                  <p>Unit: Percentage</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#customer-talk-time-percent">Customer
    #          talk time percent</a>
    #                  </p>
    #               </dd>
    #               <dt>RECIPIENTS_ATTEMPTED</dt>
    #               <dd>
    #                  <p>This metric is only available for outbound campaigns initiated using a customer segment.
    #         It is not available for event triggered campaigns.</p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Campaign, Campaign Execution Timestamp</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#recipients-attempted">Recipients
    #          attempted</a>
    #                  </p>
    #               </dd>
    #               <dt>RECIPIENTS_INTERACTED</dt>
    #               <dd>
    #                  <p>This metric is only available for outbound campaigns initiated using a customer segment.
    #         It is not available for event triggered campaigns.</p>
    #                  <p>Valid metric filter key: CAMPAIGN_INTERACTION_EVENT_TYPE</p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Campaign, Channel,
    #         contact/segmentAttributes/connect:Subtype, Campaign Execution Timestamp</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#recipients-interacted">Recipients
    #          interacted</a>
    #                  </p>
    #               </dd>
    #               <dt>RECIPIENTS_TARGETED</dt>
    #               <dd>
    #                  <p>This metric is only available for outbound campaigns initiated using a customer segment.
    #         It is not available for event triggered campaigns.</p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Campaign, Campaign Execution Timestamp</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#recipients-targeted">Recipients
    #          targeted</a>
    #                  </p>
    #               </dd>
    #               <dt>REOPENED_CASE_ACTIONS</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Required filter key: CASE_TEMPLATE_ARN</p>
    #                  <p>Valid groupings and filters: CASE_TEMPLATE_ARN, CASE_STATUS</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#cases-reopened">Cases
    #          reopened</a>
    #                  </p>
    #               </dd>
    #               <dt>RESOLVED_CASE_ACTIONS</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Required filter key: CASE_TEMPLATE_ARN</p>
    #                  <p>Valid groupings and filters: CASE_TEMPLATE_ARN, CASE_STATUS</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#cases-resolved">Cases
    #          resolved</a>
    #                  </p>
    #               </dd>
    #               <dt>SERVICE_LEVEL</dt>
    #               <dd>
    #                  <p>You can include up to 20 SERVICE_LEVEL metrics in a request.</p>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Q in Connect</p>
    #                  <p>Threshold: For <code>ThresholdValue</code>, enter any whole number from 1 to 604800
    #         (inclusive), in seconds. For <code>Comparison</code>, you can use <code>LT</code> (for "Less
    #         than") or <code>LTE</code> (for "Less than equal").</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#service-level">Service level
    #          X</a>
    #                  </p>
    #               </dd>
    #               <dt>STEP_CONTACTS_QUEUED</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, RoutingStepExpression</p>
    #                  <p>UI name: This metric is available in Real-time Metrics UI but not on the Historical
    #         Metrics UI.</p>
    #               </dd>
    #               <dt>SUM_AFTER_CONTACT_WORK_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#after-contact-work-time">After
    #          contact work time</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_CONNECTING_TIME_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid metric filter key: <code>INITIATION_METHOD</code>. This metric only supports the
    #         following filter keys as <code>INITIATION_METHOD</code>: <code>INBOUND</code> |
    #          <code>OUTBOUND</code> | <code>CALLBACK</code> | <code>API</code>
    #                  </p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-api-connecting-time">Agent API
    #          connecting time</a>
    #                  </p>
    #                  <note>
    #                     <p>The <code>Negate</code> key in metric-level filters is not applicable for this
    #          metric.</p>
    #                  </note>
    #               </dd>
    #               <dt>CONTACTS_ABANDONED</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Metric filter: </p>
    #                  <ul>
    #                     <li>
    #                        <p>Valid values: <code>API</code>| <code>Incoming</code> | <code>Outbound</code> |
    #            <code>Transfer</code> | <code>Callback</code> | <code>Queue_Transfer</code>|
    #            <code>Disconnect</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, RoutingStepExpression, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-abandoned">Contact
    #          abandoned</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_CONTACTS_ABANDONED_IN_X</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, contact/segmentAttributes/connect:Subtype,
    #         Q in Connect</p>
    #                  <p>Threshold: For <code>ThresholdValue</code>, enter any whole number from 1 to 604800
    #         (inclusive), in seconds. For <code>Comparison</code>, you can use <code>LT</code> (for "Less
    #         than") or <code>LTE</code> (for "Less than equal").</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-abandoned-in-x-seconds">Contacts abandoned in X seconds</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_CONTACTS_ANSWERED_IN_X</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, contact/segmentAttributes/connect:Subtype,
    #         Q in Connect</p>
    #                  <p>Threshold: For <code>ThresholdValue</code>, enter any whole number from 1 to 604800
    #         (inclusive), in seconds. For <code>Comparison</code>, you can use <code>LT</code> (for "Less
    #         than") or <code>LTE</code> (for "Less than equal").</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-answered-in-x-seconds">Contacts answered in X seconds</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_CONTACT_FLOW_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contact-flow-time">Contact flow
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_CONTACT_TIME_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-on-contact-time">Agent on
    #          contact time</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_CONTACTS_DISCONNECTED </dt>
    #               <dd>
    #                  <p>Valid metric filter key: <code>DISCONNECT_REASON</code>
    #                  </p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contact-disconnected">Contact
    #          disconnected</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_ERROR_STATUS_TIME_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#error-status-time">Error status
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_HANDLE_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contact-handle-time">Contact handle
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_HOLD_TIME</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#customer-hold-time">Customer hold
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_IDLE_TIME_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-idle-time">Agent idle
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_INTERACTION_AND_HOLD_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-interaction-and-hold-time">Agent interaction and hold time</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_INTERACTION_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-interaction-time">Agent
    #          interaction time</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_NON_PRODUCTIVE_TIME_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-non-productive-time">Agent
    #          non-productive time</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_ONLINE_TIME_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#online-time">Online time</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_RETRY_CALLBACK_ATTEMPTS</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, contact/segmentAttributes/connect:Subtype,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#callback-attempts">Callback
    #          attempts</a>
    #                  </p>
    #               </dd>
    #            </dl>
    #   @return [Array<Types::MetricV2>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class GetMetricDataV2Request < Struct.new(
      :resource_arn,
      :start_time,
      :end_time,
      :interval,
      :filters,
      :groupings,
      :metrics,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute metric_results
    #   <p>Information about the metrics requested in the API request If no grouping is specified, a
    #      summary of metric data is returned. </p>
    #   @return [Array<Types::MetricResultV2>]
    class GetMetricDataV2Response < Struct.new(
      :next_token,
      :metric_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute prompt_id
    #   <p>A unique identifier for the prompt.</p>
    #   @return [String]
    class GetPromptFileRequest < Struct.new(
      :instance_id,
      :prompt_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute prompt_presigned_url
    #   <p>A generated URL to the prompt that can be given to an unauthorized user so they can access
    #      the prompt in S3.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    class GetPromptFileResponse < Struct.new(
      :prompt_presigned_url,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute task_template_id
    #   <p>A unique identifier for the task template.</p>
    #   @return [String]
    # @!attribute snapshot_version
    #   <p>The system generated version of a task template that is associated with a task, when the
    #      task is created.</p>
    #   @return [String]
    class GetTaskTemplateRequest < Struct.new(
      :instance_id,
      :task_template_id,
      :snapshot_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute id
    #   <p>A unique identifier for the task template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the task template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the task template.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow that runs by default when a task is created by referencing this template.</p>
    #   @return [String]
    # @!attribute self_assign_flow_id
    #   <p>The ContactFlowId for the flow that will be run if this template is used to create a
    #      self-assigned task.</p>
    #   @return [String]
    # @!attribute constraints
    #   <p>Constraints that are applicable to the fields listed.</p>
    #   @return [Types::TaskTemplateConstraints]
    # @!attribute defaults
    #   <p>The default values for fields when a task is created by referencing this template.</p>
    #   @return [Types::TaskTemplateDefaults]
    # @!attribute fields
    #   <p>Fields that are part of the template.</p>
    #   @return [Array<Types::TaskTemplateField>]
    # @!attribute status
    #   <p>Marks a template as <code>ACTIVE</code> or <code>INACTIVE</code> for a task to refer to it. 
    #   Tasks can only be created from <code>ACTIVE</code> templates.
    #   If a template is marked as <code>INACTIVE</code>, then a task that refers to this template cannot be created.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp when the task template was last modified.</p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>The timestamp when the task template was created.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    class GetTaskTemplateResponse < Struct.new(
      :instance_id,
      :id,
      :arn,
      :name,
      :description,
      :contact_flow_id,
      :self_assign_flow_id,
      :constraints,
      :defaults,
      :fields,
      :status,
      :last_modified_time,
      :created_time,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the traffic distribution group.
    #   This can be the ID or the ARN if the API is being called in the Region where the traffic distribution group was created.
    #   The ARN must be provided if the call is from the replicated Region.</p>
    #   @return [String]
    class GetTrafficDistributionRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute telephony_config
    #   <p>The distribution of traffic between the instance and its replicas.</p>
    #   @return [Types::TelephonyConfig]
    # @!attribute id
    #   <p>The identifier of the traffic distribution group.
    #   This can be the ID or the ARN if the API is being called in the Region where the traffic distribution group was created.
    #   The ARN must be provided if the call is from the replicated Region.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the traffic distribution group.</p>
    #   @return [String]
    # @!attribute sign_in_config
    #   <p>The distribution that determines which Amazon Web Services Regions should be used to sign in
    #      agents in to both the instance and its replica(s).</p>
    #   @return [Types::SignInConfig]
    # @!attribute agent_config
    #   <p>The distribution of agents between the instance and its replica(s).</p>
    #   @return [Types::AgentConfig]
    class GetTrafficDistributionResponse < Struct.new(
      :telephony_config,
      :id,
      :arn,
      :sign_in_config,
      :agent_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a hierarchy group.</p>
    # @!attribute id
    #   <p>The identifier of the hierarchy group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the hierarchy group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the hierarchy group.</p>
    #   @return [String]
    # @!attribute level_id
    #   <p>The identifier of the level in the hierarchy group.</p>
    #   @return [String]
    # @!attribute hierarchy_path
    #   <p>Information about the levels in the hierarchy group.</p>
    #   @return [Types::HierarchyPath]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    class HierarchyGroup < Struct.new(
      :id,
      :arn,
      :name,
      :level_id,
      :hierarchy_path,
      :tags,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A leaf node condition which can be used to specify a hierarchy group condition.</p>
    # @!attribute value
    #   <p>The value in the hierarchy group condition.</p>
    #   @return [String]
    # @!attribute hierarchy_group_match_type
    #   <p>The type of hierarchy group match.</p>
    #   @return [String]
    class HierarchyGroupCondition < Struct.new(
      :value,
      :hierarchy_group_match_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a hierarchy group.</p>
    # @!attribute id
    #   <p>The identifier of the hierarchy group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the hierarchy group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the hierarchy group.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    class HierarchyGroupSummary < Struct.new(
      :id,
      :arn,
      :name,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the hierarchy group.</p>
    # @!attribute id
    #   <p>The unique identifier for the hierarchy group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the hierarchy group. </p>
    #   @return [String]
    class HierarchyGroupSummaryReference < Struct.new(
      :id,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the agent hierarchy. Hierarchies can be configured with up to five
    #    levels.</p>
    # @!attribute level1
    #   <p>The group at level one of the agent hierarchy.</p>
    #   @return [Types::AgentHierarchyGroup]
    # @!attribute level2
    #   <p>The group at level two of the agent hierarchy.</p>
    #   @return [Types::AgentHierarchyGroup]
    # @!attribute level3
    #   <p>The group at level three of the agent hierarchy.</p>
    #   @return [Types::AgentHierarchyGroup]
    # @!attribute level4
    #   <p>The group at level four of the agent hierarchy.</p>
    #   @return [Types::AgentHierarchyGroup]
    # @!attribute level5
    #   <p>The group at level five of the agent hierarchy.</p>
    #   @return [Types::AgentHierarchyGroup]
    class HierarchyGroups < Struct.new(
      :level1,
      :level2,
      :level3,
      :level4,
      :level5,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a hierarchy level.</p>
    # @!attribute id
    #   <p>The identifier of the hierarchy level.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the hierarchy level.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the hierarchy level.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    class HierarchyLevel < Struct.new(
      :id,
      :arn,
      :name,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the hierarchy level to update.</p>
    # @!attribute name
    #   <p>The name of the user hierarchy level. Must not be more than 50 characters.</p>
    #   @return [String]
    class HierarchyLevelUpdate < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the levels of a hierarchy group.</p>
    # @!attribute level_one
    #   <p>Information about level one.</p>
    #   @return [Types::HierarchyGroupSummary]
    # @!attribute level_two
    #   <p>Information about level two.</p>
    #   @return [Types::HierarchyGroupSummary]
    # @!attribute level_three
    #   <p>Information about level three.</p>
    #   @return [Types::HierarchyGroupSummary]
    # @!attribute level_four
    #   <p>Information about level four.</p>
    #   @return [Types::HierarchyGroupSummary]
    # @!attribute level_five
    #   <p>Information about level five.</p>
    #   @return [Types::HierarchyGroupSummary]
    class HierarchyPath < Struct.new(
      :level_one,
      :level_two,
      :level_three,
      :level_four,
      :level_five,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the levels in the hierarchy group.</p>
    # @!attribute level_one
    #   <p>Information about level one.</p>
    #   @return [Types::HierarchyGroupSummaryReference]
    # @!attribute level_two
    #   <p>Information about level two.</p>
    #   @return [Types::HierarchyGroupSummaryReference]
    # @!attribute level_three
    #   <p>Information about level three.</p>
    #   @return [Types::HierarchyGroupSummaryReference]
    # @!attribute level_four
    #   <p>Information about level four.</p>
    #   @return [Types::HierarchyGroupSummaryReference]
    # @!attribute level_five
    #   <p>Information about level five.</p>
    #   @return [Types::HierarchyGroupSummaryReference]
    class HierarchyPathReference < Struct.new(
      :level_one,
      :level_two,
      :level_three,
      :level_four,
      :level_five,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a hierarchy structure.</p>
    # @!attribute level_one
    #   <p>Information about level one.</p>
    #   @return [Types::HierarchyLevel]
    # @!attribute level_two
    #   <p>Information about level two.</p>
    #   @return [Types::HierarchyLevel]
    # @!attribute level_three
    #   <p>Information about level three.</p>
    #   @return [Types::HierarchyLevel]
    # @!attribute level_four
    #   <p>Information about level four.</p>
    #   @return [Types::HierarchyLevel]
    # @!attribute level_five
    #   <p>Information about level five.</p>
    #   @return [Types::HierarchyLevel]
    class HierarchyStructure < Struct.new(
      :level_one,
      :level_two,
      :level_three,
      :level_four,
      :level_five,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the level hierarchy to update.</p>
    # @!attribute level_one
    #   <p>The
    #      update
    #      for level one.</p>
    #   @return [Types::HierarchyLevelUpdate]
    # @!attribute level_two
    #   <p>The update for level two.</p>
    #   @return [Types::HierarchyLevelUpdate]
    # @!attribute level_three
    #   <p>The update for level three.</p>
    #   @return [Types::HierarchyLevelUpdate]
    # @!attribute level_four
    #   <p>The update for level four.</p>
    #   @return [Types::HierarchyLevelUpdate]
    # @!attribute level_five
    #   <p>The update for level five.</p>
    #   @return [Types::HierarchyLevelUpdate]
    class HierarchyStructureUpdate < Struct.new(
      :level_one,
      :level_two,
      :level_three,
      :level_four,
      :level_five,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a historical metric. </p>
    # @!attribute name
    #   <p>The name of the metric. Following is a list of each supported metric mapped to the UI name,
    #      linked to a detailed description in the <i>Amazon Connect Administrator
    #       Guide</i>. </p>
    #            <dl>
    #               <dt>ABANDON_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-queue-abandon-time">Average
    #          queue abandon time</a>
    #                  </p>
    #               </dd>
    #               <dt>AFTER_CONTACT_WORK_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#after-contact-work-time">After
    #          contact work time</a>
    #                  </p>
    #               </dd>
    #               <dt>API_CONTACTS_HANDLED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#api-contacts-handled">API contacts
    #          handled</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_HOLD_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-hold-time">Average
    #          customer hold time</a>
    #                  </p>
    #               </dd>
    #               <dt>CALLBACK_CONTACTS_HANDLED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#callback-contacts-handled">Callback
    #          contacts handled</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_ABANDONED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-abandoned">Contacts
    #          abandoned</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_AGENT_HUNG_UP_FIRST</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-agent-hung-up-first">Contacts agent hung up first</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_CONSULTED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-consulted">Contacts
    #          consulted</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_HANDLED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-handled">Contacts
    #          handled</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_HANDLED_INCOMING</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-handled-incoming">Contacts
    #          handled incoming</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_HANDLED_OUTBOUND</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-handled-outbound">Contacts
    #          handled outbound</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_HOLD_ABANDONS</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-hold-disconnect">Contacts
    #          hold disconnect</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_MISSED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-non-response">AGENT_NON_RESPONSE</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_QUEUED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-queued">Contacts
    #          queued</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_IN</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-in">Contacts
    #          transferred in</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_IN_FROM_QUEUE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-queue">Contacts transferred out queue</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_OUT</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out">Contacts
    #          transferred out</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_OUT_FROM_QUEUE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-queue">Contacts transferred out queue</a>
    #                  </p>
    #               </dd>
    #               <dt>HANDLE_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-handle-time">Average handle
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>INTERACTION_AND_HOLD_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-interaction-and-customer-hold-time">Average agent interaction and customer hold time</a>
    #                  </p>
    #               </dd>
    #               <dt>INTERACTION_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#aaverage-agent-interaction-time">Average agent interaction time</a>
    #                  </p>
    #               </dd>
    #               <dt>OCCUPANCY</dt>
    #               <dd>
    #                  <p>Unit: PERCENT</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#occupancy">Occupancy</a>
    #                  </p>
    #               </dd>
    #               <dt>QUEUE_ANSWER_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html##average-queue-answer-time">Average
    #          queue answer time</a>
    #                  </p>
    #               </dd>
    #               <dt>QUEUED_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: MAX</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#minimum-flow-time">Minimum flow
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>SERVICE_LEVEL</dt>
    #               <dd>
    #                  <p>You can include up to 20 SERVICE_LEVEL metrics in a request.</p>
    #                  <p>Unit: PERCENT</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>Threshold: For <code>ThresholdValue</code>, enter any whole number from 1 to 604800
    #         (inclusive), in seconds. For <code>Comparison</code>, you must enter <code>LT</code> (for
    #         "Less than"). </p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#service-level">Service level
    #          X</a>
    #                  </p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute threshold
    #   <p>The threshold for the metric, used with service level metrics.</p>
    #   @return [Types::Threshold]
    # @!attribute statistic
    #   <p>The statistic for the metric.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The unit for the metric.</p>
    #   @return [String]
    class HistoricalMetric < Struct.new(
      :name,
      :threshold,
      :statistic,
      :unit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the data for a historical metric.</p>
    # @!attribute metric
    #   <p>Information about the metric.</p>
    #   @return [Types::HistoricalMetric]
    # @!attribute value
    #   <p>The value of the metric.</p>
    #   @return [Float]
    class HistoricalMetricData < Struct.new(
      :metric,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the historical metrics retrieved.</p>
    # @!attribute dimensions
    #   <p>The dimension for the metrics.</p>
    #   @return [Types::Dimensions]
    # @!attribute collections
    #   <p>The set of metrics.</p>
    #   @return [Array<Types::HistoricalMetricData>]
    class HistoricalMetricResult < Struct.new(
      :dimensions,
      :collections,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about of the hours of operation.</p>
    # @!attribute hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #   @return [String]
    # @!attribute hours_of_operation_arn
    #   <p>The Amazon Resource Name (ARN) for the hours of operation.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for the hours of operation.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the hours of operation.</p>
    #   @return [String]
    # @!attribute time_zone
    #   <p>The time zone for the hours of operation.</p>
    #   @return [String]
    # @!attribute config
    #   <p>Configuration information for the hours of operation.</p>
    #   @return [Array<Types::HoursOfOperationConfig>]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    class HoursOfOperation < Struct.new(
      :hours_of_operation_id,
      :hours_of_operation_arn,
      :name,
      :description,
      :time_zone,
      :config,
      :tags,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the hours of operation.</p>
    # @!attribute day
    #   <p>The day that the hours of operation applies to.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time that your contact center opens.</p>
    #   @return [Types::HoursOfOperationTimeSlice]
    # @!attribute end_time
    #   <p>The end time that your contact center closes.</p>
    #   @return [Types::HoursOfOperationTimeSlice]
    class HoursOfOperationConfig < Struct.new(
      :day,
      :start_time,
      :end_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the hours of operations override.</p>
    # @!attribute hours_of_operation_override_id
    #   <p>The identifier for the hours of operation override.</p>
    #   @return [String]
    # @!attribute hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #   @return [String]
    # @!attribute hours_of_operation_arn
    #   <p>The Amazon Resource Name (ARN) for the hours of operation.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the hours of operation override.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the hours of operation override.</p>
    #   @return [String]
    # @!attribute config
    #   <p>Configuration information for the hours of operation override: day, start time, and end
    #      time.</p>
    #   @return [Array<Types::HoursOfOperationOverrideConfig>]
    # @!attribute effective_from
    #   <p>The date from which the hours of operation override would be effective.</p>
    #   @return [String]
    # @!attribute effective_till
    #   <p>The date till which the hours of operation override would be effective.</p>
    #   @return [String]
    class HoursOfOperationOverride < Struct.new(
      :hours_of_operation_override_id,
      :hours_of_operation_id,
      :hours_of_operation_arn,
      :name,
      :description,
      :config,
      :effective_from,
      :effective_till,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the hours of operation override config: day, start time, and end
    #    time.</p>
    # @!attribute day
    #   <p>The day that the hours of operation override applies to.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time when your contact center opens if overrides are applied.</p>
    #   @return [Types::OverrideTimeSlice]
    # @!attribute end_time
    #   <p>The end time that your contact center closes if overrides are applied.</p>
    #   @return [Types::OverrideTimeSlice]
    class HoursOfOperationOverrideConfig < Struct.new(
      :day,
      :start_time,
      :end_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The search criteria to be used to return hours of operations overrides.</p>
    # @!attribute or_conditions
    #   <p>A list of conditions which would be applied together with an OR condition.</p>
    #   @return [Array<Types::HoursOfOperationOverrideSearchCriteria>]
    # @!attribute and_conditions
    #   <p>A list of conditions which would be applied together with an AND condition.</p>
    #   @return [Array<Types::HoursOfOperationOverrideSearchCriteria>]
    # @!attribute string_condition
    #   <p>A leaf node condition which can be used to specify a string condition.</p>
    #   @return [Types::StringCondition]
    # @!attribute date_condition
    #   <p>A leaf node condition which can be used to specify a date condition.</p>
    #   @return [Types::DateCondition]
    class HoursOfOperationOverrideSearchCriteria < Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition,
      :date_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The search criteria to be used to return hours of operations.</p>
    # @!attribute or_conditions
    #   <p>A list of conditions which would be applied together with an OR condition.</p>
    #   @return [Array<Types::HoursOfOperationSearchCriteria>]
    # @!attribute and_conditions
    #   <p>A list of conditions which would be applied together with an AND condition.</p>
    #   @return [Array<Types::HoursOfOperationSearchCriteria>]
    # @!attribute string_condition
    #   <p>A leaf node condition which can be used to specify a string condition.</p>
    #            <note>
    #               <p>The currently supported values for <code>FieldName</code> are <code>name</code>,
    #        <code>description</code>, <code>timezone</code>, and <code>resourceID</code>.</p>
    #            </note>
    #   @return [Types::StringCondition]
    class HoursOfOperationSearchCriteria < Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters to be applied to search results.</p>
    # @!attribute tag_filter
    #   <p>An object that can be used to specify Tag conditions inside the <code>SearchFilter</code>.
    #      This accepts an <code>OR</code> of <code>AND</code> (List of List) input where: </p>
    #            <ul>
    #               <li>
    #                  <p>Top level list specifies conditions that need to be applied with <code>OR</code>
    #        operator</p>
    #               </li>
    #               <li>
    #                  <p>Inner list specifies conditions that need to be applied with <code>AND</code>
    #        operator.</p>
    #               </li>
    #            </ul>
    #   @return [Types::ControlPlaneTagFilter]
    class HoursOfOperationSearchFilter < Struct.new(
      :tag_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about hours of operation for a contact center.</p>
    # @!attribute id
    #   <p>The identifier of the hours of operation.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the hours of operation.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the hours of operation.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    class HoursOfOperationSummary < Struct.new(
      :id,
      :arn,
      :name,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The start time or end time for an hours of operation.</p>
    # @!attribute hours
    #   <p>The hours.</p>
    #   @return [Integer]
    # @!attribute minutes
    #   <p>The minutes.</p>
    #   @return [Integer]
    class HoursOfOperationTimeSlice < Struct.new(
      :hours,
      :minutes,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:hours] = nil unless options.key?(:hours)
        options[:minutes] = nil unless options.key?(:minutes)
        super
      end
    end

    # <p>An entity with the same name already exists.</p>
    # @!attribute message
    #   @return [String]
    class IdempotencyException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute source_phone_number_arn
    #   <p>The claimed phone number ARN being imported from the external service, such as Amazon Web Services End User Messaging. If it is from Amazon Web Services End User Messaging, it looks
    #      like the ARN of the phone number to import from Amazon Web Services End User Messaging.</p>
    #   @return [String]
    # @!attribute phone_number_description
    #   <p>The description of the phone number.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class ImportPhoneNumberRequest < Struct.new(
      :instance_id,
      :source_phone_number_arn,
      :phone_number_description,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #   @return [String]
    # @!attribute phone_number_arn
    #   <p>The Amazon Resource Name (ARN) of the phone number.</p>
    #   @return [String]
    class ImportPhoneNumberResponse < Struct.new(
      :phone_number_id,
      :phone_number_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the additional TO and CC recipients of an inbound email contact.</p>
    #          <note>
    #             <p>You can include up to 50 email addresses in total, distributed across <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_StartEmailContact.html#API_StartEmailContact_RequestBody">DestinationEmailAddress</a>, <code>ToAddresses</code>, and <code>CcAddresses</code>. This
    #     total must include one required <code>DestinationEmailAddress</code>. You can then specify up to
    #     49 addresses allocated across <code>ToAddresses</code> and <code>CcAddresses</code> as
    #     needed.</p>
    #          </note>
    # @!attribute to_addresses
    #   <p>The <b>additional</b> recipients information present in to list.
    #      You must have 1 required recipient (<code>DestinationEmailAddress</code>). You can then specify
    #      up to 49 additional recipients (across <code>ToAddresses</code> and <code>CcAddresses</code>),
    #      for a total of 50 recipients.</p>
    #   @return [Array<Types::EmailAddressInfo>]
    # @!attribute cc_addresses
    #   <p>The <b>additional</b> recipients information present in cc list.
    #      You must have 1 required recipient (<code>DestinationEmailAddress</code>). You can then specify
    #      up to 49 additional recipients (across <code>ToAddresses</code> and <code>CcAddresses</code>),
    #      for a total of 50 recipients.</p>
    #   @return [Array<Types::EmailAddressInfo>]
    class InboundAdditionalRecipients < Struct.new(
      :to_addresses,
      :cc_addresses,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about email body content.</p>
    # @!attribute message_source_type
    #   <p>The message source type, that is, <code>RAW</code>.</p>
    #   @return [String]
    # @!attribute raw_message
    #   <p>The raw email body content.</p>
    #   @return [Types::InboundRawMessage]
    class InboundEmailContent < Struct.new(
      :message_source_type,
      :raw_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the raw email body content.</p>
    # @!attribute subject
    #   <p>The email subject.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The email message body.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>Type of content, that is, <code>text/plain</code> or <code>text/html</code>.</p>
    #   @return [String]
    # @!attribute headers
    #   <p>Headers present in inbound email.</p>
    #   @return [Hash<String, String>]
    class InboundRawMessage < Struct.new(
      :subject,
      :body,
      :content_type,
      :headers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Connect instance.</p>
    # @!attribute id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute identity_management_type
    #   <p>The identity management type.</p>
    #   @return [String]
    # @!attribute instance_alias
    #   <p>The alias of instance.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>When the instance was created.</p>
    #   @return [Time]
    # @!attribute service_role
    #   <p>The service role of the instance.</p>
    #   @return [String]
    # @!attribute instance_status
    #   <p>The state of the instance.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Relevant
    #      details why the instance was not successfully created. </p>
    #   @return [Types::InstanceStatusReason]
    # @!attribute inbound_calls_enabled
    #   <p>Whether inbound calls are enabled.</p>
    #   @return [Boolean]
    # @!attribute outbound_calls_enabled
    #   <p>Whether outbound calls are enabled.</p>
    #   @return [Boolean]
    # @!attribute instance_access_url
    #   <p>This URL allows contact center users to access the Amazon Connect admin website.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of an instance.</p>
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Relevant
    #    details why the instance was not successfully created.</p>
    # @!attribute message
    #   <p>The message.</p>
    #   @return [String]
    class InstanceStatusReason < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The storage configuration for the instance.</p>
    # @!attribute association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    #   @return [String]
    # @!attribute storage_type
    #   <p>A valid storage type.</p>
    #   @return [String]
    # @!attribute s3_config
    #   <p>The S3 bucket
    #      configuration.</p>
    #   @return [Types::S3Config]
    # @!attribute kinesis_video_stream_config
    #   <p>The configuration of the Kinesis video stream.</p>
    #   @return [Types::KinesisVideoStreamConfig]
    # @!attribute kinesis_stream_config
    #   <p>The configuration of the Kinesis data stream.</p>
    #   @return [Types::KinesisStreamConfig]
    # @!attribute kinesis_firehose_config
    #   <p>The configuration of the Kinesis Firehose delivery stream.</p>
    #   @return [Types::KinesisFirehoseConfig]
    class InstanceStorageConfig < Struct.new(
      :association_id,
      :storage_type,
      :s3_config,
      :kinesis_video_stream_config,
      :kinesis_stream_config,
      :kinesis_firehose_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the instance.</p>
    # @!attribute id
    #   <p>The identifier of the instance.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute identity_management_type
    #   <p>The identity management type of the instance.</p>
    #   @return [String]
    # @!attribute instance_alias
    #   <p>The alias of the instance.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>When the instance was created.</p>
    #   @return [Time]
    # @!attribute service_role
    #   <p>The service role of the instance.</p>
    #   @return [String]
    # @!attribute instance_status
    #   <p>The state of the instance.</p>
    #   @return [String]
    # @!attribute inbound_calls_enabled
    #   <p>Whether inbound calls are enabled.</p>
    #   @return [Boolean]
    # @!attribute outbound_calls_enabled
    #   <p>Whether outbound calls are enabled.</p>
    #   @return [Boolean]
    # @!attribute instance_access_url
    #   <p>This URL allows contact center users to access the Amazon Connect admin website.</p>
    #   @return [String]
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
      :instance_access_url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about the associated AppIntegrations.</p>
    # @!attribute integration_association_id
    #   <p>The identifier for the AppIntegration association.</p>
    #   @return [String]
    # @!attribute integration_association_arn
    #   <p>The Amazon Resource Name (ARN) for the AppIntegration association.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute integration_type
    #   <p>The integration type.</p>
    #   @return [String]
    # @!attribute integration_arn
    #   <p>The Amazon Resource Name (ARN) for the AppIntegration.</p>
    #   @return [String]
    # @!attribute source_application_url
    #   <p>The URL for the external application.</p>
    #   @return [String]
    # @!attribute source_application_name
    #   <p>The user-provided, friendly name for the external application.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>The name of the source.</p>
    #   @return [String]
    class IntegrationAssociationSummary < Struct.new(
      :integration_association_id,
      :integration_association_arn,
      :instance_id,
      :integration_type,
      :integration_arn,
      :source_application_url,
      :source_application_name,
      :source_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Request processing failed because of an error or failure with the service.</p>
    # @!attribute message
    #   <p>The message.</p>
    #   @return [String]
    class InternalServiceException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the interval period to use for returning results.</p>
    # @!attribute time_zone
    #   <p>The timezone applied to requested metrics.</p>
    #   @return [String]
    # @!attribute interval_period
    #   <p>
    #               <code>IntervalPeriod</code>: An aggregated grouping applied to request metrics. Valid
    #       <code>IntervalPeriod</code> values are: <code>FIFTEEN_MIN</code> | <code>THIRTY_MIN</code> |
    #       <code>HOUR</code> | <code>DAY</code> | <code>WEEK</code> | <code>TOTAL</code>. </p>
    #            <p>For example, if <code>IntervalPeriod</code> is selected <code>THIRTY_MIN</code>,
    #       <code>StartTime</code> and <code>EndTime</code> differs by 1 day, then Amazon Connect
    #      returns 48 results in the response. Each result is aggregated by the THIRTY_MIN period. By
    #      default Amazon Connect aggregates results based on the <code>TOTAL</code> interval period. </p>
    #            <p>The following list describes restrictions on <code>StartTime</code> and <code>EndTime</code>
    #      based on what <code>IntervalPeriod</code> is requested. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FIFTEEN_MIN</code>: The difference between <code>StartTime</code> and
    #         <code>EndTime</code> must be less than 3 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>THIRTY_MIN</code>: The difference between <code>StartTime</code> and
    #         <code>EndTime</code> must be less than 3 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HOUR</code>: The difference between <code>StartTime</code> and <code>EndTime</code>
    #        must be less than 3 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DAY</code>: The difference between <code>StartTime</code> and <code>EndTime</code>
    #        must be less than 35 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WEEK</code>: The difference between <code>StartTime</code> and <code>EndTime</code>
    #        must be less than 35 days.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code>: The difference between <code>StartTime</code> and <code>EndTime</code>
    #        must be less than 35 days.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class IntervalDetails < Struct.new(
      :time_zone,
      :interval_period,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The flow is not valid.</p>
    # @!attribute problems
    #   <p>The problems with the flow. Please fix before trying again.</p>
    #   @return [Array<Types::ProblemDetail>]
    class InvalidContactFlowException < Struct.new(
      :problems,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The problems with the module. Please fix before trying again.</p>
    # @!attribute problems
    #   @return [Array<Types::ProblemDetail>]
    class InvalidContactFlowModuleException < Struct.new(
      :problems,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>One or more of the specified parameters are not valid.</p>
    # @!attribute message
    #   <p>The message about the parameters.</p>
    #   @return [String]
    class InvalidParameterException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request is not valid.</p>
    # @!attribute message
    #   <p>The message about the request.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>Reason why the request was invalid.</p>
    #   @return [Types::InvalidRequestExceptionReason]
    class InvalidRequestException < Struct.new(
      :message,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Reason why the request was invalid.</p>
    # @!attribute attached_file_invalid_request_exception_reason
    #   <p>Reason why the StartAttachedFiledUpload request was invalid.</p>
    #   @return [String]
    class InvalidRequestExceptionReason < Struct.new(
      :attached_file_invalid_request_exception_reason,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class AttachedFileInvalidRequestExceptionReason < InvalidRequestExceptionReason; end
      class Unknown < InvalidRequestExceptionReason; end
    end

    # <p>A field that is invisible to an agent.</p>
    # @!attribute id
    #   <p>Identifier of the invisible field.</p>
    #   @return [Types::TaskTemplateFieldIdentifier]
    class InvisibleFieldInfo < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information of a Kinesis Data Firehose delivery stream.</p>
    # @!attribute firehose_arn
    #   <p>The Amazon Resource Name (ARN) of the delivery stream.</p>
    #   @return [String]
    class KinesisFirehoseConfig < Struct.new(
      :firehose_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information of a Kinesis data stream.</p>
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the data stream.</p>
    #   @return [String]
    class KinesisStreamConfig < Struct.new(
      :stream_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information of a Kinesis video stream.</p>
    # @!attribute prefix
    #   <p>The prefix of the video stream.</p>
    #   @return [String]
    # @!attribute retention_period_hours
    #   <p>The number of hours data is retained in the stream. Kinesis Video Streams retains the data
    #      in a data store that is associated with the stream.</p>
    #            <p>The default value is 0, indicating that the stream does not persist data.</p>
    #   @return [Integer]
    # @!attribute encryption_config
    #   <p>The encryption configuration.</p>
    #   @return [Types::EncryptionConfig]
    class KinesisVideoStreamConfig < Struct.new(
      :prefix,
      :retention_period_hours,
      :encryption_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:retention_period_hours] = 0 unless options.key?(:retention_period_hours)
        super
      end
    end

    # <p>Configuration information of an Amazon Lex bot.</p>
    # @!attribute name
    #   <p>The name of the Amazon Lex bot.</p>
    #   @return [String]
    # @!attribute lex_region
    #   <p>The Amazon Web Services Region where the Amazon Lex bot was created.</p>
    #   @return [String]
    class LexBot < Struct.new(
      :name,
      :lex_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information of an Amazon Lex or Amazon Lex V2 bot.</p>
    # @!attribute lex_bot
    #   <p>Configuration information of an Amazon Lex bot.</p>
    #   @return [Types::LexBot]
    # @!attribute lex_v2_bot
    #   <p>Configuration information of an Amazon Lex V2 bot.</p>
    #   @return [Types::LexV2Bot]
    class LexBotConfig < Struct.new(
      :lex_bot,
      :lex_v2_bot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information of an Amazon Lex V2 bot.</p>
    # @!attribute alias_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Lex V2 bot.</p>
    #   @return [String]
    class LexV2Bot < Struct.new(
      :alias_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The allowed limit for the resource has been exceeded.</p>
    # @!attribute message
    #   <p>The message about the limit.</p>
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute agent_status_types
    #   <p>Available agent status types.</p>
    #   @return [Array<String>]
    class ListAgentStatusRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :agent_status_types,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute agent_status_summary_list
    #   <p>A summary of agent statuses.</p>
    #   @return [Array<Types::AgentStatusSummary>]
    class ListAgentStatusResponse < Struct.new(
      :next_token,
      :agent_status_summary_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute data_set_id
    #   <p>The identifier of the dataset to get the association status.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListAnalyticsDataAssociationsRequest < Struct.new(
      :instance_id,
      :data_set_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>An array of successful results: <code>DataSetId</code>, <code>TargetAccountId</code>,
    #       <code>ResourceShareId</code>, <code>ResourceShareArn</code>. This is a paginated API, so
    #       <code>nextToken</code> is given if there are more results to be returned.</p>
    #   @return [Array<Types::AnalyticsDataAssociationResult>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListAnalyticsDataAssociationsResponse < Struct.new(
      :results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListAnalyticsDataLakeDataSetsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>An array of successful results: <code>DataSetId</code>, <code>DataSetName</code>. This is a
    #      paginated API, so <code>nextToken</code> is given if there are more results to be
    #      returned.</p>
    #   @return [Array<Types::AnalyticsDataSetsResult>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListAnalyticsDataLakeDataSetsResponse < Struct.new(
      :results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListApprovedOriginsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origins
    #   <p>The approved origins.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListApprovedOriginsResponse < Struct.new(
      :origins,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListAssociatedContactsRequest < Struct.new(
      :instance_id,
      :contact_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_summary_list
    #   <p>List of the contact summary for all the contacts in contact tree associated with unique
    #      identifier.</p>
    #   @return [Array<Types::AssociatedContactSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListAssociatedContactsResponse < Struct.new(
      :contact_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListAuthenticationProfilesRequest < Struct.new(
      :instance_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_profile_summary_list
    #   <p>A summary of a given authentication profile.</p>
    #   @return [Array<Types::AuthenticationProfileSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListAuthenticationProfilesResponse < Struct.new(
      :authentication_profile_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute lex_version
    #   <p>The version of Amazon Lex or Amazon Lex V2.</p>
    #   @return [String]
    class ListBotsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :lex_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute lex_bots
    #   <p>The names and Amazon Web Services Regions of the Amazon Lex or Amazon Lex V2 bots
    #      associated with the specified instance.</p>
    #   @return [Array<Types::LexBotConfig>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListBotsResponse < Struct.new(
      :lex_bots,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A leaf node condition which can be used to specify a List condition to search users with
    #    attributes included in Lists like Proficiencies.</p>
    # @!attribute target_list_type
    #   <p>The type of target list that will be used to filter the users.</p>
    #   @return [String]
    # @!attribute conditions
    #   <p>A list of Condition objects which would be applied together with an AND condition.</p>
    #   @return [Array<Types::Condition>]
    class ListCondition < Struct.new(
      :target_list_type,
      :conditions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #            <important>
    #               <p>This is not expected to be set because the value returned in the previous response is
    #       always null.</p>
    #            </important>
    #   @return [String]
    class ListContactEvaluationsRequest < Struct.new(
      :instance_id,
      :contact_id,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluation_summary_list
    #   <p>Provides details about a list of contact evaluations belonging to an instance.</p>
    #   @return [Array<Types::EvaluationSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #            <important>
    #               <p>This is always returned as null in the response.</p>
    #            </important>
    #   @return [String]
    class ListContactEvaluationsResponse < Struct.new(
      :evaluation_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute contact_flow_module_state
    #   <p>The state of the flow module.</p>
    #   @return [String]
    class ListContactFlowModulesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :contact_flow_module_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_flow_modules_summary_list
    #   <p>Information about the flow module.</p>
    #   @return [Array<Types::ContactFlowModuleSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListContactFlowModulesResponse < Struct.new(
      :contact_flow_modules_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    #   @return [Integer]
    class ListContactFlowVersionsRequest < Struct.new(
      :instance_id,
      :contact_flow_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_flow_version_summary_list
    #   <p>A list of flow version summaries.</p>
    #   @return [Array<Types::ContactFlowVersionSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListContactFlowVersionsResponse < Struct.new(
      :contact_flow_version_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_flow_types
    #   <p>The type of flow.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    #   @return [Integer]
    class ListContactFlowsRequest < Struct.new(
      :instance_id,
      :contact_flow_types,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_flow_summary_list
    #   <p>Information about the flows.</p>
    #   @return [Array<Types::ContactFlowSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListContactFlowsResponse < Struct.new(
      :contact_flow_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the initial contact.</p>
    #   @return [String]
    # @!attribute reference_types
    #   <p>The type of reference.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #            <important>
    #               <p>This is not expected to be set, because the value returned in the previous response is
    #       always null.</p>
    #            </important>
    #   @return [String]
    class ListContactReferencesRequest < Struct.new(
      :instance_id,
      :contact_id,
      :reference_types,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute reference_summary_list
    #   <p>Information about the flows.</p>
    #   @return [Array<Types::ReferenceSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #            <important>
    #               <p>This is always returned as null in the response.</p>
    #            </important>
    #   @return [String]
    class ListContactReferencesResponse < Struct.new(
      :reference_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see 
    #   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html">What is Amazon Transcribe?</a>
    #            </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListDefaultVocabulariesRequest < Struct.new(
      :instance_id,
      :language_code,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute default_vocabulary_list
    #   <p>A list of default vocabularies.</p>
    #   @return [Array<Types::DefaultVocabulary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListDefaultVocabulariesResponse < Struct.new(
      :default_vocabulary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute evaluation_form_id
    #   <p>The unique identifier for the evaluation form.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListEvaluationFormVersionsRequest < Struct.new(
      :instance_id,
      :evaluation_form_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluation_form_version_summary_list
    #   <p>Provides details about a list of evaluation forms belonging to an instance.</p>
    #   @return [Array<Types::EvaluationFormVersionSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListEvaluationFormVersionsResponse < Struct.new(
      :evaluation_form_version_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListEvaluationFormsRequest < Struct.new(
      :instance_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluation_form_summary_list
    #   <p>Provides details about a list of evaluation forms belonging to an instance.</p>
    #   @return [Array<Types::EvaluationFormSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListEvaluationFormsResponse < Struct.new(
      :evaluation_form_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>A valid resource type.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListFlowAssociationsRequest < Struct.new(
      :instance_id,
      :resource_type,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_association_summary_list
    #   <p>Summary of flow associations.</p>
    #   @return [Array<Types::FlowAssociationSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListFlowAssociationsResponse < Struct.new(
      :flow_association_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListHoursOfOperationOverridesRequest < Struct.new(
      :instance_id,
      :hours_of_operation_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute hours_of_operation_override_list
    #   <p>Information about the hours of operation override.</p>
    #   @return [Array<Types::HoursOfOperationOverride>]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    class ListHoursOfOperationOverridesResponse < Struct.new(
      :next_token,
      :hours_of_operation_override_list,
      :last_modified_region,
      :last_modified_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    #   @return [Integer]
    class ListHoursOfOperationsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hours_of_operation_summary_list
    #   <p>Information about the hours of operation.</p>
    #   @return [Array<Types::HoursOfOperationSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListHoursOfOperationsResponse < Struct.new(
      :hours_of_operation_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListInstanceAttributesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute attributes
    #   <p>The attribute types.</p>
    #   @return [Array<Types::Attribute>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListInstanceAttributesResponse < Struct.new(
      :attributes,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>A valid resource type.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListInstanceStorageConfigsRequest < Struct.new(
      :instance_id,
      :resource_type,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute storage_configs
    #   <p>A valid storage type.</p>
    #   @return [Array<Types::InstanceStorageConfig>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListInstanceStorageConfigsResponse < Struct.new(
      :storage_configs,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListInstancesRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_summary_list
    #   <p>Information about the instances.</p>
    #   @return [Array<Types::InstanceSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListInstancesResponse < Struct.new(
      :instance_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute integration_type
    #   <p>The integration type.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute integration_arn
    #   <p>The Amazon Resource Name (ARN) of the integration.</p>
    #   @return [String]
    class ListIntegrationAssociationsRequest < Struct.new(
      :instance_id,
      :integration_type,
      :next_token,
      :max_results,
      :integration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute integration_association_summary_list
    #   <p>The associations.</p>
    #   @return [Array<Types::IntegrationAssociationSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListIntegrationAssociationsResponse < Struct.new(
      :integration_association_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListLambdaFunctionsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute lambda_functions
    #   <p>The Lambdafunction ARNs associated with the specified instance.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListLambdaFunctionsResponse < Struct.new(
      :lambda_functions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. If no value is specified, the default is 10.
    #      </p>
    #   @return [Integer]
    class ListLexBotsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute lex_bots
    #   <p>The names and Amazon Web Services Regions of the Amazon Lex bots associated with the
    #      specified instance.</p>
    #   @return [Array<Types::LexBot>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListLexBotsResponse < Struct.new(
      :lex_bots,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute phone_number_types
    #   <p>The type of phone number.</p>
    #            <note>
    #               <p>We recommend using <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html">ListPhoneNumbersV2</a> to
    #       return phone number types. While ListPhoneNumbers returns number types <code>UIFN</code>,
    #        <code>SHARED</code>, <code>THIRD_PARTY_TF</code>, and <code>THIRD_PARTY_DID</code>, it
    #       incorrectly lists them as <code>TOLL_FREE</code> or <code>DID</code>. </p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute phone_number_country_codes
    #   <p>The ISO country code.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    #   @return [Integer]
    class ListPhoneNumbersRequest < Struct.new(
      :instance_id,
      :phone_number_types,
      :phone_number_country_codes,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_summary_list
    #   <p>Information about the phone numbers.</p>
    #   @return [Array<Types::PhoneNumberSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListPhoneNumbersResponse < Struct.new(
      :phone_number_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about phone numbers that have been claimed to your Amazon Connect instance
    #    or traffic distribution group.</p>
    # @!attribute phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #   @return [String]
    # @!attribute phone_number_arn
    #   <p>The Amazon Resource Name (ARN) of the phone number.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number. Phone numbers are formatted <code>[+] [country code] [subscriber number including area code]</code>.</p>
    #   @return [String]
    # @!attribute phone_number_country_code
    #   <p>The ISO country code.</p>
    #   @return [String]
    # @!attribute phone_number_type
    #   <p>The type of phone number.</p>
    #   @return [String]
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) for Amazon Connect instances or traffic distribution groups that phone number inbound traffic is routed through.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance that phone numbers are claimed to. You
    #      can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the
    #       instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute phone_number_description
    #   <p>The description of the phone number.</p>
    #   @return [String]
    # @!attribute source_phone_number_arn
    #   <p>The claimed phone number ARN that was previously imported from the external service, such as
    #       Amazon Web Services End User Messaging. If it is from Amazon Web Services End User Messaging, it
    #      looks like the ARN of the phone number that was imported from Amazon Web Services End User
    #      Messaging.</p>
    #   @return [String]
    class ListPhoneNumbersSummary < Struct.new(
      :phone_number_id,
      :phone_number_arn,
      :phone_number,
      :phone_number_country_code,
      :phone_number_type,
      :target_arn,
      :instance_id,
      :phone_number_description,
      :source_phone_number_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) for Amazon Connect instances or traffic distribution groups that phone number inbound traffic is routed through. If both <code>TargetArn</code> and <code>InstanceId</code> input are not
    #      provided, this API lists numbers claimed to all the Amazon Connect instances belonging to
    #      your account in the same Amazon Web Services Region as the request.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance that phone numbers are claimed to. You
    #      can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the
    #       instance ID</a> in the Amazon Resource Name (ARN) of the instance. If both <code>TargetArn</code> and <code>InstanceId</code> are not
    #      provided, this API lists numbers claimed to all the Amazon Connect instances belonging to your account in
    #      the same AWS Region as the request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute phone_number_country_codes
    #   <p>The ISO country code.</p>
    #   @return [Array<String>]
    # @!attribute phone_number_types
    #   <p>The type of phone number.</p>
    #   @return [Array<String>]
    # @!attribute phone_number_prefix
    #   <p>The prefix of the phone number. If provided, it must contain <code>+</code> as part of the country code.</p>
    #   @return [String]
    class ListPhoneNumbersV2Request < Struct.new(
      :target_arn,
      :instance_id,
      :max_results,
      :next_token,
      :phone_number_country_codes,
      :phone_number_types,
      :phone_number_prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute list_phone_numbers_summary_list
    #   <p>Information about phone numbers that have been claimed to your Amazon Connect instances
    #      or traffic distribution groups.</p>
    #   @return [Array<Types::ListPhoneNumbersSummary>]
    class ListPhoneNumbersV2Response < Struct.new(
      :next_token,
      :list_phone_numbers_summary_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instance ID in the Amazon Resource
    #      Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListPredefinedAttributesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute predefined_attribute_summary_list
    #   <p>Summary of the predefined attributes.</p>
    #   @return [Array<Types::PredefinedAttributeSummary>]
    class ListPredefinedAttributesResponse < Struct.new(
      :next_token,
      :predefined_attribute_summary_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    #   @return [Integer]
    class ListPromptsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute prompt_summary_list
    #   <p>Information about the prompts.</p>
    #   @return [Array<Types::PromptSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListPromptsResponse < Struct.new(
      :prompt_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    #   @return [Integer]
    class ListQueueQuickConnectsRequest < Struct.new(
      :instance_id,
      :queue_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute quick_connect_summary_list
    #   <p>Information about the quick connects.</p>
    #   @return [Array<Types::QuickConnectSummary>]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    class ListQueueQuickConnectsResponse < Struct.new(
      :next_token,
      :quick_connect_summary_list,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute queue_types
    #   <p>The type of queue.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    #   @return [Integer]
    class ListQueuesRequest < Struct.new(
      :instance_id,
      :queue_types,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute queue_summary_list
    #   <p>Information about the queues.</p>
    #   @return [Array<Types::QueueSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListQueuesResponse < Struct.new(
      :queue_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    #   @return [Integer]
    # @!attribute quick_connect_types
    #   <p>The type of quick connect. In the Amazon Connect admin website, when you create a quick connect, you are
    #      prompted to assign one of the following types: Agent (USER), External (PHONE_NUMBER), or Queue (QUEUE).</p>
    #   @return [Array<String>]
    class ListQuickConnectsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :quick_connect_types,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute quick_connect_summary_list
    #   <p>Information about the quick connects.</p>
    #   @return [Array<Types::QuickConnectSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListQuickConnectsResponse < Struct.new(
      :quick_connect_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute output_type
    #   <p>The Contact Lens output type to be returned.</p>
    #   @return [String]
    # @!attribute segment_types
    #   <p>Enum with segment types . Each value corresponds to a segment type returned in the segments
    #      list of the API. Each segment type has its own structure. Different channels may have different
    #      sets of supported segment types.</p>
    #   @return [Array<String>]
    class ListRealtimeContactAnalysisSegmentsV2Request < Struct.new(
      :instance_id,
      :contact_id,
      :max_results,
      :next_token,
      :output_type,
      :segment_types,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel
    #   <p>The channel of the contact. </p>
    #            <important>
    #               <p>Only <code>CHAT</code> is supported. This API does not support <code>VOICE</code>. If you
    #       attempt to use it for the VOICE channel, an <code>InvalidRequestException</code> error
    #       occurs.</p>
    #            </important>
    #   @return [String]
    # @!attribute status
    #   <p>Status of real-time contact analysis.</p>
    #   @return [String]
    # @!attribute segments
    #   <p>An analyzed transcript or category.</p>
    #   @return [Array<Types::RealtimeContactAnalysisSegment>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListRealtimeContactAnalysisSegmentsV2Response < Struct.new(
      :channel,
      :status,
      :segments,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    #   @return [Integer]
    class ListRoutingProfileQueuesRequest < Struct.new(
      :instance_id,
      :routing_profile_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute routing_profile_queue_config_summary_list
    #   <p>Information about the routing profiles.</p>
    #   @return [Array<Types::RoutingProfileQueueConfigSummary>]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    class ListRoutingProfileQueuesResponse < Struct.new(
      :next_token,
      :routing_profile_queue_config_summary_list,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    #   @return [Integer]
    class ListRoutingProfilesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute routing_profile_summary_list
    #   <p>Information about the routing profiles.</p>
    #   @return [Array<Types::RoutingProfileSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListRoutingProfilesResponse < Struct.new(
      :routing_profile_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute publish_status
    #   <p>The publish status of the rule.</p>
    #   @return [String]
    # @!attribute event_source_name
    #   <p>The name of the event source.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListRulesRequest < Struct.new(
      :instance_id,
      :publish_status,
      :event_source_name,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_summary_list
    #   <p>Summary information about a rule.</p>
    #   @return [Array<Types::RuleSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListRulesResponse < Struct.new(
      :rule_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListSecurityKeysRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_keys
    #   <p>The security keys.</p>
    #   @return [Array<Types::SecurityKey>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListSecurityKeysResponse < Struct.new(
      :security_keys,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profile_id
    #   <p>The identifier for the security profle.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListSecurityProfileApplicationsRequest < Struct.new(
      :security_profile_id,
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute applications
    #   <p>A list of the third-party application's metadata.</p>
    #   @return [Array<Types::Application>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    class ListSecurityProfileApplicationsResponse < Struct.new(
      :applications,
      :next_token,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profile_id
    #   <p>The identifier for the security profle.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListSecurityProfilePermissionsRequest < Struct.new(
      :security_profile_id,
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute permissions
    #   <p>The permissions granted to the security profile. For a complete list of valid permissions,
    #      see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html">List
    #       of security profile permissions</a>.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    class ListSecurityProfilePermissionsResponse < Struct.new(
      :permissions,
      :next_token,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    #   @return [Integer]
    class ListSecurityProfilesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profile_summary_list
    #   <p>Information about the security profiles.</p>
    #   @return [Array<Types::SecurityProfileSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListSecurityProfilesResponse < Struct.new(
      :security_profile_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. All Amazon Connect resources (instances, queues, flows, routing
    #      profiles, etc) have an ARN. To locate the ARN for an instance, for example, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">Find your Amazon Connect instance ID/ARN</a>. </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Information about the tags.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #            <important>
    #               <p>It is not expected that you set this because the value returned in the previous response is
    #       always null.</p>
    #            </important>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #            <important>
    #               <p>It is not expected that you set this.</p>
    #            </important>
    #   @return [Integer]
    # @!attribute status
    #   <p>Marks a template as <code>ACTIVE</code> or <code>INACTIVE</code> for a task to refer to it. 
    #   Tasks can only be created from <code>ACTIVE</code> templates.
    #   If a template is marked as <code>INACTIVE</code>, then a task that refers to this template cannot be created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the task template.</p>
    #   @return [String]
    class ListTaskTemplatesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :status,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_templates
    #   <p>Provides details about a list of task templates belonging to an instance.</p>
    #   @return [Array<Types::TaskTemplateMetadata>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #            <important>
    #               <p>This is always returned as a null in the response.</p>
    #            </important>
    #   @return [String]
    class ListTaskTemplatesResponse < Struct.new(
      :task_templates,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute traffic_distribution_group_id
    #   <p>The identifier of the traffic distribution group.
    #   This can be the ID or the ARN if the API is being called in the Region where the traffic distribution group was created.
    #   The ARN must be provided if the call is from the replicated Region.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListTrafficDistributionGroupUsersRequest < Struct.new(
      :traffic_distribution_group_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute traffic_distribution_group_user_summary_list
    #   <p>A list of traffic distribution group users.</p>
    #   @return [Array<Types::TrafficDistributionGroupUserSummary>]
    class ListTrafficDistributionGroupUsersResponse < Struct.new(
      :next_token,
      :traffic_distribution_group_user_summary_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    class ListTrafficDistributionGroupsRequest < Struct.new(
      :max_results,
      :next_token,
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute traffic_distribution_group_summary_list
    #   <p>A list of traffic distribution groups.</p>
    #   @return [Array<Types::TrafficDistributionGroupSummary>]
    class ListTrafficDistributionGroupsResponse < Struct.new(
      :next_token,
      :traffic_distribution_group_summary_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary information about the use cases for the specified integration
    #    association.</p>
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute integration_association_id
    #   <p>The identifier for the integration association.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListUseCasesRequest < Struct.new(
      :instance_id,
      :integration_association_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute use_case_summary_list
    #   <p>The use cases.</p>
    #   @return [Array<Types::UseCase>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListUseCasesResponse < Struct.new(
      :use_case_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    #   @return [Integer]
    class ListUserHierarchyGroupsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_hierarchy_group_summary_list
    #   <p>Information about the hierarchy groups.</p>
    #   @return [Array<Types::HierarchyGroupSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListUserHierarchyGroupsResponse < Struct.new(
      :user_hierarchy_group_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instance ID in the Amazon Resource
    #      Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier of the user account.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListUserProficienciesRequest < Struct.new(
      :instance_id,
      :user_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute user_proficiency_list
    #   <p>Information about the user proficiencies.</p>
    #   @return [Array<Types::UserProficiency>]
    # @!attribute last_modified_time
    #   <p>The last time that the user's proficiencies are were modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The region in which a user's proficiencies were last modified.</p>
    #   @return [String]
    class ListUserProficienciesResponse < Struct.new(
      :next_token,
      :user_proficiency_list,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    #   @return [Integer]
    class ListUsersRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_summary_list
    #   <p>Information about the users.</p>
    #   @return [Array<Types::UserSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListUsersResponse < Struct.new(
      :user_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    #   @return [String]
    # @!attribute view_id
    #   <p>The identifier of the view. Both <code>ViewArn</code> and <code>ViewId</code> can be
    #      used.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    #   @return [Integer]
    class ListViewVersionsRequest < Struct.new(
      :instance_id,
      :view_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute view_version_summary_list
    #   <p>A list of view version summaries.</p>
    #   @return [Array<Types::ViewVersionSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListViewVersionsResponse < Struct.new(
      :view_version_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the view.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    #   @return [Integer]
    class ListViewsRequest < Struct.new(
      :instance_id,
      :type,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute views_summary_list
    #   <p>A list of view summaries.</p>
    #   @return [Array<Types::ViewSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListViewsResponse < Struct.new(
      :views_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object to define AgentsCriteria.</p>
    # @!attribute agents_criteria
    #   <p>An object to define agentIds.</p>
    #   @return [Types::AgentsCriteria]
    class MatchCriteria < Struct.new(
      :agents_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Maximum number (1000) of tags have been returned with current request. Consider changing
    #    request parameters to get more tags.</p>
    # @!attribute message
    #   @return [String]
    class MaximumResultReturnedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about which channels are supported, and how many contacts an agent can
    #    have on a channel simultaneously.</p>
    # @!attribute channel
    #   <p>The channels that agents can handle in the Contact Control Panel (CCP).</p>
    #   @return [String]
    # @!attribute concurrency
    #   <p>The number of contacts an agent can have on a channel simultaneously.</p>
    #            <p>Valid Range for <code>VOICE</code>: Minimum value of 1. Maximum value of 1.</p>
    #            <p>Valid Range for <code>CHAT</code>: Minimum value of 1. Maximum value of 10.</p>
    #            <p>Valid Range for <code>TASK</code>: Minimum value of 1. Maximum value of 10.</p>
    #   @return [Integer]
    # @!attribute cross_channel_behavior
    #   <p>Defines the cross-channel routing behavior for each channel that is enabled for this Routing
    #      Profile. For example, this allows you to offer an agent a different contact from another channel
    #      when they are currently working with a contact from a Voice channel.</p>
    #   @return [Types::CrossChannelBehavior]
    class MediaConcurrency < Struct.new(
      :channel,
      :concurrency,
      :cross_channel_behavior,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A set of endpoints used by clients to connect to the media service group for an Amazon Chime SDK meeting.</p>
    # @!attribute audio_host_url
    #   <p>The audio host URL.</p>
    #   @return [String]
    # @!attribute audio_fallback_url
    #   <p>The audio fallback URL.</p>
    #   @return [String]
    # @!attribute signaling_url
    #   <p>The signaling URL.</p>
    #   @return [String]
    # @!attribute turn_control_url
    #   <p>The turn control URL.</p>
    #   @return [String]
    # @!attribute event_ingestion_url
    #   <p>The event ingestion URL to which you send client meeting events.</p>
    #   @return [String]
    class MediaPlacement < Struct.new(
      :audio_host_url,
      :audio_fallback_url,
      :signaling_url,
      :turn_control_url,
      :event_ingestion_url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A meeting created using the Amazon Chime SDK.</p>
    # @!attribute media_region
    #   <p>The Amazon Web Services Region in which you create the meeting.</p>
    #   @return [String]
    # @!attribute media_placement
    #   <p>The media placement for the meeting.</p>
    #   @return [Types::MediaPlacement]
    # @!attribute meeting_features
    #   <p>The configuration settings of the features available to a meeting.</p>
    #   @return [Types::MeetingFeaturesConfiguration]
    # @!attribute meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #   @return [String]
    class Meeting < Struct.new(
      :media_region,
      :media_placement,
      :meeting_features,
      :meeting_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings of the features available to a meeting.</p>
    # @!attribute audio
    #   <p>The configuration settings for the audio features available to a meeting.</p>
    #   @return [Types::AudioFeatures]
    class MeetingFeaturesConfiguration < Struct.new(
      :audio,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the name, thresholds, and metric filters.</p>
    # @!attribute metric
    #   <p>The metric name, thresholds, and metric filters of the returned metric.</p>
    #   @return [Types::MetricV2]
    # @!attribute value
    #   <p>The corresponding value of the metric returned in the response.</p>
    #   @return [Float]
    class MetricDataV2 < Struct.new(
      :metric,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the filter used when retrieving metrics.
    #     <code>MetricFiltersV2</code> can be used on the following metrics:
    #     <code>AVG_AGENT_CONNECTING_TIME</code>, <code>CONTACTS_CREATED</code>,
    #     <code>CONTACTS_HANDLED</code>, <code>SUM_CONTACTS_DISCONNECTED</code>.</p>
    # @!attribute metric_filter_key
    #   <p>The key to use for filtering data. </p>
    #            <p>Valid metric filter keys: </p>
    #            <ul>
    #               <li>
    #                  <p>ANSWERING_MACHINE_DETECTION_STATUS</p>
    #               </li>
    #               <li>
    #                  <p>CASE_STATUS</p>
    #               </li>
    #               <li>
    #                  <p>DISCONNECT_REASON</p>
    #               </li>
    #               <li>
    #                  <p>FLOWS_ACTION_IDENTIFIER</p>
    #               </li>
    #               <li>
    #                  <p>FLOWS_NEXT_ACTION_IDENTIFIER</p>
    #               </li>
    #               <li>
    #                  <p>FLOWS_OUTCOME_TYPE</p>
    #               </li>
    #               <li>
    #                  <p>FLOWS_RESOURCE_TYPE</p>
    #               </li>
    #               <li>
    #                  <p>INITIATION_METHOD</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute metric_filter_values
    #   <p>The values to use for filtering data. Values for metric-level filters can be either a fixed
    #      set of values or a customized list, depending on the use case.</p>
    #            <p>For valid values of metric-level filters <code>INITIATION_METHOD</code>,
    #       <code>DISCONNECT_REASON</code>, and <code>ANSWERING_MACHINE_DETECTION_STATUS</code>, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/ctr-data-model.html#ctr-ContactTraceRecord">ContactTraceRecord</a> in the <i>Amazon Connect Administrator Guide</i>. </p>
    #            <p>For valid values of the metric-level filter <code>FLOWS_OUTCOME_TYPE</code>, see the
    #      description for the <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#flows-outcome">Flow outcome</a>
    #      metric in the <i>Amazon Connect Administrator Guide</i>.</p>
    #            <p>For valid values of the metric-level filter <code>BOT_CONVERSATION_OUTCOME_TYPE</code>, see
    #      the description for the <a href="https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#bot-conversations-completed-metric">Bot
    #       conversations completed</a> in the <i>Amazon Connect Administrator
    #       Guide</i>.</p>
    #            <p>For valid values of the metric-level filter <code>BOT_INTENT_OUTCOME_TYPE</code>, see the
    #      description for the <a href="https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#bot-intents-completed-metric">Bot intents
    #       completed</a> metric in the <i>Amazon Connect Administrator
    #      Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute negate
    #   <p>If set to <code>true</code>, the API response contains results that filter out the results
    #      matched by the metric-level filters condition. By default, <code>Negate</code> is set to
    #       <code>false</code>. </p>
    #   @return [Boolean]
    class MetricFilterV2 < Struct.new(
      :metric_filter_key,
      :metric_filter_values,
      :negate,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:negate] = false unless options.key?(:negate)
        super
      end
    end

    # <p>The interval period with the start and end time for the metrics.</p>
    # @!attribute interval
    #   <p>The interval period provided in the API request. </p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp, in UNIX Epoch time format. Start time is based on the interval period
    #      selected. </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The timestamp, in UNIX Epoch time format. End time is based on the interval period selected.
    #      For example, If <code>IntervalPeriod</code> is selected <code>THIRTY_MIN</code>,
    #       <code>StartTime</code> and <code>EndTime</code> in the API request differs by 1 day, then 48
    #      results are returned in the response. Each result is aggregated by the 30 minutes period, with
    #      each <code>StartTime</code> and <code>EndTime</code> differing by 30 minutes. </p>
    #   @return [Time]
    class MetricInterval < Struct.new(
      :interval,
      :start_time,
      :end_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the metric results.</p>
    # @!attribute dimensions
    #   <p>The dimension for the metrics.</p>
    #   @return [Hash<String, String>]
    # @!attribute metric_interval
    #   <p>The interval period with the start and end time for the metrics.</p>
    #   @return [Types::MetricInterval]
    # @!attribute collections
    #   <p>The set of metrics.</p>
    #   @return [Array<Types::MetricDataV2>]
    class MetricResultV2 < Struct.new(
      :dimensions,
      :metric_interval,
      :collections,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the metric.</p>
    # @!attribute name
    #   <p>The name of the metric.</p>
    #            <important>
    #               <p>This parameter is required. The following Required = No is incorrect.</p>
    #            </important>
    #   @return [String]
    # @!attribute threshold
    #   <p>Contains information about the threshold for service level metrics.</p>
    #   @return [Array<Types::ThresholdV2>]
    # @!attribute metric_filters
    #   <p>Contains the filters to be used when returning data.</p>
    #   @return [Array<Types::MetricFilterV2>]
    class MetricV2 < Struct.new(
      :name,
      :threshold,
      :metric_filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier of the user account.</p>
    #   @return [String]
    # @!attribute allowed_monitor_capabilities
    #   <p>Specify which monitoring actions the user is allowed to take. For example, whether the user
    #      is allowed to escalate from silent monitoring to barge. AllowedMonitorCapabilities is required if
    #      barge is enabled.</p>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class MonitorContactRequest < Struct.new(
      :instance_id,
      :contact_id,
      :user_id,
      :allowed_monitor_capabilities,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>The identifier of the contact.</p>
    #   @return [String]
    # @!attribute contact_arn
    #   <p>The ARN of the contact.</p>
    #   @return [String]
    class MonitorContactResponse < Struct.new(
      :contact_id,
      :contact_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Payload of chat properties to apply when starting a new contact.</p>
    # @!attribute supported_messaging_content_types
    #   <p> The supported chat message content types. Supported types are <code>text/plain</code>,
    #       <code>text/markdown</code>, <code>application/json</code>,
    #       <code>application/vnd.amazonaws.connect.message.interactive</code>, and
    #       <code>application/vnd.amazonaws.connect.message.interactive.response</code>. </p>
    #            <p>Content types must always contain <code> text/plain</code>. You can then put any other
    #      supported type in the list. For example, all the following lists are valid because they contain
    #       <code>text/plain</code>: <code>[text/plain, text/markdown, application/json]</code>, <code>
    #       [text/markdown, text/plain]</code>, <code>[text/plain, application/json,
    #       application/vnd.amazonaws.connect.message.interactive.response]</code>. </p>
    #   @return [Array<String>]
    # @!attribute participant_details
    #   <p>The customer's details.</p>
    #   @return [Types::ParticipantDetails]
    # @!attribute attributes
    #   <p> A custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes. They can be accessed in flows just like any other contact attributes. </p>
    #            <p> There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute
    #      keys can include only alphanumeric, dash, and underscore characters. </p>
    #   @return [Hash<String, String>]
    # @!attribute streaming_configuration
    #   <p>The streaming configuration, such as the Amazon SNS streaming endpoint.</p>
    #   @return [Types::ChatStreamingConfiguration]
    class NewSessionDetails < Struct.new(
      :supported_messaging_content_types,
      :participant_details,
      :attributes,
      :streaming_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The type of notification recipient.</p>
    # @!attribute user_tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }. Amazon Connect users with the specified tags will be notified.</p>
    #   @return [Hash<String, String>]
    # @!attribute user_ids
    #   <p>A list of user IDs. Supports variable injection of
    #       <code>$.ContactLens.ContactEvaluation.Agent.AgentId</code> for
    #       <code>OnContactEvaluationSubmit</code> event source. </p>
    #   @return [Array<String>]
    class NotificationRecipientType < Struct.new(
      :user_tags,
      :user_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A leaf node condition which can be used to specify a numeric condition.</p>
    #          <note>
    #             <p>The currently supported value for <code>FieldName</code> is <code>limit</code>.</p>
    #          </note>
    # @!attribute field_name
    #   <p>The name of the field in the number condition.</p>
    #   @return [String]
    # @!attribute min_value
    #   <p>The minValue to be used while evaluating the number condition.</p>
    #   @return [Integer]
    # @!attribute max_value
    #   <p>The maxValue to be used while evaluating the number condition.</p>
    #   @return [Integer]
    # @!attribute comparison_type
    #   <p>The type of comparison to be made when evaluating the number condition.</p>
    #   @return [String]
    class NumberCondition < Struct.new(
      :field_name,
      :min_value,
      :max_value,
      :comparison_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a reference when the <code>referenceType</code> is <code>NUMBER</code>.
    #    Otherwise, null.</p>
    # @!attribute name
    #   <p>Identifier of the number reference.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A valid number.</p>
    #   @return [String]
    class NumberReference < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the property value used in automation of a numeric questions. Label values
    #    are associated with minimum and maximum values for the numeric question.</p>
    #          <ul>
    #             <li>
    #                <p>Sentiment scores have a minimum value of -5 and maximum value of 5.</p>
    #             </li>
    #             <li>
    #                <p> Duration labels, such as <code>NON_TALK_TIME</code>, <code>CONTACT_DURATION</code>,
    #       <code>AGENT_INTERACTION_DURATION</code>, <code>CUSTOMER_HOLD_TIME</code> have a minimum value
    #      of 0 and maximum value of 63072000.</p>
    #             </li>
    #             <li>
    #                <p>Percentages have a minimum value of 0 and maximum value of 100. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>NUMBER_OF_INTERRUPTIONS</code> has a minimum value of 0 and maximum value of
    #      1000.</p>
    #             </li>
    #          </ul>
    # @!attribute label
    #   <p>The property label of the automation.</p>
    #   @return [String]
    class NumericQuestionPropertyValueAutomation < Struct.new(
      :label,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the hours of operations with the effective override applied.</p>
    # @!attribute start
    #   <p>The start time that your contact center opens.</p>
    #   @return [Types::OverrideTimeSlice]
    # @!attribute end
    #   <p>The end time that your contact center closes.</p>
    #   @return [Types::OverrideTimeSlice]
    class OperationalHour < Struct.new(
      :start,
      :end,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the additional recipients of outbound email.</p>
    # @!attribute cc_email_addresses
    #   <p>Information about the <b>additional</b> CC email address
    #      recipients. Email recipients are limited to 50 total addresses: 1 required recipient in the
    #       <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_SendOutboundEmail.html#API_SendOutboundEmail_RequestBody">DestinationEmailAddress</a> field and up to 49 recipients in the 'CcEmailAddresses'
    #      field.</p>
    #   @return [Array<Types::EmailAddressInfo>]
    class OutboundAdditionalRecipients < Struct.new(
      :cc_email_addresses,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The outbound caller ID name, number, and outbound whisper flow.</p>
    # @!attribute outbound_caller_id_name
    #   <p>The caller ID name.</p>
    #   @return [String]
    # @!attribute outbound_caller_id_number_id
    #   <p>The caller ID number.</p>
    #   @return [String]
    # @!attribute outbound_flow_id
    #   <p>The outbound whisper flow to be used during an outbound call.</p>
    #   @return [String]
    class OutboundCallerConfig < Struct.new(
      :outbound_caller_id_name,
      :outbound_caller_id_number_id,
      :outbound_flow_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The contact is not permitted.</p>
    # @!attribute message
    #   <p>The message about the contact.</p>
    #   @return [String]
    class OutboundContactNotPermittedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The outbound email address ID.</p>
    # @!attribute outbound_email_address_id
    #   <p>The identifier of the email address.</p>
    #   @return [String]
    class OutboundEmailConfig < Struct.new(
      :outbound_email_address_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about email body content.</p>
    # @!attribute message_source_type
    #   <p>The message source type, that is, <code>RAW</code> or <code>TEMPLATE</code>.</p>
    #   @return [String]
    # @!attribute templated_message_config
    #   <p>Information about template message configuration.</p>
    #   @return [Types::TemplatedMessageConfig]
    # @!attribute raw_message
    #   <p>The raw email body content.</p>
    #   @return [Types::OutboundRawMessage]
    class OutboundEmailContent < Struct.new(
      :message_source_type,
      :templated_message_config,
      :raw_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the raw email body content.</p>
    # @!attribute subject
    #   <p>The email subject.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The email message body.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>Type of content, that is, <code>text/plain</code> or <code>text/html</code>.</p>
    #   @return [String]
    class OutboundRawMessage < Struct.new(
      :subject,
      :body,
      :content_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Thrown for analyzed content when requested OutputType was not enabled for a given contact.
    #    For example, if an OutputType.Raw was requested for a contact that had `RedactedOnly` Redaction
    #    policy set in the flow.</p>
    # @!attribute message
    #   @return [String]
    class OutputTypeNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The start time or end time for an hours of operation override.</p>
    # @!attribute hours
    #   <p>The hours.</p>
    #   @return [Integer]
    # @!attribute minutes
    #   <p>The minutes.</p>
    #   @return [Integer]
    class OverrideTimeSlice < Struct.new(
      :hours,
      :minutes,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:hours] = nil unless options.key?(:hours)
        options[:minutes] = nil unless options.key?(:minutes)
        super
      end
    end

    # <p>The configuration for the allowed video and screen sharing capabilities for participants
    #    present over the call. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/inapp-calling.html">Set up in-app, web, video calling, and screen
    #     sharing capabilities</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    # @!attribute video
    #   <p>The configuration having the video and screen sharing capabilities for participants over the
    #      call.</p>
    #   @return [String]
    # @!attribute screen_share
    #   <p>The screen sharing capability that is enabled for the participant. <code>SEND</code>
    #      indicates the participant can share their screen.</p>
    #   @return [String]
    class ParticipantCapabilities < Struct.new(
      :video,
      :screen_share,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The customer's details.</p>
    # @!attribute display_name
    #   <p>Display name of the participant.</p>
    #   @return [String]
    class ParticipantDetails < Struct.new(
      :display_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details to add for the participant.</p>
    # @!attribute participant_role
    #   <p>The role of the participant being added.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the participant.</p>
    #   @return [String]
    # @!attribute participant_capabilities
    #   <p>The configuration for the allowed video and screen sharing capabilities for participants
    #      present over the call. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/inapp-calling.html">Set up in-app, web, video calling, and screen
    #       sharing capabilities</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #   @return [Types::ParticipantCapabilities]
    class ParticipantDetailsToAdd < Struct.new(
      :participant_role,
      :display_name,
      :participant_capabilities,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a participant's interactions in a contact.</p>
    # @!attribute participant_id
    #   <p>The Participant's ID.</p>
    #   @return [String]
    # @!attribute participant_type
    #   <p>Information about the conversation participant. Following are the participant types: [Agent,
    #      Customer, Supervisor].</p>
    #   @return [String]
    # @!attribute conversation_abandon
    #   <p>A boolean flag indicating whether the chat conversation was abandoned by a
    #      Participant.</p>
    #   @return [Boolean]
    # @!attribute messages_sent
    #   <p>Number of chat messages sent by Participant.</p>
    #   @return [Integer]
    # @!attribute num_responses
    #   <p>Number of chat messages sent by Participant.</p>
    #   @return [Integer]
    # @!attribute message_length_in_chars
    #   <p>Number of chat characters sent by Participant.</p>
    #   @return [Integer]
    # @!attribute total_response_time_in_millis
    #   <p>Total chat response time by Participant.</p>
    #   @return [Integer]
    # @!attribute max_response_time_in_millis
    #   <p>Maximum chat response time by Participant.</p>
    #   @return [Integer]
    # @!attribute last_message_timestamp
    #   <p>Timestamp of last chat message by Participant.</p>
    #   @return [Time]
    class ParticipantMetrics < Struct.new(
      :participant_id,
      :participant_type,
      :conversation_abandon,
      :messages_sent,
      :num_responses,
      :message_length_in_chars,
      :total_response_time_in_millis,
      :max_response_time_in_millis,
      :last_message_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information for the timer. After the timer configuration is set, it persists
    #    for the duration of the chat. It persists across new contacts in the chain, for example, transfer
    #    contacts.</p>
    #          <p>For more information about how chat timeouts work, see 
    #    <a href="https://docs.aws.amazon.com/connect/latest/adminguide/setup-chat-timeouts.html">Set up chat timeouts for human participants</a>. </p>
    # @!attribute participant_role
    #   <p>The role of the participant in the chat conversation.</p>
    #   @return [String]
    # @!attribute timer_type
    #   <p>The type of timer. <code>IDLE</code> indicates the timer applies for considering a human
    #      chat participant as idle. <code>DISCONNECT_NONCUSTOMER</code> indicates the timer applies to
    #      automatically disconnecting a chat participant due to idleness.</p>
    #   @return [String]
    # @!attribute timer_value
    #   <p>The value of the timer. Either the timer action (Unset to delete the timer), or the duration
    #      of the timer in minutes. Only one value can be set.</p>
    #   @return [Types::ParticipantTimerValue]
    class ParticipantTimerConfiguration < Struct.new(
      :participant_role,
      :timer_type,
      :timer_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The value of the timer. Either the timer action (<code>Unset</code> to delete the timer), or
    #    the duration of the timer in minutes. Only one value can be set.</p>
    #          <p>For more information about how chat timeouts work, see 
    #    <a href="https://docs.aws.amazon.com/connect/latest/adminguide/setup-chat-timeouts.html">Set up chat timeouts for human participants</a>. </p>
    # @!attribute participant_timer_action
    #   <p>The timer action. Currently only one value is allowed: <code>Unset</code>. It deletes a
    #      timer.</p>
    #   @return [String]
    # @!attribute participant_timer_duration_in_minutes
    #   <p>The duration of a timer, in minutes. </p>
    #   @return [Integer]
    class ParticipantTimerValue < Struct.new(
      :participant_timer_action,
      :participant_timer_duration_in_minutes,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class ParticipantTimerAction < ParticipantTimerValue; end
      class ParticipantTimerDurationInMinutes < ParticipantTimerValue; end
      class Unknown < ParticipantTimerValue; end
    end

    # <p>The credentials used by the participant.</p>
    # @!attribute participant_token
    #   <p>The token used by the chat participant to call <a href="https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html">CreateParticipantConnection</a>. The participant token is valid for the lifetime of a chat
    #      participant. </p>
    #   @return [String]
    # @!attribute expiry
    #   <p>The expiration of the token. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ.
    #      For example, 2019-11-08T02:41:28.172Z.</p>
    #   @return [String]
    class ParticipantTokenCredentials < Struct.new(
      :participant_token,
      :expiry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>The identifier of the contact.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the <code>instanceId</code> in the ARN of
    #      the instance.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow.</p>
    #   @return [String]
    class PauseContactRequest < Struct.new(
      :contact_id,
      :instance_id,
      :contact_flow_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class PauseContactResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Enable persistent chats. For more information about enabling persistent chat, and for
    #    example use cases and how to configure for them, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html">Enable persistent chat</a>.</p>
    # @!attribute rehydration_type
    #   <p>The contactId that is used for rehydration depends on the rehydration type. RehydrationType
    #      is required for persistent chat. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENTIRE_PAST_SESSION</code>: Rehydrates a chat from the most recently terminated past
    #        chat contact of the specified past ended chat session. To use this type, provide the
    #         <code>initialContactId</code> of the past ended chat session in the
    #         <code>sourceContactId</code> field. In this type, Amazon Connect determines the most
    #        recent chat contact on the specified chat session that has ended, and uses it to start a
    #        persistent chat. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FROM_SEGMENT</code>: Rehydrates a chat from the past chat contact that is specified
    #        in the <code>sourceContactId</code> field. </p>
    #               </li>
    #            </ul>
    #            <p>The actual contactId used for rehydration is provided in the response of this API. </p>
    #   @return [String]
    # @!attribute source_contact_id
    #   <p>The contactId from which a persistent chat session must be started.</p>
    #   @return [String]
    class PersistentChat < Struct.new(
      :rehydration_type,
      :source_contact_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a phone number for a quick connect.</p>
    # @!attribute phone_number
    #   <p>The phone number in E.164 format.</p>
    #   @return [String]
    class PhoneNumberQuickConnectConfig < Struct.new(
      :phone_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the phone number.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CLAIMED</code> means the previous <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_ClaimPhoneNumber.html">ClaimPhoneNumber</a> or <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdatePhoneNumber.html">UpdatePhoneNumber</a> operation succeeded.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>IN_PROGRESS</code> means a <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_ClaimPhoneNumber.html">ClaimPhoneNumber</a>, <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdatePhoneNumber.html">UpdatePhoneNumber</a>, or <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdatePhoneNumberMetadata.html">UpdatePhoneNumberMetadata</a> operation is still in progress and has not yet completed.
    #      You can call <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html">DescribePhoneNumber</a> at
    #      a later time to verify if the previous operation has completed.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>FAILED</code> indicates that the previous <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_ClaimPhoneNumber.html">ClaimPhoneNumber</a> or <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdatePhoneNumber.html">UpdatePhoneNumber</a> operation has failed. It will include a message indicating the
    #      failure reason. A common reason for a failure may be that the <code>TargetArn</code> value you
    #      are claiming or updating a phone number to has reached its limit of total claimed numbers. If
    #      you received a <code>FAILED</code> status from a <code>ClaimPhoneNumber</code> API call, you
    #      have one day to retry claiming the phone number before the number is released back to the
    #      inventory for other customers to claim.</p>
    #             </li>
    #          </ul>
    # @!attribute status
    #   <p>The status.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The status message.</p>
    #   @return [String]
    class PhoneNumberStatus < Struct.new(
      :status,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a phone number for a contact center.</p>
    # @!attribute id
    #   <p>The identifier of the phone number.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the phone number.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number.</p>
    #   @return [String]
    # @!attribute phone_number_type
    #   <p>The type of phone number.</p>
    #   @return [String]
    # @!attribute phone_number_country_code
    #   <p>The ISO country code.</p>
    #   @return [String]
    class PhoneNumberSummary < Struct.new(
      :id,
      :arn,
      :phone_number,
      :phone_number_type,
      :phone_number_country_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a predefined attribute.</p>
    # @!attribute name
    #   <p>The name of the predefined attribute.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values of the predefined attribute.</p>
    #   @return [Types::PredefinedAttributeValues]
    # @!attribute last_modified_time
    #   <p>Last modified time.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>Last modified region.</p>
    #   @return [String]
    class PredefinedAttribute < Struct.new(
      :name,
      :values,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The search criteria to be used to return predefined attributes.</p>
    # @!attribute or_conditions
    #   <p>A list of conditions which would be applied together with an <code>OR</code>
    #      condition.</p>
    #   @return [Array<Types::PredefinedAttributeSearchCriteria>]
    # @!attribute and_conditions
    #   <p>A list of conditions which would be applied together with an <code>AND</code>
    #      condition.</p>
    #   @return [Array<Types::PredefinedAttributeSearchCriteria>]
    # @!attribute string_condition
    #   <p>A leaf node condition which can be used to specify a string condition.</p>
    #   @return [Types::StringCondition]
    class PredefinedAttributeSearchCriteria < Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of a predefined attribute.</p>
    # @!attribute name
    #   <p>The name of the predefined attribute.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>Last modified time.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>Last modified region.</p>
    #   @return [String]
    class PredefinedAttributeSummary < Struct.new(
      :name,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about values of a predefined attribute.</p>
    # @!attribute string_list
    #   <p>Predefined attribute values of type string list.</p>
    #   @return [Array<String>]
    class PredefinedAttributeValues < Struct.new(
      :string_list,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class StringList < PredefinedAttributeValues; end
      class Unknown < PredefinedAttributeValues; end
    end

    # <p>Information about a problem detail.</p>
    # @!attribute message
    #   <p>The problem detail's message.</p>
    #   @return [String]
    class ProblemDetail < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a prompt.</p>
    # @!attribute prompt_arn
    #   <p>The Amazon Resource Name (ARN) of the prompt.</p>
    #   @return [String]
    # @!attribute prompt_id
    #   <p>A unique identifier for the prompt.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the prompt.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the prompt.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    class Prompt < Struct.new(
      :prompt_arn,
      :prompt_id,
      :name,
      :description,
      :tags,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The search criteria to be used to return prompts.</p>
    # @!attribute or_conditions
    #   <p>A list of conditions which would be applied together with an OR condition.</p>
    #   @return [Array<Types::PromptSearchCriteria>]
    # @!attribute and_conditions
    #   <p>A list of conditions which would be applied together with an AND condition.</p>
    #   @return [Array<Types::PromptSearchCriteria>]
    # @!attribute string_condition
    #   <p>A leaf node condition which can be used to specify a string condition.</p>
    #            <note>
    #               <p>The currently supported values for <code>FieldName</code> are <code>name</code>,
    #        <code>description</code>, and <code>resourceID</code>.</p>
    #            </note>
    #   @return [Types::StringCondition]
    class PromptSearchCriteria < Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters to be applied to search results.</p>
    # @!attribute tag_filter
    #   <p>An object that can be used to specify Tag conditions inside the <code>SearchFilter</code>.
    #      This accepts an <code>OR</code> of <code>AND</code> (List of List) input where: </p>
    #            <ul>
    #               <li>
    #                  <p>Top level list specifies conditions that need to be applied with <code>OR</code>
    #        operator</p>
    #               </li>
    #               <li>
    #                  <p>Inner list specifies conditions that need to be applied with <code>AND</code>
    #        operator.</p>
    #               </li>
    #            </ul>
    #   @return [Types::ControlPlaneTagFilter]
    class PromptSearchFilter < Struct.new(
      :tag_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the prompt.</p>
    # @!attribute id
    #   <p>The identifier of the prompt.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the prompt.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the prompt.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    class PromptSummary < Struct.new(
      :id,
      :arn,
      :name,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The property is not valid.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute property_list
    #   @return [Array<Types::PropertyValidationExceptionProperty>]
    class PropertyValidationException < Struct.new(
      :message,
      :property_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about why a property is not valid.</p>
    # @!attribute property_path
    #   <p>The full property path.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>Why the property is not valid.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message describing why the property is not valid.</p>
    #   @return [String]
    class PropertyValidationExceptionProperty < Struct.new(
      :property_path,
      :reason,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_id
    #   <p>The identifier of the user.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute agent_status_id
    #   <p>The identifier of the agent status.</p>
    #   @return [String]
    class PutUserStatusRequest < Struct.new(
      :user_id,
      :instance_id,
      :agent_status_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class PutUserStatusResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the quality of the participant's media connection.</p>
    # @!attribute agent
    #   <p>Information about the quality of Agent media connection.</p>
    #   @return [Types::AgentQualityMetrics]
    # @!attribute customer
    #   <p>Information about the quality of Customer media connection.</p>
    #   @return [Types::CustomerQualityMetrics]
    class QualityMetrics < Struct.new(
      :agent,
      :customer,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a queue.</p>
    # @!attribute name
    #   <p>The name of the queue.</p>
    #   @return [String]
    # @!attribute queue_arn
    #   <p>The Amazon Resource Name (ARN) for the queue.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the queue.</p>
    #   @return [String]
    # @!attribute outbound_caller_config
    #   <p>The outbound caller ID name, number, and outbound whisper flow.</p>
    #   @return [Types::OutboundCallerConfig]
    # @!attribute outbound_email_config
    #   <p>The outbound email address ID for a specified queue.</p>
    #   @return [Types::OutboundEmailConfig]
    # @!attribute hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #   @return [String]
    # @!attribute max_contacts
    #   <p>The maximum number of contacts that can be in the queue before it is considered full.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the queue.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    class Queue < Struct.new(
      :name,
      :queue_arn,
      :queue_id,
      :description,
      :outbound_caller_config,
      :outbound_email_config,
      :hours_of_operation_id,
      :max_contacts,
      :status,
      :tags,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_contacts] = nil unless options.key?(:max_contacts)
        super
      end
    end

    # <p>If this contact was queued, this contains information about the queue. </p>
    # @!attribute id
    #   <p>The unique identifier for the queue.</p>
    #   @return [String]
    # @!attribute enqueue_timestamp
    #   <p>The timestamp when the contact was added to the queue.</p>
    #   @return [Time]
    class QueueInfo < Struct.new(
      :id,
      :enqueue_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a queue.</p>
    # @!attribute id
    #   <p>The identifier of the queue.</p>
    #   @return [String]
    class QueueInfoInput < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a queue for a quick connect. The flow must be of type Transfer to
    #    Queue.</p>
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow.</p>
    #   @return [String]
    class QueueQuickConnectConfig < Struct.new(
      :queue_id,
      :contact_flow_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a queue resource for which metrics are returned.</p>
    # @!attribute id
    #   <p>The identifier of the queue.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the queue.</p>
    #   @return [String]
    class QueueReference < Struct.new(
      :id,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The search criteria to be used to return queues.</p>
    #          <note>
    #             <p>The <code>name</code> and <code>description</code> fields support "contains" queries with
    #     a minimum of 2 characters and a maximum of 25 characters. Any queries with character lengths
    #     outside of this range will throw invalid results. </p>
    #          </note>
    # @!attribute or_conditions
    #   <p>A list of conditions which would be applied together with an OR condition.</p>
    #   @return [Array<Types::QueueSearchCriteria>]
    # @!attribute and_conditions
    #   <p>A list of conditions which would be applied together with an AND condition.</p>
    #   @return [Array<Types::QueueSearchCriteria>]
    # @!attribute string_condition
    #   <p>A leaf node condition which can be used to specify a string condition.</p>
    #            <note>
    #               <p>The currently supported values for <code>FieldName</code> are <code>name</code>,
    #        <code>description</code>, and <code>resourceID</code>.</p>
    #            </note>
    #   @return [Types::StringCondition]
    # @!attribute queue_type_condition
    #   <p>The type of queue.</p>
    #   @return [String]
    class QueueSearchCriteria < Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition,
      :queue_type_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters to be applied to search results.</p>
    # @!attribute tag_filter
    #   <p>An object that can be used to specify Tag conditions inside the <code>SearchFilter</code>.
    #      This accepts an <code>OR</code> of <code>AND</code> (List of List) input where: </p>
    #            <ul>
    #               <li>
    #                  <p>Top level list specifies conditions that need to be applied with <code>OR</code>
    #        operator</p>
    #               </li>
    #               <li>
    #                  <p>Inner list specifies conditions that need to be applied with <code>AND</code>
    #        operator.</p>
    #               </li>
    #            </ul>
    #   @return [Types::ControlPlaneTagFilter]
    class QueueSearchFilter < Struct.new(
      :tag_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a queue.</p>
    # @!attribute id
    #   <p>The identifier of the queue.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the queue.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the queue.</p>
    #   @return [String]
    # @!attribute queue_type
    #   <p>The type of queue.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    class QueueSummary < Struct.new(
      :id,
      :arn,
      :name,
      :queue_type,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a quick connect.</p>
    # @!attribute quick_connect_arn
    #   <p>The Amazon Resource Name (ARN) of the quick connect.</p>
    #   @return [String]
    # @!attribute quick_connect_id
    #   <p>The identifier for the quick connect.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the quick connect.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description.</p>
    #   @return [String]
    # @!attribute quick_connect_config
    #   <p>Contains information about the quick connect.</p>
    #   @return [Types::QuickConnectConfig]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    class QuickConnect < Struct.new(
      :quick_connect_arn,
      :quick_connect_id,
      :name,
      :description,
      :quick_connect_config,
      :tags,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration settings for a quick connect.</p>
    # @!attribute quick_connect_type
    #   <p>The type of quick connect. In the Amazon Connect admin website, when you create a quick connect, you are
    #      prompted to assign one of the following types: Agent (USER), External (PHONE_NUMBER), or Queue (QUEUE). </p>
    #   @return [String]
    # @!attribute user_config
    #   <p>The user configuration. This is required only if QuickConnectType is USER.</p>
    #   @return [Types::UserQuickConnectConfig]
    # @!attribute queue_config
    #   <p>The queue configuration. This is required only if QuickConnectType is QUEUE.</p>
    #   @return [Types::QueueQuickConnectConfig]
    # @!attribute phone_config
    #   <p>The phone configuration. This is required only if QuickConnectType is PHONE_NUMBER.</p>
    #   @return [Types::PhoneNumberQuickConnectConfig]
    class QuickConnectConfig < Struct.new(
      :quick_connect_type,
      :user_config,
      :queue_config,
      :phone_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The search criteria to be used to return quick connects.</p>
    # @!attribute or_conditions
    #   <p>A list of conditions which would be applied together with an OR condition.</p>
    #   @return [Array<Types::QuickConnectSearchCriteria>]
    # @!attribute and_conditions
    #   <p>A list of conditions which would be applied together with an AND condition.</p>
    #   @return [Array<Types::QuickConnectSearchCriteria>]
    # @!attribute string_condition
    #   <p>A leaf node condition which can be used to specify a string condition.</p>
    #            <note>
    #               <p>The currently supported values for <code>FieldName</code> are <code>name</code>,
    #        <code>description</code>, and <code>resourceID</code>.</p>
    #            </note>
    #   @return [Types::StringCondition]
    class QuickConnectSearchCriteria < Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters to be applied to search results.</p>
    # @!attribute tag_filter
    #   <p>An object that can be used to specify Tag conditions inside the <code>SearchFilter</code>.
    #      This accepts an <code>OR</code> of <code>AND</code> (List of List) input where: </p>
    #            <ul>
    #               <li>
    #                  <p>Top level list specifies conditions that need to be applied with <code>OR</code>
    #        operator</p>
    #               </li>
    #               <li>
    #                  <p>Inner list specifies conditions that need to be applied with <code>AND</code>
    #        operator.</p>
    #               </li>
    #            </ul>
    #   @return [Types::ControlPlaneTagFilter]
    class QuickConnectSearchFilter < Struct.new(
      :tag_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a quick connect.</p>
    # @!attribute id
    #   <p>The identifier for the quick connect.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the quick connect.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the quick connect.</p>
    #   @return [String]
    # @!attribute quick_connect_type
    #   <p>The type of quick connect. In the Amazon Connect admin website, when you create a quick connect, you are
    #      prompted to assign one of the following types: Agent (USER), External (PHONE_NUMBER), or Queue (QUEUE).</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    class QuickConnectSummary < Struct.new(
      :id,
      :arn,
      :name,
      :quick_connect_type,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An Object to define the minimum and maximum proficiency levels.</p>
    # @!attribute min_proficiency_level
    #   <p>The minimum proficiency level of the range.</p>
    #   @return [Float]
    # @!attribute max_proficiency_level
    #   <p>The maximum proficiency level of the range.</p>
    #   @return [Float]
    class Range < Struct.new(
      :min_proficiency_level,
      :max_proficiency_level,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates a field that is read-only to an agent.</p>
    # @!attribute id
    #   <p>Identifier of the read-only field.</p>
    #   @return [Types::TaskTemplateFieldIdentifier]
    class ReadOnlyFieldInfo < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Object that describes attached file. </p>
    # @!attribute attachment_name
    #   <p>A case-sensitive name of the attachment being uploaded. Can be redacted.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>Describes the MIME file type of the attachment. For a list of supported file types, see
    #       <a href="https://docs.aws.amazon.com/connect/latest/adminguide/feature-limits.html">Feature
    #       specifications</a> in the <i>Amazon Connect Administrator
    #      Guide</i>.</p>
    #   @return [String]
    # @!attribute attachment_id
    #   <p>A unique identifier for the attachment.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the attachment.</p>
    #   @return [String]
    class RealTimeContactAnalysisAttachment < Struct.new(
      :attachment_name,
      :content_type,
      :attachment_id,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the category rule that was matched.</p>
    # @!attribute points_of_interest
    #   <p>List of PointOfInterest - objects describing a single match of a rule.</p>
    #   @return [Array<Types::RealTimeContactAnalysisPointOfInterest>]
    class RealTimeContactAnalysisCategoryDetails < Struct.new(
      :points_of_interest,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Begin and end offsets for a part of text.</p>
    # @!attribute begin_offset_char
    #   <p>The beginning of the character interval.</p>
    #   @return [Integer]
    # @!attribute end_offset_char
    #   <p>The end of the character interval.</p>
    #   @return [Integer]
    class RealTimeContactAnalysisCharacterInterval < Struct.new(
      :begin_offset_char,
      :end_offset_char,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:begin_offset_char] = 0 unless options.key?(:begin_offset_char)
        options[:end_offset_char] = 0 unless options.key?(:end_offset_char)
        super
      end
    end

    # <p>Potential issues that are detected based on an artificial intelligence analysis of each turn
    #    in the conversation.</p>
    # @!attribute transcript_items
    #   <p>List of the transcript items (segments) that are associated with a given issue.</p>
    #   @return [Array<Types::RealTimeContactAnalysisTranscriptItemWithContent>]
    class RealTimeContactAnalysisIssueDetected < Struct.new(
      :transcript_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The section of the contact transcript segment that category rule was detected.</p>
    # @!attribute transcript_items
    #   <p>List of the transcript items (segments) that are associated with a given point of interest.
    #     </p>
    #   @return [Array<Types::RealTimeContactAnalysisTranscriptItemWithCharacterOffsets>]
    class RealTimeContactAnalysisPointOfInterest < Struct.new(
      :transcript_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Segment containing list of attachments.</p>
    # @!attribute id
    #   <p>The identifier of the segment.</p>
    #   @return [String]
    # @!attribute participant_id
    #   <p>The identifier of the participant.</p>
    #   @return [String]
    # @!attribute participant_role
    #   <p>The role of the participant. For example, is it a customer, agent, or system.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the participant. Can be redacted. </p>
    #   @return [String]
    # @!attribute attachments
    #   <p>List of objects describing an individual attachment.</p>
    #   @return [Array<Types::RealTimeContactAnalysisAttachment>]
    # @!attribute time
    #   <p>Field describing the time of the event. It can have different representations of time.</p>
    #   @return [Types::RealTimeContactAnalysisTimeData]
    class RealTimeContactAnalysisSegmentAttachments < Struct.new(
      :id,
      :participant_id,
      :participant_role,
      :display_name,
      :attachments,
      :time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The matched category rules.</p>
    # @!attribute matched_details
    #   <p>Map between the name of the matched rule and RealTimeContactAnalysisCategoryDetails.</p>
    #   @return [Hash<String, Types::RealTimeContactAnalysisCategoryDetails>]
    class RealTimeContactAnalysisSegmentCategories < Struct.new(
      :matched_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Segment type describing a contact event.</p>
    # @!attribute id
    #   <p>The identifier of the contact event.</p>
    #   @return [String]
    # @!attribute participant_id
    #   <p>The identifier of the participant.</p>
    #   @return [String]
    # @!attribute participant_role
    #   <p>The role of the participant. For example, is it a customer, agent, or system.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the participant. Can be redacted.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>Type of the event. For example,
    #       <code>application/vnd.amazonaws.connect.event.participant.left</code>.</p>
    #   @return [String]
    # @!attribute time
    #   <p>Field describing the time of the event. It can have different representations of time.</p>
    #   @return [Types::RealTimeContactAnalysisTimeData]
    class RealTimeContactAnalysisSegmentEvent < Struct.new(
      :id,
      :participant_id,
      :participant_role,
      :display_name,
      :event_type,
      :time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Segment type containing a list of detected issues.</p>
    # @!attribute issues_detected
    #   <p>List of the issues detected.</p>
    #   @return [Array<Types::RealTimeContactAnalysisIssueDetected>]
    class RealTimeContactAnalysisSegmentIssues < Struct.new(
      :issues_detected,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the post-contact summary for a real-time contact segment.</p>
    # @!attribute content
    #   <p>The content of the summary.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Whether the summary was successfully COMPLETED or FAILED to be generated.</p>
    #   @return [String]
    # @!attribute failure_code
    #   <p>If the summary failed to be generated, one of the following failure codes occurs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>QUOTA_EXCEEDED</code>: The number of concurrent analytics jobs reached your service
    #        quota.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSUFFICIENT_CONVERSATION_CONTENT</code>: The conversation needs to have at least
    #        one turn from both the participants in order to generate the summary.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED_SAFETY_GUIDELINES</code>: The generated summary cannot be provided because it
    #        failed to meet system safety guidelines.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INVALID_ANALYSIS_CONFIGURATION</code>: This code occurs when, for example, you're
    #        using a <a href="https://docs.aws.amazon.com/connect/latest/adminguide/supported-languages.html#supported-languages-contact-lens">language</a> that isn't supported by generative AI-powered post-contact summaries.
    #       </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INTERNAL_ERROR</code>: Internal system error.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class RealTimeContactAnalysisSegmentPostContactSummary < Struct.new(
      :content,
      :status,
      :failure_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The analyzed transcript segment.</p>
    # @!attribute id
    #   <p>The identifier of the transcript.</p>
    #   @return [String]
    # @!attribute participant_id
    #   <p>The identifier of the participant.</p>
    #   @return [String]
    # @!attribute participant_role
    #   <p>The role of the participant. For example, is it a customer, agent, or system.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the participant.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the transcript. Can be redacted.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The type of content of the item. For example, <code>text/plain</code>.</p>
    #   @return [String]
    # @!attribute time
    #   <p>Field describing the time of the event. It can have different representations of time.</p>
    #   @return [Types::RealTimeContactAnalysisTimeData]
    # @!attribute redaction
    #   <p>Object describing redaction that was applied to the transcript. If transcript has the field
    #      it means part of the transcript was redacted.</p>
    #   @return [Types::RealTimeContactAnalysisTranscriptItemRedaction]
    # @!attribute sentiment
    #   <p>The sentiment detected for this piece of transcript.</p>
    #   @return [String]
    class RealTimeContactAnalysisSegmentTranscript < Struct.new(
      :id,
      :participant_id,
      :participant_role,
      :display_name,
      :content,
      :content_type,
      :time,
      :redaction,
      :sentiment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Object describing time with which the segment is associated. It can have different
    #    representations of time. Currently supported: absoluteTime</p>
    # @!attribute absolute_time
    #   <p>Time represented in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
    #      2019-11-08T02:41:28.172Z.</p>
    #   @return [Time]
    class RealTimeContactAnalysisTimeData < Struct.new(
      :absolute_time,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class AbsoluteTime < RealTimeContactAnalysisTimeData; end
      class Unknown < RealTimeContactAnalysisTimeData; end
    end

    # <p>Object describing redaction applied to the segment.</p>
    # @!attribute character_offsets
    #   <p>List of character intervals each describing a part of the text that was redacted. For
    #       <code>OutputType.Raw</code>, part of the original text that contains data that can be redacted.
    #      For <code> OutputType.Redacted</code>, part of the string with redaction tag.</p>
    #   @return [Array<Types::RealTimeContactAnalysisCharacterInterval>]
    class RealTimeContactAnalysisTranscriptItemRedaction < Struct.new(
      :character_offsets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Transcript representation containing Id and list of character intervals that are associated
    #    with analysis data. For example, this object within a
    #     <code>RealTimeContactAnalysisPointOfInterest</code> in <code>Category.MatchedDetails</code>
    #    would have character interval describing part of the text that matched category.</p>
    # @!attribute id
    #   <p>Transcript identifier. Matches the identifier from one of the TranscriptSegments.</p>
    #   @return [String]
    # @!attribute character_offsets
    #   <p>List of character intervals within transcript content/text.</p>
    #   @return [Types::RealTimeContactAnalysisCharacterInterval]
    class RealTimeContactAnalysisTranscriptItemWithCharacterOffsets < Struct.new(
      :id,
      :character_offsets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Transcript representation containing Id, Content and list of character intervals that are
    #    associated with analysis data. For example, this object within an issue detected would describe
    #    both content that contains identified issue and intervals where that content is taken
    #    from.</p>
    # @!attribute content
    #   <p>Part of the transcript content that contains identified issue. Can be redacted</p>
    #   @return [String]
    # @!attribute id
    #   <p>Transcript identifier. Matches the identifier from one of the TranscriptSegments.</p>
    #   @return [String]
    # @!attribute character_offsets
    #   <p>Begin and end offsets for a part of text.</p>
    #   @return [Types::RealTimeContactAnalysisCharacterInterval]
    class RealTimeContactAnalysisTranscriptItemWithContent < Struct.new(
      :content,
      :id,
      :character_offsets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An analyzed segment for a real-time analysis session.</p>
    # @!attribute transcript
    #   <p>The analyzed transcript segment.</p>
    #   @return [Types::RealTimeContactAnalysisSegmentTranscript]
    # @!attribute categories
    #   <p>The matched category rules.</p>
    #   @return [Types::RealTimeContactAnalysisSegmentCategories]
    # @!attribute issues
    #   <p>Segment type containing a list of detected issues.</p>
    #   @return [Types::RealTimeContactAnalysisSegmentIssues]
    # @!attribute event
    #   <p>Segment type describing a contact event.</p>
    #   @return [Types::RealTimeContactAnalysisSegmentEvent]
    # @!attribute attachments
    #   <p>The analyzed attachments.</p>
    #   @return [Types::RealTimeContactAnalysisSegmentAttachments]
    # @!attribute post_contact_summary
    #   <p>Information about the post-contact summary.</p>
    #   @return [Types::RealTimeContactAnalysisSegmentPostContactSummary]
    class RealtimeContactAnalysisSegment < Struct.new(
      :transcript,
      :categories,
      :issues,
      :event,
      :attachments,
      :post_contact_summary,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Transcript < RealtimeContactAnalysisSegment; end
      class Categories < RealtimeContactAnalysisSegment; end
      class Issues < RealtimeContactAnalysisSegment; end
      class Event < RealtimeContactAnalysisSegment; end
      class Attachments < RealtimeContactAnalysisSegment; end
      class PostContactSummary < RealtimeContactAnalysisSegment; end
      class Unknown < RealtimeContactAnalysisSegment; end
    end

    # <p>Information about a voice recording, chat transcript, or screen recording.</p>
    # @!attribute storage_type
    #   <p>Where the recording/transcript is stored.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location, in Amazon S3, for the recording/transcript.</p>
    #   @return [String]
    # @!attribute media_stream_type
    #   <p>Information about the media stream used during the conversation.</p>
    #   @return [String]
    # @!attribute participant_type
    #   <p>Information about the conversation participant, whether they are an agent or contact. The
    #      participant types are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>All</p>
    #               </li>
    #               <li>
    #                  <p>Manager</p>
    #               </li>
    #               <li>
    #                  <p>Agent</p>
    #               </li>
    #               <li>
    #                  <p>Customer</p>
    #               </li>
    #               <li>
    #                  <p>Thirdparty</p>
    #               </li>
    #               <li>
    #                  <p>Supervisor</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute fragment_start_number
    #   <p>The number that identifies the Kinesis Video Streams fragment where the customer audio
    #      stream started.</p>
    #   @return [String]
    # @!attribute fragment_stop_number
    #   <p>The number that identifies the Kinesis Video Streams fragment where the customer audio
    #      stream stopped.</p>
    #   @return [String]
    # @!attribute start_timestamp
    #   <p>When the conversation of the last leg of the recording started in UTC time.</p>
    #   @return [Time]
    # @!attribute stop_timestamp
    #   <p>When the conversation of the last leg of recording stopped in UTC time.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the recording/transcript.</p>
    #   @return [String]
    # @!attribute deletion_reason
    #   <p>If the recording/transcript was deleted, this is the reason entered for the deletion.</p>
    #   @return [String]
    class RecordingInfo < Struct.new(
      :storage_type,
      :location,
      :media_stream_type,
      :participant_type,
      :fragment_start_number,
      :fragment_stop_number,
      :start_timestamp,
      :stop_timestamp,
      :status,
      :deletion_reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Well-formed data on a contact, used by agents to complete a contact request. You can have up
    #    to 4,096 UTF-8 bytes across all references for a contact.</p>
    # @!attribute value
    #   <p>A valid value for the reference. For example, for a URL reference, a formatted URL that is
    #      displayed to an agent in the Contact Control Panel (CCP).</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the reference. <code>DATE</code> must be of type Epoch timestamp.
    #      </p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the attachment reference type.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the reference</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Relevant details why the reference was not successfully created.</p>
    #   @return [String]
    class Reference < Struct.new(
      :value,
      :type,
      :status,
      :arn,
      :status_reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = '' unless options.key?(:value)
        super
      end
    end

    # <p>Contains summary information about a reference. <code>ReferenceSummary</code> contains only
    #    one non null field between the URL and attachment based on the reference type.</p>
    # @!attribute url
    #   <p>Information about the reference when the <code>referenceType</code> is <code>URL</code>.
    #      Otherwise, null.</p>
    #   @return [Types::UrlReference]
    # @!attribute attachment
    #   <p>Information about the reference when the <code>referenceType</code> is
    #       <code>ATTACHMENT</code>. Otherwise, null.</p>
    #   @return [Types::AttachmentReference]
    # @!attribute email_message
    #   <p>Information about the reference when the referenceType is <code>EMAIL_MESSAGE</code>.
    #      Otherwise, null.</p>
    #   @return [Types::EmailMessageReference]
    # @!attribute string
    #   <p>Information about a reference when the <code>referenceType</code> is <code>STRING</code>.
    #      Otherwise, null.</p>
    #   @return [Types::StringReference]
    # @!attribute number
    #   <p>Information about a reference when the <code>referenceType</code> is <code>NUMBER</code>.
    #      Otherwise, null.</p>
    #   @return [Types::NumberReference]
    # @!attribute date
    #   <p>Information about a reference when the <code>referenceType</code> is <code>DATE</code>.
    #      Otherwise, null.</p>
    #   @return [Types::DateReference]
    # @!attribute email
    #   <p>Information about a reference when the <code>referenceType</code> is <code>EMAIL</code>.
    #      Otherwise, null.</p>
    #   @return [Types::EmailReference]
    class ReferenceSummary < Struct.new(
      :url,
      :attachment,
      :email_message,
      :string,
      :number,
      :date,
      :email,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Url < ReferenceSummary; end
      class Attachment < ReferenceSummary; end
      class EmailMessage < ReferenceSummary; end
      class String < ReferenceSummary; end
      class Number < ReferenceSummary; end
      class Date < ReferenceSummary; end
      class Email < ReferenceSummary; end
      class Unknown < ReferenceSummary; end
    end

    # @!attribute phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class ReleasePhoneNumberRequest < Struct.new(
      :phone_number_id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance. You can provide the <code>InstanceId</code>, or the entire ARN.</p>
    #   @return [String]
    # @!attribute replica_region
    #   <p>The Amazon Web Services Region where to replicate the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute replica_alias
    #   <p>The alias for the replicated instance. The <code>ReplicaAlias</code> must be unique.</p>
    #   @return [String]
    class ReplicateInstanceRequest < Struct.new(
      :instance_id,
      :replica_region,
      :client_token,
      :replica_alias,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the replicated instance. You can find the <code>instanceId</code> in the
    #      ARN of the instance. The replicated instance has the same identifier as the instance it was
    #      replicated from.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the replicated instance.</p>
    #   @return [String]
    class ReplicateInstanceResponse < Struct.new(
      :id,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the status of the replication of a source Amazon Connect instance across
    #     Amazon Web Services Regions. Use these details to understand the general status of a given
    #    replication. For information about why a replication process may fail, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/create-replica-connect-instance.html#why-replicateinstance-fails">Why a ReplicateInstance call fails</a> in the <i>Create a replica of your existing
    #      Amazon Connect instance</i> topic in the <i>Amazon Connect Administrator
    #     Guide</i>. </p>
    # @!attribute replication_status_summary_list
    #   <p>A list of replication status summaries. The summaries contain details about the replication
    #      of configuration information for Amazon Connect resources, for each Amazon Web Services
    #      Region.</p>
    #   @return [Array<Types::ReplicationStatusSummary>]
    # @!attribute source_region
    #   <p>The Amazon Web Services Region where the source Amazon Connect instance was created. This
    #      is the Region where the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_ReplicateInstance.html">ReplicateInstance</a> API was
    #      called to start the replication process.</p>
    #   @return [String]
    # @!attribute global_sign_in_endpoint
    #   <p>The URL that is used to sign-in to your Amazon Connect instance according to your
    #      traffic distribution group configuration. For more information about sign-in and traffic
    #      distribution groups, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/setup-traffic-distribution-groups.html">Important things to
    #       know</a> in the <i>Create traffic distribution groups</i> topic in the
    #        <i>Amazon Connect Administrator Guide</i>. </p>
    #   @return [String]
    class ReplicationConfiguration < Struct.new(
      :replication_status_summary_list,
      :source_region,
      :global_sign_in_endpoint,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Status information about the replication process, where you use the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_ReplicateInstance.html">ReplicateInstance</a> API to create a replica of your Amazon Connect instance in
    #    another Amazon Web Services Region. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/setup-connect-global-resiliency.html">Set up Amazon Connect
    #     Global Resiliency</a> in the <i>Amazon Connect Administrator Guide</i>.
    #   </p>
    # @!attribute region
    #   <p>The Amazon Web Services Region. This can be either the source or the replica Region,
    #      depending where it appears in the summary list.</p>
    #   @return [String]
    # @!attribute replication_status
    #   <p>The state of the replication.</p>
    #   @return [String]
    # @!attribute replication_status_reason
    #   <p>A description of the replication status. Use this information to resolve any issues that are
    #      preventing the successful replication of your Amazon Connect instance to another
    #      Region.</p>
    #   @return [String]
    class ReplicationStatusSummary < Struct.new(
      :region,
      :replication_status,
      :replication_status_reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a required field.</p>
    # @!attribute id
    #   <p>The unique identifier for the field.</p>
    #   @return [Types::TaskTemplateFieldIdentifier]
    class RequiredFieldInfo < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A resource already has that name.</p>
    # @!attribute message
    #   @return [String]
    class ResourceConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>That resource is already in use (for example, you're trying to add a record with the same
    #    name as an existing record). If you are trying to delete a resource (for example,
    #    DeleteHoursOfOperation or DeletePredefinedAttribute), remove its reference from related resources
    #    and then try again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier for the resource.</p>
    #   @return [String]
    class ResourceInUseException < Struct.new(
      :message,
      :resource_type,
      :resource_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource was not found.</p>
    # @!attribute message
    #   <p>The message about the resource.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource is not ready.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotReadyException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The search criteria to be used to search tags.</p>
    # @!attribute tag_search_condition
    #   <p>The search criteria to be used to return tags.</p>
    #   @return [Types::TagSearchCondition]
    class ResourceTagsSearchCriteria < Struct.new(
      :tag_search_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact.</p>
    #   @return [String]
    # @!attribute initial_contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    #   @return [String]
    # @!attribute contact_recording_type
    #   <p>The type of recording being operated on.</p>
    #   @return [String]
    class ResumeContactRecordingRequest < Struct.new(
      :instance_id,
      :contact_id,
      :initial_contact_id,
      :contact_recording_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class ResumeContactRecordingResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>The identifier of the contact.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the <code>instanceId</code> in the ARN of
    #      the instance.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow.</p>
    #   @return [String]
    class ResumeContactRequest < Struct.new(
      :contact_id,
      :instance_id,
      :contact_flow_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class ResumeContactResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Latest routing criteria on the contact.</p>
    # @!attribute steps
    #   <p>List of routing steps. When Amazon Connect does not find an available agent meeting the
    #      requirements in a step for a given step duration, the routing criteria will move on to the next
    #      step sequentially until a join is completed with an agent. When all steps are exhausted, the
    #      contact will be offered to any agent in the queue.</p>
    #   @return [Array<Types::Step>]
    # @!attribute activation_timestamp
    #   <p>The timestamp indicating when the routing criteria is set to active. A routing criteria is
    #      activated when contact is transferred to a queue. ActivationTimestamp will be set on routing
    #      criteria for contacts in agent queue even though Routing criteria is never activated for contacts
    #      in agent queue.</p>
    #   @return [Time]
    # @!attribute index
    #   <p>Information about the index of the routing criteria.</p>
    #   @return [Integer]
    class RoutingCriteria < Struct.new(
      :steps,
      :activation_timestamp,
      :index,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object to define the RoutingCriteria.</p>
    # @!attribute steps
    #   <p>When Amazon Connect does not find an available agent meeting the requirements in a step
    #      for  a given step duration, the routing criteria will move on to the next step sequentially until
    #      a  join is completed with an agent. When all steps are exhausted, the contact will be offered to
    #      any agent in the queue.</p>
    #   @return [Array<Types::RoutingCriteriaInputStep>]
    class RoutingCriteriaInput < Struct.new(
      :steps,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Step defines the list of agents to be routed or route based on the agent requirements such
    #    as ProficiencyLevel, Name, or Value.</p>
    # @!attribute expiry
    #   <p>An object to specify the expiration of a routing step.</p>
    #   @return [Types::RoutingCriteriaInputStepExpiry]
    # @!attribute expression
    #   <p>A tagged union to specify expression for a routing step.</p>
    #   @return [Types::Expression]
    class RoutingCriteriaInputStep < Struct.new(
      :expiry,
      :expression,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specify whether this routing criteria step should apply for only a limited amount of time, 
    #    or if it should never expire.</p>
    # @!attribute duration_in_seconds
    #   <p>The number of seconds that the contact will be routed only to agents matching this routing 
    #      step, if expiry was configured for this routing step.</p>
    #   @return [Integer]
    class RoutingCriteriaInputStepExpiry < Struct.new(
      :duration_in_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a routing profile.</p>
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the routing profile.</p>
    #   @return [String]
    # @!attribute routing_profile_arn
    #   <p>The Amazon Resource Name (ARN) of the routing profile.</p>
    #   @return [String]
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the routing profile.</p>
    #   @return [String]
    # @!attribute media_concurrencies
    #   <p>The channels agents can handle in the Contact Control Panel (CCP) for this routing
    #      profile.</p>
    #   @return [Array<Types::MediaConcurrency>]
    # @!attribute default_outbound_queue_id
    #   <p>The identifier of the default outbound queue for this routing profile.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute number_of_associated_queues
    #   <p>The number of associated queues in routing profile.</p>
    #   @return [Integer]
    # @!attribute number_of_associated_users
    #   <p>The number of associated users in routing profile.</p>
    #   @return [Integer]
    # @!attribute agent_availability_timer
    #   <p>Whether agents with this routing profile will have their routing order calculated based on
    #       <i>time since their last inbound contact</i> or <i>longest idle
    #       time</i>. </p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    # @!attribute is_default
    #   <p>Whether this a default routing profile.</p>
    #   @return [Boolean]
    # @!attribute associated_queue_ids
    #   <p>The IDs of the associated queue.</p>
    #   @return [Array<String>]
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
      :is_default,
      :associated_queue_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_default] = false unless options.key?(:is_default)
        super
      end
    end

    # <p>Contains information about the queue and channel for which priority and delay can be
    #    set.</p>
    # @!attribute queue_reference
    #   <p>Contains information about a queue resource.</p>
    #   @return [Types::RoutingProfileQueueReference]
    # @!attribute priority
    #   <p>The order in which contacts are to be handled for the queue. For more information, see
    #       <a href="https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing-profiles-priority.html">Queues: priority and
    #       delay</a>.</p>
    #   @return [Integer]
    # @!attribute delay
    #   <p>The delay, in seconds, a contact should be in the queue before they are routed to an
    #      available agent. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing-profiles-priority.html">Queues: priority and
    #       delay</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #   @return [Integer]
    class RoutingProfileQueueConfig < Struct.new(
      :queue_reference,
      :priority,
      :delay,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:delay] = nil unless options.key?(:delay)
        super
      end
    end

    # <p>Contains summary information about a routing profile queue.</p>
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #   @return [String]
    # @!attribute queue_arn
    #   <p>The Amazon Resource Name (ARN) of the queue.</p>
    #   @return [String]
    # @!attribute queue_name
    #   <p>The name of the queue.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The order in which contacts are to be handled for the queue. For more information, see
    #       <a href="https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing-profiles-priority.html">Queues: priority and
    #       delay</a>.</p>
    #   @return [Integer]
    # @!attribute delay
    #   <p>The delay, in seconds, that a contact should be in the queue before they are routed to an
    #      available agent. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing-profiles-priority.html">Queues: priority and
    #       delay</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #   @return [Integer]
    # @!attribute channel
    #   <p>The channels this queue supports.</p>
    #   @return [String]
    class RoutingProfileQueueConfigSummary < Struct.new(
      :queue_id,
      :queue_arn,
      :queue_name,
      :priority,
      :delay,
      :channel,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:delay] = 0 unless options.key?(:delay)
        super
      end
    end

    # <p>Contains the channel and queue identifier for a routing profile.</p>
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #   @return [String]
    # @!attribute channel
    #   <p>The channels agents can handle in the Contact Control Panel (CCP) for this routing
    #      profile.</p>
    #   @return [String]
    class RoutingProfileQueueReference < Struct.new(
      :queue_id,
      :channel,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the routing profile assigned to the user.</p>
    # @!attribute id
    #   <p>The identifier of the routing profile.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the routing profile.</p>
    #   @return [String]
    class RoutingProfileReference < Struct.new(
      :id,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The search criteria to be used to return routing profiles.</p>
    #          <note>
    #             <p>The <code>name</code> and <code>description</code> fields support "contains" queries with
    #     a minimum of 2 characters and a maximum of 25 characters. Any queries with character lengths
    #     outside of this range will throw invalid results. </p>
    #          </note>
    # @!attribute or_conditions
    #   <p>A list of conditions which would be applied together with an OR condition.</p>
    #   @return [Array<Types::RoutingProfileSearchCriteria>]
    # @!attribute and_conditions
    #   <p>A list of conditions which would be applied together with an AND condition.</p>
    #   @return [Array<Types::RoutingProfileSearchCriteria>]
    # @!attribute string_condition
    #   <p>A leaf node condition which can be used to specify a string condition.</p>
    #            <note>
    #               <p>The currently supported values for <code>FieldName</code> are
    #        <code>associatedQueueIds</code>, <code>name</code>, <code>description</code>, and
    #        <code>resourceID</code>.</p>
    #            </note>
    #   @return [Types::StringCondition]
    class RoutingProfileSearchCriteria < Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters to be applied to search results.</p>
    # @!attribute tag_filter
    #   <p>An object that can be used to specify Tag conditions inside the <code>SearchFilter</code>.
    #      This accepts an <code>OR</code> of <code>AND</code> (List of List) input where: </p>
    #            <ul>
    #               <li>
    #                  <p>Top level list specifies conditions that need to be applied with <code>OR</code>
    #        operator</p>
    #               </li>
    #               <li>
    #                  <p>Inner list specifies conditions that need to be applied with <code>AND</code>
    #        operator.</p>
    #               </li>
    #            </ul>
    #   @return [Types::ControlPlaneTagFilter]
    class RoutingProfileSearchFilter < Struct.new(
      :tag_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a routing profile.</p>
    # @!attribute id
    #   <p>The identifier of the routing profile.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the routing profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the routing profile.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    class RoutingProfileSummary < Struct.new(
      :id,
      :arn,
      :name,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a rule.</p>
    # @!attribute name
    #   <p>The name of the rule.</p>
    #   @return [String]
    # @!attribute rule_id
    #   <p>A unique identifier for the rule.</p>
    #   @return [String]
    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #   @return [String]
    # @!attribute trigger_event_source
    #   <p>The event source to trigger the rule.</p>
    #   @return [Types::RuleTriggerEventSource]
    # @!attribute function
    #   <p>The conditions of the rule.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>A list of actions to be run when the rule is triggered.</p>
    #   @return [Array<Types::RuleAction>]
    # @!attribute publish_status
    #   <p>The publish status of the rule.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp for when the rule was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The timestamp for the when the rule was last updated.</p>
    #   @return [Time]
    # @!attribute last_updated_by
    #   <p>The Amazon Resource Name (ARN) of the user who last updated the rule.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the action to be performed when a rule is triggered.</p>
    # @!attribute action_type
    #   <p>The type of action that creates a rule.</p>
    #   @return [String]
    # @!attribute task_action
    #   <p>Information about the task action. This field is required if <code>TriggerEventSource</code>
    #      is one of the following values: <code>OnZendeskTicketCreate</code> |
    #       <code>OnZendeskTicketStatusUpdate</code> | <code>OnSalesforceCaseCreate</code>
    #            </p>
    #   @return [Types::TaskActionDefinition]
    # @!attribute event_bridge_action
    #   <p>Information about the EventBridge action.</p>
    #            <p>Supported only for <code>TriggerEventSource</code> values:
    #       <code>OnPostCallAnalysisAvailable</code> | <code>OnRealTimeCallAnalysisAvailable</code> |
    #       <code>OnRealTimeChatAnalysisAvailable</code> | <code>OnPostChatAnalysisAvailable</code> |
    #       <code>OnContactEvaluationSubmit</code> | <code>OnMetricDataUpdate</code>
    #            </p>
    #   @return [Types::EventBridgeActionDefinition]
    # @!attribute assign_contact_category_action
    #   <p>Information about the contact category action.</p>
    #            <p>Supported only for <code>TriggerEventSource</code> values:
    #       <code>OnPostCallAnalysisAvailable</code> | <code>OnRealTimeCallAnalysisAvailable</code> |
    #       <code>OnRealTimeChatAnalysisAvailable</code> | <code>OnPostChatAnalysisAvailable</code> |
    #       <code>OnZendeskTicketCreate</code> | <code>OnZendeskTicketStatusUpdate</code> |
    #       <code>OnSalesforceCaseCreate</code>
    #            </p>
    #   @return [Types::AssignContactCategoryActionDefinition]
    # @!attribute send_notification_action
    #   <p>Information about the send notification action.</p>
    #            <p>Supported only for <code>TriggerEventSource</code> values:
    #       <code>OnPostCallAnalysisAvailable</code> | <code>OnRealTimeCallAnalysisAvailable</code> |
    #       <code>OnRealTimeChatAnalysisAvailable</code> | <code>OnPostChatAnalysisAvailable</code> |
    #       <code>OnContactEvaluationSubmit</code> | <code>OnMetricDataUpdate</code>
    #            </p>
    #   @return [Types::SendNotificationActionDefinition]
    # @!attribute create_case_action
    #   <p>Information about the create case action.</p>
    #            <p>Supported only for <code>TriggerEventSource</code> values:
    #       <code>OnPostCallAnalysisAvailable</code> | <code>OnPostChatAnalysisAvailable</code>.</p>
    #   @return [Types::CreateCaseActionDefinition]
    # @!attribute update_case_action
    #   <p>Information about the update case action.</p>
    #            <p>Supported only for <code>TriggerEventSource</code> values: <code>OnCaseCreate</code> |
    #       <code>OnCaseUpdate</code>.</p>
    #   @return [Types::UpdateCaseActionDefinition]
    # @!attribute assign_sla_action
    #   <p>Information about the assign SLA action.</p>
    #   @return [Types::AssignSlaActionDefinition]
    # @!attribute end_associated_tasks_action
    #   <p>Information about the end associated tasks action.</p>
    #            <p>Supported only for <code>TriggerEventSource</code> values: <code>OnCaseUpdate</code>.</p>
    #   @return [Types::EndAssociatedTasksActionDefinition]
    # @!attribute submit_auto_evaluation_action
    #   <p>Information about the submit automated evaluation action.</p>
    #   @return [Types::SubmitAutoEvaluationActionDefinition]
    class RuleAction < Struct.new(
      :action_type,
      :task_action,
      :event_bridge_action,
      :assign_contact_category_action,
      :send_notification_action,
      :create_case_action,
      :update_case_action,
      :assign_sla_action,
      :end_associated_tasks_action,
      :submit_auto_evaluation_action,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of <code>ActionTypes</code> associated with a rule. </p>
    # @!attribute name
    #   <p>The name of the rule.</p>
    #   @return [String]
    # @!attribute rule_id
    #   <p>A unique identifier for the rule.</p>
    #   @return [String]
    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #   @return [String]
    # @!attribute event_source_name
    #   <p>The name of the event source.</p>
    #   @return [String]
    # @!attribute publish_status
    #   <p>The publish status of the rule.</p>
    #   @return [String]
    # @!attribute action_summaries
    #   <p>A list of ActionTypes associated with a rule. </p>
    #   @return [Array<Types::ActionSummary>]
    # @!attribute created_time
    #   <p>The timestamp for when the rule was created. </p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The timestamp for when the rule was last updated.</p>
    #   @return [Time]
    class RuleSummary < Struct.new(
      :name,
      :rule_id,
      :rule_arn,
      :event_source_name,
      :publish_status,
      :action_summaries,
      :created_time,
      :last_updated_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The name of the event source. This field is required if <code>TriggerEventSource</code> is one of the
    #    following values: <code>OnZendeskTicketCreate</code> | <code>OnZendeskTicketStatusUpdate</code> |
    #     <code>OnSalesforceCaseCreate</code> | <code>OnContactEvaluationSubmit</code> |
    #     <code>OnMetricDataUpdate</code>.</p>
    # @!attribute event_source_name
    #   <p>The name of the event source.</p>
    #   @return [String]
    # @!attribute integration_association_id
    #   <p>The identifier for the integration association.</p>
    #   @return [String]
    class RuleTriggerEventSource < Struct.new(
      :event_source_name,
      :integration_association_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the Amazon Simple Storage Service (Amazon S3) storage type.</p>
    # @!attribute bucket_name
    #   <p>The S3 bucket name.</p>
    #   @return [String]
    # @!attribute bucket_prefix
    #   <p>The S3 bucket prefix.</p>
    #   @return [String]
    # @!attribute encryption_config
    #   <p>The Amazon S3 encryption configuration.</p>
    #   @return [Types::EncryptionConfig]
    class S3Config < Struct.new(
      :bucket_name,
      :bucket_prefix,
      :encryption_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute search_filter
    #   <p>Filters to be applied to search results.</p>
    #   @return [Types::AgentStatusSearchFilter]
    # @!attribute search_criteria
    #   <p>The search criteria to be used to return agent statuses.</p>
    #   @return [Types::AgentStatusSearchCriteria]
    class SearchAgentStatusesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :search_filter,
      :search_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_statuses
    #   <p>The search criteria to be used to return agent statuses.</p>
    #   @return [Array<Types::AgentStatus>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute approximate_total_count
    #   <p>The total number of agent statuses which matched your search query.</p>
    #   @return [Integer]
    class SearchAgentStatusesResponse < Struct.new(
      :agent_statuses,
      :next_token,
      :approximate_total_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) for Amazon Connect instances or traffic distribution groups that phone number inbound traffic is routed through. You must enter <code>InstanceId</code> or <code>TargetArn</code>. </p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance that phone numbers are claimed to. You
    #      can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the
    #       instance ID</a> in the Amazon Resource Name (ARN) of the instance. You must enter <code>InstanceId</code> or <code>TargetArn</code>. </p>
    #   @return [String]
    # @!attribute phone_number_country_code
    #   <p>The ISO country code.</p>
    #   @return [String]
    # @!attribute phone_number_type
    #   <p>The type of phone number.</p>
    #   @return [String]
    # @!attribute phone_number_prefix
    #   <p>The prefix of the phone number. If provided, it must contain <code>+</code> as part of the country code.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class SearchAvailablePhoneNumbersRequest < Struct.new(
      :target_arn,
      :instance_id,
      :phone_number_country_code,
      :phone_number_type,
      :phone_number_prefix,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute available_numbers_list
    #   <p>A list of available phone numbers that you can claim to your Amazon Connect instance or traffic distribution group.</p>
    #   @return [Array<Types::AvailableNumberSummary>]
    class SearchAvailablePhoneNumbersResponse < Struct.new(
      :next_token,
      :available_numbers_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instance ID in the
    #      Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute search_filter
    #   <p>Filters to be applied to search results.</p>
    #   @return [Types::ContactFlowModuleSearchFilter]
    # @!attribute search_criteria
    #   <p>The search criteria to be used to return flow modules.</p>
    #            <note>
    #               <p>The <code>name</code> and <code>description</code> fields support "contains" queries with a
    #       minimum of 2 characters and a maximum of 25 characters. Any queries with character lengths
    #       outside of this range will result in invalid results.</p>
    #            </note>
    #   @return [Types::ContactFlowModuleSearchCriteria]
    class SearchContactFlowModulesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :search_filter,
      :search_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_flow_modules
    #   <p>The search criteria to be used to return flow modules.</p>
    #   @return [Array<Types::ContactFlowModule>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute approximate_total_count
    #   <p>The total number of flows which matched your search query.</p>
    #   @return [Integer]
    class SearchContactFlowModulesResponse < Struct.new(
      :contact_flow_modules,
      :next_token,
      :approximate_total_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instance ID in the
    #      Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute search_filter
    #   <p>Filters to be applied to search results.</p>
    #   @return [Types::ContactFlowSearchFilter]
    # @!attribute search_criteria
    #   <p>The search criteria to be used to return flows.</p>
    #            <note>
    #               <p>The <code>name</code> and <code>description</code> fields support "contains" queries with a
    #       minimum of 2 characters and a maximum of 25 characters. Any queries with character lengths
    #       outside of this range will result in invalid results.</p>
    #            </note>
    #   @return [Types::ContactFlowSearchCriteria]
    class SearchContactFlowsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :search_filter,
      :search_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_flows
    #   <p>Information about the flows.</p>
    #   @return [Array<Types::ContactFlow>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute approximate_total_count
    #   <p>The total number of flows which matched your search query.</p>
    #   @return [Integer]
    class SearchContactFlowsResponse < Struct.new(
      :contact_flows,
      :next_token,
      :approximate_total_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of Amazon Connect instance. You can find the instance ID in the Amazon
    #      Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute time_range
    #   <p>Time range that you want to search results.</p>
    #   @return [Types::SearchContactsTimeRange]
    # @!attribute search_criteria
    #   <p>The search criteria to be used to return contacts.</p>
    #   @return [Types::SearchCriteria]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute sort
    #   <p>Specifies a field to sort by and a sort order.</p>
    #   @return [Types::Sort]
    class SearchContactsRequest < Struct.new(
      :instance_id,
      :time_range,
      :search_criteria,
      :max_results,
      :next_token,
      :sort,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contacts
    #   <p>Information about the contacts.</p>
    #   @return [Array<Types::ContactSearchSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute total_count
    #   <p>The total number of contacts which matched your search query.</p>
    #   @return [Integer]
    class SearchContactsResponse < Struct.new(
      :contacts,
      :next_token,
      :total_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure of time range that you want to search results.</p>
    # @!attribute type
    #   <p>The type of timestamp to search.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time of the time range.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the time range.</p>
    #   @return [Time]
    class SearchContactsTimeRange < Struct.new(
      :type,
      :start_time,
      :end_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure of search criteria to be used to return contacts.</p>
    # @!attribute agent_ids
    #   <p>The identifiers of agents who handled the contacts.</p>
    #   @return [Array<String>]
    # @!attribute agent_hierarchy_groups
    #   <p>The agent hierarchy groups of the agent at the time of handling the contact.</p>
    #   @return [Types::AgentHierarchyGroups]
    # @!attribute channels
    #   <p>The list of channels associated with contacts.</p>
    #   @return [Array<String>]
    # @!attribute contact_analysis
    #   <p>Search criteria based on analysis outputs from Amazon Connect Contact Lens.</p>
    #   @return [Types::ContactAnalysis]
    # @!attribute initiation_methods
    #   <p>The list of initiation methods associated with contacts.</p>
    #   @return [Array<String>]
    # @!attribute queue_ids
    #   <p>The list of queue IDs associated with contacts.</p>
    #   @return [Array<String>]
    # @!attribute searchable_contact_attributes
    #   <p>The search criteria based on user-defined contact attributes that have been configured for
    #      contact search. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/search-custom-attributes.html">Search by custom contact
    #       attributes</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #            <important>
    #               <p>To use <code>SearchableContactAttributes</code> in a search request, the
    #        <code>GetContactAttributes</code> action is required to perform an API request. For more
    #       information, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonconnect.html#amazonconnect-actions-as-permissions">https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonconnect.html#amazonconnect-actions-as-permissions</a>Actions defined by Amazon Connect.</p>
    #            </important>
    #   @return [Types::SearchableContactAttributes]
    # @!attribute searchable_segment_attributes
    #   <p>The search criteria based on searchable segment attributes of a contact.</p>
    #   @return [Types::SearchableSegmentAttributes]
    class SearchCriteria < Struct.new(
      :agent_ids,
      :agent_hierarchy_groups,
      :channels,
      :contact_analysis,
      :initiation_methods,
      :queue_ids,
      :searchable_contact_attributes,
      :searchable_segment_attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute search_criteria
    #   <p>The search criteria to be used to return email addresses.</p>
    #   @return [Types::EmailAddressSearchCriteria]
    # @!attribute search_filter
    #   <p>Filters to be applied to search results.</p>
    #   @return [Types::EmailAddressSearchFilter]
    class SearchEmailAddressesRequest < Struct.new(
      :instance_id,
      :max_results,
      :next_token,
      :search_criteria,
      :search_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute email_addresses
    #   <p>List of email addresses matching SearchFilter and SearchCriteria </p>
    #   @return [Array<Types::EmailAddressMetadata>]
    # @!attribute approximate_total_count
    #   <p>The total number of email addresses which matched your search query.</p>
    #   @return [Integer]
    class SearchEmailAddressesResponse < Struct.new(
      :next_token,
      :email_addresses,
      :approximate_total_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute search_filter
    #   <p>Filters to be applied to search results.</p>
    #   @return [Types::HoursOfOperationSearchFilter]
    # @!attribute search_criteria
    #   <p>The search criteria to be used to return hours of operations overrides.</p>
    #   @return [Types::HoursOfOperationOverrideSearchCriteria]
    class SearchHoursOfOperationOverridesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :search_filter,
      :search_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hours_of_operation_overrides
    #   <p>Information about the hours of operations overrides.</p>
    #   @return [Array<Types::HoursOfOperationOverride>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results. </p>
    #   @return [String]
    # @!attribute approximate_total_count
    #   <p>The total number of hours of operations which matched your search query.</p>
    #   @return [Integer]
    class SearchHoursOfOperationOverridesResponse < Struct.new(
      :hours_of_operation_overrides,
      :next_token,
      :approximate_total_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute search_filter
    #   <p>Filters to be applied to search results.</p>
    #   @return [Types::HoursOfOperationSearchFilter]
    # @!attribute search_criteria
    #   <p>The search criteria to be used to return hours of operations.</p>
    #   @return [Types::HoursOfOperationSearchCriteria]
    class SearchHoursOfOperationsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :search_filter,
      :search_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hours_of_operations
    #   <p>Information about the hours of operations.</p>
    #   @return [Array<Types::HoursOfOperation>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute approximate_total_count
    #   <p>The total number of hours of operations which matched your search query.</p>
    #   @return [Integer]
    class SearchHoursOfOperationsResponse < Struct.new(
      :hours_of_operations,
      :next_token,
      :approximate_total_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instance ID in the Amazon Resource
    #      Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute search_criteria
    #   <p>The search criteria to be used to return predefined attributes.</p>
    #   @return [Types::PredefinedAttributeSearchCriteria]
    class SearchPredefinedAttributesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :search_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute predefined_attributes
    #   <p>Predefined attributes matched by the search criteria.</p>
    #   @return [Array<Types::PredefinedAttribute>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute approximate_total_count
    #   <p>The approximate number of predefined attributes which matched your search query.</p>
    #   @return [Integer]
    class SearchPredefinedAttributesResponse < Struct.new(
      :predefined_attributes,
      :next_token,
      :approximate_total_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute search_filter
    #   <p>Filters to be applied to search results.</p>
    #   @return [Types::PromptSearchFilter]
    # @!attribute search_criteria
    #   <p>The search criteria to be used to return prompts.</p>
    #   @return [Types::PromptSearchCriteria]
    class SearchPromptsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :search_filter,
      :search_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute prompts
    #   <p>Information about the prompts.</p>
    #   @return [Array<Types::Prompt>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute approximate_total_count
    #   <p>The total number of quick connects which matched your search query.</p>
    #   @return [Integer]
    class SearchPromptsResponse < Struct.new(
      :prompts,
      :next_token,
      :approximate_total_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute search_filter
    #   <p>Filters to be applied to search results.</p>
    #   @return [Types::QueueSearchFilter]
    # @!attribute search_criteria
    #   <p>The search criteria to be used to return queues.</p>
    #            <note>
    #               <p>The <code>name</code> and <code>description</code> fields support "contains" queries with
    #       a minimum of 2 characters and a maximum of 25 characters. Any queries with character lengths
    #       outside of this range will throw invalid results. </p>
    #            </note>
    #   @return [Types::QueueSearchCriteria]
    class SearchQueuesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :search_filter,
      :search_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute queues
    #   <p>Information about the queues.</p>
    #   @return [Array<Types::Queue>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute approximate_total_count
    #   <p>The total number of queues which matched your search query.</p>
    #   @return [Integer]
    class SearchQueuesResponse < Struct.new(
      :queues,
      :next_token,
      :approximate_total_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute search_filter
    #   <p>Filters to be applied to search results.</p>
    #   @return [Types::QuickConnectSearchFilter]
    # @!attribute search_criteria
    #   <p>The search criteria to be used to return quick connects.</p>
    #   @return [Types::QuickConnectSearchCriteria]
    class SearchQuickConnectsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :search_filter,
      :search_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute quick_connects
    #   <p>Information about the quick connects.</p>
    #   @return [Array<Types::QuickConnect>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute approximate_total_count
    #   <p>The total number of quick connects which matched your search query.</p>
    #   @return [Integer]
    class SearchQuickConnectsResponse < Struct.new(
      :quick_connects,
      :next_token,
      :approximate_total_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the Amazon
    #      Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute resource_types
    #   <p>The list of resource types to be used to search tags from. If not provided or if any empty
    #      list is provided, this API will search from all supported resource types. Note that lowercase and
    #      - are required.</p>
    #            <p class="title">
    #               <b>Supported resource types</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>agent</p>
    #               </li>
    #               <li>
    #                  <p>agent-state</p>
    #               </li>
    #               <li>
    #                  <p>routing-profile</p>
    #               </li>
    #               <li>
    #                  <p>standard-queue</p>
    #               </li>
    #               <li>
    #                  <p>security-profile</p>
    #               </li>
    #               <li>
    #                  <p>operating-hours</p>
    #               </li>
    #               <li>
    #                  <p>prompt</p>
    #               </li>
    #               <li>
    #                  <p>contact-flow</p>
    #               </li>
    #               <li>
    #                  <p>flow- module</p>
    #               </li>
    #               <li>
    #                  <p>transfer-destination (also known as quick connect)</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute search_criteria
    #   <p>The search criteria to be used to return tags.</p>
    #   @return [Types::ResourceTagsSearchCriteria]
    class SearchResourceTagsRequest < Struct.new(
      :instance_id,
      :resource_types,
      :next_token,
      :max_results,
      :search_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of tags used in the Amazon Connect instance.</p>
    #   @return [Array<Types::TagSet>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class SearchResourceTagsResponse < Struct.new(
      :tags,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute search_filter
    #   <p>Filters to be applied to search results.</p>
    #   @return [Types::RoutingProfileSearchFilter]
    # @!attribute search_criteria
    #   <p>The search criteria to be used to return routing profiles.</p>
    #            <note>
    #               <p>The <code>name</code> and <code>description</code> fields support "contains" queries with
    #       a minimum of 2 characters and a maximum of 25 characters. Any queries with character lengths
    #       outside of this range will throw invalid results. </p>
    #            </note>
    #   @return [Types::RoutingProfileSearchCriteria]
    class SearchRoutingProfilesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :search_filter,
      :search_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute routing_profiles
    #   <p>Information about the routing profiles.</p>
    #   @return [Array<Types::RoutingProfile>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute approximate_total_count
    #   <p>The total number of routing profiles which matched your search query.</p>
    #   @return [Integer]
    class SearchRoutingProfilesResponse < Struct.new(
      :routing_profiles,
      :next_token,
      :approximate_total_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute search_criteria
    #   <p>The search criteria to be used to return security profiles. </p>
    #            <note>
    #               <p>The <code>name</code> field support "contains" queries with a minimum of 2 characters and
    #       maximum of 25 characters. Any queries with character lengths outside of this range will throw
    #       invalid results.</p>
    #            </note>
    #            <note>
    #               <p>The currently supported value for <code>FieldName</code>: <code>name</code>
    #               </p>
    #            </note>
    #   @return [Types::SecurityProfileSearchCriteria]
    # @!attribute search_filter
    #   <p>Filters to be applied to search results.</p>
    #   @return [Types::SecurityProfilesSearchFilter]
    class SearchSecurityProfilesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :search_criteria,
      :search_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profiles
    #   <p>Information about the security profiles.</p>
    #   @return [Array<Types::SecurityProfileSearchSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute approximate_total_count
    #   <p>The total number of security profiles which matched your search query.</p>
    #   @return [Integer]
    class SearchSecurityProfilesResponse < Struct.new(
      :security_profiles,
      :next_token,
      :approximate_total_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute search_filter
    #   <p>Filters to be applied to search results.</p>
    #   @return [Types::UserHierarchyGroupSearchFilter]
    # @!attribute search_criteria
    #   <p>The search criteria to be used to return UserHierarchyGroups.</p>
    #   @return [Types::UserHierarchyGroupSearchCriteria]
    class SearchUserHierarchyGroupsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :search_filter,
      :search_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_hierarchy_groups
    #   <p>Information about the userHierarchyGroups.</p>
    #   @return [Array<Types::HierarchyGroup>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute approximate_total_count
    #   <p>The total number of userHierarchyGroups which matched your search query.</p>
    #   @return [Integer]
    class SearchUserHierarchyGroupsResponse < Struct.new(
      :user_hierarchy_groups,
      :next_token,
      :approximate_total_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute search_filter
    #   <p>Filters to be applied to search results.</p>
    #   @return [Types::UserSearchFilter]
    # @!attribute search_criteria
    #   <p>The search criteria to be used to return users.</p>
    #            <note>
    #               <p>The <code>name</code> and <code>description</code> fields support "contains" queries with
    #       a minimum of 2 characters and a maximum of 25 characters. Any queries with character lengths
    #       outside of this range will throw invalid results.  </p>
    #            </note>
    #   @return [Types::UserSearchCriteria]
    class SearchUsersRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results,
      :search_filter,
      :search_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute users
    #   <p>Information about the users.</p>
    #   @return [Array<Types::UserSearchSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute approximate_total_count
    #   <p>The total number of users who matched your search query.</p>
    #   @return [Integer]
    class SearchUsersResponse < Struct.new(
      :users,
      :next_token,
      :approximate_total_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the custom vocabulary.</p>
    #   @return [String]
    # @!attribute name_starts_with
    #   <p>The starting pattern of the name of the vocabulary.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see 
    #   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html">What is Amazon Transcribe?</a>
    #            </p>
    #   @return [String]
    class SearchVocabulariesRequest < Struct.new(
      :instance_id,
      :max_results,
      :next_token,
      :state,
      :name_starts_with,
      :language_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vocabulary_summary_list
    #   <p>The list of the available custom vocabularies.</p>
    #   @return [Array<Types::VocabularySummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class SearchVocabulariesResponse < Struct.new(
      :vocabulary_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that defines search criteria based on user-defined contact attributes that are
    #    configured for contact search.</p>
    # @!attribute criteria
    #   <p>The list of criteria based on user-defined contact attributes that are configured for
    #      contact search.</p>
    #   @return [Array<Types::SearchableContactAttributesCriteria>]
    # @!attribute match_type
    #   <p>The match type combining search criteria using multiple searchable contact
    #      attributes.</p>
    #   @return [String]
    class SearchableContactAttributes < Struct.new(
      :criteria,
      :match_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The search criteria based on user-defined contact attribute key and values to search
    #    on.</p>
    # @!attribute key
    #   <p>The key containing a searchable user-defined contact attribute.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The list of values to search for within a user-defined contact attribute.</p>
    #   @return [Array<String>]
    class SearchableContactAttributesCriteria < Struct.new(
      :key,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The search criteria based on searchable segment attributes of a contact</p>
    # @!attribute criteria
    #   <p>The list of criteria based on searchable segment attributes.</p>
    #   @return [Array<Types::SearchableSegmentAttributesCriteria>]
    # @!attribute match_type
    #   <p>The match type combining search criteria using multiple searchable segment
    #      attributes.</p>
    #   @return [String]
    class SearchableSegmentAttributes < Struct.new(
      :criteria,
      :match_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The search criteria based on searchable segment attribute key and values to search
    #    on.</p>
    # @!attribute key
    #   <p>The key containing a searchable segment attribute.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The list of values to search for within a searchable segment attribute.</p>
    #   @return [Array<String>]
    class SearchableSegmentAttributesCriteria < Struct.new(
      :key,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information of the security key.</p>
    # @!attribute association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The key of the security key.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When the security key was created.</p>
    #   @return [Time]
    class SecurityKey < Struct.new(
      :association_id,
      :key,
      :creation_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a security profile.</p>
    # @!attribute id
    #   <p>The identifier for the security profile.</p>
    #   @return [String]
    # @!attribute organization_resource_id
    #   <p>The organization resource identifier for the security profile.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the security profile.</p>
    #   @return [String]
    # @!attribute security_profile_name
    #   <p>The name for the security profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the security profile.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute allowed_access_control_tags
    #   <p>The list of tags that a security profile uses to restrict access to resources in Amazon Connect.</p>
    #   @return [Hash<String, String>]
    # @!attribute tag_restricted_resources
    #   <p>The list of resources that a security profile applies tag restrictions to in Amazon Connect.</p>
    #   @return [Array<String>]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    # @!attribute hierarchy_restricted_resources
    #   <p>The list of resources that a security profile applies hierarchy restrictions to in Amazon Connect. Following are acceptable ResourceNames: <code>User</code>.</p>
    #   @return [Array<String>]
    # @!attribute allowed_access_control_hierarchy_group_id
    #   <p>The identifier of the hierarchy group that a security profile uses to restrict access to
    #      resources in Amazon Connect.</p>
    #   @return [String]
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
      :last_modified_region,
      :hierarchy_restricted_resources,
      :allowed_access_control_hierarchy_group_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The search criteria to be used to return security profiles.</p>
    #          <note>
    #             <p>The <code>name</code> field support "contains" queries with a minimum of 2 characters and
    #     maximum of 25 characters. Any queries with character lengths outside of this range will throw
    #     invalid results.</p>
    #          </note>
    # @!attribute or_conditions
    #   <p>A list of conditions which would be applied together with an OR condition.</p>
    #   @return [Array<Types::SecurityProfileSearchCriteria>]
    # @!attribute and_conditions
    #   <p>A list of conditions which would be applied together with an AND condition.</p>
    #   @return [Array<Types::SecurityProfileSearchCriteria>]
    # @!attribute string_condition
    #   <p>A leaf node condition which can be used to specify a string condition.</p>
    #   @return [Types::StringCondition]
    class SecurityProfileSearchCriteria < Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the returned security profiles.</p>
    # @!attribute id
    #   <p>The identifier of the security profile.</p>
    #   @return [String]
    # @!attribute organization_resource_id
    #   <p>The organization resource identifier.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the security profile.</p>
    #   @return [String]
    # @!attribute security_profile_name
    #   <p>The name of the security profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the security profile.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    class SecurityProfileSearchSummary < Struct.new(
      :id,
      :organization_resource_id,
      :arn,
      :security_profile_name,
      :description,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a security profile.</p>
    # @!attribute id
    #   <p>The identifier of the security profile.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the security profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the security profile.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    class SecurityProfileSummary < Struct.new(
      :id,
      :arn,
      :name,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters to be applied to search results.</p>
    # @!attribute tag_filter
    #   <p>An object that can be used to specify Tag conditions inside the <code>SearchFilter</code>.
    #      This accepts an <code>OR</code> of <code>AND</code> (List of List) input where: </p>
    #            <ul>
    #               <li>
    #                  <p>Top level list specifies conditions that need to be applied with <code>OR</code>
    #        operator</p>
    #               </li>
    #               <li>
    #                  <p>Inner list specifies conditions that need to be applied with <code>AND</code>
    #        operator.</p>
    #               </li>
    #            </ul>
    #   @return [Types::ControlPlaneTagFilter]
    class SecurityProfilesSearchFilter < Struct.new(
      :tag_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A value for a segment attribute. This is structured as a map where the key is
    #     <code>valueString</code> and the value is a string.</p>
    # @!attribute value_string
    #   <p>The value of a segment attribute.</p>
    #   @return [String]
    # @!attribute value_map
    #   <p>The value of a segment attribute.</p>
    #   @return [Hash<String, Types::SegmentAttributeValue>]
    # @!attribute value_integer
    #   <p>The value of a segment attribute.</p>
    #   @return [Integer]
    class SegmentAttributeValue < Struct.new(
      :value_string,
      :value_map,
      :value_integer,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_id
    #   <p>External identifier of chat customer participant, used in part to uniquely identify a chat.
    #      For SMS, this is the E164 phone number of the chat customer participant.</p>
    #   @return [String]
    # @!attribute destination_id
    #   <p>Chat system identifier, used in part to uniquely identify chat. This is associated with the
    #       Amazon Connect instance and flow to be used to start chats. For Server Migration Service, this is
    #      the phone number destination of inbound Server Migration Service messages represented by an Amazon Web Services End User Messaging phone number ARN.</p>
    #   @return [String]
    # @!attribute subtype
    #   <p>Classification of a channel. This is used in part to uniquely identify chat. </p>
    #            <p>Valid value: <code>["connect:sms", connect:"WhatsApp"]</code>
    #            </p>
    #   @return [String]
    # @!attribute event
    #   <p>Chat integration event payload</p>
    #   @return [Types::ChatEvent]
    # @!attribute new_session_details
    #   <p>Contact properties to apply when starting a new chat. If the integration event is handled
    #      with an existing chat, this is ignored.</p>
    #   @return [Types::NewSessionDetails]
    class SendChatIntegrationEventRequest < Struct.new(
      :source_id,
      :destination_id,
      :subtype,
      :event,
      :new_session_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute initial_contact_id
    #   <p>Identifier of chat contact used to handle integration event. This may be null if the
    #      integration event is not valid without an already existing chat contact.</p>
    #   @return [String]
    # @!attribute new_chat_created
    #   <p>Whether handling the integration event resulted in creating a new chat or acting on existing
    #      chat.</p>
    #   @return [Boolean]
    class SendChatIntegrationEventResponse < Struct.new(
      :initial_contact_id,
      :new_chat_created,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the send notification action.</p>
    # @!attribute delivery_method
    #   <p>Notification delivery method.</p>
    #   @return [String]
    # @!attribute subject
    #   <p>The subject of the email if the delivery method is <code>EMAIL</code>.
    #      Supports variable injection. For more information, see 
    #   <a href="https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-variable-injection.html">JSONPath reference</a> 
    #   in the <i>Amazon Connect Administrators Guide</i>.</p>
    #   @return [String]
    # @!attribute content
    #   <p>Notification content. Supports variable injection. For more information, see 
    #   <a href="https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-variable-injection.html">JSONPath reference</a> 
    #   in the <i>Amazon Connect Administrators Guide</i>.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>Content type format.</p>
    #   @return [String]
    # @!attribute recipient
    #   <p>Notification recipient.</p>
    #   @return [Types::NotificationRecipientType]
    class SendNotificationActionDefinition < Struct.new(
      :delivery_method,
      :subject,
      :content,
      :content_type,
      :recipient,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute from_email_address
    #   <p>The email address to be used for sending email.</p>
    #   @return [Types::EmailAddressInfo]
    # @!attribute destination_email_address
    #   <p>The email address to send the email to.</p>
    #   @return [Types::EmailAddressInfo]
    # @!attribute additional_recipients
    #   <p>The additional recipients address of the email in CC.</p>
    #   @return [Types::OutboundAdditionalRecipients]
    # @!attribute email_message
    #   <p>The email message body to be sent to the newly created email.</p>
    #   @return [Types::OutboundEmailContent]
    # @!attribute traffic_type
    #   <p>Denotes the class of traffic.</p>
    #            <note>
    #               <p>Only the CAMPAIGN traffic type is supported.</p>
    #            </note>
    #   @return [String]
    # @!attribute source_campaign
    #   <p>A Campaign object need for Campaign traffic type.</p>
    #   @return [Types::SourceCampaign]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class SendOutboundEmailRequest < Struct.new(
      :instance_id,
      :from_email_address,
      :destination_email_address,
      :additional_recipients,
      :email_message,
      :traffic_type,
      :source_campaign,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class SendOutboundEmailResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The service quota has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #   @return [Types::ServiceQuotaExceededExceptionReason]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The reason for the exception.</p>
    # @!attribute attached_file_service_quota_exceeded_exception_reason
    #   <p>Total file size of all files or total number of files exceeds the service quota</p>
    #   @return [String]
    class ServiceQuotaExceededExceptionReason < Struct.new(
      :attached_file_service_quota_exceeded_exception_reason,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class AttachedFileServiceQuotaExceededExceptionReason < ServiceQuotaExceededExceptionReason; end
      class Unknown < ServiceQuotaExceededExceptionReason; end
    end

    # <p>The distribution that determines which Amazon Web Services Regions should be used to sign in
    #    agents in to both the instance and its replica(s).</p>
    # @!attribute distributions
    #   <p>Information about traffic distributions.</p>
    #   @return [Array<Types::SignInDistribution>]
    class SignInConfig < Struct.new(
      :distributions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The distribution of sign in traffic between the instance and its replica(s).</p>
    # @!attribute region
    #   <p>The Amazon Web Services Region of the sign in distribution.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Whether sign in distribution is enabled.</p>
    #   @return [Boolean]
    class SignInDistribution < Struct.new(
      :region,
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Information about the automation option based on a rule category for a single select
    #    question.</p>
    # @!attribute category
    #   <p> The category name, as defined in Rules.</p>
    #   @return [String]
    # @!attribute condition
    #   <p>The condition to apply for the automation option. If the condition is <code>PRESENT</code>,
    #      then the option is applied when the contact data includes the category. Similarly, if the
    #      condition is <code>NOT_PRESENT</code>, then the option is applied when the contact data does not
    #      include the category.</p>
    #   @return [String]
    # @!attribute option_ref_id
    #   <p>The identifier of the answer option.</p>
    #   @return [String]
    class SingleSelectQuestionRuleCategoryAutomation < Struct.new(
      :category,
      :condition,
      :option_ref_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that defines the field name to sort by and a sort order.</p>
    # @!attribute field_name
    #   <p>The name of the field on which to sort.</p>
    #   @return [String]
    # @!attribute order
    #   <p>An ascending or descending sort.</p>
    #   @return [String]
    class Sort < Struct.new(
      :field_name,
      :order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the campaign.</p>
    # @!attribute campaign_id
    #   <p>A unique identifier for a campaign.</p>
    #   @return [String]
    # @!attribute outbound_request_id
    #   <p>A unique identifier for a each request part of same campaign.</p>
    #   @return [String]
    class SourceCampaign < Struct.new(
      :campaign_id,
      :outbound_request_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute file_name
    #   <p>A case-sensitive name of the attached file being uploaded.</p>
    #   @return [String]
    # @!attribute file_size_in_bytes
    #   <p>The size of the attached file in bytes.</p>
    #   @return [Integer]
    # @!attribute url_expiry_in_seconds
    #   <p>Optional override for the expiry of the pre-signed S3 URL in seconds. The default value is
    #      300.</p>
    #   @return [Integer]
    # @!attribute file_use_case_type
    #   <p>The use case for the file.</p>
    #            <important>
    #               <p> Only <code>ATTACHMENTS</code> are supported.</p>
    #            </important>
    #   @return [String]
    # @!attribute associated_resource_arn
    #   <p>The resource to which the attached file is (being) uploaded to. The supported resources are
    #       <a href="https://docs.aws.amazon.com/connect/latest/adminguide/cases.html">Cases</a> and <a href="https://docs.aws.amazon.com/connect/latest/adminguide/setup-email-channel.html">Email</a>.</p>
    #            <note>
    #               <p>This value must be a valid ARN.</p>
    #            </note>
    #   @return [String]
    # @!attribute created_by
    #   <p>Represents the identity that created the file.</p>
    #   @return [Types::CreatedByInfo]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, <code>{
    #       "Tags": {"key1":"value1", "key2":"value2"} }</code>.</p>
    #   @return [Hash<String, String>]
    class StartAttachedFileUploadRequest < Struct.new(
      :client_token,
      :instance_id,
      :file_name,
      :file_size_in_bytes,
      :url_expiry_in_seconds,
      :file_use_case_type,
      :associated_resource_arn,
      :created_by,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Response from StartAttachedFileUpload API.
    # @!attribute file_arn
    #   <p>The unique identifier of the attached file resource (ARN).</p>
    #   @return [String]
    # @!attribute file_id
    #   <p>The unique identifier of the attached file resource.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time of Creation of the file resource as an ISO timestamp. It's specified in ISO 8601
    #      format: <code>yyyy-MM-ddThh:mm:ss.SSSZ</code>. For example,
    #      <code>2024-05-03T02:41:28.172Z</code>.</p>
    #   @return [String]
    # @!attribute file_status
    #   <p>The current status of the attached file.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>Represents the identity that created the file.</p>
    #   @return [Types::CreatedByInfo]
    # @!attribute upload_url_metadata
    #   <p>The headers to be provided while uploading the file to the URL.</p>
    #   @return [Types::UploadUrlMetadata]
    class StartAttachedFileUploadResponse < Struct.new(
      :file_arn,
      :file_id,
      :creation_time,
      :file_status,
      :created_by,
      :upload_url_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow for initiating the chat.
    #      To
    #      see the ContactFlowId in the Amazon Connect admin website, on the navigation menu go to <b>Routing</b>, <b>Flows</b>. Choose the flow. On the flow page,
    #      under the name of the flow, choose <b>Show additional flow
    #       information</b>. The ContactFlowId is the last part of the ARN, shown here in bold: </p>
    #            <p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<b>846ec553-a005-41c0-8341-xxxxxxxxxxxx</b>
    #            </p>
    #   @return [String]
    # @!attribute attributes
    #   <p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes. They can be accessed in flows just like any other contact attributes. </p>
    #            <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys
    #      can include only alphanumeric, dash, and underscore characters.</p>
    #   @return [Hash<String, String>]
    # @!attribute participant_details
    #   <p>Information identifying the participant.</p>
    #   @return [Types::ParticipantDetails]
    # @!attribute initial_message
    #   <p>The initial message to be sent to the newly created chat.</p>
    #   @return [Types::ChatMessage]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute chat_duration_in_minutes
    #   <p>The total duration of the newly started chat session. If not specified, the chat session
    #      duration defaults to 25 hour. The minimum configurable time is 60 minutes. The maximum
    #      configurable time is 10,080 minutes (7 days).</p>
    #   @return [Integer]
    # @!attribute supported_messaging_content_types
    #   <p>The supported chat message content types. Supported types are <code>text/plain</code>,
    #       <code>text/markdown</code>, <code>application/json</code>,
    #       <code>application/vnd.amazonaws.connect.message.interactive</code>, and
    #       <code>application/vnd.amazonaws.connect.message.interactive.response</code>. </p>
    #            <p>Content types must always contain <code>text/plain</code>. You can then put any other
    #      supported type in the list. For example, all the following lists are valid because they contain
    #       <code>text/plain</code>: <code>[text/plain, text/markdown, application/json]</code>,
    #       <code>[text/markdown, text/plain]</code>, <code>[text/plain, application/json,
    #       application/vnd.amazonaws.connect.message.interactive.response]</code>. </p>
    #            <note>
    #               <p>The type <code>application/vnd.amazonaws.connect.message.interactive</code> is required to
    #       use the <a href="https://docs.aws.amazon.com/connect/latest/adminguide/show-view-block.html">Show
    #        view</a> flow block.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute persistent_chat
    #   <p>Enable persistent chats. For more information about enabling persistent chat, and for
    #      example use cases and how to configure for them, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html">Enable persistent chat</a>.</p>
    #   @return [Types::PersistentChat]
    # @!attribute related_contact_id
    #   <p>The unique identifier for an Amazon Connect contact. This identifier is related to the
    #      chat starting.</p>
    #            <note>
    #               <p>You cannot provide data for both RelatedContactId and PersistentChat. </p>
    #            </note>
    #   @return [String]
    # @!attribute segment_attributes
    #   <p>A set of system defined key-value pairs stored on individual contact segments using an
    #      attribute map. The attributes are standard Amazon Connect attributes. They can be accessed in
    #      flows.</p>
    #            <p>Attribute keys can include only alphanumeric, -, and _.</p>
    #            <p>This field can be used to show channel subtype, such as <code>connect:Guide</code>.</p>
    #            <note>
    #               <p>The types <code>application/vnd.amazonaws.connect.message.interactive</code> and
    #        <code>application/vnd.amazonaws.connect.message.interactive.response</code> must be present in
    #       the SupportedMessagingContentTypes field of this API in order to set
    #        <code>SegmentAttributes</code> as {<code> "connect:Subtype": {"valueString" : "connect:Guide"
    #        }}</code>.</p>
    #            </note>
    #   @return [Hash<String, Types::SegmentAttributeValue>]
    # @!attribute customer_id
    #   <p>The customer's identification number. For example, the <code>CustomerId</code> may be a
    #      customer number from your CRM.</p>
    #   @return [String]
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
      :segment_attributes,
      :customer_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>The identifier of this contact within the Amazon Connect instance. </p>
    #   @return [String]
    # @!attribute participant_id
    #   <p>The identifier for a chat participant. The participantId for a chat participant is the same
    #      throughout the chat lifecycle.</p>
    #   @return [String]
    # @!attribute participant_token
    #   <p>The token used by the chat participant to call <a href="https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html">CreateParticipantConnection</a>. The participant token is valid for the lifetime of a chat
    #      participant.</p>
    #   @return [String]
    # @!attribute continued_from_contact_id
    #   <p>The contactId from which a persistent chat session is started. This field is populated only
    #      for persistent chats.</p>
    #   @return [String]
    class StartChatContactResponse < Struct.new(
      :contact_id,
      :participant_id,
      :participant_token,
      :continued_from_contact_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #   @return [String]
    # @!attribute evaluation_form_id
    #   <p>The unique identifier for the evaluation form.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class StartContactEvaluationRequest < Struct.new(
      :instance_id,
      :contact_id,
      :evaluation_form_id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluation_id
    #   <p>A unique identifier for the contact evaluation.</p>
    #   @return [String]
    # @!attribute evaluation_arn
    #   <p>The Amazon Resource Name (ARN) for the contact evaluation resource.</p>
    #   @return [String]
    class StartContactEvaluationResponse < Struct.new(
      :evaluation_id,
      :evaluation_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact.</p>
    #   @return [String]
    # @!attribute initial_contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    #   @return [String]
    # @!attribute voice_recording_configuration
    #   <p>The person being recorded.</p>
    #   @return [Types::VoiceRecordingConfiguration]
    class StartContactRecordingRequest < Struct.new(
      :instance_id,
      :contact_id,
      :initial_contact_id,
      :voice_recording_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class StartContactRecordingResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    #   @return [String]
    # @!attribute chat_streaming_configuration
    #   <p>The streaming configuration, such as the Amazon SNS streaming endpoint.</p>
    #   @return [Types::ChatStreamingConfiguration]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class StartContactStreamingRequest < Struct.new(
      :instance_id,
      :contact_id,
      :chat_streaming_configuration,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute streaming_id
    #   <p>The identifier of the streaming configuration enabled. </p>
    #   @return [String]
    class StartContactStreamingResponse < Struct.new(
      :streaming_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute from_email_address
    #   <p>The email address of the customer.</p>
    #   @return [Types::EmailAddressInfo]
    # @!attribute destination_email_address
    #   <p>The email address associated with the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the email contact.</p>
    #   @return [String]
    # @!attribute references
    #   <p>A formatted URL that is shown to an agent in the Contact Control Panel (CCP). Emails can
    #      have the following reference types at the time of creation: <code>URL</code> |
    #       <code>NUMBER</code> | <code>STRING</code> | <code>DATE</code>. <code>EMAIL</code> |
    #       <code>EMAIL_MESSAGE</code> |<code>ATTACHMENT</code> are not a supported reference type during
    #      email creation.</p>
    #   @return [Hash<String, Types::Reference>]
    # @!attribute name
    #   <p>The name of a email that is shown to an agent in the Contact Control Panel (CCP).</p>
    #   @return [String]
    # @!attribute email_message
    #   <p>The email message body to be sent to the newly created email.</p>
    #   @return [Types::InboundEmailContent]
    # @!attribute additional_recipients
    #   <p>The additional recipients address of the email.</p>
    #   @return [Types::InboundAdditionalRecipients]
    # @!attribute attachments
    #   <p>List of S3 presigned URLs of email attachments and their file name. </p>
    #   @return [Array<Types::EmailAttachment>]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow for initiating the emails. To see the ContactFlowId in the Amazon Connect admin website,
    #      on the navigation menu go to <b>Routing</b>, <b>Flows</b>. Choose the flow. On the flow page, under the name of the flow, choose
    #       <b>Show additional flow information</b>. The ContactFlowId is the last
    #      part of the ARN, shown here in bold: </p>
    #            <p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<b>846ec553-a005-41c0-8341-xxxxxxxxxxxx</b>
    #            </p>
    #   @return [String]
    # @!attribute related_contact_id
    #   <p>The contactId that is related to this contact. Linking emails together by using
    #       <code>RelatedContactID</code> copies over contact attributes from the related email contact to
    #      the new email contact. All updates to user-defined attributes in the new email contact are
    #      limited to the individual contact ID. There are no limits to the number of contacts that can be
    #      linked by using <code>RelatedContactId</code>. </p>
    #   @return [String]
    # @!attribute attributes
    #   <p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes, and can be accessed in flows just like any other contact attributes.</p>
    #            <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys
    #      can include only alphanumeric, dash, and underscore characters.</p>
    #   @return [Hash<String, String>]
    # @!attribute segment_attributes
    #   <p>A set of system defined key-value pairs stored on individual contact segments using an
    #      attribute map. The attributes are standard Amazon Connect attributes. They can be accessed in
    #      flows.</p>
    #            <p>Attribute keys can include only alphanumeric, -, and _.</p>
    #            <p>This field can be used to show channel subtype, such as <code>connect:Guide</code>.</p>
    #            <note>
    #               <p>To set contact expiry, a <code>ValueMap</code> must be specified containing the integer
    #       number of minutes the contact will be active for before expiring, with
    #        <code>SegmentAttributes</code> like { <code> "connect:ContactExpiry": {"ValueMap" : {
    #        "ExpiryDuration": { "ValueInteger":135}}}}</code>.</p>
    #            </note>
    #   @return [Hash<String, Types::SegmentAttributeValue>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class StartEmailContactRequest < Struct.new(
      :instance_id,
      :from_email_address,
      :destination_email_address,
      :description,
      :references,
      :name,
      :email_message,
      :additional_recipients,
      :attachments,
      :contact_flow_id,
      :related_contact_id,
      :attributes,
      :segment_attributes,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>The identifier of this contact within the Amazon Connect instance.</p>
    #   @return [String]
    class StartEmailContactResponse < Struct.new(
      :contact_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_endpoint
    #   <p>Information about the endpoint.</p>
    #   @return [Types::Endpoint]
    # @!attribute destination_endpoint
    #   <p>Information about the endpoint.</p>
    #   @return [Types::Endpoint]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instance ID in the
    #      Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute segment_attributes
    #   <p>A set of system defined key-value pairs stored on individual contact segments using an
    #      attribute map. The attributes are standard Amazon Connect attributes. They can be accessed in
    #      flows.</p>
    #            <ul>
    #               <li>
    #                  <p>Attribute keys can include only alphanumeric, <code>-</code>, and <code>_</code>.</p>
    #               </li>
    #               <li>
    #                  <p>This field can be used to show channel subtype, such as <code>connect:Guide</code> and
    #         <code>connect:SMS</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, Types::SegmentAttributeValue>]
    # @!attribute attributes
    #   <p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes, and can be accessed in flows just like any other contact attributes.</p>
    #   @return [Hash<String, String>]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow for the call. To see the ContactFlowId in the Amazon Connect
    #      console user interface, on the navigation menu go to <b>Routing, Contact
    #       Flows</b>. Choose the flow. On the flow page, under the name of the flow, choose
    #       <b>Show additional flow information</b>. The ContactFlowId is the last
    #      part of the ARN, shown here in bold:</p>
    #            <ul>
    #               <li>
    #                  <p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<b>123ec456-a007-89c0-1234-xxxxxxxxxxxx</b>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute chat_duration_in_minutes
    #   <p>The total duration of the newly started chat session. If not specified, the chat session
    #      duration defaults to 25 hour. The minimum configurable time is 60 minutes. The maximum
    #      configurable time is 10,080 minutes (7 days).</p>
    #   @return [Integer]
    # @!attribute participant_details
    #   <p>The customer's details.</p>
    #   @return [Types::ParticipantDetails]
    # @!attribute initial_system_message
    #   <p>A chat message.</p>
    #   @return [Types::ChatMessage]
    # @!attribute related_contact_id
    #   <p>The unique identifier for an Amazon Connect contact. This identifier is related to the
    #      contact starting.</p>
    #   @return [String]
    # @!attribute supported_messaging_content_types
    #   <p>The supported chat message content types. Supported types are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>text/plain</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>text/markdown</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>application/json,
    #        application/vnd.amazonaws.connect.message.interactive</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>application/vnd.amazonaws.connect.message.interactive.response</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Content types must always contain <code>text/plain</code>. You can then put any other
    #      supported type in the list. For example, all the following lists are valid because they contain
    #       <code>text/plain</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>[text/plain, text/markdown, application/json]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>[text/markdown, text/plain]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>[text/plain, application/json,
    #         application/vnd.amazonaws.connect.message.interactive.response]</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #      request. If not provided, the AWS SDK populates this field. For more information about
    #      idempotency, see <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
    #       retries safe with idempotent APIs</a>. The token is valid for 7 days after creation. If a
    #      contact is already started, the contact ID is returned.</p>
    #   @return [String]
    class StartOutboundChatContactRequest < Struct.new(
      :source_endpoint,
      :destination_endpoint,
      :instance_id,
      :segment_attributes,
      :attributes,
      :contact_flow_id,
      :chat_duration_in_minutes,
      :participant_details,
      :initial_system_message,
      :related_contact_id,
      :supported_messaging_content_types,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>The identifier of this contact within the Amazon Connect instance.</p>
    #   @return [String]
    class StartOutboundChatContactResponse < Struct.new(
      :contact_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #   @return [String]
    # @!attribute from_email_address
    #   <p>The email address associated with the Amazon Connect instance.</p>
    #   @return [Types::EmailAddressInfo]
    # @!attribute destination_email_address
    #   <p>The email address of the customer.</p>
    #   @return [Types::EmailAddressInfo]
    # @!attribute additional_recipients
    #   <p>The additional recipients address of email in CC.</p>
    #   @return [Types::OutboundAdditionalRecipients]
    # @!attribute email_message
    #   <p>The email message body to be sent to the newly created email.</p>
    #   @return [Types::OutboundEmailContent]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class StartOutboundEmailContactRequest < Struct.new(
      :instance_id,
      :contact_id,
      :from_email_address,
      :destination_email_address,
      :additional_recipients,
      :email_message,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #   @return [String]
    class StartOutboundEmailContactResponse < Struct.new(
      :contact_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of a voice contact that is shown to an agent in the Contact Control Panel
    #      (CCP).</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the voice contact that appears in the agent's snapshot in the CCP logs. For
    #      more information about CCP logs, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/download-ccp-logs.html">Download and review CCP logs</a> in
    #      the <i>Amazon Connect Administrator Guide</i>.</p>
    #   @return [String]
    # @!attribute references
    #   <p>A formatted URL that is shown to an agent in the Contact Control Panel (CCP). Contacts can
    #      have the following reference types at the time of creation: <code>URL</code> |
    #       <code>NUMBER</code> | <code>STRING</code> | <code>DATE</code> | <code>EMAIL</code>.
    #       <code>ATTACHMENT</code> is not a supported reference type during voice contact creation.</p>
    #   @return [Hash<String, Types::Reference>]
    # @!attribute related_contact_id
    #   <p>The <code>contactId</code> that is related to this contact. Linking voice, task, or chat by
    #      using <code>RelatedContactID</code> copies over contact attributes from the related contact to
    #      the new contact. All updates to user-defined attributes in the new contact are limited to the
    #      individual contact ID. There are no limits to the number of contacts that can be linked by using
    #       <code>RelatedContactId</code>. </p>
    #   @return [String]
    # @!attribute destination_phone_number
    #   <p>The phone number of the customer, in E.164 format.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The
    #      identifier of the flow for the outbound call. To see the ContactFlowId in the Amazon Connect admin website, on the
    #      navigation menu go to <b>Routing</b>, <b>Contact
    #       Flows</b>. Choose the flow. On the flow page, under the name of the flow, choose
    #       <b>Show additional flow information</b>. The ContactFlowId is the last
    #      part of the ARN, shown here in bold: </p>
    #            <p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<b>846ec553-a005-41c0-8341-xxxxxxxxxxxx</b>
    #            </p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>. The token is valid for 7 days after creation. If a contact is already started,
    #      the contact ID is returned.
    #      </p>
    #   @return [String]
    # @!attribute source_phone_number
    #   <p>The phone number associated with the Amazon Connect instance, in E.164 format. If you do
    #      not specify a source phone number, you must specify a queue.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue for the call. If you specify a queue, the phone displayed for caller ID is the
    #      phone number specified in the queue. If you do not specify a queue, the queue defined in the flow
    #      is used. If you do not specify a queue, you must specify a source phone number.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes, and can be accessed in flows just like any other contact attributes.</p>
    #            <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys
    #      can include only alphanumeric, dash, and underscore characters.</p>
    #   @return [Hash<String, String>]
    # @!attribute answer_machine_detection_config
    #   <p>Configuration of the answering machine detection for this outbound call. </p>
    #   @return [Types::AnswerMachineDetectionConfig]
    # @!attribute campaign_id
    #   <p>The campaign identifier of the outbound communication.</p>
    #   @return [String]
    # @!attribute traffic_type
    #   <p>Denotes the class of traffic. Calls with different traffic types are handled differently by
    #       Amazon Connect. The default value is <code>GENERAL</code>. Use <code>CAMPAIGN</code> if
    #       <code>EnableAnswerMachineDetection</code> is set to <code>true</code>. For all other cases, use
    #       <code>GENERAL</code>. </p>
    #   @return [String]
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
      :traffic_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>The identifier of this contact within the Amazon Connect instance.</p>
    #   @return [String]
    class StartOutboundVoiceContactResponse < Struct.new(
      :contact_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #   @return [String]
    class StartScreenSharingRequest < Struct.new(
      :client_token,
      :instance_id,
      :contact_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class StartScreenSharingResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute previous_contact_id
    #   <p>The identifier of the previous chat, voice, or task contact. Any updates to user-defined
    #      attributes to task contacts linked using the same <code>PreviousContactID</code> will affect
    #      every contact in the chain. There can be a maximum of 12 linked task contacts in a chain.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow for initiating the tasks. To see the ContactFlowId in the Amazon Connect admin website,
    #      on the navigation menu go to <b>Routing</b>, <b>Flows</b>. Choose the flow. On the flow page, under the name of the flow, choose
    #       <b>Show additional flow information</b>. The ContactFlowId is the last
    #      part of the ARN, shown here in bold: </p>
    #            <p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<b>846ec553-a005-41c0-8341-xxxxxxxxxxxx</b>
    #            </p>
    #   @return [String]
    # @!attribute attributes
    #   <p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes, and can be accessed in flows just like any other contact attributes.</p>
    #            <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys
    #      can include only alphanumeric, dash, and underscore characters.</p>
    #   @return [Hash<String, String>]
    # @!attribute name
    #   <p>The name of a task that is shown to an agent in the Contact Control Panel (CCP).</p>
    #   @return [String]
    # @!attribute references
    #   <p>A formatted URL that is shown to an agent in the Contact Control Panel (CCP). Tasks can have
    #      the following reference types at the time of creation: <code>URL</code> | <code>NUMBER</code> |
    #       <code>STRING</code> | <code>DATE</code> | <code>EMAIL</code>. <code>ATTACHMENT</code> is not a
    #      supported reference type during task creation.</p>
    #   @return [Hash<String, Types::Reference>]
    # @!attribute description
    #   <p>A description of the task that is shown to an agent in the Contact Control Panel
    #      (CCP).</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute scheduled_time
    #   <p>The timestamp, in Unix Epoch seconds format, at which to start running the inbound flow. The scheduled time cannot be in the past. It must be within up to 6 days in future. </p>
    #   @return [Time]
    # @!attribute task_template_id
    #   <p>A unique identifier for the task template. For more information about task templates, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/task-templates.html">Create task templates</a> in the
    #        <i>Amazon Connect Administrator Guide</i>. </p>
    #   @return [String]
    # @!attribute quick_connect_id
    #   <p>The identifier for the quick connect. Tasks that are created by using <code>QuickConnectId</code> will use the
    #      flow that is defined on agent or queue quick connect. For more information about quick connects,
    #      see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/quick-connects.html">Create quick
    #       connects</a>.</p>
    #   @return [String]
    # @!attribute related_contact_id
    #   <p>The contactId that is <a href="https://docs.aws.amazon.com/connect/latest/adminguide/tasks.html#linked-tasks">related</a> to this contact. Linking
    #      tasks together by using <code>RelatedContactID</code> copies over contact attributes from the
    #      related task contact to the new task contact. All updates to user-defined attributes in the new
    #      task contact are limited to the individual contact ID, unlike what happens when tasks are linked
    #      by using <code>PreviousContactID</code>. There are no limits to the number of contacts that can
    #      be linked by using <code>RelatedContactId</code>. </p>
    #   @return [String]
    # @!attribute segment_attributes
    #   <p>A set of system defined key-value pairs stored on individual contact segments (unique
    #      contact ID) using an attribute map. The attributes are standard Amazon Connect attributes.
    #      They can be accessed in flows.</p>
    #            <p>Attribute keys can include only alphanumeric, -, and _.</p>
    #            <p>This field can be used to set Contact Expiry as a duration in minutes and set a UserId for
    #      the User who created a task.</p>
    #            <note>
    #               <p>To set contact expiry, a ValueMap must be specified containing the integer number of
    #       minutes the contact will be active for before expiring, with <code>SegmentAttributes</code> like
    #       { <code> "connect:ContactExpiry": {"ValueMap" : { "ExpiryDuration": { "ValueInteger":
    #        135}}}}</code>. </p>
    #               <p>To set the created by user, a valid AgentResourceId must be supplied, with
    #        <code>SegmentAttributes</code> like { <code>"connect:CreatedByUser" { "ValueString":
    #        "arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/agent/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"}}}</code>.
    #      </p>
    #            </note>
    #   @return [Hash<String, Types::SegmentAttributeValue>]
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
      :related_contact_id,
      :segment_attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>The identifier of this contact within the Amazon Connect instance.</p>
    #   @return [String]
    class StartTaskContactResponse < Struct.new(
      :contact_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute attributes
    #   <p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes, and can be accessed in flows just like any other contact attributes.</p>
    #            <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys
    #      can include only alphanumeric, -, and _ characters.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #            <p>The token is valid for 7 days after creation. If a contact is already started, the contact
    #      ID is returned.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow for the call. To see the ContactFlowId in the Amazon Connect admin website, on the
    #      navigation menu go to <b>Routing</b>, <b>Flows</b>. Choose the flow. On the flow page, under the name of the flow, choose
    #       <b>Show additional flow information</b>. The ContactFlowId is the last
    #      part of the ARN, shown here in bold: </p>
    #            <p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<b>846ec553-a005-41c0-8341-xxxxxxxxxxxx</b>
    #            </p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute allowed_capabilities
    #   <p>Information about the video sharing capabilities of the participants (customer,
    #      agent).</p>
    #   @return [Types::AllowedCapabilities]
    # @!attribute participant_details
    #   <p>The customer's details.</p>
    #   @return [Types::ParticipantDetails]
    # @!attribute related_contact_id
    #   <p>The unique identifier for an Amazon Connect contact. This identifier is related to the
    #      contact starting.</p>
    #   @return [String]
    # @!attribute references
    #   <p>A formatted URL that is shown to an agent in the Contact Control Panel (CCP). Tasks can have
    #      the following reference types at the time of creation: <code>URL</code> | <code>NUMBER</code> |
    #       <code>STRING</code> | <code>DATE</code> | <code>EMAIL</code>. <code>ATTACHMENT</code> is not a
    #      supported reference type during task creation.</p>
    #   @return [Hash<String, Types::Reference>]
    # @!attribute description
    #   <p>A description of the task that is shown to an agent in the Contact Control Panel
    #      (CCP).</p>
    #   @return [String]
    class StartWebRTCContactRequest < Struct.new(
      :attributes,
      :client_token,
      :contact_flow_id,
      :instance_id,
      :allowed_capabilities,
      :participant_details,
      :related_contact_id,
      :references,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_data
    #   <p>Information required for the client application (mobile application or website) to connect
    #      to the call.</p>
    #   @return [Types::ConnectionData]
    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #   @return [String]
    # @!attribute participant_id
    #   <p>The identifier for a contact participant. The <code>ParticipantId</code> for a contact
    #      participant is the same throughout the contact lifecycle.</p>
    #   @return [String]
    # @!attribute participant_token
    #   <p>The token used by the contact participant to call the <a href="https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html">CreateParticipantConnection</a> API. The participant token is valid for the lifetime of a
    #      contact participant.</p>
    #   @return [String]
    class StartWebRTCContactResponse < Struct.new(
      :connection_data,
      :contact_id,
      :participant_id,
      :participant_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the state transition of a supervisor.</p>
    # @!attribute state
    #   <p>The state of the transition.</p>
    #   @return [String]
    # @!attribute state_start_timestamp
    #   <p>The date and time when the state started in UTC time.</p>
    #   @return [Time]
    # @!attribute state_end_timestamp
    #   <p>The date and time when the state ended in UTC time.</p>
    #   @return [Time]
    class StateTransition < Struct.new(
      :state,
      :state_start_timestamp,
      :state_end_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Step signifies the criteria to be used for routing to an agent</p>
    # @!attribute expiry
    #   <p>An object to specify the expiration of a routing step.</p>
    #   @return [Types::Expiry]
    # @!attribute expression
    #   <p>A tagged union to specify expression for a routing step.</p>
    #   @return [Types::Expression]
    # @!attribute status
    #   <p>Represents status of the Routing step.</p>
    #   @return [String]
    class Step < Struct.new(
      :expiry,
      :expression,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact.</p>
    #   @return [String]
    # @!attribute initial_contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    #   @return [String]
    # @!attribute contact_recording_type
    #   <p>The type of recording being operated on.</p>
    #   @return [String]
    class StopContactRecordingRequest < Struct.new(
      :instance_id,
      :contact_id,
      :initial_contact_id,
      :contact_recording_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class StopContactRecordingResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>The ID of the contact.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute disconnect_reason
    #   <p>The reason a contact can be disconnected. Only Amazon Connect outbound campaigns can
    #      provide this field.</p>
    #   @return [Types::DisconnectReason]
    class StopContactRequest < Struct.new(
      :contact_id,
      :instance_id,
      :disconnect_reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class StopContactResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact that is associated with
    #      the first interaction with the contact center.</p>
    #   @return [String]
    # @!attribute streaming_id
    #   <p>The identifier of the streaming configuration enabled. </p>
    #   @return [String]
    class StopContactStreamingRequest < Struct.new(
      :instance_id,
      :contact_id,
      :streaming_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class StopContactStreamingResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A leaf node condition which can be used to specify a string condition.</p>
    # @!attribute field_name
    #   <p>The name of the field in the string condition.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the string.</p>
    #   @return [String]
    # @!attribute comparison_type
    #   <p>The type of comparison to be made when evaluating the string condition.</p>
    #   @return [String]
    class StringCondition < Struct.new(
      :field_name,
      :value,
      :comparison_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a reference when the <code>referenceType</code> is <code>STRING</code>.
    #    Otherwise, null.</p>
    # @!attribute name
    #   <p>Identifier of the string reference.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A valid string.</p>
    #   @return [String]
    class StringReference < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the submit automated evaluation action.</p>
    # @!attribute evaluation_form_id
    #   <p>The identifier of the auto-evaluation enabled form.</p>
    #   @return [String]
    class SubmitAutoEvaluationActionDefinition < Struct.new(
      :evaluation_form_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute evaluation_id
    #   <p>A unique identifier for the contact evaluation.</p>
    #   @return [String]
    # @!attribute answers
    #   <p>A map of question identifiers to answer value.</p>
    #   @return [Hash<String, Types::EvaluationAnswerInput>]
    # @!attribute notes
    #   <p>A map of question identifiers to note value.</p>
    #   @return [Hash<String, Types::EvaluationNote>]
    class SubmitContactEvaluationRequest < Struct.new(
      :instance_id,
      :evaluation_id,
      :answers,
      :notes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluation_id
    #   <p>A unique identifier for the contact evaluation.</p>
    #   @return [String]
    # @!attribute evaluation_arn
    #   <p>The Amazon Resource Name (ARN) for the contact evaluation resource.</p>
    #   @return [String]
    class SubmitContactEvaluationResponse < Struct.new(
      :evaluation_id,
      :evaluation_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Request for which contact was successfully created.</p>
    # @!attribute request_identifier
    #   <p>Request identifier provided in the API call in the ContactDataRequest to create a
    #      contact.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The contactId of the contact that was created successfully.</p>
    #   @return [String]
    class SuccessfulRequest < Struct.new(
      :request_identifier,
      :contact_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact.</p>
    #   @return [String]
    # @!attribute initial_contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    #   @return [String]
    # @!attribute contact_recording_type
    #   <p>The type of recording being operated on.</p>
    #   @return [String]
    class SuspendContactRecordingRequest < Struct.new(
      :instance_id,
      :contact_id,
      :initial_contact_id,
      :contact_recording_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class SuspendContactRecordingResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A leaf node condition which can be used to specify a tag condition, for example, <code>HAVE
    #     BPO = 123</code>. </p>
    # @!attribute tag_key
    #   <p>The tag key in the tag condition.</p>
    #   @return [String]
    # @!attribute tag_value
    #   <p>The tag value in the tag condition.</p>
    #   @return [String]
    class TagCondition < Struct.new(
      :tag_key,
      :tag_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be assigned to the contact resource. For example, { "Tags": {"key1":"value1",
    #      "key2":"value2"} }.</p>
    #            <note>
    #               <p>Authorization is not supported by this tag.</p>
    #            </note>
    #   @return [Hash<String, String>]
    class TagContactRequest < Struct.new(
      :contact_id,
      :instance_id,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagContactResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The search criteria to be used to return tags.</p>
    # @!attribute tag_key
    #   <p>The tag key used in the tag search condition.</p>
    #   @return [String]
    # @!attribute tag_value
    #   <p>The tag value used in the tag search condition.</p>
    #   @return [String]
    # @!attribute tag_key_comparison_type
    #   <p>The type of comparison to be made when evaluating the tag key in tag search
    #      condition.</p>
    #   @return [String]
    # @!attribute tag_value_comparison_type
    #   <p>The type of comparison to be made when evaluating the tag value in tag search
    #      condition.</p>
    #   @return [String]
    class TagSearchCondition < Struct.new(
      :tag_key,
      :tag_value,
      :tag_key_comparison_type,
      :tag_value_comparison_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A tag set contains tag key and tag value.</p>
    # @!attribute key
    #   <p>The tag key in the TagSet.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag value in the tagSet.</p>
    #   @return [String]
    class TagSet < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the task action.</p>
    # @!attribute name
    #   <p>The name. Supports variable injection. For more information, see 
    #   <a href="https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-variable-injection.html">JSONPath reference</a> 
    #   in the <i>Amazon Connect Administrators Guide</i>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description. Supports variable injection. For more information, see 
    #   <a href="https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-variable-injection.html">JSONPath reference</a> 
    #   in the <i>Amazon Connect Administrators Guide</i>.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow.</p>
    #   @return [String]
    # @!attribute references
    #   <p>Information about the reference when the <code>referenceType</code> is <code>URL</code>.
    #      Otherwise, null. (Supports variable injection in the <code>Value</code> field.)</p>
    #   @return [Hash<String, Types::Reference>]
    class TaskActionDefinition < Struct.new(
      :name,
      :description,
      :contact_flow_id,
      :references,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes constraints that apply to the template fields.</p>
    # @!attribute required_fields
    #   <p>Lists the fields that are required to be filled by agents.</p>
    #   @return [Array<Types::RequiredFieldInfo>]
    # @!attribute read_only_fields
    #   <p>Lists the fields that are read-only to agents, and cannot be edited.</p>
    #   @return [Array<Types::ReadOnlyFieldInfo>]
    # @!attribute invisible_fields
    #   <p>Lists the fields that are invisible to agents.</p>
    #   @return [Array<Types::InvisibleFieldInfo>]
    class TaskTemplateConstraints < Struct.new(
      :required_fields,
      :read_only_fields,
      :invisible_fields,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a default field and its corresponding value.</p>
    # @!attribute id
    #   <p>Identifier of a field. </p>
    #   @return [Types::TaskTemplateFieldIdentifier]
    # @!attribute default_value
    #   <p>Default value for the field.</p>
    #   @return [String]
    class TaskTemplateDefaultFieldValue < Struct.new(
      :id,
      :default_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes default values for fields on a template.</p>
    # @!attribute default_field_values
    #   <p>Default value for the field.</p>
    #   @return [Array<Types::TaskTemplateDefaultFieldValue>]
    class TaskTemplateDefaults < Struct.new(
      :default_field_values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a single task template field.</p>
    # @!attribute id
    #   <p>The unique identifier for the field.</p>
    #   @return [Types::TaskTemplateFieldIdentifier]
    # @!attribute description
    #   <p>The description of the field.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Indicates the type of field.</p>
    #   @return [String]
    # @!attribute single_select_options
    #   <p>A list of options for a single select field.</p>
    #   @return [Array<String>]
    class TaskTemplateField < Struct.new(
      :id,
      :description,
      :type,
      :single_select_options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The identifier of the task template field.</p>
    # @!attribute name
    #   <p>The name of the task template field.</p>
    #   @return [String]
    class TaskTemplateFieldIdentifier < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about the task template.</p>
    # @!attribute id
    #   <p>A unique identifier for the task template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the task template.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the task template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the task template.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Marks a template as <code>ACTIVE</code> or <code>INACTIVE</code> for a task to refer to it. 
    #   Tasks can only be created from <code>ACTIVE</code> templates.
    #   If a template is marked as <code>INACTIVE</code>, then a task that refers to this template cannot be created.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp when the task template was last modified.</p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>The timestamp when the task template was created.</p>
    #   @return [Time]
    class TaskTemplateMetadata < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :status,
      :last_modified_time,
      :created_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The distribution of traffic between the instance and its replicas.</p>
    # @!attribute distributions
    #   <p>Information about traffic distributions.</p>
    #   @return [Array<Types::Distribution>]
    class TelephonyConfig < Struct.new(
      :distributions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the template attributes.</p>
    # @!attribute custom_attributes
    #   <p>An object that specifies the custom attributes values to use for variables in the message
    #      template. This object contains different categories of key-value pairs. Each key defines a
    #      variable or placeholder in the message template. </p>
    #   @return [Hash<String, String>]
    # @!attribute customer_profile_attributes
    #   <p>An object that specifies the customer profile attributes values to use for variables in the
    #      message template. This object contains different categories of key-value pairs. Each key defines
    #      a variable or placeholder in the message template. </p>
    #   @return [String]
    class TemplateAttributes < Struct.new(
      :custom_attributes,
      :customer_profile_attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about template message configuration.</p>
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain
    #      the ARN.</p>
    #   @return [String]
    # @!attribute message_template_id
    #   <p>The identifier of the message template Id.</p>
    #   @return [String]
    # @!attribute template_attributes
    #   <p>Information about template attributes, that is, CustomAttributes or
    #      CustomerProfileAttributes.</p>
    #   @return [Types::TemplateAttributes]
    class TemplatedMessageConfig < Struct.new(
      :knowledge_base_id,
      :message_template_id,
      :template_attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the threshold for service level metrics.</p>
    # @!attribute comparison
    #   <p>The type of comparison. Only "less than" (LT) comparisons are supported.</p>
    #   @return [String]
    # @!attribute threshold_value
    #   <p>The threshold value to compare.</p>
    #   @return [Float]
    class Threshold < Struct.new(
      :comparison,
      :threshold_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the threshold for service level metrics.</p>
    # @!attribute comparison
    #   <p>The type of comparison. Currently, "less than" (LT), "less than equal" (LTE), and "greater
    #      than" (GT) comparisons are supported.</p>
    #   @return [String]
    # @!attribute threshold_value
    #   <p>The threshold value to compare.</p>
    #   @return [Float]
    class ThresholdV2 < Struct.new(
      :comparison,
      :threshold_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The throttling limit has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Displayed when rate-related API limits are exceeded.</p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a traffic distribution group.</p>
    # @!attribute id
    #   <p>The identifier of the traffic distribution group.
    #   This can be the ID or the ARN if the API is being called in the Region where the traffic distribution group was created.
    #   The ARN must be provided if the call is from the replicated Region.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the traffic distribution group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the traffic distribution group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the traffic distribution group.</p>
    #   @return [String]
    # @!attribute instance_arn
    #   <p>The Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the traffic distribution group.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATION_IN_PROGRESS</code> means the previous <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_CreateTrafficDistributionGroup.html">CreateTrafficDistributionGroup</a> operation is still in progress and has not yet
    #        completed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> means the previous <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_CreateTrafficDistributionGroup.html">CreateTrafficDistributionGroup</a> operation has succeeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATION_FAILED</code> indicates that the previous <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_CreateTrafficDistributionGroup.html">CreateTrafficDistributionGroup</a> operation has failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING_DELETION</code> means the previous <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteTrafficDistributionGroup.html">DeleteTrafficDistributionGroup</a> operation is still in progress and has not yet
    #        completed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETION_FAILED</code> means the previous <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteTrafficDistributionGroup.html">DeleteTrafficDistributionGroup</a> operation has failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_IN_PROGRESS</code> means the previous <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdateTrafficDistribution.html">UpdateTrafficDistribution</a> operation is still in progress and has not yet
    #        completed.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute is_default
    #   <p>Whether this is the default traffic distribution group created during instance
    #      replication. The default traffic distribution group cannot be deleted by the
    #      <code>DeleteTrafficDistributionGroup</code> API. The default traffic distribution group is deleted as
    #      part of the process for deleting a replica.</p>
    #            <note>
    #               <p>The <code>SignInConfig</code> distribution is available only on a 
    #   default <code>TrafficDistributionGroup</code> (see the <code>IsDefault</code> parameter in the 
    #   <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_TrafficDistributionGroup.html">TrafficDistributionGroup</a>
    #    data type). If you call
    #       <code>UpdateTrafficDistribution</code> with a modified <code>SignInConfig</code> and a non-default <code>TrafficDistributionGroup</code>,
    #       an <code>InvalidRequestException</code> is returned.</p>
    #            </note>
    #   @return [Boolean]
    class TrafficDistributionGroup < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :instance_arn,
      :status,
      :tags,
      :is_default,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_default] = false unless options.key?(:is_default)
        super
      end
    end

    # <p>Information about traffic distribution groups.</p>
    # @!attribute id
    #   <p>The identifier of the traffic distribution group.
    #   This can be the ID or the ARN if the API is being called in the Region where the traffic distribution group was created.
    #   The ARN must be provided if the call is from the replicated Region.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the traffic distribution group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the traffic distribution group.</p>
    #   @return [String]
    # @!attribute instance_arn
    #   <p>The Amazon Resource Name (ARN) of the traffic distribution group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the traffic distribution group. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATION_IN_PROGRESS</code> means the previous <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_CreateTrafficDistributionGroup.html">CreateTrafficDistributionGroup</a> operation is still in progress and has not yet
    #        completed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> means the previous <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_CreateTrafficDistributionGroup.html">CreateTrafficDistributionGroup</a> operation has succeeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATION_FAILED</code> indicates that the previous <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_CreateTrafficDistributionGroup.html">CreateTrafficDistributionGroup</a> operation has failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING_DELETION</code> means the previous <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteTrafficDistributionGroup.html">DeleteTrafficDistributionGroup</a> operation is still in progress and has not yet
    #        completed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETION_FAILED</code> means the previous <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteTrafficDistributionGroup.html">DeleteTrafficDistributionGroup</a> operation has failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_IN_PROGRESS</code> means the previous <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdateTrafficDistributionGroup.html">UpdateTrafficDistributionGroup</a> operation is still in progress and has not yet
    #        completed.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute is_default
    #   <p>Whether this is the default traffic distribution group created during instance
    #      replication. The default traffic distribution group cannot be deleted by the
    #      <code>DeleteTrafficDistributionGroup</code> API. The default traffic distribution group is deleted as
    #      part of the process for deleting a replica.</p>
    #   @return [Boolean]
    class TrafficDistributionGroupSummary < Struct.new(
      :id,
      :arn,
      :name,
      :instance_arn,
      :status,
      :is_default,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_default] = false unless options.key?(:is_default)
        super
      end
    end

    # <p>Summary information about a traffic distribution group user.</p>
    # @!attribute user_id
    #   <p>The identifier for the user. This can be the ID or the ARN of the user.</p>
    #   @return [String]
    class TrafficDistributionGroupUserSummary < Struct.new(
      :user_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that defines search criteria and matching logic to search for contacts by
    #    matching text with transcripts analyzed by Amazon Connect Contact Lens.</p>
    # @!attribute criteria
    #   <p>The list of search criteria based on Contact Lens conversational analytics
    #      transcript.</p>
    #   @return [Array<Types::TranscriptCriteria>]
    # @!attribute match_type
    #   <p>The match type combining search criteria using multiple transcript criteria.</p>
    #   @return [String]
    class Transcript < Struct.new(
      :criteria,
      :match_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that defines search criteria base on words or phrases, participants in the
    #    Contact Lens conversational analytics transcript.</p>
    # @!attribute participant_role
    #   <p>The participant role in a transcript</p>
    #   @return [String]
    # @!attribute search_text
    #   <p>The words or phrases used to search within a transcript.</p>
    #   @return [Array<String>]
    # @!attribute match_type
    #   <p>The match type combining search criteria using multiple search texts in a transcript
    #      criteria.</p>
    #   @return [String]
    class TranscriptCriteria < Struct.new(
      :participant_role,
      :search_text,
      :match_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier for the user. This can be the ID or the ARN of the user.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class TransferContactRequest < Struct.new(
      :instance_id,
      :contact_id,
      :queue_id,
      :user_id,
      :contact_flow_id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #   @return [String]
    # @!attribute contact_arn
    #   <p>The Amazon Resource Name (ARN) of the contact.</p>
    #   @return [String]
    class TransferContactResponse < Struct.new(
      :contact_id,
      :contact_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys. Existing tags on the contact whose keys are members of this list will be
    #      removed.</p>
    #   @return [Array<String>]
    class UntagContactRequest < Struct.new(
      :contact_id,
      :instance_id,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagContactResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute agent_status_id
    #   <p>The identifier of the agent status.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the agent status.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the agent status.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the agent status.</p>
    #   @return [String]
    # @!attribute display_order
    #   <p>The display order of the agent status.</p>
    #   @return [Integer]
    # @!attribute reset_order_number
    #   <p>A number indicating the reset order of the agent status.</p>
    #   @return [Boolean]
    class UpdateAgentStatusRequest < Struct.new(
      :instance_id,
      :agent_status_id,
      :name,
      :description,
      :state,
      :display_order,
      :reset_order_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_profile_id
    #   <p>A unique identifier for the authentication profile. </p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for the authentication profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the authentication profile.</p>
    #   @return [String]
    # @!attribute allowed_ips
    #   <p>A list of IP address range strings that are allowed to access the instance. For more
    #      information on how to configure IP addresses, see<a href="https://docs.aws.amazon.com/connect/latest/adminguide/authentication-profiles.html#configure-session-timeouts">Configure session timeouts</a> in the <i>Amazon Connect Administrator
    #       Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute blocked_ips
    #   <p>A list of IP address range strings that are blocked from accessing the instance. For more
    #      information on how to configure IP addresses, For more information on how to configure IP
    #      addresses, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/authentication-profiles.html#configure-ip-based-ac">Configure
    #       IP-based access control</a> in the <i>Amazon Connect Administrator
    #       Guide</i>. </p>
    #   @return [Array<String>]
    # @!attribute periodic_session_duration
    #   <p>The short lived session duration configuration for users logged in to Amazon Connect, in
    #      minutes. This value determines the maximum possible time before an agent is authenticated. For
    #      more information, For more information on how to configure IP addresses, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/authentication-profiles.html#configure-session-timeouts">Configure session timeouts</a> in the <i>Amazon Connect Administrator
    #       Guide</i>. </p>
    #   @return [Integer]
    class UpdateAuthenticationProfileRequest < Struct.new(
      :authentication_profile_id,
      :instance_id,
      :name,
      :description,
      :allowed_ips,
      :blocked_ips,
      :periodic_session_duration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>UpdateCase</code> action definition.</p>
    # @!attribute fields
    #   <p>An array of objects with <code>Field ID</code> and Value data.</p>
    #   @return [Array<Types::FieldValue>]
    class UpdateCaseActionDefinition < Struct.new(
      :fields,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute initial_contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>The Amazon Connect attributes. These attributes can be accessed in flows just like any
    #      other contact attributes.</p>
    #            <p>You can have up to 32,768 UTF-8 bytes across all attributes for a contact. Attribute keys
    #      can include only alphanumeric, dash, and underscore characters.</p>
    #            <p>In the <a href="https://docs.aws.amazon.com/connect/latest/adminguide/set-contact-attributes.html">Set contact attributes</a>
    #      block, when the attributes for a contact exceed 32 KB, the contact is routed down the Error
    #      branch of the flow. As a mitigation, consider the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>Remove unnecessary attributes by setting their values to empty.</p>
    #               </li>
    #               <li>
    #                  <p>If the attributes are only used in one flow and don't need to be referred to outside of
    #        that flow (for example, by a Lambda or another flow), then use flow attributes. This way you
    #        aren't needlessly persisting the 32 KB of information from one flow to another. For more
    #        information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/set-contact-attributes.html">Flow block: Set contact
    #         attributes</a> in the <i>Amazon Connect Administrator Guide</i>. </p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class UpdateContactAttributesRequest < Struct.new(
      :initial_contact_id,
      :instance_id,
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateContactAttributesResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute evaluation_id
    #   <p>A unique identifier for the contact evaluation.</p>
    #   @return [String]
    # @!attribute answers
    #   <p>A map of question identifiers to answer value.</p>
    #   @return [Hash<String, Types::EvaluationAnswerInput>]
    # @!attribute notes
    #   <p>A map of question identifiers to note value.</p>
    #   @return [Hash<String, Types::EvaluationNote>]
    class UpdateContactEvaluationRequest < Struct.new(
      :instance_id,
      :evaluation_id,
      :answers,
      :notes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluation_id
    #   <p>A unique identifier for the contact evaluation.</p>
    #   @return [String]
    # @!attribute evaluation_arn
    #   <p>The Amazon Resource Name (ARN) for the contact evaluation resource.</p>
    #   @return [String]
    class UpdateContactEvaluationResponse < Struct.new(
      :evaluation_id,
      :evaluation_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The JSON string that represents the content of the flow. For an example, see <a href="https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html">Example
    #       flow in Amazon Connect Flow language</a>. </p>
    #            <p>Length Constraints: Minimum length of 1. Maximum length of 256000.</p>
    #   @return [String]
    class UpdateContactFlowContentRequest < Struct.new(
      :instance_id,
      :contact_flow_id,
      :content,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateContactFlowContentResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the flow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the flow.</p>
    #   @return [String]
    # @!attribute contact_flow_state
    #   <p>The state of flow.</p>
    #   @return [String]
    class UpdateContactFlowMetadataRequest < Struct.new(
      :instance_id,
      :contact_flow_id,
      :name,
      :description,
      :contact_flow_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateContactFlowMetadataResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_flow_module_id
    #   <p>The identifier of the flow module.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The JSON string that represents the content of the flow. For an example, see <a href="https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html">Example
    #       flow in Amazon Connect Flow language</a>. </p>
    #   @return [String]
    class UpdateContactFlowModuleContentRequest < Struct.new(
      :instance_id,
      :contact_flow_module_id,
      :content,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateContactFlowModuleContentResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_flow_module_id
    #   <p>The identifier of the flow module.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the flow module.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the flow module.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of flow module.</p>
    #   @return [String]
    class UpdateContactFlowModuleMetadataRequest < Struct.new(
      :instance_id,
      :contact_flow_module_id,
      :name,
      :description,
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateContactFlowModuleMetadataResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the flow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the flow.</p>
    #   @return [String]
    class UpdateContactFlowNameRequest < Struct.new(
      :instance_id,
      :contact_flow_id,
      :name,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateContactFlowNameResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with your contact center.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the contact.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the contact.</p>
    #   @return [String]
    # @!attribute references
    #   <p>Well-formed data on contact, shown to agents on Contact Control Panel (CCP).</p>
    #   @return [Hash<String, Types::Reference>]
    # @!attribute segment_attributes
    #   <p>A set of system defined key-value pairs stored on individual contact segments (unique
    #      contact ID) using an attribute map. The attributes are standard Amazon Connect attributes.
    #      They can be accessed in flows.</p>
    #            <p>Attribute keys can include only alphanumeric, -, and _.</p>
    #            <p>This field can be used to show channel subtype, such as <code>connect:Guide</code>.</p>
    #            <p>Currently Contact Expiry is the only segment attribute which can be updated by using the
    #      UpdateContact API.</p>
    #   @return [Hash<String, Types::SegmentAttributeValue>]
    # @!attribute queue_info
    #   <p> Information about the queue associated with a contact. This parameter can only be updated
    #      for external audio contacts. It is used when you integrate third-party systems with Contact Lens for
    #      analytics. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-integration.html">Amazon Connect Contact Lens integration</a> in
    #      the <i>
    #       Amazon Connect Administrator Guide</i>.</p>
    #   @return [Types::QueueInfoInput]
    # @!attribute user_info
    #   <p>Information about the agent associated with a contact. This parameter can only be updated
    #      for external audio contacts. It is used when you integrate third-party systems with Contact Lens for
    #      analytics. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-integration.html">Amazon Connect Contact Lens integration</a> in
    #      the <i>
    #       Amazon Connect Administrator Guide</i>.</p>
    #   @return [Types::UserInfo]
    # @!attribute customer_endpoint
    #   <p>The endpoint of the customer for which the contact was initiated. For external audio
    #      contacts, this is usually the end customer's phone number. This value can only be updated for
    #      external audio contacts. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-integration.html">Amazon Connect Contact Lens
    #       integration</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #   @return [Types::Endpoint]
    # @!attribute system_endpoint
    #   <p>External system endpoint for the contact was initiated. For external audio contacts, this is
    #      the phone number of the external system such as the contact center. This value can only be
    #      updated for external audio contacts. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-integration.html">Amazon Connect Contact Lens
    #       integration</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #   @return [Types::Endpoint]
    class UpdateContactRequest < Struct.new(
      :instance_id,
      :contact_id,
      :name,
      :description,
      :references,
      :segment_attributes,
      :queue_info,
      :user_info,
      :customer_endpoint,
      :system_endpoint,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateContactResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #   @return [String]
    # @!attribute queue_time_adjustment_seconds
    #   <p>The number of seconds to add or subtract from the contact's routing age. Contacts are routed
    #      to agents on a first-come, first-serve basis. This means that changing their amount of time in
    #      queue compared to others also changes their position in queue.</p>
    #   @return [Integer]
    # @!attribute queue_priority
    #   <p>Priority of the contact in the queue. The default priority for new contacts is 5. You can
    #      raise the priority of a contact compared to other contacts in the queue by assigning them a
    #      higher priority, such as 1 or 2.</p>
    #   @return [Integer]
    # @!attribute routing_criteria
    #   <p>Updates the routing criteria on the contact. These properties can be used to change how a 
    #      contact is routed within the queue.</p>
    #   @return [Types::RoutingCriteriaInput]
    class UpdateContactRoutingDataRequest < Struct.new(
      :instance_id,
      :contact_id,
      :queue_time_adjustment_seconds,
      :queue_priority,
      :routing_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateContactRoutingDataResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact.</p>
    #   @return [String]
    # @!attribute scheduled_time
    #   <p>The timestamp, in Unix Epoch seconds format, at which to start running the inbound flow. The scheduled time cannot be in the past. It must be within up to 6 days in future. </p>
    #   @return [Time]
    class UpdateContactScheduleRequest < Struct.new(
      :instance_id,
      :contact_id,
      :scheduled_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateContactScheduleResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute email_address_id
    #   <p>The identifier of the email address.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the email address.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of email address.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class UpdateEmailAddressMetadataRequest < Struct.new(
      :instance_id,
      :email_address_id,
      :description,
      :display_name,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute email_address_id
    #   <p>The identifier of the email address.</p>
    #   @return [String]
    # @!attribute email_address_arn
    #   <p>The Amazon Resource Name (ARN) of the email address.</p>
    #   @return [String]
    class UpdateEmailAddressMetadataResponse < Struct.new(
      :email_address_id,
      :email_address_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute evaluation_form_id
    #   <p>The unique identifier for the evaluation form.</p>
    #   @return [String]
    # @!attribute evaluation_form_version
    #   <p>A version of the evaluation form to update.</p>
    #   @return [Integer]
    # @!attribute create_new_version
    #   <p>A flag indicating whether the operation must create a new version.</p>
    #   @return [Boolean]
    # @!attribute title
    #   <p>A title of the evaluation form.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the evaluation form.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Items that are part of the evaluation form.  The total number of sections and questions must not exceed 100 each.  Questions must be contained in a section.</p>
    #   @return [Array<Types::EvaluationFormItem>]
    # @!attribute scoring_strategy
    #   <p>A scoring strategy of the evaluation form.</p>
    #   @return [Types::EvaluationFormScoringStrategy]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class UpdateEvaluationFormRequest < Struct.new(
      :instance_id,
      :evaluation_form_id,
      :evaluation_form_version,
      :create_new_version,
      :title,
      :description,
      :items,
      :scoring_strategy,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluation_form_id
    #   <p>The unique identifier for the evaluation form.</p>
    #   @return [String]
    # @!attribute evaluation_form_arn
    #   <p>The Amazon Resource Name (ARN) for the contact evaluation resource.</p>
    #   @return [String]
    # @!attribute evaluation_form_version
    #   <p>The version of the updated evaluation form resource.</p>
    #   @return [Integer]
    class UpdateEvaluationFormResponse < Struct.new(
      :evaluation_form_id,
      :evaluation_form_arn,
      :evaluation_form_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:evaluation_form_version] = 0 unless options.key?(:evaluation_form_version)
        super
      end
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #   @return [String]
    # @!attribute hours_of_operation_override_id
    #   <p>The identifier for the hours of operation override.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the hours of operation override.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the hours of operation override.</p>
    #   @return [String]
    # @!attribute config
    #   <p>Configuration information for the hours of operation override: day, start time, and end
    #      time.</p>
    #   @return [Array<Types::HoursOfOperationOverrideConfig>]
    # @!attribute effective_from
    #   <p>The date from when the hours of operation override would be effective.</p>
    #   @return [String]
    # @!attribute effective_till
    #   <p>The date till when the hours of operation override would be effective.</p>
    #   @return [String]
    class UpdateHoursOfOperationOverrideRequest < Struct.new(
      :instance_id,
      :hours_of_operation_id,
      :hours_of_operation_override_id,
      :name,
      :description,
      :config,
      :effective_from,
      :effective_till,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute hours_of_operation_id
    #   <p>The identifier of the hours of operation.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the hours of operation.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the hours of operation.</p>
    #   @return [String]
    # @!attribute time_zone
    #   <p>The time zone of the hours of operation.</p>
    #   @return [String]
    # @!attribute config
    #   <p>Configuration information of the hours of operation.</p>
    #   @return [Array<Types::HoursOfOperationConfig>]
    class UpdateHoursOfOperationRequest < Struct.new(
      :instance_id,
      :hours_of_operation_id,
      :name,
      :description,
      :time_zone,
      :config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute attribute_type
    #   <p>The type of attribute.</p>
    #            <note>
    #               <p>Only allowlisted customers can consume USE_CUSTOM_TTS_VOICES. To access this feature,
    #       contact Amazon Web Services Support for allowlisting.</p>
    #            </note>
    #   @return [String]
    # @!attribute value
    #   <p>The value for the attribute. Maximum character limit is 100. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class UpdateInstanceAttributeRequest < Struct.new(
      :instance_id,
      :attribute_type,
      :value,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>A valid resource type.</p>
    #   @return [String]
    # @!attribute storage_config
    #   <p>The storage configuration for the instance.</p>
    #   @return [Types::InstanceStorageConfig]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class UpdateInstanceStorageConfigRequest < Struct.new(
      :instance_id,
      :association_id,
      :resource_type,
      :storage_config,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute state
    #   <p>The <code>state</code> query parameter that was provided by Cognito in the
    #       <code>redirectUri</code>. This will also match the <code>state</code> parameter provided in the
    #       <code>AuthenticationUrl</code> from the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_GetAuthenticationUrl.html">GetAuthenticationUrl</a>
    #      response.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The <code>code</code> query parameter provided by Cognito in the
    #      <code>redirectUri</code>.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The <code>error</code> query parameter provided by Cognito in the
    #      <code>redirectUri</code>.</p>
    #   @return [String]
    # @!attribute error_description
    #   <p>The <code>error_description</code> parameter provided by Cognito in the
    #       <code>redirectUri</code>.</p>
    #   @return [String]
    class UpdateParticipantAuthenticationRequest < Struct.new(
      :state,
      :instance_id,
      :code,
      :error,
      :error_description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateParticipantAuthenticationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information for the chat participant role.</p>
    # @!attribute chat
    #   <p>Configuration information for the chat participant role.</p>
    #   @return [Types::ChatParticipantRoleConfig]
    class UpdateParticipantRoleConfigChannelInfo < Struct.new(
      :chat,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Chat < UpdateParticipantRoleConfigChannelInfo; end
      class Unknown < UpdateParticipantRoleConfigChannelInfo; end
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #   @return [String]
    # @!attribute channel_configuration
    #   <p>The Amazon Connect channel you want to configure.</p>
    #   @return [Types::UpdateParticipantRoleConfigChannelInfo]
    class UpdateParticipantRoleConfigRequest < Struct.new(
      :instance_id,
      :contact_id,
      :channel_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateParticipantRoleConfigResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_id
    #   <p>The Amazon Resource Name (ARN) or resource ID of the phone number.</p>
    #   @return [String]
    # @!attribute phone_number_description
    #   <p>The description of the phone number.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class UpdatePhoneNumberMetadataRequest < Struct.new(
      :phone_number_id,
      :phone_number_description,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #   @return [String]
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) for Amazon Connect instances or traffic distribution groups that phone number inbound traffic is routed through. You must enter <code>InstanceId</code> or <code>TargetArn</code>. </p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance that phone numbers are claimed to. You
    #      can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the
    #       instance ID</a> in the Amazon Resource Name (ARN) of the instance. You must enter <code>InstanceId</code> or <code>TargetArn</code>. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class UpdatePhoneNumberRequest < Struct.new(
      :phone_number_id,
      :target_arn,
      :instance_id,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #   @return [String]
    # @!attribute phone_number_arn
    #   <p>The Amazon Resource Name (ARN) of the phone number.</p>
    #   @return [String]
    class UpdatePhoneNumberResponse < Struct.new(
      :phone_number_id,
      :phone_number_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instance ID in the Amazon Resource
    #      Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the predefined attribute.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values of the predefined attribute.</p>
    #   @return [Types::PredefinedAttributeValues]
    class UpdatePredefinedAttributeRequest < Struct.new(
      :instance_id,
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute prompt_id
    #   <p>A unique identifier for the prompt.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the prompt.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the prompt.</p>
    #   @return [String]
    # @!attribute s3_uri
    #   <p>The URI for the S3 bucket where the prompt is stored. You can provide S3 pre-signed URLs returned by the 
    #   <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_GetPromptFile.html">GetPromptFile</a>
    #    API instead of providing S3 URIs.</p>
    #   @return [String]
    class UpdatePromptRequest < Struct.new(
      :instance_id,
      :prompt_id,
      :name,
      :description,
      :s3_uri,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute prompt_arn
    #   <p>The Amazon Resource Name (ARN) of the prompt.</p>
    #   @return [String]
    # @!attribute prompt_id
    #   <p>A unique identifier for the prompt.</p>
    #   @return [String]
    class UpdatePromptResponse < Struct.new(
      :prompt_arn,
      :prompt_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #   @return [String]
    # @!attribute hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #   @return [String]
    class UpdateQueueHoursOfOperationRequest < Struct.new(
      :instance_id,
      :queue_id,
      :hours_of_operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #   @return [String]
    # @!attribute max_contacts
    #   <p>The maximum number of contacts that can be in the queue before it is considered full.</p>
    #   @return [Integer]
    class UpdateQueueMaxContactsRequest < Struct.new(
      :instance_id,
      :queue_id,
      :max_contacts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the queue.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the queue.</p>
    #   @return [String]
    class UpdateQueueNameRequest < Struct.new(
      :instance_id,
      :queue_id,
      :name,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #   @return [String]
    # @!attribute outbound_caller_config
    #   <p>The outbound caller ID name, number, and outbound whisper flow.</p>
    #   @return [Types::OutboundCallerConfig]
    class UpdateQueueOutboundCallerConfigRequest < Struct.new(
      :instance_id,
      :queue_id,
      :outbound_caller_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #   @return [String]
    # @!attribute outbound_email_config
    #   <p>The outbound email address ID for a specified queue.</p>
    #   @return [Types::OutboundEmailConfig]
    class UpdateQueueOutboundEmailConfigRequest < Struct.new(
      :instance_id,
      :queue_id,
      :outbound_email_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The identifier for the queue.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the queue.</p>
    #   @return [String]
    class UpdateQueueStatusRequest < Struct.new(
      :instance_id,
      :queue_id,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute quick_connect_id
    #   <p>The identifier for the quick connect.</p>
    #   @return [String]
    # @!attribute quick_connect_config
    #   <p>Information about the configuration settings for the quick connect.</p>
    #   @return [Types::QuickConnectConfig]
    class UpdateQuickConnectConfigRequest < Struct.new(
      :instance_id,
      :quick_connect_id,
      :quick_connect_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute quick_connect_id
    #   <p>The identifier for the quick connect.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the quick connect.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the quick connect.</p>
    #   @return [String]
    class UpdateQuickConnectNameRequest < Struct.new(
      :instance_id,
      :quick_connect_id,
      :name,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #   @return [String]
    # @!attribute agent_availability_timer
    #   <p>Whether agents with this routing profile will have their routing order calculated based on
    #       <i>time since their last inbound contact</i> or <i>longest idle
    #       time</i>. </p>
    #   @return [String]
    class UpdateRoutingProfileAgentAvailabilityTimerRequest < Struct.new(
      :instance_id,
      :routing_profile_id,
      :agent_availability_timer,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #   @return [String]
    # @!attribute media_concurrencies
    #   <p>The channels that agents can handle in the Contact Control Panel (CCP).</p>
    #   @return [Array<Types::MediaConcurrency>]
    class UpdateRoutingProfileConcurrencyRequest < Struct.new(
      :instance_id,
      :routing_profile_id,
      :media_concurrencies,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #   @return [String]
    # @!attribute default_outbound_queue_id
    #   <p>The identifier for the default outbound queue.</p>
    #   @return [String]
    class UpdateRoutingProfileDefaultOutboundQueueRequest < Struct.new(
      :instance_id,
      :routing_profile_id,
      :default_outbound_queue_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the routing profile. Must not be more than 127 characters.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the routing profile. Must not be more than 250 characters.</p>
    #   @return [String]
    class UpdateRoutingProfileNameRequest < Struct.new(
      :instance_id,
      :routing_profile_id,
      :name,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #   @return [String]
    # @!attribute queue_configs
    #   <p>The queues to be updated for this routing profile.
    #      Queues must first be associated to the routing
    #      profile. You can do this using AssociateRoutingProfileQueues.</p>
    #   @return [Array<Types::RoutingProfileQueueConfig>]
    class UpdateRoutingProfileQueuesRequest < Struct.new(
      :instance_id,
      :routing_profile_id,
      :queue_configs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_id
    #   <p>A unique identifier for the rule.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the rule. You can change the name only if <code>TriggerEventSource</code> is one
    #      of the following values: <code>OnZendeskTicketCreate</code> |
    #       <code>OnZendeskTicketStatusUpdate</code> | <code>OnSalesforceCaseCreate</code>
    #            </p>
    #   @return [String]
    # @!attribute function
    #   <p>The conditions of the rule.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>A list of actions to be run when the rule is triggered.</p>
    #   @return [Array<Types::RuleAction>]
    # @!attribute publish_status
    #   <p>The publish status of the rule.</p>
    #   @return [String]
    class UpdateRuleRequest < Struct.new(
      :rule_id,
      :instance_id,
      :name,
      :function,
      :actions,
      :publish_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>The description of the security profile.</p>
    #   @return [String]
    # @!attribute permissions
    #   <p>The permissions granted to a security profile. For a list of valid permissions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html">List of security
    #       profile permissions</a>.</p>
    #   @return [Array<String>]
    # @!attribute security_profile_id
    #   <p>The identifier for the security profle.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute allowed_access_control_tags
    #   <p>The list of tags that a security profile uses to restrict access to resources in Amazon Connect.</p>
    #   @return [Hash<String, String>]
    # @!attribute tag_restricted_resources
    #   <p>The list of resources that a security profile applies tag restrictions to in Amazon Connect.</p>
    #   @return [Array<String>]
    # @!attribute applications
    #   <p>A list of the third-party application's metadata.</p>
    #   @return [Array<Types::Application>]
    # @!attribute hierarchy_restricted_resources
    #   <p>The list of resources that a security profile applies hierarchy restrictions to in Amazon Connect. Following are acceptable ResourceNames: <code>User</code>.</p>
    #   @return [Array<String>]
    # @!attribute allowed_access_control_hierarchy_group_id
    #   <p>The identifier of the hierarchy group that a security profile uses to restrict access to
    #      resources in Amazon Connect.</p>
    #   @return [String]
    class UpdateSecurityProfileRequest < Struct.new(
      :description,
      :permissions,
      :security_profile_id,
      :instance_id,
      :allowed_access_control_tags,
      :tag_restricted_resources,
      :applications,
      :hierarchy_restricted_resources,
      :allowed_access_control_hierarchy_group_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_template_id
    #   <p>A unique identifier for the task template.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the task template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the task template.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow that runs by default when a task is created by referencing this template.</p>
    #   @return [String]
    # @!attribute self_assign_flow_id
    #   <p>The ContactFlowId for the flow that will be run if this template is used to create a
    #      self-assigned task.</p>
    #   @return [String]
    # @!attribute constraints
    #   <p>Constraints that are applicable to the fields listed.</p>
    #   @return [Types::TaskTemplateConstraints]
    # @!attribute defaults
    #   <p>The default values for fields when a task is created by referencing this template.</p>
    #   @return [Types::TaskTemplateDefaults]
    # @!attribute status
    #   <p>Marks a template as <code>ACTIVE</code> or <code>INACTIVE</code> for a task to refer to it. 
    #   Tasks can only be created from <code>ACTIVE</code> templates.
    #   If a template is marked as <code>INACTIVE</code>, then a task that refers to this template cannot be created.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>Fields that are part of the template.</p>
    #   @return [Array<Types::TaskTemplateField>]
    class UpdateTaskTemplateRequest < Struct.new(
      :task_template_id,
      :instance_id,
      :name,
      :description,
      :contact_flow_id,
      :self_assign_flow_id,
      :constraints,
      :defaults,
      :status,
      :fields,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the task template resource.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the task template resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the task template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the task template.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow that runs by default when a task is created by referencing this template.</p>
    #   @return [String]
    # @!attribute self_assign_flow_id
    #   <p>The ContactFlowId for the flow that will be run if this template is used to create a
    #      self-assigned task.</p>
    #   @return [String]
    # @!attribute constraints
    #   <p>Constraints that are applicable to the fields listed.</p>
    #   @return [Types::TaskTemplateConstraints]
    # @!attribute defaults
    #   <p>The default values for fields when a task is created by referencing this template.</p>
    #   @return [Types::TaskTemplateDefaults]
    # @!attribute fields
    #   <p>Fields that are part of the template.</p>
    #   @return [Array<Types::TaskTemplateField>]
    # @!attribute status
    #   <p>Marks a template as <code>ACTIVE</code> or <code>INACTIVE</code> for a task to refer to it. 
    #   Tasks can only be created from <code>ACTIVE</code> templates.
    #   If a template is marked as <code>INACTIVE</code>, then a task that refers to this template cannot be created.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp when the task template was last modified.</p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>The timestamp when the task template was created.</p>
    #   @return [Time]
    class UpdateTaskTemplateResponse < Struct.new(
      :instance_id,
      :id,
      :arn,
      :name,
      :description,
      :contact_flow_id,
      :self_assign_flow_id,
      :constraints,
      :defaults,
      :fields,
      :status,
      :last_modified_time,
      :created_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the traffic distribution group.
    #   This can be the ID or the ARN if the API is being called in the Region where the traffic distribution group was created.
    #   The ARN must be provided if the call is from the replicated Region. </p>
    #   @return [String]
    # @!attribute telephony_config
    #   <p>The distribution of traffic between the instance and its replica(s).</p>
    #   @return [Types::TelephonyConfig]
    # @!attribute sign_in_config
    #   <p>The distribution that determines which Amazon Web Services Regions should be used to sign in
    #      agents in to both the instance and its replica(s).</p>
    #   @return [Types::SignInConfig]
    # @!attribute agent_config
    #   <p>The distribution of agents between the instance and its replica(s).</p>
    #   @return [Types::AgentConfig]
    class UpdateTrafficDistributionRequest < Struct.new(
      :id,
      :telephony_config,
      :sign_in_config,
      :agent_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateTrafficDistributionResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the hierarchy group. Must not be more than 100 characters.</p>
    #   @return [String]
    # @!attribute hierarchy_group_id
    #   <p>The identifier of the hierarchy group.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    class UpdateUserHierarchyGroupNameRequest < Struct.new(
      :name,
      :hierarchy_group_id,
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hierarchy_group_id
    #   <p>The identifier of the hierarchy group.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier of the user account.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    class UpdateUserHierarchyRequest < Struct.new(
      :hierarchy_group_id,
      :user_id,
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute hierarchy_structure
    #   <p>The hierarchy levels to update.</p>
    #   @return [Types::HierarchyStructureUpdate]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    class UpdateUserHierarchyStructureRequest < Struct.new(
      :hierarchy_structure,
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_info
    #   <p>The identity information for the user.</p>
    #   @return [Types::UserIdentityInfo]
    # @!attribute user_id
    #   <p>The identifier of the user account.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    class UpdateUserIdentityInfoRequest < Struct.new(
      :identity_info,
      :user_id,
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_config
    #   <p>Information about phone configuration settings for the user.</p>
    #   @return [Types::UserPhoneConfig]
    # @!attribute user_id
    #   <p>The identifier of the user account.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    class UpdateUserPhoneConfigRequest < Struct.new(
      :phone_config,
      :user_id,
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p> The identifier of the Amazon Connect instance. You can find the instance ID in the Amazon Resource
    #      Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier of the user account.</p>
    #   @return [String]
    # @!attribute user_proficiencies
    #   <p>The proficiencies to be updated for the user. Proficiencies must first be associated to the
    #      user. You can do this using AssociateUserProficiencies API.</p>
    #   @return [Array<Types::UserProficiency>]
    class UpdateUserProficienciesRequest < Struct.new(
      :instance_id,
      :user_id,
      :user_proficiencies,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile for the user.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier of the user account.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    class UpdateUserRoutingProfileRequest < Struct.new(
      :routing_profile_id,
      :user_id,
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_profile_ids
    #   <p>The identifiers of the security profiles for the user.</p>
    #   @return [Array<String>]
    # @!attribute user_id
    #   <p>The identifier of the user account.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    class UpdateUserSecurityProfilesRequest < Struct.new(
      :security_profile_ids,
      :user_id,
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    #   @return [String]
    # @!attribute view_id
    #   <p>The identifier of the view. Both <code>ViewArn</code> and <code>ViewId</code> can be
    #      used.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the view status as either <code>SAVED</code> or <code>PUBLISHED</code>. The
    #       <code>PUBLISHED</code> status will initiate validation on the content.</p>
    #   @return [String]
    # @!attribute content
    #   <p>View content containing all content necessary to render a view except for runtime input data
    #      and the runtime input schema, which is auto-generated by this operation.</p>
    #            <p>The total uncompressed content has a maximum file size of 400kB.</p>
    #   @return [Types::ViewInputContent]
    class UpdateViewContentRequest < Struct.new(
      :instance_id,
      :view_id,
      :status,
      :content,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute view
    #   <p>A view resource object. Contains metadata and content necessary to render the view.</p>
    #   @return [Types::View]
    class UpdateViewContentResponse < Struct.new(
      :view,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    #   @return [String]
    # @!attribute view_id
    #   <p>The identifier of the view. Both <code>ViewArn</code> and <code>ViewId</code> can be
    #      used.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the view.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the view.</p>
    #   @return [String]
    class UpdateViewMetadataRequest < Struct.new(
      :instance_id,
      :view_id,
      :name,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateViewMetadataResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Fields required when uploading an attached file. </p>
    # @!attribute url
    #   <p>A pre-signed S3 URL that should be used for uploading the attached file. </p>
    #   @return [String]
    # @!attribute url_expiry
    #   <p>The expiration time of the URL in ISO timestamp. It's specified in ISO 8601 format:
    #       <code>yyyy-MM-ddThh:mm:ss.SSSZ</code>. For example,
    #      <code>2019-11-08T02:41:28.172Z</code>.</p>
    #   @return [String]
    # @!attribute headers_to_include
    #   <p>A map of headers that should be provided when uploading the attached file. </p>
    #   @return [Hash<String, String>]
    class UploadUrlMetadata < Struct.new(
      :url,
      :url_expiry,
      :headers_to_include,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The URL reference.</p>
    # @!attribute name
    #   <p>Identifier of the URL reference.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A valid URL.</p>
    #   @return [String]
    class UrlReference < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the
    #    use
    #    case.</p>
    # @!attribute use_case_id
    #   <p>The identifier for the use case.</p>
    #   @return [String]
    # @!attribute use_case_arn
    #   <p>The Amazon Resource Name (ARN) for the use case.</p>
    #   @return [String]
    # @!attribute use_case_type
    #   <p>The type of use case to associate to the integration association. Each integration
    #      association can have only one of each use case type.</p>
    #   @return [String]
    class UseCase < Struct.new(
      :use_case_id,
      :use_case_arn,
      :use_case_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a user account for an Amazon Connect instance.</p>
    # @!attribute id
    #   <p>The identifier of the user account.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the user account.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The user name assigned to the user account.</p>
    #   @return [String]
    # @!attribute identity_info
    #   <p>Information about the user identity.</p>
    #   @return [Types::UserIdentityInfo]
    # @!attribute phone_config
    #   <p>Information about the phone configuration for the user.</p>
    #   @return [Types::UserPhoneConfig]
    # @!attribute directory_user_id
    #   <p>The identifier of the user account in the directory used for identity management.</p>
    #   @return [String]
    # @!attribute security_profile_ids
    #   <p>The identifiers of the security profiles for the user.</p>
    #   @return [Array<String>]
    # @!attribute routing_profile_id
    #   <p>The identifier of the routing profile for the user.</p>
    #   @return [String]
    # @!attribute hierarchy_group_id
    #   <p>The identifier of the hierarchy group for the user.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The
    #      tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
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
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Data for a user.</p>
    # @!attribute user
    #   <p>Information about the user for the data that is returned. It contains the
    #       <code>resourceId</code> and ARN of the user. </p>
    #   @return [Types::UserReference]
    # @!attribute routing_profile
    #   <p>Information about the routing profile that is assigned to the user.</p>
    #   @return [Types::RoutingProfileReference]
    # @!attribute hierarchy_path
    #   <p>Contains information about the levels of a hierarchy group assigned to a user.</p>
    #   @return [Types::HierarchyPathReference]
    # @!attribute status
    #   <p>The status of the agent that they manually set in their Contact Control Panel (CCP), or that
    #      the supervisor manually changes in the real-time metrics report.</p>
    #   @return [Types::AgentStatusReference]
    # @!attribute available_slots_by_channel
    #   <p>A map of available slots by channel. The key is a channel name. The value is an integer: the
    #      available number of slots. </p>
    #   @return [Hash<String, Integer>]
    # @!attribute max_slots_by_channel
    #   <p>A map of maximum slots by channel. The key is a channel name. The value is an integer: the
    #      maximum number of slots. This is calculated from <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_MediaConcurrency.html">MediaConcurrency</a> of the
    #       <code>RoutingProfile</code> assigned to the agent. </p>
    #   @return [Hash<String, Integer>]
    # @!attribute active_slots_by_channel
    #   <p> A map of active slots by channel. The key is a channel name. The value is an integer: the
    #      number of active slots. </p>
    #   @return [Hash<String, Integer>]
    # @!attribute contacts
    #   <p>A list of contact reference information.</p>
    #   @return [Array<Types::AgentContactReference>]
    # @!attribute next_status
    #   <p>The Next status of the agent.</p>
    #   @return [String]
    class UserData < Struct.new(
      :user,
      :routing_profile,
      :hierarchy_path,
      :status,
      :available_slots_by_channel,
      :max_slots_by_channel,
      :active_slots_by_channel,
      :contacts,
      :next_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for the user data.</p>
    # @!attribute queues
    #   <p>A list of up to 100 queues or ARNs.</p>
    #   @return [Array<String>]
    # @!attribute contact_filter
    #   <p>A filter for the user data based on the contact information that is associated to the user.
    #      It contains a list of contact states. </p>
    #   @return [Types::ContactFilter]
    # @!attribute routing_profiles
    #   <p>A list of up to 100 routing profile IDs or ARNs.</p>
    #   @return [Array<String>]
    # @!attribute agents
    #   <p>A list of up to 100 agent IDs or ARNs.</p>
    #   @return [Array<String>]
    # @!attribute user_hierarchy_groups
    #   <p>A UserHierarchyGroup ID or ARN.</p>
    #   @return [Array<String>]
    class UserDataFilters < Struct.new(
      :queues,
      :contact_filter,
      :routing_profiles,
      :agents,
      :user_hierarchy_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The search criteria to be used to return userHierarchyGroup.</p>
    # @!attribute or_conditions
    #   <p>A list of conditions which would be applied together with an OR condition.</p>
    #   @return [Array<Types::UserHierarchyGroupSearchCriteria>]
    # @!attribute and_conditions
    #   <p>A list of conditions which would be applied together with an AND condition.</p>
    #   @return [Array<Types::UserHierarchyGroupSearchCriteria>]
    # @!attribute string_condition
    #   <p>A leaf node condition which can be used to specify a string condition.</p>
    #            <note>
    #               <p>The currently supported values for <code>FieldName</code> are <code>name</code>,  
    #        <code>parentId</code>, <code>levelId</code>, and <code>resourceID</code>.</p>
    #            </note>
    #   @return [Types::StringCondition]
    class UserHierarchyGroupSearchCriteria < Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters to be applied to search results.</p>
    # @!attribute attribute_filter
    #   <p>An object that can be used to specify Tag conditions inside the SearchFilter. This accepts
    #      an OR or AND (List of List) input where:</p>
    #            <ul>
    #               <li>
    #                  <p>The top level list specifies conditions that need to be applied with <code>OR</code>
    #        operator.</p>
    #               </li>
    #               <li>
    #                  <p>The inner list specifies conditions that need to be applied with <code>AND</code>
    #        operator.</p>
    #               </li>
    #            </ul>
    #   @return [Types::ControlPlaneAttributeFilter]
    class UserHierarchyGroupSearchFilter < Struct.new(
      :attribute_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the identity of a user.</p>
    #          <note>
    #             <p>For Amazon Connect instances that are created with the <code>EXISTING_DIRECTORY</code>
    #     identity management type, <code>FirstName</code>, <code>LastName</code>, and <code>Email</code>
    #     cannot be updated from within Amazon Connect because they are managed by the
    #     directory.</p>
    #          </note>
    #          <important>
    #             <p>The <code>FirstName</code> and <code>LastName</code> length constraints below apply only to
    #     instances using SAML for identity management. If you are using Amazon Connect for identity
    #     management, the length constraints are 1-255 for <code>FirstName</code>, and 1-256 for
    #      <code>LastName</code>. </p>
    #          </important>
    # @!attribute first_name
    #   <p>The first name. This is required if you are using Amazon Connect or SAML for identity
    #      management. Inputs must be in Unicode Normalization Form C (NFC). Text containing characters in a
    #      non-NFC form (for example, decomposed characters or combining marks) are not accepted.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>The last name. This is required if you are using Amazon Connect or SAML for identity
    #      management. Inputs must be in Unicode Normalization Form C (NFC). Text containing characters in a
    #      non-NFC form (for example, decomposed characters or combining marks) are not accepted.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address. If you are using SAML for identity management and include this parameter,
    #      an error is returned.</p>
    #   @return [String]
    # @!attribute secondary_email
    #   <p>The user's secondary email address. If you provide a secondary email, the user receives
    #      email notifications - other than password reset notifications - to this email address instead of
    #      to their primary email address.</p>
    #            <p>Pattern: <code>(?=^.{0,265}$)[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,63}</code>
    #            </p>
    #   @return [String]
    # @!attribute mobile
    #   <p>The user's mobile number.</p>
    #   @return [String]
    class UserIdentityInfo < Struct.new(
      :first_name,
      :last_name,
      :email,
      :secondary_email,
      :mobile,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The user's first name and last name.</p>
    # @!attribute first_name
    #   <p>The user's first name.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>The user's last name.</p>
    #   @return [String]
    class UserIdentityInfoLite < Struct.new(
      :first_name,
      :last_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The user details for the contact.</p>
    # @!attribute user_id
    #   <p>The user identifier for the contact.</p>
    #   @return [String]
    class UserInfo < Struct.new(
      :user_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>No user with the specified credentials was found in the Amazon Connect instance.</p>
    # @!attribute message
    #   @return [String]
    class UserNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the phone configuration settings for a user.</p>
    # @!attribute phone_type
    #   <p>The phone type.</p>
    #   @return [String]
    # @!attribute auto_accept
    #   <p>The Auto accept setting.</p>
    #   @return [Boolean]
    # @!attribute after_contact_work_time_limit
    #   <p>The After Call Work (ACW) timeout setting, in seconds. This parameter has a minimum value of
    #      0 and a maximum value of 2,000,000 seconds (24 days). Enter 0 if you don't want to allocate a
    #      specific amount of ACW time. It essentially means an indefinite amount of time. When the
    #      conversation ends, ACW starts; the agent must choose Close contact to end ACW. </p>
    #            <note>
    #               <p>When returned by a <code>SearchUsers</code> call, <code>AfterContactWorkTimeLimit</code> is
    #       returned in milliseconds. </p>
    #            </note>
    #   @return [Integer]
    # @!attribute desk_phone_number
    #   <p>The phone number for the user's desk phone.</p>
    #   @return [String]
    class UserPhoneConfig < Struct.new(
      :phone_type,
      :auto_accept,
      :after_contact_work_time_limit,
      :desk_phone_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:auto_accept] = false unless options.key?(:auto_accept)
        options[:after_contact_work_time_limit] = 0 unless options.key?(:after_contact_work_time_limit)
        super
      end
    end

    # <p>Information about proficiency of a user.</p>
    # @!attribute attribute_name
    #   <p>The name of user's proficiency. You must use name of predefined attribute present in the
    #      Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute attribute_value
    #   <p>The value of user's proficiency. You must use value of predefined attribute present in the
    #      Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute level
    #   <p>The level of the proficiency. The valid values are 1, 2, 3, 4 and 5.</p>
    #   @return [Float]
    class UserProficiency < Struct.new(
      :attribute_name,
      :attribute_value,
      :level,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:level] = 1 unless options.key?(:level)
        super
      end
    end

    # <p>Information about proficiency to be disassociated from the user.</p>
    # @!attribute attribute_name
    #   <p>The name of user's proficiency.</p>
    #   @return [String]
    # @!attribute attribute_value
    #   <p>The value of user's proficiency.</p>
    #   @return [String]
    class UserProficiencyDisassociate < Struct.new(
      :attribute_name,
      :attribute_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the quick connect configuration settings for a user. The contact
    #    flow must be of type Transfer to Agent.</p>
    # @!attribute user_id
    #   <p>The identifier of the user.</p>
    #   @return [String]
    # @!attribute contact_flow_id
    #   <p>The identifier of the flow.</p>
    #   @return [String]
    class UserQuickConnectConfig < Struct.new(
      :user_id,
      :contact_flow_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the user.</p>
    # @!attribute id
    #   <p>The unique identifier for the user.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the user.</p>
    #   @return [String]
    class UserReference < Struct.new(
      :id,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The search criteria to be used to return users.</p>
    #          <note>
    #             <p>The <code>name</code> and <code>description</code> fields support "contains" queries with
    #     a minimum of 2 characters and a maximum of 25 characters. Any queries with character lengths
    #     outside of this range will throw invalid results.  </p>
    #          </note>
    # @!attribute or_conditions
    #   <p>A list of conditions which would be applied together with an <code>OR</code>
    #      condition.</p>
    #   @return [Array<Types::UserSearchCriteria>]
    # @!attribute and_conditions
    #   <p>A list of conditions which would be applied together with an <code>AND</code> condition.
    #     </p>
    #   @return [Array<Types::UserSearchCriteria>]
    # @!attribute string_condition
    #   <p>A leaf node condition which can be used to specify a string condition.</p>
    #            <p>The currently supported values for <code>FieldName</code> are <code>Username</code>,
    #       <code>FirstName</code>, <code>LastName</code>, <code>RoutingProfileId</code>,
    #       <code>SecurityProfileId</code>, <code>ResourceId</code>.</p>
    #   @return [Types::StringCondition]
    # @!attribute list_condition
    #   <p>A leaf node condition which can be used to specify a List condition to search users with
    #      attributes included in Lists like Proficiencies.</p>
    #   @return [Types::ListCondition]
    # @!attribute hierarchy_group_condition
    #   <p>A leaf node condition which can be used to specify a hierarchy group condition.</p>
    #   @return [Types::HierarchyGroupCondition]
    class UserSearchCriteria < Struct.new(
      :or_conditions,
      :and_conditions,
      :string_condition,
      :list_condition,
      :hierarchy_group_condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters to be applied to search results.</p>
    # @!attribute tag_filter
    #   <p>An object that can be used to specify Tag conditions inside the <code>SearchFilter</code>.
    #      This accepts an <code>OR</code> of <code>AND</code> (List of List) input where: </p>
    #            <ul>
    #               <li>
    #                  <p>Top level list specifies conditions that need to be applied with <code>OR</code>
    #        operator</p>
    #               </li>
    #               <li>
    #                  <p>Inner list specifies conditions that need to be applied with <code>AND</code>
    #        operator.</p>
    #               </li>
    #            </ul>
    #   @return [Types::ControlPlaneTagFilter]
    # @!attribute user_attribute_filter
    #   <p>An object that can be used to specify Tag conditions or Hierarchy Group conditions inside
    #      the SearchFilter.</p>
    #            <p>This accepts an <code>OR</code> of <code>AND</code> (List of List) input where:</p>
    #            <ul>
    #               <li>
    #                  <p>The top level list specifies conditions that need to be applied with <code>OR</code>
    #        operator.</p>
    #               </li>
    #               <li>
    #                  <p>The inner list specifies conditions that need to be applied with <code>AND</code>
    #        operator.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Only one field can be populated. This object can’t be used along with TagFilter. Request
    #       can either contain TagFilter or UserAttributeFilter if SearchFilter is specified, combination of
    #       both is not supported and such request will throw AccessDeniedException.</p>
    #            </note>
    #   @return [Types::ControlPlaneUserAttributeFilter]
    class UserSearchFilter < Struct.new(
      :tag_filter,
      :user_attribute_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the returned users.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the user.</p>
    #   @return [String]
    # @!attribute directory_user_id
    #   <p>The directory identifier of the user.</p>
    #   @return [String]
    # @!attribute hierarchy_group_id
    #   <p>The identifier of the user's hierarchy group.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the user's summary.</p>
    #   @return [String]
    # @!attribute identity_info
    #   <p>The user's first name and last name.</p>
    #   @return [Types::UserIdentityInfoLite]
    # @!attribute phone_config
    #   <p>Contains information about the phone configuration settings for a user.</p>
    #   @return [Types::UserPhoneConfig]
    # @!attribute routing_profile_id
    #   <p>The identifier of the user's routing profile.</p>
    #   @return [String]
    # @!attribute security_profile_ids
    #   <p>The identifiers of the user's security profiles.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    # @!attribute username
    #   <p>The name of the user.</p>
    #   @return [String]
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
      :username,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a user.</p>
    # @!attribute id
    #   <p>The identifier of the user account.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the user account.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The Amazon Connect user name of the user account.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp when this resource was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    #   @return [String]
    class UserSummary < Struct.new(
      :id,
      :arn,
      :username,
      :last_modified_time,
      :last_modified_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A view resource object. Contains metadata and content necessary to render the view.</p>
    # @!attribute id
    #   <p>The identifier of the view.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the view.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the view.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the view status as either <code>SAVED</code> or <code>PUBLISHED</code>. The
    #       <code>PUBLISHED</code> status will initiate validation on the content.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the view - <code>CUSTOMER_MANAGED</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the view.</p>
    #   @return [String]
    # @!attribute version
    #   <p>Current version of the view.</p>
    #   @return [Integer]
    # @!attribute version_description
    #   <p>The description of the version.</p>
    #   @return [String]
    # @!attribute content
    #   <p>View content containing all content necessary to render a view except for runtime input
    #      data.</p>
    #   @return [Types::ViewContent]
    # @!attribute tags
    #   <p>The tags associated with the view resource (not specific to view version).</p>
    #   @return [Hash<String, String>]
    # @!attribute created_time
    #   <p>The timestamp of when the view was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>Latest timestamp of the <code>UpdateViewContent</code> or <code>CreateViewVersion</code>
    #      operations.</p>
    #   @return [Time]
    # @!attribute view_content_sha256
    #   <p>Indicates the checksum value of the latest published view content.</p>
    #   @return [String]
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
      :view_content_sha256,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

    # <p>View content containing all content necessary to render a view except for runtime input
    #    data.</p>
    # @!attribute input_schema
    #   <p>The data schema matching data that the view template must be provided to render.</p>
    #   @return [String]
    # @!attribute template
    #   <p>The view template representing the structure of the view.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>A list of possible actions from the view.</p>
    #   @return [Array<String>]
    class ViewContent < Struct.new(
      :input_schema,
      :template,
      :actions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>View content containing all content necessary to render a view except for runtime input data
    #    and the runtime input schema, which is auto-generated by this operation.</p>
    # @!attribute template
    #   <p>The view template representing the structure of the view.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>A list of possible actions from the view.</p>
    #   @return [Array<String>]
    class ViewInputContent < Struct.new(
      :template,
      :actions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a view's metadata.</p>
    # @!attribute id
    #   <p>The identifier of the view.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the view.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the view.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the view.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the view status as either <code>SAVED</code> or <code>PUBLISHED</code>. The
    #       <code>PUBLISHED</code> status will initiate validation on the content.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the view.</p>
    #   @return [String]
    class ViewSummary < Struct.new(
      :id,
      :arn,
      :name,
      :type,
      :status,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a view version's metadata.</p>
    # @!attribute id
    #   <p>The identifier of the view version.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the view version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the view version.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the view version.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the view version.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The sequentially incremented version of the view version.</p>
    #   @return [Integer]
    # @!attribute version_description
    #   <p>The description of the view version.</p>
    #   @return [String]
    class ViewVersionSummary < Struct.new(
      :id,
      :arn,
      :description,
      :name,
      :type,
      :version,
      :version_description,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = 0 unless options.key?(:version)
        super
      end
    end

    # <p>Contains information about a custom vocabulary.</p>
    # @!attribute name
    #   <p>A unique name of the custom vocabulary.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the custom vocabulary.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the custom vocabulary.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see 
    #   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html">What is Amazon Transcribe?</a>
    #            </p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the custom vocabulary.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp when the custom vocabulary was last modified.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>The reason why the custom vocabulary was not created.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the custom vocabulary in plain-text format with a table of values. Each row
    #      in the table represents a word or a phrase, described with <code>Phrase</code>, <code>IPA</code>,
    #       <code>SoundsLike</code>, and <code>DisplayAs</code> fields. Separate the fields with TAB
    #      characters. For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html#create-vocabulary-table">Create a custom
    #       vocabulary using a table</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Hash<String, String>]
    class Vocabulary < Struct.new(
      :name,
      :id,
      :arn,
      :language_code,
      :state,
      :last_modified_time,
      :failure_reason,
      :content,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about the custom vocabulary.</p>
    # @!attribute name
    #   <p>A unique name of the custom vocabulary.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the custom vocabulary.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the custom vocabulary.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see 
    #   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html">What is Amazon Transcribe?</a>
    #            </p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the custom vocabulary.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The timestamp when the custom vocabulary was last modified.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>The reason why the custom vocabulary was not created.</p>
    #   @return [String]
    class VocabularySummary < Struct.new(
      :name,
      :id,
      :arn,
      :language_code,
      :state,
      :last_modified_time,
      :failure_reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the recording configuration settings.</p>
    # @!attribute voice_recording_track
    #   <p>Identifies which track is being recorded.</p>
    #   @return [String]
    # @!attribute ivr_recording_track
    #   <p>Identifies which IVR track is being recorded.</p>
    #            <p>One and only one of the track configurations should be presented in the request.</p>
    #   @return [String]
    class VoiceRecordingConfiguration < Struct.new(
      :voice_recording_track,
      :ivr_recording_track,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about Amazon Connect Wisdom.</p>
    # @!attribute session_arn
    #   <p>The Amazon Resource Name (ARN) of the Wisdom session.</p>
    #   @return [String]
    class WisdomInfo < Struct.new(
      :session_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end

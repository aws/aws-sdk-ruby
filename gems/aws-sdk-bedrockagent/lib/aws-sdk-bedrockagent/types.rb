# frozen_string_literal: true

# This is generated code!

module Aws::BedrockAgent
  # This module contains the types returned by client operations.
  module Types

    # <p>Contains details about the OpenAPI schema for the action group. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html">Action group OpenAPI schemas</a>. You can either include the schema directly in the <code>payload</code> field or you can upload it to an S3 bucket and specify the S3 bucket location in the <code>s3</code> field.</p>
    # @!attribute s3
    #   <p>Contains details about the S3 object containing the OpenAPI schema for the action group. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html">Action group OpenAPI schemas</a>.</p>
    #   @return [Types::S3Identifier]
    # @!attribute payload
    #   <p>The JSON or YAML-formatted payload defining the OpenAPI schema for the action group. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html">Action group OpenAPI schemas</a>.</p>
    #   @return [String]
    class APISchema < Struct.new(
      :s3,
      :payload,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3 < APISchema; end
      class Payload < APISchema; end
      class Unknown < APISchema; end
    end

    # <p>The request is denied because of missing access permissions.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the Lambda function containing the business logic that is carried out upon invoking the action or the custom control method for handling the information elicited from the user.</p>
    # @!attribute lambda
    #   <p>The Amazon Resource Name (ARN) of the Lambda function containing the business logic that is carried out upon invoking the action.</p>
    #   @return [String]
    # @!attribute custom_control
    #   <p>To return the action group invocation results directly in the <code>InvokeAgent</code> response, specify <code>RETURN_CONTROL</code>.</p>
    #   @return [String]
    class ActionGroupExecutor < Struct.new(
      :lambda,
      :custom_control,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Lambda < ActionGroupExecutor; end
      class CustomControl < ActionGroupExecutor; end
      class Unknown < ActionGroupExecutor; end
    end

    # <p>Contains details about an action group.</p>
    # @!attribute action_group_id
    #   <p>The unique identifier of the action group.</p>
    #   @return [String]
    # @!attribute action_group_name
    #   <p>The name of the action group.</p>
    #   @return [String]
    # @!attribute action_group_state
    #   <p>Specifies whether the action group is available for the agent to invoke or not when sending an <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html">InvokeAgent</a> request.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the action group.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The time at which the action group was last updated.</p>
    #   @return [Time]
    class ActionGroupSummary < Struct.new(
      :action_group_id,
      :action_group_name,
      :action_group_state,
      :description,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about an agent.</p>
    # @!attribute agent_id
    #   <p>The unique identifier of the agent.</p>
    #   @return [String]
    # @!attribute agent_name
    #   <p>The name of the agent.</p>
    #   @return [String]
    # @!attribute agent_arn
    #   <p>The Amazon Resource Name (ARN) of the agent.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version of the agent.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute instruction
    #   <p>Instructions that tell the agent what it should do and how it should interact with users.</p>
    #   @return [String]
    # @!attribute agent_status
    #   <p>The status of the agent and whether it is ready for use. The following statuses are possible:</p> <ul> <li> <p>CREATING – The agent is being created.</p> </li> <li> <p>PREPARING – The agent is being prepared.</p> </li> <li> <p>PREPARED – The agent is prepared and ready to be invoked.</p> </li> <li> <p>NOT_PREPARED – The agent has been created but not yet prepared.</p> </li> <li> <p>FAILED – The agent API operation failed.</p> </li> <li> <p>UPDATING – The agent is being updated.</p> </li> <li> <p>DELETING – The agent is being deleted.</p> </li> </ul>
    #   @return [String]
    # @!attribute foundation_model
    #   <p>The foundation model used for orchestration by the agent.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the agent.</p>
    #   @return [String]
    # @!attribute orchestration_type
    #   <p> Specifies the orchestration strategy for the agent. </p>
    #   @return [String]
    # @!attribute custom_orchestration
    #   <p> Contains custom orchestration configurations for the agent. </p>
    #   @return [Types::CustomOrchestration]
    # @!attribute idle_session_ttl_in_seconds
    #   <p>The number of seconds for which Amazon Bedrock keeps information about a user's conversation with the agent.</p> <p>A user interaction remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Bedrock deletes any data provided before the timeout.</p>
    #   @return [Integer]
    # @!attribute agent_resource_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role with permissions to invoke API operations on the agent.</p>
    #   @return [String]
    # @!attribute customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key that encrypts the agent.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the agent was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the agent was last updated.</p>
    #   @return [Time]
    # @!attribute prepared_at
    #   <p>The time at which the agent was last prepared.</p>
    #   @return [Time]
    # @!attribute failure_reasons
    #   <p>Contains reasons that the agent-related API that you invoked failed.</p>
    #   @return [Array<String>]
    # @!attribute recommended_actions
    #   <p>Contains recommended actions to take for the agent-related API that you invoked to succeed.</p>
    #   @return [Array<String>]
    # @!attribute prompt_override_configuration
    #   <p>Contains configurations to override prompt templates in different parts of an agent sequence. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html">Advanced prompts</a>.</p>
    #   @return [Types::PromptOverrideConfiguration]
    # @!attribute guardrail_configuration
    #   <p>Details about the guardrail associated with the agent.</p>
    #   @return [Types::GuardrailConfiguration]
    # @!attribute memory_configuration
    #   <p>Contains memory configuration for the agent.</p>
    #   @return [Types::MemoryConfiguration]
    # @!attribute agent_collaboration
    #   <p>The agent's collaboration settings.</p>
    #   @return [String]
    class Agent < Struct.new(
      :agent_id,
      :agent_name,
      :agent_arn,
      :agent_version,
      :client_token,
      :instruction,
      :agent_status,
      :foundation_model,
      :description,
      :orchestration_type,
      :custom_orchestration,
      :idle_session_ttl_in_seconds,
      :agent_resource_role_arn,
      :customer_encryption_key_arn,
      :created_at,
      :updated_at,
      :prepared_at,
      :failure_reasons,
      :recommended_actions,
      :prompt_override_configuration,
      :guardrail_configuration,
      :memory_configuration,
      :agent_collaboration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about an action group.</p>
    # @!attribute agent_id
    #   <p>The unique identifier of the agent to which the action group belongs.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version of the agent to which the action group belongs.</p>
    #   @return [String]
    # @!attribute action_group_id
    #   <p>The unique identifier of the action group.</p>
    #   @return [String]
    # @!attribute action_group_name
    #   <p>The name of the action group.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the action group.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the action group was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the action group was last updated.</p>
    #   @return [Time]
    # @!attribute parent_action_signature
    #   <p>If this field is set as <code>AMAZON.UserInput</code>, the agent can request the user for additional information when trying to complete a task. The <code>description</code>, <code>apiSchema</code>, and <code>actionGroupExecutor</code> fields must be blank for this action group.</p> <p>During orchestration, if the agent determines that it needs to invoke an API in an action group, but doesn't have enough information to complete the API request, it will invoke this action group instead and return an <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Observation.html">Observation</a> reprompting the user for more information.</p>
    #   @return [String]
    # @!attribute parent_action_group_signature_params
    #   <p>The configuration settings for a computer use action.</p> <important> <p> Computer use is a new Anthropic Claude model capability (in beta) available with Claude 3.7 Sonnet and Claude 3.5 Sonnet v2 only. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html">Configure an Amazon Bedrock Agent to complete tasks with computer use tools</a>. </p> </important>
    #   @return [Hash<String, String>]
    # @!attribute action_group_executor
    #   <p>The Amazon Resource Name (ARN) of the Lambda function containing the business logic that is carried out upon invoking the action or the custom control method for handling the information elicited from the user.</p>
    #   @return [Types::ActionGroupExecutor]
    # @!attribute api_schema
    #   <p>Contains either details about the S3 object containing the OpenAPI schema for the action group or the JSON or YAML-formatted payload defining the schema. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html">Action group OpenAPI schemas</a>.</p>
    #   @return [Types::APISchema]
    # @!attribute function_schema
    #   <p>Defines functions that each define parameters that the agent needs to invoke from the user. Each function represents an action in an action group.</p>
    #   @return [Types::FunctionSchema]
    # @!attribute action_group_state
    #   <p>Specifies whether the action group is available for the agent to invoke or not when sending an <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html">InvokeAgent</a> request.</p>
    #   @return [String]
    class AgentActionGroup < Struct.new(
      :agent_id,
      :agent_version,
      :action_group_id,
      :action_group_name,
      :client_token,
      :description,
      :created_at,
      :updated_at,
      :parent_action_signature,
      :parent_action_group_signature_params,
      :action_group_executor,
      :api_schema,
      :function_schema,
      :action_group_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about an alias of an agent.</p>
    # @!attribute agent_id
    #   <p>The unique identifier of the agent.</p>
    #   @return [String]
    # @!attribute agent_alias_id
    #   <p>The unique identifier of the alias of the agent.</p>
    #   @return [String]
    # @!attribute agent_alias_name
    #   <p>The name of the alias of the agent.</p>
    #   @return [String]
    # @!attribute agent_alias_arn
    #   <p>The Amazon Resource Name (ARN) of the alias of the agent.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the alias of the agent.</p>
    #   @return [String]
    # @!attribute routing_configuration
    #   <p>Contains details about the routing configuration of the alias.</p>
    #   @return [Array<Types::AgentAliasRoutingConfigurationListItem>]
    # @!attribute created_at
    #   <p>The time at which the alias of the agent was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the alias was last updated.</p>
    #   @return [Time]
    # @!attribute agent_alias_history_events
    #   <p>Contains details about the history of the alias.</p>
    #   @return [Array<Types::AgentAliasHistoryEvent>]
    # @!attribute agent_alias_status
    #   <p>The status of the alias of the agent and whether it is ready for use. The following statuses are possible:</p> <ul> <li> <p>CREATING – The agent alias is being created.</p> </li> <li> <p>PREPARED – The agent alias is finished being created or updated and is ready to be invoked.</p> </li> <li> <p>FAILED – The agent alias API operation failed.</p> </li> <li> <p>UPDATING – The agent alias is being updated.</p> </li> <li> <p>DELETING – The agent alias is being deleted.</p> </li> <li> <p>DISSOCIATED - The agent alias has no version associated with it.</p> </li> </ul>
    #   @return [String]
    # @!attribute failure_reasons
    #   <p>Information on the failure of Provisioned Throughput assigned to an agent alias.</p>
    #   @return [Array<String>]
    # @!attribute alias_invocation_state
    #   <p>The invocation state for the agent alias. If the agent alias is running, the value is <code>ACCEPT_INVOCATIONS</code>. If the agent alias is paused, the value is <code>REJECT_INVOCATIONS</code>. Use the <code>UpdateAgentAlias</code> operation to change the invocation state.</p>
    #   @return [String]
    class AgentAlias < Struct.new(
      :agent_id,
      :agent_alias_id,
      :agent_alias_name,
      :agent_alias_arn,
      :client_token,
      :description,
      :routing_configuration,
      :created_at,
      :updated_at,
      :agent_alias_history_events,
      :agent_alias_status,
      :failure_reasons,
      :alias_invocation_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the history of the alias.</p>
    # @!attribute routing_configuration
    #   <p>Contains details about the version of the agent with which the alias is associated.</p>
    #   @return [Array<Types::AgentAliasRoutingConfigurationListItem>]
    # @!attribute end_date
    #   <p>The date that the alias stopped being associated to the version in the <code>routingConfiguration</code> object</p>
    #   @return [Time]
    # @!attribute start_date
    #   <p>The date that the alias began being associated to the version in the <code>routingConfiguration</code> object.</p>
    #   @return [Time]
    class AgentAliasHistoryEvent < Struct.new(
      :routing_configuration,
      :end_date,
      :start_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the routing configuration of the alias.</p>
    # @!attribute agent_version
    #   <p>The version of the agent with which the alias is associated.</p>
    #   @return [String]
    # @!attribute provisioned_throughput
    #   <p>Information on the Provisioned Throughput assigned to an agent alias.</p>
    #   @return [String]
    class AgentAliasRoutingConfigurationListItem < Struct.new(
      :agent_version,
      :provisioned_throughput,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about an alias of an agent.</p>
    # @!attribute agent_alias_id
    #   <p>Contains details about </p>
    #   @return [String]
    # @!attribute agent_alias_name
    #   <p>The name of the alias.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the alias.</p>
    #   @return [String]
    # @!attribute routing_configuration
    #   <p>Contains details about the version of the agent with which the alias is associated.</p>
    #   @return [Array<Types::AgentAliasRoutingConfigurationListItem>]
    # @!attribute agent_alias_status
    #   <p>The status of the alias.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the alias of the agent was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the alias was last updated.</p>
    #   @return [Time]
    # @!attribute alias_invocation_state
    #   <p>The invocation state for the agent alias. If the agent alias is running, the value is <code>ACCEPT_INVOCATIONS</code>. If the agent alias is paused, the value is <code>REJECT_INVOCATIONS</code>. Use the <code>UpdateAgentAlias</code> operation to change the invocation state.</p>
    #   @return [String]
    class AgentAliasSummary < Struct.new(
      :agent_alias_id,
      :agent_alias_name,
      :description,
      :routing_configuration,
      :agent_alias_status,
      :created_at,
      :updated_at,
      :alias_invocation_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An agent collaborator.</p>
    # @!attribute agent_id
    #   <p>The collaborator's agent ID.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The collaborator's agent version.</p>
    #   @return [String]
    # @!attribute agent_descriptor
    #   <p>The collaborator's agent descriptor.</p>
    #   @return [Types::AgentDescriptor]
    # @!attribute collaborator_id
    #   <p>The collaborator's collaborator ID.</p>
    #   @return [String]
    # @!attribute collaboration_instruction
    #   <p>The collaborator's instructions.</p>
    #   @return [String]
    # @!attribute collaborator_name
    #   <p>The collaborator's collaborator name.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>When the collaborator was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>When the collaborator was updated.</p>
    #   @return [Time]
    # @!attribute relay_conversation_history
    #   <p>The collaborator's relay conversation history.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The collaborator's client token.</p>
    #   @return [String]
    class AgentCollaborator < Struct.new(
      :agent_id,
      :agent_version,
      :agent_descriptor,
      :collaborator_id,
      :collaboration_instruction,
      :collaborator_name,
      :created_at,
      :last_updated_at,
      :relay_conversation_history,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An agent collaborator summary.</p>
    # @!attribute agent_id
    #   <p>The collaborator's agent ID.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The collaborator's agent version.</p>
    #   @return [String]
    # @!attribute collaborator_id
    #   <p>The collaborator's ID.</p>
    #   @return [String]
    # @!attribute agent_descriptor
    #   <p>The collaborator's agent descriptor.</p>
    #   @return [Types::AgentDescriptor]
    # @!attribute collaboration_instruction
    #   <p>The collaborator's collaboration instruction.</p>
    #   @return [String]
    # @!attribute relay_conversation_history
    #   <p>The collaborator's relay conversation history.</p>
    #   @return [String]
    # @!attribute collaborator_name
    #   <p>The collaborator's name.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>When the collaborator was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>When the collaborator was last updated.</p>
    #   @return [Time]
    class AgentCollaboratorSummary < Struct.new(
      :agent_id,
      :agent_version,
      :collaborator_id,
      :agent_descriptor,
      :collaboration_instruction,
      :relay_conversation_history,
      :collaborator_name,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An agent descriptor.</p>
    # @!attribute alias_arn
    #   <p>The agent's alias ARN.</p>
    #   @return [String]
    class AgentDescriptor < Struct.new(
      :alias_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines an agent node in your flow. You specify the agent to invoke at this point in the flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-nodes.html">Node types in a flow</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute agent_alias_arn
    #   <p>The Amazon Resource Name (ARN) of the alias of the agent to invoke.</p>
    #   @return [String]
    class AgentFlowNodeConfiguration < Struct.new(
      :agent_alias_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:agent_alias_arn] = '' unless options.key?(:agent_alias_arn)
        super
      end
    end

    # <p>Contains details about a knowledge base that is associated with an agent.</p>
    # @!attribute agent_id
    #   <p>The unique identifier of the agent with which the knowledge base is associated.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version of the agent with which the knowledge base is associated.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the association between the agent and the knowledge base.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the association between the agent and the knowledge base.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the association between the agent and the knowledge base was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the association between the agent and the knowledge base was last updated.</p>
    #   @return [Time]
    # @!attribute knowledge_base_state
    #   <p>Specifies whether to use the knowledge base or not when sending an <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html">InvokeAgent</a> request.</p>
    #   @return [String]
    class AgentKnowledgeBase < Struct.new(
      :agent_id,
      :agent_version,
      :knowledge_base_id,
      :description,
      :created_at,
      :updated_at,
      :knowledge_base_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a knowledge base associated with an agent.</p>
    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base associated with an agent.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the knowledge base associated with an agent.</p>
    #   @return [String]
    # @!attribute knowledge_base_state
    #   <p>Specifies whether the agent uses the knowledge base or not when sending an <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html">InvokeAgent</a> request.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The time at which the knowledge base associated with an agent was last updated.</p>
    #   @return [Time]
    class AgentKnowledgeBaseSummary < Struct.new(
      :knowledge_base_id,
      :description,
      :knowledge_base_state,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about an agent.</p>
    # @!attribute agent_id
    #   <p>The unique identifier of the agent.</p>
    #   @return [String]
    # @!attribute agent_name
    #   <p>The name of the agent.</p>
    #   @return [String]
    # @!attribute agent_status
    #   <p>The status of the agent.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the agent.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The time at which the agent was last updated.</p>
    #   @return [Time]
    # @!attribute latest_agent_version
    #   <p>The latest version of the agent.</p>
    #   @return [String]
    # @!attribute guardrail_configuration
    #   <p>Details about the guardrail associated with the agent.</p>
    #   @return [Types::GuardrailConfiguration]
    class AgentSummary < Struct.new(
      :agent_id,
      :agent_name,
      :agent_status,
      :description,
      :updated_at,
      :latest_agent_version,
      :guardrail_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a version of an agent.</p>
    # @!attribute agent_id
    #   <p>The unique identifier of the agent that the version belongs to.</p>
    #   @return [String]
    # @!attribute agent_name
    #   <p>The name of the agent that the version belongs to.</p>
    #   @return [String]
    # @!attribute agent_arn
    #   <p>The Amazon Resource Name (ARN) of the agent that the version belongs to.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version number.</p>
    #   @return [String]
    # @!attribute instruction
    #   <p>The instructions provided to the agent.</p>
    #   @return [String]
    # @!attribute agent_status
    #   <p>The status of the agent that the version belongs to.</p>
    #   @return [String]
    # @!attribute foundation_model
    #   <p>The foundation model that the version invokes.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the version.</p>
    #   @return [String]
    # @!attribute idle_session_ttl_in_seconds
    #   <p>The number of seconds for which Amazon Bedrock keeps information about a user's conversation with the agent.</p> <p>A user interaction remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Bedrock deletes any data provided before the timeout.</p>
    #   @return [Integer]
    # @!attribute agent_resource_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role with permissions to invoke API operations on the agent.</p>
    #   @return [String]
    # @!attribute customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key that encrypts the agent.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the version was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the version was last updated.</p>
    #   @return [Time]
    # @!attribute failure_reasons
    #   <p>A list of reasons that the API operation on the version failed.</p>
    #   @return [Array<String>]
    # @!attribute recommended_actions
    #   <p>A list of recommended actions to take for the failed API operation on the version to succeed.</p>
    #   @return [Array<String>]
    # @!attribute prompt_override_configuration
    #   <p>Contains configurations to override prompt templates in different parts of an agent sequence. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html">Advanced prompts</a>.</p>
    #   @return [Types::PromptOverrideConfiguration]
    # @!attribute guardrail_configuration
    #   <p>Details about the guardrail associated with the agent.</p>
    #   @return [Types::GuardrailConfiguration]
    # @!attribute memory_configuration
    #   <p> Contains details of the memory configuration on the version of the agent. </p>
    #   @return [Types::MemoryConfiguration]
    # @!attribute agent_collaboration
    #   <p>The agent's collaboration settings.</p>
    #   @return [String]
    class AgentVersion < Struct.new(
      :agent_id,
      :agent_name,
      :agent_arn,
      :version,
      :instruction,
      :agent_status,
      :foundation_model,
      :description,
      :idle_session_ttl_in_seconds,
      :agent_resource_role_arn,
      :customer_encryption_key_arn,
      :created_at,
      :updated_at,
      :failure_reasons,
      :recommended_actions,
      :prompt_override_configuration,
      :guardrail_configuration,
      :memory_configuration,
      :agent_collaboration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a version of an agent.</p>
    # @!attribute agent_name
    #   <p>The name of the agent to which the version belongs.</p>
    #   @return [String]
    # @!attribute agent_status
    #   <p>The status of the agent to which the version belongs.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version of the agent.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the version was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the version was last updated.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the version of the agent.</p>
    #   @return [String]
    # @!attribute guardrail_configuration
    #   <p>Details about the guardrail associated with the agent.</p>
    #   @return [Types::GuardrailConfiguration]
    class AgentVersionSummary < Struct.new(
      :agent_name,
      :agent_status,
      :agent_version,
      :created_at,
      :updated_at,
      :description,
      :guardrail_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines tools, at least one of which must be requested by the model. No text is generated but the results of tool use are sent back to the model to help generate a response. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Use a tool to complete an Amazon Bedrock model response</a>.</p>
    class AnyToolChoice < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The agent's ID.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>An agent version.</p>
    #   @return [String]
    # @!attribute agent_descriptor
    #   <p>The alias of the collaborator agent.</p>
    #   @return [Types::AgentDescriptor]
    # @!attribute collaborator_name
    #   <p>A name for the collaborator.</p>
    #   @return [String]
    # @!attribute collaboration_instruction
    #   <p>Instruction for the collaborator.</p>
    #   @return [String]
    # @!attribute relay_conversation_history
    #   <p>A relay conversation history for the collaborator.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A client token.</p>
    #   @return [String]
    class AssociateAgentCollaboratorRequest < Struct.new(
      :agent_id,
      :agent_version,
      :agent_descriptor,
      :collaborator_name,
      :collaboration_instruction,
      :relay_conversation_history,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_collaborator
    #   <p>Details about the collaborator.</p>
    #   @return [Types::AgentCollaborator]
    class AssociateAgentCollaboratorResponse < Struct.new(
      :agent_collaborator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent with which you want to associate the knowledge base.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version of the agent with which you want to associate the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base to associate with the agent.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of what the agent should use the knowledge base for.</p>
    #   @return [String]
    # @!attribute knowledge_base_state
    #   <p>Specifies whether to use the knowledge base or not when sending an <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html">InvokeAgent</a> request.</p>
    #   @return [String]
    class AssociateAgentKnowledgeBaseRequest < Struct.new(
      :agent_id,
      :agent_version,
      :knowledge_base_id,
      :description,
      :knowledge_base_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_knowledge_base
    #   <p>Contains details about the knowledge base that has been associated with the agent.</p>
    #   @return [Types::AgentKnowledgeBase]
    class AssociateAgentKnowledgeBaseResponse < Struct.new(
      :agent_knowledge_base,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines tools. The model automatically decides whether to call a tool or to generate text instead. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Use a tool to complete an Amazon Bedrock model response</a>.</p>
    class AutoToolChoice < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for using Amazon Bedrock Data Automation as the parser for ingesting your data sources.</p>
    # @!attribute parsing_modality
    #   <p>Specifies whether to enable parsing of multimodal data, including both text and/or images.</p>
    #   @return [String]
    class BedrockDataAutomationConfiguration < Struct.new(
      :parsing_modality,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The vector configuration details for the Bedrock embeddings model.</p>
    # @!attribute dimensions
    #   <p>The dimensions details for the vector configuration used on the Bedrock embeddings model.</p>
    #   @return [Integer]
    # @!attribute embedding_data_type
    #   <p>The data type for the vectors when using a model to convert text into vector embeddings. The model must support the specified data type for vector embeddings. Floating-point (float32) is the default data type, and is supported by most models for vector embeddings. See <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-supported.html">Supported embeddings models</a> for information on the available models and their vector data types.</p>
    #   @return [String]
    class BedrockEmbeddingModelConfiguration < Struct.new(
      :dimensions,
      :embedding_data_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for a foundation model used to parse documents for a data source.</p>
    # @!attribute model_arn
    #   <p>The ARN of the foundation model to use for parsing.</p>
    #   @return [String]
    # @!attribute parsing_prompt
    #   <p>Instructions for interpreting the contents of a document.</p>
    #   @return [Types::ParsingPrompt]
    # @!attribute parsing_modality
    #   <p>Specifies whether to enable parsing of multimodal data, including both text and/or images.</p>
    #   @return [String]
    class BedrockFoundationModelConfiguration < Struct.new(
      :model_arn,
      :parsing_prompt,
      :parsing_modality,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Context enrichment configuration is used to provide additional context to the RAG application using Amazon Bedrock foundation models.</p>
    # @!attribute enrichment_strategy_configuration
    #   <p>The enrichment stategy used to provide additional context. For example, Neptune GraphRAG uses Amazon Bedrock foundation models to perform chunk entity extraction.</p>
    #   @return [Types::EnrichmentStrategyConfiguration]
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the model used to create vector embeddings for the knowledge base.</p>
    #   @return [String]
    class BedrockFoundationModelContextEnrichmentConfiguration < Struct.new(
      :enrichment_strategy_configuration,
      :model_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about content defined inline in bytes.</p>
    # @!attribute mime_type
    #   <p>The MIME type of the content. For a list of MIME types, see <a href="https://www.iana.org/assignments/media-types/media-types.xhtml">Media Types</a>. The following MIME types are supported:</p> <ul> <li> <p>text/plain</p> </li> <li> <p>text/html</p> </li> <li> <p>text/csv</p> </li> <li> <p>text/vtt</p> </li> <li> <p>message/rfc822</p> </li> <li> <p>application/xhtml+xml</p> </li> <li> <p>application/pdf</p> </li> <li> <p>application/msword</p> </li> <li> <p>application/vnd.ms-word.document.macroenabled.12</p> </li> <li> <p>application/vnd.ms-word.template.macroenabled.12</p> </li> <li> <p>application/vnd.ms-excel</p> </li> <li> <p>application/vnd.ms-excel.addin.macroenabled.12</p> </li> <li> <p>application/vnd.ms-excel.sheet.macroenabled.12</p> </li> <li> <p>application/vnd.ms-excel.template.macroenabled.12</p> </li> <li> <p>application/vnd.ms-excel.sheet.binary.macroenabled.12</p> </li> <li> <p>application/vnd.ms-spreadsheetml</p> </li> <li> <p>application/vnd.openxmlformats-officedocument.spreadsheetml.sheet</p> </li> <li> <p>application/vnd.openxmlformats-officedocument.spreadsheetml.template</p> </li> <li> <p>application/vnd.openxmlformats-officedocument.wordprocessingml.document</p> </li> <li> <p>application/vnd.openxmlformats-officedocument.wordprocessingml.template</p> </li> </ul>
    #   @return [String]
    # @!attribute data
    #   <p>The base64-encoded string of the content.</p>
    #   @return [String]
    class ByteContentDoc < Struct.new(
      :mime_type,
      :data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates where a cache checkpoint is located. All information before this checkpoint is cached to be accessed on subsequent requests.</p>
    # @!attribute type
    #   <p>Indicates that the CachePointBlock is of the default type</p>
    #   @return [String]
    class CachePointBlock < Struct.new(
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations to use a prompt in a conversational format. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-create.html">Create a prompt using Prompt management</a>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute messages
    #   <p>Contains messages in the chat for the prompt.</p>
    #   @return [Array<Types::Message>]
    # @!attribute system
    #   <p>Contains system prompts to provide context to the model or to describe how it should behave.</p>
    #   @return [Array<Types::SystemContentBlock>]
    # @!attribute input_variables
    #   <p>An array of the variables in the prompt template.</p>
    #   @return [Array<Types::PromptInputVariable>]
    # @!attribute tool_configuration
    #   <p>Configuration information for the tools that the model can use when generating a response.</p>
    #   @return [Types::ToolConfiguration]
    class ChatPromptTemplateConfiguration < Struct.new(
      :messages,
      :system,
      :input_variables,
      :tool_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about how to chunk the documents in the data source. A <i>chunk</i> refers to an excerpt from a data source that is returned when the knowledge base that it belongs to is queried.</p>
    # @!attribute chunking_strategy
    #   <p>Knowledge base can split your source data into chunks. A <i>chunk</i> refers to an excerpt from a data source that is returned when the knowledge base that it belongs to is queried. You have the following options for chunking your data. If you opt for <code>NONE</code>, then you may want to pre-process your files by splitting them up such that each file corresponds to a chunk.</p> <ul> <li> <p> <code>FIXED_SIZE</code> – Amazon Bedrock splits your source data into chunks of the approximate size that you set in the <code>fixedSizeChunkingConfiguration</code>.</p> </li> <li> <p> <code>HIERARCHICAL</code> – Split documents into layers of chunks where the first layer contains large chunks, and the second layer contains smaller chunks derived from the first layer.</p> </li> <li> <p> <code>SEMANTIC</code> – Split documents into chunks based on groups of similar content derived with natural language processing.</p> </li> <li> <p> <code>NONE</code> – Amazon Bedrock treats each file as one chunk. If you choose this option, you may want to pre-process your documents by splitting them into separate files.</p> </li> </ul>
    #   @return [String]
    # @!attribute fixed_size_chunking_configuration
    #   <p>Configurations for when you choose fixed-size chunking. If you set the <code>chunkingStrategy</code> as <code>NONE</code>, exclude this field.</p>
    #   @return [Types::FixedSizeChunkingConfiguration]
    # @!attribute hierarchical_chunking_configuration
    #   <p>Settings for hierarchical document chunking for a data source. Hierarchical chunking splits documents into layers of chunks where the first layer contains large chunks, and the second layer contains smaller chunks derived from the first layer.</p>
    #   @return [Types::HierarchicalChunkingConfiguration]
    # @!attribute semantic_chunking_configuration
    #   <p>Settings for semantic document chunking for a data source. Semantic chunking splits a document into into smaller documents based on groups of similar content derived from the text with natural language processing.</p>
    #   @return [Types::SemanticChunkingConfiguration]
    class ChunkingConfiguration < Struct.new(
      :chunking_strategy,
      :fixed_size_chunking_configuration,
      :hierarchical_chunking_configuration,
      :semantic_chunking_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a collector node in your flow. This node takes an iteration of inputs and consolidates them into an array in the output. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-nodes.html">Node types in a flow</a> in the Amazon Bedrock User Guide.</p>
    class CollectorFlowNodeConfiguration < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a condition node in your flow. You can specify conditions that determine which node comes next in the flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-nodes.html">Node types in a flow</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute conditions
    #   <p>An array of conditions. Each member contains the name of a condition and an expression that defines the condition.</p>
    #   @return [Array<Types::FlowCondition>]
    class ConditionFlowNodeConfiguration < Struct.new(
      :conditions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There was a conflict performing an operation.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of the Confluence content. For example, configuring specific types of Confluence content.</p>
    # @!attribute filter_configuration
    #   <p>The configuration of filtering the Confluence content. For example, configuring regular expression patterns to include or exclude certain content.</p>
    #   @return [Types::CrawlFilterConfiguration]
    class ConfluenceCrawlerConfiguration < Struct.new(
      :filter_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration information to connect to Confluence as your data source.</p>
    # @!attribute source_configuration
    #   <p>The endpoint information to connect to your Confluence data source.</p>
    #   @return [Types::ConfluenceSourceConfiguration]
    # @!attribute crawler_configuration
    #   <p>The configuration of the Confluence content. For example, configuring specific types of Confluence content.</p>
    #   @return [Types::ConfluenceCrawlerConfiguration]
    class ConfluenceDataSourceConfiguration < Struct.new(
      :source_configuration,
      :crawler_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The endpoint information to connect to your Confluence data source.</p>
    # @!attribute host_url
    #   <p>The Confluence host URL or instance URL.</p>
    #   @return [String]
    # @!attribute host_type
    #   <p>The supported host type, whether online/cloud or server/on-premises.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The supported authentication type to authenticate and connect to your Confluence instance.</p>
    #   @return [String]
    # @!attribute credentials_secret_arn
    #   <p>The Amazon Resource Name of an Secrets Manager secret that stores your authentication credentials for your Confluence instance URL. For more information on the key-value pairs that must be included in your secret, depending on your authentication type, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/confluence-data-source-connector.html#configuration-confluence-connector">Confluence connection configuration</a>.</p>
    #   @return [String]
    class ConfluenceSourceConfiguration < Struct.new(
      :host_url,
      :host_type,
      :auth_type,
      :credentials_secret_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the content for the message you pass to, or receive from a model. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-create.html">Create a prompt using Prompt management</a>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute text
    #   <p>The text in the message.</p>
    #   @return [String]
    # @!attribute cache_point
    #   <p>Creates a cache checkpoint within a message.</p>
    #   @return [Types::CachePointBlock]
    class ContentBlock < Struct.new(
      :text,
      :cache_point,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < ContentBlock; end
      class CachePoint < ContentBlock; end
      class Unknown < ContentBlock; end
    end

    # <p>Context enrichment configuration is used to provide additional context to the RAG application.</p>
    # @!attribute type
    #   <p>The method used for context enrichment. It must be Amazon Bedrock foundation models.</p>
    #   @return [String]
    # @!attribute bedrock_foundation_model_configuration
    #   <p>The configuration of the Amazon Bedrock foundation model used for context enrichment.</p>
    #   @return [Types::BedrockFoundationModelContextEnrichmentConfiguration]
    class ContextEnrichmentConfiguration < Struct.new(
      :type,
      :bedrock_foundation_model_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of filtering the data source content. For example, configuring regular expression patterns to include or exclude certain content.</p>
    # @!attribute type
    #   <p>The type of filtering that you want to apply to certain objects or content of the data source. For example, the <code>PATTERN</code> type is regular expression patterns you can apply to filter your content.</p>
    #   @return [String]
    # @!attribute pattern_object_filter
    #   <p>The configuration of filtering certain objects or content types of the data source.</p>
    #   @return [Types::PatternObjectFilterConfiguration]
    class CrawlFilterConfiguration < Struct.new(
      :type,
      :pattern_object_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent for which to create the action group.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version of the agent for which to create the action group.</p>
    #   @return [String]
    # @!attribute action_group_name
    #   <p>The name to give the action group.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the action group.</p>
    #   @return [String]
    # @!attribute parent_action_group_signature
    #   <p>Specify a built-in or computer use action for this action group. If you specify a value, you must leave the <code>description</code>, <code>apiSchema</code>, and <code>actionGroupExecutor</code> fields empty for this action group. </p> <ul> <li> <p>To allow your agent to request the user for additional information when trying to complete a task, set this field to <code>AMAZON.UserInput</code>. </p> </li> <li> <p>To allow your agent to generate, run, and troubleshoot code when trying to complete a task, set this field to <code>AMAZON.CodeInterpreter</code>.</p> </li> <li> <p>To allow your agent to use an Anthropic computer use tool, specify one of the following values. </p> <important> <p> Computer use is a new Anthropic Claude model capability (in beta) available with Anthropic Claude 3.7 Sonnet and Claude 3.5 Sonnet v2 only. When operating computer use functionality, we recommend taking additional security precautions, such as executing computer actions in virtual environments with restricted data access and limited internet connectivity. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html">Configure an Amazon Bedrock Agent to complete tasks with computer use tools</a>. </p> </important> <ul> <li> <p> <code>ANTHROPIC.Computer</code> - Gives the agent permission to use the mouse and keyboard and take screenshots.</p> </li> <li> <p> <code>ANTHROPIC.TextEditor</code> - Gives the agent permission to view, create and edit files.</p> </li> <li> <p> <code>ANTHROPIC.Bash</code> - Gives the agent permission to run commands in a bash shell.</p> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute parent_action_group_signature_params
    #   <p>The configuration settings for a computer use action.</p> <important> <p> Computer use is a new Anthropic Claude model capability (in beta) available with Anthropic Claude 3.7 Sonnet and Claude 3.5 Sonnet v2 only. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html">Configure an Amazon Bedrock Agent to complete tasks with computer use tools</a>. </p> </important>
    #   @return [Hash<String, String>]
    # @!attribute action_group_executor
    #   <p>The Amazon Resource Name (ARN) of the Lambda function containing the business logic that is carried out upon invoking the action or the custom control method for handling the information elicited from the user.</p>
    #   @return [Types::ActionGroupExecutor]
    # @!attribute api_schema
    #   <p>Contains either details about the S3 object containing the OpenAPI schema for the action group or the JSON or YAML-formatted payload defining the schema. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html">Action group OpenAPI schemas</a>.</p>
    #   @return [Types::APISchema]
    # @!attribute action_group_state
    #   <p>Specifies whether the action group is available for the agent to invoke or not when sending an <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html">InvokeAgent</a> request.</p>
    #   @return [String]
    # @!attribute function_schema
    #   <p>Contains details about the function schema for the action group or the JSON or YAML-formatted payload defining the schema.</p>
    #   @return [Types::FunctionSchema]
    class CreateAgentActionGroupRequest < Struct.new(
      :agent_id,
      :agent_version,
      :action_group_name,
      :client_token,
      :description,
      :parent_action_group_signature,
      :parent_action_group_signature_params,
      :action_group_executor,
      :api_schema,
      :action_group_state,
      :function_schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_action_group
    #   <p>Contains details about the action group that was created.</p>
    #   @return [Types::AgentActionGroup]
    class CreateAgentActionGroupResponse < Struct.new(
      :agent_action_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent.</p>
    #   @return [String]
    # @!attribute agent_alias_name
    #   <p>The name of the alias.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the alias of the agent.</p>
    #   @return [String]
    # @!attribute routing_configuration
    #   <p>Contains details about the routing configuration of the alias.</p>
    #   @return [Array<Types::AgentAliasRoutingConfigurationListItem>]
    # @!attribute tags
    #   <p>Any tags that you want to attach to the alias of the agent.</p>
    #   @return [Hash<String, String>]
    class CreateAgentAliasRequest < Struct.new(
      :agent_id,
      :agent_alias_name,
      :client_token,
      :description,
      :routing_configuration,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_alias
    #   <p>Contains details about the alias that was created.</p>
    #   @return [Types::AgentAlias]
    class CreateAgentAliasResponse < Struct.new(
      :agent_alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_name
    #   <p>A name for the agent that you create.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute instruction
    #   <p>Instructions that tell the agent what it should do and how it should interact with users.</p>
    #   @return [String]
    # @!attribute foundation_model
    #   <p>The identifier for the model that you want to be used for orchestration by the agent you create.</p> <p>The <code>modelId</code> to provide depends on the type of model or throughput that you use:</p> <ul> <li> <p>If you use a base model, specify the model ID or its ARN. For a list of model IDs for base models, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns">Amazon Bedrock base model IDs (on-demand throughput)</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an inference profile, specify the inference profile ID or its ARN. For a list of inference profile IDs, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html">Supported Regions and models for cross-region inference</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a provisioned model, specify the ARN of the Provisioned Throughput. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html">Run inference using a Provisioned Throughput</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a custom model, first purchase Provisioned Throughput for it. Then specify the ARN of the resulting provisioned model. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html">Use a custom model in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html">imported model</a>, specify the ARN of the imported model. You can get the model ARN from a successful call to <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html">CreateModelImportJob</a> or from the Imported models page in the Amazon Bedrock console.</p> </li> </ul>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the agent.</p>
    #   @return [String]
    # @!attribute orchestration_type
    #   <p> Specifies the type of orchestration strategy for the agent. This is set to <code>DEFAULT</code> orchestration type, by default. </p>
    #   @return [String]
    # @!attribute custom_orchestration
    #   <p> Contains details of the custom orchestration configured for the agent. </p>
    #   @return [Types::CustomOrchestration]
    # @!attribute idle_session_ttl_in_seconds
    #   <p>The number of seconds for which Amazon Bedrock keeps information about a user's conversation with the agent.</p> <p>A user interaction remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Bedrock deletes any data provided before the timeout.</p>
    #   @return [Integer]
    # @!attribute agent_resource_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role with permissions to invoke API operations on the agent.</p>
    #   @return [String]
    # @!attribute customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key with which to encrypt the agent.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Any tags that you want to attach to the agent.</p>
    #   @return [Hash<String, String>]
    # @!attribute prompt_override_configuration
    #   <p>Contains configurations to override prompts in different parts of an agent sequence. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html">Advanced prompts</a>.</p>
    #   @return [Types::PromptOverrideConfiguration]
    # @!attribute guardrail_configuration
    #   <p>The unique Guardrail configuration assigned to the agent when it is created.</p>
    #   @return [Types::GuardrailConfiguration]
    # @!attribute memory_configuration
    #   <p> Contains the details of the memory configured for the agent.</p>
    #   @return [Types::MemoryConfiguration]
    # @!attribute agent_collaboration
    #   <p>The agent's collaboration role.</p>
    #   @return [String]
    class CreateAgentRequest < Struct.new(
      :agent_name,
      :client_token,
      :instruction,
      :foundation_model,
      :description,
      :orchestration_type,
      :custom_orchestration,
      :idle_session_ttl_in_seconds,
      :agent_resource_role_arn,
      :customer_encryption_key_arn,
      :tags,
      :prompt_override_configuration,
      :guardrail_configuration,
      :memory_configuration,
      :agent_collaboration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent
    #   <p>Contains details about the agent created.</p>
    #   @return [Types::Agent]
    class CreateAgentResponse < Struct.new(
      :agent,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base to which to add the data source.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the data source.</p>
    #   @return [String]
    # @!attribute data_source_configuration
    #   <p>The connection configuration for the data source.</p>
    #   @return [Types::DataSourceConfiguration]
    # @!attribute data_deletion_policy
    #   <p>The data deletion policy for the data source.</p> <p>You can set the data deletion policy to:</p> <ul> <li> <p>DELETE: Deletes all data from your data source that’s converted into vector embeddings upon deletion of a knowledge base or data source resource. Note that the <b>vector store itself is not deleted</b>, only the data. This flag is ignored if an Amazon Web Services account is deleted.</p> </li> <li> <p>RETAIN: Retains all data from your data source that’s converted into vector embeddings upon deletion of a knowledge base or data source resource. Note that the <b>vector store itself is not deleted</b> if you delete a knowledge base or data source resource.</p> </li> </ul>
    #   @return [String]
    # @!attribute server_side_encryption_configuration
    #   <p>Contains details about the server-side encryption for the data source.</p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    # @!attribute vector_ingestion_configuration
    #   <p>Contains details about how to ingest the documents in the data source.</p>
    #   @return [Types::VectorIngestionConfiguration]
    class CreateDataSourceRequest < Struct.new(
      :knowledge_base_id,
      :client_token,
      :name,
      :description,
      :data_source_configuration,
      :data_deletion_policy,
      :server_side_encryption_configuration,
      :vector_ingestion_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_source
    #   <p>Contains details about the data source.</p>
    #   @return [Types::DataSource]
    class CreateDataSourceResponse < Struct.new(
      :data_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the alias.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the alias.</p>
    #   @return [String]
    # @!attribute routing_configuration
    #   <p>Contains information about the version to which to map the alias.</p>
    #   @return [Array<Types::FlowAliasRoutingConfigurationListItem>]
    # @!attribute concurrency_configuration
    #   <p>The configuration that specifies how nodes in the flow are executed in parallel.</p>
    #   @return [Types::FlowAliasConcurrencyConfiguration]
    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow for which to create an alias.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Any tags that you want to attach to the alias of the flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html">Tagging resources in Amazon Bedrock</a>.</p>
    #   @return [Hash<String, String>]
    class CreateFlowAliasRequest < Struct.new(
      :name,
      :description,
      :routing_configuration,
      :concurrency_configuration,
      :flow_identifier,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the alias.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the alias.</p>
    #   @return [String]
    # @!attribute routing_configuration
    #   <p>Contains information about the version that the alias is mapped to.</p>
    #   @return [Array<Types::FlowAliasRoutingConfigurationListItem>]
    # @!attribute concurrency_configuration
    #   <p>The configuration that specifies how nodes in the flow are executed in parallel.</p>
    #   @return [Types::FlowAliasConcurrencyConfiguration]
    # @!attribute flow_id
    #   <p>The unique identifier of the flow that the alias belongs to.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the alias.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the alias.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the alias was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the alias of the flow was last updated.</p>
    #   @return [Time]
    class CreateFlowAliasResponse < Struct.new(
      :name,
      :description,
      :routing_configuration,
      :concurrency_configuration,
      :flow_id,
      :id,
      :arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the flow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the flow.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role with permissions to create and manage a flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html">Create a service role for flows in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>
    #   @return [String]
    # @!attribute customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to encrypt the flow.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>A definition of the nodes and connections between nodes in the flow.</p>
    #   @return [Types::FlowDefinition]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Any tags that you want to attach to the flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html">Tagging resources in Amazon Bedrock</a>.</p>
    #   @return [Hash<String, String>]
    class CreateFlowRequest < Struct.new(
      :name,
      :description,
      :execution_role_arn,
      :customer_encryption_key_arn,
      :definition,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the flow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the flow.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role with permissions to create a flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html">Create a service role for flows in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>
    #   @return [String]
    # @!attribute customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key that you encrypted the flow with.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the flow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the flow. When you submit this request, the status will be <code>NotPrepared</code>. If creation fails, the status becomes <code>Failed</code>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the flow was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the flow was last updated.</p>
    #   @return [Time]
    # @!attribute version
    #   <p>The version of the flow. When you create a flow, the version created is the <code>DRAFT</code> version.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>A definition of the nodes and connections between nodes in the flow.</p>
    #   @return [Types::FlowDefinition]
    class CreateFlowResponse < Struct.new(
      :name,
      :description,
      :execution_role_arn,
      :customer_encryption_key_arn,
      :id,
      :arn,
      :status,
      :created_at,
      :updated_at,
      :version,
      :definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow that you want to create a version of.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the version of the flow.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    class CreateFlowVersionRequest < Struct.new(
      :flow_identifier,
      :description,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the version.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role with permissions to create a flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html">Create a service role for flows in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>
    #   @return [String]
    # @!attribute customer_encryption_key_arn
    #   <p>The KMS key that the flow is encrypted with.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the flow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the flow.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the flow was created.</p>
    #   @return [Time]
    # @!attribute version
    #   <p>The version of the flow that was created. Versions are numbered incrementally, starting from 1.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>A definition of the nodes and connections in the flow.</p>
    #   @return [Types::FlowDefinition]
    class CreateFlowVersionResponse < Struct.new(
      :name,
      :description,
      :execution_role_arn,
      :customer_encryption_key_arn,
      :id,
      :arn,
      :status,
      :created_at,
      :version,
      :definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name for the knowledge base.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the knowledge base.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role with permissions to invoke API operations on the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_configuration
    #   <p>Contains details about the embeddings model used for the knowledge base.</p>
    #   @return [Types::KnowledgeBaseConfiguration]
    # @!attribute storage_configuration
    #   <p>Contains details about the configuration of the vector database used for the knowledge base.</p>
    #   @return [Types::StorageConfiguration]
    # @!attribute tags
    #   <p>Specify the key-value pairs for the tags that you want to attach to your knowledge base in this object.</p>
    #   @return [Hash<String, String>]
    class CreateKnowledgeBaseRequest < Struct.new(
      :client_token,
      :name,
      :description,
      :role_arn,
      :knowledge_base_configuration,
      :storage_configuration,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base
    #   <p>Contains details about the knowledge base.</p>
    #   @return [Types::KnowledgeBase]
    class CreateKnowledgeBaseResponse < Struct.new(
      :knowledge_base,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the prompt.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the prompt.</p>
    #   @return [String]
    # @!attribute customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to encrypt the prompt.</p>
    #   @return [String]
    # @!attribute default_variant
    #   <p>The name of the default variant for the prompt. This value must match the <code>name</code> field in the relevant <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptVariant.html">PromptVariant</a> object.</p>
    #   @return [String]
    # @!attribute variants
    #   <p>A list of objects, each containing details about a variant of the prompt.</p>
    #   @return [Array<Types::PromptVariant>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Any tags that you want to attach to the prompt. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html">Tagging resources in Amazon Bedrock</a>.</p>
    #   @return [Hash<String, String>]
    class CreatePromptRequest < Struct.new(
      :name,
      :description,
      :customer_encryption_key_arn,
      :default_variant,
      :variants,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the prompt.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the prompt.</p>
    #   @return [String]
    # @!attribute customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key that you encrypted the prompt with.</p>
    #   @return [String]
    # @!attribute default_variant
    #   <p>The name of the default variant for your prompt.</p>
    #   @return [String]
    # @!attribute variants
    #   <p>A list of objects, each containing details about a variant of the prompt.</p>
    #   @return [Array<Types::PromptVariant>]
    # @!attribute id
    #   <p>The unique identifier of the prompt.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the prompt.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the prompt. When you create a prompt, the version created is the <code>DRAFT</code> version.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the prompt was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the prompt was last updated.</p>
    #   @return [Time]
    class CreatePromptResponse < Struct.new(
      :name,
      :description,
      :customer_encryption_key_arn,
      :default_variant,
      :variants,
      :id,
      :arn,
      :version,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute prompt_identifier
    #   <p>The unique identifier of the prompt that you want to create a version of.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the version of the prompt.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Any tags that you want to attach to the version of the prompt. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html">Tagging resources in Amazon Bedrock</a>.</p>
    #   @return [Hash<String, String>]
    class CreatePromptVersionRequest < Struct.new(
      :prompt_identifier,
      :description,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the prompt.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the version.</p>
    #   @return [String]
    # @!attribute customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to encrypt the version of the prompt.</p>
    #   @return [String]
    # @!attribute default_variant
    #   <p>The name of the default variant for the prompt. This value must match the <code>name</code> field in the relevant <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptVariant.html">PromptVariant</a> object.</p>
    #   @return [String]
    # @!attribute variants
    #   <p>A list of objects, each containing details about a variant of the prompt.</p>
    #   @return [Array<Types::PromptVariant>]
    # @!attribute id
    #   <p>The unique identifier of the prompt.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the version of the prompt.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the prompt that was created. Versions are numbered incrementally, starting from 1.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the prompt was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the prompt was last updated.</p>
    #   @return [Time]
    class CreatePromptVersionResponse < Struct.new(
      :name,
      :description,
      :customer_encryption_key_arn,
      :default_variant,
      :variants,
      :id,
      :arn,
      :version,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for a query, each of which defines information about example queries to help the query engine generate appropriate SQL queries.</p>
    # @!attribute natural_language
    #   <p>An example natural language query.</p>
    #   @return [String]
    # @!attribute sql
    #   <p>The SQL equivalent of the natural language query.</p>
    #   @return [String]
    class CuratedQuery < Struct.new(
      :natural_language,
      :sql,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the content to ingest into a knowledge base connected to a custom data source. Choose a <code>sourceType</code> and include the field that corresponds to it.</p>
    # @!attribute custom_document_identifier
    #   <p>A unique identifier for the document.</p>
    #   @return [Types::CustomDocumentIdentifier]
    # @!attribute source_type
    #   <p>The source of the data to ingest.</p>
    #   @return [String]
    # @!attribute s3_location
    #   <p>Contains information about the Amazon S3 location of the file from which to ingest data.</p>
    #   @return [Types::CustomS3Location]
    # @!attribute inline_content
    #   <p>Contains information about content defined inline to ingest into a knowledge base.</p>
    #   @return [Types::InlineContent]
    class CustomContent < Struct.new(
      :custom_document_identifier,
      :source_type,
      :s3_location,
      :inline_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the identifier of the document to ingest into a custom data source.</p>
    # @!attribute id
    #   <p>The identifier of the document to ingest into a custom data source.</p>
    #   @return [String]
    class CustomDocumentIdentifier < Struct.new(
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Details of custom orchestration. </p>
    # @!attribute executor
    #   <p> The structure of the executor invoking the actions in custom orchestration. </p>
    #   @return [Types::OrchestrationExecutor]
    class CustomOrchestration < Struct.new(
      :executor,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the Amazon S3 location of the file containing the content to ingest into a knowledge base connected to a custom data source.</p>
    # @!attribute uri
    #   <p>The S3 URI of the file containing the content to ingest.</p>
    #   @return [String]
    # @!attribute bucket_owner_account_id
    #   <p>The identifier of the Amazon Web Services account that owns the S3 bucket containing the content to ingest.</p>
    #   @return [String]
    class CustomS3Location < Struct.new(
      :uri,
      :bucket_owner_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for customizing steps in the data source content ingestion pipeline.</p> <p>You can configure the data source to process documents with a Lambda function after they are parsed and converted into chunks. When you add a post-chunking transformation, the service stores chunked documents in an S3 bucket and invokes a Lambda function to process them.</p> <p>To process chunked documents with a Lambda function, define an S3 bucket path for input and output objects, and a transformation that specifies the Lambda function to invoke. You can use the Lambda function to customize how chunks are split, and the metadata for each chunk. </p>
    # @!attribute intermediate_storage
    #   <p>An S3 bucket path for input and output objects.</p>
    #   @return [Types::IntermediateStorage]
    # @!attribute transformations
    #   <p>A Lambda function that processes documents.</p>
    #   @return [Array<Types::Transformation>]
    class CustomTransformationConfiguration < Struct.new(
      :intermediate_storage,
      :transformations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a cyclic connection detected in the flow.</p>
    # @!attribute connection
    #   <p>The name of the connection that causes the cycle in the flow.</p>
    #   @return [String]
    class CyclicConnectionFlowValidationDetails < Struct.new(
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a data source.</p>
    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base to which the data source belongs.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The unique identifier of the data source.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data source. The following statuses are possible:</p> <ul> <li> <p>Available – The data source has been created and is ready for ingestion into the knowledge base.</p> </li> <li> <p>Deleting – The data source is being deleted.</p> </li> </ul>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data source.</p>
    #   @return [String]
    # @!attribute data_source_configuration
    #   <p>The connection configuration for the data source.</p>
    #   @return [Types::DataSourceConfiguration]
    # @!attribute server_side_encryption_configuration
    #   <p>Contains details about the configuration of the server-side encryption.</p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    # @!attribute vector_ingestion_configuration
    #   <p>Contains details about how to ingest the documents in the data source.</p>
    #   @return [Types::VectorIngestionConfiguration]
    # @!attribute data_deletion_policy
    #   <p>The data deletion policy for the data source.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the data source was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the data source was last updated.</p>
    #   @return [Time]
    # @!attribute failure_reasons
    #   <p>The detailed reasons on the failure to delete a data source.</p>
    #   @return [Array<String>]
    class DataSource < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :name,
      :status,
      :description,
      :data_source_configuration,
      :server_side_encryption_configuration,
      :vector_ingestion_configuration,
      :data_deletion_policy,
      :created_at,
      :updated_at,
      :failure_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The connection configuration for the data source.</p>
    # @!attribute type
    #   <p>The type of data source.</p>
    #   @return [String]
    # @!attribute s3_configuration
    #   <p>The configuration information to connect to Amazon S3 as your data source.</p>
    #   @return [Types::S3DataSourceConfiguration]
    # @!attribute web_configuration
    #   <p>The configuration of web URLs to crawl for your data source. You should be authorized to crawl the URLs.</p> <note> <p>Crawling web URLs as your data source is in preview release and is subject to change.</p> </note>
    #   @return [Types::WebDataSourceConfiguration]
    # @!attribute confluence_configuration
    #   <p>The configuration information to connect to Confluence as your data source.</p> <note> <p>Confluence data source connector is in preview release and is subject to change.</p> </note>
    #   @return [Types::ConfluenceDataSourceConfiguration]
    # @!attribute salesforce_configuration
    #   <p>The configuration information to connect to Salesforce as your data source.</p> <note> <p>Salesforce data source connector is in preview release and is subject to change.</p> </note>
    #   @return [Types::SalesforceDataSourceConfiguration]
    # @!attribute share_point_configuration
    #   <p>The configuration information to connect to SharePoint as your data source.</p> <note> <p>SharePoint data source connector is in preview release and is subject to change.</p> </note>
    #   @return [Types::SharePointDataSourceConfiguration]
    class DataSourceConfiguration < Struct.new(
      :type,
      :s3_configuration,
      :web_configuration,
      :confluence_configuration,
      :salesforce_configuration,
      :share_point_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a data source.</p>
    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base to which the data source belongs.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The unique identifier of the data source.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data source.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data source.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The time at which the data source was last updated.</p>
    #   @return [Time]
    class DataSourceSummary < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :name,
      :status,
      :description,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent that the action group belongs to.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version of the agent that the action group belongs to.</p>
    #   @return [String]
    # @!attribute action_group_id
    #   <p>The unique identifier of the action group to delete.</p>
    #   @return [String]
    # @!attribute skip_resource_in_use_check
    #   <p>By default, this value is <code>false</code> and deletion is stopped if the resource is in use. If you set it to <code>true</code>, the resource will be deleted even if the resource is in use.</p>
    #   @return [Boolean]
    class DeleteAgentActionGroupRequest < Struct.new(
      :agent_id,
      :agent_version,
      :action_group_id,
      :skip_resource_in_use_check,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAgentActionGroupResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent that the alias belongs to.</p>
    #   @return [String]
    # @!attribute agent_alias_id
    #   <p>The unique identifier of the alias to delete.</p>
    #   @return [String]
    class DeleteAgentAliasRequest < Struct.new(
      :agent_id,
      :agent_alias_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent that the alias belongs to.</p>
    #   @return [String]
    # @!attribute agent_alias_id
    #   <p>The unique identifier of the alias that was deleted.</p>
    #   @return [String]
    # @!attribute agent_alias_status
    #   <p>The status of the alias.</p>
    #   @return [String]
    class DeleteAgentAliasResponse < Struct.new(
      :agent_id,
      :agent_alias_id,
      :agent_alias_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent to delete.</p>
    #   @return [String]
    # @!attribute skip_resource_in_use_check
    #   <p>By default, this value is <code>false</code> and deletion is stopped if the resource is in use. If you set it to <code>true</code>, the resource will be deleted even if the resource is in use.</p>
    #   @return [Boolean]
    class DeleteAgentRequest < Struct.new(
      :agent_id,
      :skip_resource_in_use_check,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent that was deleted.</p>
    #   @return [String]
    # @!attribute agent_status
    #   <p>The status of the agent.</p>
    #   @return [String]
    class DeleteAgentResponse < Struct.new(
      :agent_id,
      :agent_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent that the version belongs to.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version of the agent to delete.</p>
    #   @return [String]
    # @!attribute skip_resource_in_use_check
    #   <p>By default, this value is <code>false</code> and deletion is stopped if the resource is in use. If you set it to <code>true</code>, the resource will be deleted even if the resource is in use.</p>
    #   @return [Boolean]
    class DeleteAgentVersionRequest < Struct.new(
      :agent_id,
      :agent_version,
      :skip_resource_in_use_check,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent that the version belongs to.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version that was deleted.</p>
    #   @return [String]
    # @!attribute agent_status
    #   <p>The status of the agent version.</p>
    #   @return [String]
    class DeleteAgentVersionResponse < Struct.new(
      :agent_id,
      :agent_version,
      :agent_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base from which to delete the data source.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The unique identifier of the data source to delete.</p>
    #   @return [String]
    class DeleteDataSourceRequest < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base to which the data source that was deleted belonged.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The unique identifier of the data source that was deleted.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data source.</p>
    #   @return [String]
    class DeleteDataSourceResponse < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow that the alias belongs to.</p>
    #   @return [String]
    # @!attribute alias_identifier
    #   <p>The unique identifier of the alias to be deleted.</p>
    #   @return [String]
    class DeleteFlowAliasRequest < Struct.new(
      :flow_identifier,
      :alias_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_id
    #   <p>The unique identifier of the flow that the alias belongs to.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    class DeleteFlowAliasResponse < Struct.new(
      :flow_id,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    # @!attribute skip_resource_in_use_check
    #   <p>By default, this value is <code>false</code> and deletion is stopped if the resource is in use. If you set it to <code>true</code>, the resource will be deleted even if the resource is in use.</p>
    #   @return [Boolean]
    class DeleteFlowRequest < Struct.new(
      :flow_identifier,
      :skip_resource_in_use_check,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    class DeleteFlowResponse < Struct.new(
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow whose version that you want to delete</p>
    #   @return [String]
    # @!attribute flow_version
    #   <p>The version of the flow that you want to delete.</p>
    #   @return [String]
    # @!attribute skip_resource_in_use_check
    #   <p>By default, this value is <code>false</code> and deletion is stopped if the resource is in use. If you set it to <code>true</code>, the resource will be deleted even if the resource is in use.</p>
    #   @return [Boolean]
    class DeleteFlowVersionRequest < Struct.new(
      :flow_identifier,
      :flow_version,
      :skip_resource_in_use_check,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the flow being deleted.</p>
    #   @return [String]
    class DeleteFlowVersionResponse < Struct.new(
      :id,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base that is connected to the data source.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The unique identifier of the data source that contains the documents.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute document_identifiers
    #   <p>A list of objects, each of which contains information to identify a document to delete.</p>
    #   @return [Array<Types::DocumentIdentifier>]
    class DeleteKnowledgeBaseDocumentsRequest < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :client_token,
      :document_identifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute document_details
    #   <p>A list of objects, each of which contains information about the documents that were deleted.</p>
    #   @return [Array<Types::KnowledgeBaseDocumentDetail>]
    class DeleteKnowledgeBaseDocumentsResponse < Struct.new(
      :document_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base to delete.</p>
    #   @return [String]
    class DeleteKnowledgeBaseRequest < Struct.new(
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base that was deleted.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the knowledge base and whether it has been successfully deleted.</p>
    #   @return [String]
    class DeleteKnowledgeBaseResponse < Struct.new(
      :knowledge_base_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute prompt_identifier
    #   <p>The unique identifier of the prompt.</p>
    #   @return [String]
    # @!attribute prompt_version
    #   <p>The version of the prompt to delete. To delete the prompt, omit this field.</p>
    #   @return [String]
    class DeletePromptRequest < Struct.new(
      :prompt_identifier,
      :prompt_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the prompt that was deleted.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the prompt that was deleted.</p>
    #   @return [String]
    class DeletePromptResponse < Struct.new(
      :id,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>An agent ID.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The agent's version.</p>
    #   @return [String]
    # @!attribute collaborator_id
    #   <p>The collaborator's ID.</p>
    #   @return [String]
    class DisassociateAgentCollaboratorRequest < Struct.new(
      :agent_id,
      :agent_version,
      :collaborator_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateAgentCollaboratorResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent from which to disassociate the knowledge base.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version of the agent from which to disassociate the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base to disassociate.</p>
    #   @return [String]
    class DisassociateAgentKnowledgeBaseRequest < Struct.new(
      :agent_id,
      :agent_version,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateAgentKnowledgeBaseResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the content of a document. Choose a <code>dataSourceType</code> and include the field that corresponds to it.</p>
    # @!attribute data_source_type
    #   <p>The type of data source that is connected to the knowledge base to which to ingest this document.</p>
    #   @return [String]
    # @!attribute custom
    #   <p>Contains information about the content to ingest into a knowledge base connected to a custom data source.</p>
    #   @return [Types::CustomContent]
    # @!attribute s3
    #   <p>Contains information about the content to ingest into a knowledge base connected to an Amazon S3 data source</p>
    #   @return [Types::S3Content]
    class DocumentContent < Struct.new(
      :data_source_type,
      :custom,
      :s3,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information that identifies the document.</p>
    # @!attribute data_source_type
    #   <p>The type of data source connected to the knowledge base that contains the document.</p>
    #   @return [String]
    # @!attribute s3
    #   <p>Contains information that identifies the document in an S3 data source.</p>
    #   @return [Types::S3Location]
    # @!attribute custom
    #   <p>Contains information that identifies the document in a custom data source.</p>
    #   @return [Types::CustomDocumentIdentifier]
    class DocumentIdentifier < Struct.new(
      :data_source_type,
      :s3,
      :custom,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the metadata associate with the content to ingest into a knowledge base. Choose a <code>type</code> and include the field that corresponds to it.</p>
    # @!attribute type
    #   <p>The type of the source source from which to add metadata.</p>
    #   @return [String]
    # @!attribute inline_attributes
    #   <p>An array of objects, each of which defines a metadata attribute to associate with the content to ingest. You define the attributes inline.</p>
    #   @return [Array<Types::MetadataAttribute>]
    # @!attribute s3_location
    #   <p>The Amazon S3 location of the file containing metadata to associate with the content to ingest.</p>
    #   @return [Types::CustomS3Location]
    class DocumentMetadata < Struct.new(
      :type,
      :inline_attributes,
      :s3_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about duplicate condition expressions found in a condition node.</p>
    # @!attribute node
    #   <p>The name of the node containing the duplicate condition expressions.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>The duplicated condition expression.</p>
    #   @return [String]
    class DuplicateConditionExpressionFlowValidationDetails < Struct.new(
      :node,
      :expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about duplicate connections found between two nodes in the flow.</p>
    # @!attribute source
    #   <p>The name of the source node where the duplicate connection starts.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The name of the target node where the duplicate connection ends.</p>
    #   @return [String]
    class DuplicateConnectionsFlowValidationDetails < Struct.new(
      :source,
      :target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details for the embeddings model.</p>
    # @!attribute bedrock_embedding_model_configuration
    #   <p>The vector configuration details on the Bedrock embeddings model.</p>
    #   @return [Types::BedrockEmbeddingModelConfiguration]
    class EmbeddingModelConfiguration < Struct.new(
      :bedrock_embedding_model_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The strategy used for performing context enrichment.</p>
    # @!attribute method
    #   <p>The method used for the context enrichment strategy.</p>
    #   @return [String]
    class EnrichmentStrategyConfiguration < Struct.new(
      :method,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a metadata field to include or exclude during the reranking process.</p>
    # @!attribute field_name
    #   <p>The name of the metadata field to include or exclude during reranking.</p>
    #   @return [String]
    class FieldForReranking < Struct.new(
      :field_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configurations for when you choose fixed-size chunking. If you set the <code>chunkingStrategy</code> as <code>NONE</code>, exclude this field.</p>
    # @!attribute max_tokens
    #   <p>The maximum number of tokens to include in a chunk.</p>
    #   @return [Integer]
    # @!attribute overlap_percentage
    #   <p>The percentage of overlap between adjacent chunks of a data source.</p>
    #   @return [Integer]
    class FixedSizeChunkingConfiguration < Struct.new(
      :max_tokens,
      :overlap_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Determines how multiple nodes in a flow can run in parallel. Running nodes concurrently can improve your flow's performance.</p>
    # @!attribute type
    #   <p>The type of concurrency to use for parallel node execution. Specify one of the following options:</p> <ul> <li> <p> <code>Automatic</code> - Amazon Bedrock determines which nodes can be executed in parallel based on the flow definition and its dependencies.</p> </li> <li> <p> <code>Manual</code> - You specify which nodes can be executed in parallel.</p> </li> </ul>
    #   @return [String]
    # @!attribute max_concurrency
    #   <p>The maximum number of nodes that can be executed concurrently in the flow.</p>
    #   @return [Integer]
    class FlowAliasConcurrencyConfiguration < Struct.new(
      :type,
      :max_concurrency,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a version that the alias maps to.</p>
    # @!attribute flow_version
    #   <p>The version that the alias maps to.</p>
    #   @return [String]
    class FlowAliasRoutingConfigurationListItem < Struct.new(
      :flow_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an alias of a flow.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_ListFlowAliases.html#API_agent_ListFlowAliases_ResponseSyntax">ListFlowAliases response</a> </p> </li> </ul>
    # @!attribute name
    #   <p>The name of the alias.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the alias.</p>
    #   @return [String]
    # @!attribute routing_configuration
    #   <p>A list of configurations about the versions that the alias maps to. Currently, you can only specify one.</p>
    #   @return [Array<Types::FlowAliasRoutingConfigurationListItem>]
    # @!attribute concurrency_configuration
    #   <p>The configuration that specifies how nodes in the flow are executed concurrently.</p>
    #   @return [Types::FlowAliasConcurrencyConfiguration]
    # @!attribute flow_id
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the alias of the flow.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the alias.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the alias was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the alias was last updated.</p>
    #   @return [Time]
    class FlowAliasSummary < Struct.new(
      :name,
      :description,
      :routing_configuration,
      :concurrency_configuration,
      :flow_id,
      :id,
      :arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a condition in the condition node.</p>
    # @!attribute name
    #   <p>A name for the condition that you can reference.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>Defines the condition. You must refer to at least one of the inputs in the condition. For more information, expand the Condition node section in <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-how-it-works.html#flows-nodes">Node types in prompt flows</a>.</p>
    #   @return [String]
    class FlowCondition < Struct.new(
      :name,
      :expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of a connection between a condition node and another node.</p>
    # @!attribute condition
    #   <p>The condition that triggers this connection. For more information about how to write conditions, see the <b>Condition</b> node type in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/node-types.html">Node types</a> topic in the Amazon Bedrock User Guide.</p>
    #   @return [String]
    class FlowConditionalConnectionConfiguration < Struct.new(
      :condition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a connection between two nodes in the flow.</p>
    # @!attribute type
    #   <p>Whether the source node that the connection begins from is a condition node (<code>Conditional</code>) or not (<code>Data</code>).</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name for the connection that you can reference.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The node that the connection starts at.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The node that the connection ends at.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration of the connection.</p>
    #   @return [Types::FlowConnectionConfiguration]
    class FlowConnection < Struct.new(
      :type,
      :name,
      :source,
      :target,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of the connection.</p>
    # @!attribute data
    #   <p>The configuration of a connection originating from a node that isn't a Condition node.</p>
    #   @return [Types::FlowDataConnectionConfiguration]
    # @!attribute conditional
    #   <p>The configuration of a connection originating from a Condition node.</p>
    #   @return [Types::FlowConditionalConnectionConfiguration]
    class FlowConnectionConfiguration < Struct.new(
      :data,
      :conditional,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Data < FlowConnectionConfiguration; end
      class Conditional < FlowConnectionConfiguration; end
      class Unknown < FlowConnectionConfiguration; end
    end

    # <p>The configuration of a connection originating from a node that isn't a Condition node.</p>
    # @!attribute source_output
    #   <p>The name of the output in the source node that the connection begins from.</p>
    #   @return [String]
    # @!attribute target_input
    #   <p>The name of the input in the target node that the connection ends at.</p>
    #   @return [String]
    class FlowDataConnectionConfiguration < Struct.new(
      :source_output,
      :target_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The definition of the nodes and connections between nodes in the flow.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute nodes
    #   <p>An array of node definitions in the flow.</p>
    #   @return [Array<Types::FlowNode>]
    # @!attribute connections
    #   <p>An array of connection definitions in the flow.</p>
    #   @return [Array<Types::FlowConnection>]
    class FlowDefinition < Struct.new(
      :nodes,
      :connections,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations about a node in the flow.</p>
    # @!attribute name
    #   <p>A name for the node.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of node. This value must match the name of the key that you provide in the configuration you provide in the <code>FlowNodeConfiguration</code> field.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Contains configurations for the node.</p>
    #   @return [Types::FlowNodeConfiguration]
    # @!attribute inputs
    #   <p>An array of objects, each of which contains information about an input into the node.</p>
    #   @return [Array<Types::FlowNodeInput>]
    # @!attribute outputs
    #   <p>A list of objects, each of which contains information about an output from the node.</p>
    #   @return [Array<Types::FlowNodeOutput>]
    class FlowNode < Struct.new(
      :name,
      :type,
      :configuration,
      :inputs,
      :outputs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for a node in your flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-nodes.html">Node types in a flow</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute input
    #   <p>Contains configurations for an input flow node in your flow. The first node in the flow. <code>inputs</code> can't be specified for this node.</p>
    #   @return [Types::InputFlowNodeConfiguration]
    # @!attribute output
    #   <p>Contains configurations for an output flow node in your flow. The last node in the flow. <code>outputs</code> can't be specified for this node.</p>
    #   @return [Types::OutputFlowNodeConfiguration]
    # @!attribute knowledge_base
    #   <p>Contains configurations for a knowledge base node in your flow. Queries a knowledge base and returns the retrieved results or generated response.</p>
    #   @return [Types::KnowledgeBaseFlowNodeConfiguration]
    # @!attribute condition
    #   <p>Contains configurations for a condition node in your flow. Defines conditions that lead to different branches of the flow.</p>
    #   @return [Types::ConditionFlowNodeConfiguration]
    # @!attribute lex
    #   <p>Contains configurations for a Lex node in your flow. Invokes an Amazon Lex bot to identify the intent of the input and return the intent as the output.</p>
    #   @return [Types::LexFlowNodeConfiguration]
    # @!attribute prompt
    #   <p>Contains configurations for a prompt node in your flow. Runs a prompt and generates the model response as the output. You can use a prompt from Prompt management or you can configure one in this node.</p>
    #   @return [Types::PromptFlowNodeConfiguration]
    # @!attribute lambda_function
    #   <p>Contains configurations for a Lambda function node in your flow. Invokes an Lambda function.</p>
    #   @return [Types::LambdaFunctionFlowNodeConfiguration]
    # @!attribute storage
    #   <p>Contains configurations for a storage node in your flow. Stores an input in an Amazon S3 location.</p>
    #   @return [Types::StorageFlowNodeConfiguration]
    # @!attribute agent
    #   <p>Contains configurations for an agent node in your flow. Invokes an alias of an agent and returns the response.</p>
    #   @return [Types::AgentFlowNodeConfiguration]
    # @!attribute retrieval
    #   <p>Contains configurations for a retrieval node in your flow. Retrieves data from an Amazon S3 location and returns it as the output.</p>
    #   @return [Types::RetrievalFlowNodeConfiguration]
    # @!attribute iterator
    #   <p>Contains configurations for an iterator node in your flow. Takes an input that is an array and iteratively sends each item of the array as an output to the following node. The size of the array is also returned in the output.</p> <p>The output flow node at the end of the flow iteration will return a response for each member of the array. To return only one response, you can include a collector node downstream from the iterator node.</p>
    #   @return [Types::IteratorFlowNodeConfiguration]
    # @!attribute collector
    #   <p>Contains configurations for a collector node in your flow. Collects an iteration of inputs and consolidates them into an array of outputs.</p>
    #   @return [Types::CollectorFlowNodeConfiguration]
    # @!attribute inline_code
    #   <p>Contains configurations for an inline code node in your flow. Inline code nodes let you write and execute code directly within your flow, enabling data transformations, custom logic, and integrations without needing an external Lambda function.</p>
    #   @return [Types::InlineCodeFlowNodeConfiguration]
    # @!attribute loop
    #   <p>Contains configurations for a DoWhile loop in your flow.</p>
    #   @return [Types::LoopFlowNodeConfiguration]
    # @!attribute loop_input
    #   <p>Contains input node configurations for a DoWhile loop in your flow.</p>
    #   @return [Types::LoopInputFlowNodeConfiguration]
    # @!attribute loop_controller
    #   <p>Contains controller node configurations for a DoWhile loop in your flow.</p>
    #   @return [Types::LoopControllerFlowNodeConfiguration]
    class FlowNodeConfiguration < Struct.new(
      :input,
      :output,
      :knowledge_base,
      :condition,
      :lex,
      :prompt,
      :lambda_function,
      :storage,
      :agent,
      :retrieval,
      :iterator,
      :collector,
      :inline_code,
      :loop,
      :loop_input,
      :loop_controller,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Input < FlowNodeConfiguration; end
      class Output < FlowNodeConfiguration; end
      class KnowledgeBase < FlowNodeConfiguration; end
      class Condition < FlowNodeConfiguration; end
      class Lex < FlowNodeConfiguration; end
      class Prompt < FlowNodeConfiguration; end
      class LambdaFunction < FlowNodeConfiguration; end
      class Storage < FlowNodeConfiguration; end
      class Agent < FlowNodeConfiguration; end
      class Retrieval < FlowNodeConfiguration; end
      class Iterator < FlowNodeConfiguration; end
      class Collector < FlowNodeConfiguration; end
      class InlineCode < FlowNodeConfiguration; end
      class Loop < FlowNodeConfiguration; end
      class LoopInput < FlowNodeConfiguration; end
      class LoopController < FlowNodeConfiguration; end
      class Unknown < FlowNodeConfiguration; end
    end

    # <p>Contains configurations for an input in an Amazon Bedrock Flows node.</p>
    # @!attribute name
    #   <p>Specifies a name for the input that you can reference.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Specifies the data type of the input. If the input doesn't match this type at runtime, a validation error will be thrown.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>An expression that formats the input for the node. For an explanation of how to create expressions, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-expressions.html">Expressions in Prompt flows in Amazon Bedrock</a>.</p>
    #   @return [String]
    # @!attribute category
    #   <p>Specifies how input data flows between iterations in a DoWhile loop.</p> <ul> <li> <p> <code>LoopCondition</code> - Controls whether the loop continues by evaluating condition expressions against the input data. Use this category to define the condition that determines if the loop should continue. </p> </li> <li> <p> <code>ReturnValueToLoopStart</code> - Defines data to pass back to the start of the loop's next iteration. Use this category for variables that you want to update for each loop iteration.</p> </li> <li> <p> <code>ExitLoop</code> - Defines the value that's available once the loop ends. Use this category to expose loop results to nodes outside the loop.</p> </li> </ul>
    #   @return [String]
    class FlowNodeInput < Struct.new(
      :name,
      :type,
      :expression,
      :category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for an output from a node.</p>
    # @!attribute name
    #   <p>A name for the output that you can reference.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type of the output. If the output doesn't match this type at runtime, a validation error will be thrown.</p>
    #   @return [String]
    class FlowNodeOutput < Struct.new(
      :name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the definition of a flow.</p>
    # @!attribute name
    #   <p>The name of the flow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the flow.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the flow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the flow. The following statuses are possible:</p> <ul> <li> <p>NotPrepared – The flow has been created or updated, but hasn't been prepared. If you just created the flow, you can't test it. If you updated the flow, the <code>DRAFT</code> version won't contain the latest changes for testing. Send a <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PrepareFlow.html">PrepareFlow</a> request to package the latest changes into the <code>DRAFT</code> version.</p> </li> <li> <p>Preparing – The flow is being prepared so that the <code>DRAFT</code> version contains the latest changes for testing.</p> </li> <li> <p>Prepared – The flow is prepared and the <code>DRAFT</code> version contains the latest changes for testing.</p> </li> <li> <p>Failed – The last API operation that you invoked on the flow failed. Send a <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetFlow.html">GetFlow</a> request and check the error message in the <code>validations</code> field.</p> </li> </ul>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the flow was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the flow was last updated.</p>
    #   @return [Time]
    # @!attribute version
    #   <p>The latest version of the flow.</p>
    #   @return [String]
    class FlowSummary < Struct.new(
      :name,
      :description,
      :id,
      :arn,
      :status,
      :created_at,
      :updated_at,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about validation of the flow.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetFlow.html#API_agent_GetFlow_ResponseSyntax">GetFlow response</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetFlowVersion.html#API_agent_GetFlowVersion_ResponseSyntax">GetFlowVersion response</a> </p> </li> </ul>
    # @!attribute message
    #   <p>A message describing the validation error.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>The severity of the issue described in the message.</p>
    #   @return [String]
    # @!attribute details
    #   <p>Specific details about the validation issue encountered in the flow.</p>
    #   @return [Types::FlowValidationDetails]
    # @!attribute type
    #   <p>The type of validation issue encountered in the flow.</p>
    #   @return [String]
    class FlowValidation < Struct.new(
      :message,
      :severity,
      :details,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A union type containing various possible validation issues in the flow.</p>
    # @!attribute cyclic_connection
    #   <p>Details about a cyclic connection in the flow.</p>
    #   @return [Types::CyclicConnectionFlowValidationDetails]
    # @!attribute duplicate_connections
    #   <p>Details about duplicate connections between nodes.</p>
    #   @return [Types::DuplicateConnectionsFlowValidationDetails]
    # @!attribute duplicate_condition_expression
    #   <p>Details about duplicate condition expressions in a node.</p>
    #   @return [Types::DuplicateConditionExpressionFlowValidationDetails]
    # @!attribute unreachable_node
    #   <p>Details about an unreachable node in the flow.</p>
    #   @return [Types::UnreachableNodeFlowValidationDetails]
    # @!attribute unknown_connection_source
    #   <p>Details about an unknown source node for a connection.</p>
    #   @return [Types::UnknownConnectionSourceFlowValidationDetails]
    # @!attribute unknown_connection_source_output
    #   <p>Details about an unknown source output for a connection.</p>
    #   @return [Types::UnknownConnectionSourceOutputFlowValidationDetails]
    # @!attribute unknown_connection_target
    #   <p>Details about an unknown target node for a connection.</p>
    #   @return [Types::UnknownConnectionTargetFlowValidationDetails]
    # @!attribute unknown_connection_target_input
    #   <p>Details about an unknown target input for a connection.</p>
    #   @return [Types::UnknownConnectionTargetInputFlowValidationDetails]
    # @!attribute unknown_connection_condition
    #   <p>Details about an unknown condition for a connection.</p>
    #   @return [Types::UnknownConnectionConditionFlowValidationDetails]
    # @!attribute malformed_condition_expression
    #   <p>Details about a malformed condition expression in a node.</p>
    #   @return [Types::MalformedConditionExpressionFlowValidationDetails]
    # @!attribute malformed_node_input_expression
    #   <p>Details about a malformed input expression in a node.</p>
    #   @return [Types::MalformedNodeInputExpressionFlowValidationDetails]
    # @!attribute mismatched_node_input_type
    #   <p>Details about mismatched input data types in a node.</p>
    #   @return [Types::MismatchedNodeInputTypeFlowValidationDetails]
    # @!attribute mismatched_node_output_type
    #   <p>Details about mismatched output data types in a node.</p>
    #   @return [Types::MismatchedNodeOutputTypeFlowValidationDetails]
    # @!attribute incompatible_connection_data_type
    #   <p>Details about incompatible data types in a connection.</p>
    #   @return [Types::IncompatibleConnectionDataTypeFlowValidationDetails]
    # @!attribute missing_connection_configuration
    #   <p>Details about missing configuration for a connection.</p>
    #   @return [Types::MissingConnectionConfigurationFlowValidationDetails]
    # @!attribute missing_default_condition
    #   <p>Details about a missing default condition in a conditional node.</p>
    #   @return [Types::MissingDefaultConditionFlowValidationDetails]
    # @!attribute missing_ending_nodes
    #   <p>Details about missing ending nodes in the flow.</p>
    #   @return [Types::MissingEndingNodesFlowValidationDetails]
    # @!attribute missing_node_configuration
    #   <p>Details about missing configuration for a node.</p>
    #   @return [Types::MissingNodeConfigurationFlowValidationDetails]
    # @!attribute missing_node_input
    #   <p>Details about a missing required input in a node.</p>
    #   @return [Types::MissingNodeInputFlowValidationDetails]
    # @!attribute missing_node_output
    #   <p>Details about a missing required output in a node.</p>
    #   @return [Types::MissingNodeOutputFlowValidationDetails]
    # @!attribute missing_starting_nodes
    #   <p>Details about missing starting nodes in the flow.</p>
    #   @return [Types::MissingStartingNodesFlowValidationDetails]
    # @!attribute multiple_node_input_connections
    #   <p>Details about multiple connections to a single node input.</p>
    #   @return [Types::MultipleNodeInputConnectionsFlowValidationDetails]
    # @!attribute unfulfilled_node_input
    #   <p>Details about an unfulfilled node input with no valid connections.</p>
    #   @return [Types::UnfulfilledNodeInputFlowValidationDetails]
    # @!attribute unsatisfied_connection_conditions
    #   <p>Details about unsatisfied conditions for a connection.</p>
    #   @return [Types::UnsatisfiedConnectionConditionsFlowValidationDetails]
    # @!attribute unspecified
    #   <p>Details about an unspecified validation.</p>
    #   @return [Types::UnspecifiedFlowValidationDetails]
    # @!attribute unknown_node_input
    #   <p>Details about an unknown input for a node.</p>
    #   @return [Types::UnknownNodeInputFlowValidationDetails]
    # @!attribute unknown_node_output
    #   <p>Details about an unknown output for a node.</p>
    #   @return [Types::UnknownNodeOutputFlowValidationDetails]
    # @!attribute missing_loop_input_node
    #   <p>Details about a flow that's missing a required <code>LoopInput</code> node in a DoWhile loop.</p>
    #   @return [Types::MissingLoopInputNodeFlowValidationDetails]
    # @!attribute missing_loop_controller_node
    #   <p>Details about a flow that's missing a required <code>LoopController</code> node in a DoWhile loop.</p>
    #   @return [Types::MissingLoopControllerNodeFlowValidationDetails]
    # @!attribute multiple_loop_input_nodes
    #   <p>Details about a flow that contains multiple <code>LoopInput</code> nodes in a DoWhile loop.</p>
    #   @return [Types::MultipleLoopInputNodesFlowValidationDetails]
    # @!attribute multiple_loop_controller_nodes
    #   <p>Details about a flow that contains multiple <code>LoopController</code> nodes in a DoWhile loop.</p>
    #   @return [Types::MultipleLoopControllerNodesFlowValidationDetails]
    # @!attribute loop_incompatible_node_type
    #   <p>Details about a flow that includes incompatible node types in a DoWhile loop.</p>
    #   @return [Types::LoopIncompatibleNodeTypeFlowValidationDetails]
    # @!attribute invalid_loop_boundary
    #   <p>Details about a flow that includes connections that violate loop boundary rules.</p>
    #   @return [Types::InvalidLoopBoundaryFlowValidationDetails]
    class FlowValidationDetails < Struct.new(
      :cyclic_connection,
      :duplicate_connections,
      :duplicate_condition_expression,
      :unreachable_node,
      :unknown_connection_source,
      :unknown_connection_source_output,
      :unknown_connection_target,
      :unknown_connection_target_input,
      :unknown_connection_condition,
      :malformed_condition_expression,
      :malformed_node_input_expression,
      :mismatched_node_input_type,
      :mismatched_node_output_type,
      :incompatible_connection_data_type,
      :missing_connection_configuration,
      :missing_default_condition,
      :missing_ending_nodes,
      :missing_node_configuration,
      :missing_node_input,
      :missing_node_output,
      :missing_starting_nodes,
      :multiple_node_input_connections,
      :unfulfilled_node_input,
      :unsatisfied_connection_conditions,
      :unspecified,
      :unknown_node_input,
      :unknown_node_output,
      :missing_loop_input_node,
      :missing_loop_controller_node,
      :multiple_loop_input_nodes,
      :multiple_loop_controller_nodes,
      :loop_incompatible_node_type,
      :invalid_loop_boundary,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CyclicConnection < FlowValidationDetails; end
      class DuplicateConnections < FlowValidationDetails; end
      class DuplicateConditionExpression < FlowValidationDetails; end
      class UnreachableNode < FlowValidationDetails; end
      class UnknownConnectionSource < FlowValidationDetails; end
      class UnknownConnectionSourceOutput < FlowValidationDetails; end
      class UnknownConnectionTarget < FlowValidationDetails; end
      class UnknownConnectionTargetInput < FlowValidationDetails; end
      class UnknownConnectionCondition < FlowValidationDetails; end
      class MalformedConditionExpression < FlowValidationDetails; end
      class MalformedNodeInputExpression < FlowValidationDetails; end
      class MismatchedNodeInputType < FlowValidationDetails; end
      class MismatchedNodeOutputType < FlowValidationDetails; end
      class IncompatibleConnectionDataType < FlowValidationDetails; end
      class MissingConnectionConfiguration < FlowValidationDetails; end
      class MissingDefaultCondition < FlowValidationDetails; end
      class MissingEndingNodes < FlowValidationDetails; end
      class MissingNodeConfiguration < FlowValidationDetails; end
      class MissingNodeInput < FlowValidationDetails; end
      class MissingNodeOutput < FlowValidationDetails; end
      class MissingStartingNodes < FlowValidationDetails; end
      class MultipleNodeInputConnections < FlowValidationDetails; end
      class UnfulfilledNodeInput < FlowValidationDetails; end
      class UnsatisfiedConnectionConditions < FlowValidationDetails; end
      class Unspecified < FlowValidationDetails; end
      class UnknownNodeInput < FlowValidationDetails; end
      class UnknownNodeOutput < FlowValidationDetails; end
      class MissingLoopInputNode < FlowValidationDetails; end
      class MissingLoopControllerNode < FlowValidationDetails; end
      class MultipleLoopInputNodes < FlowValidationDetails; end
      class MultipleLoopControllerNodes < FlowValidationDetails; end
      class LoopIncompatibleNodeType < FlowValidationDetails; end
      class InvalidLoopBoundary < FlowValidationDetails; end
      class Unknown < FlowValidationDetails; end
    end

    # <p>Contains information about a version of a flow.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_ListFlowVersions.html#API_agent_ListFlowVersions_ResponseSyntax">ListFlowVersions response</a> </p> </li> </ul>
    # @!attribute id
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the flow that the version belongs to.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the flow.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at the version was created.</p>
    #   @return [Time]
    # @!attribute version
    #   <p>The version of the flow.</p>
    #   @return [String]
    class FlowVersionSummary < Struct.new(
      :id,
      :arn,
      :status,
      :created_at,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines parameters that the agent needs to invoke from the user to complete the function. Corresponds to an action in an action group.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_CreateAgentActionGroup.html#API_agent_CreateAgentActionGroup_RequestSyntax">CreateAgentActionGroup request</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_CreateAgentActionGroup.html#API_agent_CreateAgentActionGroup_ResponseSyntax">CreateAgentActionGroup response</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_UpdateAgentActionGroup.html#API_agent_UpdateAgentActionGroup_RequestSyntax">UpdateAgentActionGroup request</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_UpdateAgentActionGroup.html#API_agent_UpdateAgentActionGroup_ResponseSyntax">UpdateAgentActionGroup response</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetAgentActionGroup.html#API_agent_GetAgentActionGroup_ResponseSyntax">GetAgentActionGroup response</a> </p> </li> </ul>
    # @!attribute name
    #   <p>A name for the function.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the function and its purpose.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters that the agent elicits from the user to fulfill the function.</p>
    #   @return [Hash<String, Types::ParameterDetail>]
    # @!attribute require_confirmation
    #   <p>Contains information if user confirmation is required to invoke the function.</p>
    #   @return [String]
    class Function < Struct.new(
      :name,
      :description,
      :parameters,
      :require_confirmation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines functions that each define parameters that the agent needs to invoke from the user. Each function represents an action in an action group.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_CreateAgentActionGroup.html#API_agent_CreateAgentActionGroup_RequestSyntax">CreateAgentActionGroup request</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_CreateAgentActionGroup.html#API_agent_CreateAgentActionGroup_ResponseSyntax">CreateAgentActionGroup response</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_UpdateAgentActionGroup.html#API_agent_UpdateAgentActionGroup_RequestSyntax">UpdateAgentActionGroup request</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_UpdateAgentActionGroup.html#API_agent_UpdateAgentActionGroup_ResponseSyntax">UpdateAgentActionGroup response</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetAgentActionGroup.html#API_agent_GetAgentActionGroup_ResponseSyntax">GetAgentActionGroup response</a> </p> </li> </ul>
    # @!attribute functions
    #   <p>A list of functions that each define an action in the action group.</p>
    #   @return [Array<Types::Function>]
    class FunctionSchema < Struct.new(
      :functions,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Functions < FunctionSchema; end
      class Unknown < FunctionSchema; end
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent that the action group belongs to.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version of the agent that the action group belongs to.</p>
    #   @return [String]
    # @!attribute action_group_id
    #   <p>The unique identifier of the action group for which to get information.</p>
    #   @return [String]
    class GetAgentActionGroupRequest < Struct.new(
      :agent_id,
      :agent_version,
      :action_group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_action_group
    #   <p>Contains details about the action group.</p>
    #   @return [Types::AgentActionGroup]
    class GetAgentActionGroupResponse < Struct.new(
      :agent_action_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent to which the alias to get information belongs.</p>
    #   @return [String]
    # @!attribute agent_alias_id
    #   <p>The unique identifier of the alias for which to get information.</p>
    #   @return [String]
    class GetAgentAliasRequest < Struct.new(
      :agent_id,
      :agent_alias_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_alias
    #   <p>Contains information about the alias.</p>
    #   @return [Types::AgentAlias]
    class GetAgentAliasResponse < Struct.new(
      :agent_alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The agent's ID.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The agent's version.</p>
    #   @return [String]
    # @!attribute collaborator_id
    #   <p>The collaborator's ID.</p>
    #   @return [String]
    class GetAgentCollaboratorRequest < Struct.new(
      :agent_id,
      :agent_version,
      :collaborator_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_collaborator
    #   <p>Details about the collaborator.</p>
    #   @return [Types::AgentCollaborator]
    class GetAgentCollaboratorResponse < Struct.new(
      :agent_collaborator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent with which the knowledge base is associated.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version of the agent with which the knowledge base is associated.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base associated with the agent.</p>
    #   @return [String]
    class GetAgentKnowledgeBaseRequest < Struct.new(
      :agent_id,
      :agent_version,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_knowledge_base
    #   <p>Contains details about a knowledge base attached to an agent.</p>
    #   @return [Types::AgentKnowledgeBase]
    class GetAgentKnowledgeBaseResponse < Struct.new(
      :agent_knowledge_base,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent.</p>
    #   @return [String]
    class GetAgentRequest < Struct.new(
      :agent_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent
    #   <p>Contains details about the agent.</p>
    #   @return [Types::Agent]
    class GetAgentResponse < Struct.new(
      :agent,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version of the agent.</p>
    #   @return [String]
    class GetAgentVersionRequest < Struct.new(
      :agent_id,
      :agent_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_version
    #   <p>Contains details about the version of the agent.</p>
    #   @return [Types::AgentVersion]
    class GetAgentVersionResponse < Struct.new(
      :agent_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base for the data source.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The unique identifier of the data source.</p>
    #   @return [String]
    class GetDataSourceRequest < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_source
    #   <p>Contains details about the data source.</p>
    #   @return [Types::DataSource]
    class GetDataSourceResponse < Struct.new(
      :data_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow that the alias belongs to.</p>
    #   @return [String]
    # @!attribute alias_identifier
    #   <p>The unique identifier of the alias for which to retrieve information.</p>
    #   @return [String]
    class GetFlowAliasRequest < Struct.new(
      :flow_identifier,
      :alias_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the alias.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the flow.</p>
    #   @return [String]
    # @!attribute routing_configuration
    #   <p>Contains information about the version that the alias is mapped to.</p>
    #   @return [Array<Types::FlowAliasRoutingConfigurationListItem>]
    # @!attribute concurrency_configuration
    #   <p>The configuration that specifies how nodes in the flow are executed in parallel.</p>
    #   @return [Types::FlowAliasConcurrencyConfiguration]
    # @!attribute flow_id
    #   <p>The unique identifier of the flow that the alias belongs to.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the alias of the flow.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the flow.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the flow was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the alias was last updated.</p>
    #   @return [Time]
    class GetFlowAliasResponse < Struct.new(
      :name,
      :description,
      :routing_configuration,
      :concurrency_configuration,
      :flow_id,
      :id,
      :arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    class GetFlowRequest < Struct.new(
      :flow_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the flow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the flow.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role with permissions to create a flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html">Create a service row for flows</a> in the Amazon Bedrock User Guide.</p>
    #   @return [String]
    # @!attribute customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key that the flow is encrypted with.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the flow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the flow. The following statuses are possible:</p> <ul> <li> <p>NotPrepared – The flow has been created or updated, but hasn't been prepared. If you just created the flow, you can't test it. If you updated the flow, the <code>DRAFT</code> version won't contain the latest changes for testing. Send a <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PrepareFlow.html">PrepareFlow</a> request to package the latest changes into the <code>DRAFT</code> version.</p> </li> <li> <p>Preparing – The flow is being prepared so that the <code>DRAFT</code> version contains the latest changes for testing.</p> </li> <li> <p>Prepared – The flow is prepared and the <code>DRAFT</code> version contains the latest changes for testing.</p> </li> <li> <p>Failed – The last API operation that you invoked on the flow failed. Send a <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetFlow.html">GetFlow</a> request and check the error message in the <code>validations</code> field.</p> </li> </ul>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the flow was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the flow was last updated.</p>
    #   @return [Time]
    # @!attribute version
    #   <p>The version of the flow for which information was retrieved.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The definition of the nodes and connections between the nodes in the flow.</p>
    #   @return [Types::FlowDefinition]
    # @!attribute validations
    #   <p>A list of validation error messages related to the last failed operation on the flow.</p>
    #   @return [Array<Types::FlowValidation>]
    class GetFlowResponse < Struct.new(
      :name,
      :description,
      :execution_role_arn,
      :customer_encryption_key_arn,
      :id,
      :arn,
      :status,
      :created_at,
      :updated_at,
      :version,
      :definition,
      :validations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow for which to get information.</p>
    #   @return [String]
    # @!attribute flow_version
    #   <p>The version of the flow for which to get information.</p>
    #   @return [String]
    class GetFlowVersionRequest < Struct.new(
      :flow_identifier,
      :flow_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the flow.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role with permissions to create a flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html">Create a service role for flows in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>
    #   @return [String]
    # @!attribute customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key that the version of the flow is encrypted with.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the flow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the flow.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the flow was created.</p>
    #   @return [Time]
    # @!attribute version
    #   <p>The version of the flow for which information was retrieved.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The definition of the nodes and connections between nodes in the flow.</p>
    #   @return [Types::FlowDefinition]
    class GetFlowVersionResponse < Struct.new(
      :name,
      :description,
      :execution_role_arn,
      :customer_encryption_key_arn,
      :id,
      :arn,
      :status,
      :created_at,
      :version,
      :definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base for the data ingestion job you want to get information on.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The unique identifier of the data source for the data ingestion job you want to get information on.</p>
    #   @return [String]
    # @!attribute ingestion_job_id
    #   <p>The unique identifier of the data ingestion job you want to get information on.</p>
    #   @return [String]
    class GetIngestionJobRequest < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :ingestion_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ingestion_job
    #   <p>Contains details about the data ingestion job.</p>
    #   @return [Types::IngestionJob]
    class GetIngestionJobResponse < Struct.new(
      :ingestion_job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base that is connected to the data source.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The unique identifier of the data source that contains the documents.</p>
    #   @return [String]
    # @!attribute document_identifiers
    #   <p>A list of objects, each of which contains information to identify a document for which to retrieve information.</p>
    #   @return [Array<Types::DocumentIdentifier>]
    class GetKnowledgeBaseDocumentsRequest < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :document_identifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute document_details
    #   <p>A list of objects, each of which contains information about the documents that were retrieved.</p>
    #   @return [Array<Types::KnowledgeBaseDocumentDetail>]
    class GetKnowledgeBaseDocumentsResponse < Struct.new(
      :document_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base you want to get information on.</p>
    #   @return [String]
    class GetKnowledgeBaseRequest < Struct.new(
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base
    #   <p>Contains details about the knowledge base.</p>
    #   @return [Types::KnowledgeBase]
    class GetKnowledgeBaseResponse < Struct.new(
      :knowledge_base,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute prompt_identifier
    #   <p>The unique identifier of the prompt.</p>
    #   @return [String]
    # @!attribute prompt_version
    #   <p>The version of the prompt about which you want to retrieve information. Omit this field to return information about the working draft of the prompt.</p>
    #   @return [String]
    class GetPromptRequest < Struct.new(
      :prompt_identifier,
      :prompt_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the prompt.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The descriptino of the prompt.</p>
    #   @return [String]
    # @!attribute customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key that the prompt is encrypted with.</p>
    #   @return [String]
    # @!attribute default_variant
    #   <p>The name of the default variant for the prompt. This value must match the <code>name</code> field in the relevant <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptVariant.html">PromptVariant</a> object.</p>
    #   @return [String]
    # @!attribute variants
    #   <p>A list of objects, each containing details about a variant of the prompt.</p>
    #   @return [Array<Types::PromptVariant>]
    # @!attribute id
    #   <p>The unique identifier of the prompt.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the prompt or the prompt version (if you specified a version in the request).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the prompt.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the prompt was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the prompt was last updated.</p>
    #   @return [Time]
    class GetPromptResponse < Struct.new(
      :name,
      :description,
      :customer_encryption_key_arn,
      :default_variant,
      :variants,
      :id,
      :arn,
      :version,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a guardrail associated with a resource.</p>
    # @!attribute guardrail_identifier
    #   <p>The unique identifier of the guardrail.</p>
    #   @return [String]
    # @!attribute guardrail_version
    #   <p>The version of the guardrail.</p>
    #   @return [String]
    class GuardrailConfiguration < Struct.new(
      :guardrail_identifier,
      :guardrail_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for hierarchical document chunking for a data source. Hierarchical chunking splits documents into layers of chunks where the first layer contains large chunks, and the second layer contains smaller chunks derived from the first layer.</p> <p>You configure the number of tokens to overlap, or repeat across adjacent chunks. For example, if you set overlap tokens to 60, the last 60 tokens in the first chunk are also included at the beginning of the second chunk. For each layer, you must also configure the maximum number of tokens in a chunk.</p>
    # @!attribute level_configurations
    #   <p>Token settings for each layer.</p>
    #   @return [Array<Types::HierarchicalChunkingLevelConfiguration>]
    # @!attribute overlap_tokens
    #   <p>The number of tokens to repeat across chunks in the same layer.</p>
    #   @return [Integer]
    class HierarchicalChunkingConfiguration < Struct.new(
      :level_configurations,
      :overlap_tokens,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Token settings for a layer in a hierarchical chunking configuration.</p>
    # @!attribute max_tokens
    #   <p>The maximum number of tokens that a chunk can contain in this layer.</p>
    #   @return [Integer]
    class HierarchicalChunkingLevelConfiguration < Struct.new(
      :max_tokens,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about incompatible data types in a connection between nodes.</p>
    # @!attribute connection
    #   <p>The name of the connection with incompatible data types.</p>
    #   @return [String]
    class IncompatibleConnectionDataTypeFlowValidationDetails < Struct.new(
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains inference parameters to use when the agent invokes a foundation model in the part of the agent sequence defined by the <code>promptType</code>. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Inference parameters for foundation models</a>.</p>
    # @!attribute temperature
    #   <p>The likelihood of the model selecting higher-probability options while generating a response. A lower value makes the model more likely to choose higher-probability options, while a higher value makes the model more likely to choose lower-probability options.</p>
    #   @return [Float]
    # @!attribute top_p
    #   <p>While generating a response, the model determines the probability of the following token at each point of generation. The value that you set for <code>Top P</code> determines the number of most-likely candidates from which the model chooses the next token in the sequence. For example, if you set <code>topP</code> to 0.8, the model only selects the next token from the top 80% of the probability distribution of next tokens.</p>
    #   @return [Float]
    # @!attribute top_k
    #   <p>While generating a response, the model determines the probability of the following token at each point of generation. The value that you set for <code>topK</code> is the number of most-likely candidates from which the model chooses the next token in the sequence. For example, if you set <code>topK</code> to 50, the model selects the next token from among the top 50 most likely choices.</p>
    #   @return [Integer]
    # @!attribute maximum_length
    #   <p>The maximum number of tokens to allow in the generated response.</p>
    #   @return [Integer]
    # @!attribute stop_sequences
    #   <p>A list of stop sequences. A stop sequence is a sequence of characters that causes the model to stop generating the response.</p>
    #   @return [Array<String>]
    class InferenceConfiguration < Struct.new(
      :temperature,
      :top_p,
      :top_k,
      :maximum_length,
      :stop_sequences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base to ingest the documents into.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The unique identifier of the data source connected to the knowledge base that you're adding documents to.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute documents
    #   <p>A list of objects, each of which contains information about the documents to add.</p>
    #   @return [Array<Types::KnowledgeBaseDocument>]
    class IngestKnowledgeBaseDocumentsRequest < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :client_token,
      :documents,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute document_details
    #   <p>A list of objects, each of which contains information about the documents that were ingested.</p>
    #   @return [Array<Types::KnowledgeBaseDocumentDetail>]
    class IngestKnowledgeBaseDocumentsResponse < Struct.new(
      :document_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a data ingestion job. Data sources are ingested into a knowledge base so that Large Language Models (LLMs) can use your data.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_StartIngestionJob.html#API_agent_StartIngestionJob_ResponseSyntax">StartIngestionJob response</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetIngestionJob.html#API_agent_GetIngestionJob_ResponseSyntax">GetIngestionJob response</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_ListIngestionJobs.html#API_agent_ListIngestionJobs_ResponseSyntax">ListIngestionJob response</a> </p> </li> </ul>
    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge for the data ingestion job.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The unique identifier of the data source for the data ingestion job.</p>
    #   @return [String]
    # @!attribute ingestion_job_id
    #   <p>The unique identifier of the data ingestion job.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data ingestion job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data ingestion job.</p>
    #   @return [String]
    # @!attribute statistics
    #   <p>Contains statistics about the data ingestion job.</p>
    #   @return [Types::IngestionJobStatistics]
    # @!attribute failure_reasons
    #   <p>A list of reasons that the data ingestion job failed.</p>
    #   @return [Array<String>]
    # @!attribute started_at
    #   <p>The time the data ingestion job started.</p> <p>If you stop a data ingestion job, the <code>startedAt</code> time is the time the job was started before the job was stopped.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time the data ingestion job was last updated.</p> <p>If you stop a data ingestion job, the <code>updatedAt</code> time is the time the job was stopped.</p>
    #   @return [Time]
    class IngestionJob < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :ingestion_job_id,
      :description,
      :status,
      :statistics,
      :failure_reasons,
      :started_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The definition of a filter to filter the data.</p>
    # @!attribute attribute
    #   <p>The name of field or attribute to apply the filter.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>The operation to apply to the field or attribute.</p>
    #   @return [String]
    # @!attribute values
    #   <p>A list of values that belong to the field or attribute.</p>
    #   @return [Array<String>]
    class IngestionJobFilter < Struct.new(
      :attribute,
      :operator,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters of sorting the data.</p>
    # @!attribute attribute
    #   <p>The name of field or attribute to apply sorting of data.</p>
    #   @return [String]
    # @!attribute order
    #   <p>The order for sorting the data.</p>
    #   @return [String]
    class IngestionJobSortBy < Struct.new(
      :attribute,
      :order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the statistics for the data ingestion job.</p>
    # @!attribute number_of_documents_scanned
    #   <p>The total number of source documents that were scanned. Includes new, updated, and unchanged documents.</p>
    #   @return [Integer]
    # @!attribute number_of_metadata_documents_scanned
    #   <p>The total number of metadata files that were scanned. Includes new, updated, and unchanged files.</p>
    #   @return [Integer]
    # @!attribute number_of_new_documents_indexed
    #   <p>The number of new source documents in the data source that were successfully indexed.</p>
    #   @return [Integer]
    # @!attribute number_of_modified_documents_indexed
    #   <p>The number of modified source documents in the data source that were successfully indexed.</p>
    #   @return [Integer]
    # @!attribute number_of_metadata_documents_modified
    #   <p>The number of metadata files that were updated or deleted.</p>
    #   @return [Integer]
    # @!attribute number_of_documents_deleted
    #   <p>The number of source documents that were deleted.</p>
    #   @return [Integer]
    # @!attribute number_of_documents_failed
    #   <p>The number of source documents that failed to be ingested.</p>
    #   @return [Integer]
    class IngestionJobStatistics < Struct.new(
      :number_of_documents_scanned,
      :number_of_metadata_documents_scanned,
      :number_of_new_documents_indexed,
      :number_of_modified_documents_indexed,
      :number_of_metadata_documents_modified,
      :number_of_documents_deleted,
      :number_of_documents_failed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_documents_scanned] = 0 unless options.key?(:number_of_documents_scanned)
        options[:number_of_metadata_documents_scanned] = 0 unless options.key?(:number_of_metadata_documents_scanned)
        options[:number_of_new_documents_indexed] = 0 unless options.key?(:number_of_new_documents_indexed)
        options[:number_of_modified_documents_indexed] = 0 unless options.key?(:number_of_modified_documents_indexed)
        options[:number_of_metadata_documents_modified] = 0 unless options.key?(:number_of_metadata_documents_modified)
        options[:number_of_documents_deleted] = 0 unless options.key?(:number_of_documents_deleted)
        options[:number_of_documents_failed] = 0 unless options.key?(:number_of_documents_failed)
        super
      end
    end

    # <p>Contains details about a data ingestion job.</p>
    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base for the data ingestion job.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The unique identifier of the data source for the data ingestion job.</p>
    #   @return [String]
    # @!attribute ingestion_job_id
    #   <p>The unique identifier of the data ingestion job.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data ingestion job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data ingestion job.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The time the data ingestion job started.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time the data ingestion job was last updated.</p>
    #   @return [Time]
    # @!attribute statistics
    #   <p>Contains statistics for the data ingestion job.</p>
    #   @return [Types::IngestionJobStatistics]
    class IngestionJobSummary < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :ingestion_job_id,
      :description,
      :status,
      :started_at,
      :updated_at,
      :statistics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for an inline code node in your flow. Inline code nodes let you write and execute code directly within your flow, enabling data transformations, custom logic, and integrations without needing an external Lambda function.</p>
    # @!attribute code
    #   <p>The code that's executed in your inline code node. The code can access input data from previous nodes in the flow, perform operations on that data, and produce output that can be used by other nodes in your flow.</p> <p>The code must be valid in the programming <code>language</code> that you specify.</p>
    #   @return [String]
    # @!attribute language
    #   <p>The programming language used by your inline code node.</p> <p>The code must be valid in the programming <code>language</code> that you specify. Currently, only Python 3 (<code>Python_3</code>) is supported.</p>
    #   @return [String]
    class InlineCodeFlowNodeConfiguration < Struct.new(
      :code,
      :language,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:code] = '' unless options.key?(:code)
        options[:language] = 'Python_3' unless options.key?(:language)
        super
      end
    end

    # <p>Contains information about content defined inline to ingest into a data source. Choose a <code>type</code> and include the field that corresponds to it.</p>
    # @!attribute type
    #   <p>The type of inline content to define.</p>
    #   @return [String]
    # @!attribute byte_content
    #   <p>Contains information about content defined inline in bytes.</p>
    #   @return [Types::ByteContentDoc]
    # @!attribute text_content
    #   <p>Contains information about content defined inline in text.</p>
    #   @return [Types::TextContentDoc]
    class InlineContent < Struct.new(
      :type,
      :byte_content,
      :text_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for the input flow node for a flow. This node takes the input from flow invocation and passes it to the next node in the data type that you specify.</p>
    class InputFlowNodeConfiguration < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A location for storing content from data sources temporarily as it is processed by custom components in the ingestion pipeline.</p>
    # @!attribute s3_location
    #   <p>An S3 bucket path.</p>
    #   @return [Types::S3Location]
    class IntermediateStorage < Struct.new(
      :s3_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal server error occurred. Retry your request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a flow that contains connections that violate loop boundary rules.</p>
    # @!attribute connection
    #   <p>The name of the connection that violates loop boundary rules.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source node of the connection that violates DoWhile loop boundary rules.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target node of the connection that violates DoWhile loop boundary rules.</p>
    #   @return [String]
    class InvalidLoopBoundaryFlowValidationDetails < Struct.new(
      :connection,
      :source,
      :target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for an iterator node in a flow. Takes an input that is an array and iteratively sends each item of the array as an output to the following node. The size of the array is also returned in the output.</p> <p>The output flow node at the end of the flow iteration will return a response for each member of the array. To return only one response, you can include a collector node downstream from the iterator node.</p>
    class IteratorFlowNodeConfiguration < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for an Amazon Kendra knowledge base.</p>
    # @!attribute kendra_index_arn
    #   <p>The ARN of the Amazon Kendra index.</p>
    #   @return [String]
    class KendraKnowledgeBaseConfiguration < Struct.new(
      :kendra_index_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a knowledge base.</p>
    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the knowledge base.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role with permissions to invoke API operations on the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_configuration
    #   <p>Contains details about the embeddings configuration of the knowledge base.</p>
    #   @return [Types::KnowledgeBaseConfiguration]
    # @!attribute storage_configuration
    #   <p>Contains details about the storage configuration of the knowledge base.</p>
    #   @return [Types::StorageConfiguration]
    # @!attribute status
    #   <p>The status of the knowledge base. The following statuses are possible:</p> <ul> <li> <p>CREATING – The knowledge base is being created.</p> </li> <li> <p>ACTIVE – The knowledge base is ready to be queried.</p> </li> <li> <p>DELETING – The knowledge base is being deleted.</p> </li> <li> <p>UPDATING – The knowledge base is being updated.</p> </li> <li> <p>FAILED – The knowledge base API operation failed.</p> </li> </ul>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time the knowledge base was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time the knowledge base was last updated.</p>
    #   @return [Time]
    # @!attribute failure_reasons
    #   <p>A list of reasons that the API operation on the knowledge base failed.</p>
    #   @return [Array<String>]
    class KnowledgeBase < Struct.new(
      :knowledge_base_id,
      :name,
      :knowledge_base_arn,
      :description,
      :role_arn,
      :knowledge_base_configuration,
      :storage_configuration,
      :status,
      :created_at,
      :updated_at,
      :failure_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the vector embeddings configuration of the knowledge base.</p>
    # @!attribute type
    #   <p>The type of data that the data source is converted into for the knowledge base.</p>
    #   @return [String]
    # @!attribute vector_knowledge_base_configuration
    #   <p>Contains details about the model that's used to convert the data source into vector embeddings.</p>
    #   @return [Types::VectorKnowledgeBaseConfiguration]
    # @!attribute kendra_knowledge_base_configuration
    #   <p>Settings for an Amazon Kendra knowledge base.</p>
    #   @return [Types::KendraKnowledgeBaseConfiguration]
    # @!attribute sql_knowledge_base_configuration
    #   <p>Specifies configurations for a knowledge base connected to an SQL database.</p>
    #   @return [Types::SqlKnowledgeBaseConfiguration]
    class KnowledgeBaseConfiguration < Struct.new(
      :type,
      :vector_knowledge_base_configuration,
      :kendra_knowledge_base_configuration,
      :sql_knowledge_base_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a document to ingest into a knowledge base and metadata to associate with it.</p>
    # @!attribute metadata
    #   <p>Contains the metadata to associate with the document.</p>
    #   @return [Types::DocumentMetadata]
    # @!attribute content
    #   <p>Contains the content of the document.</p>
    #   @return [Types::DocumentContent]
    class KnowledgeBaseDocument < Struct.new(
      :metadata,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details for a document that was ingested or deleted.</p>
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base that the document was ingested into or deleted from.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The identifier of the data source connected to the knowledge base that the document was ingested into or deleted from.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The ingestion status of the document. The following statuses are possible:</p> <ul> <li> <p>STARTED – You submitted the ingestion job containing the document.</p> </li> <li> <p>PENDING – The document is waiting to be ingested.</p> </li> <li> <p>IN_PROGRESS – The document is being ingested.</p> </li> <li> <p>INDEXED – The document was successfully indexed.</p> </li> <li> <p>PARTIALLY_INDEXED – The document was partially indexed.</p> </li> <li> <p>METADATA_PARTIALLY_INDEXED – You submitted metadata for an existing document and it was partially indexed.</p> </li> <li> <p>METADATA_UPDATE_FAILED – You submitted a metadata update for an existing document but it failed.</p> </li> <li> <p>FAILED – The document failed to be ingested.</p> </li> <li> <p>NOT_FOUND – The document wasn't found.</p> </li> <li> <p>IGNORED – The document was ignored during ingestion.</p> </li> <li> <p>DELETING – You submitted the delete job containing the document.</p> </li> <li> <p>DELETE_IN_PROGRESS – The document is being deleted.</p> </li> </ul>
    #   @return [String]
    # @!attribute identifier
    #   <p>Contains information that identifies the document.</p>
    #   @return [Types::DocumentIdentifier]
    # @!attribute status_reason
    #   <p>The reason for the status. Appears alongside the status <code>IGNORED</code>.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time at which the document was last updated.</p>
    #   @return [Time]
    class KnowledgeBaseDocumentDetail < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :status,
      :identifier,
      :status_reason,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for a knowledge base node in a flow. This node takes a query as the input and returns, as the output, the retrieved responses directly (as an array) or a response generated based on the retrieved responses. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-nodes.html">Node types in a flow</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base to query.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The unique identifier of the model or <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html">inference profile</a> to use to generate a response from the query results. Omit this field if you want to return the retrieved results as an array.</p>
    #   @return [String]
    # @!attribute guardrail_configuration
    #   <p>Contains configurations for a guardrail to apply during query and response generation for the knowledge base in this configuration.</p>
    #   @return [Types::GuardrailConfiguration]
    # @!attribute number_of_results
    #   <p>The number of results to retrieve from the knowledge base.</p>
    #   @return [Integer]
    # @!attribute prompt_template
    #   <p>A custom prompt template to use with the knowledge base for generating responses.</p>
    #   @return [Types::KnowledgeBasePromptTemplate]
    # @!attribute inference_configuration
    #   <p>Contains inference configurations for the prompt.</p>
    #   @return [Types::PromptInferenceConfiguration]
    # @!attribute reranking_configuration
    #   <p>The configuration for reranking the retrieved results from the knowledge base to improve relevance.</p>
    #   @return [Types::VectorSearchRerankingConfiguration]
    # @!attribute orchestration_configuration
    #   <p>The configuration for orchestrating the retrieval and generation process in the knowledge base node.</p>
    #   @return [Types::KnowledgeBaseOrchestrationConfiguration]
    class KnowledgeBaseFlowNodeConfiguration < Struct.new(
      :knowledge_base_id,
      :model_id,
      :guardrail_configuration,
      :number_of_results,
      :prompt_template,
      :inference_configuration,
      :reranking_configuration,
      :orchestration_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:knowledge_base_id] = '' unless options.key?(:knowledge_base_id)
        super
      end
    end

    # <p>Configures how the knowledge base orchestrates the retrieval and generation process, allowing for customization of prompts, inference parameters, and performance settings.</p>
    # @!attribute prompt_template
    #   <p>A custom prompt template for orchestrating the retrieval and generation process.</p>
    #   @return [Types::KnowledgeBasePromptTemplate]
    # @!attribute inference_config
    #   <p>Contains inference configurations for the prompt.</p>
    #   @return [Types::PromptInferenceConfiguration]
    # @!attribute additional_model_request_fields
    #   <p>The additional model-specific request parameters as key-value pairs to be included in the request to the foundation model.</p>
    #   @return [Hash<String, JSON>]
    # @!attribute performance_config
    #   <p>The performance configuration options for the knowledge base retrieval and generation process.</p>
    #   @return [Types::PerformanceConfiguration]
    class KnowledgeBaseOrchestrationConfiguration < Struct.new(
      :prompt_template,
      :inference_config,
      :additional_model_request_fields,
      :performance_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a custom prompt template for orchestrating the retrieval and generation process.</p>
    # @!attribute text_prompt_template
    #   <p>The text of the prompt template.</p>
    #   @return [String]
    class KnowledgeBasePromptTemplate < Struct.new(
      :text_prompt_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a knowledge base.</p>
    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the knowledge base.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the knowledge base.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the knowledge base.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The time the knowledge base was last updated.</p>
    #   @return [Time]
    class KnowledgeBaseSummary < Struct.new(
      :knowledge_base_id,
      :name,
      :description,
      :status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for a Lambda function node in the flow. You specify the Lambda function to invoke and the inputs into the function. The output is the response that is defined in the Lambda function. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-nodes.html">Node types in a flow</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute lambda_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function to invoke.</p>
    #   @return [String]
    class LambdaFunctionFlowNodeConfiguration < Struct.new(
      :lambda_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:lambda_arn] = '' unless options.key?(:lambda_arn)
        super
      end
    end

    # <p>Contains configurations for a Lex node in the flow. You specify a Amazon Lex bot to invoke. This node takes an utterance as the input and returns as the output the intent identified by the Amazon Lex bot. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-nodes.html">Node types in a flow</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute bot_alias_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Lex bot alias to invoke.</p>
    #   @return [String]
    # @!attribute locale_id
    #   <p>The Region to invoke the Amazon Lex bot in.</p>
    #   @return [String]
    class LexFlowNodeConfiguration < Struct.new(
      :bot_alias_arn,
      :locale_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:bot_alias_arn] = '' unless options.key?(:bot_alias_arn)
        options[:locale_id] = '' unless options.key?(:locale_id)
        super
      end
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version of the agent.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    class ListAgentActionGroupsRequest < Struct.new(
      :agent_id,
      :agent_version,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action_group_summaries
    #   <p>A list of objects, each of which contains information about an action group.</p>
    #   @return [Array<Types::ActionGroupSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListAgentActionGroupsResponse < Struct.new(
      :action_group_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    class ListAgentAliasesRequest < Struct.new(
      :agent_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_alias_summaries
    #   <p>A list of objects, each of which contains information about an alias of the agent.</p>
    #   @return [Array<Types::AgentAliasSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListAgentAliasesResponse < Struct.new(
      :agent_alias_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The agent's ID.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The agent's version.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of agent collaborators to return in one page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    class ListAgentCollaboratorsRequest < Struct.new(
      :agent_id,
      :agent_version,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_collaborator_summaries
    #   <p>A list of collaborator summaries.</p>
    #   @return [Array<Types::AgentCollaboratorSummary>]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    class ListAgentCollaboratorsResponse < Struct.new(
      :agent_collaborator_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent for which to return information about knowledge bases associated with it.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version of the agent for which to return information about knowledge bases associated with it.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    class ListAgentKnowledgeBasesRequest < Struct.new(
      :agent_id,
      :agent_version,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_knowledge_base_summaries
    #   <p>A list of objects, each of which contains information about a knowledge base associated with the agent.</p>
    #   @return [Array<Types::AgentKnowledgeBaseSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListAgentKnowledgeBasesResponse < Struct.new(
      :agent_knowledge_base_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    class ListAgentVersionsRequest < Struct.new(
      :agent_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_version_summaries
    #   <p>A list of objects, each of which contains information about a version of the agent.</p>
    #   @return [Array<Types::AgentVersionSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListAgentVersionsResponse < Struct.new(
      :agent_version_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    class ListAgentsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_summaries
    #   <p>A list of objects, each of which contains information about an agent.</p>
    #   @return [Array<Types::AgentSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListAgentsResponse < Struct.new(
      :agent_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base for which to return a list of information.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    class ListDataSourcesRequest < Struct.new(
      :knowledge_base_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_source_summaries
    #   <p>A list of objects, each of which contains information about a data source.</p>
    #   @return [Array<Types::DataSourceSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListDataSourcesResponse < Struct.new(
      :data_source_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow for which aliases are being returned.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    class ListFlowAliasesRequest < Struct.new(
      :flow_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_alias_summaries
    #   <p>A list, each member of which contains information about an alias.</p>
    #   @return [Array<Types::FlowAliasSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListFlowAliasesResponse < Struct.new(
      :flow_alias_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    class ListFlowVersionsRequest < Struct.new(
      :flow_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_version_summaries
    #   <p>A list, each member of which contains information about a flow.</p>
    #   @return [Array<Types::FlowVersionSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListFlowVersionsResponse < Struct.new(
      :flow_version_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    class ListFlowsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_summaries
    #   <p>A list, each member of which contains information about a flow.</p>
    #   @return [Array<Types::FlowSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListFlowsResponse < Struct.new(
      :flow_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base for the list of data ingestion jobs.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The unique identifier of the data source for the list of data ingestion jobs.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Contains information about the filters for filtering the data.</p>
    #   @return [Array<Types::IngestionJobFilter>]
    # @!attribute sort_by
    #   <p>Contains details about how to sort the data.</p>
    #   @return [Types::IngestionJobSortBy]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    class ListIngestionJobsRequest < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :filters,
      :sort_by,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ingestion_job_summaries
    #   <p>A list of data ingestion jobs with information about each job.</p>
    #   @return [Array<Types::IngestionJobSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListIngestionJobsResponse < Struct.new(
      :ingestion_job_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base that is connected to the data source.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The unique identifier of the data source that contains the documents.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    class ListKnowledgeBaseDocumentsRequest < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute document_details
    #   <p>A list of objects, each of which contains information about the documents that were retrieved.</p>
    #   @return [Array<Types::KnowledgeBaseDocumentDetail>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListKnowledgeBaseDocumentsResponse < Struct.new(
      :document_details,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    class ListKnowledgeBasesRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_summaries
    #   <p>A list of knowledge bases with information about each knowledge base.</p>
    #   @return [Array<Types::KnowledgeBaseSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListKnowledgeBasesResponse < Struct.new(
      :knowledge_base_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute prompt_identifier
    #   <p>The unique identifier of the prompt for whose versions you want to return information. Omit this field to list information about all prompts in an account.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    class ListPromptsRequest < Struct.new(
      :prompt_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute prompt_summaries
    #   <p>A list, each member of which contains information about a prompt using Prompt management.</p>
    #   @return [Array<Types::PromptSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListPromptsResponse < Struct.new(
      :prompt_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to list tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The key-value pairs for the tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for the controller node of a DoWhile loop in the flow.</p>
    # @!attribute continue_condition
    #   <p>Specifies the condition that determines when the flow exits the DoWhile loop. The loop executes until this condition evaluates to true.</p>
    #   @return [Types::FlowCondition]
    # @!attribute max_iterations
    #   <p>Specifies the maximum number of times the DoWhile loop can iterate before the flow exits the loop.</p>
    #   @return [Integer]
    class LoopControllerFlowNodeConfiguration < Struct.new(
      :continue_condition,
      :max_iterations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_iterations] = 10 unless options.key?(:max_iterations)
        super
      end
    end

    # <p>Contains configurations for the nodes of a DoWhile loop in your flow.</p> <p>A DoWhile loop is made up of the following nodes:</p> <ul> <li> <p> <code>Loop</code> - The container node that holds the loop's flow definition. This node encompasses the entire loop structure.</p> </li> <li> <p> <code>LoopInput</code> - The entry point node for the loop. This node receives inputs from nodes outside the loop and from previous loop iterations.</p> </li> <li> <p>Body nodes - The processing nodes that execute within each loop iteration. These can be nodes for handling data in your flow, such as a prompt or Lambda function nodes. Some node types aren't supported inside a DoWhile loop body. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_LoopIncompatibleNodeTypeFlowValidationDetails.html">LoopIncompatibleNodeTypeFlowValidationDetails</a>.</p> </li> <li> <p> <code>LoopController</code> - The node that evaluates whether the loop should continue or exit based on a condition.</p> </li> </ul> <p>These nodes work together to create a loop that runs at least once and continues until a specified condition is met or a maximum number of iterations is reached.</p>
    # @!attribute definition
    #   <p>The definition of the DoWhile loop nodes and connections between nodes in the flow.</p>
    #   @return [Types::FlowDefinition]
    class LoopFlowNodeConfiguration < Struct.new(
      :definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a flow that contains an incompatible node in a DoWhile loop.</p>
    # @!attribute node
    #   <p>The <code>Loop</code> container node that contains an incompatible node.</p>
    #   @return [String]
    # @!attribute incompatible_node_type
    #   <p>The node type of the incompatible node in the DoWhile loop. Some node types, like a condition node, aren't allowed in a DoWhile loop.</p>
    #   @return [String]
    # @!attribute incompatible_node_name
    #   <p>The node that's incompatible in the DoWhile loop.</p>
    #   @return [String]
    class LoopIncompatibleNodeTypeFlowValidationDetails < Struct.new(
      :node,
      :incompatible_node_type,
      :incompatible_node_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for the input node of a DoWhile loop in the flow.</p>
    class LoopInputFlowNodeConfiguration < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a malformed condition expression in a node.</p>
    # @!attribute node
    #   <p>The name of the node containing the malformed condition expression.</p>
    #   @return [String]
    # @!attribute condition
    #   <p>The name of the malformed condition.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>The error message describing why the condition expression is malformed.</p>
    #   @return [String]
    class MalformedConditionExpressionFlowValidationDetails < Struct.new(
      :node,
      :condition,
      :cause,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a malformed input expression in a node.</p>
    # @!attribute node
    #   <p>The name of the node containing the malformed input expression.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The name of the input with the malformed expression.</p>
    #   @return [String]
    # @!attribute cause
    #   <p>The error message describing why the input expression is malformed.</p>
    #   @return [String]
    class MalformedNodeInputExpressionFlowValidationDetails < Struct.new(
      :node,
      :input,
      :cause,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the memory configuration.</p>
    # @!attribute enabled_memory_types
    #   <p>The type of memory that is stored. </p>
    #   @return [Array<String>]
    # @!attribute storage_days
    #   <p>The number of days the agent is configured to retain the conversational context.</p>
    #   @return [Integer]
    # @!attribute session_summary_configuration
    #   <p>Contains the configuration for SESSION_SUMMARY memory type enabled for the agent. </p>
    #   @return [Types::SessionSummaryConfiguration]
    class MemoryConfiguration < Struct.new(
      :enabled_memory_types,
      :storage_days,
      :session_summary_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:storage_days] = 30 unless options.key?(:storage_days)
        super
      end
    end

    # <p>A message input or response from a model. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-create.html">Create a prompt using Prompt management</a>.</p>
    # @!attribute role
    #   <p>The role that the message belongs to.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content in the message.</p>
    #   @return [Array<Types::ContentBlock>]
    class Message < Struct.new(
      :role,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a metadata attribute.</p>
    # @!attribute key
    #   <p>The key of the metadata attribute.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Contains the value of the metadata attribute.</p>
    #   @return [Types::MetadataAttributeValue]
    class MetadataAttribute < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the value of the metadata attribute. Choose a <code>type</code> and include the field that corresponds to it.</p>
    # @!attribute type
    #   <p>The type of the metadata attribute.</p>
    #   @return [String]
    # @!attribute number_value
    #   <p>The value of the numeric metadata attribute.</p>
    #   @return [Float]
    # @!attribute boolean_value
    #   <p>The value of the Boolean metadata attribute.</p>
    #   @return [Boolean]
    # @!attribute string_value
    #   <p>The value of the string metadata attribute.</p>
    #   @return [String]
    # @!attribute string_list_value
    #   <p>An array of strings that define the value of the metadata attribute.</p>
    #   @return [Array<String>]
    class MetadataAttributeValue < Struct.new(
      :type,
      :number_value,
      :boolean_value,
      :string_value,
      :string_list_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies how metadata fields should be handled during the reranking process.</p>
    # @!attribute selection_mode
    #   <p>The mode for selecting metadata fields for reranking.</p>
    #   @return [String]
    # @!attribute selective_mode_configuration
    #   <p>The configuration for selective metadata field inclusion or exclusion during reranking.</p>
    #   @return [Types::RerankingMetadataSelectiveModeConfiguration]
    class MetadataConfigurationForReranking < Struct.new(
      :selection_mode,
      :selective_mode_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about mismatched input data types in a node.</p>
    # @!attribute node
    #   <p>The name of the node containing the input with the mismatched data type.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The name of the input with the mismatched data type.</p>
    #   @return [String]
    # @!attribute expected_type
    #   <p>The expected data type for the node input.</p>
    #   @return [String]
    class MismatchedNodeInputTypeFlowValidationDetails < Struct.new(
      :node,
      :input,
      :expected_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about mismatched output data types in a node.</p>
    # @!attribute node
    #   <p>The name of the node containing the output with the mismatched data type.</p>
    #   @return [String]
    # @!attribute output
    #   <p>The name of the output with the mismatched data type.</p>
    #   @return [String]
    # @!attribute expected_type
    #   <p>The expected data type for the node output.</p>
    #   @return [String]
    class MismatchedNodeOutputTypeFlowValidationDetails < Struct.new(
      :node,
      :output,
      :expected_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a connection missing required configuration.</p>
    # @!attribute connection
    #   <p>The name of the connection missing configuration.</p>
    #   @return [String]
    class MissingConnectionConfigurationFlowValidationDetails < Struct.new(
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a missing default condition in a conditional node.</p>
    # @!attribute node
    #   <p>The name of the node missing the default condition.</p>
    #   @return [String]
    class MissingDefaultConditionFlowValidationDetails < Struct.new(
      :node,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about missing ending nodes (such as FlowOutputNode) in the flow.</p>
    class MissingEndingNodesFlowValidationDetails < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a flow that's missing a required <code>LoopController</code> node in a DoWhile loop.</p>
    # @!attribute loop_node
    #   <p>The DoWhile loop in a flow that's missing a required <code>LoopController</code> node.</p>
    #   @return [String]
    class MissingLoopControllerNodeFlowValidationDetails < Struct.new(
      :loop_node,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a flow that's missing a required <code>LoopInput</code> node in a DoWhile loop.</p>
    # @!attribute loop_node
    #   <p>The DoWhile loop in a flow that's missing a required <code>LoopInput</code> node.</p>
    #   @return [String]
    class MissingLoopInputNodeFlowValidationDetails < Struct.new(
      :loop_node,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a node missing a required configuration.</p>
    # @!attribute node
    #   <p>The name of the node missing a required configuration.</p>
    #   @return [String]
    class MissingNodeConfigurationFlowValidationDetails < Struct.new(
      :node,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a missing required input in a node.</p>
    # @!attribute node
    #   <p>The name of the node missing the required input.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The name of the missing input.</p>
    #   @return [String]
    class MissingNodeInputFlowValidationDetails < Struct.new(
      :node,
      :input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a missing required output in a node.</p>
    # @!attribute node
    #   <p>The name of the node missing the required output.</p>
    #   @return [String]
    # @!attribute output
    #   <p>The name of the missing output.</p>
    #   @return [String]
    class MissingNodeOutputFlowValidationDetails < Struct.new(
      :node,
      :output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about missing starting nodes (such as FlowInputNode) in the flow.</p>
    class MissingStartingNodesFlowValidationDetails < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the storage configuration of the knowledge base in MongoDB Atlas. </p>
    # @!attribute endpoint
    #   <p>The endpoint URL of your MongoDB Atlas cluster for your knowledge base.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The database name in your MongoDB Atlas cluster for your knowledge base.</p>
    #   @return [String]
    # @!attribute collection_name
    #   <p>The collection name of the knowledge base in MongoDB Atlas.</p>
    #   @return [String]
    # @!attribute vector_index_name
    #   <p>The name of the MongoDB Atlas vector search index.</p>
    #   @return [String]
    # @!attribute credentials_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the secret that you created in Secrets Manager that contains user credentials for your MongoDB Atlas cluster.</p>
    #   @return [String]
    # @!attribute field_mapping
    #   <p>Contains the names of the fields to which to map information about the vector store.</p>
    #   @return [Types::MongoDbAtlasFieldMapping]
    # @!attribute endpoint_service_name
    #   <p>The name of the VPC endpoint service in your account that is connected to your MongoDB Atlas cluster.</p>
    #   @return [String]
    # @!attribute text_index_name
    #   <p>The name of the text search index in the MongoDB collection. This is required for using the hybrid search feature.</p>
    #   @return [String]
    class MongoDbAtlasConfiguration < Struct.new(
      :endpoint,
      :database_name,
      :collection_name,
      :vector_index_name,
      :credentials_secret_arn,
      :field_mapping,
      :endpoint_service_name,
      :text_index_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the names of the fields to which to map information about the vector store.</p>
    # @!attribute vector_field
    #   <p>The name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.</p>
    #   @return [String]
    # @!attribute text_field
    #   <p>The name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.</p>
    #   @return [String]
    # @!attribute metadata_field
    #   <p>The name of the field in which Amazon Bedrock stores metadata about the vector store.</p>
    #   @return [String]
    class MongoDbAtlasFieldMapping < Struct.new(
      :vector_field,
      :text_field,
      :metadata_field,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a flow that contains multiple <code>LoopController</code> nodes in a DoWhile loop.</p>
    # @!attribute loop_node
    #   <p>The DoWhile loop in a flow that contains multiple <code>LoopController</code> nodes.</p>
    #   @return [String]
    class MultipleLoopControllerNodesFlowValidationDetails < Struct.new(
      :loop_node,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a flow that contains multiple <code>LoopInput</code> nodes in a DoWhile loop.</p>
    # @!attribute loop_node
    #   <p>The DoWhile loop in a flow that contains multiple <code>LoopInput</code> nodes.</p>
    #   @return [String]
    class MultipleLoopInputNodesFlowValidationDetails < Struct.new(
      :loop_node,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about multiple connections to a single node input.</p>
    # @!attribute node
    #   <p>The name of the node containing the input with multiple connections.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The name of the input with multiple connections to it.</p>
    #   @return [String]
    class MultipleNodeInputConnectionsFlowValidationDetails < Struct.new(
      :node,
      :input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the storage configuration of the knowledge base in Amazon Neptune Analytics. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-neptune.html">Create a vector index in Amazon Neptune Analytics</a>.</p>
    # @!attribute graph_arn
    #   <p>The Amazon Resource Name (ARN) of the Neptune Analytics vector store.</p>
    #   @return [String]
    # @!attribute field_mapping
    #   <p>Contains the names of the fields to which to map information about the vector store.</p>
    #   @return [Types::NeptuneAnalyticsFieldMapping]
    class NeptuneAnalyticsConfiguration < Struct.new(
      :graph_arn,
      :field_mapping,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the names of the fields to which to map information about the vector store.</p>
    # @!attribute text_field
    #   <p>The name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.</p>
    #   @return [String]
    # @!attribute metadata_field
    #   <p>The name of the field in which Amazon Bedrock stores metadata about the vector store.</p>
    #   @return [String]
    class NeptuneAnalyticsFieldMapping < Struct.new(
      :text_field,
      :metadata_field,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the Managed Cluster configuration of the knowledge base in Amazon OpenSearch Service. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-osm.html">Create a vector index in OpenSearch Managed Cluster</a>.</p>
    # @!attribute domain_endpoint
    #   <p>The endpoint URL the OpenSearch domain.</p>
    #   @return [String]
    # @!attribute domain_arn
    #   <p>The Amazon Resource Name (ARN) of the OpenSearch domain.</p>
    #   @return [String]
    # @!attribute vector_index_name
    #   <p>The name of the vector store.</p>
    #   @return [String]
    # @!attribute field_mapping
    #   <p>Contains the names of the fields to which to map information about the vector store.</p>
    #   @return [Types::OpenSearchManagedClusterFieldMapping]
    class OpenSearchManagedClusterConfiguration < Struct.new(
      :domain_endpoint,
      :domain_arn,
      :vector_index_name,
      :field_mapping,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the names of the fields to which to map information about the vector store.</p>
    # @!attribute vector_field
    #   <p>The name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.</p>
    #   @return [String]
    # @!attribute text_field
    #   <p>The name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.</p>
    #   @return [String]
    # @!attribute metadata_field
    #   <p>The name of the field in which Amazon Bedrock stores metadata about the vector store.</p>
    #   @return [String]
    class OpenSearchManagedClusterFieldMapping < Struct.new(
      :vector_field,
      :text_field,
      :metadata_field,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the storage configuration of the knowledge base in Amazon OpenSearch Service. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-oss.html">Create a vector index in Amazon OpenSearch Service</a>.</p>
    # @!attribute collection_arn
    #   <p>The Amazon Resource Name (ARN) of the OpenSearch Service vector store.</p>
    #   @return [String]
    # @!attribute vector_index_name
    #   <p>The name of the vector store.</p>
    #   @return [String]
    # @!attribute field_mapping
    #   <p>Contains the names of the fields to which to map information about the vector store.</p>
    #   @return [Types::OpenSearchServerlessFieldMapping]
    class OpenSearchServerlessConfiguration < Struct.new(
      :collection_arn,
      :vector_index_name,
      :field_mapping,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the names of the fields to which to map information about the vector store.</p>
    # @!attribute vector_field
    #   <p>The name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.</p>
    #   @return [String]
    # @!attribute text_field
    #   <p>The name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.</p>
    #   @return [String]
    # @!attribute metadata_field
    #   <p>The name of the field in which Amazon Bedrock stores metadata about the vector store.</p>
    #   @return [String]
    class OpenSearchServerlessFieldMapping < Struct.new(
      :vector_field,
      :text_field,
      :metadata_field,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Contains details about the Lambda function containing the orchestration logic carried out upon invoking the custom orchestration. </p>
    # @!attribute lambda
    #   <p> The Amazon Resource Name (ARN) of the Lambda function containing the business logic that is carried out upon invoking the action. </p>
    #   @return [String]
    class OrchestrationExecutor < Struct.new(
      :lambda,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Lambda < OrchestrationExecutor; end
      class Unknown < OrchestrationExecutor; end
    end

    # <p>Contains configurations for an output flow node in the flow. You specify the data type expected for the input into the node in the <code>type</code> field and how to return the final output in the <code>expression</code> field.</p>
    class OutputFlowNodeConfiguration < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a parameter in a function for an action group.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_CreateAgentActionGroup.html#API_agent_CreateAgentActionGroup_RequestSyntax">CreateAgentActionGroup request</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_CreateAgentActionGroup.html#API_agent_CreateAgentActionGroup_ResponseSyntax">CreateAgentActionGroup response</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_UpdateAgentActionGroup.html#API_agent_UpdateAgentActionGroup_RequestSyntax">UpdateAgentActionGroup request</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_UpdateAgentActionGroup.html#API_agent_UpdateAgentActionGroup_ResponseSyntax">UpdateAgentActionGroup response</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetAgentActionGroup.html#API_agent_GetAgentActionGroup_ResponseSyntax">GetAgentActionGroup response</a> </p> </li> </ul>
    # @!attribute description
    #   <p>A description of the parameter. Helps the foundation model determine how to elicit the parameters from the user.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type of the parameter.</p>
    #   @return [String]
    # @!attribute required
    #   <p>Whether the parameter is required for the agent to complete the function for action group invocation.</p>
    #   @return [Boolean]
    class ParameterDetail < Struct.new(
      :description,
      :type,
      :required,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for parsing document contents. If you exclude this field, the default parser converts the contents of each document into text before splitting it into chunks. Specify the parsing strategy to use in the <code>parsingStrategy</code> field and include the relevant configuration, or omit it to use the Amazon Bedrock default parser. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-advanced-parsing.html">Parsing options for your data source</a>.</p> <note> <p>If you specify <code>BEDROCK_DATA_AUTOMATION</code> or <code>BEDROCK_FOUNDATION_MODEL</code> and it fails to parse a file, the Amazon Bedrock default parser will be used instead.</p> </note>
    # @!attribute parsing_strategy
    #   <p>The parsing strategy for the data source.</p>
    #   @return [String]
    # @!attribute bedrock_foundation_model_configuration
    #   <p>If you specify <code>BEDROCK_FOUNDATION_MODEL</code> as the parsing strategy for ingesting your data source, use this object to modify configurations for using a foundation model to parse documents.</p>
    #   @return [Types::BedrockFoundationModelConfiguration]
    # @!attribute bedrock_data_automation_configuration
    #   <p>If you specify <code>BEDROCK_DATA_AUTOMATION</code> as the parsing strategy for ingesting your data source, use this object to modify configurations for using the Amazon Bedrock Data Automation parser.</p>
    #   @return [Types::BedrockDataAutomationConfiguration]
    class ParsingConfiguration < Struct.new(
      :parsing_strategy,
      :bedrock_foundation_model_configuration,
      :bedrock_data_automation_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Instructions for interpreting the contents of a document.</p>
    # @!attribute parsing_prompt_text
    #   <p>Instructions for interpreting the contents of a document.</p>
    #   @return [String]
    class ParsingPrompt < Struct.new(
      :parsing_prompt_text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specific filters applied to your data source content. You can filter out or include certain content.</p>
    # @!attribute object_type
    #   <p>The supported object type or content type of the data source.</p>
    #   @return [String]
    # @!attribute inclusion_filters
    #   <p>A list of one or more inclusion regular expression patterns to include certain object types that adhere to the pattern. If you specify an inclusion and exclusion filter/pattern and both match a document, the exclusion filter takes precedence and the document isn’t crawled.</p>
    #   @return [Array<String>]
    # @!attribute exclusion_filters
    #   <p>A list of one or more exclusion regular expression patterns to exclude certain object types that adhere to the pattern. If you specify an inclusion and exclusion filter/pattern and both match a document, the exclusion filter takes precedence and the document isn’t crawled.</p>
    #   @return [Array<String>]
    class PatternObjectFilter < Struct.new(
      :object_type,
      :inclusion_filters,
      :exclusion_filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of filtering certain objects or content types of the data source.</p>
    # @!attribute filters
    #   <p>The configuration of specific filters applied to your data source content. You can filter out or include certain content.</p>
    #   @return [Array<Types::PatternObjectFilter>]
    class PatternObjectFilterConfiguration < Struct.new(
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The performance-related configuration options for the knowledge base retrieval and generation process.</p>
    # @!attribute latency
    #   <p>The latency optimization setting.</p>
    #   @return [String]
    class PerformanceConfiguration < Struct.new(
      :latency,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:latency] = 'standard' unless options.key?(:latency)
        super
      end
    end

    # <p>Contains details about the storage configuration of the knowledge base in Pinecone. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-pinecone.html">Create a vector index in Pinecone</a>.</p>
    # @!attribute connection_string
    #   <p>The endpoint URL for your index management page.</p>
    #   @return [String]
    # @!attribute credentials_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the secret that you created in Secrets Manager that is linked to your Pinecone API key.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace to be used to write new data to your database.</p>
    #   @return [String]
    # @!attribute field_mapping
    #   <p>Contains the names of the fields to which to map information about the vector store.</p>
    #   @return [Types::PineconeFieldMapping]
    class PineconeConfiguration < Struct.new(
      :connection_string,
      :credentials_secret_arn,
      :namespace,
      :field_mapping,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the names of the fields to which to map information about the vector store.</p>
    # @!attribute text_field
    #   <p>The name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.</p>
    #   @return [String]
    # @!attribute metadata_field
    #   <p>The name of the field in which Amazon Bedrock stores metadata about the vector store.</p>
    #   @return [String]
    class PineconeFieldMapping < Struct.new(
      :text_field,
      :metadata_field,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent for which to create a <code>DRAFT</code> version.</p>
    #   @return [String]
    class PrepareAgentRequest < Struct.new(
      :agent_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent for which the <code>DRAFT</code> version was created.</p>
    #   @return [String]
    # @!attribute agent_status
    #   <p>The status of the <code>DRAFT</code> version and whether it is ready for use.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version of the agent.</p>
    #   @return [String]
    # @!attribute prepared_at
    #   <p>The time at which the <code>DRAFT</code> version of the agent was last prepared.</p>
    #   @return [Time]
    class PrepareAgentResponse < Struct.new(
      :agent_id,
      :agent_status,
      :agent_version,
      :prepared_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    class PrepareFlowRequest < Struct.new(
      :flow_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the flow. When you submit this request, the status will be <code>NotPrepared</code>. If preparation succeeds, the status becomes <code>Prepared</code>. If it fails, the status becomes <code>FAILED</code>.</p>
    #   @return [String]
    class PrepareFlowResponse < Struct.new(
      :id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains specifications for an Amazon Bedrock agent with which to use the prompt. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-create.html">Create a prompt using Prompt management</a> and <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents.html">Automate tasks in your application using conversational agents</a>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute agent_identifier
    #   <p>The ARN of the agent with which to use the prompt.</p>
    #   @return [String]
    class PromptAgentResource < Struct.new(
      :agent_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations to override a prompt template in one part of an agent sequence. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html">Advanced prompts</a>.</p>
    # @!attribute prompt_type
    #   <p>The step in the agent sequence that this prompt configuration applies to.</p>
    #   @return [String]
    # @!attribute prompt_creation_mode
    #   <p>Specifies whether to override the default prompt template for this <code>promptType</code>. Set this value to <code>OVERRIDDEN</code> to use the prompt that you provide in the <code>basePromptTemplate</code>. If you leave it as <code>DEFAULT</code>, the agent uses a default prompt template.</p>
    #   @return [String]
    # @!attribute prompt_state
    #   <p>Specifies whether to allow the agent to carry out the step specified in the <code>promptType</code>. If you set this value to <code>DISABLED</code>, the agent skips that step. The default state for each <code>promptType</code> is as follows.</p> <ul> <li> <p> <code>PRE_PROCESSING</code> – <code>DISABLED</code> </p> </li> <li> <p> <code>ORCHESTRATION</code> – <code>ENABLED</code> </p> </li> <li> <p> <code>KNOWLEDGE_BASE_RESPONSE_GENERATION</code> – <code>ENABLED</code> </p> </li> <li> <p> <code>POST_PROCESSING</code> – <code>DISABLED</code> </p> </li> </ul>
    #   @return [String]
    # @!attribute base_prompt_template
    #   <p>Defines the prompt template with which to replace the default prompt template. You can use placeholder variables in the base prompt template to customize the prompt. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-placeholders.html">Prompt template placeholder variables</a>. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts-configure.html">Configure the prompt templates</a>.</p>
    #   @return [String]
    # @!attribute inference_configuration
    #   <p>Contains inference parameters to use when the agent invokes a foundation model in the part of the agent sequence defined by the <code>promptType</code>. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Inference parameters for foundation models</a>.</p>
    #   @return [Types::InferenceConfiguration]
    # @!attribute parser_mode
    #   <p>Specifies whether to override the default parser Lambda function when parsing the raw foundation model output in the part of the agent sequence defined by the <code>promptType</code>. If you set the field as <code>OVERRIDDEN</code>, the <code>overrideLambda</code> field in the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptOverrideConfiguration.html">PromptOverrideConfiguration</a> must be specified with the ARN of a Lambda function.</p>
    #   @return [String]
    # @!attribute foundation_model
    #   <p>The agent's foundation model.</p>
    #   @return [String]
    # @!attribute additional_model_request_fields
    #   <p>If the Converse or ConverseStream operations support the model, <code>additionalModelRequestFields</code> contains additional inference parameters, beyond the base set of inference parameters in the <code>inferenceConfiguration</code> field. </p> <p>For more information, see <i>Inference request parameters and response fields for foundation models</i> in the Amazon Bedrock user guide.</p>
    #   @return [JSON]
    class PromptConfiguration < Struct.new(
      :prompt_type,
      :prompt_creation_mode,
      :prompt_state,
      :base_prompt_template,
      :inference_configuration,
      :parser_mode,
      :foundation_model,
      :additional_model_request_fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for a prompt node in the flow. You can use a prompt from Prompt management or you can define one in this node. If the prompt contains variables, the inputs into this node will fill in the variables. The output from this node is the response generated by the model. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-nodes.html">Node types in a flow</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute source_configuration
    #   <p>Specifies whether the prompt is from Prompt management or defined inline.</p>
    #   @return [Types::PromptFlowNodeSourceConfiguration]
    # @!attribute guardrail_configuration
    #   <p>Contains configurations for a guardrail to apply to the prompt in this node and the response generated from it.</p>
    #   @return [Types::GuardrailConfiguration]
    class PromptFlowNodeConfiguration < Struct.new(
      :source_configuration,
      :guardrail_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for a prompt defined inline in the node.</p>
    # @!attribute template_type
    #   <p>The type of prompt template.</p>
    #   @return [String]
    # @!attribute template_configuration
    #   <p>Contains a prompt and variables in the prompt that can be replaced with values at runtime.</p>
    #   @return [Types::PromptTemplateConfiguration]
    # @!attribute model_id
    #   <p>The unique identifier of the model or <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html">inference profile</a> to run inference with.</p>
    #   @return [String]
    # @!attribute inference_configuration
    #   <p>Contains inference configurations for the prompt.</p>
    #   @return [Types::PromptInferenceConfiguration]
    # @!attribute additional_model_request_fields
    #   <p>Additional fields to be included in the model request for the Prompt node.</p>
    #   @return [JSON]
    class PromptFlowNodeInlineConfiguration < Struct.new(
      :template_type,
      :template_configuration,
      :model_id,
      :inference_configuration,
      :additional_model_request_fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:template_type] = 'TEXT' unless options.key?(:template_type)
        options[:model_id] = '' unless options.key?(:model_id)
        super
      end
    end

    # <p>Contains configurations for a prompt from Prompt management to use in a node.</p>
    # @!attribute prompt_arn
    #   <p>The Amazon Resource Name (ARN) of the prompt from Prompt management.</p>
    #   @return [String]
    class PromptFlowNodeResourceConfiguration < Struct.new(
      :prompt_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:prompt_arn] = '' unless options.key?(:prompt_arn)
        super
      end
    end

    # <p>Contains configurations for a prompt and whether it is from Prompt management or defined inline.</p>
    # @!attribute resource
    #   <p>Contains configurations for a prompt from Prompt management.</p>
    #   @return [Types::PromptFlowNodeResourceConfiguration]
    # @!attribute inline
    #   <p>Contains configurations for a prompt that is defined inline</p>
    #   @return [Types::PromptFlowNodeInlineConfiguration]
    class PromptFlowNodeSourceConfiguration < Struct.new(
      :resource,
      :inline,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Resource < PromptFlowNodeSourceConfiguration; end
      class Inline < PromptFlowNodeSourceConfiguration; end
      class Unknown < PromptFlowNodeSourceConfiguration; end
    end

    # <p>Contains specifications for a generative AI resource with which to use the prompt. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-create.html">Create a prompt using Prompt management</a>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute agent
    #   <p>Specifies an Amazon Bedrock agent with which to use the prompt.</p>
    #   @return [Types::PromptAgentResource]
    class PromptGenAiResource < Struct.new(
      :agent,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Agent < PromptGenAiResource; end
      class Unknown < PromptGenAiResource; end
    end

    # <p>Contains inference configurations for the prompt.</p>
    # @!attribute text
    #   <p>Contains inference configurations for a text prompt.</p>
    #   @return [Types::PromptModelInferenceConfiguration]
    class PromptInferenceConfiguration < Struct.new(
      :text,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < PromptInferenceConfiguration; end
      class Unknown < PromptInferenceConfiguration; end
    end

    # <p>Contains information about a variable in the prompt.</p>
    # @!attribute name
    #   <p>The name of the variable.</p>
    #   @return [String]
    class PromptInputVariable < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a key-value pair that defines a metadata tag and value to attach to a prompt variant. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-create.html">Create a prompt using Prompt management</a>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute key
    #   <p>The key of a metadata tag for a prompt variant.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of a metadata tag for a prompt variant.</p>
    #   @return [String]
    class PromptMetadataEntry < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains inference configurations related to model inference for a prompt. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/inference-parameters.html">Inference parameters</a>.</p>
    # @!attribute temperature
    #   <p>Controls the randomness of the response. Choose a lower value for more predictable outputs and a higher value for more surprising outputs.</p>
    #   @return [Float]
    # @!attribute top_p
    #   <p>The percentage of most-likely candidates that the model considers for the next token.</p>
    #   @return [Float]
    # @!attribute max_tokens
    #   <p>The maximum number of tokens to return in the response.</p>
    #   @return [Integer]
    # @!attribute stop_sequences
    #   <p>A list of strings that define sequences after which the model will stop generating.</p>
    #   @return [Array<String>]
    class PromptModelInferenceConfiguration < Struct.new(
      :temperature,
      :top_p,
      :max_tokens,
      :stop_sequences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations to override prompts in different parts of an agent sequence. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html">Advanced prompts</a>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute prompt_configurations
    #   <p>Contains configurations to override a prompt template in one part of an agent sequence. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html">Advanced prompts</a>.</p>
    #   @return [Array<Types::PromptConfiguration>]
    # @!attribute override_lambda
    #   <p>The ARN of the Lambda function to use when parsing the raw foundation model output in parts of the agent sequence. If you specify this field, at least one of the <code>promptConfigurations</code> must contain a <code>parserMode</code> value that is set to <code>OVERRIDDEN</code>. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/lambda-parser.html">Parser Lambda function in Amazon Bedrock Agents</a>.</p>
    #   @return [String]
    class PromptOverrideConfiguration < Struct.new(
      :prompt_configurations,
      :override_lambda,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a prompt in your Prompt management tool.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_ListPrompts.html#API_agent_ListPrompts_ResponseSyntax">ListPrompts response</a> </p> </li> </ul>
    # @!attribute name
    #   <p>The name of the prompt.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the prompt.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the prompt.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the prompt or the prompt version (if you specified a version in the request).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the prompt that this summary applies to.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the prompt was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the prompt was last updated.</p>
    #   @return [Time]
    class PromptSummary < Struct.new(
      :name,
      :description,
      :id,
      :arn,
      :version,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the message for a prompt. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management.html">Construct and store reusable prompts with Prompt management in Amazon Bedrock</a>.</p>
    # @!attribute text
    #   <p>Contains configurations for the text in a message for a prompt.</p>
    #   @return [Types::TextPromptTemplateConfiguration]
    # @!attribute chat
    #   <p>Contains configurations to use the prompt in a conversational format.</p>
    #   @return [Types::ChatPromptTemplateConfiguration]
    class PromptTemplateConfiguration < Struct.new(
      :text,
      :chat,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < PromptTemplateConfiguration; end
      class Chat < PromptTemplateConfiguration; end
      class Unknown < PromptTemplateConfiguration; end
    end

    # <p>Contains details about a variant of the prompt.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute name
    #   <p>The name of the prompt variant.</p>
    #   @return [String]
    # @!attribute template_type
    #   <p>The type of prompt template to use.</p>
    #   @return [String]
    # @!attribute template_configuration
    #   <p>Contains configurations for the prompt template.</p>
    #   @return [Types::PromptTemplateConfiguration]
    # @!attribute model_id
    #   <p>The unique identifier of the model or <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html">inference profile</a> with which to run inference on the prompt.</p>
    #   @return [String]
    # @!attribute inference_configuration
    #   <p>Contains inference configurations for the prompt variant.</p>
    #   @return [Types::PromptInferenceConfiguration]
    # @!attribute metadata
    #   <p>An array of objects, each containing a key-value pair that defines a metadata tag and value to attach to a prompt variant.</p>
    #   @return [Array<Types::PromptMetadataEntry>]
    # @!attribute additional_model_request_fields
    #   <p>Contains model-specific inference configurations that aren't in the <code>inferenceConfiguration</code> field. To see model-specific inference parameters, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Inference request parameters and response fields for foundation models</a>.</p>
    #   @return [JSON]
    # @!attribute gen_ai_resource
    #   <p>Specifies a generative AI resource with which to use the prompt.</p>
    #   @return [Types::PromptGenAiResource]
    class PromptVariant < Struct.new(
      :name,
      :template_type,
      :template_configuration,
      :model_id,
      :inference_configuration,
      :metadata,
      :additional_model_request_fields,
      :gen_ai_resource,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a column in the current table for the query engine to consider.</p>
    # @!attribute name
    #   <p>The name of the column for which the other fields in this object apply.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the column that helps the query engine understand the contents of the column.</p>
    #   @return [String]
    # @!attribute inclusion
    #   <p>Specifies whether to include or exclude the column during query generation. If you specify <code>EXCLUDE</code>, the column will be ignored. If you specify <code>INCLUDE</code>, all other columns in the table will be ignored.</p>
    #   @return [String]
    class QueryGenerationColumn < Struct.new(
      :name,
      :description,
      :inclusion,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for query generation. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-build-structured.html">Build a knowledge base by connecting to a structured data source</a> in the Amazon Bedrock User Guide..</p>
    # @!attribute execution_timeout_seconds
    #   <p>The time after which query generation will time out.</p>
    #   @return [Integer]
    # @!attribute generation_context
    #   <p>Specifies configurations for context to use during query generation.</p>
    #   @return [Types::QueryGenerationContext]
    class QueryGenerationConfiguration < Struct.new(
      :execution_timeout_seconds,
      :generation_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>&gt;Contains configurations for context to use during query generation.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute tables
    #   <p>An array of objects, each of which defines information about a table in the database.</p>
    #   @return [Array<Types::QueryGenerationTable>]
    # @!attribute curated_queries
    #   <p>An array of objects, each of which defines information about example queries to help the query engine generate appropriate SQL queries.</p>
    #   @return [Array<Types::CuratedQuery>]
    class QueryGenerationContext < Struct.new(
      :tables,
      :curated_queries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a table for the query engine to consider.</p>
    # @!attribute name
    #   <p>The name of the table for which the other fields in this object apply.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the table that helps the query engine understand the contents of the table.</p>
    #   @return [String]
    # @!attribute inclusion
    #   <p>Specifies whether to include or exclude the table during query generation. If you specify <code>EXCLUDE</code>, the table will be ignored. If you specify <code>INCLUDE</code>, all other tables will be ignored.</p>
    #   @return [String]
    # @!attribute columns
    #   <p>An array of objects, each of which defines information about a column in the table.</p>
    #   @return [Array<Types::QueryGenerationColumn>]
    class QueryGenerationTable < Struct.new(
      :name,
      :description,
      :inclusion,
      :columns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the storage configuration of the knowledge base in Amazon RDS. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-rds.html">Create a vector index in Amazon RDS</a>.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the vector store.</p>
    #   @return [String]
    # @!attribute credentials_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the secret that you created in Secrets Manager that is linked to your Amazon RDS database.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of your Amazon RDS database.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table in the database.</p>
    #   @return [String]
    # @!attribute field_mapping
    #   <p>Contains the names of the fields to which to map information about the vector store.</p>
    #   @return [Types::RdsFieldMapping]
    class RdsConfiguration < Struct.new(
      :resource_arn,
      :credentials_secret_arn,
      :database_name,
      :table_name,
      :field_mapping,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the names of the fields to which to map information about the vector store.</p>
    # @!attribute primary_key_field
    #   <p>The name of the field in which Amazon Bedrock stores the ID for each entry.</p>
    #   @return [String]
    # @!attribute vector_field
    #   <p>The name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.</p>
    #   @return [String]
    # @!attribute text_field
    #   <p>The name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.</p>
    #   @return [String]
    # @!attribute metadata_field
    #   <p>The name of the field in which Amazon Bedrock stores metadata about the vector store.</p>
    #   @return [String]
    # @!attribute custom_metadata_field
    #   <p>Provide a name for the universal metadata field where Amazon Bedrock will store any custom metadata from your data source.</p>
    #   @return [String]
    class RdsFieldMapping < Struct.new(
      :primary_key_field,
      :vector_field,
      :text_field,
      :metadata_field,
      :custom_metadata_field,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the storage configuration of the knowledge base in Redis Enterprise Cloud. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-oss.html">Create a vector index in Redis Enterprise Cloud</a>.</p>
    # @!attribute endpoint
    #   <p>The endpoint URL of the Redis Enterprise Cloud database.</p>
    #   @return [String]
    # @!attribute vector_index_name
    #   <p>The name of the vector index.</p>
    #   @return [String]
    # @!attribute credentials_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the secret that you created in Secrets Manager that is linked to your Redis Enterprise Cloud database.</p>
    #   @return [String]
    # @!attribute field_mapping
    #   <p>Contains the names of the fields to which to map information about the vector store.</p>
    #   @return [Types::RedisEnterpriseCloudFieldMapping]
    class RedisEnterpriseCloudConfiguration < Struct.new(
      :endpoint,
      :vector_index_name,
      :credentials_secret_arn,
      :field_mapping,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the names of the fields to which to map information about the vector store.</p>
    # @!attribute vector_field
    #   <p>The name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.</p>
    #   @return [String]
    # @!attribute text_field
    #   <p>The name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.</p>
    #   @return [String]
    # @!attribute metadata_field
    #   <p>The name of the field in which Amazon Bedrock stores metadata about the vector store.</p>
    #   @return [String]
    class RedisEnterpriseCloudFieldMapping < Struct.new(
      :vector_field,
      :text_field,
      :metadata_field,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for an Amazon Redshift database. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-build-structured.html">Build a knowledge base by connecting to a structured data source</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute storage_configurations
    #   <p>Specifies configurations for Amazon Redshift database storage.</p>
    #   @return [Array<Types::RedshiftQueryEngineStorageConfiguration>]
    # @!attribute query_engine_configuration
    #   <p>Specifies configurations for an Amazon Redshift query engine.</p>
    #   @return [Types::RedshiftQueryEngineConfiguration]
    # @!attribute query_generation_configuration
    #   <p>Specifies configurations for generating queries.</p>
    #   @return [Types::QueryGenerationConfiguration]
    class RedshiftConfiguration < Struct.new(
      :storage_configurations,
      :query_engine_configuration,
      :query_generation_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for authentication to an Amazon Redshift provisioned data warehouse. Specify the type of authentication to use in the <code>type</code> field and include the corresponding field. If you specify IAM authentication, you don't need to include another field.</p>
    # @!attribute type
    #   <p>The type of authentication to use.</p>
    #   @return [String]
    # @!attribute database_user
    #   <p>The database username for authentication to an Amazon Redshift provisioned data warehouse.</p>
    #   @return [String]
    # @!attribute username_password_secret_arn
    #   <p>The ARN of an Secrets Manager secret for authentication.</p>
    #   @return [String]
    class RedshiftProvisionedAuthConfiguration < Struct.new(
      :type,
      :database_user,
      :username_password_secret_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for a provisioned Amazon Redshift query engine.</p>
    # @!attribute cluster_identifier
    #   <p>The ID of the Amazon Redshift cluster.</p>
    #   @return [String]
    # @!attribute auth_configuration
    #   <p>Specifies configurations for authentication to Amazon Redshift.</p>
    #   @return [Types::RedshiftProvisionedAuthConfiguration]
    class RedshiftProvisionedConfiguration < Struct.new(
      :cluster_identifier,
      :auth_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for storage in Glue Data Catalog.</p>
    # @!attribute table_names
    #   <p>A list of names of the tables to use.</p>
    #   @return [Array<String>]
    class RedshiftQueryEngineAwsDataCatalogStorageConfiguration < Struct.new(
      :table_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for an Amazon Redshift query engine. Specify the type of query engine in <code>type</code> and include the corresponding field. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-build-structured.html">Build a knowledge base by connecting to a structured data source</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute type
    #   <p>The type of query engine.</p>
    #   @return [String]
    # @!attribute serverless_configuration
    #   <p>Specifies configurations for a serverless Amazon Redshift query engine.</p>
    #   @return [Types::RedshiftServerlessConfiguration]
    # @!attribute provisioned_configuration
    #   <p>Specifies configurations for a provisioned Amazon Redshift query engine.</p>
    #   @return [Types::RedshiftProvisionedConfiguration]
    class RedshiftQueryEngineConfiguration < Struct.new(
      :type,
      :serverless_configuration,
      :provisioned_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for storage in Amazon Redshift.</p>
    # @!attribute database_name
    #   <p>The name of the Amazon Redshift database.</p>
    #   @return [String]
    class RedshiftQueryEngineRedshiftStorageConfiguration < Struct.new(
      :database_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for Amazon Redshift data storage. Specify the data storage service to use in the <code>type</code> field and include the corresponding field. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-build-structured.html">Build a knowledge base by connecting to a structured data source</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute type
    #   <p>The data storage service to use.</p>
    #   @return [String]
    # @!attribute aws_data_catalog_configuration
    #   <p>Specifies configurations for storage in Glue Data Catalog.</p>
    #   @return [Types::RedshiftQueryEngineAwsDataCatalogStorageConfiguration]
    # @!attribute redshift_configuration
    #   <p>Specifies configurations for storage in Amazon Redshift.</p>
    #   @return [Types::RedshiftQueryEngineRedshiftStorageConfiguration]
    class RedshiftQueryEngineStorageConfiguration < Struct.new(
      :type,
      :aws_data_catalog_configuration,
      :redshift_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies configurations for authentication to a Redshift Serverless. Specify the type of authentication to use in the <code>type</code> field and include the corresponding field. If you specify IAM authentication, you don't need to include another field.</p>
    # @!attribute type
    #   <p>The type of authentication to use.</p>
    #   @return [String]
    # @!attribute username_password_secret_arn
    #   <p>The ARN of an Secrets Manager secret for authentication.</p>
    #   @return [String]
    class RedshiftServerlessAuthConfiguration < Struct.new(
      :type,
      :username_password_secret_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for authentication to Amazon Redshift Serverless.</p>
    # @!attribute workgroup_arn
    #   <p>The ARN of the Amazon Redshift workgroup.</p>
    #   @return [String]
    # @!attribute auth_configuration
    #   <p>Specifies configurations for authentication to an Amazon Redshift provisioned data warehouse.</p>
    #   @return [Types::RedshiftServerlessAuthConfiguration]
    class RedshiftServerlessConfiguration < Struct.new(
      :workgroup_arn,
      :auth_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures the metadata fields to include or exclude during the reranking process when using selective mode.</p>
    # @!attribute fields_to_include
    #   <p>Specifies the metadata fields to include in the reranking process.</p>
    #   @return [Array<Types::FieldForReranking>]
    # @!attribute fields_to_exclude
    #   <p>Specifies the metadata fields to exclude from the reranking process.</p>
    #   @return [Array<Types::FieldForReranking>]
    class RerankingMetadataSelectiveModeConfiguration < Struct.new(
      :fields_to_include,
      :fields_to_exclude,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class FieldsToInclude < RerankingMetadataSelectiveModeConfiguration; end
      class FieldsToExclude < RerankingMetadataSelectiveModeConfiguration; end
      class Unknown < RerankingMetadataSelectiveModeConfiguration; end
    end

    # <p>The specified resource Amazon Resource Name (ARN) was not found. Check the Amazon Resource Name (ARN) and try your request again.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for a Retrieval node in a flow. This node retrieves data from the Amazon S3 location that you specify and returns it as the output.</p>
    # @!attribute service_configuration
    #   <p>Contains configurations for the service to use for retrieving data to return as the output from the node.</p>
    #   @return [Types::RetrievalFlowNodeServiceConfiguration]
    class RetrievalFlowNodeConfiguration < Struct.new(
      :service_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for the Amazon S3 location from which to retrieve data to return as the output from the node.</p>
    # @!attribute bucket_name
    #   <p>The name of the Amazon S3 bucket from which to retrieve data.</p>
    #   @return [String]
    class RetrievalFlowNodeS3Configuration < Struct.new(
      :bucket_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:bucket_name] = '' unless options.key?(:bucket_name)
        super
      end
    end

    # <p>Contains configurations for the service to use for retrieving data to return as the output from the node.</p>
    # @!attribute s3
    #   <p>Contains configurations for the Amazon S3 location from which to retrieve data to return as the output from the node.</p>
    #   @return [Types::RetrievalFlowNodeS3Configuration]
    class RetrievalFlowNodeServiceConfiguration < Struct.new(
      :s3,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3 < RetrievalFlowNodeServiceConfiguration; end
      class Unknown < RetrievalFlowNodeServiceConfiguration; end
    end

    # <p>Contains information about the content to ingest into a knowledge base connected to an Amazon S3 data source.</p>
    # @!attribute s3_location
    #   <p>The S3 location of the file containing the content to ingest.</p>
    #   @return [Types::S3Location]
    class S3Content < Struct.new(
      :s3_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration information to connect to Amazon S3 as your data source.</p>
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket that contains your data.</p>
    #   @return [String]
    # @!attribute inclusion_prefixes
    #   <p>A list of S3 prefixes to include certain files or content. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-prefixes.html">Organizing objects using prefixes</a>.</p>
    #   @return [Array<String>]
    # @!attribute bucket_owner_account_id
    #   <p>The account ID for the owner of the S3 bucket.</p>
    #   @return [String]
    class S3DataSourceConfiguration < Struct.new(
      :bucket_arn,
      :inclusion_prefixes,
      :bucket_owner_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The identifier information for an Amazon S3 bucket.</p>
    # @!attribute s3_bucket_name
    #   <p>The name of the S3 bucket.</p>
    #   @return [String]
    # @!attribute s3_object_key
    #   <p>The S3 object key for the S3 resource.</p>
    #   @return [String]
    class S3Identifier < Struct.new(
      :s3_bucket_name,
      :s3_object_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An Amazon S3 location.</p>
    # @!attribute uri
    #   <p>The location's URI. For example, <code>s3://my-bucket/chunk-processor/</code>.</p>
    #   @return [String]
    class S3Location < Struct.new(
      :uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the storage configuration of the knowledge base for S3 vectors.</p>
    # @!attribute vector_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket where vector embeddings are stored. This bucket contains the vector data used by the knowledge base.</p>
    #   @return [String]
    # @!attribute index_arn
    #   <p>The Amazon Resource Name (ARN) of the vector index used for the knowledge base. This ARN identifies the specific vector index resource within Amazon Bedrock.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the vector index used for the knowledge base. This name identifies the vector index within the Amazon Bedrock service.</p>
    #   @return [String]
    class S3VectorsConfiguration < Struct.new(
      :vector_bucket_arn,
      :index_arn,
      :index_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of the Salesforce content. For example, configuring specific types of Salesforce content.</p>
    # @!attribute filter_configuration
    #   <p>The configuration of filtering the Salesforce content. For example, configuring regular expression patterns to include or exclude certain content.</p>
    #   @return [Types::CrawlFilterConfiguration]
    class SalesforceCrawlerConfiguration < Struct.new(
      :filter_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration information to connect to Salesforce as your data source.</p>
    # @!attribute source_configuration
    #   <p>The endpoint information to connect to your Salesforce data source.</p>
    #   @return [Types::SalesforceSourceConfiguration]
    # @!attribute crawler_configuration
    #   <p>The configuration of the Salesforce content. For example, configuring specific types of Salesforce content.</p>
    #   @return [Types::SalesforceCrawlerConfiguration]
    class SalesforceDataSourceConfiguration < Struct.new(
      :source_configuration,
      :crawler_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The endpoint information to connect to your Salesforce data source.</p>
    # @!attribute host_url
    #   <p>The Salesforce host URL or instance URL.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The supported authentication type to authenticate and connect to your Salesforce instance.</p>
    #   @return [String]
    # @!attribute credentials_secret_arn
    #   <p>The Amazon Resource Name of an Secrets Manager secret that stores your authentication credentials for your Salesforce instance URL. For more information on the key-value pairs that must be included in your secret, depending on your authentication type, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/salesforce-data-source-connector.html#configuration-salesforce-connector">Salesforce connection configuration</a>.</p>
    #   @return [String]
    class SalesforceSourceConfiguration < Struct.new(
      :host_url,
      :auth_type,
      :credentials_secret_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The seed or starting point URL. You should be authorized to crawl the URL.</p>
    # @!attribute url
    #   <p>A seed or starting point URL.</p>
    #   @return [String]
    class SeedUrl < Struct.new(
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for semantic document chunking for a data source. Semantic chunking splits a document into into smaller documents based on groups of similar content derived from the text with natural language processing.</p> <p>With semantic chunking, each sentence is compared to the next to determine how similar they are. You specify a threshold in the form of a percentile, where adjacent sentences that are less similar than that percentage of sentence pairs are divided into separate chunks. For example, if you set the threshold to 90, then the 10 percent of sentence pairs that are least similar are split. So if you have 101 sentences, 100 sentence pairs are compared, and the 10 with the least similarity are split, creating 11 chunks. These chunks are further split if they exceed the max token size.</p> <p>You must also specify a buffer size, which determines whether sentences are compared in isolation, or within a moving context window that includes the previous and following sentence. For example, if you set the buffer size to <code>1</code>, the embedding for sentence 10 is derived from sentences 9, 10, and 11 combined.</p>
    # @!attribute max_tokens
    #   <p>The maximum number of tokens that a chunk can contain.</p>
    #   @return [Integer]
    # @!attribute buffer_size
    #   <p>The buffer size.</p>
    #   @return [Integer]
    # @!attribute breakpoint_percentile_threshold
    #   <p>The dissimilarity threshold for splitting chunks.</p>
    #   @return [Integer]
    class SemanticChunkingConfiguration < Struct.new(
      :max_tokens,
      :buffer_size,
      :breakpoint_percentile_threshold,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration for server-side encryption.</p>
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the resource.</p>
    #   @return [String]
    class ServerSideEncryptionConfiguration < Struct.new(
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of requests exceeds the service quota. Resubmit your request later.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for SESSION_SUMMARY memory type enabled for the agent.</p>
    # @!attribute max_recent_sessions
    #   <p>Maximum number of recent session summaries to include in the agent's prompt context.</p>
    #   @return [Integer]
    class SessionSummaryConfiguration < Struct.new(
      :max_recent_sessions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_recent_sessions] = nil unless options.key?(:max_recent_sessions)
        super
      end
    end

    # <p>The configuration of the SharePoint content. For example, configuring specific types of SharePoint content.</p>
    # @!attribute filter_configuration
    #   <p>The configuration of filtering the SharePoint content. For example, configuring regular expression patterns to include or exclude certain content.</p>
    #   @return [Types::CrawlFilterConfiguration]
    class SharePointCrawlerConfiguration < Struct.new(
      :filter_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration information to connect to SharePoint as your data source.</p>
    # @!attribute source_configuration
    #   <p>The endpoint information to connect to your SharePoint data source.</p>
    #   @return [Types::SharePointSourceConfiguration]
    # @!attribute crawler_configuration
    #   <p>The configuration of the SharePoint content. For example, configuring specific types of SharePoint content.</p>
    #   @return [Types::SharePointCrawlerConfiguration]
    class SharePointDataSourceConfiguration < Struct.new(
      :source_configuration,
      :crawler_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The endpoint information to connect to your SharePoint data source.</p>
    # @!attribute tenant_id
    #   <p>The identifier of your Microsoft 365 tenant.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain of your SharePoint instance or site URL/URLs.</p>
    #   @return [String]
    # @!attribute site_urls
    #   <p>A list of one or more SharePoint site URLs.</p>
    #   @return [Array<String>]
    # @!attribute host_type
    #   <p>The supported host type, whether online/cloud or server/on-premises.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The supported authentication type to authenticate and connect to your SharePoint site/sites.</p>
    #   @return [String]
    # @!attribute credentials_secret_arn
    #   <p>The Amazon Resource Name of an Secrets Manager secret that stores your authentication credentials for your SharePoint site/sites. For more information on the key-value pairs that must be included in your secret, depending on your authentication type, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/sharepoint-data-source-connector.html#configuration-sharepoint-connector">SharePoint connection configuration</a>.</p>
    #   @return [String]
    class SharePointSourceConfiguration < Struct.new(
      :tenant_id,
      :domain,
      :site_urls,
      :host_type,
      :auth_type,
      :credentials_secret_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a specific tool that the model must request. No text is generated but the results of tool use are sent back to the model to help generate a response. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Use a tool to complete an Amazon Bedrock model response</a>.</p>
    # @!attribute name
    #   <p>The name of the tool.</p>
    #   @return [String]
    class SpecificToolChoice < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for a knowledge base connected to an SQL database. Specify the SQL database type in the <code>type</code> field and include the corresponding field. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-build-structured.html">Build a knowledge base by connecting to a structured data source</a> in the Amazon Bedrock User Guide.</p>
    # @!attribute type
    #   <p>The type of SQL database to connect to the knowledge base.</p>
    #   @return [String]
    # @!attribute redshift_configuration
    #   <p>Specifies configurations for a knowledge base connected to an Amazon Redshift database.</p>
    #   @return [Types::RedshiftConfiguration]
    class SqlKnowledgeBaseConfiguration < Struct.new(
      :type,
      :redshift_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base for the data ingestion job.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The unique identifier of the data source you want to ingest into your knowledge base.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the data ingestion job.</p>
    #   @return [String]
    class StartIngestionJobRequest < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :client_token,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ingestion_job
    #   <p>Contains information about the data ingestion job.</p>
    #   @return [Types::IngestionJob]
    class StartIngestionJobResponse < Struct.new(
      :ingestion_job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base for the data ingestion job you want to stop.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The unique identifier of the data source for the data ingestion job you want to stop.</p>
    #   @return [String]
    # @!attribute ingestion_job_id
    #   <p>The unique identifier of the data ingestion job you want to stop.</p>
    #   @return [String]
    class StopIngestionJobRequest < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :ingestion_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ingestion_job
    #   <p>Contains information about the stopped data ingestion job.</p>
    #   @return [Types::IngestionJob]
    class StopIngestionJobResponse < Struct.new(
      :ingestion_job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the storage configuration of the knowledge base.</p>
    # @!attribute type
    #   <p>The vector store service in which the knowledge base is stored.</p>
    #   @return [String]
    # @!attribute opensearch_serverless_configuration
    #   <p>Contains the storage configuration of the knowledge base in Amazon OpenSearch Service.</p>
    #   @return [Types::OpenSearchServerlessConfiguration]
    # @!attribute opensearch_managed_cluster_configuration
    #   <p>Contains details about the storage configuration of the knowledge base in OpenSearch Managed Cluster. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-osm.html">Create a vector index in Amazon OpenSearch Service</a>.</p>
    #   @return [Types::OpenSearchManagedClusterConfiguration]
    # @!attribute pinecone_configuration
    #   <p>Contains the storage configuration of the knowledge base in Pinecone.</p>
    #   @return [Types::PineconeConfiguration]
    # @!attribute redis_enterprise_cloud_configuration
    #   <p>Contains the storage configuration of the knowledge base in Redis Enterprise Cloud.</p>
    #   @return [Types::RedisEnterpriseCloudConfiguration]
    # @!attribute rds_configuration
    #   <p>Contains details about the storage configuration of the knowledge base in Amazon RDS. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-rds.html">Create a vector index in Amazon RDS</a>.</p>
    #   @return [Types::RdsConfiguration]
    # @!attribute mongo_db_atlas_configuration
    #   <p>Contains the storage configuration of the knowledge base in MongoDB Atlas.</p>
    #   @return [Types::MongoDbAtlasConfiguration]
    # @!attribute neptune_analytics_configuration
    #   <p>Contains details about the Neptune Analytics configuration of the knowledge base in Amazon Neptune. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-neptune.html">Create a vector index in Amazon Neptune Analytics.</a>.</p>
    #   @return [Types::NeptuneAnalyticsConfiguration]
    # @!attribute s3_vectors_configuration
    #   <p>The configuration settings for storing knowledge base data using S3 vectors. This includes vector index information and S3 bucket details for vector storage.</p>
    #   @return [Types::S3VectorsConfiguration]
    class StorageConfiguration < Struct.new(
      :type,
      :opensearch_serverless_configuration,
      :opensearch_managed_cluster_configuration,
      :pinecone_configuration,
      :redis_enterprise_cloud_configuration,
      :rds_configuration,
      :mongo_db_atlas_configuration,
      :neptune_analytics_configuration,
      :s3_vectors_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for a Storage node in a flow. This node stores the input in an Amazon S3 location that you specify.</p>
    # @!attribute service_configuration
    #   <p>Contains configurations for the service to use for storing the input into the node.</p>
    #   @return [Types::StorageFlowNodeServiceConfiguration]
    class StorageFlowNodeConfiguration < Struct.new(
      :service_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for the Amazon S3 location in which to store the input into the node.</p>
    # @!attribute bucket_name
    #   <p>The name of the Amazon S3 bucket in which to store the input into the node.</p>
    #   @return [String]
    class StorageFlowNodeS3Configuration < Struct.new(
      :bucket_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:bucket_name] = '' unless options.key?(:bucket_name)
        super
      end
    end

    # <p>Contains configurations for the service to use for storing the input into the node.</p>
    # @!attribute s3
    #   <p>Contains configurations for the Amazon S3 location in which to store the input into the node.</p>
    #   @return [Types::StorageFlowNodeS3Configuration]
    class StorageFlowNodeServiceConfiguration < Struct.new(
      :s3,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3 < StorageFlowNodeServiceConfiguration; end
      class Unknown < StorageFlowNodeServiceConfiguration; end
    end

    # <p>Specifies configurations for the storage location of the images extracted from multimodal documents in your data source. These images can be retrieved and returned to the end user.</p>
    # @!attribute storage_locations
    #   <p>A list of objects specifying storage locations for images extracted from multimodal documents in your data source.</p>
    #   @return [Array<Types::SupplementalDataStorageLocation>]
    class SupplementalDataStorageConfiguration < Struct.new(
      :storage_locations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a storage location for images extracted from multimodal documents in your data source.</p>
    # @!attribute type
    #   <p>Specifies the storage service used for this location.</p>
    #   @return [String]
    # @!attribute s3_location
    #   <p>Contains information about the Amazon S3 location for the extracted images.</p>
    #   @return [Types::S3Location]
    class SupplementalDataStorageLocation < Struct.new(
      :type,
      :s3_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a system prompt to provide context to the model or to describe how it should behave. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-create.html">Create a prompt using Prompt management</a>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute text
    #   <p>The text in the system prompt.</p>
    #   @return [String]
    # @!attribute cache_point
    #   <p>Creates a cache checkpoint within a tool designation</p>
    #   @return [Types::CachePointBlock]
    class SystemContentBlock < Struct.new(
      :text,
      :cache_point,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < SystemContentBlock; end
      class CachePoint < SystemContentBlock; end
      class Unknown < SystemContentBlock; end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An object containing key-value pairs that define the tags to attach to the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about content defined inline in text.</p>
    # @!attribute data
    #   <p>The text of the content.</p>
    #   @return [String]
    class TextContentDoc < Struct.new(
      :data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for a text prompt template. To include a variable, enclose a word in double curly braces as in <code>{{variable}}</code>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute text
    #   <p>The message for the prompt.</p>
    #   @return [String]
    # @!attribute cache_point
    #   <p>A cache checkpoint within a template configuration.</p>
    #   @return [Types::CachePointBlock]
    # @!attribute input_variables
    #   <p>An array of the variables in the prompt template.</p>
    #   @return [Array<Types::PromptInputVariable>]
    class TextPromptTemplateConfiguration < Struct.new(
      :text,
      :cache_point,
      :input_variables,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of requests exceeds the limit. Resubmit your request later.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for a tool that a model can use when generating a response. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Use a tool to complete an Amazon Bedrock model response</a>.</p>
    # @!attribute tool_spec
    #   <p>The specification for the tool.</p>
    #   @return [Types::ToolSpecification]
    # @!attribute cache_point
    #   <p>Creates a cache checkpoint within a tool designation</p>
    #   @return [Types::CachePointBlock]
    class Tool < Struct.new(
      :tool_spec,
      :cache_point,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ToolSpec < Tool; end
      class CachePoint < Tool; end
      class Unknown < Tool; end
    end

    # <p>Defines which tools the model should request when invoked. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Use a tool to complete an Amazon Bedrock model response</a>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute auto
    #   <p>Defines tools. The model automatically decides whether to call a tool or to generate text instead.</p>
    #   @return [Types::AutoToolChoice]
    # @!attribute any
    #   <p>Defines tools, at least one of which must be requested by the model. No text is generated but the results of tool use are sent back to the model to help generate a response.</p>
    #   @return [Types::AnyToolChoice]
    # @!attribute tool
    #   <p>Defines a specific tool that the model must request. No text is generated but the results of tool use are sent back to the model to help generate a response.</p>
    #   @return [Types::SpecificToolChoice]
    class ToolChoice < Struct.new(
      :auto,
      :any,
      :tool,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Auto < ToolChoice; end
      class Any < ToolChoice; end
      class Tool < ToolChoice; end
      class Unknown < ToolChoice; end
    end

    # <p>Configuration information for the tools that the model can use when generating a response. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Use a tool to complete an Amazon Bedrock model response</a>.</p>
    # @!attribute tools
    #   <p>An array of tools to pass to a model.</p>
    #   @return [Array<Types::Tool>]
    # @!attribute tool_choice
    #   <p>Defines which tools the model should request when invoked.</p>
    #   @return [Types::ToolChoice]
    class ToolConfiguration < Struct.new(
      :tools,
      :tool_choice,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input schema for the tool. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Use a tool to complete an Amazon Bedrock model response</a>.</p>
    # @!attribute json
    #   <p>A JSON object defining the input schema for the tool.</p>
    #   @return [JSON]
    class ToolInputSchema < Struct.new(
      :json,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Json < ToolInputSchema; end
      class Unknown < ToolInputSchema; end
    end

    # <p>Contains a specification for a tool. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html">Use a tool to complete an Amazon Bedrock model response</a>.</p>
    # @!attribute name
    #   <p>The name of the tool.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the tool.</p>
    #   @return [String]
    # @!attribute input_schema
    #   <p>The input schema for the tool.</p>
    #   @return [Types::ToolInputSchema]
    class ToolSpecification < Struct.new(
      :name,
      :description,
      :input_schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A custom processing step for documents moving through a data source ingestion pipeline. To process documents after they have been converted into chunks, set the step to apply to <code>POST_CHUNKING</code>.</p>
    # @!attribute transformation_function
    #   <p>A Lambda function that processes documents.</p>
    #   @return [Types::TransformationFunction]
    # @!attribute step_to_apply
    #   <p>When the service applies the transformation.</p>
    #   @return [String]
    class Transformation < Struct.new(
      :transformation_function,
      :step_to_apply,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A Lambda function that processes documents.</p>
    # @!attribute transformation_lambda_configuration
    #   <p>The Lambda function.</p>
    #   @return [Types::TransformationLambdaConfiguration]
    class TransformationFunction < Struct.new(
      :transformation_lambda_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A Lambda function that processes documents.</p>
    # @!attribute lambda_arn
    #   <p>The function's ARN identifier.</p>
    #   @return [String]
    class TransformationLambdaConfiguration < Struct.new(
      :lambda_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an unfulfilled node input with no valid connections.</p>
    # @!attribute node
    #   <p>The name of the node containing the unfulfilled input.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The name of the unfulfilled input. An input is unfulfilled if there are no data connections to it.</p>
    #   @return [String]
    class UnfulfilledNodeInputFlowValidationDetails < Struct.new(
      :node,
      :input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an unknown condition for a connection.</p>
    # @!attribute connection
    #   <p>The name of the connection with the unknown condition.</p>
    #   @return [String]
    class UnknownConnectionConditionFlowValidationDetails < Struct.new(
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an unknown source node for a connection.</p>
    # @!attribute connection
    #   <p>The name of the connection with the unknown source.</p>
    #   @return [String]
    class UnknownConnectionSourceFlowValidationDetails < Struct.new(
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an unknown source output for a connection.</p>
    # @!attribute connection
    #   <p>The name of the connection with the unknown source output.</p>
    #   @return [String]
    class UnknownConnectionSourceOutputFlowValidationDetails < Struct.new(
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an unknown target node for a connection.</p>
    # @!attribute connection
    #   <p>The name of the connection with the unknown target.</p>
    #   @return [String]
    class UnknownConnectionTargetFlowValidationDetails < Struct.new(
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an unknown target input for a connection.</p>
    # @!attribute connection
    #   <p>The name of the connection with the unknown target input.</p>
    #   @return [String]
    class UnknownConnectionTargetInputFlowValidationDetails < Struct.new(
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an unknown input for a node.</p>
    # @!attribute node
    #   <p>The name of the unknown input.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The name of the node with the unknown input.</p>
    #   @return [String]
    class UnknownNodeInputFlowValidationDetails < Struct.new(
      :node,
      :input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an unknown output for a node.</p>
    # @!attribute node
    #   <p>The name of the node with the unknown output.</p>
    #   @return [String]
    # @!attribute output
    #   <p>The name of the unknown output.</p>
    #   @return [String]
    class UnknownNodeOutputFlowValidationDetails < Struct.new(
      :node,
      :output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an unreachable node in the flow. A node is unreachable when there are no paths to it from any starting node.</p>
    # @!attribute node
    #   <p>The name of the unreachable node.</p>
    #   @return [String]
    class UnreachableNodeFlowValidationDetails < Struct.new(
      :node,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about unsatisfied conditions for a connection. A condition is unsatisfied if it can never be true, for example two branches of condition node cannot be simultaneously true.</p>
    # @!attribute connection
    #   <p>The name of the connection with unsatisfied conditions.</p>
    #   @return [String]
    class UnsatisfiedConnectionConditionsFlowValidationDetails < Struct.new(
      :connection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an unspecified validation that doesn't fit other categories.</p>
    class UnspecifiedFlowValidationDetails < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which to remove tags.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of keys of the tags to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent for which to update the action group.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The unique identifier of the agent version for which to update the action group.</p>
    #   @return [String]
    # @!attribute action_group_id
    #   <p>The unique identifier of the action group.</p>
    #   @return [String]
    # @!attribute action_group_name
    #   <p>Specifies a new name for the action group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Specifies a new name for the action group.</p>
    #   @return [String]
    # @!attribute parent_action_group_signature
    #   <p>Update the built-in or computer use action for this action group. If you specify a value, you must leave the <code>description</code>, <code>apiSchema</code>, and <code>actionGroupExecutor</code> fields empty for this action group. </p> <ul> <li> <p>To allow your agent to request the user for additional information when trying to complete a task, set this field to <code>AMAZON.UserInput</code>. </p> </li> <li> <p>To allow your agent to generate, run, and troubleshoot code when trying to complete a task, set this field to <code>AMAZON.CodeInterpreter</code>.</p> </li> <li> <p>To allow your agent to use an Anthropic computer use tool, specify one of the following values. </p> <important> <p> Computer use is a new Anthropic Claude model capability (in beta) available with Anthropic Claude 3.7 Sonnet and Claude 3.5 Sonnet v2 only. When operating computer use functionality, we recommend taking additional security precautions, such as executing computer actions in virtual environments with restricted data access and limited internet connectivity. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html">Configure an Amazon Bedrock Agent to complete tasks with computer use tools</a>. </p> </important> <ul> <li> <p> <code>ANTHROPIC.Computer</code> - Gives the agent permission to use the mouse and keyboard and take screenshots.</p> </li> <li> <p> <code>ANTHROPIC.TextEditor</code> - Gives the agent permission to view, create and edit files.</p> </li> <li> <p> <code>ANTHROPIC.Bash</code> - Gives the agent permission to run commands in a bash shell.</p> </li> </ul> </li> </ul> <p>During orchestration, if your agent determines that it needs to invoke an API in an action group, but doesn't have enough information to complete the API request, it will invoke this action group instead and return an <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Observation.html">Observation</a> reprompting the user for more information.</p>
    #   @return [String]
    # @!attribute parent_action_group_signature_params
    #   <p>The configuration settings for a computer use action.</p> <important> <p> Computer use is a new Anthropic Claude model capability (in beta) available with Claude 3.7 Sonnet and Claude 3.5 Sonnet v2 only. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html">Configure an Amazon Bedrock Agent to complete tasks with computer use tools</a>. </p> </important>
    #   @return [Hash<String, String>]
    # @!attribute action_group_executor
    #   <p>The Amazon Resource Name (ARN) of the Lambda function containing the business logic that is carried out upon invoking the action.</p>
    #   @return [Types::ActionGroupExecutor]
    # @!attribute action_group_state
    #   <p>Specifies whether the action group is available for the agent to invoke or not when sending an <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html">InvokeAgent</a> request.</p>
    #   @return [String]
    # @!attribute api_schema
    #   <p>Contains either details about the S3 object containing the OpenAPI schema for the action group or the JSON or YAML-formatted payload defining the schema. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html">Action group OpenAPI schemas</a>.</p>
    #   @return [Types::APISchema]
    # @!attribute function_schema
    #   <p>Contains details about the function schema for the action group or the JSON or YAML-formatted payload defining the schema.</p>
    #   @return [Types::FunctionSchema]
    class UpdateAgentActionGroupRequest < Struct.new(
      :agent_id,
      :agent_version,
      :action_group_id,
      :action_group_name,
      :description,
      :parent_action_group_signature,
      :parent_action_group_signature_params,
      :action_group_executor,
      :action_group_state,
      :api_schema,
      :function_schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_action_group
    #   <p>Contains details about the action group that was updated.</p>
    #   @return [Types::AgentActionGroup]
    class UpdateAgentActionGroupResponse < Struct.new(
      :agent_action_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent.</p>
    #   @return [String]
    # @!attribute agent_alias_id
    #   <p>The unique identifier of the alias.</p>
    #   @return [String]
    # @!attribute agent_alias_name
    #   <p>Specifies a new name for the alias.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Specifies a new description for the alias.</p>
    #   @return [String]
    # @!attribute routing_configuration
    #   <p>Contains details about the routing configuration of the alias.</p>
    #   @return [Array<Types::AgentAliasRoutingConfigurationListItem>]
    # @!attribute alias_invocation_state
    #   <p>The invocation state for the agent alias. To pause the agent alias, set the value to <code>REJECT_INVOCATIONS</code>. To start the agent alias running again, set the value to <code>ACCEPT_INVOCATIONS</code>. Use the <code>GetAgentAlias</code>, or <code>ListAgentAliases</code>, operation to get the invocation state of an agent alias.</p>
    #   @return [String]
    class UpdateAgentAliasRequest < Struct.new(
      :agent_id,
      :agent_alias_id,
      :agent_alias_name,
      :description,
      :routing_configuration,
      :alias_invocation_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_alias
    #   <p>Contains details about the alias that was updated.</p>
    #   @return [Types::AgentAlias]
    class UpdateAgentAliasResponse < Struct.new(
      :agent_alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The agent's ID.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The agent's version.</p>
    #   @return [String]
    # @!attribute collaborator_id
    #   <p>The collaborator's ID.</p>
    #   @return [String]
    # @!attribute agent_descriptor
    #   <p>An agent descriptor for the agent collaborator.</p>
    #   @return [Types::AgentDescriptor]
    # @!attribute collaborator_name
    #   <p>The collaborator's name.</p>
    #   @return [String]
    # @!attribute collaboration_instruction
    #   <p>Instruction for the collaborator.</p>
    #   @return [String]
    # @!attribute relay_conversation_history
    #   <p>A relay conversation history for the collaborator.</p>
    #   @return [String]
    class UpdateAgentCollaboratorRequest < Struct.new(
      :agent_id,
      :agent_version,
      :collaborator_id,
      :agent_descriptor,
      :collaborator_name,
      :collaboration_instruction,
      :relay_conversation_history,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_collaborator
    #   <p>Details about the collaborator.</p>
    #   @return [Types::AgentCollaborator]
    class UpdateAgentCollaboratorResponse < Struct.new(
      :agent_collaborator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent associated with the knowledge base that you want to update.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version of the agent associated with the knowledge base that you want to update.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base that has been associated with an agent.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Specifies a new description for the knowledge base associated with an agent.</p>
    #   @return [String]
    # @!attribute knowledge_base_state
    #   <p>Specifies whether the agent uses the knowledge base or not when sending an <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html">InvokeAgent</a> request.</p>
    #   @return [String]
    class UpdateAgentKnowledgeBaseRequest < Struct.new(
      :agent_id,
      :agent_version,
      :knowledge_base_id,
      :description,
      :knowledge_base_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_knowledge_base
    #   <p>Contains details about the knowledge base that has been associated with an agent.</p>
    #   @return [Types::AgentKnowledgeBase]
    class UpdateAgentKnowledgeBaseResponse < Struct.new(
      :agent_knowledge_base,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>The unique identifier of the agent.</p>
    #   @return [String]
    # @!attribute agent_name
    #   <p>Specifies a new name for the agent.</p>
    #   @return [String]
    # @!attribute instruction
    #   <p>Specifies new instructions that tell the agent what it should do and how it should interact with users.</p>
    #   @return [String]
    # @!attribute foundation_model
    #   <p>The identifier for the model that you want to be used for orchestration by the agent you create.</p> <p>The <code>modelId</code> to provide depends on the type of model or throughput that you use:</p> <ul> <li> <p>If you use a base model, specify the model ID or its ARN. For a list of model IDs for base models, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns">Amazon Bedrock base model IDs (on-demand throughput)</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an inference profile, specify the inference profile ID or its ARN. For a list of inference profile IDs, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html">Supported Regions and models for cross-region inference</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a provisioned model, specify the ARN of the Provisioned Throughput. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html">Run inference using a Provisioned Throughput</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use a custom model, first purchase Provisioned Throughput for it. Then specify the ARN of the resulting provisioned model. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html">Use a custom model in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p> </li> <li> <p>If you use an <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html">imported model</a>, specify the ARN of the imported model. You can get the model ARN from a successful call to <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html">CreateModelImportJob</a> or from the Imported models page in the Amazon Bedrock console.</p> </li> </ul>
    #   @return [String]
    # @!attribute description
    #   <p>Specifies a new description of the agent.</p>
    #   @return [String]
    # @!attribute orchestration_type
    #   <p> Specifies the type of orchestration strategy for the agent. This is set to <code>DEFAULT</code> orchestration type, by default. </p>
    #   @return [String]
    # @!attribute custom_orchestration
    #   <p> Contains details of the custom orchestration configured for the agent. </p>
    #   @return [Types::CustomOrchestration]
    # @!attribute idle_session_ttl_in_seconds
    #   <p>The number of seconds for which Amazon Bedrock keeps information about a user's conversation with the agent.</p> <p>A user interaction remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Bedrock deletes any data provided before the timeout.</p>
    #   @return [Integer]
    # @!attribute agent_resource_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role with permissions to invoke API operations on the agent.</p>
    #   @return [String]
    # @!attribute customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key with which to encrypt the agent.</p>
    #   @return [String]
    # @!attribute prompt_override_configuration
    #   <p>Contains configurations to override prompts in different parts of an agent sequence. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html">Advanced prompts</a>.</p>
    #   @return [Types::PromptOverrideConfiguration]
    # @!attribute guardrail_configuration
    #   <p>The unique Guardrail configuration assigned to the agent when it is updated.</p>
    #   @return [Types::GuardrailConfiguration]
    # @!attribute memory_configuration
    #   <p>Specifies the new memory configuration for the agent. </p>
    #   @return [Types::MemoryConfiguration]
    # @!attribute agent_collaboration
    #   <p>The agent's collaboration role.</p>
    #   @return [String]
    class UpdateAgentRequest < Struct.new(
      :agent_id,
      :agent_name,
      :instruction,
      :foundation_model,
      :description,
      :orchestration_type,
      :custom_orchestration,
      :idle_session_ttl_in_seconds,
      :agent_resource_role_arn,
      :customer_encryption_key_arn,
      :prompt_override_configuration,
      :guardrail_configuration,
      :memory_configuration,
      :agent_collaboration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent
    #   <p>Contains details about the agent that was updated.</p>
    #   @return [Types::Agent]
    class UpdateAgentResponse < Struct.new(
      :agent,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base for the data source.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The unique identifier of the data source.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Specifies a new name for the data source.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Specifies a new description for the data source.</p>
    #   @return [String]
    # @!attribute data_source_configuration
    #   <p>The connection configuration for the data source that you want to update.</p>
    #   @return [Types::DataSourceConfiguration]
    # @!attribute data_deletion_policy
    #   <p>The data deletion policy for the data source that you want to update.</p>
    #   @return [String]
    # @!attribute server_side_encryption_configuration
    #   <p>Contains details about server-side encryption of the data source.</p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    # @!attribute vector_ingestion_configuration
    #   <p>Contains details about how to ingest the documents in the data source.</p>
    #   @return [Types::VectorIngestionConfiguration]
    class UpdateDataSourceRequest < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :name,
      :description,
      :data_source_configuration,
      :data_deletion_policy,
      :server_side_encryption_configuration,
      :vector_ingestion_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_source
    #   <p>Contains details about the data source.</p>
    #   @return [Types::DataSource]
    class UpdateDataSourceResponse < Struct.new(
      :data_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the alias.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the alias.</p>
    #   @return [String]
    # @!attribute routing_configuration
    #   <p>Contains information about the version to which to map the alias.</p>
    #   @return [Array<Types::FlowAliasRoutingConfigurationListItem>]
    # @!attribute concurrency_configuration
    #   <p>The configuration that specifies how nodes in the flow are executed in parallel.</p>
    #   @return [Types::FlowAliasConcurrencyConfiguration]
    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    # @!attribute alias_identifier
    #   <p>The unique identifier of the alias.</p>
    #   @return [String]
    class UpdateFlowAliasRequest < Struct.new(
      :name,
      :description,
      :routing_configuration,
      :concurrency_configuration,
      :flow_identifier,
      :alias_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the alias.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the flow.</p>
    #   @return [String]
    # @!attribute routing_configuration
    #   <p>Contains information about the version that the alias is mapped to.</p>
    #   @return [Array<Types::FlowAliasRoutingConfigurationListItem>]
    # @!attribute concurrency_configuration
    #   <p>The configuration that specifies how nodes in the flow are executed in parallel.</p>
    #   @return [Types::FlowAliasConcurrencyConfiguration]
    # @!attribute flow_id
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the alias.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the flow.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the flow was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the alias was last updated.</p>
    #   @return [Time]
    class UpdateFlowAliasResponse < Struct.new(
      :name,
      :description,
      :routing_configuration,
      :concurrency_configuration,
      :flow_id,
      :id,
      :arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the flow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the flow.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role with permissions to create and manage a flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html">Create a service role for flows in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>
    #   @return [String]
    # @!attribute customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to encrypt the flow.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>A definition of the nodes and the connections between the nodes in the flow.</p>
    #   @return [Types::FlowDefinition]
    # @!attribute flow_identifier
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    class UpdateFlowRequest < Struct.new(
      :name,
      :description,
      :execution_role_arn,
      :customer_encryption_key_arn,
      :definition,
      :flow_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the flow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the flow.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role with permissions to create a flow. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html">Create a service role for flows in Amazon Bedrock</a> in the Amazon Bedrock User Guide.</p>
    #   @return [String]
    # @!attribute customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key that the flow was encrypted with.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the flow.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the flow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the flow. When you submit this request, the status will be <code>NotPrepared</code>. If updating fails, the status becomes <code>Failed</code>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the flow was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the flow was last updated.</p>
    #   @return [Time]
    # @!attribute version
    #   <p>The version of the flow. When you update a flow, the version updated is the <code>DRAFT</code> version.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>A definition of the nodes and the connections between nodes in the flow.</p>
    #   @return [Types::FlowDefinition]
    class UpdateFlowResponse < Struct.new(
      :name,
      :description,
      :execution_role_arn,
      :customer_encryption_key_arn,
      :id,
      :arn,
      :status,
      :created_at,
      :updated_at,
      :version,
      :definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Specifies a new name for the knowledge base.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Specifies a new description for the knowledge base.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>Specifies a different Amazon Resource Name (ARN) of the IAM role with permissions to invoke API operations on the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_configuration
    #   <p>Specifies the configuration for the embeddings model used for the knowledge base. You must use the same configuration as when the knowledge base was created.</p>
    #   @return [Types::KnowledgeBaseConfiguration]
    # @!attribute storage_configuration
    #   <p>Specifies the configuration for the vector store used for the knowledge base. You must use the same configuration as when the knowledge base was created.</p>
    #   @return [Types::StorageConfiguration]
    class UpdateKnowledgeBaseRequest < Struct.new(
      :knowledge_base_id,
      :name,
      :description,
      :role_arn,
      :knowledge_base_configuration,
      :storage_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base
    #   <p>Contains details about the knowledge base.</p>
    #   @return [Types::KnowledgeBase]
    class UpdateKnowledgeBaseResponse < Struct.new(
      :knowledge_base,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the prompt.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the prompt.</p>
    #   @return [String]
    # @!attribute customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to encrypt the prompt.</p>
    #   @return [String]
    # @!attribute default_variant
    #   <p>The name of the default variant for the prompt. This value must match the <code>name</code> field in the relevant <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptVariant.html">PromptVariant</a> object.</p>
    #   @return [String]
    # @!attribute variants
    #   <p>A list of objects, each containing details about a variant of the prompt.</p>
    #   @return [Array<Types::PromptVariant>]
    # @!attribute prompt_identifier
    #   <p>The unique identifier of the prompt.</p>
    #   @return [String]
    class UpdatePromptRequest < Struct.new(
      :name,
      :description,
      :customer_encryption_key_arn,
      :default_variant,
      :variants,
      :prompt_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the prompt.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the prompt.</p>
    #   @return [String]
    # @!attribute customer_encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to encrypt the prompt.</p>
    #   @return [String]
    # @!attribute default_variant
    #   <p>The name of the default variant for the prompt. This value must match the <code>name</code> field in the relevant <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptVariant.html">PromptVariant</a> object.</p>
    #   @return [String]
    # @!attribute variants
    #   <p>A list of objects, each containing details about a variant of the prompt.</p>
    #   @return [Array<Types::PromptVariant>]
    # @!attribute id
    #   <p>The unique identifier of the prompt.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the prompt.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the prompt. When you update a prompt, the version updated is the <code>DRAFT</code> version.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the prompt was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the prompt was last updated.</p>
    #   @return [Time]
    class UpdatePromptResponse < Struct.new(
      :name,
      :description,
      :customer_encryption_key_arn,
      :default_variant,
      :variants,
      :id,
      :arn,
      :version,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of web URLs that you want to crawl. You should be authorized to crawl the URLs.</p>
    # @!attribute seed_urls
    #   <p>One or more seed or starting point URLs.</p>
    #   @return [Array<Types::SeedUrl>]
    class UrlConfiguration < Struct.new(
      :seed_urls,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute definition
    #   <p>The definition of a flow to validate.</p>
    #   @return [Types::FlowDefinition]
    class ValidateFlowDefinitionRequest < Struct.new(
      :definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute validations
    #   <p>Contains an array of objects, each of which contains an error identified by validation.</p>
    #   @return [Array<Types::FlowValidation>]
    class ValidateFlowDefinitionResponse < Struct.new(
      :validations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input validation failed. Check your request parameters and retry the request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute field_list
    #   <p>A list of objects containing fields that caused validation errors and their corresponding validation error messages.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Stores information about a field passed inside a request that resulted in an validation error.</p>
    # @!attribute name
    #   <p>The name of the field.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message describing why this field failed validation.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about how to ingest the documents in a data source.</p>
    # @!attribute chunking_configuration
    #   <p>Details about how to chunk the documents in the data source. A <i>chunk</i> refers to an excerpt from a data source that is returned when the knowledge base that it belongs to is queried.</p>
    #   @return [Types::ChunkingConfiguration]
    # @!attribute custom_transformation_configuration
    #   <p>A custom document transformer for parsed data source documents.</p>
    #   @return [Types::CustomTransformationConfiguration]
    # @!attribute parsing_configuration
    #   <p>Configurations for a parser to use for parsing documents in your data source. If you exclude this field, the default parser will be used.</p>
    #   @return [Types::ParsingConfiguration]
    # @!attribute context_enrichment_configuration
    #   <p>The context enrichment configuration used for ingestion of the data into the vector store.</p>
    #   @return [Types::ContextEnrichmentConfiguration]
    class VectorIngestionConfiguration < Struct.new(
      :chunking_configuration,
      :custom_transformation_configuration,
      :parsing_configuration,
      :context_enrichment_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the model used to create vector embeddings for the knowledge base.</p>
    # @!attribute embedding_model_arn
    #   <p>The Amazon Resource Name (ARN) of the model used to create vector embeddings for the knowledge base.</p>
    #   @return [String]
    # @!attribute embedding_model_configuration
    #   <p>The embeddings model configuration details for the vector model used in Knowledge Base.</p>
    #   @return [Types::EmbeddingModelConfiguration]
    # @!attribute supplemental_data_storage_configuration
    #   <p>If you include multimodal data from your data source, use this object to specify configurations for the storage location of the images extracted from your documents. These images can be retrieved and returned to the end user. They can also be used in generation when using <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html">RetrieveAndGenerate</a>.</p>
    #   @return [Types::SupplementalDataStorageConfiguration]
    class VectorKnowledgeBaseConfiguration < Struct.new(
      :embedding_model_arn,
      :embedding_model_configuration,
      :supplemental_data_storage_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures the Amazon Bedrock reranker model to improve the relevance of retrieved results.</p>
    # @!attribute model_configuration
    #   <p>Specifies the configuration for the Amazon Bedrock reranker model.</p>
    #   @return [Types::VectorSearchBedrockRerankingModelConfiguration]
    # @!attribute number_of_reranked_results
    #   <p>Specifies the number of results to return after reranking.</p>
    #   @return [Integer]
    # @!attribute metadata_configuration
    #   <p>Specifies how metadata fields should be handled during the reranking process.</p>
    #   @return [Types::MetadataConfigurationForReranking]
    class VectorSearchBedrockRerankingConfiguration < Struct.new(
      :model_configuration,
      :number_of_reranked_results,
      :metadata_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures the Amazon Bedrock model used for reranking retrieved results.</p>
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Bedrock reranker model.</p>
    #   @return [String]
    # @!attribute additional_model_request_fields
    #   <p>Specifies additional model-specific request parameters as key-value pairs that are included in the request to the Amazon Bedrock reranker model.</p>
    #   @return [Hash<String, JSON>]
    class VectorSearchBedrockRerankingModelConfiguration < Struct.new(
      :model_arn,
      :additional_model_request_fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies how retrieved results from a knowledge base are reranked to improve relevance.</p>
    # @!attribute type
    #   <p>Specifies the type of reranking model to use. Currently, the only supported value is <code>BEDROCK_RERANKING_MODEL</code>.</p>
    #   @return [String]
    # @!attribute bedrock_reranking_configuration
    #   <p>Specifies the configuration for using an Amazon Bedrock reranker model to rerank retrieved results.</p>
    #   @return [Types::VectorSearchBedrockRerankingConfiguration]
    class VectorSearchRerankingConfiguration < Struct.new(
      :type,
      :bedrock_reranking_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of web URLs that you want to crawl. You should be authorized to crawl the URLs.</p>
    # @!attribute crawler_limits
    #   <p>The configuration of crawl limits for the web URLs.</p>
    #   @return [Types::WebCrawlerLimits]
    # @!attribute inclusion_filters
    #   <p>A list of one or more inclusion regular expression patterns to include certain URLs. If you specify an inclusion and exclusion filter/pattern and both match a URL, the exclusion filter takes precedence and the web content of the URL isn’t crawled.</p>
    #   @return [Array<String>]
    # @!attribute exclusion_filters
    #   <p>A list of one or more exclusion regular expression patterns to exclude certain URLs. If you specify an inclusion and exclusion filter/pattern and both match a URL, the exclusion filter takes precedence and the web content of the URL isn’t crawled.</p>
    #   @return [Array<String>]
    # @!attribute scope
    #   <p>The scope of what is crawled for your URLs.</p> <p>You can choose to crawl only web pages that belong to the same host or primary domain. For example, only web pages that contain the seed URL "https://docs.aws.amazon.com/bedrock/latest/userguide/" and no other domains. You can choose to include sub domains in addition to the host or primary domain. For example, web pages that contain "aws.amazon.com" can also include sub domain "docs.aws.amazon.com".</p>
    #   @return [String]
    # @!attribute user_agent
    #   <p>Returns the user agent suffix for your web crawler.</p>
    #   @return [String]
    # @!attribute user_agent_header
    #   <p>A string used for identifying the crawler or bot when it accesses a web server. The user agent header value consists of the <code>bedrockbot</code>, UUID, and a user agent suffix for your crawler (if one is provided). By default, it is set to <code>bedrockbot_UUID</code>. You can optionally append a custom suffix to <code>bedrockbot_UUID</code> to allowlist a specific user agent permitted to access your source URLs. </p>
    #   @return [String]
    class WebCrawlerConfiguration < Struct.new(
      :crawler_limits,
      :inclusion_filters,
      :exclusion_filters,
      :scope,
      :user_agent,
      :user_agent_header,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The rate limits for the URLs that you want to crawl. You should be authorized to crawl the URLs.</p>
    # @!attribute rate_limit
    #   <p>The max rate at which pages are crawled, up to 300 per minute per host.</p>
    #   @return [Integer]
    # @!attribute max_pages
    #   <p> The max number of web pages crawled from your source URLs, up to 25,000 pages. If the web pages exceed this limit, the data source sync will fail and no web pages will be ingested. </p>
    #   @return [Integer]
    class WebCrawlerLimits < Struct.new(
      :rate_limit,
      :max_pages,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details for the web data source.</p>
    # @!attribute source_configuration
    #   <p>The source configuration details for the web data source.</p>
    #   @return [Types::WebSourceConfiguration]
    # @!attribute crawler_configuration
    #   <p>The Web Crawler configuration details for the web data source.</p>
    #   @return [Types::WebCrawlerConfiguration]
    class WebDataSourceConfiguration < Struct.new(
      :source_configuration,
      :crawler_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of the URL/URLs for the web content that you want to crawl. You should be authorized to crawl the URLs.</p>
    # @!attribute url_configuration
    #   <p>The configuration of the URL/URLs.</p>
    #   @return [Types::UrlConfiguration]
    class WebSourceConfiguration < Struct.new(
      :url_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end

# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BedrockAgent
  module Types

    # Contains details about the OpenAPI schema for the action group. For
    # more information, see [Action group OpenAPI schemas][1]. You can
    # either include the schema directly in the `payload` field or you can
    # upload it to an S3 bucket and specify the S3 bucket location in the
    # `s3` field.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html
    #
    # @note APISchema is a union - when making an API calls you must set exactly one of the members.
    #
    # @note APISchema is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of APISchema corresponding to the set member.
    #
    # @!attribute [rw] s3
    #   Contains details about the S3 object containing the OpenAPI schema
    #   for the action group. For more information, see [Action group
    #   OpenAPI schemas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html
    #   @return [Types::S3Identifier]
    #
    # @!attribute [rw] payload
    #   The JSON or YAML-formatted payload defining the OpenAPI schema for
    #   the action group. For more information, see [Action group OpenAPI
    #   schemas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/APISchema AWS API Documentation
    #
    class APISchema < Struct.new(
      :s3,
      :payload,
      :unknown)
      SENSITIVE = [:payload]
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < APISchema; end
      class Payload < APISchema; end
      class Unknown < APISchema; end
    end

    # The request is denied because of missing access permissions.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the Lambda function containing the business
    # logic that is carried out upon invoking the action or the custom
    # control method for handling the information elicited from the user.
    #
    # @note ActionGroupExecutor is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ActionGroupExecutor is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ActionGroupExecutor corresponding to the set member.
    #
    # @!attribute [rw] lambda
    #   The Amazon Resource Name (ARN) of the Lambda function containing the
    #   business logic that is carried out upon invoking the action.
    #   @return [String]
    #
    # @!attribute [rw] custom_control
    #   To return the action group invocation results directly in the
    #   `InvokeAgent` response, specify `RETURN_CONTROL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ActionGroupExecutor AWS API Documentation
    #
    class ActionGroupExecutor < Struct.new(
      :lambda,
      :custom_control,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Lambda < ActionGroupExecutor; end
      class CustomControl < ActionGroupExecutor; end
      class Unknown < ActionGroupExecutor; end
    end

    # Contains details about an action group.
    #
    # @!attribute [rw] action_group_id
    #   The unique identifier of the action group.
    #   @return [String]
    #
    # @!attribute [rw] action_group_name
    #   The name of the action group.
    #   @return [String]
    #
    # @!attribute [rw] action_group_state
    #   Specifies whether the action group is available for the agent to
    #   invoke or not when sending an [InvokeAgent][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the action group.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time at which the action group was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ActionGroupSummary AWS API Documentation
    #
    class ActionGroupSummary < Struct.new(
      :action_group_id,
      :action_group_name,
      :action_group_state,
      :description,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an agent.
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_name
    #   The name of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_arn
    #   The Amazon Resource Name (ARN) of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] instruction
    #   Instructions that tell the agent what it should do and how it should
    #   interact with users.
    #   @return [String]
    #
    # @!attribute [rw] agent_status
    #   The status of the agent and whether it is ready for use. The
    #   following statuses are possible:
    #
    #   * CREATING – The agent is being created.
    #
    #   * PREPARING – The agent is being prepared.
    #
    #   * PREPARED – The agent is prepared and ready to be invoked.
    #
    #   * NOT\_PREPARED – The agent has been created but not yet prepared.
    #
    #   * FAILED – The agent API operation failed.
    #
    #   * UPDATING – The agent is being updated.
    #
    #   * DELETING – The agent is being deleted.
    #   @return [String]
    #
    # @!attribute [rw] foundation_model
    #   The foundation model used for orchestration by the agent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the agent.
    #   @return [String]
    #
    # @!attribute [rw] orchestration_type
    #   Specifies the orchestration strategy for the agent.
    #   @return [String]
    #
    # @!attribute [rw] custom_orchestration
    #   Contains custom orchestration configurations for the agent.
    #   @return [Types::CustomOrchestration]
    #
    # @!attribute [rw] idle_session_ttl_in_seconds
    #   The number of seconds for which Amazon Bedrock keeps information
    #   about a user's conversation with the agent.
    #
    #   A user interaction remains active for the amount of time specified.
    #   If no conversation occurs during this time, the session expires and
    #   Amazon Bedrock deletes any data provided before the timeout.
    #   @return [Integer]
    #
    # @!attribute [rw] agent_resource_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role with permissions to
    #   invoke API operations on the agent.
    #   @return [String]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key that encrypts the
    #   agent.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the agent was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the agent was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] prepared_at
    #   The time at which the agent was last prepared.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reasons
    #   Contains reasons that the agent-related API that you invoked failed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] recommended_actions
    #   Contains recommended actions to take for the agent-related API that
    #   you invoked to succeed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] prompt_override_configuration
    #   Contains configurations to override prompt templates in different
    #   parts of an agent sequence. For more information, see [Advanced
    #   prompts][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html
    #   @return [Types::PromptOverrideConfiguration]
    #
    # @!attribute [rw] guardrail_configuration
    #   Details about the guardrail associated with the agent.
    #   @return [Types::GuardrailConfiguration]
    #
    # @!attribute [rw] memory_configuration
    #   Contains memory configuration for the agent.
    #   @return [Types::MemoryConfiguration]
    #
    # @!attribute [rw] agent_collaboration
    #   The agent's collaboration settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/Agent AWS API Documentation
    #
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
      :agent_collaboration)
      SENSITIVE = [:instruction, :prompt_override_configuration]
      include Aws::Structure
    end

    # Contains details about an action group.
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent to which the action group
    #   belongs.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent to which the action group belongs.
    #   @return [String]
    #
    # @!attribute [rw] action_group_id
    #   The unique identifier of the action group.
    #   @return [String]
    #
    # @!attribute [rw] action_group_name
    #   The name of the action group.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the action group.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the action group was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the action group was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] parent_action_signature
    #   If this field is set as `AMAZON.UserInput`, the agent can request
    #   the user for additional information when trying to complete a task.
    #   The `description`, `apiSchema`, and `actionGroupExecutor` fields
    #   must be blank for this action group.
    #
    #   During orchestration, if the agent determines that it needs to
    #   invoke an API in an action group, but doesn't have enough
    #   information to complete the API request, it will invoke this action
    #   group instead and return an [Observation][1] reprompting the user
    #   for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Observation.html
    #   @return [String]
    #
    # @!attribute [rw] parent_action_group_signature_params
    #   The configuration settings for a computer use action.
    #
    #   Computer use is a new Anthropic Claude model capability (in beta)
    #   available with Claude 3.7 Sonnet and Claude 3.5 Sonnet v2 only. For
    #   more information, see [Configure an Amazon Bedrock Agent to complete
    #   tasks with computer use tools][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] action_group_executor
    #   The Amazon Resource Name (ARN) of the Lambda function containing the
    #   business logic that is carried out upon invoking the action or the
    #   custom control method for handling the information elicited from the
    #   user.
    #   @return [Types::ActionGroupExecutor]
    #
    # @!attribute [rw] api_schema
    #   Contains either details about the S3 object containing the OpenAPI
    #   schema for the action group or the JSON or YAML-formatted payload
    #   defining the schema. For more information, see [Action group OpenAPI
    #   schemas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html
    #   @return [Types::APISchema]
    #
    # @!attribute [rw] function_schema
    #   Defines functions that each define parameters that the agent needs
    #   to invoke from the user. Each function represents an action in an
    #   action group.
    #   @return [Types::FunctionSchema]
    #
    # @!attribute [rw] action_group_state
    #   Specifies whether the action group is available for the agent to
    #   invoke or not when sending an [InvokeAgent][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentActionGroup AWS API Documentation
    #
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
      :action_group_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an alias of an agent.
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_id
    #   The unique identifier of the alias of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_name
    #   The name of the alias of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_arn
    #   The Amazon Resource Name (ARN) of the alias of the agent.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the alias of the agent.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   Contains details about the routing configuration of the alias.
    #   @return [Array<Types::AgentAliasRoutingConfigurationListItem>]
    #
    # @!attribute [rw] created_at
    #   The time at which the alias of the agent was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the alias was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] agent_alias_history_events
    #   Contains details about the history of the alias.
    #   @return [Array<Types::AgentAliasHistoryEvent>]
    #
    # @!attribute [rw] agent_alias_status
    #   The status of the alias of the agent and whether it is ready for
    #   use. The following statuses are possible:
    #
    #   * CREATING – The agent alias is being created.
    #
    #   * PREPARED – The agent alias is finished being created or updated
    #     and is ready to be invoked.
    #
    #   * FAILED – The agent alias API operation failed.
    #
    #   * UPDATING – The agent alias is being updated.
    #
    #   * DELETING – The agent alias is being deleted.
    #
    #   * DISSOCIATED - The agent alias has no version associated with it.
    #   @return [String]
    #
    # @!attribute [rw] failure_reasons
    #   Information on the failure of Provisioned Throughput assigned to an
    #   agent alias.
    #   @return [Array<String>]
    #
    # @!attribute [rw] alias_invocation_state
    #   The invocation state for the agent alias. If the agent alias is
    #   running, the value is `ACCEPT_INVOCATIONS`. If the agent alias is
    #   paused, the value is `REJECT_INVOCATIONS`. Use the
    #   `UpdateAgentAlias` operation to change the invocation state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentAlias AWS API Documentation
    #
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
      :alias_invocation_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the history of the alias.
    #
    # @!attribute [rw] routing_configuration
    #   Contains details about the version of the agent with which the alias
    #   is associated.
    #   @return [Array<Types::AgentAliasRoutingConfigurationListItem>]
    #
    # @!attribute [rw] end_date
    #   The date that the alias stopped being associated to the version in
    #   the `routingConfiguration` object
    #   @return [Time]
    #
    # @!attribute [rw] start_date
    #   The date that the alias began being associated to the version in the
    #   `routingConfiguration` object.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentAliasHistoryEvent AWS API Documentation
    #
    class AgentAliasHistoryEvent < Struct.new(
      :routing_configuration,
      :end_date,
      :start_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the routing configuration of the alias.
    #
    # @!attribute [rw] agent_version
    #   The version of the agent with which the alias is associated.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_throughput
    #   Information on the Provisioned Throughput assigned to an agent
    #   alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentAliasRoutingConfigurationListItem AWS API Documentation
    #
    class AgentAliasRoutingConfigurationListItem < Struct.new(
      :agent_version,
      :provisioned_throughput)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an alias of an agent.
    #
    # @!attribute [rw] agent_alias_id
    #   Contains details about
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_name
    #   The name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   Contains details about the version of the agent with which the alias
    #   is associated.
    #   @return [Array<Types::AgentAliasRoutingConfigurationListItem>]
    #
    # @!attribute [rw] agent_alias_status
    #   The status of the alias.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the alias of the agent was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the alias was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] alias_invocation_state
    #   The invocation state for the agent alias. If the agent alias is
    #   running, the value is `ACCEPT_INVOCATIONS`. If the agent alias is
    #   paused, the value is `REJECT_INVOCATIONS`. Use the
    #   `UpdateAgentAlias` operation to change the invocation state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentAliasSummary AWS API Documentation
    #
    class AgentAliasSummary < Struct.new(
      :agent_alias_id,
      :agent_alias_name,
      :description,
      :routing_configuration,
      :agent_alias_status,
      :created_at,
      :updated_at,
      :alias_invocation_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # An agent collaborator.
    #
    # @!attribute [rw] agent_id
    #   The collaborator's agent ID.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The collaborator's agent version.
    #   @return [String]
    #
    # @!attribute [rw] agent_descriptor
    #   The collaborator's agent descriptor.
    #   @return [Types::AgentDescriptor]
    #
    # @!attribute [rw] collaborator_id
    #   The collaborator's collaborator ID.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_instruction
    #   The collaborator's instructions.
    #   @return [String]
    #
    # @!attribute [rw] collaborator_name
    #   The collaborator's collaborator name.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   When the collaborator was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   When the collaborator was updated.
    #   @return [Time]
    #
    # @!attribute [rw] relay_conversation_history
    #   The collaborator's relay conversation history.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The collaborator's client token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentCollaborator AWS API Documentation
    #
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
      :client_token)
      SENSITIVE = [:collaboration_instruction]
      include Aws::Structure
    end

    # An agent collaborator summary.
    #
    # @!attribute [rw] agent_id
    #   The collaborator's agent ID.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The collaborator's agent version.
    #   @return [String]
    #
    # @!attribute [rw] collaborator_id
    #   The collaborator's ID.
    #   @return [String]
    #
    # @!attribute [rw] agent_descriptor
    #   The collaborator's agent descriptor.
    #   @return [Types::AgentDescriptor]
    #
    # @!attribute [rw] collaboration_instruction
    #   The collaborator's collaboration instruction.
    #   @return [String]
    #
    # @!attribute [rw] relay_conversation_history
    #   The collaborator's relay conversation history.
    #   @return [String]
    #
    # @!attribute [rw] collaborator_name
    #   The collaborator's name.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   When the collaborator was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   When the collaborator was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentCollaboratorSummary AWS API Documentation
    #
    class AgentCollaboratorSummary < Struct.new(
      :agent_id,
      :agent_version,
      :collaborator_id,
      :agent_descriptor,
      :collaboration_instruction,
      :relay_conversation_history,
      :collaborator_name,
      :created_at,
      :last_updated_at)
      SENSITIVE = [:collaboration_instruction]
      include Aws::Structure
    end

    # An agent descriptor.
    #
    # @!attribute [rw] alias_arn
    #   The agent's alias ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentDescriptor AWS API Documentation
    #
    class AgentDescriptor < Struct.new(
      :alias_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines an agent node in your flow. You specify the agent to invoke at
    # this point in the flow. For more information, see [Node types in a
    # flow][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-nodes.html
    #
    # @!attribute [rw] agent_alias_arn
    #   The Amazon Resource Name (ARN) of the alias of the agent to invoke.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentFlowNodeConfiguration AWS API Documentation
    #
    class AgentFlowNodeConfiguration < Struct.new(
      :agent_alias_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a knowledge base that is associated with an
    # agent.
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent with which the knowledge base is
    #   associated.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent with which the knowledge base is
    #   associated.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the association between the agent and the
    #   knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the association between the agent and the
    #   knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the association between the agent and the
    #   knowledge base was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the association between the agent and the
    #   knowledge base was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] knowledge_base_state
    #   Specifies whether to use the knowledge base or not when sending an
    #   [InvokeAgent][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentKnowledgeBase AWS API Documentation
    #
    class AgentKnowledgeBase < Struct.new(
      :agent_id,
      :agent_version,
      :knowledge_base_id,
      :description,
      :created_at,
      :updated_at,
      :knowledge_base_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a knowledge base associated with an agent.
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base associated with an
    #   agent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the knowledge base associated with an agent.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_state
    #   Specifies whether the agent uses the knowledge base or not when
    #   sending an [InvokeAgent][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time at which the knowledge base associated with an agent was
    #   last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentKnowledgeBaseSummary AWS API Documentation
    #
    class AgentKnowledgeBaseSummary < Struct.new(
      :knowledge_base_id,
      :description,
      :knowledge_base_state,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an agent.
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_name
    #   The name of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_status
    #   The status of the agent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the agent.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time at which the agent was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] latest_agent_version
    #   The latest version of the agent.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_configuration
    #   Details about the guardrail associated with the agent.
    #   @return [Types::GuardrailConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentSummary AWS API Documentation
    #
    class AgentSummary < Struct.new(
      :agent_id,
      :agent_name,
      :agent_status,
      :description,
      :updated_at,
      :latest_agent_version,
      :guardrail_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a version of an agent.
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent that the version belongs to.
    #   @return [String]
    #
    # @!attribute [rw] agent_name
    #   The name of the agent that the version belongs to.
    #   @return [String]
    #
    # @!attribute [rw] agent_arn
    #   The Amazon Resource Name (ARN) of the agent that the version belongs
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number.
    #   @return [String]
    #
    # @!attribute [rw] instruction
    #   The instructions provided to the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_status
    #   The status of the agent that the version belongs to.
    #   @return [String]
    #
    # @!attribute [rw] foundation_model
    #   The foundation model that the version invokes.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the version.
    #   @return [String]
    #
    # @!attribute [rw] idle_session_ttl_in_seconds
    #   The number of seconds for which Amazon Bedrock keeps information
    #   about a user's conversation with the agent.
    #
    #   A user interaction remains active for the amount of time specified.
    #   If no conversation occurs during this time, the session expires and
    #   Amazon Bedrock deletes any data provided before the timeout.
    #   @return [Integer]
    #
    # @!attribute [rw] agent_resource_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role with permissions to
    #   invoke API operations on the agent.
    #   @return [String]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key that encrypts the
    #   agent.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the version was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the version was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reasons
    #   A list of reasons that the API operation on the version failed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] recommended_actions
    #   A list of recommended actions to take for the failed API operation
    #   on the version to succeed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] prompt_override_configuration
    #   Contains configurations to override prompt templates in different
    #   parts of an agent sequence. For more information, see [Advanced
    #   prompts][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html
    #   @return [Types::PromptOverrideConfiguration]
    #
    # @!attribute [rw] guardrail_configuration
    #   Details about the guardrail associated with the agent.
    #   @return [Types::GuardrailConfiguration]
    #
    # @!attribute [rw] memory_configuration
    #   Contains details of the memory configuration on the version of the
    #   agent.
    #   @return [Types::MemoryConfiguration]
    #
    # @!attribute [rw] agent_collaboration
    #   The agent's collaboration settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentVersion AWS API Documentation
    #
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
      :agent_collaboration)
      SENSITIVE = [:instruction, :prompt_override_configuration]
      include Aws::Structure
    end

    # Contains details about a version of an agent.
    #
    # @!attribute [rw] agent_name
    #   The name of the agent to which the version belongs.
    #   @return [String]
    #
    # @!attribute [rw] agent_status
    #   The status of the agent to which the version belongs.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the version was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the version was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the version of the agent.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_configuration
    #   Details about the guardrail associated with the agent.
    #   @return [Types::GuardrailConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentVersionSummary AWS API Documentation
    #
    class AgentVersionSummary < Struct.new(
      :agent_name,
      :agent_status,
      :agent_version,
      :created_at,
      :updated_at,
      :description,
      :guardrail_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines tools, at least one of which must be requested by the model.
    # No text is generated but the results of tool use are sent back to the
    # model to help generate a response. For more information, see [Use a
    # tool to complete an Amazon Bedrock model response][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AnyToolChoice AWS API Documentation
    #
    class AnyToolChoice < Aws::EmptyStructure; end

    # @!attribute [rw] agent_id
    #   The agent's ID.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   An agent version.
    #   @return [String]
    #
    # @!attribute [rw] agent_descriptor
    #   The alias of the collaborator agent.
    #   @return [Types::AgentDescriptor]
    #
    # @!attribute [rw] collaborator_name
    #   A name for the collaborator.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_instruction
    #   Instruction for the collaborator.
    #   @return [String]
    #
    # @!attribute [rw] relay_conversation_history
    #   A relay conversation history for the collaborator.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AssociateAgentCollaboratorRequest AWS API Documentation
    #
    class AssociateAgentCollaboratorRequest < Struct.new(
      :agent_id,
      :agent_version,
      :agent_descriptor,
      :collaborator_name,
      :collaboration_instruction,
      :relay_conversation_history,
      :client_token)
      SENSITIVE = [:collaboration_instruction]
      include Aws::Structure
    end

    # @!attribute [rw] agent_collaborator
    #   Details about the collaborator.
    #   @return [Types::AgentCollaborator]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AssociateAgentCollaboratorResponse AWS API Documentation
    #
    class AssociateAgentCollaboratorResponse < Struct.new(
      :agent_collaborator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent with which you want to associate
    #   the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent with which you want to associate the
    #   knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to associate with the
    #   agent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of what the agent should use the knowledge base for.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_state
    #   Specifies whether to use the knowledge base or not when sending an
    #   [InvokeAgent][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AssociateAgentKnowledgeBaseRequest AWS API Documentation
    #
    class AssociateAgentKnowledgeBaseRequest < Struct.new(
      :agent_id,
      :agent_version,
      :knowledge_base_id,
      :description,
      :knowledge_base_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_knowledge_base
    #   Contains details about the knowledge base that has been associated
    #   with the agent.
    #   @return [Types::AgentKnowledgeBase]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AssociateAgentKnowledgeBaseResponse AWS API Documentation
    #
    class AssociateAgentKnowledgeBaseResponse < Struct.new(
      :agent_knowledge_base)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines tools. The model automatically decides whether to call a tool
    # or to generate text instead. For more information, see [Use a tool to
    # complete an Amazon Bedrock model response][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AutoToolChoice AWS API Documentation
    #
    class AutoToolChoice < Aws::EmptyStructure; end

    # Contains configurations for using Amazon Bedrock Data Automation as
    # the parser for ingesting your data sources.
    #
    # @!attribute [rw] parsing_modality
    #   Specifies whether to enable parsing of multimodal data, including
    #   both text and/or images.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/BedrockDataAutomationConfiguration AWS API Documentation
    #
    class BedrockDataAutomationConfiguration < Struct.new(
      :parsing_modality)
      SENSITIVE = []
      include Aws::Structure
    end

    # The vector configuration details for the Bedrock embeddings model.
    #
    # @!attribute [rw] dimensions
    #   The dimensions details for the vector configuration used on the
    #   Bedrock embeddings model.
    #   @return [Integer]
    #
    # @!attribute [rw] embedding_data_type
    #   The data type for the vectors when using a model to convert text
    #   into vector embeddings. The model must support the specified data
    #   type for vector embeddings. Floating-point (float32) is the default
    #   data type, and is supported by most models for vector embeddings.
    #   See [Supported embeddings models][1] for information on the
    #   available models and their vector data types.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-supported.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/BedrockEmbeddingModelConfiguration AWS API Documentation
    #
    class BedrockEmbeddingModelConfiguration < Struct.new(
      :dimensions,
      :embedding_data_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for a foundation model used to parse documents for a data
    # source.
    #
    # @!attribute [rw] model_arn
    #   The ARN of the foundation model to use for parsing.
    #   @return [String]
    #
    # @!attribute [rw] parsing_prompt
    #   Instructions for interpreting the contents of a document.
    #   @return [Types::ParsingPrompt]
    #
    # @!attribute [rw] parsing_modality
    #   Specifies whether to enable parsing of multimodal data, including
    #   both text and/or images.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/BedrockFoundationModelConfiguration AWS API Documentation
    #
    class BedrockFoundationModelConfiguration < Struct.new(
      :model_arn,
      :parsing_prompt,
      :parsing_modality)
      SENSITIVE = []
      include Aws::Structure
    end

    # Context enrichment configuration is used to provide additional context
    # to the RAG application using Amazon Bedrock foundation models.
    #
    # @!attribute [rw] enrichment_strategy_configuration
    #   The enrichment stategy used to provide additional context. For
    #   example, Neptune GraphRAG uses Amazon Bedrock foundation models to
    #   perform chunk entity extraction.
    #   @return [Types::EnrichmentStrategyConfiguration]
    #
    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the model used to create vector
    #   embeddings for the knowledge base.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/BedrockFoundationModelContextEnrichmentConfiguration AWS API Documentation
    #
    class BedrockFoundationModelContextEnrichmentConfiguration < Struct.new(
      :enrichment_strategy_configuration,
      :model_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about content defined inline in bytes.
    #
    # @!attribute [rw] mime_type
    #   The MIME type of the content. For a list of MIME types, see [Media
    #   Types][1]. The following MIME types are supported:
    #
    #   * text/plain
    #
    #   * text/html
    #
    #   * text/csv
    #
    #   * text/vtt
    #
    #   * message/rfc822
    #
    #   * application/xhtml+xml
    #
    #   * application/pdf
    #
    #   * application/msword
    #
    #   * application/vnd.ms-word.document.macroenabled.12
    #
    #   * application/vnd.ms-word.template.macroenabled.12
    #
    #   * application/vnd.ms-excel
    #
    #   * application/vnd.ms-excel.addin.macroenabled.12
    #
    #   * application/vnd.ms-excel.sheet.macroenabled.12
    #
    #   * application/vnd.ms-excel.template.macroenabled.12
    #
    #   * application/vnd.ms-excel.sheet.binary.macroenabled.12
    #
    #   * application/vnd.ms-spreadsheetml
    #
    #   * application/vnd.openxmlformats-officedocument.spreadsheetml.sheet
    #
    #   * application/vnd.openxmlformats-officedocument.spreadsheetml.template
    #
    #   * application/vnd.openxmlformats-officedocument.wordprocessingml.document
    #
    #   * application/vnd.openxmlformats-officedocument.wordprocessingml.template
    #
    #
    #
    #   [1]: https://www.iana.org/assignments/media-types/media-types.xhtml
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The base64-encoded string of the content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ByteContentDoc AWS API Documentation
    #
    class ByteContentDoc < Struct.new(
      :mime_type,
      :data)
      SENSITIVE = [:data]
      include Aws::Structure
    end

    # Indicates where a cache checkpoint is located. All information before
    # this checkpoint is cached to be accessed on subsequent requests.
    #
    # @!attribute [rw] type
    #   Indicates that the CachePointBlock is of the default type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CachePointBlock AWS API Documentation
    #
    class CachePointBlock < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations to use a prompt in a conversational format.
    # For more information, see [Create a prompt using Prompt
    # management][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-create.html
    #
    # @!attribute [rw] messages
    #   Contains messages in the chat for the prompt.
    #   @return [Array<Types::Message>]
    #
    # @!attribute [rw] system
    #   Contains system prompts to provide context to the model or to
    #   describe how it should behave.
    #   @return [Array<Types::SystemContentBlock>]
    #
    # @!attribute [rw] input_variables
    #   An array of the variables in the prompt template.
    #   @return [Array<Types::PromptInputVariable>]
    #
    # @!attribute [rw] tool_configuration
    #   Configuration information for the tools that the model can use when
    #   generating a response.
    #   @return [Types::ToolConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ChatPromptTemplateConfiguration AWS API Documentation
    #
    class ChatPromptTemplateConfiguration < Struct.new(
      :messages,
      :system,
      :input_variables,
      :tool_configuration)
      SENSITIVE = [:system, :input_variables]
      include Aws::Structure
    end

    # Details about how to chunk the documents in the data source. A *chunk*
    # refers to an excerpt from a data source that is returned when the
    # knowledge base that it belongs to is queried.
    #
    # @!attribute [rw] chunking_strategy
    #   Knowledge base can split your source data into chunks. A *chunk*
    #   refers to an excerpt from a data source that is returned when the
    #   knowledge base that it belongs to is queried. You have the following
    #   options for chunking your data. If you opt for `NONE`, then you may
    #   want to pre-process your files by splitting them up such that each
    #   file corresponds to a chunk.
    #
    #   * `FIXED_SIZE` – Amazon Bedrock splits your source data into chunks
    #     of the approximate size that you set in the
    #     `fixedSizeChunkingConfiguration`.
    #
    #   * `HIERARCHICAL` – Split documents into layers of chunks where the
    #     first layer contains large chunks, and the second layer contains
    #     smaller chunks derived from the first layer.
    #
    #   * `SEMANTIC` – Split documents into chunks based on groups of
    #     similar content derived with natural language processing.
    #
    #   * `NONE` – Amazon Bedrock treats each file as one chunk. If you
    #     choose this option, you may want to pre-process your documents by
    #     splitting them into separate files.
    #   @return [String]
    #
    # @!attribute [rw] fixed_size_chunking_configuration
    #   Configurations for when you choose fixed-size chunking. If you set
    #   the `chunkingStrategy` as `NONE`, exclude this field.
    #   @return [Types::FixedSizeChunkingConfiguration]
    #
    # @!attribute [rw] hierarchical_chunking_configuration
    #   Settings for hierarchical document chunking for a data source.
    #   Hierarchical chunking splits documents into layers of chunks where
    #   the first layer contains large chunks, and the second layer contains
    #   smaller chunks derived from the first layer.
    #   @return [Types::HierarchicalChunkingConfiguration]
    #
    # @!attribute [rw] semantic_chunking_configuration
    #   Settings for semantic document chunking for a data source. Semantic
    #   chunking splits a document into into smaller documents based on
    #   groups of similar content derived from the text with natural
    #   language processing.
    #   @return [Types::SemanticChunkingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ChunkingConfiguration AWS API Documentation
    #
    class ChunkingConfiguration < Struct.new(
      :chunking_strategy,
      :fixed_size_chunking_configuration,
      :hierarchical_chunking_configuration,
      :semantic_chunking_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a collector node in your flow. This node takes an iteration of
    # inputs and consolidates them into an array in the output. For more
    # information, see [Node types in a flow][1] in the Amazon Bedrock User
    # Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-nodes.html
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CollectorFlowNodeConfiguration AWS API Documentation
    #
    class CollectorFlowNodeConfiguration < Aws::EmptyStructure; end

    # Defines a condition node in your flow. You can specify conditions that
    # determine which node comes next in the flow. For more information, see
    # [Node types in a flow][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-nodes.html
    #
    # @!attribute [rw] conditions
    #   An array of conditions. Each member contains the name of a condition
    #   and an expression that defines the condition.
    #   @return [Array<Types::FlowCondition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ConditionFlowNodeConfiguration AWS API Documentation
    #
    class ConditionFlowNodeConfiguration < Struct.new(
      :conditions)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was a conflict performing an operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the Confluence content. For example, configuring
    # specific types of Confluence content.
    #
    # @!attribute [rw] filter_configuration
    #   The configuration of filtering the Confluence content. For example,
    #   configuring regular expression patterns to include or exclude
    #   certain content.
    #   @return [Types::CrawlFilterConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ConfluenceCrawlerConfiguration AWS API Documentation
    #
    class ConfluenceCrawlerConfiguration < Struct.new(
      :filter_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration information to connect to Confluence as your data
    # source.
    #
    # @!attribute [rw] source_configuration
    #   The endpoint information to connect to your Confluence data source.
    #   @return [Types::ConfluenceSourceConfiguration]
    #
    # @!attribute [rw] crawler_configuration
    #   The configuration of the Confluence content. For example,
    #   configuring specific types of Confluence content.
    #   @return [Types::ConfluenceCrawlerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ConfluenceDataSourceConfiguration AWS API Documentation
    #
    class ConfluenceDataSourceConfiguration < Struct.new(
      :source_configuration,
      :crawler_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The endpoint information to connect to your Confluence data source.
    #
    # @!attribute [rw] host_url
    #   The Confluence host URL or instance URL.
    #   @return [String]
    #
    # @!attribute [rw] host_type
    #   The supported host type, whether online/cloud or server/on-premises.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The supported authentication type to authenticate and connect to
    #   your Confluence instance.
    #   @return [String]
    #
    # @!attribute [rw] credentials_secret_arn
    #   The Amazon Resource Name of an Secrets Manager secret that stores
    #   your authentication credentials for your Confluence instance URL.
    #   For more information on the key-value pairs that must be included in
    #   your secret, depending on your authentication type, see [Confluence
    #   connection configuration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/confluence-data-source-connector.html#configuration-confluence-connector
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ConfluenceSourceConfiguration AWS API Documentation
    #
    class ConfluenceSourceConfiguration < Struct.new(
      :host_url,
      :host_type,
      :auth_type,
      :credentials_secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the content for the message you pass to, or receive from a
    # model. For more information, see [Create a prompt using Prompt
    # management][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-create.html
    #
    # @note ContentBlock is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ContentBlock is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ContentBlock corresponding to the set member.
    #
    # @!attribute [rw] text
    #   The text in the message.
    #   @return [String]
    #
    # @!attribute [rw] cache_point
    #   Creates a cache checkpoint within a message.
    #   @return [Types::CachePointBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ContentBlock AWS API Documentation
    #
    class ContentBlock < Struct.new(
      :text,
      :cache_point,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < ContentBlock; end
      class CachePoint < ContentBlock; end
      class Unknown < ContentBlock; end
    end

    # Context enrichment configuration is used to provide additional context
    # to the RAG application.
    #
    # @!attribute [rw] type
    #   The method used for context enrichment. It must be Amazon Bedrock
    #   foundation models.
    #   @return [String]
    #
    # @!attribute [rw] bedrock_foundation_model_configuration
    #   The configuration of the Amazon Bedrock foundation model used for
    #   context enrichment.
    #   @return [Types::BedrockFoundationModelContextEnrichmentConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ContextEnrichmentConfiguration AWS API Documentation
    #
    class ContextEnrichmentConfiguration < Struct.new(
      :type,
      :bedrock_foundation_model_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of filtering the data source content. For example,
    # configuring regular expression patterns to include or exclude certain
    # content.
    #
    # @!attribute [rw] type
    #   The type of filtering that you want to apply to certain objects or
    #   content of the data source. For example, the `PATTERN` type is
    #   regular expression patterns you can apply to filter your content.
    #   @return [String]
    #
    # @!attribute [rw] pattern_object_filter
    #   The configuration of filtering certain objects or content types of
    #   the data source.
    #   @return [Types::PatternObjectFilterConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CrawlFilterConfiguration AWS API Documentation
    #
    class CrawlFilterConfiguration < Struct.new(
      :type,
      :pattern_object_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent for which to create the action
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent for which to create the action group.
    #   @return [String]
    #
    # @!attribute [rw] action_group_name
    #   The name to give the action group.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the action group.
    #   @return [String]
    #
    # @!attribute [rw] parent_action_group_signature
    #   Specify a built-in or computer use action for this action group. If
    #   you specify a value, you must leave the `description`, `apiSchema`,
    #   and `actionGroupExecutor` fields empty for this action group.
    #
    #   * To allow your agent to request the user for additional information
    #     when trying to complete a task, set this field to
    #     `AMAZON.UserInput`.
    #
    #   * To allow your agent to generate, run, and troubleshoot code when
    #     trying to complete a task, set this field to
    #     `AMAZON.CodeInterpreter`.
    #
    #   * To allow your agent to use an Anthropic computer use tool, specify
    #     one of the following values.
    #
    #     Computer use is a new Anthropic Claude model capability (in beta)
    #     available with Anthropic Claude 3.7 Sonnet and Claude 3.5 Sonnet
    #     v2 only. When operating computer use functionality, we recommend
    #     taking additional security precautions, such as executing computer
    #     actions in virtual environments with restricted data access and
    #     limited internet connectivity. For more information, see
    #     [Configure an Amazon Bedrock Agent to complete tasks with computer
    #     use tools][1].
    #
    #     * `ANTHROPIC.Computer` - Gives the agent permission to use the
    #       mouse and keyboard and take screenshots.
    #
    #     * `ANTHROPIC.TextEditor` - Gives the agent permission to view,
    #       create and edit files.
    #
    #     * `ANTHROPIC.Bash` - Gives the agent permission to run commands in
    #       a bash shell.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html
    #   @return [String]
    #
    # @!attribute [rw] parent_action_group_signature_params
    #   The configuration settings for a computer use action.
    #
    #   Computer use is a new Anthropic Claude model capability (in beta)
    #   available with Anthropic Claude 3.7 Sonnet and Claude 3.5 Sonnet v2
    #   only. For more information, see [Configure an Amazon Bedrock Agent
    #   to complete tasks with computer use tools][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] action_group_executor
    #   The Amazon Resource Name (ARN) of the Lambda function containing the
    #   business logic that is carried out upon invoking the action or the
    #   custom control method for handling the information elicited from the
    #   user.
    #   @return [Types::ActionGroupExecutor]
    #
    # @!attribute [rw] api_schema
    #   Contains either details about the S3 object containing the OpenAPI
    #   schema for the action group or the JSON or YAML-formatted payload
    #   defining the schema. For more information, see [Action group OpenAPI
    #   schemas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html
    #   @return [Types::APISchema]
    #
    # @!attribute [rw] action_group_state
    #   Specifies whether the action group is available for the agent to
    #   invoke or not when sending an [InvokeAgent][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html
    #   @return [String]
    #
    # @!attribute [rw] function_schema
    #   Contains details about the function schema for the action group or
    #   the JSON or YAML-formatted payload defining the schema.
    #   @return [Types::FunctionSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateAgentActionGroupRequest AWS API Documentation
    #
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
      :function_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_action_group
    #   Contains details about the action group that was created.
    #   @return [Types::AgentActionGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateAgentActionGroupResponse AWS API Documentation
    #
    class CreateAgentActionGroupResponse < Struct.new(
      :agent_action_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_name
    #   The name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the alias of the agent.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   Contains details about the routing configuration of the alias.
    #   @return [Array<Types::AgentAliasRoutingConfigurationListItem>]
    #
    # @!attribute [rw] tags
    #   Any tags that you want to attach to the alias of the agent.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateAgentAliasRequest AWS API Documentation
    #
    class CreateAgentAliasRequest < Struct.new(
      :agent_id,
      :agent_alias_name,
      :client_token,
      :description,
      :routing_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_alias
    #   Contains details about the alias that was created.
    #   @return [Types::AgentAlias]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateAgentAliasResponse AWS API Documentation
    #
    class CreateAgentAliasResponse < Struct.new(
      :agent_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_name
    #   A name for the agent that you create.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] instruction
    #   Instructions that tell the agent what it should do and how it should
    #   interact with users.
    #   @return [String]
    #
    # @!attribute [rw] foundation_model
    #   The identifier for the model that you want to be used for
    #   orchestration by the agent you create.
    #
    #   The `modelId` to provide depends on the type of model or throughput
    #   that you use:
    #
    #   * If you use a base model, specify the model ID or its ARN. For a
    #     list of model IDs for base models, see [Amazon Bedrock base model
    #     IDs (on-demand throughput)][1] in the Amazon Bedrock User Guide.
    #
    #   * If you use an inference profile, specify the inference profile ID
    #     or its ARN. For a list of inference profile IDs, see [Supported
    #     Regions and models for cross-region inference][2] in the Amazon
    #     Bedrock User Guide.
    #
    #   * If you use a provisioned model, specify the ARN of the Provisioned
    #     Throughput. For more information, see [Run inference using a
    #     Provisioned Throughput][3] in the Amazon Bedrock User Guide.
    #
    #   * If you use a custom model, first purchase Provisioned Throughput
    #     for it. Then specify the ARN of the resulting provisioned model.
    #     For more information, see [Use a custom model in Amazon
    #     Bedrock][4] in the Amazon Bedrock User Guide.
    #
    #   * If you use an [imported model][5], specify the ARN of the imported
    #     model. You can get the model ARN from a successful call to
    #     [CreateModelImportJob][6] or from the Imported models page in the
    #     Amazon Bedrock console.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html
    #   [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html
    #   [4]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html
    #   [5]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html
    #   [6]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the agent.
    #   @return [String]
    #
    # @!attribute [rw] orchestration_type
    #   Specifies the type of orchestration strategy for the agent. This is
    #   set to `DEFAULT` orchestration type, by default.
    #   @return [String]
    #
    # @!attribute [rw] custom_orchestration
    #   Contains details of the custom orchestration configured for the
    #   agent.
    #   @return [Types::CustomOrchestration]
    #
    # @!attribute [rw] idle_session_ttl_in_seconds
    #   The number of seconds for which Amazon Bedrock keeps information
    #   about a user's conversation with the agent.
    #
    #   A user interaction remains active for the amount of time specified.
    #   If no conversation occurs during this time, the session expires and
    #   Amazon Bedrock deletes any data provided before the timeout.
    #   @return [Integer]
    #
    # @!attribute [rw] agent_resource_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role with permissions to
    #   invoke API operations on the agent.
    #   @return [String]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key with which to encrypt
    #   the agent.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Any tags that you want to attach to the agent.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] prompt_override_configuration
    #   Contains configurations to override prompts in different parts of an
    #   agent sequence. For more information, see [Advanced prompts][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html
    #   @return [Types::PromptOverrideConfiguration]
    #
    # @!attribute [rw] guardrail_configuration
    #   The unique Guardrail configuration assigned to the agent when it is
    #   created.
    #   @return [Types::GuardrailConfiguration]
    #
    # @!attribute [rw] memory_configuration
    #   Contains the details of the memory configured for the agent.
    #   @return [Types::MemoryConfiguration]
    #
    # @!attribute [rw] agent_collaboration
    #   The agent's collaboration role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateAgentRequest AWS API Documentation
    #
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
      :agent_collaboration)
      SENSITIVE = [:instruction, :prompt_override_configuration]
      include Aws::Structure
    end

    # @!attribute [rw] agent
    #   Contains details about the agent created.
    #   @return [Types::Agent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateAgentResponse AWS API Documentation
    #
    class CreateAgentResponse < Struct.new(
      :agent)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to which to add the data
    #   source.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_configuration
    #   The connection configuration for the data source.
    #   @return [Types::DataSourceConfiguration]
    #
    # @!attribute [rw] data_deletion_policy
    #   The data deletion policy for the data source.
    #
    #   You can set the data deletion policy to:
    #
    #   * DELETE: Deletes all data from your data source that’s converted
    #     into vector embeddings upon deletion of a knowledge base or data
    #     source resource. Note that the **vector store itself is not
    #     deleted**, only the data. This flag is ignored if an Amazon Web
    #     Services account is deleted.
    #
    #   * RETAIN: Retains all data from your data source that’s converted
    #     into vector embeddings upon deletion of a knowledge base or data
    #     source resource. Note that the **vector store itself is not
    #     deleted** if you delete a knowledge base or data source resource.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   Contains details about the server-side encryption for the data
    #   source.
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] vector_ingestion_configuration
    #   Contains details about how to ingest the documents in the data
    #   source.
    #   @return [Types::VectorIngestionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateDataSourceRequest AWS API Documentation
    #
    class CreateDataSourceRequest < Struct.new(
      :knowledge_base_id,
      :client_token,
      :name,
      :description,
      :data_source_configuration,
      :data_deletion_policy,
      :server_side_encryption_configuration,
      :vector_ingestion_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source
    #   Contains details about the data source.
    #   @return [Types::DataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateDataSourceResponse AWS API Documentation
    #
    class CreateDataSourceResponse < Struct.new(
      :data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for the alias.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   Contains information about the version to which to map the alias.
    #   @return [Array<Types::FlowAliasRoutingConfigurationListItem>]
    #
    # @!attribute [rw] concurrency_configuration
    #   The configuration that specifies how nodes in the flow are executed
    #   in parallel.
    #   @return [Types::FlowAliasConcurrencyConfiguration]
    #
    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow for which to create an alias.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Any tags that you want to attach to the alias of the flow. For more
    #   information, see [Tagging resources in Amazon Bedrock][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateFlowAliasRequest AWS API Documentation
    #
    class CreateFlowAliasRequest < Struct.new(
      :name,
      :description,
      :routing_configuration,
      :concurrency_configuration,
      :flow_identifier,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   Contains information about the version that the alias is mapped to.
    #   @return [Array<Types::FlowAliasRoutingConfigurationListItem>]
    #
    # @!attribute [rw] concurrency_configuration
    #   The configuration that specifies how nodes in the flow are executed
    #   in parallel.
    #   @return [Types::FlowAliasConcurrencyConfiguration]
    #
    # @!attribute [rw] flow_id
    #   The unique identifier of the flow that the alias belongs to.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the alias.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the alias.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the alias was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the alias of the flow was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateFlowAliasResponse AWS API Documentation
    #
    class CreateFlowAliasResponse < Struct.new(
      :name,
      :description,
      :routing_configuration,
      :concurrency_configuration,
      :flow_id,
      :id,
      :arn,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for the flow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the flow.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the service role with permissions
    #   to create and manage a flow. For more information, see [Create a
    #   service role for flows in Amazon Bedrock][1] in the Amazon Bedrock
    #   User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html
    #   @return [String]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key to encrypt the flow.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   A definition of the nodes and connections between nodes in the flow.
    #   @return [Types::FlowDefinition]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Any tags that you want to attach to the flow. For more information,
    #   see [Tagging resources in Amazon Bedrock][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateFlowRequest AWS API Documentation
    #
    class CreateFlowRequest < Struct.new(
      :name,
      :description,
      :execution_role_arn,
      :customer_encryption_key_arn,
      :definition,
      :client_token,
      :tags)
      SENSITIVE = [:definition]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the flow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the flow.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the service role with permissions
    #   to create a flow. For more information, see [Create a service role
    #   for flows in Amazon Bedrock][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html
    #   @return [String]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key that you encrypted the
    #   flow with.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the flow.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the flow. When you submit this request, the status
    #   will be `NotPrepared`. If creation fails, the status becomes
    #   `Failed`.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the flow was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the flow was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of the flow. When you create a flow, the version created
    #   is the `DRAFT` version.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   A definition of the nodes and connections between nodes in the flow.
    #   @return [Types::FlowDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateFlowResponse AWS API Documentation
    #
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
      :definition)
      SENSITIVE = [:definition]
      include Aws::Structure
    end

    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow that you want to create a version
    #   of.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the version of the flow.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateFlowVersionRequest AWS API Documentation
    #
    class CreateFlowVersionRequest < Struct.new(
      :flow_identifier,
      :description,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the version.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the service role with permissions
    #   to create a flow. For more information, see [Create a service role
    #   for flows in Amazon Bedrock][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html
    #   @return [String]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The KMS key that the flow is encrypted with.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the flow.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the flow.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the flow was created.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of the flow that was created. Versions are numbered
    #   incrementally, starting from 1.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   A definition of the nodes and connections in the flow.
    #   @return [Types::FlowDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateFlowVersionResponse AWS API Documentation
    #
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
      :definition)
      SENSITIVE = [:definition]
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role with permissions to
    #   invoke API operations on the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_configuration
    #   Contains details about the embeddings model used for the knowledge
    #   base.
    #   @return [Types::KnowledgeBaseConfiguration]
    #
    # @!attribute [rw] storage_configuration
    #   Contains details about the configuration of the vector database used
    #   for the knowledge base.
    #   @return [Types::StorageConfiguration]
    #
    # @!attribute [rw] tags
    #   Specify the key-value pairs for the tags that you want to attach to
    #   your knowledge base in this object.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateKnowledgeBaseRequest AWS API Documentation
    #
    class CreateKnowledgeBaseRequest < Struct.new(
      :client_token,
      :name,
      :description,
      :role_arn,
      :knowledge_base_configuration,
      :storage_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base
    #   Contains details about the knowledge base.
    #   @return [Types::KnowledgeBase]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateKnowledgeBaseResponse AWS API Documentation
    #
    class CreateKnowledgeBaseResponse < Struct.new(
      :knowledge_base)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for the prompt.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the prompt.
    #   @return [String]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key to encrypt the prompt.
    #   @return [String]
    #
    # @!attribute [rw] default_variant
    #   The name of the default variant for the prompt. This value must
    #   match the `name` field in the relevant [PromptVariant][1] object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptVariant.html
    #   @return [String]
    #
    # @!attribute [rw] variants
    #   A list of objects, each containing details about a variant of the
    #   prompt.
    #   @return [Array<Types::PromptVariant>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Any tags that you want to attach to the prompt. For more
    #   information, see [Tagging resources in Amazon Bedrock][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreatePromptRequest AWS API Documentation
    #
    class CreatePromptRequest < Struct.new(
      :name,
      :description,
      :customer_encryption_key_arn,
      :default_variant,
      :variants,
      :client_token,
      :tags)
      SENSITIVE = [:variants]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key that you encrypted the
    #   prompt with.
    #   @return [String]
    #
    # @!attribute [rw] default_variant
    #   The name of the default variant for your prompt.
    #   @return [String]
    #
    # @!attribute [rw] variants
    #   A list of objects, each containing details about a variant of the
    #   prompt.
    #   @return [Array<Types::PromptVariant>]
    #
    # @!attribute [rw] id
    #   The unique identifier of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the prompt. When you create a prompt, the version
    #   created is the `DRAFT` version.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the prompt was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the prompt was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreatePromptResponse AWS API Documentation
    #
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
      :updated_at)
      SENSITIVE = [:variants]
      include Aws::Structure
    end

    # @!attribute [rw] prompt_identifier
    #   The unique identifier of the prompt that you want to create a
    #   version of.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the version of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Any tags that you want to attach to the version of the prompt. For
    #   more information, see [Tagging resources in Amazon Bedrock][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreatePromptVersionRequest AWS API Documentation
    #
    class CreatePromptVersionRequest < Struct.new(
      :prompt_identifier,
      :description,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the version.
    #   @return [String]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key to encrypt the version
    #   of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] default_variant
    #   The name of the default variant for the prompt. This value must
    #   match the `name` field in the relevant [PromptVariant][1] object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptVariant.html
    #   @return [String]
    #
    # @!attribute [rw] variants
    #   A list of objects, each containing details about a variant of the
    #   prompt.
    #   @return [Array<Types::PromptVariant>]
    #
    # @!attribute [rw] id
    #   The unique identifier of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the version of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the prompt that was created. Versions are numbered
    #   incrementally, starting from 1.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the prompt was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the prompt was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreatePromptVersionResponse AWS API Documentation
    #
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
      :updated_at)
      SENSITIVE = [:variants]
      include Aws::Structure
    end

    # Contains configurations for a query, each of which defines information
    # about example queries to help the query engine generate appropriate
    # SQL queries.
    #
    # @!attribute [rw] natural_language
    #   An example natural language query.
    #   @return [String]
    #
    # @!attribute [rw] sql
    #   The SQL equivalent of the natural language query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CuratedQuery AWS API Documentation
    #
    class CuratedQuery < Struct.new(
      :natural_language,
      :sql)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the content to ingest into a knowledge base
    # connected to a custom data source. Choose a `sourceType` and include
    # the field that corresponds to it.
    #
    # @!attribute [rw] custom_document_identifier
    #   A unique identifier for the document.
    #   @return [Types::CustomDocumentIdentifier]
    #
    # @!attribute [rw] source_type
    #   The source of the data to ingest.
    #   @return [String]
    #
    # @!attribute [rw] s3_location
    #   Contains information about the Amazon S3 location of the file from
    #   which to ingest data.
    #   @return [Types::CustomS3Location]
    #
    # @!attribute [rw] inline_content
    #   Contains information about content defined inline to ingest into a
    #   knowledge base.
    #   @return [Types::InlineContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CustomContent AWS API Documentation
    #
    class CustomContent < Struct.new(
      :custom_document_identifier,
      :source_type,
      :s3_location,
      :inline_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the identifier of the document to ingest
    # into a custom data source.
    #
    # @!attribute [rw] id
    #   The identifier of the document to ingest into a custom data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CustomDocumentIdentifier AWS API Documentation
    #
    class CustomDocumentIdentifier < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of custom orchestration.
    #
    # @!attribute [rw] executor
    #   The structure of the executor invoking the actions in custom
    #   orchestration.
    #   @return [Types::OrchestrationExecutor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CustomOrchestration AWS API Documentation
    #
    class CustomOrchestration < Struct.new(
      :executor)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the Amazon S3 location of the file
    # containing the content to ingest into a knowledge base connected to a
    # custom data source.
    #
    # @!attribute [rw] uri
    #   The S3 URI of the file containing the content to ingest.
    #   @return [String]
    #
    # @!attribute [rw] bucket_owner_account_id
    #   The identifier of the Amazon Web Services account that owns the S3
    #   bucket containing the content to ingest.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CustomS3Location AWS API Documentation
    #
    class CustomS3Location < Struct.new(
      :uri,
      :bucket_owner_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for customizing steps in the data source content ingestion
    # pipeline.
    #
    # You can configure the data source to process documents with a Lambda
    # function after they are parsed and converted into chunks. When you add
    # a post-chunking transformation, the service stores chunked documents
    # in an S3 bucket and invokes a Lambda function to process them.
    #
    # To process chunked documents with a Lambda function, define an S3
    # bucket path for input and output objects, and a transformation that
    # specifies the Lambda function to invoke. You can use the Lambda
    # function to customize how chunks are split, and the metadata for each
    # chunk.
    #
    # @!attribute [rw] intermediate_storage
    #   An S3 bucket path for input and output objects.
    #   @return [Types::IntermediateStorage]
    #
    # @!attribute [rw] transformations
    #   A Lambda function that processes documents.
    #   @return [Array<Types::Transformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CustomTransformationConfiguration AWS API Documentation
    #
    class CustomTransformationConfiguration < Struct.new(
      :intermediate_storage,
      :transformations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a cyclic connection detected in the flow.
    #
    # @!attribute [rw] connection
    #   The name of the connection that causes the cycle in the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CyclicConnectionFlowValidationDetails AWS API Documentation
    #
    class CyclicConnectionFlowValidationDetails < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a data source.
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to which the data source
    #   belongs.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the data source. The following statuses are possible:
    #
    #   * Available – The data source has been created and is ready for
    #     ingestion into the knowledge base.
    #
    #   * Deleting – The data source is being deleted.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_configuration
    #   The connection configuration for the data source.
    #   @return [Types::DataSourceConfiguration]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   Contains details about the configuration of the server-side
    #   encryption.
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] vector_ingestion_configuration
    #   Contains details about how to ingest the documents in the data
    #   source.
    #   @return [Types::VectorIngestionConfiguration]
    #
    # @!attribute [rw] data_deletion_policy
    #   The data deletion policy for the data source.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the data source was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the data source was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reasons
    #   The detailed reasons on the failure to delete a data source.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DataSource AWS API Documentation
    #
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
      :failure_reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connection configuration for the data source.
    #
    # @!attribute [rw] type
    #   The type of data source.
    #   @return [String]
    #
    # @!attribute [rw] s3_configuration
    #   The configuration information to connect to Amazon S3 as your data
    #   source.
    #   @return [Types::S3DataSourceConfiguration]
    #
    # @!attribute [rw] web_configuration
    #   The configuration of web URLs to crawl for your data source. You
    #   should be authorized to crawl the URLs.
    #
    #   <note markdown="1"> Crawling web URLs as your data source is in preview release and is
    #   subject to change.
    #
    #    </note>
    #   @return [Types::WebDataSourceConfiguration]
    #
    # @!attribute [rw] confluence_configuration
    #   The configuration information to connect to Confluence as your data
    #   source.
    #
    #   <note markdown="1"> Confluence data source connector is in preview release and is
    #   subject to change.
    #
    #    </note>
    #   @return [Types::ConfluenceDataSourceConfiguration]
    #
    # @!attribute [rw] salesforce_configuration
    #   The configuration information to connect to Salesforce as your data
    #   source.
    #
    #   <note markdown="1"> Salesforce data source connector is in preview release and is
    #   subject to change.
    #
    #    </note>
    #   @return [Types::SalesforceDataSourceConfiguration]
    #
    # @!attribute [rw] share_point_configuration
    #   The configuration information to connect to SharePoint as your data
    #   source.
    #
    #   <note markdown="1"> SharePoint data source connector is in preview release and is
    #   subject to change.
    #
    #    </note>
    #   @return [Types::SharePointDataSourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DataSourceConfiguration AWS API Documentation
    #
    class DataSourceConfiguration < Struct.new(
      :type,
      :s3_configuration,
      :web_configuration,
      :confluence_configuration,
      :salesforce_configuration,
      :share_point_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a data source.
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to which the data source
    #   belongs.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the data source.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the data source.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time at which the data source was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DataSourceSummary AWS API Documentation
    #
    class DataSourceSummary < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :name,
      :status,
      :description,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent that the action group belongs to.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent that the action group belongs to.
    #   @return [String]
    #
    # @!attribute [rw] action_group_id
    #   The unique identifier of the action group to delete.
    #   @return [String]
    #
    # @!attribute [rw] skip_resource_in_use_check
    #   By default, this value is `false` and deletion is stopped if the
    #   resource is in use. If you set it to `true`, the resource will be
    #   deleted even if the resource is in use.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteAgentActionGroupRequest AWS API Documentation
    #
    class DeleteAgentActionGroupRequest < Struct.new(
      :agent_id,
      :agent_version,
      :action_group_id,
      :skip_resource_in_use_check)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteAgentActionGroupResponse AWS API Documentation
    #
    class DeleteAgentActionGroupResponse < Aws::EmptyStructure; end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent that the alias belongs to.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_id
    #   The unique identifier of the alias to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteAgentAliasRequest AWS API Documentation
    #
    class DeleteAgentAliasRequest < Struct.new(
      :agent_id,
      :agent_alias_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent that the alias belongs to.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_id
    #   The unique identifier of the alias that was deleted.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_status
    #   The status of the alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteAgentAliasResponse AWS API Documentation
    #
    class DeleteAgentAliasResponse < Struct.new(
      :agent_id,
      :agent_alias_id,
      :agent_alias_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent to delete.
    #   @return [String]
    #
    # @!attribute [rw] skip_resource_in_use_check
    #   By default, this value is `false` and deletion is stopped if the
    #   resource is in use. If you set it to `true`, the resource will be
    #   deleted even if the resource is in use.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteAgentRequest AWS API Documentation
    #
    class DeleteAgentRequest < Struct.new(
      :agent_id,
      :skip_resource_in_use_check)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent that was deleted.
    #   @return [String]
    #
    # @!attribute [rw] agent_status
    #   The status of the agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteAgentResponse AWS API Documentation
    #
    class DeleteAgentResponse < Struct.new(
      :agent_id,
      :agent_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent that the version belongs to.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent to delete.
    #   @return [String]
    #
    # @!attribute [rw] skip_resource_in_use_check
    #   By default, this value is `false` and deletion is stopped if the
    #   resource is in use. If you set it to `true`, the resource will be
    #   deleted even if the resource is in use.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteAgentVersionRequest AWS API Documentation
    #
    class DeleteAgentVersionRequest < Struct.new(
      :agent_id,
      :agent_version,
      :skip_resource_in_use_check)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent that the version belongs to.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version that was deleted.
    #   @return [String]
    #
    # @!attribute [rw] agent_status
    #   The status of the agent version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteAgentVersionResponse AWS API Documentation
    #
    class DeleteAgentVersionResponse < Struct.new(
      :agent_id,
      :agent_version,
      :agent_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base from which to delete the
    #   data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteDataSourceRequest AWS API Documentation
    #
    class DeleteDataSourceRequest < Struct.new(
      :knowledge_base_id,
      :data_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to which the data source
    #   that was deleted belonged.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source that was deleted.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteDataSourceResponse AWS API Documentation
    #
    class DeleteDataSourceResponse < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow that the alias belongs to.
    #   @return [String]
    #
    # @!attribute [rw] alias_identifier
    #   The unique identifier of the alias to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteFlowAliasRequest AWS API Documentation
    #
    class DeleteFlowAliasRequest < Struct.new(
      :flow_identifier,
      :alias_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_id
    #   The unique identifier of the flow that the alias belongs to.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteFlowAliasResponse AWS API Documentation
    #
    class DeleteFlowAliasResponse < Struct.new(
      :flow_id,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] skip_resource_in_use_check
    #   By default, this value is `false` and deletion is stopped if the
    #   resource is in use. If you set it to `true`, the resource will be
    #   deleted even if the resource is in use.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteFlowRequest AWS API Documentation
    #
    class DeleteFlowRequest < Struct.new(
      :flow_identifier,
      :skip_resource_in_use_check)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteFlowResponse AWS API Documentation
    #
    class DeleteFlowResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow whose version that you want to
    #   delete
    #   @return [String]
    #
    # @!attribute [rw] flow_version
    #   The version of the flow that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] skip_resource_in_use_check
    #   By default, this value is `false` and deletion is stopped if the
    #   resource is in use. If you set it to `true`, the resource will be
    #   deleted even if the resource is in use.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteFlowVersionRequest AWS API Documentation
    #
    class DeleteFlowVersionRequest < Struct.new(
      :flow_identifier,
      :flow_version,
      :skip_resource_in_use_check)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the flow being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteFlowVersionResponse AWS API Documentation
    #
    class DeleteFlowVersionResponse < Struct.new(
      :id,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base that is connected to the
    #   data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source that contains the
    #   documents.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] document_identifiers
    #   A list of objects, each of which contains information to identify a
    #   document to delete.
    #   @return [Array<Types::DocumentIdentifier>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteKnowledgeBaseDocumentsRequest AWS API Documentation
    #
    class DeleteKnowledgeBaseDocumentsRequest < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :client_token,
      :document_identifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_details
    #   A list of objects, each of which contains information about the
    #   documents that were deleted.
    #   @return [Array<Types::KnowledgeBaseDocumentDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteKnowledgeBaseDocumentsResponse AWS API Documentation
    #
    class DeleteKnowledgeBaseDocumentsResponse < Struct.new(
      :document_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteKnowledgeBaseRequest AWS API Documentation
    #
    class DeleteKnowledgeBaseRequest < Struct.new(
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base that was deleted.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the knowledge base and whether it has been
    #   successfully deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteKnowledgeBaseResponse AWS API Documentation
    #
    class DeleteKnowledgeBaseResponse < Struct.new(
      :knowledge_base_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] prompt_identifier
    #   The unique identifier of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] prompt_version
    #   The version of the prompt to delete. To delete the prompt, omit this
    #   field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeletePromptRequest AWS API Documentation
    #
    class DeletePromptRequest < Struct.new(
      :prompt_identifier,
      :prompt_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the prompt that was deleted.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the prompt that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeletePromptResponse AWS API Documentation
    #
    class DeletePromptResponse < Struct.new(
      :id,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   An agent ID.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The agent's version.
    #   @return [String]
    #
    # @!attribute [rw] collaborator_id
    #   The collaborator's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DisassociateAgentCollaboratorRequest AWS API Documentation
    #
    class DisassociateAgentCollaboratorRequest < Struct.new(
      :agent_id,
      :agent_version,
      :collaborator_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DisassociateAgentCollaboratorResponse AWS API Documentation
    #
    class DisassociateAgentCollaboratorResponse < Aws::EmptyStructure; end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent from which to disassociate the
    #   knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent from which to disassociate the knowledge
    #   base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to disassociate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DisassociateAgentKnowledgeBaseRequest AWS API Documentation
    #
    class DisassociateAgentKnowledgeBaseRequest < Struct.new(
      :agent_id,
      :agent_version,
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DisassociateAgentKnowledgeBaseResponse AWS API Documentation
    #
    class DisassociateAgentKnowledgeBaseResponse < Aws::EmptyStructure; end

    # Contains information about the content of a document. Choose a
    # `dataSourceType` and include the field that corresponds to it.
    #
    # @!attribute [rw] data_source_type
    #   The type of data source that is connected to the knowledge base to
    #   which to ingest this document.
    #   @return [String]
    #
    # @!attribute [rw] custom
    #   Contains information about the content to ingest into a knowledge
    #   base connected to a custom data source.
    #   @return [Types::CustomContent]
    #
    # @!attribute [rw] s3
    #   Contains information about the content to ingest into a knowledge
    #   base connected to an Amazon S3 data source
    #   @return [Types::S3Content]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DocumentContent AWS API Documentation
    #
    class DocumentContent < Struct.new(
      :data_source_type,
      :custom,
      :s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information that identifies the document.
    #
    # @!attribute [rw] data_source_type
    #   The type of data source connected to the knowledge base that
    #   contains the document.
    #   @return [String]
    #
    # @!attribute [rw] s3
    #   Contains information that identifies the document in an S3 data
    #   source.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] custom
    #   Contains information that identifies the document in a custom data
    #   source.
    #   @return [Types::CustomDocumentIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DocumentIdentifier AWS API Documentation
    #
    class DocumentIdentifier < Struct.new(
      :data_source_type,
      :s3,
      :custom)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the metadata associate with the content to
    # ingest into a knowledge base. Choose a `type` and include the field
    # that corresponds to it.
    #
    # @!attribute [rw] type
    #   The type of the source source from which to add metadata.
    #   @return [String]
    #
    # @!attribute [rw] inline_attributes
    #   An array of objects, each of which defines a metadata attribute to
    #   associate with the content to ingest. You define the attributes
    #   inline.
    #   @return [Array<Types::MetadataAttribute>]
    #
    # @!attribute [rw] s3_location
    #   The Amazon S3 location of the file containing metadata to associate
    #   with the content to ingest.
    #   @return [Types::CustomS3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DocumentMetadata AWS API Documentation
    #
    class DocumentMetadata < Struct.new(
      :type,
      :inline_attributes,
      :s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about duplicate condition expressions found in a condition
    # node.
    #
    # @!attribute [rw] node
    #   The name of the node containing the duplicate condition expressions.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The duplicated condition expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DuplicateConditionExpressionFlowValidationDetails AWS API Documentation
    #
    class DuplicateConditionExpressionFlowValidationDetails < Struct.new(
      :node,
      :expression)
      SENSITIVE = [:expression]
      include Aws::Structure
    end

    # Details about duplicate connections found between two nodes in the
    # flow.
    #
    # @!attribute [rw] source
    #   The name of the source node where the duplicate connection starts.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The name of the target node where the duplicate connection ends.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DuplicateConnectionsFlowValidationDetails AWS API Documentation
    #
    class DuplicateConnectionsFlowValidationDetails < Struct.new(
      :source,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration details for the embeddings model.
    #
    # @!attribute [rw] bedrock_embedding_model_configuration
    #   The vector configuration details on the Bedrock embeddings model.
    #   @return [Types::BedrockEmbeddingModelConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/EmbeddingModelConfiguration AWS API Documentation
    #
    class EmbeddingModelConfiguration < Struct.new(
      :bedrock_embedding_model_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The strategy used for performing context enrichment.
    #
    # @!attribute [rw] method
    #   The method used for the context enrichment strategy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/EnrichmentStrategyConfiguration AWS API Documentation
    #
    class EnrichmentStrategyConfiguration < Struct.new(
      :method)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a metadata field to include or exclude during the reranking
    # process.
    #
    # @!attribute [rw] field_name
    #   The name of the metadata field to include or exclude during
    #   reranking.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FieldForReranking AWS API Documentation
    #
    class FieldForReranking < Struct.new(
      :field_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configurations for when you choose fixed-size chunking. If you set the
    # `chunkingStrategy` as `NONE`, exclude this field.
    #
    # @!attribute [rw] max_tokens
    #   The maximum number of tokens to include in a chunk.
    #   @return [Integer]
    #
    # @!attribute [rw] overlap_percentage
    #   The percentage of overlap between adjacent chunks of a data source.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FixedSizeChunkingConfiguration AWS API Documentation
    #
    class FixedSizeChunkingConfiguration < Struct.new(
      :max_tokens,
      :overlap_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines how multiple nodes in a flow can run in parallel. Running
    # nodes concurrently can improve your flow's performance.
    #
    # @!attribute [rw] type
    #   The type of concurrency to use for parallel node execution. Specify
    #   one of the following options:
    #
    #   * `Automatic` - Amazon Bedrock determines which nodes can be
    #     executed in parallel based on the flow definition and its
    #     dependencies.
    #
    #   * `Manual` - You specify which nodes can be executed in parallel.
    #   @return [String]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of nodes that can be executed concurrently in the
    #   flow.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowAliasConcurrencyConfiguration AWS API Documentation
    #
    class FlowAliasConcurrencyConfiguration < Struct.new(
      :type,
      :max_concurrency)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a version that the alias maps to.
    #
    # @!attribute [rw] flow_version
    #   The version that the alias maps to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowAliasRoutingConfigurationListItem AWS API Documentation
    #
    class FlowAliasRoutingConfigurationListItem < Struct.new(
      :flow_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an alias of a flow.
    #
    # This data type is used in the following API operations:
    #
    # * [ListFlowAliases response][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_ListFlowAliases.html#API_agent_ListFlowAliases_ResponseSyntax
    #
    # @!attribute [rw] name
    #   The name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   A list of configurations about the versions that the alias maps to.
    #   Currently, you can only specify one.
    #   @return [Array<Types::FlowAliasRoutingConfigurationListItem>]
    #
    # @!attribute [rw] concurrency_configuration
    #   The configuration that specifies how nodes in the flow are executed
    #   concurrently.
    #   @return [Types::FlowAliasConcurrencyConfiguration]
    #
    # @!attribute [rw] flow_id
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the alias of the flow.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the alias.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the alias was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the alias was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowAliasSummary AWS API Documentation
    #
    class FlowAliasSummary < Struct.new(
      :name,
      :description,
      :routing_configuration,
      :concurrency_configuration,
      :flow_id,
      :id,
      :arn,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a condition in the condition node.
    #
    # @!attribute [rw] name
    #   A name for the condition that you can reference.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   Defines the condition. You must refer to at least one of the inputs
    #   in the condition. For more information, expand the Condition node
    #   section in [Node types in prompt flows][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-how-it-works.html#flows-nodes
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowCondition AWS API Documentation
    #
    class FlowCondition < Struct.new(
      :name,
      :expression)
      SENSITIVE = [:expression]
      include Aws::Structure
    end

    # The configuration of a connection between a condition node and another
    # node.
    #
    # @!attribute [rw] condition
    #   The condition that triggers this connection. For more information
    #   about how to write conditions, see the **Condition** node type in
    #   the [Node types][1] topic in the Amazon Bedrock User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/node-types.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowConditionalConnectionConfiguration AWS API Documentation
    #
    class FlowConditionalConnectionConfiguration < Struct.new(
      :condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a connection between two nodes in the flow.
    #
    # @!attribute [rw] type
    #   Whether the source node that the connection begins from is a
    #   condition node (`Conditional`) or not (`Data`).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the connection that you can reference.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The node that the connection starts at.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The node that the connection ends at.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration of the connection.
    #   @return [Types::FlowConnectionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowConnection AWS API Documentation
    #
    class FlowConnection < Struct.new(
      :type,
      :name,
      :source,
      :target,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the connection.
    #
    # @note FlowConnectionConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note FlowConnectionConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FlowConnectionConfiguration corresponding to the set member.
    #
    # @!attribute [rw] data
    #   The configuration of a connection originating from a node that
    #   isn't a Condition node.
    #   @return [Types::FlowDataConnectionConfiguration]
    #
    # @!attribute [rw] conditional
    #   The configuration of a connection originating from a Condition node.
    #   @return [Types::FlowConditionalConnectionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowConnectionConfiguration AWS API Documentation
    #
    class FlowConnectionConfiguration < Struct.new(
      :data,
      :conditional,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Data < FlowConnectionConfiguration; end
      class Conditional < FlowConnectionConfiguration; end
      class Unknown < FlowConnectionConfiguration; end
    end

    # The configuration of a connection originating from a node that isn't
    # a Condition node.
    #
    # @!attribute [rw] source_output
    #   The name of the output in the source node that the connection begins
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] target_input
    #   The name of the input in the target node that the connection ends
    #   at.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowDataConnectionConfiguration AWS API Documentation
    #
    class FlowDataConnectionConfiguration < Struct.new(
      :source_output,
      :target_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # The definition of the nodes and connections between nodes in the flow.
    #
    # @!attribute [rw] nodes
    #   An array of node definitions in the flow.
    #   @return [Array<Types::FlowNode>]
    #
    # @!attribute [rw] connections
    #   An array of connection definitions in the flow.
    #   @return [Array<Types::FlowConnection>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowDefinition AWS API Documentation
    #
    class FlowDefinition < Struct.new(
      :nodes,
      :connections)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations about a node in the flow.
    #
    # @!attribute [rw] name
    #   A name for the node.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of node. This value must match the name of the key that you
    #   provide in the configuration you provide in the
    #   `FlowNodeConfiguration` field.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Contains configurations for the node.
    #   @return [Types::FlowNodeConfiguration]
    #
    # @!attribute [rw] inputs
    #   An array of objects, each of which contains information about an
    #   input into the node.
    #   @return [Array<Types::FlowNodeInput>]
    #
    # @!attribute [rw] outputs
    #   A list of objects, each of which contains information about an
    #   output from the node.
    #   @return [Array<Types::FlowNodeOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowNode AWS API Documentation
    #
    class FlowNode < Struct.new(
      :name,
      :type,
      :configuration,
      :inputs,
      :outputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for a node in your flow. For more information,
    # see [Node types in a flow][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-nodes.html
    #
    # @note FlowNodeConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note FlowNodeConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FlowNodeConfiguration corresponding to the set member.
    #
    # @!attribute [rw] input
    #   Contains configurations for an input flow node in your flow. The
    #   first node in the flow. `inputs` can't be specified for this node.
    #   @return [Types::InputFlowNodeConfiguration]
    #
    # @!attribute [rw] output
    #   Contains configurations for an output flow node in your flow. The
    #   last node in the flow. `outputs` can't be specified for this node.
    #   @return [Types::OutputFlowNodeConfiguration]
    #
    # @!attribute [rw] knowledge_base
    #   Contains configurations for a knowledge base node in your flow.
    #   Queries a knowledge base and returns the retrieved results or
    #   generated response.
    #   @return [Types::KnowledgeBaseFlowNodeConfiguration]
    #
    # @!attribute [rw] condition
    #   Contains configurations for a condition node in your flow. Defines
    #   conditions that lead to different branches of the flow.
    #   @return [Types::ConditionFlowNodeConfiguration]
    #
    # @!attribute [rw] lex
    #   Contains configurations for a Lex node in your flow. Invokes an
    #   Amazon Lex bot to identify the intent of the input and return the
    #   intent as the output.
    #   @return [Types::LexFlowNodeConfiguration]
    #
    # @!attribute [rw] prompt
    #   Contains configurations for a prompt node in your flow. Runs a
    #   prompt and generates the model response as the output. You can use a
    #   prompt from Prompt management or you can configure one in this node.
    #   @return [Types::PromptFlowNodeConfiguration]
    #
    # @!attribute [rw] lambda_function
    #   Contains configurations for a Lambda function node in your flow.
    #   Invokes an Lambda function.
    #   @return [Types::LambdaFunctionFlowNodeConfiguration]
    #
    # @!attribute [rw] storage
    #   Contains configurations for a storage node in your flow. Stores an
    #   input in an Amazon S3 location.
    #   @return [Types::StorageFlowNodeConfiguration]
    #
    # @!attribute [rw] agent
    #   Contains configurations for an agent node in your flow. Invokes an
    #   alias of an agent and returns the response.
    #   @return [Types::AgentFlowNodeConfiguration]
    #
    # @!attribute [rw] retrieval
    #   Contains configurations for a retrieval node in your flow. Retrieves
    #   data from an Amazon S3 location and returns it as the output.
    #   @return [Types::RetrievalFlowNodeConfiguration]
    #
    # @!attribute [rw] iterator
    #   Contains configurations for an iterator node in your flow. Takes an
    #   input that is an array and iteratively sends each item of the array
    #   as an output to the following node. The size of the array is also
    #   returned in the output.
    #
    #   The output flow node at the end of the flow iteration will return a
    #   response for each member of the array. To return only one response,
    #   you can include a collector node downstream from the iterator node.
    #   @return [Types::IteratorFlowNodeConfiguration]
    #
    # @!attribute [rw] collector
    #   Contains configurations for a collector node in your flow. Collects
    #   an iteration of inputs and consolidates them into an array of
    #   outputs.
    #   @return [Types::CollectorFlowNodeConfiguration]
    #
    # @!attribute [rw] inline_code
    #   Contains configurations for an inline code node in your flow. Inline
    #   code nodes let you write and execute code directly within your flow,
    #   enabling data transformations, custom logic, and integrations
    #   without needing an external Lambda function.
    #   @return [Types::InlineCodeFlowNodeConfiguration]
    #
    # @!attribute [rw] loop
    #   Contains configurations for a DoWhile loop in your flow.
    #   @return [Types::LoopFlowNodeConfiguration]
    #
    # @!attribute [rw] loop_input
    #   Contains input node configurations for a DoWhile loop in your flow.
    #   @return [Types::LoopInputFlowNodeConfiguration]
    #
    # @!attribute [rw] loop_controller
    #   Contains controller node configurations for a DoWhile loop in your
    #   flow.
    #   @return [Types::LoopControllerFlowNodeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowNodeConfiguration AWS API Documentation
    #
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
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

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

    # Contains configurations for an input in an Amazon Bedrock Flows node.
    #
    # @!attribute [rw] name
    #   Specifies a name for the input that you can reference.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Specifies the data type of the input. If the input doesn't match
    #   this type at runtime, a validation error will be thrown.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   An expression that formats the input for the node. For an
    #   explanation of how to create expressions, see [Expressions in Prompt
    #   flows in Amazon Bedrock][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-expressions.html
    #   @return [String]
    #
    # @!attribute [rw] category
    #   Specifies how input data flows between iterations in a DoWhile loop.
    #
    #   * `LoopCondition` - Controls whether the loop continues by
    #     evaluating condition expressions against the input data. Use this
    #     category to define the condition that determines if the loop
    #     should continue.
    #
    #   * `ReturnValueToLoopStart` - Defines data to pass back to the start
    #     of the loop's next iteration. Use this category for variables
    #     that you want to update for each loop iteration.
    #
    #   * `ExitLoop` - Defines the value that's available once the loop
    #     ends. Use this category to expose loop results to nodes outside
    #     the loop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowNodeInput AWS API Documentation
    #
    class FlowNodeInput < Struct.new(
      :name,
      :type,
      :expression,
      :category)
      SENSITIVE = [:expression]
      include Aws::Structure
    end

    # Contains configurations for an output from a node.
    #
    # @!attribute [rw] name
    #   A name for the output that you can reference.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type of the output. If the output doesn't match this type
    #   at runtime, a validation error will be thrown.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowNodeOutput AWS API Documentation
    #
    class FlowNodeOutput < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the definition of a flow.
    #
    # @!attribute [rw] name
    #   The name of the flow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the flow.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the flow.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the flow. The following statuses are possible:
    #
    #   * NotPrepared – The flow has been created or updated, but hasn't
    #     been prepared. If you just created the flow, you can't test it.
    #     If you updated the flow, the `DRAFT` version won't contain the
    #     latest changes for testing. Send a [PrepareFlow][1] request to
    #     package the latest changes into the `DRAFT` version.
    #
    #   * Preparing – The flow is being prepared so that the `DRAFT` version
    #     contains the latest changes for testing.
    #
    #   * Prepared – The flow is prepared and the `DRAFT` version contains
    #     the latest changes for testing.
    #
    #   * Failed – The last API operation that you invoked on the flow
    #     failed. Send a [GetFlow][2] request and check the error message in
    #     the `validations` field.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PrepareFlow.html
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetFlow.html
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the flow was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the flow was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The latest version of the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowSummary AWS API Documentation
    #
    class FlowSummary < Struct.new(
      :name,
      :description,
      :id,
      :arn,
      :status,
      :created_at,
      :updated_at,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about validation of the flow.
    #
    # This data type is used in the following API operations:
    #
    # * [GetFlow response][1]
    #
    # * [GetFlowVersion response][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetFlow.html#API_agent_GetFlow_ResponseSyntax
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetFlowVersion.html#API_agent_GetFlowVersion_ResponseSyntax
    #
    # @!attribute [rw] message
    #   A message describing the validation error.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity of the issue described in the message.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   Specific details about the validation issue encountered in the flow.
    #   @return [Types::FlowValidationDetails]
    #
    # @!attribute [rw] type
    #   The type of validation issue encountered in the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowValidation AWS API Documentation
    #
    class FlowValidation < Struct.new(
      :message,
      :severity,
      :details,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A union type containing various possible validation issues in the
    # flow.
    #
    # @note FlowValidationDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FlowValidationDetails corresponding to the set member.
    #
    # @!attribute [rw] cyclic_connection
    #   Details about a cyclic connection in the flow.
    #   @return [Types::CyclicConnectionFlowValidationDetails]
    #
    # @!attribute [rw] duplicate_connections
    #   Details about duplicate connections between nodes.
    #   @return [Types::DuplicateConnectionsFlowValidationDetails]
    #
    # @!attribute [rw] duplicate_condition_expression
    #   Details about duplicate condition expressions in a node.
    #   @return [Types::DuplicateConditionExpressionFlowValidationDetails]
    #
    # @!attribute [rw] unreachable_node
    #   Details about an unreachable node in the flow.
    #   @return [Types::UnreachableNodeFlowValidationDetails]
    #
    # @!attribute [rw] unknown_connection_source
    #   Details about an unknown source node for a connection.
    #   @return [Types::UnknownConnectionSourceFlowValidationDetails]
    #
    # @!attribute [rw] unknown_connection_source_output
    #   Details about an unknown source output for a connection.
    #   @return [Types::UnknownConnectionSourceOutputFlowValidationDetails]
    #
    # @!attribute [rw] unknown_connection_target
    #   Details about an unknown target node for a connection.
    #   @return [Types::UnknownConnectionTargetFlowValidationDetails]
    #
    # @!attribute [rw] unknown_connection_target_input
    #   Details about an unknown target input for a connection.
    #   @return [Types::UnknownConnectionTargetInputFlowValidationDetails]
    #
    # @!attribute [rw] unknown_connection_condition
    #   Details about an unknown condition for a connection.
    #   @return [Types::UnknownConnectionConditionFlowValidationDetails]
    #
    # @!attribute [rw] malformed_condition_expression
    #   Details about a malformed condition expression in a node.
    #   @return [Types::MalformedConditionExpressionFlowValidationDetails]
    #
    # @!attribute [rw] malformed_node_input_expression
    #   Details about a malformed input expression in a node.
    #   @return [Types::MalformedNodeInputExpressionFlowValidationDetails]
    #
    # @!attribute [rw] mismatched_node_input_type
    #   Details about mismatched input data types in a node.
    #   @return [Types::MismatchedNodeInputTypeFlowValidationDetails]
    #
    # @!attribute [rw] mismatched_node_output_type
    #   Details about mismatched output data types in a node.
    #   @return [Types::MismatchedNodeOutputTypeFlowValidationDetails]
    #
    # @!attribute [rw] incompatible_connection_data_type
    #   Details about incompatible data types in a connection.
    #   @return [Types::IncompatibleConnectionDataTypeFlowValidationDetails]
    #
    # @!attribute [rw] missing_connection_configuration
    #   Details about missing configuration for a connection.
    #   @return [Types::MissingConnectionConfigurationFlowValidationDetails]
    #
    # @!attribute [rw] missing_default_condition
    #   Details about a missing default condition in a conditional node.
    #   @return [Types::MissingDefaultConditionFlowValidationDetails]
    #
    # @!attribute [rw] missing_ending_nodes
    #   Details about missing ending nodes in the flow.
    #   @return [Types::MissingEndingNodesFlowValidationDetails]
    #
    # @!attribute [rw] missing_node_configuration
    #   Details about missing configuration for a node.
    #   @return [Types::MissingNodeConfigurationFlowValidationDetails]
    #
    # @!attribute [rw] missing_node_input
    #   Details about a missing required input in a node.
    #   @return [Types::MissingNodeInputFlowValidationDetails]
    #
    # @!attribute [rw] missing_node_output
    #   Details about a missing required output in a node.
    #   @return [Types::MissingNodeOutputFlowValidationDetails]
    #
    # @!attribute [rw] missing_starting_nodes
    #   Details about missing starting nodes in the flow.
    #   @return [Types::MissingStartingNodesFlowValidationDetails]
    #
    # @!attribute [rw] multiple_node_input_connections
    #   Details about multiple connections to a single node input.
    #   @return [Types::MultipleNodeInputConnectionsFlowValidationDetails]
    #
    # @!attribute [rw] unfulfilled_node_input
    #   Details about an unfulfilled node input with no valid connections.
    #   @return [Types::UnfulfilledNodeInputFlowValidationDetails]
    #
    # @!attribute [rw] unsatisfied_connection_conditions
    #   Details about unsatisfied conditions for a connection.
    #   @return [Types::UnsatisfiedConnectionConditionsFlowValidationDetails]
    #
    # @!attribute [rw] unspecified
    #   Details about an unspecified validation.
    #   @return [Types::UnspecifiedFlowValidationDetails]
    #
    # @!attribute [rw] unknown_node_input
    #   Details about an unknown input for a node.
    #   @return [Types::UnknownNodeInputFlowValidationDetails]
    #
    # @!attribute [rw] unknown_node_output
    #   Details about an unknown output for a node.
    #   @return [Types::UnknownNodeOutputFlowValidationDetails]
    #
    # @!attribute [rw] missing_loop_input_node
    #   Details about a flow that's missing a required `LoopInput` node in
    #   a DoWhile loop.
    #   @return [Types::MissingLoopInputNodeFlowValidationDetails]
    #
    # @!attribute [rw] missing_loop_controller_node
    #   Details about a flow that's missing a required `LoopController`
    #   node in a DoWhile loop.
    #   @return [Types::MissingLoopControllerNodeFlowValidationDetails]
    #
    # @!attribute [rw] multiple_loop_input_nodes
    #   Details about a flow that contains multiple `LoopInput` nodes in a
    #   DoWhile loop.
    #   @return [Types::MultipleLoopInputNodesFlowValidationDetails]
    #
    # @!attribute [rw] multiple_loop_controller_nodes
    #   Details about a flow that contains multiple `LoopController` nodes
    #   in a DoWhile loop.
    #   @return [Types::MultipleLoopControllerNodesFlowValidationDetails]
    #
    # @!attribute [rw] loop_incompatible_node_type
    #   Details about a flow that includes incompatible node types in a
    #   DoWhile loop.
    #   @return [Types::LoopIncompatibleNodeTypeFlowValidationDetails]
    #
    # @!attribute [rw] invalid_loop_boundary
    #   Details about a flow that includes connections that violate loop
    #   boundary rules.
    #   @return [Types::InvalidLoopBoundaryFlowValidationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowValidationDetails AWS API Documentation
    #
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
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

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

    # Contains information about a version of a flow.
    #
    # This data type is used in the following API operations:
    #
    # * [ListFlowVersions response][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_ListFlowVersions.html#API_agent_ListFlowVersions_ResponseSyntax
    #
    # @!attribute [rw] id
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the flow that the version belongs
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the flow.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at the version was created.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowVersionSummary AWS API Documentation
    #
    class FlowVersionSummary < Struct.new(
      :id,
      :arn,
      :status,
      :created_at,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines parameters that the agent needs to invoke from the user to
    # complete the function. Corresponds to an action in an action group.
    #
    # This data type is used in the following API operations:
    #
    # * [CreateAgentActionGroup request][1]
    #
    # * [CreateAgentActionGroup response][2]
    #
    # * [UpdateAgentActionGroup request][3]
    #
    # * [UpdateAgentActionGroup response][4]
    #
    # * [GetAgentActionGroup response][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_CreateAgentActionGroup.html#API_agent_CreateAgentActionGroup_RequestSyntax
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_CreateAgentActionGroup.html#API_agent_CreateAgentActionGroup_ResponseSyntax
    # [3]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_UpdateAgentActionGroup.html#API_agent_UpdateAgentActionGroup_RequestSyntax
    # [4]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_UpdateAgentActionGroup.html#API_agent_UpdateAgentActionGroup_ResponseSyntax
    # [5]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetAgentActionGroup.html#API_agent_GetAgentActionGroup_ResponseSyntax
    #
    # @!attribute [rw] name
    #   A name for the function.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the function and its purpose.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters that the agent elicits from the user to fulfill the
    #   function.
    #   @return [Hash<String,Types::ParameterDetail>]
    #
    # @!attribute [rw] require_confirmation
    #   Contains information if user confirmation is required to invoke the
    #   function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/Function AWS API Documentation
    #
    class Function < Struct.new(
      :name,
      :description,
      :parameters,
      :require_confirmation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines functions that each define parameters that the agent needs to
    # invoke from the user. Each function represents an action in an action
    # group.
    #
    # This data type is used in the following API operations:
    #
    # * [CreateAgentActionGroup request][1]
    #
    # * [CreateAgentActionGroup response][2]
    #
    # * [UpdateAgentActionGroup request][3]
    #
    # * [UpdateAgentActionGroup response][4]
    #
    # * [GetAgentActionGroup response][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_CreateAgentActionGroup.html#API_agent_CreateAgentActionGroup_RequestSyntax
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_CreateAgentActionGroup.html#API_agent_CreateAgentActionGroup_ResponseSyntax
    # [3]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_UpdateAgentActionGroup.html#API_agent_UpdateAgentActionGroup_RequestSyntax
    # [4]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_UpdateAgentActionGroup.html#API_agent_UpdateAgentActionGroup_ResponseSyntax
    # [5]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetAgentActionGroup.html#API_agent_GetAgentActionGroup_ResponseSyntax
    #
    # @note FunctionSchema is a union - when making an API calls you must set exactly one of the members.
    #
    # @note FunctionSchema is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FunctionSchema corresponding to the set member.
    #
    # @!attribute [rw] functions
    #   A list of functions that each define an action in the action group.
    #   @return [Array<Types::Function>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FunctionSchema AWS API Documentation
    #
    class FunctionSchema < Struct.new(
      :functions,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Functions < FunctionSchema; end
      class Unknown < FunctionSchema; end
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent that the action group belongs to.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent that the action group belongs to.
    #   @return [String]
    #
    # @!attribute [rw] action_group_id
    #   The unique identifier of the action group for which to get
    #   information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentActionGroupRequest AWS API Documentation
    #
    class GetAgentActionGroupRequest < Struct.new(
      :agent_id,
      :agent_version,
      :action_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_action_group
    #   Contains details about the action group.
    #   @return [Types::AgentActionGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentActionGroupResponse AWS API Documentation
    #
    class GetAgentActionGroupResponse < Struct.new(
      :agent_action_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent to which the alias to get
    #   information belongs.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_id
    #   The unique identifier of the alias for which to get information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentAliasRequest AWS API Documentation
    #
    class GetAgentAliasRequest < Struct.new(
      :agent_id,
      :agent_alias_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_alias
    #   Contains information about the alias.
    #   @return [Types::AgentAlias]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentAliasResponse AWS API Documentation
    #
    class GetAgentAliasResponse < Struct.new(
      :agent_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The agent's ID.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The agent's version.
    #   @return [String]
    #
    # @!attribute [rw] collaborator_id
    #   The collaborator's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentCollaboratorRequest AWS API Documentation
    #
    class GetAgentCollaboratorRequest < Struct.new(
      :agent_id,
      :agent_version,
      :collaborator_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_collaborator
    #   Details about the collaborator.
    #   @return [Types::AgentCollaborator]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentCollaboratorResponse AWS API Documentation
    #
    class GetAgentCollaboratorResponse < Struct.new(
      :agent_collaborator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent with which the knowledge base is
    #   associated.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent with which the knowledge base is
    #   associated.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base associated with the
    #   agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentKnowledgeBaseRequest AWS API Documentation
    #
    class GetAgentKnowledgeBaseRequest < Struct.new(
      :agent_id,
      :agent_version,
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_knowledge_base
    #   Contains details about a knowledge base attached to an agent.
    #   @return [Types::AgentKnowledgeBase]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentKnowledgeBaseResponse AWS API Documentation
    #
    class GetAgentKnowledgeBaseResponse < Struct.new(
      :agent_knowledge_base)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentRequest AWS API Documentation
    #
    class GetAgentRequest < Struct.new(
      :agent_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent
    #   Contains details about the agent.
    #   @return [Types::Agent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentResponse AWS API Documentation
    #
    class GetAgentResponse < Struct.new(
      :agent)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentVersionRequest AWS API Documentation
    #
    class GetAgentVersionRequest < Struct.new(
      :agent_id,
      :agent_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_version
    #   Contains details about the version of the agent.
    #   @return [Types::AgentVersion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentVersionResponse AWS API Documentation
    #
    class GetAgentVersionResponse < Struct.new(
      :agent_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base for the data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetDataSourceRequest AWS API Documentation
    #
    class GetDataSourceRequest < Struct.new(
      :knowledge_base_id,
      :data_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source
    #   Contains details about the data source.
    #   @return [Types::DataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetDataSourceResponse AWS API Documentation
    #
    class GetDataSourceResponse < Struct.new(
      :data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow that the alias belongs to.
    #   @return [String]
    #
    # @!attribute [rw] alias_identifier
    #   The unique identifier of the alias for which to retrieve
    #   information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetFlowAliasRequest AWS API Documentation
    #
    class GetFlowAliasRequest < Struct.new(
      :flow_identifier,
      :alias_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the flow.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   Contains information about the version that the alias is mapped to.
    #   @return [Array<Types::FlowAliasRoutingConfigurationListItem>]
    #
    # @!attribute [rw] concurrency_configuration
    #   The configuration that specifies how nodes in the flow are executed
    #   in parallel.
    #   @return [Types::FlowAliasConcurrencyConfiguration]
    #
    # @!attribute [rw] flow_id
    #   The unique identifier of the flow that the alias belongs to.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the alias of the flow.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the flow.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the flow was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the alias was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetFlowAliasResponse AWS API Documentation
    #
    class GetFlowAliasResponse < Struct.new(
      :name,
      :description,
      :routing_configuration,
      :concurrency_configuration,
      :flow_id,
      :id,
      :arn,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetFlowRequest AWS API Documentation
    #
    class GetFlowRequest < Struct.new(
      :flow_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the flow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the flow.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the service role with permissions
    #   to create a flow. For more information, see [Create a service row
    #   for flows][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html
    #   @return [String]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key that the flow is
    #   encrypted with.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the flow.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the flow. The following statuses are possible:
    #
    #   * NotPrepared – The flow has been created or updated, but hasn't
    #     been prepared. If you just created the flow, you can't test it.
    #     If you updated the flow, the `DRAFT` version won't contain the
    #     latest changes for testing. Send a [PrepareFlow][1] request to
    #     package the latest changes into the `DRAFT` version.
    #
    #   * Preparing – The flow is being prepared so that the `DRAFT` version
    #     contains the latest changes for testing.
    #
    #   * Prepared – The flow is prepared and the `DRAFT` version contains
    #     the latest changes for testing.
    #
    #   * Failed – The last API operation that you invoked on the flow
    #     failed. Send a [GetFlow][2] request and check the error message in
    #     the `validations` field.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PrepareFlow.html
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetFlow.html
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the flow was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the flow was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of the flow for which information was retrieved.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The definition of the nodes and connections between the nodes in the
    #   flow.
    #   @return [Types::FlowDefinition]
    #
    # @!attribute [rw] validations
    #   A list of validation error messages related to the last failed
    #   operation on the flow.
    #   @return [Array<Types::FlowValidation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetFlowResponse AWS API Documentation
    #
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
      :validations)
      SENSITIVE = [:definition]
      include Aws::Structure
    end

    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow for which to get information.
    #   @return [String]
    #
    # @!attribute [rw] flow_version
    #   The version of the flow for which to get information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetFlowVersionRequest AWS API Documentation
    #
    class GetFlowVersionRequest < Struct.new(
      :flow_identifier,
      :flow_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the flow.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the service role with permissions
    #   to create a flow. For more information, see [Create a service role
    #   for flows in Amazon Bedrock][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html
    #   @return [String]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key that the version of
    #   the flow is encrypted with.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the flow.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the flow.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the flow was created.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of the flow for which information was retrieved.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The definition of the nodes and connections between nodes in the
    #   flow.
    #   @return [Types::FlowDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetFlowVersionResponse AWS API Documentation
    #
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
      :definition)
      SENSITIVE = [:definition]
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base for the data ingestion
    #   job you want to get information on.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source for the data ingestion job
    #   you want to get information on.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_job_id
    #   The unique identifier of the data ingestion job you want to get
    #   information on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetIngestionJobRequest AWS API Documentation
    #
    class GetIngestionJobRequest < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :ingestion_job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingestion_job
    #   Contains details about the data ingestion job.
    #   @return [Types::IngestionJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetIngestionJobResponse AWS API Documentation
    #
    class GetIngestionJobResponse < Struct.new(
      :ingestion_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base that is connected to the
    #   data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source that contains the
    #   documents.
    #   @return [String]
    #
    # @!attribute [rw] document_identifiers
    #   A list of objects, each of which contains information to identify a
    #   document for which to retrieve information.
    #   @return [Array<Types::DocumentIdentifier>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetKnowledgeBaseDocumentsRequest AWS API Documentation
    #
    class GetKnowledgeBaseDocumentsRequest < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :document_identifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_details
    #   A list of objects, each of which contains information about the
    #   documents that were retrieved.
    #   @return [Array<Types::KnowledgeBaseDocumentDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetKnowledgeBaseDocumentsResponse AWS API Documentation
    #
    class GetKnowledgeBaseDocumentsResponse < Struct.new(
      :document_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base you want to get
    #   information on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetKnowledgeBaseRequest AWS API Documentation
    #
    class GetKnowledgeBaseRequest < Struct.new(
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base
    #   Contains details about the knowledge base.
    #   @return [Types::KnowledgeBase]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetKnowledgeBaseResponse AWS API Documentation
    #
    class GetKnowledgeBaseResponse < Struct.new(
      :knowledge_base)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] prompt_identifier
    #   The unique identifier of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] prompt_version
    #   The version of the prompt about which you want to retrieve
    #   information. Omit this field to return information about the working
    #   draft of the prompt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetPromptRequest AWS API Documentation
    #
    class GetPromptRequest < Struct.new(
      :prompt_identifier,
      :prompt_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The descriptino of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key that the prompt is
    #   encrypted with.
    #   @return [String]
    #
    # @!attribute [rw] default_variant
    #   The name of the default variant for the prompt. This value must
    #   match the `name` field in the relevant [PromptVariant][1] object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptVariant.html
    #   @return [String]
    #
    # @!attribute [rw] variants
    #   A list of objects, each containing details about a variant of the
    #   prompt.
    #   @return [Array<Types::PromptVariant>]
    #
    # @!attribute [rw] id
    #   The unique identifier of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the prompt or the prompt version
    #   (if you specified a version in the request).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the prompt was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the prompt was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetPromptResponse AWS API Documentation
    #
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
      :updated_at)
      SENSITIVE = [:variants]
      include Aws::Structure
    end

    # Details about a guardrail associated with a resource.
    #
    # @!attribute [rw] guardrail_identifier
    #   The unique identifier of the guardrail.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_version
    #   The version of the guardrail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GuardrailConfiguration AWS API Documentation
    #
    class GuardrailConfiguration < Struct.new(
      :guardrail_identifier,
      :guardrail_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for hierarchical document chunking for a data source.
    # Hierarchical chunking splits documents into layers of chunks where the
    # first layer contains large chunks, and the second layer contains
    # smaller chunks derived from the first layer.
    #
    # You configure the number of tokens to overlap, or repeat across
    # adjacent chunks. For example, if you set overlap tokens to 60, the
    # last 60 tokens in the first chunk are also included at the beginning
    # of the second chunk. For each layer, you must also configure the
    # maximum number of tokens in a chunk.
    #
    # @!attribute [rw] level_configurations
    #   Token settings for each layer.
    #   @return [Array<Types::HierarchicalChunkingLevelConfiguration>]
    #
    # @!attribute [rw] overlap_tokens
    #   The number of tokens to repeat across chunks in the same layer.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/HierarchicalChunkingConfiguration AWS API Documentation
    #
    class HierarchicalChunkingConfiguration < Struct.new(
      :level_configurations,
      :overlap_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # Token settings for a layer in a hierarchical chunking configuration.
    #
    # @!attribute [rw] max_tokens
    #   The maximum number of tokens that a chunk can contain in this layer.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/HierarchicalChunkingLevelConfiguration AWS API Documentation
    #
    class HierarchicalChunkingLevelConfiguration < Struct.new(
      :max_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about incompatible data types in a connection between nodes.
    #
    # @!attribute [rw] connection
    #   The name of the connection with incompatible data types.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/IncompatibleConnectionDataTypeFlowValidationDetails AWS API Documentation
    #
    class IncompatibleConnectionDataTypeFlowValidationDetails < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains inference parameters to use when the agent invokes a
    # foundation model in the part of the agent sequence defined by the
    # `promptType`. For more information, see [Inference parameters for
    # foundation models][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #
    # @!attribute [rw] temperature
    #   The likelihood of the model selecting higher-probability options
    #   while generating a response. A lower value makes the model more
    #   likely to choose higher-probability options, while a higher value
    #   makes the model more likely to choose lower-probability options.
    #   @return [Float]
    #
    # @!attribute [rw] top_p
    #   While generating a response, the model determines the probability of
    #   the following token at each point of generation. The value that you
    #   set for `Top P` determines the number of most-likely candidates from
    #   which the model chooses the next token in the sequence. For example,
    #   if you set `topP` to 0.8, the model only selects the next token from
    #   the top 80% of the probability distribution of next tokens.
    #   @return [Float]
    #
    # @!attribute [rw] top_k
    #   While generating a response, the model determines the probability of
    #   the following token at each point of generation. The value that you
    #   set for `topK` is the number of most-likely candidates from which
    #   the model chooses the next token in the sequence. For example, if
    #   you set `topK` to 50, the model selects the next token from among
    #   the top 50 most likely choices.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_length
    #   The maximum number of tokens to allow in the generated response.
    #   @return [Integer]
    #
    # @!attribute [rw] stop_sequences
    #   A list of stop sequences. A stop sequence is a sequence of
    #   characters that causes the model to stop generating the response.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/InferenceConfiguration AWS API Documentation
    #
    class InferenceConfiguration < Struct.new(
      :temperature,
      :top_p,
      :top_k,
      :maximum_length,
      :stop_sequences)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to ingest the documents
    #   into.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source connected to the knowledge
    #   base that you're adding documents to.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] documents
    #   A list of objects, each of which contains information about the
    #   documents to add.
    #   @return [Array<Types::KnowledgeBaseDocument>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/IngestKnowledgeBaseDocumentsRequest AWS API Documentation
    #
    class IngestKnowledgeBaseDocumentsRequest < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :client_token,
      :documents)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_details
    #   A list of objects, each of which contains information about the
    #   documents that were ingested.
    #   @return [Array<Types::KnowledgeBaseDocumentDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/IngestKnowledgeBaseDocumentsResponse AWS API Documentation
    #
    class IngestKnowledgeBaseDocumentsResponse < Struct.new(
      :document_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a data ingestion job. Data sources are ingested
    # into a knowledge base so that Large Language Models (LLMs) can use
    # your data.
    #
    # This data type is used in the following API operations:
    #
    # * [StartIngestionJob response][1]
    #
    # * [GetIngestionJob response][2]
    #
    # * [ListIngestionJob response][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_StartIngestionJob.html#API_agent_StartIngestionJob_ResponseSyntax
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetIngestionJob.html#API_agent_GetIngestionJob_ResponseSyntax
    # [3]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_ListIngestionJobs.html#API_agent_ListIngestionJobs_ResponseSyntax
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge for the data ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source for the data ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_job_id
    #   The unique identifier of the data ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the data ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the data ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] statistics
    #   Contains statistics about the data ingestion job.
    #   @return [Types::IngestionJobStatistics]
    #
    # @!attribute [rw] failure_reasons
    #   A list of reasons that the data ingestion job failed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] started_at
    #   The time the data ingestion job started.
    #
    #   If you stop a data ingestion job, the `startedAt` time is the time
    #   the job was started before the job was stopped.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time the data ingestion job was last updated.
    #
    #   If you stop a data ingestion job, the `updatedAt` time is the time
    #   the job was stopped.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/IngestionJob AWS API Documentation
    #
    class IngestionJob < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :ingestion_job_id,
      :description,
      :status,
      :statistics,
      :failure_reasons,
      :started_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The definition of a filter to filter the data.
    #
    # @!attribute [rw] attribute
    #   The name of field or attribute to apply the filter.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The operation to apply to the field or attribute.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of values that belong to the field or attribute.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/IngestionJobFilter AWS API Documentation
    #
    class IngestionJobFilter < Struct.new(
      :attribute,
      :operator,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters of sorting the data.
    #
    # @!attribute [rw] attribute
    #   The name of field or attribute to apply sorting of data.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   The order for sorting the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/IngestionJobSortBy AWS API Documentation
    #
    class IngestionJobSortBy < Struct.new(
      :attribute,
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the statistics for the data ingestion job.
    #
    # @!attribute [rw] number_of_documents_scanned
    #   The total number of source documents that were scanned. Includes
    #   new, updated, and unchanged documents.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_metadata_documents_scanned
    #   The total number of metadata files that were scanned. Includes new,
    #   updated, and unchanged files.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_new_documents_indexed
    #   The number of new source documents in the data source that were
    #   successfully indexed.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_modified_documents_indexed
    #   The number of modified source documents in the data source that were
    #   successfully indexed.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_metadata_documents_modified
    #   The number of metadata files that were updated or deleted.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_documents_deleted
    #   The number of source documents that were deleted.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_documents_failed
    #   The number of source documents that failed to be ingested.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/IngestionJobStatistics AWS API Documentation
    #
    class IngestionJobStatistics < Struct.new(
      :number_of_documents_scanned,
      :number_of_metadata_documents_scanned,
      :number_of_new_documents_indexed,
      :number_of_modified_documents_indexed,
      :number_of_metadata_documents_modified,
      :number_of_documents_deleted,
      :number_of_documents_failed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a data ingestion job.
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base for the data ingestion
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source for the data ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_job_id
    #   The unique identifier of the data ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the data ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the data ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The time the data ingestion job started.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time the data ingestion job was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] statistics
    #   Contains statistics for the data ingestion job.
    #   @return [Types::IngestionJobStatistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/IngestionJobSummary AWS API Documentation
    #
    class IngestionJobSummary < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :ingestion_job_id,
      :description,
      :status,
      :started_at,
      :updated_at,
      :statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for an inline code node in your flow. Inline
    # code nodes let you write and execute code directly within your flow,
    # enabling data transformations, custom logic, and integrations without
    # needing an external Lambda function.
    #
    # @!attribute [rw] code
    #   The code that's executed in your inline code node. The code can
    #   access input data from previous nodes in the flow, perform
    #   operations on that data, and produce output that can be used by
    #   other nodes in your flow.
    #
    #   The code must be valid in the programming `language` that you
    #   specify.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The programming language used by your inline code node.
    #
    #   The code must be valid in the programming `language` that you
    #   specify. Currently, only Python 3 (`Python_3`) is supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/InlineCodeFlowNodeConfiguration AWS API Documentation
    #
    class InlineCodeFlowNodeConfiguration < Struct.new(
      :code,
      :language)
      SENSITIVE = [:code]
      include Aws::Structure
    end

    # Contains information about content defined inline to ingest into a
    # data source. Choose a `type` and include the field that corresponds to
    # it.
    #
    # @!attribute [rw] type
    #   The type of inline content to define.
    #   @return [String]
    #
    # @!attribute [rw] byte_content
    #   Contains information about content defined inline in bytes.
    #   @return [Types::ByteContentDoc]
    #
    # @!attribute [rw] text_content
    #   Contains information about content defined inline in text.
    #   @return [Types::TextContentDoc]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/InlineContent AWS API Documentation
    #
    class InlineContent < Struct.new(
      :type,
      :byte_content,
      :text_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for the input flow node for a flow. This node
    # takes the input from flow invocation and passes it to the next node in
    # the data type that you specify.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/InputFlowNodeConfiguration AWS API Documentation
    #
    class InputFlowNodeConfiguration < Aws::EmptyStructure; end

    # A location for storing content from data sources temporarily as it is
    # processed by custom components in the ingestion pipeline.
    #
    # @!attribute [rw] s3_location
    #   An S3 bucket path.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/IntermediateStorage AWS API Documentation
    #
    class IntermediateStorage < Struct.new(
      :s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occurred. Retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a flow that contains connections that violate loop
    # boundary rules.
    #
    # @!attribute [rw] connection
    #   The name of the connection that violates loop boundary rules.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source node of the connection that violates DoWhile loop
    #   boundary rules.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The target node of the connection that violates DoWhile loop
    #   boundary rules.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/InvalidLoopBoundaryFlowValidationDetails AWS API Documentation
    #
    class InvalidLoopBoundaryFlowValidationDetails < Struct.new(
      :connection,
      :source,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for an iterator node in a flow. Takes an input
    # that is an array and iteratively sends each item of the array as an
    # output to the following node. The size of the array is also returned
    # in the output.
    #
    # The output flow node at the end of the flow iteration will return a
    # response for each member of the array. To return only one response,
    # you can include a collector node downstream from the iterator node.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/IteratorFlowNodeConfiguration AWS API Documentation
    #
    class IteratorFlowNodeConfiguration < Aws::EmptyStructure; end

    # Settings for an Amazon Kendra knowledge base.
    #
    # @!attribute [rw] kendra_index_arn
    #   The ARN of the Amazon Kendra index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/KendraKnowledgeBaseConfiguration AWS API Documentation
    #
    class KendraKnowledgeBaseConfiguration < Struct.new(
      :kendra_index_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a knowledge base.
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role with permissions to
    #   invoke API operations on the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_configuration
    #   Contains details about the embeddings configuration of the knowledge
    #   base.
    #   @return [Types::KnowledgeBaseConfiguration]
    #
    # @!attribute [rw] storage_configuration
    #   Contains details about the storage configuration of the knowledge
    #   base.
    #   @return [Types::StorageConfiguration]
    #
    # @!attribute [rw] status
    #   The status of the knowledge base. The following statuses are
    #   possible:
    #
    #   * CREATING – The knowledge base is being created.
    #
    #   * ACTIVE – The knowledge base is ready to be queried.
    #
    #   * DELETING – The knowledge base is being deleted.
    #
    #   * UPDATING – The knowledge base is being updated.
    #
    #   * FAILED – The knowledge base API operation failed.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time the knowledge base was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time the knowledge base was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reasons
    #   A list of reasons that the API operation on the knowledge base
    #   failed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/KnowledgeBase AWS API Documentation
    #
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
      :failure_reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the vector embeddings configuration of the
    # knowledge base.
    #
    # @!attribute [rw] type
    #   The type of data that the data source is converted into for the
    #   knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] vector_knowledge_base_configuration
    #   Contains details about the model that's used to convert the data
    #   source into vector embeddings.
    #   @return [Types::VectorKnowledgeBaseConfiguration]
    #
    # @!attribute [rw] kendra_knowledge_base_configuration
    #   Settings for an Amazon Kendra knowledge base.
    #   @return [Types::KendraKnowledgeBaseConfiguration]
    #
    # @!attribute [rw] sql_knowledge_base_configuration
    #   Specifies configurations for a knowledge base connected to an SQL
    #   database.
    #   @return [Types::SqlKnowledgeBaseConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/KnowledgeBaseConfiguration AWS API Documentation
    #
    class KnowledgeBaseConfiguration < Struct.new(
      :type,
      :vector_knowledge_base_configuration,
      :kendra_knowledge_base_configuration,
      :sql_knowledge_base_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a document to ingest into a knowledge base
    # and metadata to associate with it.
    #
    # @!attribute [rw] metadata
    #   Contains the metadata to associate with the document.
    #   @return [Types::DocumentMetadata]
    #
    # @!attribute [rw] content
    #   Contains the content of the document.
    #   @return [Types::DocumentContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/KnowledgeBaseDocument AWS API Documentation
    #
    class KnowledgeBaseDocument < Struct.new(
      :metadata,
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details for a document that was ingested or deleted.
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base that the document was ingested
    #   into or deleted from.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source connected to the knowledge base
    #   that the document was ingested into or deleted from.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The ingestion status of the document. The following statuses are
    #   possible:
    #
    #   * STARTED – You submitted the ingestion job containing the document.
    #
    #   * PENDING – The document is waiting to be ingested.
    #
    #   * IN\_PROGRESS – The document is being ingested.
    #
    #   * INDEXED – The document was successfully indexed.
    #
    #   * PARTIALLY\_INDEXED – The document was partially indexed.
    #
    #   * METADATA\_PARTIALLY\_INDEXED – You submitted metadata for an
    #     existing document and it was partially indexed.
    #
    #   * METADATA\_UPDATE\_FAILED – You submitted a metadata update for an
    #     existing document but it failed.
    #
    #   * FAILED – The document failed to be ingested.
    #
    #   * NOT\_FOUND – The document wasn't found.
    #
    #   * IGNORED – The document was ignored during ingestion.
    #
    #   * DELETING – You submitted the delete job containing the document.
    #
    #   * DELETE\_IN\_PROGRESS – The document is being deleted.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   Contains information that identifies the document.
    #   @return [Types::DocumentIdentifier]
    #
    # @!attribute [rw] status_reason
    #   The reason for the status. Appears alongside the status `IGNORED`.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time at which the document was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/KnowledgeBaseDocumentDetail AWS API Documentation
    #
    class KnowledgeBaseDocumentDetail < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :status,
      :identifier,
      :status_reason,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for a knowledge base node in a flow. This node
    # takes a query as the input and returns, as the output, the retrieved
    # responses directly (as an array) or a response generated based on the
    # retrieved responses. For more information, see [Node types in a
    # flow][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-nodes.html
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to query.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The unique identifier of the model or [inference profile][1] to use
    #   to generate a response from the query results. Omit this field if
    #   you want to return the retrieved results as an array.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html
    #   @return [String]
    #
    # @!attribute [rw] guardrail_configuration
    #   Contains configurations for a guardrail to apply during query and
    #   response generation for the knowledge base in this configuration.
    #   @return [Types::GuardrailConfiguration]
    #
    # @!attribute [rw] number_of_results
    #   The number of results to retrieve from the knowledge base.
    #   @return [Integer]
    #
    # @!attribute [rw] prompt_template
    #   A custom prompt template to use with the knowledge base for
    #   generating responses.
    #   @return [Types::KnowledgeBasePromptTemplate]
    #
    # @!attribute [rw] inference_configuration
    #   Contains inference configurations for the prompt.
    #   @return [Types::PromptInferenceConfiguration]
    #
    # @!attribute [rw] reranking_configuration
    #   The configuration for reranking the retrieved results from the
    #   knowledge base to improve relevance.
    #   @return [Types::VectorSearchRerankingConfiguration]
    #
    # @!attribute [rw] orchestration_configuration
    #   The configuration for orchestrating the retrieval and generation
    #   process in the knowledge base node.
    #   @return [Types::KnowledgeBaseOrchestrationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/KnowledgeBaseFlowNodeConfiguration AWS API Documentation
    #
    class KnowledgeBaseFlowNodeConfiguration < Struct.new(
      :knowledge_base_id,
      :model_id,
      :guardrail_configuration,
      :number_of_results,
      :prompt_template,
      :inference_configuration,
      :reranking_configuration,
      :orchestration_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures how the knowledge base orchestrates the retrieval and
    # generation process, allowing for customization of prompts, inference
    # parameters, and performance settings.
    #
    # @!attribute [rw] prompt_template
    #   A custom prompt template for orchestrating the retrieval and
    #   generation process.
    #   @return [Types::KnowledgeBasePromptTemplate]
    #
    # @!attribute [rw] inference_config
    #   Contains inference configurations for the prompt.
    #   @return [Types::PromptInferenceConfiguration]
    #
    # @!attribute [rw] additional_model_request_fields
    #   The additional model-specific request parameters as key-value pairs
    #   to be included in the request to the foundation model.
    #   @return [Hash<String,Hash,Array,String,Numeric,Boolean>]
    #
    # @!attribute [rw] performance_config
    #   The performance configuration options for the knowledge base
    #   retrieval and generation process.
    #   @return [Types::PerformanceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/KnowledgeBaseOrchestrationConfiguration AWS API Documentation
    #
    class KnowledgeBaseOrchestrationConfiguration < Struct.new(
      :prompt_template,
      :inference_config,
      :additional_model_request_fields,
      :performance_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a custom prompt template for orchestrating the retrieval and
    # generation process.
    #
    # @!attribute [rw] text_prompt_template
    #   The text of the prompt template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/KnowledgeBasePromptTemplate AWS API Documentation
    #
    class KnowledgeBasePromptTemplate < Struct.new(
      :text_prompt_template)
      SENSITIVE = [:text_prompt_template]
      include Aws::Structure
    end

    # Contains details about a knowledge base.
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time the knowledge base was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/KnowledgeBaseSummary AWS API Documentation
    #
    class KnowledgeBaseSummary < Struct.new(
      :knowledge_base_id,
      :name,
      :description,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for a Lambda function node in the flow. You
    # specify the Lambda function to invoke and the inputs into the
    # function. The output is the response that is defined in the Lambda
    # function. For more information, see [Node types in a flow][1] in the
    # Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-nodes.html
    #
    # @!attribute [rw] lambda_arn
    #   The Amazon Resource Name (ARN) of the Lambda function to invoke.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/LambdaFunctionFlowNodeConfiguration AWS API Documentation
    #
    class LambdaFunctionFlowNodeConfiguration < Struct.new(
      :lambda_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for a Lex node in the flow. You specify a
    # Amazon Lex bot to invoke. This node takes an utterance as the input
    # and returns as the output the intent identified by the Amazon Lex bot.
    # For more information, see [Node types in a flow][1] in the Amazon
    # Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-nodes.html
    #
    # @!attribute [rw] bot_alias_arn
    #   The Amazon Resource Name (ARN) of the Amazon Lex bot alias to
    #   invoke.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The Region to invoke the Amazon Lex bot in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/LexFlowNodeConfiguration AWS API Documentation
    #
    class LexFlowNodeConfiguration < Struct.new(
      :bot_alias_arn,
      :locale_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgentActionGroupsRequest AWS API Documentation
    #
    class ListAgentActionGroupsRequest < Struct.new(
      :agent_id,
      :agent_version,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_group_summaries
    #   A list of objects, each of which contains information about an
    #   action group.
    #   @return [Array<Types::ActionGroupSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgentActionGroupsResponse AWS API Documentation
    #
    class ListAgentActionGroupsResponse < Struct.new(
      :action_group_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgentAliasesRequest AWS API Documentation
    #
    class ListAgentAliasesRequest < Struct.new(
      :agent_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_alias_summaries
    #   A list of objects, each of which contains information about an alias
    #   of the agent.
    #   @return [Array<Types::AgentAliasSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgentAliasesResponse AWS API Documentation
    #
    class ListAgentAliasesResponse < Struct.new(
      :agent_alias_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The agent's ID.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The agent's version.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of agent collaborators to return in one page of
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgentCollaboratorsRequest AWS API Documentation
    #
    class ListAgentCollaboratorsRequest < Struct.new(
      :agent_id,
      :agent_version,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_collaborator_summaries
    #   A list of collaborator summaries.
    #   @return [Array<Types::AgentCollaboratorSummary>]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgentCollaboratorsResponse AWS API Documentation
    #
    class ListAgentCollaboratorsResponse < Struct.new(
      :agent_collaborator_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent for which to return information
    #   about knowledge bases associated with it.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent for which to return information about
    #   knowledge bases associated with it.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgentKnowledgeBasesRequest AWS API Documentation
    #
    class ListAgentKnowledgeBasesRequest < Struct.new(
      :agent_id,
      :agent_version,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_knowledge_base_summaries
    #   A list of objects, each of which contains information about a
    #   knowledge base associated with the agent.
    #   @return [Array<Types::AgentKnowledgeBaseSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgentKnowledgeBasesResponse AWS API Documentation
    #
    class ListAgentKnowledgeBasesResponse < Struct.new(
      :agent_knowledge_base_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgentVersionsRequest AWS API Documentation
    #
    class ListAgentVersionsRequest < Struct.new(
      :agent_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_version_summaries
    #   A list of objects, each of which contains information about a
    #   version of the agent.
    #   @return [Array<Types::AgentVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgentVersionsResponse AWS API Documentation
    #
    class ListAgentVersionsResponse < Struct.new(
      :agent_version_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgentsRequest AWS API Documentation
    #
    class ListAgentsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_summaries
    #   A list of objects, each of which contains information about an
    #   agent.
    #   @return [Array<Types::AgentSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListAgentsResponse AWS API Documentation
    #
    class ListAgentsResponse < Struct.new(
      :agent_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base for which to return a
    #   list of information.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListDataSourcesRequest AWS API Documentation
    #
    class ListDataSourcesRequest < Struct.new(
      :knowledge_base_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source_summaries
    #   A list of objects, each of which contains information about a data
    #   source.
    #   @return [Array<Types::DataSourceSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListDataSourcesResponse AWS API Documentation
    #
    class ListDataSourcesResponse < Struct.new(
      :data_source_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow for which aliases are being
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListFlowAliasesRequest AWS API Documentation
    #
    class ListFlowAliasesRequest < Struct.new(
      :flow_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_alias_summaries
    #   A list, each member of which contains information about an alias.
    #   @return [Array<Types::FlowAliasSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListFlowAliasesResponse AWS API Documentation
    #
    class ListFlowAliasesResponse < Struct.new(
      :flow_alias_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListFlowVersionsRequest AWS API Documentation
    #
    class ListFlowVersionsRequest < Struct.new(
      :flow_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_version_summaries
    #   A list, each member of which contains information about a flow.
    #   @return [Array<Types::FlowVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListFlowVersionsResponse AWS API Documentation
    #
    class ListFlowVersionsResponse < Struct.new(
      :flow_version_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListFlowsRequest AWS API Documentation
    #
    class ListFlowsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_summaries
    #   A list, each member of which contains information about a flow.
    #   @return [Array<Types::FlowSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListFlowsResponse AWS API Documentation
    #
    class ListFlowsResponse < Struct.new(
      :flow_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base for the list of data
    #   ingestion jobs.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source for the list of data
    #   ingestion jobs.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Contains information about the filters for filtering the data.
    #   @return [Array<Types::IngestionJobFilter>]
    #
    # @!attribute [rw] sort_by
    #   Contains details about how to sort the data.
    #   @return [Types::IngestionJobSortBy]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListIngestionJobsRequest AWS API Documentation
    #
    class ListIngestionJobsRequest < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :filters,
      :sort_by,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingestion_job_summaries
    #   A list of data ingestion jobs with information about each job.
    #   @return [Array<Types::IngestionJobSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListIngestionJobsResponse AWS API Documentation
    #
    class ListIngestionJobsResponse < Struct.new(
      :ingestion_job_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base that is connected to the
    #   data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source that contains the
    #   documents.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListKnowledgeBaseDocumentsRequest AWS API Documentation
    #
    class ListKnowledgeBaseDocumentsRequest < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_details
    #   A list of objects, each of which contains information about the
    #   documents that were retrieved.
    #   @return [Array<Types::KnowledgeBaseDocumentDetail>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListKnowledgeBaseDocumentsResponse AWS API Documentation
    #
    class ListKnowledgeBaseDocumentsResponse < Struct.new(
      :document_details,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListKnowledgeBasesRequest AWS API Documentation
    #
    class ListKnowledgeBasesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_summaries
    #   A list of knowledge bases with information about each knowledge
    #   base.
    #   @return [Array<Types::KnowledgeBaseSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListKnowledgeBasesResponse AWS API Documentation
    #
    class ListKnowledgeBasesResponse < Struct.new(
      :knowledge_base_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] prompt_identifier
    #   The unique identifier of the prompt for whose versions you want to
    #   return information. Omit this field to list information about all
    #   prompts in an account.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListPromptsRequest AWS API Documentation
    #
    class ListPromptsRequest < Struct.new(
      :prompt_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] prompt_summaries
    #   A list, each member of which contains information about a prompt
    #   using Prompt management.
    #   @return [Array<Types::PromptSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListPromptsResponse AWS API Documentation
    #
    class ListPromptsResponse < Struct.new(
      :prompt_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to list
    #   tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The key-value pairs for the tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for the controller node of a DoWhile loop in
    # the flow.
    #
    # @!attribute [rw] continue_condition
    #   Specifies the condition that determines when the flow exits the
    #   DoWhile loop. The loop executes until this condition evaluates to
    #   true.
    #   @return [Types::FlowCondition]
    #
    # @!attribute [rw] max_iterations
    #   Specifies the maximum number of times the DoWhile loop can iterate
    #   before the flow exits the loop.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/LoopControllerFlowNodeConfiguration AWS API Documentation
    #
    class LoopControllerFlowNodeConfiguration < Struct.new(
      :continue_condition,
      :max_iterations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for the nodes of a DoWhile loop in your flow.
    #
    # A DoWhile loop is made up of the following nodes:
    #
    # * `Loop` - The container node that holds the loop's flow definition.
    #   This node encompasses the entire loop structure.
    #
    # * `LoopInput` - The entry point node for the loop. This node receives
    #   inputs from nodes outside the loop and from previous loop
    #   iterations.
    #
    # * Body nodes - The processing nodes that execute within each loop
    #   iteration. These can be nodes for handling data in your flow, such
    #   as a prompt or Lambda function nodes. Some node types aren't
    #   supported inside a DoWhile loop body. For more information, see
    #   [LoopIncompatibleNodeTypeFlowValidationDetails][1].
    #
    # * `LoopController` - The node that evaluates whether the loop should
    #   continue or exit based on a condition.
    #
    # These nodes work together to create a loop that runs at least once and
    # continues until a specified condition is met or a maximum number of
    # iterations is reached.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_LoopIncompatibleNodeTypeFlowValidationDetails.html
    #
    # @!attribute [rw] definition
    #   The definition of the DoWhile loop nodes and connections between
    #   nodes in the flow.
    #   @return [Types::FlowDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/LoopFlowNodeConfiguration AWS API Documentation
    #
    class LoopFlowNodeConfiguration < Struct.new(
      :definition)
      SENSITIVE = [:definition]
      include Aws::Structure
    end

    # Details about a flow that contains an incompatible node in a DoWhile
    # loop.
    #
    # @!attribute [rw] node
    #   The `Loop` container node that contains an incompatible node.
    #   @return [String]
    #
    # @!attribute [rw] incompatible_node_type
    #   The node type of the incompatible node in the DoWhile loop. Some
    #   node types, like a condition node, aren't allowed in a DoWhile
    #   loop.
    #   @return [String]
    #
    # @!attribute [rw] incompatible_node_name
    #   The node that's incompatible in the DoWhile loop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/LoopIncompatibleNodeTypeFlowValidationDetails AWS API Documentation
    #
    class LoopIncompatibleNodeTypeFlowValidationDetails < Struct.new(
      :node,
      :incompatible_node_type,
      :incompatible_node_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for the input node of a DoWhile loop in the
    # flow.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/LoopInputFlowNodeConfiguration AWS API Documentation
    #
    class LoopInputFlowNodeConfiguration < Aws::EmptyStructure; end

    # Details about a malformed condition expression in a node.
    #
    # @!attribute [rw] node
    #   The name of the node containing the malformed condition expression.
    #   @return [String]
    #
    # @!attribute [rw] condition
    #   The name of the malformed condition.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   The error message describing why the condition expression is
    #   malformed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MalformedConditionExpressionFlowValidationDetails AWS API Documentation
    #
    class MalformedConditionExpressionFlowValidationDetails < Struct.new(
      :node,
      :condition,
      :cause)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a malformed input expression in a node.
    #
    # @!attribute [rw] node
    #   The name of the node containing the malformed input expression.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The name of the input with the malformed expression.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   The error message describing why the input expression is malformed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MalformedNodeInputExpressionFlowValidationDetails AWS API Documentation
    #
    class MalformedNodeInputExpressionFlowValidationDetails < Struct.new(
      :node,
      :input,
      :cause)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the memory configuration.
    #
    # @!attribute [rw] enabled_memory_types
    #   The type of memory that is stored.
    #   @return [Array<String>]
    #
    # @!attribute [rw] storage_days
    #   The number of days the agent is configured to retain the
    #   conversational context.
    #   @return [Integer]
    #
    # @!attribute [rw] session_summary_configuration
    #   Contains the configuration for SESSION\_SUMMARY memory type enabled
    #   for the agent.
    #   @return [Types::SessionSummaryConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MemoryConfiguration AWS API Documentation
    #
    class MemoryConfiguration < Struct.new(
      :enabled_memory_types,
      :storage_days,
      :session_summary_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A message input or response from a model. For more information, see
    # [Create a prompt using Prompt management][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-create.html
    #
    # @!attribute [rw] role
    #   The role that the message belongs to.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content in the message.
    #   @return [Array<Types::ContentBlock>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/Message AWS API Documentation
    #
    class Message < Struct.new(
      :role,
      :content)
      SENSITIVE = [:content]
      include Aws::Structure
    end

    # Contains information about a metadata attribute.
    #
    # @!attribute [rw] key
    #   The key of the metadata attribute.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Contains the value of the metadata attribute.
    #   @return [Types::MetadataAttributeValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MetadataAttribute AWS API Documentation
    #
    class MetadataAttribute < Struct.new(
      :key,
      :value)
      SENSITIVE = [:key]
      include Aws::Structure
    end

    # Contains the value of the metadata attribute. Choose a `type` and
    # include the field that corresponds to it.
    #
    # @!attribute [rw] type
    #   The type of the metadata attribute.
    #   @return [String]
    #
    # @!attribute [rw] number_value
    #   The value of the numeric metadata attribute.
    #   @return [Float]
    #
    # @!attribute [rw] boolean_value
    #   The value of the Boolean metadata attribute.
    #   @return [Boolean]
    #
    # @!attribute [rw] string_value
    #   The value of the string metadata attribute.
    #   @return [String]
    #
    # @!attribute [rw] string_list_value
    #   An array of strings that define the value of the metadata attribute.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MetadataAttributeValue AWS API Documentation
    #
    class MetadataAttributeValue < Struct.new(
      :type,
      :number_value,
      :boolean_value,
      :string_value,
      :string_list_value)
      SENSITIVE = [:number_value, :string_value, :string_list_value]
      include Aws::Structure
    end

    # Specifies how metadata fields should be handled during the reranking
    # process.
    #
    # @!attribute [rw] selection_mode
    #   The mode for selecting metadata fields for reranking.
    #   @return [String]
    #
    # @!attribute [rw] selective_mode_configuration
    #   The configuration for selective metadata field inclusion or
    #   exclusion during reranking.
    #   @return [Types::RerankingMetadataSelectiveModeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MetadataConfigurationForReranking AWS API Documentation
    #
    class MetadataConfigurationForReranking < Struct.new(
      :selection_mode,
      :selective_mode_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about mismatched input data types in a node.
    #
    # @!attribute [rw] node
    #   The name of the node containing the input with the mismatched data
    #   type.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The name of the input with the mismatched data type.
    #   @return [String]
    #
    # @!attribute [rw] expected_type
    #   The expected data type for the node input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MismatchedNodeInputTypeFlowValidationDetails AWS API Documentation
    #
    class MismatchedNodeInputTypeFlowValidationDetails < Struct.new(
      :node,
      :input,
      :expected_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about mismatched output data types in a node.
    #
    # @!attribute [rw] node
    #   The name of the node containing the output with the mismatched data
    #   type.
    #   @return [String]
    #
    # @!attribute [rw] output
    #   The name of the output with the mismatched data type.
    #   @return [String]
    #
    # @!attribute [rw] expected_type
    #   The expected data type for the node output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MismatchedNodeOutputTypeFlowValidationDetails AWS API Documentation
    #
    class MismatchedNodeOutputTypeFlowValidationDetails < Struct.new(
      :node,
      :output,
      :expected_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a connection missing required configuration.
    #
    # @!attribute [rw] connection
    #   The name of the connection missing configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MissingConnectionConfigurationFlowValidationDetails AWS API Documentation
    #
    class MissingConnectionConfigurationFlowValidationDetails < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a missing default condition in a conditional node.
    #
    # @!attribute [rw] node
    #   The name of the node missing the default condition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MissingDefaultConditionFlowValidationDetails AWS API Documentation
    #
    class MissingDefaultConditionFlowValidationDetails < Struct.new(
      :node)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about missing ending nodes (such as FlowOutputNode) in the
    # flow.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MissingEndingNodesFlowValidationDetails AWS API Documentation
    #
    class MissingEndingNodesFlowValidationDetails < Aws::EmptyStructure; end

    # Details about a flow that's missing a required `LoopController` node
    # in a DoWhile loop.
    #
    # @!attribute [rw] loop_node
    #   The DoWhile loop in a flow that's missing a required
    #   `LoopController` node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MissingLoopControllerNodeFlowValidationDetails AWS API Documentation
    #
    class MissingLoopControllerNodeFlowValidationDetails < Struct.new(
      :loop_node)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a flow that's missing a required `LoopInput` node in a
    # DoWhile loop.
    #
    # @!attribute [rw] loop_node
    #   The DoWhile loop in a flow that's missing a required `LoopInput`
    #   node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MissingLoopInputNodeFlowValidationDetails AWS API Documentation
    #
    class MissingLoopInputNodeFlowValidationDetails < Struct.new(
      :loop_node)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a node missing a required configuration.
    #
    # @!attribute [rw] node
    #   The name of the node missing a required configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MissingNodeConfigurationFlowValidationDetails AWS API Documentation
    #
    class MissingNodeConfigurationFlowValidationDetails < Struct.new(
      :node)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a missing required input in a node.
    #
    # @!attribute [rw] node
    #   The name of the node missing the required input.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The name of the missing input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MissingNodeInputFlowValidationDetails AWS API Documentation
    #
    class MissingNodeInputFlowValidationDetails < Struct.new(
      :node,
      :input)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a missing required output in a node.
    #
    # @!attribute [rw] node
    #   The name of the node missing the required output.
    #   @return [String]
    #
    # @!attribute [rw] output
    #   The name of the missing output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MissingNodeOutputFlowValidationDetails AWS API Documentation
    #
    class MissingNodeOutputFlowValidationDetails < Struct.new(
      :node,
      :output)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about missing starting nodes (such as FlowInputNode) in the
    # flow.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MissingStartingNodesFlowValidationDetails AWS API Documentation
    #
    class MissingStartingNodesFlowValidationDetails < Aws::EmptyStructure; end

    # Contains details about the storage configuration of the knowledge base
    # in MongoDB Atlas.
    #
    # @!attribute [rw] endpoint
    #   The endpoint URL of your MongoDB Atlas cluster for your knowledge
    #   base.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database name in your MongoDB Atlas cluster for your knowledge
    #   base.
    #   @return [String]
    #
    # @!attribute [rw] collection_name
    #   The collection name of the knowledge base in MongoDB Atlas.
    #   @return [String]
    #
    # @!attribute [rw] vector_index_name
    #   The name of the MongoDB Atlas vector search index.
    #   @return [String]
    #
    # @!attribute [rw] credentials_secret_arn
    #   The Amazon Resource Name (ARN) of the secret that you created in
    #   Secrets Manager that contains user credentials for your MongoDB
    #   Atlas cluster.
    #   @return [String]
    #
    # @!attribute [rw] field_mapping
    #   Contains the names of the fields to which to map information about
    #   the vector store.
    #   @return [Types::MongoDbAtlasFieldMapping]
    #
    # @!attribute [rw] endpoint_service_name
    #   The name of the VPC endpoint service in your account that is
    #   connected to your MongoDB Atlas cluster.
    #   @return [String]
    #
    # @!attribute [rw] text_index_name
    #   The name of the text search index in the MongoDB collection. This is
    #   required for using the hybrid search feature.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MongoDbAtlasConfiguration AWS API Documentation
    #
    class MongoDbAtlasConfiguration < Struct.new(
      :endpoint,
      :database_name,
      :collection_name,
      :vector_index_name,
      :credentials_secret_arn,
      :field_mapping,
      :endpoint_service_name,
      :text_index_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the names of the fields to which to map information about the
    # vector store.
    #
    # @!attribute [rw] vector_field
    #   The name of the field in which Amazon Bedrock stores the vector
    #   embeddings for your data sources.
    #   @return [String]
    #
    # @!attribute [rw] text_field
    #   The name of the field in which Amazon Bedrock stores the raw text
    #   from your data. The text is split according to the chunking strategy
    #   you choose.
    #   @return [String]
    #
    # @!attribute [rw] metadata_field
    #   The name of the field in which Amazon Bedrock stores metadata about
    #   the vector store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MongoDbAtlasFieldMapping AWS API Documentation
    #
    class MongoDbAtlasFieldMapping < Struct.new(
      :vector_field,
      :text_field,
      :metadata_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a flow that contains multiple `LoopController` nodes in
    # a DoWhile loop.
    #
    # @!attribute [rw] loop_node
    #   The DoWhile loop in a flow that contains multiple `LoopController`
    #   nodes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MultipleLoopControllerNodesFlowValidationDetails AWS API Documentation
    #
    class MultipleLoopControllerNodesFlowValidationDetails < Struct.new(
      :loop_node)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a flow that contains multiple `LoopInput` nodes in a
    # DoWhile loop.
    #
    # @!attribute [rw] loop_node
    #   The DoWhile loop in a flow that contains multiple `LoopInput` nodes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MultipleLoopInputNodesFlowValidationDetails AWS API Documentation
    #
    class MultipleLoopInputNodesFlowValidationDetails < Struct.new(
      :loop_node)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about multiple connections to a single node input.
    #
    # @!attribute [rw] node
    #   The name of the node containing the input with multiple connections.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The name of the input with multiple connections to it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MultipleNodeInputConnectionsFlowValidationDetails AWS API Documentation
    #
    class MultipleNodeInputConnectionsFlowValidationDetails < Struct.new(
      :node,
      :input)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the storage configuration of the knowledge base
    # in Amazon Neptune Analytics. For more information, see [Create a
    # vector index in Amazon Neptune Analytics][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-neptune.html
    #
    # @!attribute [rw] graph_arn
    #   The Amazon Resource Name (ARN) of the Neptune Analytics vector
    #   store.
    #   @return [String]
    #
    # @!attribute [rw] field_mapping
    #   Contains the names of the fields to which to map information about
    #   the vector store.
    #   @return [Types::NeptuneAnalyticsFieldMapping]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/NeptuneAnalyticsConfiguration AWS API Documentation
    #
    class NeptuneAnalyticsConfiguration < Struct.new(
      :graph_arn,
      :field_mapping)
      SENSITIVE = [:graph_arn]
      include Aws::Structure
    end

    # Contains the names of the fields to which to map information about the
    # vector store.
    #
    # @!attribute [rw] text_field
    #   The name of the field in which Amazon Bedrock stores the raw text
    #   from your data. The text is split according to the chunking strategy
    #   you choose.
    #   @return [String]
    #
    # @!attribute [rw] metadata_field
    #   The name of the field in which Amazon Bedrock stores metadata about
    #   the vector store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/NeptuneAnalyticsFieldMapping AWS API Documentation
    #
    class NeptuneAnalyticsFieldMapping < Struct.new(
      :text_field,
      :metadata_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the Managed Cluster configuration of the
    # knowledge base in Amazon OpenSearch Service. For more information, see
    # [Create a vector index in OpenSearch Managed Cluster][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-osm.html
    #
    # @!attribute [rw] domain_endpoint
    #   The endpoint URL the OpenSearch domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_arn
    #   The Amazon Resource Name (ARN) of the OpenSearch domain.
    #   @return [String]
    #
    # @!attribute [rw] vector_index_name
    #   The name of the vector store.
    #   @return [String]
    #
    # @!attribute [rw] field_mapping
    #   Contains the names of the fields to which to map information about
    #   the vector store.
    #   @return [Types::OpenSearchManagedClusterFieldMapping]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/OpenSearchManagedClusterConfiguration AWS API Documentation
    #
    class OpenSearchManagedClusterConfiguration < Struct.new(
      :domain_endpoint,
      :domain_arn,
      :vector_index_name,
      :field_mapping)
      SENSITIVE = [:vector_index_name]
      include Aws::Structure
    end

    # Contains the names of the fields to which to map information about the
    # vector store.
    #
    # @!attribute [rw] vector_field
    #   The name of the field in which Amazon Bedrock stores the vector
    #   embeddings for your data sources.
    #   @return [String]
    #
    # @!attribute [rw] text_field
    #   The name of the field in which Amazon Bedrock stores the raw text
    #   from your data. The text is split according to the chunking strategy
    #   you choose.
    #   @return [String]
    #
    # @!attribute [rw] metadata_field
    #   The name of the field in which Amazon Bedrock stores metadata about
    #   the vector store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/OpenSearchManagedClusterFieldMapping AWS API Documentation
    #
    class OpenSearchManagedClusterFieldMapping < Struct.new(
      :vector_field,
      :text_field,
      :metadata_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the storage configuration of the knowledge base
    # in Amazon OpenSearch Service. For more information, see [Create a
    # vector index in Amazon OpenSearch Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-oss.html
    #
    # @!attribute [rw] collection_arn
    #   The Amazon Resource Name (ARN) of the OpenSearch Service vector
    #   store.
    #   @return [String]
    #
    # @!attribute [rw] vector_index_name
    #   The name of the vector store.
    #   @return [String]
    #
    # @!attribute [rw] field_mapping
    #   Contains the names of the fields to which to map information about
    #   the vector store.
    #   @return [Types::OpenSearchServerlessFieldMapping]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/OpenSearchServerlessConfiguration AWS API Documentation
    #
    class OpenSearchServerlessConfiguration < Struct.new(
      :collection_arn,
      :vector_index_name,
      :field_mapping)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the names of the fields to which to map information about the
    # vector store.
    #
    # @!attribute [rw] vector_field
    #   The name of the field in which Amazon Bedrock stores the vector
    #   embeddings for your data sources.
    #   @return [String]
    #
    # @!attribute [rw] text_field
    #   The name of the field in which Amazon Bedrock stores the raw text
    #   from your data. The text is split according to the chunking strategy
    #   you choose.
    #   @return [String]
    #
    # @!attribute [rw] metadata_field
    #   The name of the field in which Amazon Bedrock stores metadata about
    #   the vector store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/OpenSearchServerlessFieldMapping AWS API Documentation
    #
    class OpenSearchServerlessFieldMapping < Struct.new(
      :vector_field,
      :text_field,
      :metadata_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the Lambda function containing the
    # orchestration logic carried out upon invoking the custom
    # orchestration.
    #
    # @note OrchestrationExecutor is a union - when making an API calls you must set exactly one of the members.
    #
    # @note OrchestrationExecutor is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of OrchestrationExecutor corresponding to the set member.
    #
    # @!attribute [rw] lambda
    #   The Amazon Resource Name (ARN) of the Lambda function containing the
    #   business logic that is carried out upon invoking the action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/OrchestrationExecutor AWS API Documentation
    #
    class OrchestrationExecutor < Struct.new(
      :lambda,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Lambda < OrchestrationExecutor; end
      class Unknown < OrchestrationExecutor; end
    end

    # Contains configurations for an output flow node in the flow. You
    # specify the data type expected for the input into the node in the
    # `type` field and how to return the final output in the `expression`
    # field.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/OutputFlowNodeConfiguration AWS API Documentation
    #
    class OutputFlowNodeConfiguration < Aws::EmptyStructure; end

    # Contains details about a parameter in a function for an action group.
    #
    # This data type is used in the following API operations:
    #
    # * [CreateAgentActionGroup request][1]
    #
    # * [CreateAgentActionGroup response][2]
    #
    # * [UpdateAgentActionGroup request][3]
    #
    # * [UpdateAgentActionGroup response][4]
    #
    # * [GetAgentActionGroup response][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_CreateAgentActionGroup.html#API_agent_CreateAgentActionGroup_RequestSyntax
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_CreateAgentActionGroup.html#API_agent_CreateAgentActionGroup_ResponseSyntax
    # [3]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_UpdateAgentActionGroup.html#API_agent_UpdateAgentActionGroup_RequestSyntax
    # [4]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_UpdateAgentActionGroup.html#API_agent_UpdateAgentActionGroup_ResponseSyntax
    # [5]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetAgentActionGroup.html#API_agent_GetAgentActionGroup_ResponseSyntax
    #
    # @!attribute [rw] description
    #   A description of the parameter. Helps the foundation model determine
    #   how to elicit the parameters from the user.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] required
    #   Whether the parameter is required for the agent to complete the
    #   function for action group invocation.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ParameterDetail AWS API Documentation
    #
    class ParameterDetail < Struct.new(
      :description,
      :type,
      :required)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for parsing document contents. If you exclude this field, the
    # default parser converts the contents of each document into text before
    # splitting it into chunks. Specify the parsing strategy to use in the
    # `parsingStrategy` field and include the relevant configuration, or
    # omit it to use the Amazon Bedrock default parser. For more
    # information, see [Parsing options for your data source][1].
    #
    # <note markdown="1"> If you specify `BEDROCK_DATA_AUTOMATION` or `BEDROCK_FOUNDATION_MODEL`
    # and it fails to parse a file, the Amazon Bedrock default parser will
    # be used instead.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/kb-advanced-parsing.html
    #
    # @!attribute [rw] parsing_strategy
    #   The parsing strategy for the data source.
    #   @return [String]
    #
    # @!attribute [rw] bedrock_foundation_model_configuration
    #   If you specify `BEDROCK_FOUNDATION_MODEL` as the parsing strategy
    #   for ingesting your data source, use this object to modify
    #   configurations for using a foundation model to parse documents.
    #   @return [Types::BedrockFoundationModelConfiguration]
    #
    # @!attribute [rw] bedrock_data_automation_configuration
    #   If you specify `BEDROCK_DATA_AUTOMATION` as the parsing strategy for
    #   ingesting your data source, use this object to modify configurations
    #   for using the Amazon Bedrock Data Automation parser.
    #   @return [Types::BedrockDataAutomationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ParsingConfiguration AWS API Documentation
    #
    class ParsingConfiguration < Struct.new(
      :parsing_strategy,
      :bedrock_foundation_model_configuration,
      :bedrock_data_automation_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Instructions for interpreting the contents of a document.
    #
    # @!attribute [rw] parsing_prompt_text
    #   Instructions for interpreting the contents of a document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ParsingPrompt AWS API Documentation
    #
    class ParsingPrompt < Struct.new(
      :parsing_prompt_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specific filters applied to your data source content. You can
    # filter out or include certain content.
    #
    # @!attribute [rw] object_type
    #   The supported object type or content type of the data source.
    #   @return [String]
    #
    # @!attribute [rw] inclusion_filters
    #   A list of one or more inclusion regular expression patterns to
    #   include certain object types that adhere to the pattern. If you
    #   specify an inclusion and exclusion filter/pattern and both match a
    #   document, the exclusion filter takes precedence and the document
    #   isn’t crawled.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclusion_filters
    #   A list of one or more exclusion regular expression patterns to
    #   exclude certain object types that adhere to the pattern. If you
    #   specify an inclusion and exclusion filter/pattern and both match a
    #   document, the exclusion filter takes precedence and the document
    #   isn’t crawled.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PatternObjectFilter AWS API Documentation
    #
    class PatternObjectFilter < Struct.new(
      :object_type,
      :inclusion_filters,
      :exclusion_filters)
      SENSITIVE = [:object_type, :inclusion_filters, :exclusion_filters]
      include Aws::Structure
    end

    # The configuration of filtering certain objects or content types of the
    # data source.
    #
    # @!attribute [rw] filters
    #   The configuration of specific filters applied to your data source
    #   content. You can filter out or include certain content.
    #   @return [Array<Types::PatternObjectFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PatternObjectFilterConfiguration AWS API Documentation
    #
    class PatternObjectFilterConfiguration < Struct.new(
      :filters)
      SENSITIVE = [:filters]
      include Aws::Structure
    end

    # The performance-related configuration options for the knowledge base
    # retrieval and generation process.
    #
    # @!attribute [rw] latency
    #   The latency optimization setting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PerformanceConfiguration AWS API Documentation
    #
    class PerformanceConfiguration < Struct.new(
      :latency)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the storage configuration of the knowledge base
    # in Pinecone. For more information, see [Create a vector index in
    # Pinecone][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-pinecone.html
    #
    # @!attribute [rw] connection_string
    #   The endpoint URL for your index management page.
    #   @return [String]
    #
    # @!attribute [rw] credentials_secret_arn
    #   The Amazon Resource Name (ARN) of the secret that you created in
    #   Secrets Manager that is linked to your Pinecone API key.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace to be used to write new data to your database.
    #   @return [String]
    #
    # @!attribute [rw] field_mapping
    #   Contains the names of the fields to which to map information about
    #   the vector store.
    #   @return [Types::PineconeFieldMapping]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PineconeConfiguration AWS API Documentation
    #
    class PineconeConfiguration < Struct.new(
      :connection_string,
      :credentials_secret_arn,
      :namespace,
      :field_mapping)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the names of the fields to which to map information about the
    # vector store.
    #
    # @!attribute [rw] text_field
    #   The name of the field in which Amazon Bedrock stores the raw text
    #   from your data. The text is split according to the chunking strategy
    #   you choose.
    #   @return [String]
    #
    # @!attribute [rw] metadata_field
    #   The name of the field in which Amazon Bedrock stores metadata about
    #   the vector store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PineconeFieldMapping AWS API Documentation
    #
    class PineconeFieldMapping < Struct.new(
      :text_field,
      :metadata_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent for which to create a `DRAFT`
    #   version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PrepareAgentRequest AWS API Documentation
    #
    class PrepareAgentRequest < Struct.new(
      :agent_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent for which the `DRAFT` version was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] agent_status
    #   The status of the `DRAFT` version and whether it is ready for use.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent.
    #   @return [String]
    #
    # @!attribute [rw] prepared_at
    #   The time at which the `DRAFT` version of the agent was last
    #   prepared.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PrepareAgentResponse AWS API Documentation
    #
    class PrepareAgentResponse < Struct.new(
      :agent_id,
      :agent_status,
      :agent_version,
      :prepared_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PrepareFlowRequest AWS API Documentation
    #
    class PrepareFlowRequest < Struct.new(
      :flow_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the flow. When you submit this request, the status
    #   will be `NotPrepared`. If preparation succeeds, the status becomes
    #   `Prepared`. If it fails, the status becomes `FAILED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PrepareFlowResponse AWS API Documentation
    #
    class PrepareFlowResponse < Struct.new(
      :id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains specifications for an Amazon Bedrock agent with which to use
    # the prompt. For more information, see [Create a prompt using Prompt
    # management][1] and [Automate tasks in your application using
    # conversational agents][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-create.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents.html
    #
    # @!attribute [rw] agent_identifier
    #   The ARN of the agent with which to use the prompt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptAgentResource AWS API Documentation
    #
    class PromptAgentResource < Struct.new(
      :agent_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations to override a prompt template in one part of
    # an agent sequence. For more information, see [Advanced prompts][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html
    #
    # @!attribute [rw] prompt_type
    #   The step in the agent sequence that this prompt configuration
    #   applies to.
    #   @return [String]
    #
    # @!attribute [rw] prompt_creation_mode
    #   Specifies whether to override the default prompt template for this
    #   `promptType`. Set this value to `OVERRIDDEN` to use the prompt that
    #   you provide in the `basePromptTemplate`. If you leave it as
    #   `DEFAULT`, the agent uses a default prompt template.
    #   @return [String]
    #
    # @!attribute [rw] prompt_state
    #   Specifies whether to allow the agent to carry out the step specified
    #   in the `promptType`. If you set this value to `DISABLED`, the agent
    #   skips that step. The default state for each `promptType` is as
    #   follows.
    #
    #   * `PRE_PROCESSING` – `DISABLED`
    #
    #   * `ORCHESTRATION` – `ENABLED`
    #
    #   * `KNOWLEDGE_BASE_RESPONSE_GENERATION` – `ENABLED`
    #
    #   * `POST_PROCESSING` – `DISABLED`
    #   @return [String]
    #
    # @!attribute [rw] base_prompt_template
    #   Defines the prompt template with which to replace the default prompt
    #   template. You can use placeholder variables in the base prompt
    #   template to customize the prompt. For more information, see [Prompt
    #   template placeholder variables][1]. For more information, see
    #   [Configure the prompt templates][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-placeholders.html
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts-configure.html
    #   @return [String]
    #
    # @!attribute [rw] inference_configuration
    #   Contains inference parameters to use when the agent invokes a
    #   foundation model in the part of the agent sequence defined by the
    #   `promptType`. For more information, see [Inference parameters for
    #   foundation models][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #   @return [Types::InferenceConfiguration]
    #
    # @!attribute [rw] parser_mode
    #   Specifies whether to override the default parser Lambda function
    #   when parsing the raw foundation model output in the part of the
    #   agent sequence defined by the `promptType`. If you set the field as
    #   `OVERRIDDEN`, the `overrideLambda` field in the
    #   [PromptOverrideConfiguration][1] must be specified with the ARN of a
    #   Lambda function.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptOverrideConfiguration.html
    #   @return [String]
    #
    # @!attribute [rw] foundation_model
    #   The agent's foundation model.
    #   @return [String]
    #
    # @!attribute [rw] additional_model_request_fields
    #   If the Converse or ConverseStream operations support the model,
    #   `additionalModelRequestFields` contains additional inference
    #   parameters, beyond the base set of inference parameters in the
    #   `inferenceConfiguration` field.
    #
    #   For more information, see *Inference request parameters and response
    #   fields for foundation models* in the Amazon Bedrock user guide.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptConfiguration AWS API Documentation
    #
    class PromptConfiguration < Struct.new(
      :prompt_type,
      :prompt_creation_mode,
      :prompt_state,
      :base_prompt_template,
      :inference_configuration,
      :parser_mode,
      :foundation_model,
      :additional_model_request_fields)
      SENSITIVE = [:base_prompt_template]
      include Aws::Structure
    end

    # Contains configurations for a prompt node in the flow. You can use a
    # prompt from Prompt management or you can define one in this node. If
    # the prompt contains variables, the inputs into this node will fill in
    # the variables. The output from this node is the response generated by
    # the model. For more information, see [Node types in a flow][1] in the
    # Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-nodes.html
    #
    # @!attribute [rw] source_configuration
    #   Specifies whether the prompt is from Prompt management or defined
    #   inline.
    #   @return [Types::PromptFlowNodeSourceConfiguration]
    #
    # @!attribute [rw] guardrail_configuration
    #   Contains configurations for a guardrail to apply to the prompt in
    #   this node and the response generated from it.
    #   @return [Types::GuardrailConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptFlowNodeConfiguration AWS API Documentation
    #
    class PromptFlowNodeConfiguration < Struct.new(
      :source_configuration,
      :guardrail_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for a prompt defined inline in the node.
    #
    # @!attribute [rw] template_type
    #   The type of prompt template.
    #   @return [String]
    #
    # @!attribute [rw] template_configuration
    #   Contains a prompt and variables in the prompt that can be replaced
    #   with values at runtime.
    #   @return [Types::PromptTemplateConfiguration]
    #
    # @!attribute [rw] model_id
    #   The unique identifier of the model or [inference profile][1] to run
    #   inference with.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html
    #   @return [String]
    #
    # @!attribute [rw] inference_configuration
    #   Contains inference configurations for the prompt.
    #   @return [Types::PromptInferenceConfiguration]
    #
    # @!attribute [rw] additional_model_request_fields
    #   Additional fields to be included in the model request for the Prompt
    #   node.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptFlowNodeInlineConfiguration AWS API Documentation
    #
    class PromptFlowNodeInlineConfiguration < Struct.new(
      :template_type,
      :template_configuration,
      :model_id,
      :inference_configuration,
      :additional_model_request_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for a prompt from Prompt management to use in
    # a node.
    #
    # @!attribute [rw] prompt_arn
    #   The Amazon Resource Name (ARN) of the prompt from Prompt management.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptFlowNodeResourceConfiguration AWS API Documentation
    #
    class PromptFlowNodeResourceConfiguration < Struct.new(
      :prompt_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for a prompt and whether it is from Prompt
    # management or defined inline.
    #
    # @note PromptFlowNodeSourceConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note PromptFlowNodeSourceConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PromptFlowNodeSourceConfiguration corresponding to the set member.
    #
    # @!attribute [rw] resource
    #   Contains configurations for a prompt from Prompt management.
    #   @return [Types::PromptFlowNodeResourceConfiguration]
    #
    # @!attribute [rw] inline
    #   Contains configurations for a prompt that is defined inline
    #   @return [Types::PromptFlowNodeInlineConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptFlowNodeSourceConfiguration AWS API Documentation
    #
    class PromptFlowNodeSourceConfiguration < Struct.new(
      :resource,
      :inline,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Resource < PromptFlowNodeSourceConfiguration; end
      class Inline < PromptFlowNodeSourceConfiguration; end
      class Unknown < PromptFlowNodeSourceConfiguration; end
    end

    # Contains specifications for a generative AI resource with which to use
    # the prompt. For more information, see [Create a prompt using Prompt
    # management][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-create.html
    #
    # @note PromptGenAiResource is a union - when making an API calls you must set exactly one of the members.
    #
    # @note PromptGenAiResource is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PromptGenAiResource corresponding to the set member.
    #
    # @!attribute [rw] agent
    #   Specifies an Amazon Bedrock agent with which to use the prompt.
    #   @return [Types::PromptAgentResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptGenAiResource AWS API Documentation
    #
    class PromptGenAiResource < Struct.new(
      :agent,
      :unknown)
      SENSITIVE = [:agent]
      include Aws::Structure
      include Aws::Structure::Union

      class Agent < PromptGenAiResource; end
      class Unknown < PromptGenAiResource; end
    end

    # Contains inference configurations for the prompt.
    #
    # @note PromptInferenceConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note PromptInferenceConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PromptInferenceConfiguration corresponding to the set member.
    #
    # @!attribute [rw] text
    #   Contains inference configurations for a text prompt.
    #   @return [Types::PromptModelInferenceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptInferenceConfiguration AWS API Documentation
    #
    class PromptInferenceConfiguration < Struct.new(
      :text,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < PromptInferenceConfiguration; end
      class Unknown < PromptInferenceConfiguration; end
    end

    # Contains information about a variable in the prompt.
    #
    # @!attribute [rw] name
    #   The name of the variable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptInputVariable AWS API Documentation
    #
    class PromptInputVariable < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a key-value pair that defines a metadata tag and value to
    # attach to a prompt variant. For more information, see [Create a prompt
    # using Prompt management][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-create.html
    #
    # @!attribute [rw] key
    #   The key of a metadata tag for a prompt variant.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a metadata tag for a prompt variant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptMetadataEntry AWS API Documentation
    #
    class PromptMetadataEntry < Struct.new(
      :key,
      :value)
      SENSITIVE = [:key, :value]
      include Aws::Structure
    end

    # Contains inference configurations related to model inference for a
    # prompt. For more information, see [Inference parameters][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/inference-parameters.html
    #
    # @!attribute [rw] temperature
    #   Controls the randomness of the response. Choose a lower value for
    #   more predictable outputs and a higher value for more surprising
    #   outputs.
    #   @return [Float]
    #
    # @!attribute [rw] top_p
    #   The percentage of most-likely candidates that the model considers
    #   for the next token.
    #   @return [Float]
    #
    # @!attribute [rw] max_tokens
    #   The maximum number of tokens to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] stop_sequences
    #   A list of strings that define sequences after which the model will
    #   stop generating.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptModelInferenceConfiguration AWS API Documentation
    #
    class PromptModelInferenceConfiguration < Struct.new(
      :temperature,
      :top_p,
      :max_tokens,
      :stop_sequences)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations to override prompts in different parts of an
    # agent sequence. For more information, see [Advanced prompts][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html
    #
    # @!attribute [rw] prompt_configurations
    #   Contains configurations to override a prompt template in one part of
    #   an agent sequence. For more information, see [Advanced prompts][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html
    #   @return [Array<Types::PromptConfiguration>]
    #
    # @!attribute [rw] override_lambda
    #   The ARN of the Lambda function to use when parsing the raw
    #   foundation model output in parts of the agent sequence. If you
    #   specify this field, at least one of the `promptConfigurations` must
    #   contain a `parserMode` value that is set to `OVERRIDDEN`. For more
    #   information, see [Parser Lambda function in Amazon Bedrock
    #   Agents][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/lambda-parser.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptOverrideConfiguration AWS API Documentation
    #
    class PromptOverrideConfiguration < Struct.new(
      :prompt_configurations,
      :override_lambda)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a prompt in your Prompt management tool.
    #
    # This data type is used in the following API operations:
    #
    # * [ListPrompts response][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_ListPrompts.html#API_agent_ListPrompts_ResponseSyntax
    #
    # @!attribute [rw] name
    #   The name of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the prompt or the prompt version
    #   (if you specified a version in the request).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the prompt that this summary applies to.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the prompt was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the prompt was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptSummary AWS API Documentation
    #
    class PromptSummary < Struct.new(
      :name,
      :description,
      :id,
      :arn,
      :version,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the message for a prompt. For more information, see
    # [Construct and store reusable prompts with Prompt management in Amazon
    # Bedrock][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management.html
    #
    # @note PromptTemplateConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note PromptTemplateConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PromptTemplateConfiguration corresponding to the set member.
    #
    # @!attribute [rw] text
    #   Contains configurations for the text in a message for a prompt.
    #   @return [Types::TextPromptTemplateConfiguration]
    #
    # @!attribute [rw] chat
    #   Contains configurations to use the prompt in a conversational
    #   format.
    #   @return [Types::ChatPromptTemplateConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptTemplateConfiguration AWS API Documentation
    #
    class PromptTemplateConfiguration < Struct.new(
      :text,
      :chat,
      :unknown)
      SENSITIVE = [:text, :chat]
      include Aws::Structure
      include Aws::Structure::Union

      class Text < PromptTemplateConfiguration; end
      class Chat < PromptTemplateConfiguration; end
      class Unknown < PromptTemplateConfiguration; end
    end

    # Contains details about a variant of the prompt.
    #
    # @!attribute [rw] name
    #   The name of the prompt variant.
    #   @return [String]
    #
    # @!attribute [rw] template_type
    #   The type of prompt template to use.
    #   @return [String]
    #
    # @!attribute [rw] template_configuration
    #   Contains configurations for the prompt template.
    #   @return [Types::PromptTemplateConfiguration]
    #
    # @!attribute [rw] model_id
    #   The unique identifier of the model or [inference profile][1] with
    #   which to run inference on the prompt.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html
    #   @return [String]
    #
    # @!attribute [rw] inference_configuration
    #   Contains inference configurations for the prompt variant.
    #   @return [Types::PromptInferenceConfiguration]
    #
    # @!attribute [rw] metadata
    #   An array of objects, each containing a key-value pair that defines a
    #   metadata tag and value to attach to a prompt variant.
    #   @return [Array<Types::PromptMetadataEntry>]
    #
    # @!attribute [rw] additional_model_request_fields
    #   Contains model-specific inference configurations that aren't in the
    #   `inferenceConfiguration` field. To see model-specific inference
    #   parameters, see [Inference request parameters and response fields
    #   for foundation models][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] gen_ai_resource
    #   Specifies a generative AI resource with which to use the prompt.
    #   @return [Types::PromptGenAiResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptVariant AWS API Documentation
    #
    class PromptVariant < Struct.new(
      :name,
      :template_type,
      :template_configuration,
      :model_id,
      :inference_configuration,
      :metadata,
      :additional_model_request_fields,
      :gen_ai_resource)
      SENSITIVE = [:metadata, :gen_ai_resource]
      include Aws::Structure
    end

    # Contains information about a column in the current table for the query
    # engine to consider.
    #
    # @!attribute [rw] name
    #   The name of the column for which the other fields in this object
    #   apply.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the column that helps the query engine understand
    #   the contents of the column.
    #   @return [String]
    #
    # @!attribute [rw] inclusion
    #   Specifies whether to include or exclude the column during query
    #   generation. If you specify `EXCLUDE`, the column will be ignored. If
    #   you specify `INCLUDE`, all other columns in the table will be
    #   ignored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/QueryGenerationColumn AWS API Documentation
    #
    class QueryGenerationColumn < Struct.new(
      :name,
      :description,
      :inclusion)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for query generation. For more information,
    # see [Build a knowledge base by connecting to a structured data
    # source][1] in the Amazon Bedrock User Guide..
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-build-structured.html
    #
    # @!attribute [rw] execution_timeout_seconds
    #   The time after which query generation will time out.
    #   @return [Integer]
    #
    # @!attribute [rw] generation_context
    #   Specifies configurations for context to use during query generation.
    #   @return [Types::QueryGenerationContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/QueryGenerationConfiguration AWS API Documentation
    #
    class QueryGenerationConfiguration < Struct.new(
      :execution_timeout_seconds,
      :generation_context)
      SENSITIVE = [:generation_context]
      include Aws::Structure
    end

    # &gt;Contains configurations for context to use during query
    # generation.
    #
    # @!attribute [rw] tables
    #   An array of objects, each of which defines information about a table
    #   in the database.
    #   @return [Array<Types::QueryGenerationTable>]
    #
    # @!attribute [rw] curated_queries
    #   An array of objects, each of which defines information about example
    #   queries to help the query engine generate appropriate SQL queries.
    #   @return [Array<Types::CuratedQuery>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/QueryGenerationContext AWS API Documentation
    #
    class QueryGenerationContext < Struct.new(
      :tables,
      :curated_queries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a table for the query engine to consider.
    #
    # @!attribute [rw] name
    #   The name of the table for which the other fields in this object
    #   apply.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the table that helps the query engine understand
    #   the contents of the table.
    #   @return [String]
    #
    # @!attribute [rw] inclusion
    #   Specifies whether to include or exclude the table during query
    #   generation. If you specify `EXCLUDE`, the table will be ignored. If
    #   you specify `INCLUDE`, all other tables will be ignored.
    #   @return [String]
    #
    # @!attribute [rw] columns
    #   An array of objects, each of which defines information about a
    #   column in the table.
    #   @return [Array<Types::QueryGenerationColumn>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/QueryGenerationTable AWS API Documentation
    #
    class QueryGenerationTable < Struct.new(
      :name,
      :description,
      :inclusion,
      :columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the storage configuration of the knowledge base
    # in Amazon RDS. For more information, see [Create a vector index in
    # Amazon RDS][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-rds.html
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the vector store.
    #   @return [String]
    #
    # @!attribute [rw] credentials_secret_arn
    #   The Amazon Resource Name (ARN) of the secret that you created in
    #   Secrets Manager that is linked to your Amazon RDS database.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of your Amazon RDS database.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table in the database.
    #   @return [String]
    #
    # @!attribute [rw] field_mapping
    #   Contains the names of the fields to which to map information about
    #   the vector store.
    #   @return [Types::RdsFieldMapping]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/RdsConfiguration AWS API Documentation
    #
    class RdsConfiguration < Struct.new(
      :resource_arn,
      :credentials_secret_arn,
      :database_name,
      :table_name,
      :field_mapping)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the names of the fields to which to map information about the
    # vector store.
    #
    # @!attribute [rw] primary_key_field
    #   The name of the field in which Amazon Bedrock stores the ID for each
    #   entry.
    #   @return [String]
    #
    # @!attribute [rw] vector_field
    #   The name of the field in which Amazon Bedrock stores the vector
    #   embeddings for your data sources.
    #   @return [String]
    #
    # @!attribute [rw] text_field
    #   The name of the field in which Amazon Bedrock stores the raw text
    #   from your data. The text is split according to the chunking strategy
    #   you choose.
    #   @return [String]
    #
    # @!attribute [rw] metadata_field
    #   The name of the field in which Amazon Bedrock stores metadata about
    #   the vector store.
    #   @return [String]
    #
    # @!attribute [rw] custom_metadata_field
    #   Provide a name for the universal metadata field where Amazon Bedrock
    #   will store any custom metadata from your data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/RdsFieldMapping AWS API Documentation
    #
    class RdsFieldMapping < Struct.new(
      :primary_key_field,
      :vector_field,
      :text_field,
      :metadata_field,
      :custom_metadata_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the storage configuration of the knowledge base
    # in Redis Enterprise Cloud. For more information, see [Create a vector
    # index in Redis Enterprise Cloud][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-oss.html
    #
    # @!attribute [rw] endpoint
    #   The endpoint URL of the Redis Enterprise Cloud database.
    #   @return [String]
    #
    # @!attribute [rw] vector_index_name
    #   The name of the vector index.
    #   @return [String]
    #
    # @!attribute [rw] credentials_secret_arn
    #   The Amazon Resource Name (ARN) of the secret that you created in
    #   Secrets Manager that is linked to your Redis Enterprise Cloud
    #   database.
    #   @return [String]
    #
    # @!attribute [rw] field_mapping
    #   Contains the names of the fields to which to map information about
    #   the vector store.
    #   @return [Types::RedisEnterpriseCloudFieldMapping]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/RedisEnterpriseCloudConfiguration AWS API Documentation
    #
    class RedisEnterpriseCloudConfiguration < Struct.new(
      :endpoint,
      :vector_index_name,
      :credentials_secret_arn,
      :field_mapping)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the names of the fields to which to map information about the
    # vector store.
    #
    # @!attribute [rw] vector_field
    #   The name of the field in which Amazon Bedrock stores the vector
    #   embeddings for your data sources.
    #   @return [String]
    #
    # @!attribute [rw] text_field
    #   The name of the field in which Amazon Bedrock stores the raw text
    #   from your data. The text is split according to the chunking strategy
    #   you choose.
    #   @return [String]
    #
    # @!attribute [rw] metadata_field
    #   The name of the field in which Amazon Bedrock stores metadata about
    #   the vector store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/RedisEnterpriseCloudFieldMapping AWS API Documentation
    #
    class RedisEnterpriseCloudFieldMapping < Struct.new(
      :vector_field,
      :text_field,
      :metadata_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for an Amazon Redshift database. For more
    # information, see [Build a knowledge base by connecting to a structured
    # data source][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-build-structured.html
    #
    # @!attribute [rw] storage_configurations
    #   Specifies configurations for Amazon Redshift database storage.
    #   @return [Array<Types::RedshiftQueryEngineStorageConfiguration>]
    #
    # @!attribute [rw] query_engine_configuration
    #   Specifies configurations for an Amazon Redshift query engine.
    #   @return [Types::RedshiftQueryEngineConfiguration]
    #
    # @!attribute [rw] query_generation_configuration
    #   Specifies configurations for generating queries.
    #   @return [Types::QueryGenerationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/RedshiftConfiguration AWS API Documentation
    #
    class RedshiftConfiguration < Struct.new(
      :storage_configurations,
      :query_engine_configuration,
      :query_generation_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for authentication to an Amazon Redshift
    # provisioned data warehouse. Specify the type of authentication to use
    # in the `type` field and include the corresponding field. If you
    # specify IAM authentication, you don't need to include another field.
    #
    # @!attribute [rw] type
    #   The type of authentication to use.
    #   @return [String]
    #
    # @!attribute [rw] database_user
    #   The database username for authentication to an Amazon Redshift
    #   provisioned data warehouse.
    #   @return [String]
    #
    # @!attribute [rw] username_password_secret_arn
    #   The ARN of an Secrets Manager secret for authentication.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/RedshiftProvisionedAuthConfiguration AWS API Documentation
    #
    class RedshiftProvisionedAuthConfiguration < Struct.new(
      :type,
      :database_user,
      :username_password_secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for a provisioned Amazon Redshift query
    # engine.
    #
    # @!attribute [rw] cluster_identifier
    #   The ID of the Amazon Redshift cluster.
    #   @return [String]
    #
    # @!attribute [rw] auth_configuration
    #   Specifies configurations for authentication to Amazon Redshift.
    #   @return [Types::RedshiftProvisionedAuthConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/RedshiftProvisionedConfiguration AWS API Documentation
    #
    class RedshiftProvisionedConfiguration < Struct.new(
      :cluster_identifier,
      :auth_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for storage in Glue Data Catalog.
    #
    # @!attribute [rw] table_names
    #   A list of names of the tables to use.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/RedshiftQueryEngineAwsDataCatalogStorageConfiguration AWS API Documentation
    #
    class RedshiftQueryEngineAwsDataCatalogStorageConfiguration < Struct.new(
      :table_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for an Amazon Redshift query engine. Specify
    # the type of query engine in `type` and include the corresponding
    # field. For more information, see [Build a knowledge base by connecting
    # to a structured data source][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-build-structured.html
    #
    # @!attribute [rw] type
    #   The type of query engine.
    #   @return [String]
    #
    # @!attribute [rw] serverless_configuration
    #   Specifies configurations for a serverless Amazon Redshift query
    #   engine.
    #   @return [Types::RedshiftServerlessConfiguration]
    #
    # @!attribute [rw] provisioned_configuration
    #   Specifies configurations for a provisioned Amazon Redshift query
    #   engine.
    #   @return [Types::RedshiftProvisionedConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/RedshiftQueryEngineConfiguration AWS API Documentation
    #
    class RedshiftQueryEngineConfiguration < Struct.new(
      :type,
      :serverless_configuration,
      :provisioned_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for storage in Amazon Redshift.
    #
    # @!attribute [rw] database_name
    #   The name of the Amazon Redshift database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/RedshiftQueryEngineRedshiftStorageConfiguration AWS API Documentation
    #
    class RedshiftQueryEngineRedshiftStorageConfiguration < Struct.new(
      :database_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for Amazon Redshift data storage. Specify the
    # data storage service to use in the `type` field and include the
    # corresponding field. For more information, see [Build a knowledge base
    # by connecting to a structured data source][1] in the Amazon Bedrock
    # User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-build-structured.html
    #
    # @!attribute [rw] type
    #   The data storage service to use.
    #   @return [String]
    #
    # @!attribute [rw] aws_data_catalog_configuration
    #   Specifies configurations for storage in Glue Data Catalog.
    #   @return [Types::RedshiftQueryEngineAwsDataCatalogStorageConfiguration]
    #
    # @!attribute [rw] redshift_configuration
    #   Specifies configurations for storage in Amazon Redshift.
    #   @return [Types::RedshiftQueryEngineRedshiftStorageConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/RedshiftQueryEngineStorageConfiguration AWS API Documentation
    #
    class RedshiftQueryEngineStorageConfiguration < Struct.new(
      :type,
      :aws_data_catalog_configuration,
      :redshift_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies configurations for authentication to a Redshift Serverless.
    # Specify the type of authentication to use in the `type` field and
    # include the corresponding field. If you specify IAM authentication,
    # you don't need to include another field.
    #
    # @!attribute [rw] type
    #   The type of authentication to use.
    #   @return [String]
    #
    # @!attribute [rw] username_password_secret_arn
    #   The ARN of an Secrets Manager secret for authentication.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/RedshiftServerlessAuthConfiguration AWS API Documentation
    #
    class RedshiftServerlessAuthConfiguration < Struct.new(
      :type,
      :username_password_secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for authentication to Amazon Redshift
    # Serverless.
    #
    # @!attribute [rw] workgroup_arn
    #   The ARN of the Amazon Redshift workgroup.
    #   @return [String]
    #
    # @!attribute [rw] auth_configuration
    #   Specifies configurations for authentication to an Amazon Redshift
    #   provisioned data warehouse.
    #   @return [Types::RedshiftServerlessAuthConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/RedshiftServerlessConfiguration AWS API Documentation
    #
    class RedshiftServerlessConfiguration < Struct.new(
      :workgroup_arn,
      :auth_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures the metadata fields to include or exclude during the
    # reranking process when using selective mode.
    #
    # @note RerankingMetadataSelectiveModeConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RerankingMetadataSelectiveModeConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RerankingMetadataSelectiveModeConfiguration corresponding to the set member.
    #
    # @!attribute [rw] fields_to_include
    #   Specifies the metadata fields to include in the reranking process.
    #   @return [Array<Types::FieldForReranking>]
    #
    # @!attribute [rw] fields_to_exclude
    #   Specifies the metadata fields to exclude from the reranking process.
    #   @return [Array<Types::FieldForReranking>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/RerankingMetadataSelectiveModeConfiguration AWS API Documentation
    #
    class RerankingMetadataSelectiveModeConfiguration < Struct.new(
      :fields_to_include,
      :fields_to_exclude,
      :unknown)
      SENSITIVE = [:fields_to_include, :fields_to_exclude]
      include Aws::Structure
      include Aws::Structure::Union

      class FieldsToInclude < RerankingMetadataSelectiveModeConfiguration; end
      class FieldsToExclude < RerankingMetadataSelectiveModeConfiguration; end
      class Unknown < RerankingMetadataSelectiveModeConfiguration; end
    end

    # The specified resource Amazon Resource Name (ARN) was not found. Check
    # the Amazon Resource Name (ARN) and try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for a Retrieval node in a flow. This node
    # retrieves data from the Amazon S3 location that you specify and
    # returns it as the output.
    #
    # @!attribute [rw] service_configuration
    #   Contains configurations for the service to use for retrieving data
    #   to return as the output from the node.
    #   @return [Types::RetrievalFlowNodeServiceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/RetrievalFlowNodeConfiguration AWS API Documentation
    #
    class RetrievalFlowNodeConfiguration < Struct.new(
      :service_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for the Amazon S3 location from which to
    # retrieve data to return as the output from the node.
    #
    # @!attribute [rw] bucket_name
    #   The name of the Amazon S3 bucket from which to retrieve data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/RetrievalFlowNodeS3Configuration AWS API Documentation
    #
    class RetrievalFlowNodeS3Configuration < Struct.new(
      :bucket_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for the service to use for retrieving data to
    # return as the output from the node.
    #
    # @note RetrievalFlowNodeServiceConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RetrievalFlowNodeServiceConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RetrievalFlowNodeServiceConfiguration corresponding to the set member.
    #
    # @!attribute [rw] s3
    #   Contains configurations for the Amazon S3 location from which to
    #   retrieve data to return as the output from the node.
    #   @return [Types::RetrievalFlowNodeS3Configuration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/RetrievalFlowNodeServiceConfiguration AWS API Documentation
    #
    class RetrievalFlowNodeServiceConfiguration < Struct.new(
      :s3,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < RetrievalFlowNodeServiceConfiguration; end
      class Unknown < RetrievalFlowNodeServiceConfiguration; end
    end

    # Contains information about the content to ingest into a knowledge base
    # connected to an Amazon S3 data source.
    #
    # @!attribute [rw] s3_location
    #   The S3 location of the file containing the content to ingest.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/S3Content AWS API Documentation
    #
    class S3Content < Struct.new(
      :s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration information to connect to Amazon S3 as your data
    # source.
    #
    # @!attribute [rw] bucket_arn
    #   The Amazon Resource Name (ARN) of the S3 bucket that contains your
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] inclusion_prefixes
    #   A list of S3 prefixes to include certain files or content. For more
    #   information, see [Organizing objects using prefixes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-prefixes.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] bucket_owner_account_id
    #   The account ID for the owner of the S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/S3DataSourceConfiguration AWS API Documentation
    #
    class S3DataSourceConfiguration < Struct.new(
      :bucket_arn,
      :inclusion_prefixes,
      :bucket_owner_account_id)
      SENSITIVE = [:inclusion_prefixes]
      include Aws::Structure
    end

    # The identifier information for an Amazon S3 bucket.
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_object_key
    #   The S3 object key for the S3 resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/S3Identifier AWS API Documentation
    #
    class S3Identifier < Struct.new(
      :s3_bucket_name,
      :s3_object_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon S3 location.
    #
    # @!attribute [rw] uri
    #   The location's URI. For example, `s3://my-bucket/chunk-processor/`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the storage configuration of the knowledge base for S3
    # vectors.
    #
    # @!attribute [rw] vector_bucket_arn
    #   The Amazon Resource Name (ARN) of the S3 bucket where vector
    #   embeddings are stored. This bucket contains the vector data used by
    #   the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] index_arn
    #   The Amazon Resource Name (ARN) of the vector index used for the
    #   knowledge base. This ARN identifies the specific vector index
    #   resource within Amazon Bedrock.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the vector index used for the knowledge base. This name
    #   identifies the vector index within the Amazon Bedrock service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/S3VectorsConfiguration AWS API Documentation
    #
    class S3VectorsConfiguration < Struct.new(
      :vector_bucket_arn,
      :index_arn,
      :index_name)
      SENSITIVE = [:vector_bucket_arn, :index_arn, :index_name]
      include Aws::Structure
    end

    # The configuration of the Salesforce content. For example, configuring
    # specific types of Salesforce content.
    #
    # @!attribute [rw] filter_configuration
    #   The configuration of filtering the Salesforce content. For example,
    #   configuring regular expression patterns to include or exclude
    #   certain content.
    #   @return [Types::CrawlFilterConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/SalesforceCrawlerConfiguration AWS API Documentation
    #
    class SalesforceCrawlerConfiguration < Struct.new(
      :filter_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration information to connect to Salesforce as your data
    # source.
    #
    # @!attribute [rw] source_configuration
    #   The endpoint information to connect to your Salesforce data source.
    #   @return [Types::SalesforceSourceConfiguration]
    #
    # @!attribute [rw] crawler_configuration
    #   The configuration of the Salesforce content. For example,
    #   configuring specific types of Salesforce content.
    #   @return [Types::SalesforceCrawlerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/SalesforceDataSourceConfiguration AWS API Documentation
    #
    class SalesforceDataSourceConfiguration < Struct.new(
      :source_configuration,
      :crawler_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The endpoint information to connect to your Salesforce data source.
    #
    # @!attribute [rw] host_url
    #   The Salesforce host URL or instance URL.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The supported authentication type to authenticate and connect to
    #   your Salesforce instance.
    #   @return [String]
    #
    # @!attribute [rw] credentials_secret_arn
    #   The Amazon Resource Name of an Secrets Manager secret that stores
    #   your authentication credentials for your Salesforce instance URL.
    #   For more information on the key-value pairs that must be included in
    #   your secret, depending on your authentication type, see [Salesforce
    #   connection configuration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/salesforce-data-source-connector.html#configuration-salesforce-connector
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/SalesforceSourceConfiguration AWS API Documentation
    #
    class SalesforceSourceConfiguration < Struct.new(
      :host_url,
      :auth_type,
      :credentials_secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The seed or starting point URL. You should be authorized to crawl the
    # URL.
    #
    # @!attribute [rw] url
    #   A seed or starting point URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/SeedUrl AWS API Documentation
    #
    class SeedUrl < Struct.new(
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for semantic document chunking for a data source. Semantic
    # chunking splits a document into into smaller documents based on groups
    # of similar content derived from the text with natural language
    # processing.
    #
    # With semantic chunking, each sentence is compared to the next to
    # determine how similar they are. You specify a threshold in the form of
    # a percentile, where adjacent sentences that are less similar than that
    # percentage of sentence pairs are divided into separate chunks. For
    # example, if you set the threshold to 90, then the 10 percent of
    # sentence pairs that are least similar are split. So if you have 101
    # sentences, 100 sentence pairs are compared, and the 10 with the least
    # similarity are split, creating 11 chunks. These chunks are further
    # split if they exceed the max token size.
    #
    # You must also specify a buffer size, which determines whether
    # sentences are compared in isolation, or within a moving context window
    # that includes the previous and following sentence. For example, if you
    # set the buffer size to `1`, the embedding for sentence 10 is derived
    # from sentences 9, 10, and 11 combined.
    #
    # @!attribute [rw] max_tokens
    #   The maximum number of tokens that a chunk can contain.
    #   @return [Integer]
    #
    # @!attribute [rw] buffer_size
    #   The buffer size.
    #   @return [Integer]
    #
    # @!attribute [rw] breakpoint_percentile_threshold
    #   The dissimilarity threshold for splitting chunks.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/SemanticChunkingConfiguration AWS API Documentation
    #
    class SemanticChunkingConfiguration < Struct.new(
      :max_tokens,
      :buffer_size,
      :breakpoint_percentile_threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration for server-side encryption.
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt the
    #   resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ServerSideEncryptionConfiguration AWS API Documentation
    #
    class ServerSideEncryptionConfiguration < Struct.new(
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of requests exceeds the service quota. Resubmit your
    # request later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for SESSION\_SUMMARY memory type enabled for the agent.
    #
    # @!attribute [rw] max_recent_sessions
    #   Maximum number of recent session summaries to include in the
    #   agent's prompt context.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/SessionSummaryConfiguration AWS API Documentation
    #
    class SessionSummaryConfiguration < Struct.new(
      :max_recent_sessions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the SharePoint content. For example, configuring
    # specific types of SharePoint content.
    #
    # @!attribute [rw] filter_configuration
    #   The configuration of filtering the SharePoint content. For example,
    #   configuring regular expression patterns to include or exclude
    #   certain content.
    #   @return [Types::CrawlFilterConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/SharePointCrawlerConfiguration AWS API Documentation
    #
    class SharePointCrawlerConfiguration < Struct.new(
      :filter_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration information to connect to SharePoint as your data
    # source.
    #
    # @!attribute [rw] source_configuration
    #   The endpoint information to connect to your SharePoint data source.
    #   @return [Types::SharePointSourceConfiguration]
    #
    # @!attribute [rw] crawler_configuration
    #   The configuration of the SharePoint content. For example,
    #   configuring specific types of SharePoint content.
    #   @return [Types::SharePointCrawlerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/SharePointDataSourceConfiguration AWS API Documentation
    #
    class SharePointDataSourceConfiguration < Struct.new(
      :source_configuration,
      :crawler_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The endpoint information to connect to your SharePoint data source.
    #
    # @!attribute [rw] tenant_id
    #   The identifier of your Microsoft 365 tenant.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain of your SharePoint instance or site URL/URLs.
    #   @return [String]
    #
    # @!attribute [rw] site_urls
    #   A list of one or more SharePoint site URLs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] host_type
    #   The supported host type, whether online/cloud or server/on-premises.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The supported authentication type to authenticate and connect to
    #   your SharePoint site/sites.
    #   @return [String]
    #
    # @!attribute [rw] credentials_secret_arn
    #   The Amazon Resource Name of an Secrets Manager secret that stores
    #   your authentication credentials for your SharePoint site/sites. For
    #   more information on the key-value pairs that must be included in
    #   your secret, depending on your authentication type, see [SharePoint
    #   connection configuration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/sharepoint-data-source-connector.html#configuration-sharepoint-connector
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/SharePointSourceConfiguration AWS API Documentation
    #
    class SharePointSourceConfiguration < Struct.new(
      :tenant_id,
      :domain,
      :site_urls,
      :host_type,
      :auth_type,
      :credentials_secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a specific tool that the model must request. No text is
    # generated but the results of tool use are sent back to the model to
    # help generate a response. For more information, see [Use a tool to
    # complete an Amazon Bedrock model response][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html
    #
    # @!attribute [rw] name
    #   The name of the tool.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/SpecificToolChoice AWS API Documentation
    #
    class SpecificToolChoice < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for a knowledge base connected to an SQL
    # database. Specify the SQL database type in the `type` field and
    # include the corresponding field. For more information, see [Build a
    # knowledge base by connecting to a structured data source][1] in the
    # Amazon Bedrock User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-build-structured.html
    #
    # @!attribute [rw] type
    #   The type of SQL database to connect to the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] redshift_configuration
    #   Specifies configurations for a knowledge base connected to an Amazon
    #   Redshift database.
    #   @return [Types::RedshiftConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/SqlKnowledgeBaseConfiguration AWS API Documentation
    #
    class SqlKnowledgeBaseConfiguration < Struct.new(
      :type,
      :redshift_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base for the data ingestion
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source you want to ingest into
    #   your knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the data ingestion job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/StartIngestionJobRequest AWS API Documentation
    #
    class StartIngestionJobRequest < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :client_token,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingestion_job
    #   Contains information about the data ingestion job.
    #   @return [Types::IngestionJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/StartIngestionJobResponse AWS API Documentation
    #
    class StartIngestionJobResponse < Struct.new(
      :ingestion_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base for the data ingestion
    #   job you want to stop.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source for the data ingestion job
    #   you want to stop.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_job_id
    #   The unique identifier of the data ingestion job you want to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/StopIngestionJobRequest AWS API Documentation
    #
    class StopIngestionJobRequest < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :ingestion_job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingestion_job
    #   Contains information about the stopped data ingestion job.
    #   @return [Types::IngestionJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/StopIngestionJobResponse AWS API Documentation
    #
    class StopIngestionJobResponse < Struct.new(
      :ingestion_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the storage configuration of the knowledge base.
    #
    # @!attribute [rw] type
    #   The vector store service in which the knowledge base is stored.
    #   @return [String]
    #
    # @!attribute [rw] opensearch_serverless_configuration
    #   Contains the storage configuration of the knowledge base in Amazon
    #   OpenSearch Service.
    #   @return [Types::OpenSearchServerlessConfiguration]
    #
    # @!attribute [rw] opensearch_managed_cluster_configuration
    #   Contains details about the storage configuration of the knowledge
    #   base in OpenSearch Managed Cluster. For more information, see
    #   [Create a vector index in Amazon OpenSearch Service][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-osm.html
    #   @return [Types::OpenSearchManagedClusterConfiguration]
    #
    # @!attribute [rw] pinecone_configuration
    #   Contains the storage configuration of the knowledge base in
    #   Pinecone.
    #   @return [Types::PineconeConfiguration]
    #
    # @!attribute [rw] redis_enterprise_cloud_configuration
    #   Contains the storage configuration of the knowledge base in Redis
    #   Enterprise Cloud.
    #   @return [Types::RedisEnterpriseCloudConfiguration]
    #
    # @!attribute [rw] rds_configuration
    #   Contains details about the storage configuration of the knowledge
    #   base in Amazon RDS. For more information, see [Create a vector index
    #   in Amazon RDS][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-rds.html
    #   @return [Types::RdsConfiguration]
    #
    # @!attribute [rw] mongo_db_atlas_configuration
    #   Contains the storage configuration of the knowledge base in MongoDB
    #   Atlas.
    #   @return [Types::MongoDbAtlasConfiguration]
    #
    # @!attribute [rw] neptune_analytics_configuration
    #   Contains details about the Neptune Analytics configuration of the
    #   knowledge base in Amazon Neptune. For more information, see [Create
    #   a vector index in Amazon Neptune Analytics.][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-neptune.html
    #   @return [Types::NeptuneAnalyticsConfiguration]
    #
    # @!attribute [rw] s3_vectors_configuration
    #   The configuration settings for storing knowledge base data using S3
    #   vectors. This includes vector index information and S3 bucket
    #   details for vector storage.
    #   @return [Types::S3VectorsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/StorageConfiguration AWS API Documentation
    #
    class StorageConfiguration < Struct.new(
      :type,
      :opensearch_serverless_configuration,
      :opensearch_managed_cluster_configuration,
      :pinecone_configuration,
      :redis_enterprise_cloud_configuration,
      :rds_configuration,
      :mongo_db_atlas_configuration,
      :neptune_analytics_configuration,
      :s3_vectors_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for a Storage node in a flow. This node stores
    # the input in an Amazon S3 location that you specify.
    #
    # @!attribute [rw] service_configuration
    #   Contains configurations for the service to use for storing the input
    #   into the node.
    #   @return [Types::StorageFlowNodeServiceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/StorageFlowNodeConfiguration AWS API Documentation
    #
    class StorageFlowNodeConfiguration < Struct.new(
      :service_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for the Amazon S3 location in which to store
    # the input into the node.
    #
    # @!attribute [rw] bucket_name
    #   The name of the Amazon S3 bucket in which to store the input into
    #   the node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/StorageFlowNodeS3Configuration AWS API Documentation
    #
    class StorageFlowNodeS3Configuration < Struct.new(
      :bucket_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for the service to use for storing the input
    # into the node.
    #
    # @note StorageFlowNodeServiceConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note StorageFlowNodeServiceConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of StorageFlowNodeServiceConfiguration corresponding to the set member.
    #
    # @!attribute [rw] s3
    #   Contains configurations for the Amazon S3 location in which to store
    #   the input into the node.
    #   @return [Types::StorageFlowNodeS3Configuration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/StorageFlowNodeServiceConfiguration AWS API Documentation
    #
    class StorageFlowNodeServiceConfiguration < Struct.new(
      :s3,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < StorageFlowNodeServiceConfiguration; end
      class Unknown < StorageFlowNodeServiceConfiguration; end
    end

    # Specifies configurations for the storage location of the images
    # extracted from multimodal documents in your data source. These images
    # can be retrieved and returned to the end user.
    #
    # @!attribute [rw] storage_locations
    #   A list of objects specifying storage locations for images extracted
    #   from multimodal documents in your data source.
    #   @return [Array<Types::SupplementalDataStorageLocation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/SupplementalDataStorageConfiguration AWS API Documentation
    #
    class SupplementalDataStorageConfiguration < Struct.new(
      :storage_locations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a storage location for images extracted
    # from multimodal documents in your data source.
    #
    # @!attribute [rw] type
    #   Specifies the storage service used for this location.
    #   @return [String]
    #
    # @!attribute [rw] s3_location
    #   Contains information about the Amazon S3 location for the extracted
    #   images.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/SupplementalDataStorageLocation AWS API Documentation
    #
    class SupplementalDataStorageLocation < Struct.new(
      :type,
      :s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a system prompt to provide context to the model or to
    # describe how it should behave. For more information, see [Create a
    # prompt using Prompt management][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-create.html
    #
    # @note SystemContentBlock is a union - when making an API calls you must set exactly one of the members.
    #
    # @note SystemContentBlock is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SystemContentBlock corresponding to the set member.
    #
    # @!attribute [rw] text
    #   The text in the system prompt.
    #   @return [String]
    #
    # @!attribute [rw] cache_point
    #   Creates a cache checkpoint within a tool designation
    #   @return [Types::CachePointBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/SystemContentBlock AWS API Documentation
    #
    class SystemContentBlock < Struct.new(
      :text,
      :cache_point,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < SystemContentBlock; end
      class CachePoint < SystemContentBlock; end
      class Unknown < SystemContentBlock; end
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An object containing key-value pairs that define the tags to attach
    #   to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Contains information about content defined inline in text.
    #
    # @!attribute [rw] data
    #   The text of the content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/TextContentDoc AWS API Documentation
    #
    class TextContentDoc < Struct.new(
      :data)
      SENSITIVE = [:data]
      include Aws::Structure
    end

    # Contains configurations for a text prompt template. To include a
    # variable, enclose a word in double curly braces as in `{{variable}}`.
    #
    # @!attribute [rw] text
    #   The message for the prompt.
    #   @return [String]
    #
    # @!attribute [rw] cache_point
    #   A cache checkpoint within a template configuration.
    #   @return [Types::CachePointBlock]
    #
    # @!attribute [rw] input_variables
    #   An array of the variables in the prompt template.
    #   @return [Array<Types::PromptInputVariable>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/TextPromptTemplateConfiguration AWS API Documentation
    #
    class TextPromptTemplateConfiguration < Struct.new(
      :text,
      :cache_point,
      :input_variables)
      SENSITIVE = [:text, :input_variables]
      include Aws::Structure
    end

    # The number of requests exceeds the limit. Resubmit your request later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for a tool that a model can use when
    # generating a response. For more information, see [Use a tool to
    # complete an Amazon Bedrock model response][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html
    #
    # @note Tool is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Tool is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Tool corresponding to the set member.
    #
    # @!attribute [rw] tool_spec
    #   The specification for the tool.
    #   @return [Types::ToolSpecification]
    #
    # @!attribute [rw] cache_point
    #   Creates a cache checkpoint within a tool designation
    #   @return [Types::CachePointBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/Tool AWS API Documentation
    #
    class Tool < Struct.new(
      :tool_spec,
      :cache_point,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ToolSpec < Tool; end
      class CachePoint < Tool; end
      class Unknown < Tool; end
    end

    # Defines which tools the model should request when invoked. For more
    # information, see [Use a tool to complete an Amazon Bedrock model
    # response][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html
    #
    # @note ToolChoice is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ToolChoice is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ToolChoice corresponding to the set member.
    #
    # @!attribute [rw] auto
    #   Defines tools. The model automatically decides whether to call a
    #   tool or to generate text instead.
    #   @return [Types::AutoToolChoice]
    #
    # @!attribute [rw] any
    #   Defines tools, at least one of which must be requested by the model.
    #   No text is generated but the results of tool use are sent back to
    #   the model to help generate a response.
    #   @return [Types::AnyToolChoice]
    #
    # @!attribute [rw] tool
    #   Defines a specific tool that the model must request. No text is
    #   generated but the results of tool use are sent back to the model to
    #   help generate a response.
    #   @return [Types::SpecificToolChoice]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ToolChoice AWS API Documentation
    #
    class ToolChoice < Struct.new(
      :auto,
      :any,
      :tool,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Auto < ToolChoice; end
      class Any < ToolChoice; end
      class Tool < ToolChoice; end
      class Unknown < ToolChoice; end
    end

    # Configuration information for the tools that the model can use when
    # generating a response. For more information, see [Use a tool to
    # complete an Amazon Bedrock model response][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html
    #
    # @!attribute [rw] tools
    #   An array of tools to pass to a model.
    #   @return [Array<Types::Tool>]
    #
    # @!attribute [rw] tool_choice
    #   Defines which tools the model should request when invoked.
    #   @return [Types::ToolChoice]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ToolConfiguration AWS API Documentation
    #
    class ToolConfiguration < Struct.new(
      :tools,
      :tool_choice)
      SENSITIVE = [:tools, :tool_choice]
      include Aws::Structure
    end

    # The input schema for the tool. For more information, see [Use a tool
    # to complete an Amazon Bedrock model response][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html
    #
    # @note ToolInputSchema is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ToolInputSchema is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ToolInputSchema corresponding to the set member.
    #
    # @!attribute [rw] json
    #   A JSON object defining the input schema for the tool.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ToolInputSchema AWS API Documentation
    #
    class ToolInputSchema < Struct.new(
      :json,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Json < ToolInputSchema; end
      class Unknown < ToolInputSchema; end
    end

    # Contains a specification for a tool. For more information, see [Use a
    # tool to complete an Amazon Bedrock model response][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html
    #
    # @!attribute [rw] name
    #   The name of the tool.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the tool.
    #   @return [String]
    #
    # @!attribute [rw] input_schema
    #   The input schema for the tool.
    #   @return [Types::ToolInputSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ToolSpecification AWS API Documentation
    #
    class ToolSpecification < Struct.new(
      :name,
      :description,
      :input_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # A custom processing step for documents moving through a data source
    # ingestion pipeline. To process documents after they have been
    # converted into chunks, set the step to apply to `POST_CHUNKING`.
    #
    # @!attribute [rw] transformation_function
    #   A Lambda function that processes documents.
    #   @return [Types::TransformationFunction]
    #
    # @!attribute [rw] step_to_apply
    #   When the service applies the transformation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/Transformation AWS API Documentation
    #
    class Transformation < Struct.new(
      :transformation_function,
      :step_to_apply)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Lambda function that processes documents.
    #
    # @!attribute [rw] transformation_lambda_configuration
    #   The Lambda function.
    #   @return [Types::TransformationLambdaConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/TransformationFunction AWS API Documentation
    #
    class TransformationFunction < Struct.new(
      :transformation_lambda_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Lambda function that processes documents.
    #
    # @!attribute [rw] lambda_arn
    #   The function's ARN identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/TransformationLambdaConfiguration AWS API Documentation
    #
    class TransformationLambdaConfiguration < Struct.new(
      :lambda_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an unfulfilled node input with no valid connections.
    #
    # @!attribute [rw] node
    #   The name of the node containing the unfulfilled input.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The name of the unfulfilled input. An input is unfulfilled if there
    #   are no data connections to it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UnfulfilledNodeInputFlowValidationDetails AWS API Documentation
    #
    class UnfulfilledNodeInputFlowValidationDetails < Struct.new(
      :node,
      :input)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an unknown condition for a connection.
    #
    # @!attribute [rw] connection
    #   The name of the connection with the unknown condition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UnknownConnectionConditionFlowValidationDetails AWS API Documentation
    #
    class UnknownConnectionConditionFlowValidationDetails < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an unknown source node for a connection.
    #
    # @!attribute [rw] connection
    #   The name of the connection with the unknown source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UnknownConnectionSourceFlowValidationDetails AWS API Documentation
    #
    class UnknownConnectionSourceFlowValidationDetails < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an unknown source output for a connection.
    #
    # @!attribute [rw] connection
    #   The name of the connection with the unknown source output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UnknownConnectionSourceOutputFlowValidationDetails AWS API Documentation
    #
    class UnknownConnectionSourceOutputFlowValidationDetails < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an unknown target node for a connection.
    #
    # @!attribute [rw] connection
    #   The name of the connection with the unknown target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UnknownConnectionTargetFlowValidationDetails AWS API Documentation
    #
    class UnknownConnectionTargetFlowValidationDetails < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an unknown target input for a connection.
    #
    # @!attribute [rw] connection
    #   The name of the connection with the unknown target input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UnknownConnectionTargetInputFlowValidationDetails AWS API Documentation
    #
    class UnknownConnectionTargetInputFlowValidationDetails < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an unknown input for a node.
    #
    # @!attribute [rw] node
    #   The name of the unknown input.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The name of the node with the unknown input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UnknownNodeInputFlowValidationDetails AWS API Documentation
    #
    class UnknownNodeInputFlowValidationDetails < Struct.new(
      :node,
      :input)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an unknown output for a node.
    #
    # @!attribute [rw] node
    #   The name of the node with the unknown output.
    #   @return [String]
    #
    # @!attribute [rw] output
    #   The name of the unknown output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UnknownNodeOutputFlowValidationDetails AWS API Documentation
    #
    class UnknownNodeOutputFlowValidationDetails < Struct.new(
      :node,
      :output)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an unreachable node in the flow. A node is unreachable
    # when there are no paths to it from any starting node.
    #
    # @!attribute [rw] node
    #   The name of the unreachable node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UnreachableNodeFlowValidationDetails AWS API Documentation
    #
    class UnreachableNodeFlowValidationDetails < Struct.new(
      :node)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about unsatisfied conditions for a connection. A condition is
    # unsatisfied if it can never be true, for example two branches of
    # condition node cannot be simultaneously true.
    #
    # @!attribute [rw] connection
    #   The name of the connection with unsatisfied conditions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UnsatisfiedConnectionConditionsFlowValidationDetails AWS API Documentation
    #
    class UnsatisfiedConnectionConditionsFlowValidationDetails < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an unspecified validation that doesn't fit other
    # categories.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UnspecifiedFlowValidationDetails AWS API Documentation
    #
    class UnspecifiedFlowValidationDetails < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which to remove
    #   tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of keys of the tags to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent for which to update the action
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The unique identifier of the agent version for which to update the
    #   action group.
    #   @return [String]
    #
    # @!attribute [rw] action_group_id
    #   The unique identifier of the action group.
    #   @return [String]
    #
    # @!attribute [rw] action_group_name
    #   Specifies a new name for the action group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Specifies a new name for the action group.
    #   @return [String]
    #
    # @!attribute [rw] parent_action_group_signature
    #   Update the built-in or computer use action for this action group. If
    #   you specify a value, you must leave the `description`, `apiSchema`,
    #   and `actionGroupExecutor` fields empty for this action group.
    #
    #   * To allow your agent to request the user for additional information
    #     when trying to complete a task, set this field to
    #     `AMAZON.UserInput`.
    #
    #   * To allow your agent to generate, run, and troubleshoot code when
    #     trying to complete a task, set this field to
    #     `AMAZON.CodeInterpreter`.
    #
    #   * To allow your agent to use an Anthropic computer use tool, specify
    #     one of the following values.
    #
    #     Computer use is a new Anthropic Claude model capability (in beta)
    #     available with Anthropic Claude 3.7 Sonnet and Claude 3.5 Sonnet
    #     v2 only. When operating computer use functionality, we recommend
    #     taking additional security precautions, such as executing computer
    #     actions in virtual environments with restricted data access and
    #     limited internet connectivity. For more information, see
    #     [Configure an Amazon Bedrock Agent to complete tasks with computer
    #     use tools][1].
    #
    #     * `ANTHROPIC.Computer` - Gives the agent permission to use the
    #       mouse and keyboard and take screenshots.
    #
    #     * `ANTHROPIC.TextEditor` - Gives the agent permission to view,
    #       create and edit files.
    #
    #     * `ANTHROPIC.Bash` - Gives the agent permission to run commands in
    #       a bash shell.
    #
    #   During orchestration, if your agent determines that it needs to
    #   invoke an API in an action group, but doesn't have enough
    #   information to complete the API request, it will invoke this action
    #   group instead and return an [Observation][2] reprompting the user
    #   for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Observation.html
    #   @return [String]
    #
    # @!attribute [rw] parent_action_group_signature_params
    #   The configuration settings for a computer use action.
    #
    #   Computer use is a new Anthropic Claude model capability (in beta)
    #   available with Claude 3.7 Sonnet and Claude 3.5 Sonnet v2 only. For
    #   more information, see [Configure an Amazon Bedrock Agent to complete
    #   tasks with computer use tools][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-computer-use.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] action_group_executor
    #   The Amazon Resource Name (ARN) of the Lambda function containing the
    #   business logic that is carried out upon invoking the action.
    #   @return [Types::ActionGroupExecutor]
    #
    # @!attribute [rw] action_group_state
    #   Specifies whether the action group is available for the agent to
    #   invoke or not when sending an [InvokeAgent][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html
    #   @return [String]
    #
    # @!attribute [rw] api_schema
    #   Contains either details about the S3 object containing the OpenAPI
    #   schema for the action group or the JSON or YAML-formatted payload
    #   defining the schema. For more information, see [Action group OpenAPI
    #   schemas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/agents-api-schema.html
    #   @return [Types::APISchema]
    #
    # @!attribute [rw] function_schema
    #   Contains details about the function schema for the action group or
    #   the JSON or YAML-formatted payload defining the schema.
    #   @return [Types::FunctionSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentActionGroupRequest AWS API Documentation
    #
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
      :function_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_action_group
    #   Contains details about the action group that was updated.
    #   @return [Types::AgentActionGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentActionGroupResponse AWS API Documentation
    #
    class UpdateAgentActionGroupResponse < Struct.new(
      :agent_action_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_id
    #   The unique identifier of the alias.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_name
    #   Specifies a new name for the alias.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Specifies a new description for the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   Contains details about the routing configuration of the alias.
    #   @return [Array<Types::AgentAliasRoutingConfigurationListItem>]
    #
    # @!attribute [rw] alias_invocation_state
    #   The invocation state for the agent alias. To pause the agent alias,
    #   set the value to `REJECT_INVOCATIONS`. To start the agent alias
    #   running again, set the value to `ACCEPT_INVOCATIONS`. Use the
    #   `GetAgentAlias`, or `ListAgentAliases`, operation to get the
    #   invocation state of an agent alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentAliasRequest AWS API Documentation
    #
    class UpdateAgentAliasRequest < Struct.new(
      :agent_id,
      :agent_alias_id,
      :agent_alias_name,
      :description,
      :routing_configuration,
      :alias_invocation_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_alias
    #   Contains details about the alias that was updated.
    #   @return [Types::AgentAlias]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentAliasResponse AWS API Documentation
    #
    class UpdateAgentAliasResponse < Struct.new(
      :agent_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The agent's ID.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The agent's version.
    #   @return [String]
    #
    # @!attribute [rw] collaborator_id
    #   The collaborator's ID.
    #   @return [String]
    #
    # @!attribute [rw] agent_descriptor
    #   An agent descriptor for the agent collaborator.
    #   @return [Types::AgentDescriptor]
    #
    # @!attribute [rw] collaborator_name
    #   The collaborator's name.
    #   @return [String]
    #
    # @!attribute [rw] collaboration_instruction
    #   Instruction for the collaborator.
    #   @return [String]
    #
    # @!attribute [rw] relay_conversation_history
    #   A relay conversation history for the collaborator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentCollaboratorRequest AWS API Documentation
    #
    class UpdateAgentCollaboratorRequest < Struct.new(
      :agent_id,
      :agent_version,
      :collaborator_id,
      :agent_descriptor,
      :collaborator_name,
      :collaboration_instruction,
      :relay_conversation_history)
      SENSITIVE = [:collaboration_instruction]
      include Aws::Structure
    end

    # @!attribute [rw] agent_collaborator
    #   Details about the collaborator.
    #   @return [Types::AgentCollaborator]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentCollaboratorResponse AWS API Documentation
    #
    class UpdateAgentCollaboratorResponse < Struct.new(
      :agent_collaborator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent associated with the knowledge
    #   base that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent associated with the knowledge base that you
    #   want to update.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base that has been associated
    #   with an agent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Specifies a new description for the knowledge base associated with
    #   an agent.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_state
    #   Specifies whether the agent uses the knowledge base or not when
    #   sending an [InvokeAgent][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentKnowledgeBaseRequest AWS API Documentation
    #
    class UpdateAgentKnowledgeBaseRequest < Struct.new(
      :agent_id,
      :agent_version,
      :knowledge_base_id,
      :description,
      :knowledge_base_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_knowledge_base
    #   Contains details about the knowledge base that has been associated
    #   with an agent.
    #   @return [Types::AgentKnowledgeBase]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentKnowledgeBaseResponse AWS API Documentation
    #
    class UpdateAgentKnowledgeBaseResponse < Struct.new(
      :agent_knowledge_base)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   The unique identifier of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_name
    #   Specifies a new name for the agent.
    #   @return [String]
    #
    # @!attribute [rw] instruction
    #   Specifies new instructions that tell the agent what it should do and
    #   how it should interact with users.
    #   @return [String]
    #
    # @!attribute [rw] foundation_model
    #   The identifier for the model that you want to be used for
    #   orchestration by the agent you create.
    #
    #   The `modelId` to provide depends on the type of model or throughput
    #   that you use:
    #
    #   * If you use a base model, specify the model ID or its ARN. For a
    #     list of model IDs for base models, see [Amazon Bedrock base model
    #     IDs (on-demand throughput)][1] in the Amazon Bedrock User Guide.
    #
    #   * If you use an inference profile, specify the inference profile ID
    #     or its ARN. For a list of inference profile IDs, see [Supported
    #     Regions and models for cross-region inference][2] in the Amazon
    #     Bedrock User Guide.
    #
    #   * If you use a provisioned model, specify the ARN of the Provisioned
    #     Throughput. For more information, see [Run inference using a
    #     Provisioned Throughput][3] in the Amazon Bedrock User Guide.
    #
    #   * If you use a custom model, first purchase Provisioned Throughput
    #     for it. Then specify the ARN of the resulting provisioned model.
    #     For more information, see [Use a custom model in Amazon
    #     Bedrock][4] in the Amazon Bedrock User Guide.
    #
    #   * If you use an [imported model][5], specify the ARN of the imported
    #     model. You can get the model ARN from a successful call to
    #     [CreateModelImportJob][6] or from the Imported models page in the
    #     Amazon Bedrock console.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html
    #   [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html
    #   [4]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html
    #   [5]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html
    #   [6]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Specifies a new description of the agent.
    #   @return [String]
    #
    # @!attribute [rw] orchestration_type
    #   Specifies the type of orchestration strategy for the agent. This is
    #   set to `DEFAULT` orchestration type, by default.
    #   @return [String]
    #
    # @!attribute [rw] custom_orchestration
    #   Contains details of the custom orchestration configured for the
    #   agent.
    #   @return [Types::CustomOrchestration]
    #
    # @!attribute [rw] idle_session_ttl_in_seconds
    #   The number of seconds for which Amazon Bedrock keeps information
    #   about a user's conversation with the agent.
    #
    #   A user interaction remains active for the amount of time specified.
    #   If no conversation occurs during this time, the session expires and
    #   Amazon Bedrock deletes any data provided before the timeout.
    #   @return [Integer]
    #
    # @!attribute [rw] agent_resource_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role with permissions to
    #   invoke API operations on the agent.
    #   @return [String]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key with which to encrypt
    #   the agent.
    #   @return [String]
    #
    # @!attribute [rw] prompt_override_configuration
    #   Contains configurations to override prompts in different parts of an
    #   agent sequence. For more information, see [Advanced prompts][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html
    #   @return [Types::PromptOverrideConfiguration]
    #
    # @!attribute [rw] guardrail_configuration
    #   The unique Guardrail configuration assigned to the agent when it is
    #   updated.
    #   @return [Types::GuardrailConfiguration]
    #
    # @!attribute [rw] memory_configuration
    #   Specifies the new memory configuration for the agent.
    #   @return [Types::MemoryConfiguration]
    #
    # @!attribute [rw] agent_collaboration
    #   The agent's collaboration role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentRequest AWS API Documentation
    #
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
      :agent_collaboration)
      SENSITIVE = [:instruction, :prompt_override_configuration]
      include Aws::Structure
    end

    # @!attribute [rw] agent
    #   Contains details about the agent that was updated.
    #   @return [Types::Agent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentResponse AWS API Documentation
    #
    class UpdateAgentResponse < Struct.new(
      :agent)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base for the data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Specifies a new name for the data source.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Specifies a new description for the data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_configuration
    #   The connection configuration for the data source that you want to
    #   update.
    #   @return [Types::DataSourceConfiguration]
    #
    # @!attribute [rw] data_deletion_policy
    #   The data deletion policy for the data source that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   Contains details about server-side encryption of the data source.
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] vector_ingestion_configuration
    #   Contains details about how to ingest the documents in the data
    #   source.
    #   @return [Types::VectorIngestionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateDataSourceRequest AWS API Documentation
    #
    class UpdateDataSourceRequest < Struct.new(
      :knowledge_base_id,
      :data_source_id,
      :name,
      :description,
      :data_source_configuration,
      :data_deletion_policy,
      :server_side_encryption_configuration,
      :vector_ingestion_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source
    #   Contains details about the data source.
    #   @return [Types::DataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateDataSourceResponse AWS API Documentation
    #
    class UpdateDataSourceResponse < Struct.new(
      :data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   Contains information about the version to which to map the alias.
    #   @return [Array<Types::FlowAliasRoutingConfigurationListItem>]
    #
    # @!attribute [rw] concurrency_configuration
    #   The configuration that specifies how nodes in the flow are executed
    #   in parallel.
    #   @return [Types::FlowAliasConcurrencyConfiguration]
    #
    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] alias_identifier
    #   The unique identifier of the alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateFlowAliasRequest AWS API Documentation
    #
    class UpdateFlowAliasRequest < Struct.new(
      :name,
      :description,
      :routing_configuration,
      :concurrency_configuration,
      :flow_identifier,
      :alias_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the flow.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   Contains information about the version that the alias is mapped to.
    #   @return [Array<Types::FlowAliasRoutingConfigurationListItem>]
    #
    # @!attribute [rw] concurrency_configuration
    #   The configuration that specifies how nodes in the flow are executed
    #   in parallel.
    #   @return [Types::FlowAliasConcurrencyConfiguration]
    #
    # @!attribute [rw] flow_id
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the alias.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the flow.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the flow was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the alias was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateFlowAliasResponse AWS API Documentation
    #
    class UpdateFlowAliasResponse < Struct.new(
      :name,
      :description,
      :routing_configuration,
      :concurrency_configuration,
      :flow_id,
      :id,
      :arn,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for the flow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the flow.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the service role with permissions
    #   to create and manage a flow. For more information, see [Create a
    #   service role for flows in Amazon Bedrock][1] in the Amazon Bedrock
    #   User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html
    #   @return [String]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key to encrypt the flow.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   A definition of the nodes and the connections between the nodes in
    #   the flow.
    #   @return [Types::FlowDefinition]
    #
    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateFlowRequest AWS API Documentation
    #
    class UpdateFlowRequest < Struct.new(
      :name,
      :description,
      :execution_role_arn,
      :customer_encryption_key_arn,
      :definition,
      :flow_identifier)
      SENSITIVE = [:definition]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the flow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the flow.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the service role with permissions
    #   to create a flow. For more information, see [Create a service role
    #   for flows in Amazon Bedrock][1] in the Amazon Bedrock User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-permissions.html
    #   @return [String]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key that the flow was
    #   encrypted with.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the flow.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the flow. When you submit this request, the status
    #   will be `NotPrepared`. If updating fails, the status becomes
    #   `Failed`.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the flow was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the flow was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of the flow. When you update a flow, the version updated
    #   is the `DRAFT` version.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   A definition of the nodes and the connections between nodes in the
    #   flow.
    #   @return [Types::FlowDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateFlowResponse AWS API Documentation
    #
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
      :definition)
      SENSITIVE = [:definition]
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Specifies a new name for the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Specifies a new description for the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   Specifies a different Amazon Resource Name (ARN) of the IAM role
    #   with permissions to invoke API operations on the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_configuration
    #   Specifies the configuration for the embeddings model used for the
    #   knowledge base. You must use the same configuration as when the
    #   knowledge base was created.
    #   @return [Types::KnowledgeBaseConfiguration]
    #
    # @!attribute [rw] storage_configuration
    #   Specifies the configuration for the vector store used for the
    #   knowledge base. You must use the same configuration as when the
    #   knowledge base was created.
    #   @return [Types::StorageConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateKnowledgeBaseRequest AWS API Documentation
    #
    class UpdateKnowledgeBaseRequest < Struct.new(
      :knowledge_base_id,
      :name,
      :description,
      :role_arn,
      :knowledge_base_configuration,
      :storage_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base
    #   Contains details about the knowledge base.
    #   @return [Types::KnowledgeBase]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateKnowledgeBaseResponse AWS API Documentation
    #
    class UpdateKnowledgeBaseResponse < Struct.new(
      :knowledge_base)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for the prompt.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the prompt.
    #   @return [String]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key to encrypt the prompt.
    #   @return [String]
    #
    # @!attribute [rw] default_variant
    #   The name of the default variant for the prompt. This value must
    #   match the `name` field in the relevant [PromptVariant][1] object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptVariant.html
    #   @return [String]
    #
    # @!attribute [rw] variants
    #   A list of objects, each containing details about a variant of the
    #   prompt.
    #   @return [Array<Types::PromptVariant>]
    #
    # @!attribute [rw] prompt_identifier
    #   The unique identifier of the prompt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdatePromptRequest AWS API Documentation
    #
    class UpdatePromptRequest < Struct.new(
      :name,
      :description,
      :customer_encryption_key_arn,
      :default_variant,
      :variants,
      :prompt_identifier)
      SENSITIVE = [:variants]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key to encrypt the prompt.
    #   @return [String]
    #
    # @!attribute [rw] default_variant
    #   The name of the default variant for the prompt. This value must
    #   match the `name` field in the relevant [PromptVariant][1] object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptVariant.html
    #   @return [String]
    #
    # @!attribute [rw] variants
    #   A list of objects, each containing details about a variant of the
    #   prompt.
    #   @return [Array<Types::PromptVariant>]
    #
    # @!attribute [rw] id
    #   The unique identifier of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the prompt. When you update a prompt, the version
    #   updated is the `DRAFT` version.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the prompt was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time at which the prompt was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdatePromptResponse AWS API Documentation
    #
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
      :updated_at)
      SENSITIVE = [:variants]
      include Aws::Structure
    end

    # The configuration of web URLs that you want to crawl. You should be
    # authorized to crawl the URLs.
    #
    # @!attribute [rw] seed_urls
    #   One or more seed or starting point URLs.
    #   @return [Array<Types::SeedUrl>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UrlConfiguration AWS API Documentation
    #
    class UrlConfiguration < Struct.new(
      :seed_urls)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] definition
    #   The definition of a flow to validate.
    #   @return [Types::FlowDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ValidateFlowDefinitionRequest AWS API Documentation
    #
    class ValidateFlowDefinitionRequest < Struct.new(
      :definition)
      SENSITIVE = [:definition]
      include Aws::Structure
    end

    # @!attribute [rw] validations
    #   Contains an array of objects, each of which contains an error
    #   identified by validation.
    #   @return [Array<Types::FlowValidation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ValidateFlowDefinitionResponse AWS API Documentation
    #
    class ValidateFlowDefinitionResponse < Struct.new(
      :validations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input validation failed. Check your request parameters and retry the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   A list of objects containing fields that caused validation errors
    #   and their corresponding validation error messages.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stores information about a field passed inside a request that resulted
    # in an validation error.
    #
    # @!attribute [rw] name
    #   The name of the field.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message describing why this field failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about how to ingest the documents in a data source.
    #
    # @!attribute [rw] chunking_configuration
    #   Details about how to chunk the documents in the data source. A
    #   *chunk* refers to an excerpt from a data source that is returned
    #   when the knowledge base that it belongs to is queried.
    #   @return [Types::ChunkingConfiguration]
    #
    # @!attribute [rw] custom_transformation_configuration
    #   A custom document transformer for parsed data source documents.
    #   @return [Types::CustomTransformationConfiguration]
    #
    # @!attribute [rw] parsing_configuration
    #   Configurations for a parser to use for parsing documents in your
    #   data source. If you exclude this field, the default parser will be
    #   used.
    #   @return [Types::ParsingConfiguration]
    #
    # @!attribute [rw] context_enrichment_configuration
    #   The context enrichment configuration used for ingestion of the data
    #   into the vector store.
    #   @return [Types::ContextEnrichmentConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/VectorIngestionConfiguration AWS API Documentation
    #
    class VectorIngestionConfiguration < Struct.new(
      :chunking_configuration,
      :custom_transformation_configuration,
      :parsing_configuration,
      :context_enrichment_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the model used to create vector embeddings for
    # the knowledge base.
    #
    # @!attribute [rw] embedding_model_arn
    #   The Amazon Resource Name (ARN) of the model used to create vector
    #   embeddings for the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] embedding_model_configuration
    #   The embeddings model configuration details for the vector model used
    #   in Knowledge Base.
    #   @return [Types::EmbeddingModelConfiguration]
    #
    # @!attribute [rw] supplemental_data_storage_configuration
    #   If you include multimodal data from your data source, use this
    #   object to specify configurations for the storage location of the
    #   images extracted from your documents. These images can be retrieved
    #   and returned to the end user. They can also be used in generation
    #   when using [RetrieveAndGenerate][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html
    #   @return [Types::SupplementalDataStorageConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/VectorKnowledgeBaseConfiguration AWS API Documentation
    #
    class VectorKnowledgeBaseConfiguration < Struct.new(
      :embedding_model_arn,
      :embedding_model_configuration,
      :supplemental_data_storage_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures the Amazon Bedrock reranker model to improve the relevance
    # of retrieved results.
    #
    # @!attribute [rw] model_configuration
    #   Specifies the configuration for the Amazon Bedrock reranker model.
    #   @return [Types::VectorSearchBedrockRerankingModelConfiguration]
    #
    # @!attribute [rw] number_of_reranked_results
    #   Specifies the number of results to return after reranking.
    #   @return [Integer]
    #
    # @!attribute [rw] metadata_configuration
    #   Specifies how metadata fields should be handled during the reranking
    #   process.
    #   @return [Types::MetadataConfigurationForReranking]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/VectorSearchBedrockRerankingConfiguration AWS API Documentation
    #
    class VectorSearchBedrockRerankingConfiguration < Struct.new(
      :model_configuration,
      :number_of_reranked_results,
      :metadata_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures the Amazon Bedrock model used for reranking retrieved
    # results.
    #
    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the Amazon Bedrock reranker model.
    #   @return [String]
    #
    # @!attribute [rw] additional_model_request_fields
    #   Specifies additional model-specific request parameters as key-value
    #   pairs that are included in the request to the Amazon Bedrock
    #   reranker model.
    #   @return [Hash<String,Hash,Array,String,Numeric,Boolean>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/VectorSearchBedrockRerankingModelConfiguration AWS API Documentation
    #
    class VectorSearchBedrockRerankingModelConfiguration < Struct.new(
      :model_arn,
      :additional_model_request_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies how retrieved results from a knowledge base are reranked to
    # improve relevance.
    #
    # @!attribute [rw] type
    #   Specifies the type of reranking model to use. Currently, the only
    #   supported value is `BEDROCK_RERANKING_MODEL`.
    #   @return [String]
    #
    # @!attribute [rw] bedrock_reranking_configuration
    #   Specifies the configuration for using an Amazon Bedrock reranker
    #   model to rerank retrieved results.
    #   @return [Types::VectorSearchBedrockRerankingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/VectorSearchRerankingConfiguration AWS API Documentation
    #
    class VectorSearchRerankingConfiguration < Struct.new(
      :type,
      :bedrock_reranking_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of web URLs that you want to crawl. You should be
    # authorized to crawl the URLs.
    #
    # @!attribute [rw] crawler_limits
    #   The configuration of crawl limits for the web URLs.
    #   @return [Types::WebCrawlerLimits]
    #
    # @!attribute [rw] inclusion_filters
    #   A list of one or more inclusion regular expression patterns to
    #   include certain URLs. If you specify an inclusion and exclusion
    #   filter/pattern and both match a URL, the exclusion filter takes
    #   precedence and the web content of the URL isn’t crawled.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclusion_filters
    #   A list of one or more exclusion regular expression patterns to
    #   exclude certain URLs. If you specify an inclusion and exclusion
    #   filter/pattern and both match a URL, the exclusion filter takes
    #   precedence and the web content of the URL isn’t crawled.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scope
    #   The scope of what is crawled for your URLs.
    #
    #   You can choose to crawl only web pages that belong to the same host
    #   or primary domain. For example, only web pages that contain the seed
    #   URL "https://docs.aws.amazon.com/bedrock/latest/userguide/" and no
    #   other domains. You can choose to include sub domains in addition to
    #   the host or primary domain. For example, web pages that contain
    #   "aws.amazon.com" can also include sub domain
    #   "docs.aws.amazon.com".
    #   @return [String]
    #
    # @!attribute [rw] user_agent
    #   Returns the user agent suffix for your web crawler.
    #   @return [String]
    #
    # @!attribute [rw] user_agent_header
    #   A string used for identifying the crawler or bot when it accesses a
    #   web server. The user agent header value consists of the
    #   `bedrockbot`, UUID, and a user agent suffix for your crawler (if one
    #   is provided). By default, it is set to `bedrockbot_UUID`. You can
    #   optionally append a custom suffix to `bedrockbot_UUID` to allowlist
    #   a specific user agent permitted to access your source URLs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/WebCrawlerConfiguration AWS API Documentation
    #
    class WebCrawlerConfiguration < Struct.new(
      :crawler_limits,
      :inclusion_filters,
      :exclusion_filters,
      :scope,
      :user_agent,
      :user_agent_header)
      SENSITIVE = [:inclusion_filters, :exclusion_filters, :user_agent, :user_agent_header]
      include Aws::Structure
    end

    # The rate limits for the URLs that you want to crawl. You should be
    # authorized to crawl the URLs.
    #
    # @!attribute [rw] rate_limit
    #   The max rate at which pages are crawled, up to 300 per minute per
    #   host.
    #   @return [Integer]
    #
    # @!attribute [rw] max_pages
    #   The max number of web pages crawled from your source URLs, up to
    #   25,000 pages. If the web pages exceed this limit, the data source
    #   sync will fail and no web pages will be ingested.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/WebCrawlerLimits AWS API Documentation
    #
    class WebCrawlerLimits < Struct.new(
      :rate_limit,
      :max_pages)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration details for the web data source.
    #
    # @!attribute [rw] source_configuration
    #   The source configuration details for the web data source.
    #   @return [Types::WebSourceConfiguration]
    #
    # @!attribute [rw] crawler_configuration
    #   The Web Crawler configuration details for the web data source.
    #   @return [Types::WebCrawlerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/WebDataSourceConfiguration AWS API Documentation
    #
    class WebDataSourceConfiguration < Struct.new(
      :source_configuration,
      :crawler_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the URL/URLs for the web content that you want to
    # crawl. You should be authorized to crawl the URLs.
    #
    # @!attribute [rw] url_configuration
    #   The configuration of the URL/URLs.
    #   @return [Types::UrlConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/WebSourceConfiguration AWS API Documentation
    #
    class WebSourceConfiguration < Struct.new(
      :url_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end


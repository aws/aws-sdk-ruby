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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/APISchema AWS API Documentation
    #
    class APISchema < Struct.new(
      :payload,
      :s3,
      :unknown)
      SENSITIVE = [:payload]
      include Aws::Structure
      include Aws::Structure::Union

      class Payload < APISchema; end
      class S3 < APISchema; end
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
    # @!attribute [rw] custom_control
    #   To return the action group invocation results directly in the
    #   `InvokeAgent` response, specify `RETURN_CONTROL`.
    #   @return [String]
    #
    # @!attribute [rw] lambda
    #   The Amazon Resource Name (ARN) of the Lambda function containing the
    #   business logic that is carried out upon invoking the action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ActionGroupExecutor AWS API Documentation
    #
    class ActionGroupExecutor < Struct.new(
      :custom_control,
      :lambda,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CustomControl < ActionGroupExecutor; end
      class Lambda < ActionGroupExecutor; end
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
    # @!attribute [rw] agent_arn
    #   The Amazon Resource Name (ARN) of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_name
    #   The name of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_resource_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role with permissions to
    #   invoke API operations on the agent.
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
    # @!attribute [rw] created_at
    #   The time at which the agent was created.
    #   @return [Time]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key that encrypts the
    #   agent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the agent.
    #   @return [String]
    #
    # @!attribute [rw] failure_reasons
    #   Contains reasons that the agent-related API that you invoked failed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] foundation_model
    #   The foundation model used for orchestration by the agent.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_configuration
    #   Details about the guardrail associated with the agent.
    #   @return [Types::GuardrailConfiguration]
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
    # @!attribute [rw] instruction
    #   Instructions that tell the agent what it should do and how it should
    #   interact with users.
    #   @return [String]
    #
    # @!attribute [rw] memory_configuration
    #   Contains memory configuration for the agent.
    #   @return [Types::MemoryConfiguration]
    #
    # @!attribute [rw] prepared_at
    #   The time at which the agent was last prepared.
    #   @return [Time]
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
    # @!attribute [rw] recommended_actions
    #   Contains recommended actions to take for the agent-related API that
    #   you invoked to succeed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] updated_at
    #   The time at which the agent was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/Agent AWS API Documentation
    #
    class Agent < Struct.new(
      :agent_arn,
      :agent_id,
      :agent_name,
      :agent_resource_role_arn,
      :agent_status,
      :agent_version,
      :client_token,
      :created_at,
      :customer_encryption_key_arn,
      :description,
      :failure_reasons,
      :foundation_model,
      :guardrail_configuration,
      :idle_session_ttl_in_seconds,
      :instruction,
      :memory_configuration,
      :prepared_at,
      :prompt_override_configuration,
      :recommended_actions,
      :updated_at)
      SENSITIVE = [:instruction, :prompt_override_configuration]
      include Aws::Structure
    end

    # Contains details about an action group.
    #
    # @!attribute [rw] action_group_executor
    #   The Amazon Resource Name (ARN) of the Lambda function containing the
    #   business logic that is carried out upon invoking the action or the
    #   custom control method for handling the information elicited from the
    #   user.
    #   @return [Types::ActionGroupExecutor]
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
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent to which the action group
    #   belongs.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent to which the action group belongs.
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
    # @!attribute [rw] created_at
    #   The time at which the action group was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the action group.
    #   @return [String]
    #
    # @!attribute [rw] function_schema
    #   Defines functions that each define parameters that the agent needs
    #   to invoke from the user. Each function represents an action in an
    #   action group.
    #   @return [Types::FunctionSchema]
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
    # @!attribute [rw] updated_at
    #   The time at which the action group was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentActionGroup AWS API Documentation
    #
    class AgentActionGroup < Struct.new(
      :action_group_executor,
      :action_group_id,
      :action_group_name,
      :action_group_state,
      :agent_id,
      :agent_version,
      :api_schema,
      :client_token,
      :created_at,
      :description,
      :function_schema,
      :parent_action_signature,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an alias of an agent.
    #
    # @!attribute [rw] agent_alias_arn
    #   The Amazon Resource Name (ARN) of the alias of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_history_events
    #   Contains details about the history of the alias.
    #   @return [Array<Types::AgentAliasHistoryEvent>]
    #
    # @!attribute [rw] agent_alias_id
    #   The unique identifier of the alias of the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_name
    #   The name of the alias of the agent.
    #   @return [String]
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
    #   @return [String]
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent.
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
    # @!attribute [rw] created_at
    #   The time at which the alias of the agent was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the alias of the agent.
    #   @return [String]
    #
    # @!attribute [rw] failure_reasons
    #   Information on the failure of Provisioned Throughput assigned to an
    #   agent alias.
    #   @return [Array<String>]
    #
    # @!attribute [rw] routing_configuration
    #   Contains details about the routing configuration of the alias.
    #   @return [Array<Types::AgentAliasRoutingConfigurationListItem>]
    #
    # @!attribute [rw] updated_at
    #   The time at which the alias was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentAlias AWS API Documentation
    #
    class AgentAlias < Struct.new(
      :agent_alias_arn,
      :agent_alias_history_events,
      :agent_alias_id,
      :agent_alias_name,
      :agent_alias_status,
      :agent_id,
      :client_token,
      :created_at,
      :description,
      :failure_reasons,
      :routing_configuration,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the history of the alias.
    #
    # @!attribute [rw] end_date
    #   The date that the alias stopped being associated to the version in
    #   the `routingConfiguration` object
    #   @return [Time]
    #
    # @!attribute [rw] routing_configuration
    #   Contains details about the version of the agent with which the alias
    #   is associated.
    #   @return [Array<Types::AgentAliasRoutingConfigurationListItem>]
    #
    # @!attribute [rw] start_date
    #   The date that the alias began being associated to the version in the
    #   `routingConfiguration` object.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentAliasHistoryEvent AWS API Documentation
    #
    class AgentAliasHistoryEvent < Struct.new(
      :end_date,
      :routing_configuration,
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
    # @!attribute [rw] agent_alias_status
    #   The status of the alias.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the alias of the agent was created.
    #   @return [Time]
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
    # @!attribute [rw] updated_at
    #   The time at which the alias was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentAliasSummary AWS API Documentation
    #
    class AgentAliasSummary < Struct.new(
      :agent_alias_id,
      :agent_alias_name,
      :agent_alias_status,
      :created_at,
      :description,
      :routing_configuration,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines an agent node in your flow. You specify the agent to invoke at
    # this point in the flow. For more information, see [Node types in
    # Amazon Bedrock works][1] in the Amazon Bedrock User Guide.
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
    # @!attribute [rw] created_at
    #   The time at which the association between the agent and the
    #   knowledge base was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the association between the agent and the
    #   knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the association between the agent and the
    #   knowledge base.
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
    # @!attribute [rw] updated_at
    #   The time at which the association between the agent and the
    #   knowledge base was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentKnowledgeBase AWS API Documentation
    #
    class AgentKnowledgeBase < Struct.new(
      :agent_id,
      :agent_version,
      :created_at,
      :description,
      :knowledge_base_id,
      :knowledge_base_state,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a knowledge base associated with an agent.
    #
    # @!attribute [rw] description
    #   The description of the knowledge base associated with an agent.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base associated with an
    #   agent.
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
      :description,
      :knowledge_base_id,
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
    # @!attribute [rw] guardrail_configuration
    #   Details about the guardrail associated with the agent.
    #   @return [Types::GuardrailConfiguration]
    #
    # @!attribute [rw] latest_agent_version
    #   The latest version of the agent.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time at which the agent was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentSummary AWS API Documentation
    #
    class AgentSummary < Struct.new(
      :agent_id,
      :agent_name,
      :agent_status,
      :description,
      :guardrail_configuration,
      :latest_agent_version,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a version of an agent.
    #
    # @!attribute [rw] agent_arn
    #   The Amazon Resource Name (ARN) of the agent that the version belongs
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent that the version belongs to.
    #   @return [String]
    #
    # @!attribute [rw] agent_name
    #   The name of the agent that the version belongs to.
    #   @return [String]
    #
    # @!attribute [rw] agent_resource_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role with permissions to
    #   invoke API operations on the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_status
    #   The status of the agent that the version belongs to.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the version was created.
    #   @return [Time]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key that encrypts the
    #   agent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the version.
    #   @return [String]
    #
    # @!attribute [rw] failure_reasons
    #   A list of reasons that the API operation on the version failed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] foundation_model
    #   The foundation model that the version invokes.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_configuration
    #   Details about the guardrail associated with the agent.
    #   @return [Types::GuardrailConfiguration]
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
    # @!attribute [rw] instruction
    #   The instructions provided to the agent.
    #   @return [String]
    #
    # @!attribute [rw] memory_configuration
    #   Contains details of the memory configuration on the version of the
    #   agent.
    #   @return [Types::MemoryConfiguration]
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
    # @!attribute [rw] recommended_actions
    #   A list of recommended actions to take for the failed API operation
    #   on the version to succeed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] updated_at
    #   The time at which the version was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version number.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentVersion AWS API Documentation
    #
    class AgentVersion < Struct.new(
      :agent_arn,
      :agent_id,
      :agent_name,
      :agent_resource_role_arn,
      :agent_status,
      :created_at,
      :customer_encryption_key_arn,
      :description,
      :failure_reasons,
      :foundation_model,
      :guardrail_configuration,
      :idle_session_ttl_in_seconds,
      :instruction,
      :memory_configuration,
      :prompt_override_configuration,
      :recommended_actions,
      :updated_at,
      :version)
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
    # @!attribute [rw] description
    #   The description of the version of the agent.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_configuration
    #   Details about the guardrail associated with the agent.
    #   @return [Types::GuardrailConfiguration]
    #
    # @!attribute [rw] updated_at
    #   The time at which the version was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentVersionSummary AWS API Documentation
    #
    class AgentVersionSummary < Struct.new(
      :agent_name,
      :agent_status,
      :agent_version,
      :created_at,
      :description,
      :guardrail_configuration,
      :updated_at)
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
    # @!attribute [rw] description
    #   A description of what the agent should use the knowledge base for.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to associate with the
    #   agent.
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
      :description,
      :knowledge_base_id,
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

    # The vector configuration details for the Bedrock embeddings model.
    #
    # @!attribute [rw] dimensions
    #   The dimensions details for the vector configuration used on the
    #   Bedrock embeddings model.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/BedrockEmbeddingModelConfiguration AWS API Documentation
    #
    class BedrockEmbeddingModelConfiguration < Struct.new(
      :dimensions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for a foundation model used to parse documents for a data
    # source.
    #
    # @!attribute [rw] model_arn
    #   The model's ARN.
    #   @return [String]
    #
    # @!attribute [rw] parsing_prompt
    #   Instructions for interpreting the contents of a document.
    #   @return [Types::ParsingPrompt]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/BedrockFoundationModelConfiguration AWS API Documentation
    #
    class BedrockFoundationModelConfiguration < Struct.new(
      :model_arn,
      :parsing_prompt)
      SENSITIVE = []
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
    # information, see [Node types in Amazon Bedrock works][1] in the Amazon
    # Bedrock User Guide.
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
    # [Node types in Amazon Bedrock works][1] in the Amazon Bedrock User
    # Guide.
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
      SENSITIVE = [:conditions]
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
    # @!attribute [rw] crawler_configuration
    #   The configuration of the Confluence content. For example,
    #   configuring specific types of Confluence content.
    #   @return [Types::ConfluenceCrawlerConfiguration]
    #
    # @!attribute [rw] source_configuration
    #   The endpoint information to connect to your Confluence data source.
    #   @return [Types::ConfluenceSourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ConfluenceDataSourceConfiguration AWS API Documentation
    #
    class ConfluenceDataSourceConfiguration < Struct.new(
      :crawler_configuration,
      :source_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The endpoint information to connect to your Confluence data source.
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
    # @!attribute [rw] host_type
    #   The supported host type, whether online/cloud or server/on-premises.
    #   @return [String]
    #
    # @!attribute [rw] host_url
    #   The Confluence host URL or instance URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ConfluenceSourceConfiguration AWS API Documentation
    #
    class ConfluenceSourceConfiguration < Struct.new(
      :auth_type,
      :credentials_secret_arn,
      :host_type,
      :host_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of filtering the data source content. For example,
    # configuring regular expression patterns to include or exclude certain
    # content.
    #
    # @!attribute [rw] pattern_object_filter
    #   The configuration of filtering certain objects or content types of
    #   the data source.
    #   @return [Types::PatternObjectFilterConfiguration]
    #
    # @!attribute [rw] type
    #   The type of filtering that you want to apply to certain objects or
    #   content of the data source. For example, the `PATTERN` type is
    #   regular expression patterns you can apply to filter your content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CrawlFilterConfiguration AWS API Documentation
    #
    class CrawlFilterConfiguration < Struct.new(
      :pattern_object_filter,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_group_executor
    #   The Amazon Resource Name (ARN) of the Lambda function containing the
    #   business logic that is carried out upon invoking the action or the
    #   custom control method for handling the information elicited from the
    #   user.
    #   @return [Types::ActionGroupExecutor]
    #
    # @!attribute [rw] action_group_name
    #   The name to give the action group.
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
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent for which to create the action
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent for which to create the action group.
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
    # @!attribute [rw] function_schema
    #   Contains details about the function schema for the action group or
    #   the JSON or YAML-formatted payload defining the schema.
    #   @return [Types::FunctionSchema]
    #
    # @!attribute [rw] parent_action_group_signature
    #   To allow your agent to request the user for additional information
    #   when trying to complete a task, set this field to
    #   `AMAZON.UserInput`. You must leave the `description`, `apiSchema`,
    #   and `actionGroupExecutor` fields blank for this action group.
    #
    #   To allow your agent to generate, run, and troubleshoot code when
    #   trying to complete a task, set this field to
    #   `AMAZON.CodeInterpreter`. You must leave the `description`,
    #   `apiSchema`, and `actionGroupExecutor` fields blank for this action
    #   group.
    #
    #   During orchestration, if your agent determines that it needs to
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateAgentActionGroupRequest AWS API Documentation
    #
    class CreateAgentActionGroupRequest < Struct.new(
      :action_group_executor,
      :action_group_name,
      :action_group_state,
      :agent_id,
      :agent_version,
      :api_schema,
      :client_token,
      :description,
      :function_schema,
      :parent_action_group_signature)
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

    # @!attribute [rw] agent_alias_name
    #   The name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent.
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
      :agent_alias_name,
      :agent_id,
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
    # @!attribute [rw] agent_resource_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role with permissions to
    #   invoke API operations on the agent.
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
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key with which to encrypt
    #   the agent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the agent.
    #   @return [String]
    #
    # @!attribute [rw] foundation_model
    #   The foundation model to be used for orchestration by the agent you
    #   create.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_configuration
    #   The unique Guardrail configuration assigned to the agent when it is
    #   created.
    #   @return [Types::GuardrailConfiguration]
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
    # @!attribute [rw] instruction
    #   Instructions that tell the agent what it should do and how it should
    #   interact with users.
    #   @return [String]
    #
    # @!attribute [rw] memory_configuration
    #   Contains the details of the memory configured for the agent.
    #   @return [Types::MemoryConfiguration]
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
    # @!attribute [rw] tags
    #   Any tags that you want to attach to the agent.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateAgentRequest AWS API Documentation
    #
    class CreateAgentRequest < Struct.new(
      :agent_name,
      :agent_resource_role_arn,
      :client_token,
      :customer_encryption_key_arn,
      :description,
      :foundation_model,
      :guardrail_configuration,
      :idle_session_ttl_in_seconds,
      :instruction,
      :memory_configuration,
      :prompt_override_configuration,
      :tags)
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
    # @!attribute [rw] data_source_configuration
    #   The connection configuration for the data source.
    #   @return [Types::DataSourceConfiguration]
    #
    # @!attribute [rw] description
    #   A description of the data source.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to which to add the data
    #   source.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data source.
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
      :client_token,
      :data_deletion_policy,
      :data_source_configuration,
      :description,
      :knowledge_base_id,
      :name,
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
    #   A description for the alias.
    #   @return [String]
    #
    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow for which to create an alias.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   Contains information about the version to which to map the alias.
    #   @return [Array<Types::FlowAliasRoutingConfigurationListItem>]
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
      :client_token,
      :description,
      :flow_identifier,
      :name,
      :routing_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the alias.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the alias was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the alias.
    #   @return [String]
    #
    # @!attribute [rw] flow_id
    #   The unique identifier of the flow that the alias belongs to.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the alias.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   Contains information about the version that the alias is mapped to.
    #   @return [Array<Types::FlowAliasRoutingConfigurationListItem>]
    #
    # @!attribute [rw] updated_at
    #   The time at which the alias of the flow was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateFlowAliasResponse AWS API Documentation
    #
    class CreateFlowAliasResponse < Struct.new(
      :arn,
      :created_at,
      :description,
      :flow_id,
      :id,
      :name,
      :routing_configuration,
      :updated_at)
      SENSITIVE = []
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
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key to encrypt the flow.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   A definition of the nodes and connections between nodes in the flow.
    #   @return [Types::FlowDefinition]
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
    # @!attribute [rw] name
    #   A name for the flow.
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
      :client_token,
      :customer_encryption_key_arn,
      :definition,
      :description,
      :execution_role_arn,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the flow.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the flow was created.
    #   @return [Time]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key that you encrypted the
    #   flow with.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   A definition of the nodes and connections between nodes in the flow.
    #   @return [Types::FlowDefinition]
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
    # @!attribute [rw] id
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the flow.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the flow. When you submit this request, the status
    #   will be `NotPrepared`. If creation fails, the status becomes
    #   `Failed`.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateFlowResponse AWS API Documentation
    #
    class CreateFlowResponse < Struct.new(
      :arn,
      :created_at,
      :customer_encryption_key_arn,
      :definition,
      :description,
      :execution_role_arn,
      :id,
      :name,
      :status,
      :updated_at,
      :version)
      SENSITIVE = []
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
    # @!attribute [rw] description
    #   A description of the version of the flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow that you want to create a version
    #   of.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateFlowVersionRequest AWS API Documentation
    #
    class CreateFlowVersionRequest < Struct.new(
      :client_token,
      :description,
      :flow_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the flow.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the flow was created.
    #   @return [Time]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The KMS key that the flow is encrypted with.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   A definition of the nodes and connections in the flow.
    #   @return [Types::FlowDefinition]
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
    # @!attribute [rw] id
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the version.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the flow.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the flow that was created. Versions are numbered
    #   incrementally, starting from 1.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateFlowVersionResponse AWS API Documentation
    #
    class CreateFlowVersionResponse < Struct.new(
      :arn,
      :created_at,
      :customer_encryption_key_arn,
      :definition,
      :description,
      :execution_role_arn,
      :id,
      :name,
      :status,
      :version)
      SENSITIVE = []
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
    # @!attribute [rw] description
    #   A description of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_configuration
    #   Contains details about the embeddings model used for the knowledge
    #   base.
    #   @return [Types::KnowledgeBaseConfiguration]
    #
    # @!attribute [rw] name
    #   A name for the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role with permissions to
    #   invoke API operations on the knowledge base.
    #   @return [String]
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
      :description,
      :knowledge_base_configuration,
      :name,
      :role_arn,
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
    # @!attribute [rw] description
    #   A description for the prompt.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the prompt.
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
    # @!attribute [rw] variants
    #   A list of objects, each containing details about a variant of the
    #   prompt.
    #   @return [Array<Types::PromptVariant>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreatePromptRequest AWS API Documentation
    #
    class CreatePromptRequest < Struct.new(
      :client_token,
      :customer_encryption_key_arn,
      :default_variant,
      :description,
      :name,
      :tags,
      :variants)
      SENSITIVE = [:variants]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the prompt was created.
    #   @return [Time]
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
    # @!attribute [rw] description
    #   The description of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time at which the prompt was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] variants
    #   A list of objects, each containing details about a variant of the
    #   prompt.
    #   @return [Array<Types::PromptVariant>]
    #
    # @!attribute [rw] version
    #   The version of the prompt. When you create a prompt, the version
    #   created is the `DRAFT` version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreatePromptResponse AWS API Documentation
    #
    class CreatePromptResponse < Struct.new(
      :arn,
      :created_at,
      :customer_encryption_key_arn,
      :default_variant,
      :description,
      :id,
      :name,
      :updated_at,
      :variants,
      :version)
      SENSITIVE = [:variants]
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
    # @!attribute [rw] description
    #   A description for the version of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] prompt_identifier
    #   The unique identifier of the prompt that you want to create a
    #   version of.
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
      :client_token,
      :description,
      :prompt_identifier,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the version of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the prompt was created.
    #   @return [Time]
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
    # @!attribute [rw] description
    #   A description for the version.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time at which the prompt was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] variants
    #   A list of objects, each containing details about a variant of the
    #   prompt.
    #   @return [Array<Types::PromptVariant>]
    #
    # @!attribute [rw] version
    #   The version of the prompt that was created. Versions are numbered
    #   incrementally, starting from 1.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreatePromptVersionResponse AWS API Documentation
    #
    class CreatePromptVersionResponse < Struct.new(
      :arn,
      :created_at,
      :customer_encryption_key_arn,
      :default_variant,
      :description,
      :id,
      :name,
      :updated_at,
      :variants,
      :version)
      SENSITIVE = [:variants]
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

    # Contains details about a data source.
    #
    # @!attribute [rw] created_at
    #   The time at which the data source was created.
    #   @return [Time]
    #
    # @!attribute [rw] data_deletion_policy
    #   The data deletion policy for the data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_configuration
    #   The connection configuration for the data source.
    #   @return [Types::DataSourceConfiguration]
    #
    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the data source.
    #   @return [String]
    #
    # @!attribute [rw] failure_reasons
    #   The detailed reasons on the failure to delete a data source.
    #   @return [Array<String>]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to which the data source
    #   belongs.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   Contains details about the configuration of the server-side
    #   encryption.
    #   @return [Types::ServerSideEncryptionConfiguration]
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
    # @!attribute [rw] updated_at
    #   The time at which the data source was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] vector_ingestion_configuration
    #   Contains details about how to ingest the documents in the data
    #   source.
    #   @return [Types::VectorIngestionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DataSource AWS API Documentation
    #
    class DataSource < Struct.new(
      :created_at,
      :data_deletion_policy,
      :data_source_configuration,
      :data_source_id,
      :description,
      :failure_reasons,
      :knowledge_base_id,
      :name,
      :server_side_encryption_configuration,
      :status,
      :updated_at,
      :vector_ingestion_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connection configuration for the data source.
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
    # @!attribute [rw] s3_configuration
    #   The configuration information to connect to Amazon S3 as your data
    #   source.
    #   @return [Types::S3DataSourceConfiguration]
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
    # @!attribute [rw] type
    #   The type of data source.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DataSourceConfiguration AWS API Documentation
    #
    class DataSourceConfiguration < Struct.new(
      :confluence_configuration,
      :s3_configuration,
      :salesforce_configuration,
      :share_point_configuration,
      :type,
      :web_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a data source.
    #
    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the data source.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to which the data source
    #   belongs.
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
    # @!attribute [rw] updated_at
    #   The time at which the data source was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DataSourceSummary AWS API Documentation
    #
    class DataSourceSummary < Struct.new(
      :data_source_id,
      :description,
      :knowledge_base_id,
      :name,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_group_id
    #   The unique identifier of the action group to delete.
    #   @return [String]
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent that the action group belongs to.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent that the action group belongs to.
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
      :action_group_id,
      :agent_id,
      :agent_version,
      :skip_resource_in_use_check)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteAgentActionGroupResponse AWS API Documentation
    #
    class DeleteAgentActionGroupResponse < Aws::EmptyStructure; end

    # @!attribute [rw] agent_alias_id
    #   The unique identifier of the alias to delete.
    #   @return [String]
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent that the alias belongs to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteAgentAliasRequest AWS API Documentation
    #
    class DeleteAgentAliasRequest < Struct.new(
      :agent_alias_id,
      :agent_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_alias_id
    #   The unique identifier of the alias that was deleted.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_status
    #   The status of the alias.
    #   @return [String]
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent that the alias belongs to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteAgentAliasResponse AWS API Documentation
    #
    class DeleteAgentAliasResponse < Struct.new(
      :agent_alias_id,
      :agent_alias_status,
      :agent_id)
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
    # @!attribute [rw] agent_status
    #   The status of the agent version.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteAgentVersionResponse AWS API Documentation
    #
    class DeleteAgentVersionResponse < Struct.new(
      :agent_id,
      :agent_status,
      :agent_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source to delete.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base from which to delete the
    #   data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteDataSourceRequest AWS API Documentation
    #
    class DeleteDataSourceRequest < Struct.new(
      :data_source_id,
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source that was deleted.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to which the data source
    #   that was deleted belonged.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteDataSourceResponse AWS API Documentation
    #
    class DeleteDataSourceResponse < Struct.new(
      :data_source_id,
      :knowledge_base_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alias_identifier
    #   The unique identifier of the alias to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow that the alias belongs to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteFlowAliasRequest AWS API Documentation
    #
    class DeleteFlowAliasRequest < Struct.new(
      :alias_identifier,
      :flow_identifier)
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
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the alias.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the alias was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the alias.
    #   @return [String]
    #
    # @!attribute [rw] flow_id
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the alias of the flow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   A list of configurations about the versions that the alias maps to.
    #   Currently, you can only specify one.
    #   @return [Array<Types::FlowAliasRoutingConfigurationListItem>]
    #
    # @!attribute [rw] updated_at
    #   The time at which the alias was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowAliasSummary AWS API Documentation
    #
    class FlowAliasSummary < Struct.new(
      :arn,
      :created_at,
      :description,
      :flow_id,
      :id,
      :name,
      :routing_configuration,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a condition in the condition node.
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
    # @!attribute [rw] name
    #   A name for the condition that you can reference.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowCondition AWS API Documentation
    #
    class FlowCondition < Struct.new(
      :expression,
      :name)
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
    # @!attribute [rw] configuration
    #   The configuration of the connection.
    #   @return [Types::FlowConnectionConfiguration]
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
    # @!attribute [rw] type
    #   Whether the source node that the connection begins from is a
    #   condition node (`Conditional`) or not (`Data`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowConnection AWS API Documentation
    #
    class FlowConnection < Struct.new(
      :configuration,
      :name,
      :source,
      :target,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the connection.
    #
    # @note FlowConnectionConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note FlowConnectionConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FlowConnectionConfiguration corresponding to the set member.
    #
    # @!attribute [rw] conditional
    #   The configuration of a connection originating from a Condition node.
    #   @return [Types::FlowConditionalConnectionConfiguration]
    #
    # @!attribute [rw] data
    #   The configuration of a connection originating from a node that
    #   isn't a Condition node.
    #   @return [Types::FlowDataConnectionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowConnectionConfiguration AWS API Documentation
    #
    class FlowConnectionConfiguration < Struct.new(
      :conditional,
      :data,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Conditional < FlowConnectionConfiguration; end
      class Data < FlowConnectionConfiguration; end
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
    # @!attribute [rw] connections
    #   An array of connection definitions in the flow.
    #   @return [Array<Types::FlowConnection>]
    #
    # @!attribute [rw] nodes
    #   An array of node definitions in the flow.
    #   @return [Array<Types::FlowNode>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowDefinition AWS API Documentation
    #
    class FlowDefinition < Struct.new(
      :connections,
      :nodes)
      SENSITIVE = [:nodes]
      include Aws::Structure
    end

    # Contains configurations about a node in the flow.
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
    # @!attribute [rw] name
    #   A name for the node.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   A list of objects, each of which contains information about an
    #   output from the node.
    #   @return [Array<Types::FlowNodeOutput>]
    #
    # @!attribute [rw] type
    #   The type of node. This value must match the name of the key that you
    #   provide in the configuration you provide in the
    #   `FlowNodeConfiguration` field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowNode AWS API Documentation
    #
    class FlowNode < Struct.new(
      :configuration,
      :inputs,
      :name,
      :outputs,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for a node in your flow. For more information,
    # see [Node types in Amazon Bedrock works][1] in the Amazon Bedrock User
    # Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/flows-nodes.html
    #
    # @note FlowNodeConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note FlowNodeConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FlowNodeConfiguration corresponding to the set member.
    #
    # @!attribute [rw] agent
    #   Contains configurations for an agent node in your flow. Invokes an
    #   alias of an agent and returns the response.
    #   @return [Types::AgentFlowNodeConfiguration]
    #
    # @!attribute [rw] collector
    #   Contains configurations for a collector node in your flow. Collects
    #   an iteration of inputs and consolidates them into an array of
    #   outputs.
    #   @return [Types::CollectorFlowNodeConfiguration]
    #
    # @!attribute [rw] condition
    #   Contains configurations for a Condition node in your flow. Defines
    #   conditions that lead to different branches of the flow.
    #   @return [Types::ConditionFlowNodeConfiguration]
    #
    # @!attribute [rw] input
    #   Contains configurations for an input flow node in your flow. The
    #   first node in the flow. `inputs` can't be specified for this node.
    #   @return [Types::InputFlowNodeConfiguration]
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
    # @!attribute [rw] knowledge_base
    #   Contains configurations for a knowledge base node in your flow.
    #   Queries a knowledge base and returns the retrieved results or
    #   generated response.
    #   @return [Types::KnowledgeBaseFlowNodeConfiguration]
    #
    # @!attribute [rw] lambda_function
    #   Contains configurations for a Lambda function node in your flow.
    #   Invokes an Lambda function.
    #   @return [Types::LambdaFunctionFlowNodeConfiguration]
    #
    # @!attribute [rw] lex
    #   Contains configurations for a Lex node in your flow. Invokes an
    #   Amazon Lex bot to identify the intent of the input and return the
    #   intent as the output.
    #   @return [Types::LexFlowNodeConfiguration]
    #
    # @!attribute [rw] output
    #   Contains configurations for an output flow node in your flow. The
    #   last node in the flow. `outputs` can't be specified for this node.
    #   @return [Types::OutputFlowNodeConfiguration]
    #
    # @!attribute [rw] prompt
    #   Contains configurations for a prompt node in your flow. Runs a
    #   prompt and generates the model response as the output. You can use a
    #   prompt from Prompt management or you can configure one in this node.
    #   @return [Types::PromptFlowNodeConfiguration]
    #
    # @!attribute [rw] retrieval
    #   Contains configurations for a Retrieval node in your flow. Retrieves
    #   data from an Amazon S3 location and returns it as the output.
    #   @return [Types::RetrievalFlowNodeConfiguration]
    #
    # @!attribute [rw] storage
    #   Contains configurations for a Storage node in your flow. Stores an
    #   input in an Amazon S3 location.
    #   @return [Types::StorageFlowNodeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowNodeConfiguration AWS API Documentation
    #
    class FlowNodeConfiguration < Struct.new(
      :agent,
      :collector,
      :condition,
      :input,
      :iterator,
      :knowledge_base,
      :lambda_function,
      :lex,
      :output,
      :prompt,
      :retrieval,
      :storage,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Agent < FlowNodeConfiguration; end
      class Collector < FlowNodeConfiguration; end
      class Condition < FlowNodeConfiguration; end
      class Input < FlowNodeConfiguration; end
      class Iterator < FlowNodeConfiguration; end
      class KnowledgeBase < FlowNodeConfiguration; end
      class LambdaFunction < FlowNodeConfiguration; end
      class Lex < FlowNodeConfiguration; end
      class Output < FlowNodeConfiguration; end
      class Prompt < FlowNodeConfiguration; end
      class Retrieval < FlowNodeConfiguration; end
      class Storage < FlowNodeConfiguration; end
      class Unknown < FlowNodeConfiguration; end
    end

    # Contains configurations for an input to a node.
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
    # @!attribute [rw] name
    #   A name for the input that you can reference.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type of the input. If the input doesn't match this type at
    #   runtime, a validation error will be thrown.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowNodeInput AWS API Documentation
    #
    class FlowNodeInput < Struct.new(
      :expression,
      :name,
      :type)
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
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the flow.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the flow was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the flow.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the flow.
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
      :arn,
      :created_at,
      :description,
      :id,
      :name,
      :status,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowValidation AWS API Documentation
    #
    class FlowValidation < Struct.new(
      :message,
      :severity)
      SENSITIVE = []
      include Aws::Structure
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
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the flow that the version belongs
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at the version was created.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the flow.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/FlowVersionSummary AWS API Documentation
    #
    class FlowVersionSummary < Struct.new(
      :arn,
      :created_at,
      :id,
      :status,
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
    # @!attribute [rw] description
    #   A description of the function and its purpose.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the function.
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
      :description,
      :name,
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

    # @!attribute [rw] action_group_id
    #   The unique identifier of the action group for which to get
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent that the action group belongs to.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent that the action group belongs to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentActionGroupRequest AWS API Documentation
    #
    class GetAgentActionGroupRequest < Struct.new(
      :action_group_id,
      :agent_id,
      :agent_version)
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

    # @!attribute [rw] agent_alias_id
    #   The unique identifier of the alias for which to get information.
    #   @return [String]
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent to which the alias to get
    #   information belongs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentAliasRequest AWS API Documentation
    #
    class GetAgentAliasRequest < Struct.new(
      :agent_alias_id,
      :agent_id)
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

    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base that the data source was
    #   added to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetDataSourceRequest AWS API Documentation
    #
    class GetDataSourceRequest < Struct.new(
      :data_source_id,
      :knowledge_base_id)
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

    # @!attribute [rw] alias_identifier
    #   The unique identifier of the alias for which to retrieve
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow that the alias belongs to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetFlowAliasRequest AWS API Documentation
    #
    class GetFlowAliasRequest < Struct.new(
      :alias_identifier,
      :flow_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the flow.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the flow was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_id
    #   The unique identifier of the flow that the alias belongs to.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the alias of the flow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   Contains information about the version that the alias is mapped to.
    #   @return [Array<Types::FlowAliasRoutingConfigurationListItem>]
    #
    # @!attribute [rw] updated_at
    #   The time at which the alias was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetFlowAliasResponse AWS API Documentation
    #
    class GetFlowAliasResponse < Struct.new(
      :arn,
      :created_at,
      :description,
      :flow_id,
      :id,
      :name,
      :routing_configuration,
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

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the flow.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the flow was created.
    #   @return [Time]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key that the flow is
    #   encrypted with.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The definition of the nodes and connections between the nodes in the
    #   flow.
    #   @return [Types::FlowDefinition]
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
    # @!attribute [rw] id
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the flow.
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
    # @!attribute [rw] updated_at
    #   The time at which the flow was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] validations
    #   A list of validation error messages related to the last failed
    #   operation on the flow.
    #   @return [Array<Types::FlowValidation>]
    #
    # @!attribute [rw] version
    #   The version of the flow for which information was retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetFlowResponse AWS API Documentation
    #
    class GetFlowResponse < Struct.new(
      :arn,
      :created_at,
      :customer_encryption_key_arn,
      :definition,
      :description,
      :execution_role_arn,
      :id,
      :name,
      :status,
      :updated_at,
      :validations,
      :version)
      SENSITIVE = []
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

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the flow.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the flow was created.
    #   @return [Time]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key that the version of
    #   the flow is encrypted with.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The definition of the nodes and connections between nodes in the
    #   flow.
    #   @return [Types::FlowDefinition]
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
    # @!attribute [rw] id
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the version.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the flow.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the flow for which information was retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetFlowVersionResponse AWS API Documentation
    #
    class GetFlowVersionResponse < Struct.new(
      :arn,
      :created_at,
      :customer_encryption_key_arn,
      :definition,
      :description,
      :execution_role_arn,
      :id,
      :name,
      :status,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source in the ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_job_id
    #   The unique identifier of the ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base for which the ingestion
    #   job applies.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetIngestionJobRequest AWS API Documentation
    #
    class GetIngestionJobRequest < Struct.new(
      :data_source_id,
      :ingestion_job_id,
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingestion_job
    #   Contains details about the ingestion job.
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
    #   The unique identifier of the knowledge base for which to get
    #   information.
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

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the prompt or the prompt version
    #   (if you specified a version in the request).
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the prompt was created.
    #   @return [Time]
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
    # @!attribute [rw] description
    #   The descriptino of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time at which the prompt was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] variants
    #   A list of objects, each containing details about a variant of the
    #   prompt.
    #   @return [Array<Types::PromptVariant>]
    #
    # @!attribute [rw] version
    #   The version of the prompt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetPromptResponse AWS API Documentation
    #
    class GetPromptResponse < Struct.new(
      :arn,
      :created_at,
      :customer_encryption_key_arn,
      :default_variant,
      :description,
      :id,
      :name,
      :updated_at,
      :variants,
      :version)
      SENSITIVE = [:variants]
      include Aws::Structure
    end

    # Details about the guardrail associated with an agent.
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

    # Contains inference parameters to use when the agent invokes a
    # foundation model in the part of the agent sequence defined by the
    # `promptType`. For more information, see [Inference parameters for
    # foundation models][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
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
    # @!attribute [rw] temperature
    #   The likelihood of the model selecting higher-probability options
    #   while generating a response. A lower value makes the model more
    #   likely to choose higher-probability options, while a higher value
    #   makes the model more likely to choose lower-probability options.
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
    # @!attribute [rw] top_p
    #   While generating a response, the model determines the probability of
    #   the following token at each point of generation. The value that you
    #   set for `Top P` determines the number of most-likely candidates from
    #   which the model chooses the next token in the sequence. For example,
    #   if you set `topP` to 80, the model only selects the next token from
    #   the top 80% of the probability distribution of next tokens.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/InferenceConfiguration AWS API Documentation
    #
    class InferenceConfiguration < Struct.new(
      :maximum_length,
      :stop_sequences,
      :temperature,
      :top_k,
      :top_p)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an ingestion job, which converts a data source
    # to embeddings for a vector store in knowledge base.
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
    # @!attribute [rw] data_source_id
    #   The unique identifier of the ingested data source.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] failure_reasons
    #   A list of reasons that the ingestion job failed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ingestion_job_id
    #   The unique identifier of the ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to which the data source
    #   is being added.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The time at which the ingestion job started.
    #   @return [Time]
    #
    # @!attribute [rw] statistics
    #   Contains statistics about the ingestion job.
    #   @return [Types::IngestionJobStatistics]
    #
    # @!attribute [rw] status
    #   The status of the ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time at which the ingestion job was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/IngestionJob AWS API Documentation
    #
    class IngestionJob < Struct.new(
      :data_source_id,
      :description,
      :failure_reasons,
      :ingestion_job_id,
      :knowledge_base_id,
      :started_at,
      :statistics,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a filter by which to filter the results.
    #
    # @!attribute [rw] attribute
    #   The attribute by which to filter the results.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The operation to carry out between the attribute and the values.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of values for the attribute.
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

    # Parameters by which to sort the results.
    #
    # @!attribute [rw] attribute
    #   The attribute by which to sort the results.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   The order by which to sort the results.
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

    # Contains the statistics for the ingestion job.
    #
    # @!attribute [rw] number_of_documents_deleted
    #   The number of source documents that was deleted.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_documents_failed
    #   The number of source documents that failed to be ingested.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_documents_scanned
    #   The total number of source documents that were scanned. Includes
    #   new, updated, and unchanged documents.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_metadata_documents_modified
    #   The number of metadata files that were updated or deleted.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_metadata_documents_scanned
    #   The total number of metadata files that were scanned. Includes new,
    #   updated, and unchanged files.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_modified_documents_indexed
    #   The number of modified source documents in the data source that were
    #   successfully indexed.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_new_documents_indexed
    #   The number of new source documents in the data source that were
    #   successfully indexed.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/IngestionJobStatistics AWS API Documentation
    #
    class IngestionJobStatistics < Struct.new(
      :number_of_documents_deleted,
      :number_of_documents_failed,
      :number_of_documents_scanned,
      :number_of_metadata_documents_modified,
      :number_of_metadata_documents_scanned,
      :number_of_modified_documents_indexed,
      :number_of_new_documents_indexed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an ingestion job.
    #
    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source in the ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_job_id
    #   The unique identifier of the ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to which the data source
    #   is added.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The time at which the ingestion job was started.
    #   @return [Time]
    #
    # @!attribute [rw] statistics
    #   Contains statistics for the ingestion job.
    #   @return [Types::IngestionJobStatistics]
    #
    # @!attribute [rw] status
    #   The status of the ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time at which the ingestion job was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/IngestionJobSummary AWS API Documentation
    #
    class IngestionJobSummary < Struct.new(
      :data_source_id,
      :description,
      :ingestion_job_id,
      :knowledge_base_id,
      :started_at,
      :statistics,
      :status,
      :updated_at)
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

    # Contains information about a knowledge base.
    #
    # @!attribute [rw] created_at
    #   The time at which the knowledge base was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] failure_reasons
    #   A list of reasons that the API operation on the knowledge base
    #   failed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_configuration
    #   Contains details about the embeddings configuration of the knowledge
    #   base.
    #   @return [Types::KnowledgeBaseConfiguration]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role with permissions to
    #   invoke API operations on the knowledge base.
    #   @return [String]
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
    # @!attribute [rw] storage_configuration
    #   Contains details about the storage configuration of the knowledge
    #   base.
    #   @return [Types::StorageConfiguration]
    #
    # @!attribute [rw] updated_at
    #   The time at which the knowledge base was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/KnowledgeBase AWS API Documentation
    #
    class KnowledgeBase < Struct.new(
      :created_at,
      :description,
      :failure_reasons,
      :knowledge_base_arn,
      :knowledge_base_configuration,
      :knowledge_base_id,
      :name,
      :role_arn,
      :status,
      :storage_configuration,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the embeddings configuration of the knowledge
    # base.
    #
    # @!attribute [rw] type
    #   The type of data that the data source is converted into for the
    #   knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] vector_knowledge_base_configuration
    #   Contains details about the embeddings model that'sused to convert
    #   the data source.
    #   @return [Types::VectorKnowledgeBaseConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/KnowledgeBaseConfiguration AWS API Documentation
    #
    class KnowledgeBaseConfiguration < Struct.new(
      :type,
      :vector_knowledge_base_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for a knowledge base node in a flow. This node
    # takes a query as the input and returns, as the output, the retrieved
    # responses directly (as an array) or a response generated based on the
    # retrieved responses. For more information, see [Node types in Amazon
    # Bedrock works][1] in the Amazon Bedrock User Guide.
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
    #   The unique identifier of the model to use to generate a response
    #   from the query results. Omit this field if you want to return the
    #   retrieved results as an array.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/KnowledgeBaseFlowNodeConfiguration AWS API Documentation
    #
    class KnowledgeBaseFlowNodeConfiguration < Struct.new(
      :knowledge_base_id,
      :model_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a knowledge base.
    #
    # @!attribute [rw] description
    #   The description of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time at which the knowledge base was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/KnowledgeBaseSummary AWS API Documentation
    #
    class KnowledgeBaseSummary < Struct.new(
      :description,
      :knowledge_base_id,
      :name,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for a Lambda function node in the flow. You
    # specify the Lambda function to invoke and the inputs into the
    # function. The output is the response that is defined in the Lambda
    # function. For more information, see [Node types in Amazon Bedrock
    # works][1] in the Amazon Bedrock User Guide.
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
    # For more information, see [Node types in Amazon Bedrock works][1] in
    # the Amazon Bedrock User Guide.
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

    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source for which to return
    #   ingestion jobs.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Contains a definition of a filter for which to filter the results.
    #   @return [Array<Types::IngestionJobFilter>]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base for which to return
    #   ingestion jobs.
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
    # @!attribute [rw] sort_by
    #   Contains details about how to sort the results.
    #   @return [Types::IngestionJobSortBy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListIngestionJobsRequest AWS API Documentation
    #
    class ListIngestionJobsRequest < Struct.new(
      :data_source_id,
      :filters,
      :knowledge_base_id,
      :max_results,
      :next_token,
      :sort_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingestion_job_summaries
    #   A list of objects, each of which contains information about an
    #   ingestion job.
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
    #   A list of objects, each of which contains information about a
    #   knowledge base.
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
    # @!attribute [rw] prompt_identifier
    #   The unique identifier of the prompt for whose versions you want to
    #   return information. Omit this field to list information about all
    #   prompts in an account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListPromptsRequest AWS API Documentation
    #
    class ListPromptsRequest < Struct.new(
      :max_results,
      :next_token,
      :prompt_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] prompt_summaries
    #   A list, each member of which contains information about a prompt
    #   using Prompt management.
    #   @return [Array<Types::PromptSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListPromptsResponse AWS API Documentation
    #
    class ListPromptsResponse < Struct.new(
      :next_token,
      :prompt_summaries)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MemoryConfiguration AWS API Documentation
    #
    class MemoryConfiguration < Struct.new(
      :enabled_memory_types,
      :storage_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the storage configuration of the knowledge base
    # in MongoDB Atlas.
    #
    # @!attribute [rw] collection_name
    #   The collection name of the knowledge base in MongoDB Atlas.
    #   @return [String]
    #
    # @!attribute [rw] credentials_secret_arn
    #   The Amazon Resource Name (ARN) of the secret that you created in
    #   Secrets Manager that contains user credentials for your MongoDB
    #   Atlas cluster.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database name in your MongoDB Atlas cluster for your knowledge
    #   base.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint URL of your MongoDB Atlas cluster for your knowledge
    #   base.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_service_name
    #   The name of the VPC endpoint service in your account that is
    #   connected to your MongoDB Atlas cluster.
    #   @return [String]
    #
    # @!attribute [rw] field_mapping
    #   Contains the names of the fields to which to map information about
    #   the vector store.
    #   @return [Types::MongoDbAtlasFieldMapping]
    #
    # @!attribute [rw] vector_index_name
    #   The name of the MongoDB Atlas vector search index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MongoDbAtlasConfiguration AWS API Documentation
    #
    class MongoDbAtlasConfiguration < Struct.new(
      :collection_name,
      :credentials_secret_arn,
      :database_name,
      :endpoint,
      :endpoint_service_name,
      :field_mapping,
      :vector_index_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the names of the fields to which to map information about the
    # vector store.
    #
    # @!attribute [rw] metadata_field
    #   The name of the field in which Amazon Bedrock stores metadata about
    #   the vector store.
    #   @return [String]
    #
    # @!attribute [rw] text_field
    #   The name of the field in which Amazon Bedrock stores the raw text
    #   from your data. The text is split according to the chunking strategy
    #   you choose.
    #   @return [String]
    #
    # @!attribute [rw] vector_field
    #   The name of the field in which Amazon Bedrock stores the vector
    #   embeddings for your data sources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/MongoDbAtlasFieldMapping AWS API Documentation
    #
    class MongoDbAtlasFieldMapping < Struct.new(
      :metadata_field,
      :text_field,
      :vector_field)
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
    # @!attribute [rw] field_mapping
    #   Contains the names of the fields to which to map information about
    #   the vector store.
    #   @return [Types::OpenSearchServerlessFieldMapping]
    #
    # @!attribute [rw] vector_index_name
    #   The name of the vector store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/OpenSearchServerlessConfiguration AWS API Documentation
    #
    class OpenSearchServerlessConfiguration < Struct.new(
      :collection_arn,
      :field_mapping,
      :vector_index_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the names of the fields to which to map information about the
    # vector store.
    #
    # @!attribute [rw] metadata_field
    #   The name of the field in which Amazon Bedrock stores metadata about
    #   the vector store.
    #   @return [String]
    #
    # @!attribute [rw] text_field
    #   The name of the field in which Amazon Bedrock stores the raw text
    #   from your data. The text is split according to the chunking strategy
    #   you choose.
    #   @return [String]
    #
    # @!attribute [rw] vector_field
    #   The name of the field in which Amazon Bedrock stores the vector
    #   embeddings for your data sources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/OpenSearchServerlessFieldMapping AWS API Documentation
    #
    class OpenSearchServerlessFieldMapping < Struct.new(
      :metadata_field,
      :text_field,
      :vector_field)
      SENSITIVE = []
      include Aws::Structure
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
    # @!attribute [rw] required
    #   Whether the parameter is required for the agent to complete the
    #   function for action group invocation.
    #   @return [Boolean]
    #
    # @!attribute [rw] type
    #   The data type of the parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ParameterDetail AWS API Documentation
    #
    class ParameterDetail < Struct.new(
      :description,
      :required,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for parsing document contents. By default, the service
    # converts the contents of each document into text before splitting it
    # into chunks. To improve processing of PDF files with tables and
    # images, you can configure the data source to convert the pages of text
    # into images and use a model to describe the contents of each page.
    #
    # To use a model to parse PDF documents, set the parsing strategy to
    # `BEDROCK_FOUNDATION_MODEL` and specify the model to use by ARN. You
    # can also override the default parsing prompt with instructions for how
    # to interpret images and tables in your documents. The following models
    # are supported.
    #
    # * Anthropic Claude 3 Sonnet -
    #   `anthropic.claude-3-sonnet-20240229-v1:0`
    #
    # * Anthropic Claude 3 Haiku - `anthropic.claude-3-haiku-20240307-v1:0`
    #
    # You can get the ARN of a model with the action. Standard model usage
    # charges apply for the foundation model parsing strategy.
    #
    # @!attribute [rw] bedrock_foundation_model_configuration
    #   Settings for a foundation model used to parse documents for a data
    #   source.
    #   @return [Types::BedrockFoundationModelConfiguration]
    #
    # @!attribute [rw] parsing_strategy
    #   The parsing strategy for the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ParsingConfiguration AWS API Documentation
    #
    class ParsingConfiguration < Struct.new(
      :bedrock_foundation_model_configuration,
      :parsing_strategy)
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
    # @!attribute [rw] exclusion_filters
    #   A list of one or more exclusion regular expression patterns to
    #   exclude certain object types that adhere to the pattern. If you
    #   specify an inclusion and exclusion filter/pattern and both match a
    #   document, the exclusion filter takes precedence and the document
    #   isn’t crawled.
    #   @return [Array<String>]
    #
    # @!attribute [rw] inclusion_filters
    #   A list of one or more inclusion regular expression patterns to
    #   include certain object types that adhere to the pattern. If you
    #   specify an inclusion and exclusion filter/pattern and both match a
    #   document, the exclusion filter takes precedence and the document
    #   isn’t crawled.
    #   @return [Array<String>]
    #
    # @!attribute [rw] object_type
    #   The supported object type or content type of the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PatternObjectFilter AWS API Documentation
    #
    class PatternObjectFilter < Struct.new(
      :exclusion_filters,
      :inclusion_filters,
      :object_type)
      SENSITIVE = [:exclusion_filters, :inclusion_filters, :object_type]
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
    # @!attribute [rw] field_mapping
    #   Contains the names of the fields to which to map information about
    #   the vector store.
    #   @return [Types::PineconeFieldMapping]
    #
    # @!attribute [rw] namespace
    #   The namespace to be used to write new data to your database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PineconeConfiguration AWS API Documentation
    #
    class PineconeConfiguration < Struct.new(
      :connection_string,
      :credentials_secret_arn,
      :field_mapping,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the names of the fields to which to map information about the
    # vector store.
    #
    # @!attribute [rw] metadata_field
    #   The name of the field in which Amazon Bedrock stores metadata about
    #   the vector store.
    #   @return [String]
    #
    # @!attribute [rw] text_field
    #   The name of the field in which Amazon Bedrock stores the raw text
    #   from your data. The text is split according to the chunking strategy
    #   you choose.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PineconeFieldMapping AWS API Documentation
    #
    class PineconeFieldMapping < Struct.new(
      :metadata_field,
      :text_field)
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

    # Contains configurations to override a prompt template in one part of
    # an agent sequence. For more information, see [Advanced prompts][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html
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
    #   `OVERRIDEN`, the `overrideLambda` field in the
    #   [PromptOverrideConfiguration][1] must be specified with the ARN of a
    #   Lambda function.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptOverrideConfiguration.html
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
    #   * `PRE_PROCESSING` – `ENABLED`
    #
    #   * `ORCHESTRATION` – `ENABLED`
    #
    #   * `KNOWLEDGE_BASE_RESPONSE_GENERATION` – `ENABLED`
    #
    #   * `POST_PROCESSING` – `DISABLED`
    #   @return [String]
    #
    # @!attribute [rw] prompt_type
    #   The step in the agent sequence that this prompt configuration
    #   applies to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptConfiguration AWS API Documentation
    #
    class PromptConfiguration < Struct.new(
      :base_prompt_template,
      :inference_configuration,
      :parser_mode,
      :prompt_creation_mode,
      :prompt_state,
      :prompt_type)
      SENSITIVE = [:base_prompt_template]
      include Aws::Structure
    end

    # Contains configurations for a prompt node in the flow. You can use a
    # prompt from Prompt management or you can define one in this node. If
    # the prompt contains variables, the inputs into this node will fill in
    # the variables. The output from this node is the response generated by
    # the model. For more information, see [Node types in Amazon Bedrock
    # works][1] in the Amazon Bedrock User Guide.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptFlowNodeConfiguration AWS API Documentation
    #
    class PromptFlowNodeConfiguration < Struct.new(
      :source_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for a prompt defined inline in the node.
    #
    # @!attribute [rw] inference_configuration
    #   Contains inference configurations for the prompt.
    #   @return [Types::PromptInferenceConfiguration]
    #
    # @!attribute [rw] model_id
    #   The unique identifier of the model to run inference with.
    #   @return [String]
    #
    # @!attribute [rw] template_configuration
    #   Contains a prompt and variables in the prompt that can be replaced
    #   with values at runtime.
    #   @return [Types::PromptTemplateConfiguration]
    #
    # @!attribute [rw] template_type
    #   The type of prompt template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptFlowNodeInlineConfiguration AWS API Documentation
    #
    class PromptFlowNodeInlineConfiguration < Struct.new(
      :inference_configuration,
      :model_id,
      :template_configuration,
      :template_type)
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
    # @!attribute [rw] inline
    #   Contains configurations for a prompt that is defined inline
    #   @return [Types::PromptFlowNodeInlineConfiguration]
    #
    # @!attribute [rw] resource
    #   Contains configurations for a prompt from Prompt management.
    #   @return [Types::PromptFlowNodeResourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptFlowNodeSourceConfiguration AWS API Documentation
    #
    class PromptFlowNodeSourceConfiguration < Struct.new(
      :inline,
      :resource,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Inline < PromptFlowNodeSourceConfiguration; end
      class Resource < PromptFlowNodeSourceConfiguration; end
      class Unknown < PromptFlowNodeSourceConfiguration; end
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

    # Contains inference configurations related to model inference for a
    # prompt. For more information, see [Inference parameters][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/inference-parameters.html
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
    # @!attribute [rw] temperature
    #   Controls the randomness of the response. Choose a lower value for
    #   more predictable outputs and a higher value for more surprising
    #   outputs.
    #   @return [Float]
    #
    # @!attribute [rw] top_k
    #   The number of most-likely candidates that the model considers for
    #   the next token during generation.
    #   @return [Integer]
    #
    # @!attribute [rw] top_p
    #   The percentage of most-likely candidates that the model considers
    #   for the next token.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptModelInferenceConfiguration AWS API Documentation
    #
    class PromptModelInferenceConfiguration < Struct.new(
      :max_tokens,
      :stop_sequences,
      :temperature,
      :top_k,
      :top_p)
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
    # @!attribute [rw] override_lambda
    #   The ARN of the Lambda function to use when parsing the raw
    #   foundation model output in parts of the agent sequence. If you
    #   specify this field, at least one of the `promptConfigurations` must
    #   contain a `parserMode` value that is set to `OVERRIDDEN`. For more
    #   information, see [Parser Lambda function in Agents for Amazon
    #   Bedrock][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/lambda-parser.html
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptOverrideConfiguration AWS API Documentation
    #
    class PromptOverrideConfiguration < Struct.new(
      :override_lambda,
      :prompt_configurations)
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
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the prompt or the prompt version
    #   (if you specified a version in the request).
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the prompt was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time at which the prompt was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of the prompt that this summary applies to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptSummary AWS API Documentation
    #
    class PromptSummary < Struct.new(
      :arn,
      :created_at,
      :description,
      :id,
      :name,
      :updated_at,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the message for a prompt. For more information, see [Prompt
    # management in Amazon Bedrock][1].
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptTemplateConfiguration AWS API Documentation
    #
    class PromptTemplateConfiguration < Struct.new(
      :text,
      :unknown)
      SENSITIVE = [:text]
      include Aws::Structure
      include Aws::Structure::Union

      class Text < PromptTemplateConfiguration; end
      class Unknown < PromptTemplateConfiguration; end
    end

    # Contains details about a variant of the prompt.
    #
    # @!attribute [rw] inference_configuration
    #   Contains inference configurations for the prompt variant.
    #   @return [Types::PromptInferenceConfiguration]
    #
    # @!attribute [rw] model_id
    #   The unique identifier of the model with which to run inference on
    #   the prompt.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the prompt variant.
    #   @return [String]
    #
    # @!attribute [rw] template_configuration
    #   Contains configurations for the prompt template.
    #   @return [Types::PromptTemplateConfiguration]
    #
    # @!attribute [rw] template_type
    #   The type of prompt template to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptVariant AWS API Documentation
    #
    class PromptVariant < Struct.new(
      :inference_configuration,
      :model_id,
      :name,
      :template_configuration,
      :template_type)
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
    # @!attribute [rw] credentials_secret_arn
    #   The Amazon Resource Name (ARN) of the secret that you created in
    #   Secrets Manager that is linked to your Amazon RDS database.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of your Amazon RDS database.
    #   @return [String]
    #
    # @!attribute [rw] field_mapping
    #   Contains the names of the fields to which to map information about
    #   the vector store.
    #   @return [Types::RdsFieldMapping]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the vector store.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table in the database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/RdsConfiguration AWS API Documentation
    #
    class RdsConfiguration < Struct.new(
      :credentials_secret_arn,
      :database_name,
      :field_mapping,
      :resource_arn,
      :table_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the names of the fields to which to map information about the
    # vector store.
    #
    # @!attribute [rw] metadata_field
    #   The name of the field in which Amazon Bedrock stores metadata about
    #   the vector store.
    #   @return [String]
    #
    # @!attribute [rw] primary_key_field
    #   The name of the field in which Amazon Bedrock stores the ID for each
    #   entry.
    #   @return [String]
    #
    # @!attribute [rw] text_field
    #   The name of the field in which Amazon Bedrock stores the raw text
    #   from your data. The text is split according to the chunking strategy
    #   you choose.
    #   @return [String]
    #
    # @!attribute [rw] vector_field
    #   The name of the field in which Amazon Bedrock stores the vector
    #   embeddings for your data sources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/RdsFieldMapping AWS API Documentation
    #
    class RdsFieldMapping < Struct.new(
      :metadata_field,
      :primary_key_field,
      :text_field,
      :vector_field)
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
    # @!attribute [rw] credentials_secret_arn
    #   The Amazon Resource Name (ARN) of the secret that you created in
    #   Secrets Manager that is linked to your Redis Enterprise Cloud
    #   database.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint URL of the Redis Enterprise Cloud database.
    #   @return [String]
    #
    # @!attribute [rw] field_mapping
    #   Contains the names of the fields to which to map information about
    #   the vector store.
    #   @return [Types::RedisEnterpriseCloudFieldMapping]
    #
    # @!attribute [rw] vector_index_name
    #   The name of the vector index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/RedisEnterpriseCloudConfiguration AWS API Documentation
    #
    class RedisEnterpriseCloudConfiguration < Struct.new(
      :credentials_secret_arn,
      :endpoint,
      :field_mapping,
      :vector_index_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the names of the fields to which to map information about the
    # vector store.
    #
    # @!attribute [rw] metadata_field
    #   The name of the field in which Amazon Bedrock stores metadata about
    #   the vector store.
    #   @return [String]
    #
    # @!attribute [rw] text_field
    #   The name of the field in which Amazon Bedrock stores the raw text
    #   from your data. The text is split according to the chunking strategy
    #   you choose.
    #   @return [String]
    #
    # @!attribute [rw] vector_field
    #   The name of the field in which Amazon Bedrock stores the vector
    #   embeddings for your data sources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/RedisEnterpriseCloudFieldMapping AWS API Documentation
    #
    class RedisEnterpriseCloudFieldMapping < Struct.new(
      :metadata_field,
      :text_field,
      :vector_field)
      SENSITIVE = []
      include Aws::Structure
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

    # The configuration information to connect to Amazon S3 as your data
    # source.
    #
    # @!attribute [rw] bucket_arn
    #   The Amazon Resource Name (ARN) of the S3 bucket that contains your
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] bucket_owner_account_id
    #   The account ID for the owner of the S3 bucket.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/S3DataSourceConfiguration AWS API Documentation
    #
    class S3DataSourceConfiguration < Struct.new(
      :bucket_arn,
      :bucket_owner_account_id,
      :inclusion_prefixes)
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
    # @!attribute [rw] crawler_configuration
    #   The configuration of the Salesforce content. For example,
    #   configuring specific types of Salesforce content.
    #   @return [Types::SalesforceCrawlerConfiguration]
    #
    # @!attribute [rw] source_configuration
    #   The endpoint information to connect to your Salesforce data source.
    #   @return [Types::SalesforceSourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/SalesforceDataSourceConfiguration AWS API Documentation
    #
    class SalesforceDataSourceConfiguration < Struct.new(
      :crawler_configuration,
      :source_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The endpoint information to connect to your Salesforce data source.
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
    # @!attribute [rw] host_url
    #   The Salesforce host URL or instance URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/SalesforceSourceConfiguration AWS API Documentation
    #
    class SalesforceSourceConfiguration < Struct.new(
      :auth_type,
      :credentials_secret_arn,
      :host_url)
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
    # @!attribute [rw] breakpoint_percentile_threshold
    #   The dissimilarity threshold for splitting chunks.
    #   @return [Integer]
    #
    # @!attribute [rw] buffer_size
    #   The buffer size.
    #   @return [Integer]
    #
    # @!attribute [rw] max_tokens
    #   The maximum number of tokens that a chunk can contain.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/SemanticChunkingConfiguration AWS API Documentation
    #
    class SemanticChunkingConfiguration < Struct.new(
      :breakpoint_percentile_threshold,
      :buffer_size,
      :max_tokens)
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
    # @!attribute [rw] crawler_configuration
    #   The configuration of the SharePoint content. For example,
    #   configuring specific types of SharePoint content.
    #   @return [Types::SharePointCrawlerConfiguration]
    #
    # @!attribute [rw] source_configuration
    #   The endpoint information to connect to your SharePoint data source.
    #   @return [Types::SharePointSourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/SharePointDataSourceConfiguration AWS API Documentation
    #
    class SharePointDataSourceConfiguration < Struct.new(
      :crawler_configuration,
      :source_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The endpoint information to connect to your SharePoint data source.
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
    # @!attribute [rw] domain
    #   The domain of your SharePoint instance or site URL/URLs.
    #   @return [String]
    #
    # @!attribute [rw] host_type
    #   The supported host type, whether online/cloud or server/on-premises.
    #   @return [String]
    #
    # @!attribute [rw] site_urls
    #   A list of one or more SharePoint site URLs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tenant_id
    #   The identifier of your Microsoft 365 tenant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/SharePointSourceConfiguration AWS API Documentation
    #
    class SharePointSourceConfiguration < Struct.new(
      :auth_type,
      :credentials_secret_arn,
      :domain,
      :host_type,
      :site_urls,
      :tenant_id)
      SENSITIVE = []
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
    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source to ingest.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to which to add the data
    #   source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/StartIngestionJobRequest AWS API Documentation
    #
    class StartIngestionJobRequest < Struct.new(
      :client_token,
      :data_source_id,
      :description,
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingestion_job
    #   An object containing information about the ingestion job.
    #   @return [Types::IngestionJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/StartIngestionJobResponse AWS API Documentation
    #
    class StartIngestionJobResponse < Struct.new(
      :ingestion_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the storage configuration of the knowledge base.
    #
    # @!attribute [rw] mongo_db_atlas_configuration
    #   Contains the storage configuration of the knowledge base in MongoDB
    #   Atlas.
    #   @return [Types::MongoDbAtlasConfiguration]
    #
    # @!attribute [rw] opensearch_serverless_configuration
    #   Contains the storage configuration of the knowledge base in Amazon
    #   OpenSearch Service.
    #   @return [Types::OpenSearchServerlessConfiguration]
    #
    # @!attribute [rw] pinecone_configuration
    #   Contains the storage configuration of the knowledge base in
    #   Pinecone.
    #   @return [Types::PineconeConfiguration]
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
    # @!attribute [rw] redis_enterprise_cloud_configuration
    #   Contains the storage configuration of the knowledge base in Redis
    #   Enterprise Cloud.
    #   @return [Types::RedisEnterpriseCloudConfiguration]
    #
    # @!attribute [rw] type
    #   The vector store service in which the knowledge base is stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/StorageConfiguration AWS API Documentation
    #
    class StorageConfiguration < Struct.new(
      :mongo_db_atlas_configuration,
      :opensearch_serverless_configuration,
      :pinecone_configuration,
      :rds_configuration,
      :redis_enterprise_cloud_configuration,
      :type)
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

    # Contains configurations for a text prompt template. To include a
    # variable, enclose a word in double curly braces as in
    # `\{\{variable\}\}`.
    #
    # @!attribute [rw] input_variables
    #   An array of the variables in the prompt template.
    #   @return [Array<Types::PromptInputVariable>]
    #
    # @!attribute [rw] text
    #   The message for the prompt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/TextPromptTemplateConfiguration AWS API Documentation
    #
    class TextPromptTemplateConfiguration < Struct.new(
      :input_variables,
      :text)
      SENSITIVE = [:input_variables, :text]
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

    # A custom processing step for documents moving through a data source
    # ingestion pipeline. To process documents after they have been
    # converted into chunks, set the step to apply to `POST_CHUNKING`.
    #
    # @!attribute [rw] step_to_apply
    #   When the service applies the transformation.
    #   @return [String]
    #
    # @!attribute [rw] transformation_function
    #   A Lambda function that processes documents.
    #   @return [Types::TransformationFunction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/Transformation AWS API Documentation
    #
    class Transformation < Struct.new(
      :step_to_apply,
      :transformation_function)
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

    # @!attribute [rw] action_group_executor
    #   The Amazon Resource Name (ARN) of the Lambda function containing the
    #   business logic that is carried out upon invoking the action.
    #   @return [Types::ActionGroupExecutor]
    #
    # @!attribute [rw] action_group_id
    #   The unique identifier of the action group.
    #   @return [String]
    #
    # @!attribute [rw] action_group_name
    #   Specifies a new name for the action group.
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
    # @!attribute [rw] description
    #   Specifies a new name for the action group.
    #   @return [String]
    #
    # @!attribute [rw] function_schema
    #   Contains details about the function schema for the action group or
    #   the JSON or YAML-formatted payload defining the schema.
    #   @return [Types::FunctionSchema]
    #
    # @!attribute [rw] parent_action_group_signature
    #   To allow your agent to request the user for additional information
    #   when trying to complete a task, set this field to
    #   `AMAZON.UserInput`. You must leave the `description`, `apiSchema`,
    #   and `actionGroupExecutor` fields blank for this action group.
    #
    #   During orchestration, if your agent determines that it needs to
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentActionGroupRequest AWS API Documentation
    #
    class UpdateAgentActionGroupRequest < Struct.new(
      :action_group_executor,
      :action_group_id,
      :action_group_name,
      :action_group_state,
      :agent_id,
      :agent_version,
      :api_schema,
      :description,
      :function_schema,
      :parent_action_group_signature)
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

    # @!attribute [rw] agent_alias_id
    #   The unique identifier of the alias.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_name
    #   Specifies a new name for the alias.
    #   @return [String]
    #
    # @!attribute [rw] agent_id
    #   The unique identifier of the agent.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentAliasRequest AWS API Documentation
    #
    class UpdateAgentAliasRequest < Struct.new(
      :agent_alias_id,
      :agent_alias_name,
      :agent_id,
      :description,
      :routing_configuration)
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
    #   The unique identifier of the agent associated with the knowledge
    #   base that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   The version of the agent associated with the knowledge base that you
    #   want to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Specifies a new description for the knowledge base associated with
    #   an agent.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base that has been associated
    #   with an agent.
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
      :description,
      :knowledge_base_id,
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
    # @!attribute [rw] description
    #   Specifies a new description of the agent.
    #   @return [String]
    #
    # @!attribute [rw] foundation_model
    #   Specifies a new foundation model to be used for orchestration by the
    #   agent.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_configuration
    #   The unique Guardrail configuration assigned to the agent when it is
    #   updated.
    #   @return [Types::GuardrailConfiguration]
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
    # @!attribute [rw] instruction
    #   Specifies new instructions that tell the agent what it should do and
    #   how it should interact with users.
    #   @return [String]
    #
    # @!attribute [rw] memory_configuration
    #   Specifies the new memory configuration for the agent.
    #   @return [Types::MemoryConfiguration]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentRequest AWS API Documentation
    #
    class UpdateAgentRequest < Struct.new(
      :agent_id,
      :agent_name,
      :agent_resource_role_arn,
      :customer_encryption_key_arn,
      :description,
      :foundation_model,
      :guardrail_configuration,
      :idle_session_ttl_in_seconds,
      :instruction,
      :memory_configuration,
      :prompt_override_configuration)
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

    # @!attribute [rw] data_deletion_policy
    #   The data deletion policy for the data source that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] data_source_configuration
    #   The connection configuration for the data source that you want to
    #   update.
    #   @return [Types::DataSourceConfiguration]
    #
    # @!attribute [rw] data_source_id
    #   The unique identifier of the data source.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Specifies a new description for the data source.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base for the data source.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Specifies a new name for the data source.
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
      :data_deletion_policy,
      :data_source_configuration,
      :data_source_id,
      :description,
      :knowledge_base_id,
      :name,
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

    # @!attribute [rw] alias_identifier
    #   The unique identifier of the alias.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the alias.
    #   @return [String]
    #
    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   Contains information about the version to which to map the alias.
    #   @return [Array<Types::FlowAliasRoutingConfigurationListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateFlowAliasRequest AWS API Documentation
    #
    class UpdateFlowAliasRequest < Struct.new(
      :alias_identifier,
      :description,
      :flow_identifier,
      :name,
      :routing_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the flow.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the flow was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_id
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the alias.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   Contains information about the version that the alias is mapped to.
    #   @return [Array<Types::FlowAliasRoutingConfigurationListItem>]
    #
    # @!attribute [rw] updated_at
    #   The time at which the alias was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateFlowAliasResponse AWS API Documentation
    #
    class UpdateFlowAliasResponse < Struct.new(
      :arn,
      :created_at,
      :description,
      :flow_id,
      :id,
      :name,
      :routing_configuration,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key to encrypt the flow.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   A definition of the nodes and the connections between the nodes in
    #   the flow.
    #   @return [Types::FlowDefinition]
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
    # @!attribute [rw] flow_identifier
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateFlowRequest AWS API Documentation
    #
    class UpdateFlowRequest < Struct.new(
      :customer_encryption_key_arn,
      :definition,
      :description,
      :execution_role_arn,
      :flow_identifier,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the flow.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the flow was created.
    #   @return [Time]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key that the flow was
    #   encrypted with.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   A definition of the nodes and the connections between nodes in the
    #   flow.
    #   @return [Types::FlowDefinition]
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
    # @!attribute [rw] id
    #   The unique identifier of the flow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the flow.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the flow. When you submit this request, the status
    #   will be `NotPrepared`. If updating fails, the status becomes
    #   `Failed`.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateFlowResponse AWS API Documentation
    #
    class UpdateFlowResponse < Struct.new(
      :arn,
      :created_at,
      :customer_encryption_key_arn,
      :definition,
      :description,
      :execution_role_arn,
      :id,
      :name,
      :status,
      :updated_at,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   Specifies a new description for the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_configuration
    #   Specifies the configuration for the embeddings model used for the
    #   knowledge base. You must use the same configuration as when the
    #   knowledge base was created.
    #   @return [Types::KnowledgeBaseConfiguration]
    #
    # @!attribute [rw] knowledge_base_id
    #   The unique identifier of the knowledge base to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Specifies a new name for the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   Specifies a different Amazon Resource Name (ARN) of the IAM role
    #   with permissions to invoke API operations on the knowledge base.
    #   @return [String]
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
      :description,
      :knowledge_base_configuration,
      :knowledge_base_id,
      :name,
      :role_arn,
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
    # @!attribute [rw] description
    #   A description for the prompt.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the prompt.
    #   @return [String]
    #
    # @!attribute [rw] prompt_identifier
    #   The unique identifier of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] variants
    #   A list of objects, each containing details about a variant of the
    #   prompt.
    #   @return [Array<Types::PromptVariant>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdatePromptRequest AWS API Documentation
    #
    class UpdatePromptRequest < Struct.new(
      :customer_encryption_key_arn,
      :default_variant,
      :description,
      :name,
      :prompt_identifier,
      :variants)
      SENSITIVE = [:variants]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the prompt was created.
    #   @return [Time]
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
    # @!attribute [rw] description
    #   The description of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the prompt.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time at which the prompt was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] variants
    #   A list of objects, each containing details about a variant of the
    #   prompt.
    #   @return [Array<Types::PromptVariant>]
    #
    # @!attribute [rw] version
    #   The version of the prompt. When you update a prompt, the version
    #   updated is the `DRAFT` version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdatePromptResponse AWS API Documentation
    #
    class UpdatePromptResponse < Struct.new(
      :arn,
      :created_at,
      :customer_encryption_key_arn,
      :default_variant,
      :description,
      :id,
      :name,
      :updated_at,
      :variants,
      :version)
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

    # Input validation failed. Check your request parameters and retry the
    # request.
    #
    # @!attribute [rw] field_list
    #   A list of objects containing fields that caused validation errors
    #   and their corresponding validation error messages.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :field_list,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stores information about a field passed inside a request that resulted
    # in an validation error.
    #
    # @!attribute [rw] message
    #   A message describing why this field failed validation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
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
    #   A custom parser for data source documents.
    #   @return [Types::ParsingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/VectorIngestionConfiguration AWS API Documentation
    #
    class VectorIngestionConfiguration < Struct.new(
      :chunking_configuration,
      :custom_transformation_configuration,
      :parsing_configuration)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/VectorKnowledgeBaseConfiguration AWS API Documentation
    #
    class VectorKnowledgeBaseConfiguration < Struct.new(
      :embedding_model_arn,
      :embedding_model_configuration)
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
    # @!attribute [rw] exclusion_filters
    #   A list of one or more exclusion regular expression patterns to
    #   exclude certain URLs. If you specify an inclusion and exclusion
    #   filter/pattern and both match a URL, the exclusion filter takes
    #   precedence and the web content of the URL isn’t crawled.
    #   @return [Array<String>]
    #
    # @!attribute [rw] inclusion_filters
    #   A list of one or more inclusion regular expression patterns to
    #   include certain URLs. If you specify an inclusion and exclusion
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/WebCrawlerConfiguration AWS API Documentation
    #
    class WebCrawlerConfiguration < Struct.new(
      :crawler_limits,
      :exclusion_filters,
      :inclusion_filters,
      :scope)
      SENSITIVE = [:exclusion_filters, :inclusion_filters]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/WebCrawlerLimits AWS API Documentation
    #
    class WebCrawlerLimits < Struct.new(
      :rate_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration details for the web data source.
    #
    # @!attribute [rw] crawler_configuration
    #   The Web Crawler configuration details for the web data source.
    #   @return [Types::WebCrawlerConfiguration]
    #
    # @!attribute [rw] source_configuration
    #   The source configuration details for the web data source.
    #   @return [Types::WebSourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/WebDataSourceConfiguration AWS API Documentation
    #
    class WebDataSourceConfiguration < Struct.new(
      :crawler_configuration,
      :source_configuration)
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

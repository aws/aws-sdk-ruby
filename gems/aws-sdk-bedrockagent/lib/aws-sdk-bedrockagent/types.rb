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
    # logic that is carried out upon invoking the action.
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
      :idle_session_ttl_in_seconds,
      :instruction,
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
    #   business logic that is carried out upon invoking the action.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentAliasRoutingConfigurationListItem AWS API Documentation
    #
    class AgentAliasRoutingConfigurationListItem < Struct.new(
      :agent_version)
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
      :idle_session_ttl_in_seconds,
      :instruction,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ChunkingConfiguration AWS API Documentation
    #
    class ChunkingConfiguration < Struct.new(
      :chunking_strategy,
      :fixed_size_chunking_configuration)
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

    # @!attribute [rw] action_group_executor
    #   The Amazon Resource Name (ARN) of the Lambda function containing the
    #   business logic that is carried out upon invoking the action.
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
      :idle_session_ttl_in_seconds,
      :instruction,
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
    # @!attribute [rw] data_source_configuration
    #   Contains metadata about where the data source is stored.
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

    # Contains details about a data source.
    #
    # @!attribute [rw] created_at
    #   The time at which the data source was created.
    #   @return [Time]
    #
    # @!attribute [rw] data_source_configuration
    #   Contains details about how the data source is stored.
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
      :data_source_configuration,
      :data_source_id,
      :description,
      :knowledge_base_id,
      :name,
      :server_side_encryption_configuration,
      :status,
      :updated_at,
      :vector_ingestion_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about how a data source is stored.
    #
    # @!attribute [rw] s3_configuration
    #   Contains details about the configuration of the S3 object containing
    #   the data source.
    #   @return [Types::S3DataSourceConfiguration]
    #
    # @!attribute [rw] type
    #   The type of storage for the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DataSourceConfiguration AWS API Documentation
    #
    class DataSourceConfiguration < Struct.new(
      :s3_configuration,
      :type)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/Function AWS API Documentation
    #
    class Function < Struct.new(
      :description,
      :name,
      :parameters)
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
    #   template placeholder variables][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-placeholders.html
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
    #   contain a `parserMode` value that is set to `OVERRIDDEN`.
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

    # Contains information about the S3 configuration of the data source.
    #
    # @!attribute [rw] bucket_arn
    #   The Amazon Resource Name (ARN) of the bucket that contains the data
    #   source.
    #   @return [String]
    #
    # @!attribute [rw] inclusion_prefixes
    #   A list of S3 prefixes that define the object containing the data
    #   sources. For more information, see [Organizing objects using
    #   prefixes][1].
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
      :inclusion_prefixes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the S3 object containing the resource.
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_object_key
    #   The S3 object key containing the resource.
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
      :opensearch_serverless_configuration,
      :pinecone_configuration,
      :rds_configuration,
      :redis_enterprise_cloud_configuration,
      :type)
      SENSITIVE = []
      include Aws::Structure
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
      :idle_session_ttl_in_seconds,
      :instruction,
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

    # @!attribute [rw] data_source_configuration
    #   Contains details about the storage configuration of the data source.
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
    #   The unique identifier of the knowledge base to which the data source
    #   belongs.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/VectorIngestionConfiguration AWS API Documentation
    #
    class VectorIngestionConfiguration < Struct.new(
      :chunking_configuration)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/VectorKnowledgeBaseConfiguration AWS API Documentation
    #
    class VectorKnowledgeBaseConfiguration < Struct.new(
      :embedding_model_arn)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

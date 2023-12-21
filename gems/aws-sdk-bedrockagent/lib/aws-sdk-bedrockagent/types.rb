# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BedrockAgent
  module Types

    # Contains information about the API Schema for the Action Group
    #
    # @note APISchema is a union - when making an API calls you must set exactly one of the members.
    #
    # @note APISchema is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of APISchema corresponding to the set member.
    #
    # @!attribute [rw] s3
    #   The identifier for the S3 resource.
    #   @return [Types::S3Identifier]
    #
    # @!attribute [rw] payload
    #   String OpenAPI Payload
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

    # This exception is thrown when a request is denied per access
    # permissions
    #
    # @!attribute [rw] message
    #   Non Blank String
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Type of Executors for an Action Group
    #
    # @note ActionGroupExecutor is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ActionGroupExecutor is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ActionGroupExecutor corresponding to the set member.
    #
    # @!attribute [rw] lambda
    #   ARN of a Lambda.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ActionGroupExecutor AWS API Documentation
    #
    class ActionGroupExecutor < Struct.new(
      :lambda,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Lambda < ActionGroupExecutor; end
      class Unknown < ActionGroupExecutor; end
    end

    # ActionGroup Summary
    #
    # @!attribute [rw] action_group_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] action_group_name
    #   Name for a resource.
    #   @return [String]
    #
    # @!attribute [rw] action_group_state
    #   State of the action group
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Time Stamp.
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

    # Contains the information of an agent
    #
    # @!attribute [rw] agent_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] agent_name
    #   Name for a resource.
    #   @return [String]
    #
    # @!attribute [rw] agent_arn
    #   Arn representation of the Agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   Draft Agent Version.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Client specified token used for idempotency checks
    #   @return [String]
    #
    # @!attribute [rw] instruction
    #   Instruction for the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_status
    #   Schema Type for Action APIs.
    #   @return [String]
    #
    # @!attribute [rw] foundation_model
    #   ARN or name of a Bedrock model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] idle_session_ttl_in_seconds
    #   Max Session Time.
    #   @return [Integer]
    #
    # @!attribute [rw] agent_resource_role_arn
    #   ARN of a IAM role.
    #   @return [String]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   A KMS key ARN
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Time Stamp.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Time Stamp.
    #   @return [Time]
    #
    # @!attribute [rw] prepared_at
    #   Time Stamp.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reasons
    #   Failure Reasons for Error.
    #   @return [Array<String>]
    #
    # @!attribute [rw] recommended_actions
    #   The recommended actions users can take to resolve an error in
    #   failureReasons.
    #   @return [Array<String>]
    #
    # @!attribute [rw] prompt_override_configuration
    #   Configuration for prompt override.
    #   @return [Types::PromptOverrideConfiguration]
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
      :idle_session_ttl_in_seconds,
      :agent_resource_role_arn,
      :customer_encryption_key_arn,
      :created_at,
      :updated_at,
      :prepared_at,
      :failure_reasons,
      :recommended_actions,
      :prompt_override_configuration)
      SENSITIVE = [:instruction, :prompt_override_configuration]
      include Aws::Structure
    end

    # Contains the information of an Agent Action Group
    #
    # @!attribute [rw] agent_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   Agent Version.
    #   @return [String]
    #
    # @!attribute [rw] action_group_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] action_group_name
    #   Name for a resource.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Client specified token used for idempotency checks
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Time Stamp.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Time Stamp.
    #   @return [Time]
    #
    # @!attribute [rw] parent_action_signature
    #   Action Group Signature for a BuiltIn Action
    #   @return [String]
    #
    # @!attribute [rw] action_group_executor
    #   Type of Executors for an Action Group
    #   @return [Types::ActionGroupExecutor]
    #
    # @!attribute [rw] api_schema
    #   Contains information about the API Schema for the Action Group
    #   @return [Types::APISchema]
    #
    # @!attribute [rw] action_group_state
    #   State of the action group
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
      :action_group_executor,
      :api_schema,
      :action_group_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the information of an agent alias
    #
    # @!attribute [rw] agent_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_id
    #   Id for an Agent Alias generated at the server side.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_name
    #   Name for a resource.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_arn
    #   Arn representation of the Agent Alias.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Client specified token used for idempotency checks
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   Routing configuration for an Agent alias.
    #   @return [Array<Types::AgentAliasRoutingConfigurationListItem>]
    #
    # @!attribute [rw] created_at
    #   Time Stamp.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Time Stamp.
    #   @return [Time]
    #
    # @!attribute [rw] agent_alias_history_events
    #   The list of history events for an alias for an Agent.
    #   @return [Array<Types::AgentAliasHistoryEvent>]
    #
    # @!attribute [rw] agent_alias_status
    #   The statuses an Agent Alias can be in.
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
      :agent_alias_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # History event for an alias for an Agent.
    #
    # @!attribute [rw] routing_configuration
    #   Routing configuration for an Agent alias.
    #   @return [Array<Types::AgentAliasRoutingConfigurationListItem>]
    #
    # @!attribute [rw] end_date
    #   Time Stamp.
    #   @return [Time]
    #
    # @!attribute [rw] start_date
    #   Time Stamp.
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

    # Details about the routing configuration for an Agent alias.
    #
    # @!attribute [rw] agent_version
    #   Agent Version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentAliasRoutingConfigurationListItem AWS API Documentation
    #
    class AgentAliasRoutingConfigurationListItem < Struct.new(
      :agent_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of an alias for an Agent.
    #
    # @!attribute [rw] agent_alias_id
    #   Id for an Agent Alias generated at the server side.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_name
    #   Name for a resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   Routing configuration for an Agent alias.
    #   @return [Array<Types::AgentAliasRoutingConfigurationListItem>]
    #
    # @!attribute [rw] agent_alias_status
    #   The statuses an Agent Alias can be in.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Time Stamp.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Time Stamp.
    #   @return [Time]
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
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the information of an Agent Knowledge Base.
    #
    # @!attribute [rw] agent_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   Agent Version.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Time Stamp.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Time Stamp.
    #   @return [Time]
    #
    # @!attribute [rw] knowledge_base_state
    #   State of the knowledge base; whether it is enabled or disabled
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

    # Agent Knowledge Base Summary
    #
    # @!attribute [rw] knowledge_base_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_state
    #   State of the knowledge base; whether it is enabled or disabled
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Time Stamp.
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

    # Summary of Agent.
    #
    # @!attribute [rw] agent_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] agent_name
    #   Name for a resource.
    #   @return [String]
    #
    # @!attribute [rw] agent_status
    #   Schema Type for Action APIs.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Time Stamp.
    #   @return [Time]
    #
    # @!attribute [rw] latest_agent_version
    #   Agent Version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentSummary AWS API Documentation
    #
    class AgentSummary < Struct.new(
      :agent_id,
      :agent_name,
      :agent_status,
      :description,
      :updated_at,
      :latest_agent_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the information of an agent version.
    #
    # @!attribute [rw] agent_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] agent_name
    #   Name for a resource.
    #   @return [String]
    #
    # @!attribute [rw] agent_arn
    #   Arn representation of the Agent.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Numerical Agent Version.
    #   @return [String]
    #
    # @!attribute [rw] instruction
    #   Instruction for the agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_status
    #   Schema Type for Action APIs.
    #   @return [String]
    #
    # @!attribute [rw] foundation_model
    #   ARN or name of a Bedrock model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] idle_session_ttl_in_seconds
    #   Max Session Time.
    #   @return [Integer]
    #
    # @!attribute [rw] agent_resource_role_arn
    #   ARN of a IAM role.
    #   @return [String]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   A KMS key ARN
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Time Stamp.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Time Stamp.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reasons
    #   Failure Reasons for Error.
    #   @return [Array<String>]
    #
    # @!attribute [rw] recommended_actions
    #   The recommended actions users can take to resolve an error in
    #   failureReasons.
    #   @return [Array<String>]
    #
    # @!attribute [rw] prompt_override_configuration
    #   Configuration for prompt override.
    #   @return [Types::PromptOverrideConfiguration]
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
      :prompt_override_configuration)
      SENSITIVE = [:instruction, :prompt_override_configuration]
      include Aws::Structure
    end

    # Summary of agent version.
    #
    # @!attribute [rw] agent_name
    #   Name for a resource.
    #   @return [String]
    #
    # @!attribute [rw] agent_status
    #   Schema Type for Action APIs.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   Agent Version.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Time Stamp.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Time Stamp.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AgentVersionSummary AWS API Documentation
    #
    class AgentVersionSummary < Struct.new(
      :agent_name,
      :agent_status,
      :agent_version,
      :created_at,
      :updated_at,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Associate Agent Knowledge Base Request
    #
    # @!attribute [rw] agent_id
    #   Id generated at the server side when an Agent is created
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   Draft Version of the Agent.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_state
    #   State of the knowledge base; whether it is enabled or disabled
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

    # Associate Agent Knowledge Base Response
    #
    # @!attribute [rw] agent_knowledge_base
    #   Contains the information of an Agent Knowledge Base.
    #   @return [Types::AgentKnowledgeBase]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/AssociateAgentKnowledgeBaseResponse AWS API Documentation
    #
    class AssociateAgentKnowledgeBaseResponse < Struct.new(
      :agent_knowledge_base)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures chunking strategy
    #
    # @!attribute [rw] chunking_strategy
    #   The type of chunking strategy
    #   @return [String]
    #
    # @!attribute [rw] fixed_size_chunking_configuration
    #   Configures fixed size chunking strategy
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

    # This exception is thrown when there is a conflict performing an
    # operation
    #
    # @!attribute [rw] message
    #   Non Blank String
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create Action Group Request
    #
    # @!attribute [rw] agent_id
    #   Id generated at the server side when an Agent is created
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   Draft Version of the Agent.
    #   @return [String]
    #
    # @!attribute [rw] action_group_name
    #   Name for a resource.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Client specified token used for idempotency checks
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] parent_action_group_signature
    #   Action Group Signature for a BuiltIn Action
    #   @return [String]
    #
    # @!attribute [rw] action_group_executor
    #   Type of Executors for an Action Group
    #   @return [Types::ActionGroupExecutor]
    #
    # @!attribute [rw] api_schema
    #   Contains information about the API Schema for the Action Group
    #   @return [Types::APISchema]
    #
    # @!attribute [rw] action_group_state
    #   State of the action group
    #   @return [String]
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
      :action_group_executor,
      :api_schema,
      :action_group_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create Action Group Response
    #
    # @!attribute [rw] agent_action_group
    #   Contains the information of an Agent Action Group
    #   @return [Types::AgentActionGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateAgentActionGroupResponse AWS API Documentation
    #
    class CreateAgentActionGroupResponse < Struct.new(
      :agent_action_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create Agent Alias Request
    #
    # @!attribute [rw] agent_id
    #   Id generated at the server side when an Agent is created
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_name
    #   Name for a resource.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Client specified token used for idempotency checks
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   Routing configuration for an Agent alias.
    #   @return [Array<Types::AgentAliasRoutingConfigurationListItem>]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values
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

    # Create Agent Alias Response
    #
    # @!attribute [rw] agent_alias
    #   Contains the information of an agent alias
    #   @return [Types::AgentAlias]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateAgentAliasResponse AWS API Documentation
    #
    class CreateAgentAliasResponse < Struct.new(
      :agent_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create Agent Request
    #
    # @!attribute [rw] agent_name
    #   Name for a resource.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Client specified token used for idempotency checks
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] instruction
    #   Instruction for the agent.
    #   @return [String]
    #
    # @!attribute [rw] foundation_model
    #   ARN or name of a Bedrock model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] idle_session_ttl_in_seconds
    #   Max Session Time.
    #   @return [Integer]
    #
    # @!attribute [rw] agent_resource_role_arn
    #   ARN of a IAM role.
    #   @return [String]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   A KMS key ARN
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] prompt_override_configuration
    #   Configuration for prompt override.
    #   @return [Types::PromptOverrideConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateAgentRequest AWS API Documentation
    #
    class CreateAgentRequest < Struct.new(
      :agent_name,
      :client_token,
      :instruction,
      :foundation_model,
      :description,
      :idle_session_ttl_in_seconds,
      :agent_resource_role_arn,
      :customer_encryption_key_arn,
      :tags,
      :prompt_override_configuration)
      SENSITIVE = [:instruction, :prompt_override_configuration]
      include Aws::Structure
    end

    # Create Agent Response
    #
    # @!attribute [rw] agent
    #   Contains the information of an agent
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
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Client specified token used for idempotency checks
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for a resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] data_source_configuration
    #   Specifies a raw data source location to ingest.
    #   @return [Types::DataSourceConfiguration]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   Server-side encryption configuration.
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] vector_ingestion_configuration
    #   Configures ingestion for a vector knowledge base
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
      :server_side_encryption_configuration,
      :vector_ingestion_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source
    #   Contains the information of a data source.
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
    #   Client specified token used for idempotency checks
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for a resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   ARN of a IAM role.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_configuration
    #   Configures a bedrock knowledge base.
    #   @return [Types::KnowledgeBaseConfiguration]
    #
    # @!attribute [rw] storage_configuration
    #   Configures the physical storage of ingested data in a knowledge
    #   base.
    #   @return [Types::StorageConfiguration]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values
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
    #   Contains the information of a knowledge base.
    #   @return [Types::KnowledgeBase]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/CreateKnowledgeBaseResponse AWS API Documentation
    #
    class CreateKnowledgeBaseResponse < Struct.new(
      :knowledge_base)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the information of a data source.
    #
    # @!attribute [rw] knowledge_base_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for a resource.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a data source.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] data_source_configuration
    #   Specifies a raw data source location to ingest.
    #   @return [Types::DataSourceConfiguration]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   Server-side encryption configuration.
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] vector_ingestion_configuration
    #   Configures ingestion for a vector knowledge base
    #   @return [Types::VectorIngestionConfiguration]
    #
    # @!attribute [rw] created_at
    #   Time Stamp.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Time Stamp.
    #   @return [Time]
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
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a raw data source location to ingest.
    #
    # @!attribute [rw] type
    #   The type of the data source location.
    #   @return [String]
    #
    # @!attribute [rw] s3_configuration
    #   Configures an S3 data source location.
    #   @return [Types::S3DataSourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DataSourceConfiguration AWS API Documentation
    #
    class DataSourceConfiguration < Struct.new(
      :type,
      :s3_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information of a data source.
    #
    # @!attribute [rw] knowledge_base_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for a resource.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a data source.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Time Stamp.
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

    # Delete Action Group Request
    #
    # @!attribute [rw] agent_id
    #   Id generated at the server side when an Agent is created
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   Draft Version of the Agent.
    #   @return [String]
    #
    # @!attribute [rw] action_group_id
    #   Id generated at the server side when an Agent ActionGroup is created
    #   @return [String]
    #
    # @!attribute [rw] skip_resource_in_use_check
    #   Skips checking if resource is in use when set to true. Defaults to
    #   false
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

    # Delete Action Group Response
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DeleteAgentActionGroupResponse AWS API Documentation
    #
    class DeleteAgentActionGroupResponse < Aws::EmptyStructure; end

    # Delete Agent Alias Request
    #
    # @!attribute [rw] agent_id
    #   Id generated at the server side when an Agent is created
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_id
    #   Id generated at the server side when an Agent Alias is created
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

    # Delete Agent Alias Response
    #
    # @!attribute [rw] agent_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_id
    #   Id for an Agent Alias generated at the server side.
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_status
    #   The statuses an Agent Alias can be in.
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

    # Delete Agent Request
    #
    # @!attribute [rw] agent_id
    #   Id generated at the server side when an Agent is created
    #   @return [String]
    #
    # @!attribute [rw] skip_resource_in_use_check
    #   Skips checking if resource is in use when set to true. Defaults to
    #   false
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

    # Delete Agent Response
    #
    # @!attribute [rw] agent_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] agent_status
    #   Schema Type for Action APIs.
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

    # Delete Agent Version Request
    #
    # @!attribute [rw] agent_id
    #   Id generated at the server side when an Agent is created
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   Numerical Agent Version.
    #   @return [String]
    #
    # @!attribute [rw] skip_resource_in_use_check
    #   Skips checking if resource is in use when set to true. Defaults to
    #   false
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

    # Delete Agent Version Response
    #
    # @!attribute [rw] agent_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   Numerical Agent Version.
    #   @return [String]
    #
    # @!attribute [rw] agent_status
    #   Schema Type for Action APIs.
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
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   Identifier for a resource.
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
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a data source.
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

    # @!attribute [rw] knowledge_base_id
    #   Identifier for a resource.
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
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a knowledge base.
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

    # Disassociate Agent Knowledge Base Request
    #
    # @!attribute [rw] agent_id
    #   Id generated at the server side when an Agent is created
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   Draft Version of the Agent.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   Id generated at the server side when a Knowledge Base is associated
    #   to an Agent
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

    # Disassociate Agent Knowledge Base Response
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/DisassociateAgentKnowledgeBaseResponse AWS API Documentation
    #
    class DisassociateAgentKnowledgeBaseResponse < Aws::EmptyStructure; end

    # Configures fixed size chunking strategy
    #
    # @!attribute [rw] max_tokens
    #   The maximum number of tokens per chunk.
    #   @return [Integer]
    #
    # @!attribute [rw] overlap_percentage
    #   The overlap percentage between adjacent chunks.
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

    # Get Action Group Request
    #
    # @!attribute [rw] agent_id
    #   Id generated at the server side when an Agent is created
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   Version number generated when a version is created
    #   @return [String]
    #
    # @!attribute [rw] action_group_id
    #   Id generated at the server side when an Agent Action Group is
    #   created
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

    # Get Action Group Response
    #
    # @!attribute [rw] agent_action_group
    #   Contains the information of an Agent Action Group
    #   @return [Types::AgentActionGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentActionGroupResponse AWS API Documentation
    #
    class GetAgentActionGroupResponse < Struct.new(
      :agent_action_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Get Agent Alias Request
    #
    # @!attribute [rw] agent_id
    #   Id generated at the server side when an Agent is created
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_id
    #   Id generated at the server side when an Agent Alias is created
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

    # Get Agent Alias Response
    #
    # @!attribute [rw] agent_alias
    #   Contains the information of an agent alias
    #   @return [Types::AgentAlias]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentAliasResponse AWS API Documentation
    #
    class GetAgentAliasResponse < Struct.new(
      :agent_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # Get Agent Knowledge Base Request
    #
    # @!attribute [rw] agent_id
    #   Id generated at the server side when an Agent is created
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   Version number generated when a version is created
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   Id generated at the server side when a Knowledge Base is associated
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

    # Get Agent Knowledge Base Response
    #
    # @!attribute [rw] agent_knowledge_base
    #   Contains the information of an Agent Knowledge Base.
    #   @return [Types::AgentKnowledgeBase]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentKnowledgeBaseResponse AWS API Documentation
    #
    class GetAgentKnowledgeBaseResponse < Struct.new(
      :agent_knowledge_base)
      SENSITIVE = []
      include Aws::Structure
    end

    # Get Agent Request
    #
    # @!attribute [rw] agent_id
    #   Id generated at the server side when an Agent is created
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentRequest AWS API Documentation
    #
    class GetAgentRequest < Struct.new(
      :agent_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Get Agent Response
    #
    # @!attribute [rw] agent
    #   Contains the information of an agent
    #   @return [Types::Agent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetAgentResponse AWS API Documentation
    #
    class GetAgentResponse < Struct.new(
      :agent)
      SENSITIVE = []
      include Aws::Structure
    end

    # Get Agent Version Request
    #
    # @!attribute [rw] agent_id
    #   Id generated at the server side when an Agent is created
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   Numerical Agent Version.
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

    # Get Agent Version Response
    #
    # @!attribute [rw] agent_version
    #   Contains the information of an agent version.
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
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   Identifier for a resource.
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
    #   Contains the information of a data source.
    #   @return [Types::DataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetDataSourceResponse AWS API Documentation
    #
    class GetDataSourceResponse < Struct.new(
      :data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_job_id
    #   Identifier for a resource.
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
    #   Contains the information of an ingestion job.
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
    #   Identifier for a resource.
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
    #   Contains the information of a knowledge base.
    #   @return [Types::KnowledgeBase]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/GetKnowledgeBaseResponse AWS API Documentation
    #
    class GetKnowledgeBaseResponse < Struct.new(
      :knowledge_base)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for inference in prompt configuration
    #
    # @!attribute [rw] temperature
    #   Controls randomness, higher values increase diversity
    #   @return [Float]
    #
    # @!attribute [rw] top_p
    #   Cumulative probability cutoff for token selection
    #   @return [Float]
    #
    # @!attribute [rw] top_k
    #   Sample from the k most likely next tokens
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_length
    #   Maximum length of output
    #   @return [Integer]
    #
    # @!attribute [rw] stop_sequences
    #   List of stop sequences
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

    # Contains the information of an ingestion job.
    #
    # @!attribute [rw] knowledge_base_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_job_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of an ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] statistics
    #   The document level statistics of an ingestion job
    #   @return [Types::IngestionJobStatistics]
    #
    # @!attribute [rw] failure_reasons
    #   Failure Reasons for Error.
    #   @return [Array<String>]
    #
    # @!attribute [rw] started_at
    #   Time Stamp.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Time Stamp.
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

    # Filters the response returned by ListIngestionJobs operation.
    #
    # @!attribute [rw] attribute
    #   The name of the field to filter ingestion jobs.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The operator used to filter ingestion jobs.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The list of values used to filter ingestion jobs.
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

    # Sorts the response returned by ListIngestionJobs operation.
    #
    # @!attribute [rw] attribute
    #   The name of the field to sort ingestion jobs.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   Order to sort results by.
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

    # The document level statistics of an ingestion job
    #
    # @!attribute [rw] number_of_documents_scanned
    #   Number of scanned documents
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_new_documents_indexed
    #   Number of indexed documents
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_modified_documents_indexed
    #   Number of modified documents indexed
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_documents_deleted
    #   Number of deleted documents
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_documents_failed
    #   Number of failed documents
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/IngestionJobStatistics AWS API Documentation
    #
    class IngestionJobStatistics < Struct.new(
      :number_of_documents_scanned,
      :number_of_new_documents_indexed,
      :number_of_modified_documents_indexed,
      :number_of_documents_deleted,
      :number_of_documents_failed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information of an ingestion job.
    #
    # @!attribute [rw] knowledge_base_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_job_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of an ingestion job.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   Time Stamp.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Time Stamp.
    #   @return [Time]
    #
    # @!attribute [rw] statistics
    #   The document level statistics of an ingestion job
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

    # This exception is thrown if there was an unexpected error during
    # processing of request
    #
    # @!attribute [rw] message
    #   Non Blank String
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the information of a knowledge base.
    #
    # @!attribute [rw] knowledge_base_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for a resource.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_arn
    #   ARN of a KnowledgeBase
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   ARN of a IAM role.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_configuration
    #   Configures a bedrock knowledge base.
    #   @return [Types::KnowledgeBaseConfiguration]
    #
    # @!attribute [rw] storage_configuration
    #   Configures the physical storage of ingested data in a knowledge
    #   base.
    #   @return [Types::StorageConfiguration]
    #
    # @!attribute [rw] status
    #   The status of a knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Time Stamp.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Time Stamp.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reasons
    #   Failure Reasons for Error.
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

    # Configures a bedrock knowledge base.
    #
    # @!attribute [rw] type
    #   The type of a knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] vector_knowledge_base_configuration
    #   Configurations for a vector knowledge base.
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

    # Summary information of a knowledge base.
    #
    # @!attribute [rw] knowledge_base_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for a resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Time Stamp.
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

    # List Action Groups Request
    #
    # @!attribute [rw] agent_id
    #   Id generated at the server side when an Agent is Listed
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   Id generated at the server side when an Agent is Listed
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Max Results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Opaque continuation token of previous paginated response.
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

    # List Action Groups Response
    #
    # @!attribute [rw] action_group_summaries
    #   List of ActionGroup Summaries
    #   @return [Array<Types::ActionGroupSummary>]
    #
    # @!attribute [rw] next_token
    #   Opaque continuation token of previous paginated response.
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

    # List Agent Aliases Request
    #
    # @!attribute [rw] agent_id
    #   Id generated at the server side when an Agent is created
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Max Results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Opaque continuation token of previous paginated response.
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

    # List Agent Aliases Response
    #
    # @!attribute [rw] agent_alias_summaries
    #   The list of summaries of all the aliases for an Agent.
    #   @return [Array<Types::AgentAliasSummary>]
    #
    # @!attribute [rw] next_token
    #   Opaque continuation token of previous paginated response.
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

    # List Agent Knowledge Bases Request
    #
    # @!attribute [rw] agent_id
    #   Id generated at the server side when an Agent is created
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   Version number generated when a version is created
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Max Results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Opaque continuation token of previous paginated response.
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

    # List Agent Knowledge Bases Response
    #
    # @!attribute [rw] agent_knowledge_base_summaries
    #   List of Agent Knowledge Base Summaries
    #   @return [Array<Types::AgentKnowledgeBaseSummary>]
    #
    # @!attribute [rw] next_token
    #   Opaque continuation token of previous paginated response.
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

    # List Agent Versions Request
    #
    # @!attribute [rw] agent_id
    #   Id generated at the server side when an Agent is created
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Max Results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Opaque continuation token of previous paginated response.
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

    # List Agent Versions Response
    #
    # @!attribute [rw] agent_version_summaries
    #   List of AgentVersionSummary.
    #   @return [Array<Types::AgentVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   Opaque continuation token of previous paginated response.
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

    # List Agent Request
    #
    # @!attribute [rw] max_results
    #   Max Results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Opaque continuation token of previous paginated response.
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

    # List Agent Response
    #
    # @!attribute [rw] agent_summaries
    #   List of AgentSummary.
    #   @return [Array<Types::AgentSummary>]
    #
    # @!attribute [rw] next_token
    #   Opaque continuation token of previous paginated response.
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
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Max Results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Opaque continuation token of previous paginated response.
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
    #   list of data source summaries
    #   @return [Array<Types::DataSourceSummary>]
    #
    # @!attribute [rw] next_token
    #   Opaque continuation token of previous paginated response.
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

    # @!attribute [rw] knowledge_base_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   List of IngestionJobFilters
    #   @return [Array<Types::IngestionJobFilter>]
    #
    # @!attribute [rw] sort_by
    #   Sorts the response returned by ListIngestionJobs operation.
    #   @return [Types::IngestionJobSortBy]
    #
    # @!attribute [rw] max_results
    #   Max Results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Opaque continuation token of previous paginated response.
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
    #   List of IngestionJobSummaries
    #   @return [Array<Types::IngestionJobSummary>]
    #
    # @!attribute [rw] next_token
    #   Opaque continuation token of previous paginated response.
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
    #   Max Results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Opaque continuation token of previous paginated response.
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
    #   List of KnowledgeBaseSummaries
    #   @return [Array<Types::KnowledgeBaseSummary>]
    #
    # @!attribute [rw] next_token
    #   Opaque continuation token of previous paginated response.
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
    #   ARN of Taggable resources: \[Agent, AgentAlias, Knowledge-Base\]
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
    #   A map of tag keys and values
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configurations to use OpenSearch Serverless to store
    # knowledge base data.
    #
    # @!attribute [rw] collection_arn
    #   Arn of an OpenSearch Serverless collection.
    #   @return [String]
    #
    # @!attribute [rw] vector_index_name
    #   Arn of an OpenSearch Serverless index.
    #   @return [String]
    #
    # @!attribute [rw] field_mapping
    #   A mapping of Bedrock Knowledge Base fields to OpenSearch Serverless
    #   field names
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

    # A mapping of Bedrock Knowledge Base fields to OpenSearch Serverless
    # field names
    #
    # @!attribute [rw] vector_field
    #   Name of the field
    #   @return [String]
    #
    # @!attribute [rw] text_field
    #   Name of the field
    #   @return [String]
    #
    # @!attribute [rw] metadata_field
    #   Name of the field
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

    # Contains the configurations to use Pinecone to store knowledge base
    # data.
    #
    # @!attribute [rw] connection_string
    #   Pinecone connection string
    #   @return [String]
    #
    # @!attribute [rw] credentials_secret_arn
    #   Arn of a SecretsManager Secret.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   Pinecone namespace
    #   @return [String]
    #
    # @!attribute [rw] field_mapping
    #   A mapping of Bedrock Knowledge Base fields to Pinecone field names
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

    # A mapping of Bedrock Knowledge Base fields to Pinecone field names
    #
    # @!attribute [rw] text_field
    #   Name of the field
    #   @return [String]
    #
    # @!attribute [rw] metadata_field
    #   Name of the field
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

    # PrepareAgent Request
    #
    # @!attribute [rw] agent_id
    #   Id generated at the server side when an Agent is created
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PrepareAgentRequest AWS API Documentation
    #
    class PrepareAgentRequest < Struct.new(
      :agent_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # PrepareAgent Response
    #
    # @!attribute [rw] agent_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] agent_status
    #   Schema Type for Action APIs.
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   Agent Version.
    #   @return [String]
    #
    # @!attribute [rw] prepared_at
    #   Time Stamp.
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

    # BasePromptConfiguration per Prompt Type.
    #
    # @!attribute [rw] prompt_type
    #   Prompt Type.
    #   @return [String]
    #
    # @!attribute [rw] prompt_creation_mode
    #   Creation Mode for Prompt Configuration.
    #   @return [String]
    #
    # @!attribute [rw] prompt_state
    #   Prompt State.
    #   @return [String]
    #
    # @!attribute [rw] base_prompt_template
    #   Base Prompt Template.
    #   @return [String]
    #
    # @!attribute [rw] inference_configuration
    #   Configuration for inference in prompt configuration
    #   @return [Types::InferenceConfiguration]
    #
    # @!attribute [rw] parser_mode
    #   Creation Mode for Prompt Configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/PromptConfiguration AWS API Documentation
    #
    class PromptConfiguration < Struct.new(
      :prompt_type,
      :prompt_creation_mode,
      :prompt_state,
      :base_prompt_template,
      :inference_configuration,
      :parser_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for prompt override.
    #
    # @!attribute [rw] prompt_configurations
    #   List of BasePromptConfiguration
    #   @return [Array<Types::PromptConfiguration>]
    #
    # @!attribute [rw] override_lambda
    #   ARN of a Lambda.
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

    # Contains the configurations to use RDS to store knowledge base data.
    #
    # @!attribute [rw] resource_arn
    #   Arn of a RDS Resource.
    #   @return [String]
    #
    # @!attribute [rw] credentials_secret_arn
    #   Arn of a SecretsManager Secret.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   Name of the database within RDS
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   Name of the table within RDS
    #   @return [String]
    #
    # @!attribute [rw] field_mapping
    #   A mapping of Bedrock Knowledge Base fields to RDS column names
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

    # A mapping of Bedrock Knowledge Base fields to RDS column names
    #
    # @!attribute [rw] primary_key_field
    #   Name of the column
    #   @return [String]
    #
    # @!attribute [rw] vector_field
    #   Name of the column
    #   @return [String]
    #
    # @!attribute [rw] text_field
    #   Name of the column
    #   @return [String]
    #
    # @!attribute [rw] metadata_field
    #   Name of the column
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/RdsFieldMapping AWS API Documentation
    #
    class RdsFieldMapping < Struct.new(
      :primary_key_field,
      :vector_field,
      :text_field,
      :metadata_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configurations to use Redis Enterprise Cloud to store
    # knowledge base data.
    #
    # @!attribute [rw] endpoint
    #   Redis enterprise cloud endpoint
    #   @return [String]
    #
    # @!attribute [rw] vector_index_name
    #   Name of a redis enterprise cloud index
    #   @return [String]
    #
    # @!attribute [rw] credentials_secret_arn
    #   Arn of a SecretsManager Secret.
    #   @return [String]
    #
    # @!attribute [rw] field_mapping
    #   A mapping of Bedrock Knowledge Base fields to Redis Cloud field
    #   names
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

    # A mapping of Bedrock Knowledge Base fields to Redis Cloud field names
    #
    # @!attribute [rw] vector_field
    #   Name of the field
    #   @return [String]
    #
    # @!attribute [rw] text_field
    #   Name of the field
    #   @return [String]
    #
    # @!attribute [rw] metadata_field
    #   Name of the field
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

    # This exception is thrown when a resource referenced by the operation
    # does not exist
    #
    # @!attribute [rw] message
    #   Non Blank String
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures an S3 data source location.
    #
    # @!attribute [rw] bucket_arn
    #   A S3 bucket ARN
    #   @return [String]
    #
    # @!attribute [rw] inclusion_prefixes
    #   A list of S3 prefixes.
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

    # The identifier for the S3 resource.
    #
    # @!attribute [rw] s3_bucket_name
    #   A bucket in S3.
    #   @return [String]
    #
    # @!attribute [rw] s3_object_key
    #   A object key in S3.
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

    # Server-side encryption configuration.
    #
    # @!attribute [rw] kms_key_arn
    #   A KMS key ARN
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ServerSideEncryptionConfiguration AWS API Documentation
    #
    class ServerSideEncryptionConfiguration < Struct.new(
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when a request is made beyond the service
    # quota
    #
    # @!attribute [rw] message
    #   Non Blank String
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Client specified token used for idempotency checks
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
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
    #   Contains the information of an ingestion job.
    #   @return [Types::IngestionJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/StartIngestionJobResponse AWS API Documentation
    #
    class StartIngestionJobResponse < Struct.new(
      :ingestion_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures the physical storage of ingested data in a knowledge base.
    #
    # @!attribute [rw] type
    #   The storage type of a knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] opensearch_serverless_configuration
    #   Contains the configurations to use OpenSearch Serverless to store
    #   knowledge base data.
    #   @return [Types::OpenSearchServerlessConfiguration]
    #
    # @!attribute [rw] pinecone_configuration
    #   Contains the configurations to use Pinecone to store knowledge base
    #   data.
    #   @return [Types::PineconeConfiguration]
    #
    # @!attribute [rw] redis_enterprise_cloud_configuration
    #   Contains the configurations to use Redis Enterprise Cloud to store
    #   knowledge base data.
    #   @return [Types::RedisEnterpriseCloudConfiguration]
    #
    # @!attribute [rw] rds_configuration
    #   Contains the configurations to use RDS to store knowledge base data.
    #   @return [Types::RdsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/StorageConfiguration AWS API Documentation
    #
    class StorageConfiguration < Struct.new(
      :type,
      :opensearch_serverless_configuration,
      :pinecone_configuration,
      :redis_enterprise_cloud_configuration,
      :rds_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   ARN of Taggable resources: \[Agent, AgentAlias, Knowledge-Base\]
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values
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

    # This exception is thrown when the number of requests exceeds the limit
    #
    # @!attribute [rw] message
    #   Non Blank String
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
    #   ARN of Taggable resources: \[Agent, AgentAlias, Knowledge-Base\]
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   List of Tag Keys
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

    # Update Action Group Request
    #
    # @!attribute [rw] agent_id
    #   Id generated at the server side when an Agent is created
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   Draft Version of the Agent.
    #   @return [String]
    #
    # @!attribute [rw] action_group_id
    #   Id generated at the server side when an Action Group is created
    #   under Agent
    #   @return [String]
    #
    # @!attribute [rw] action_group_name
    #   Name for a resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] parent_action_group_signature
    #   Action Group Signature for a BuiltIn Action
    #   @return [String]
    #
    # @!attribute [rw] action_group_executor
    #   Type of Executors for an Action Group
    #   @return [Types::ActionGroupExecutor]
    #
    # @!attribute [rw] action_group_state
    #   State of the action group
    #   @return [String]
    #
    # @!attribute [rw] api_schema
    #   Contains information about the API Schema for the Action Group
    #   @return [Types::APISchema]
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
      :action_group_executor,
      :action_group_state,
      :api_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update Action Group Response
    #
    # @!attribute [rw] agent_action_group
    #   Contains the information of an Agent Action Group
    #   @return [Types::AgentActionGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentActionGroupResponse AWS API Documentation
    #
    class UpdateAgentActionGroupResponse < Struct.new(
      :agent_action_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update Agent Alias Request
    #
    # @!attribute [rw] agent_id
    #   Id generated at the server side when an Agent is created
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_id
    #   Id generated at the server side when an Agent Alias is created
    #   @return [String]
    #
    # @!attribute [rw] agent_alias_name
    #   Name for a resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] routing_configuration
    #   Routing configuration for an Agent alias.
    #   @return [Array<Types::AgentAliasRoutingConfigurationListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentAliasRequest AWS API Documentation
    #
    class UpdateAgentAliasRequest < Struct.new(
      :agent_id,
      :agent_alias_id,
      :agent_alias_name,
      :description,
      :routing_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update Agent Alias Response
    #
    # @!attribute [rw] agent_alias
    #   Contains the information of an agent alias
    #   @return [Types::AgentAlias]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentAliasResponse AWS API Documentation
    #
    class UpdateAgentAliasResponse < Struct.new(
      :agent_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update Agent Knowledge Base Request
    #
    # @!attribute [rw] agent_id
    #   Id generated at the server side when an Agent is created
    #   @return [String]
    #
    # @!attribute [rw] agent_version
    #   Draft Version of the Agent.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   Id generated at the server side when a Knowledge Base is associated
    #   to an Agent
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_state
    #   State of the knowledge base; whether it is enabled or disabled
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

    # Update Agent Knowledge Base Response
    #
    # @!attribute [rw] agent_knowledge_base
    #   Contains the information of an Agent Knowledge Base.
    #   @return [Types::AgentKnowledgeBase]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentKnowledgeBaseResponse AWS API Documentation
    #
    class UpdateAgentKnowledgeBaseResponse < Struct.new(
      :agent_knowledge_base)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update Agent Request
    #
    # @!attribute [rw] agent_id
    #   Id generated at the server side when an Agent is created
    #   @return [String]
    #
    # @!attribute [rw] agent_name
    #   Name for a resource.
    #   @return [String]
    #
    # @!attribute [rw] instruction
    #   Instruction for the agent.
    #   @return [String]
    #
    # @!attribute [rw] foundation_model
    #   ARN or name of a Bedrock model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] idle_session_ttl_in_seconds
    #   Max Session Time.
    #   @return [Integer]
    #
    # @!attribute [rw] agent_resource_role_arn
    #   ARN of a IAM role.
    #   @return [String]
    #
    # @!attribute [rw] customer_encryption_key_arn
    #   A KMS key ARN
    #   @return [String]
    #
    # @!attribute [rw] prompt_override_configuration
    #   Configuration for prompt override.
    #   @return [Types::PromptOverrideConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateAgentRequest AWS API Documentation
    #
    class UpdateAgentRequest < Struct.new(
      :agent_id,
      :agent_name,
      :instruction,
      :foundation_model,
      :description,
      :idle_session_ttl_in_seconds,
      :agent_resource_role_arn,
      :customer_encryption_key_arn,
      :prompt_override_configuration)
      SENSITIVE = [:instruction, :prompt_override_configuration]
      include Aws::Structure
    end

    # Update Agent Response
    #
    # @!attribute [rw] agent
    #   Contains the information of an agent
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
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for a resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] data_source_configuration
    #   Specifies a raw data source location to ingest.
    #   @return [Types::DataSourceConfiguration]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   Server-side encryption configuration.
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] vector_ingestion_configuration
    #   Configures ingestion for a vector knowledge base
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
      :server_side_encryption_configuration,
      :vector_ingestion_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source
    #   Contains the information of a data source.
    #   @return [Types::DataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateDataSourceResponse AWS API Documentation
    #
    class UpdateDataSourceResponse < Struct.new(
      :data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   Identifier for a resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for a resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   ARN of a IAM role.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_configuration
    #   Configures a bedrock knowledge base.
    #   @return [Types::KnowledgeBaseConfiguration]
    #
    # @!attribute [rw] storage_configuration
    #   Configures the physical storage of ingested data in a knowledge
    #   base.
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
    #   Contains the information of a knowledge base.
    #   @return [Types::KnowledgeBase]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/UpdateKnowledgeBaseResponse AWS API Documentation
    #
    class UpdateKnowledgeBaseResponse < Struct.new(
      :knowledge_base)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the request's input validation fails
    #
    # @!attribute [rw] message
    #   Non Blank String
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   list of ValidationExceptionField
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
    # in an exception
    #
    # @!attribute [rw] name
    #   Non Blank String
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Non Blank String
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

    # Configures ingestion for a vector knowledge base
    #
    # @!attribute [rw] chunking_configuration
    #   Configures chunking strategy
    #   @return [Types::ChunkingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-2023-06-05/VectorIngestionConfiguration AWS API Documentation
    #
    class VectorIngestionConfiguration < Struct.new(
      :chunking_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configurations for a vector knowledge base.
    #
    # @!attribute [rw] embedding_model_arn
    #   Arn of a Bedrock model.
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

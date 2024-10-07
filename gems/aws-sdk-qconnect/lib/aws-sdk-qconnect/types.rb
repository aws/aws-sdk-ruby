# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::QConnect
  module Types

    # A typed union that specifies the configuration based on the type of AI
    # Agent.
    #
    # @note AIAgentConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note AIAgentConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AIAgentConfiguration corresponding to the set member.
    #
    # @!attribute [rw] answer_recommendation_ai_agent_configuration
    #   The configuration for AI Agents of type `ANSWER_RECOMMENDATION`.
    #   @return [Types::AnswerRecommendationAIAgentConfiguration]
    #
    # @!attribute [rw] manual_search_ai_agent_configuration
    #   The configuration for AI Agents of type `MANUAL_SEARCH`.
    #   @return [Types::ManualSearchAIAgentConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AIAgentConfiguration AWS API Documentation
    #
    class AIAgentConfiguration < Struct.new(
      :answer_recommendation_ai_agent_configuration,
      :manual_search_ai_agent_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AnswerRecommendationAiAgentConfiguration < AIAgentConfiguration; end
      class ManualSearchAiAgentConfiguration < AIAgentConfiguration; end
      class Unknown < AIAgentConfiguration; end
    end

    # A type that specifies the AI Agent ID configuration data when mapping
    # an AI Agents to be used for an AI Agent type on a session or
    # assistant.
    #
    # @!attribute [rw] ai_agent_id
    #   The ID of the AI Agent to be configured.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AIAgentConfigurationData AWS API Documentation
    #
    class AIAgentConfigurationData < Struct.new(
      :ai_agent_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data for the AI Agent.
    #
    # @!attribute [rw] ai_agent_arn
    #   The Amazon Resource Name (ARN) of the AI agent.
    #   @return [String]
    #
    # @!attribute [rw] ai_agent_id
    #   The identifier of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Configuration for the AI Agent.
    #   @return [Types::AIAgentConfiguration]
    #
    # @!attribute [rw] description
    #   The description of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] modified_time
    #   The time the AI Agent was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   Specifies the origin of the AI Agent. `SYSTEM` for a default AI
    #   Agent created by Q in Connect or `CUSTOMER` for an AI Agent created
    #   by calling AI Agent creation APIs.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] visibility_status
    #   The visibility status of the AI Agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AIAgentData AWS API Documentation
    #
    class AIAgentData < Struct.new(
      :ai_agent_arn,
      :ai_agent_id,
      :assistant_arn,
      :assistant_id,
      :configuration,
      :description,
      :modified_time,
      :name,
      :origin,
      :status,
      :tags,
      :type,
      :visibility_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the AI Agent.
    #
    # @!attribute [rw] ai_agent_arn
    #   The Amazon Resource Name (ARN) of the AI agent.
    #   @return [String]
    #
    # @!attribute [rw] ai_agent_id
    #   The identifier of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration for the AI Agent.
    #   @return [Types::AIAgentConfiguration]
    #
    # @!attribute [rw] description
    #   The description of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] modified_time
    #   The time the AI Agent was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   The origin of the AI Agent. `SYSTEM` for a default AI Agent created
    #   by Q in Connect or `CUSTOMER` for an AI Agent created by calling AI
    #   Agent creation APIs.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] visibility_status
    #   The visibility status of the AI Agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AIAgentSummary AWS API Documentation
    #
    class AIAgentSummary < Struct.new(
      :ai_agent_arn,
      :ai_agent_id,
      :assistant_arn,
      :assistant_id,
      :configuration,
      :description,
      :modified_time,
      :name,
      :origin,
      :status,
      :tags,
      :type,
      :visibility_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the AI Agent version.
    #
    # @!attribute [rw] ai_agent_summary
    #   The data for the summary of the AI Agent version.
    #   @return [Types::AIAgentSummary]
    #
    # @!attribute [rw] version_number
    #   The version number for this AI Agent version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AIAgentVersionSummary AWS API Documentation
    #
    class AIAgentVersionSummary < Struct.new(
      :ai_agent_summary,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data for the AI Prompt
    #
    # @!attribute [rw] ai_prompt_arn
    #   The Amazon Resource Name (ARN) of the AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] ai_prompt_id
    #   The identifier of the Amazon Q in Connect AI prompt.
    #   @return [String]
    #
    # @!attribute [rw] api_format
    #   The API format used for this AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The identifier of the model used for this AI Prompt. Model Ids
    #   supported are: `CLAUDE_3_HAIKU_20240307_V1`.
    #   @return [String]
    #
    # @!attribute [rw] modified_time
    #   The time the AI Prompt was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the AI Prompt
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   The origin of the AI Prompt. `SYSTEM` for a default AI Prompt
    #   created by Q in Connect or `CUSTOMER` for an AI Prompt created by
    #   calling AI Prompt creation APIs.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_configuration
    #   The configuration of the prompt template for this AI Prompt.
    #   @return [Types::AIPromptTemplateConfiguration]
    #
    # @!attribute [rw] template_type
    #   The type of the prompt template for this AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of this AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] visibility_status
    #   The visibility status of the AI Prompt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AIPromptData AWS API Documentation
    #
    class AIPromptData < Struct.new(
      :ai_prompt_arn,
      :ai_prompt_id,
      :api_format,
      :assistant_arn,
      :assistant_id,
      :description,
      :model_id,
      :modified_time,
      :name,
      :origin,
      :status,
      :tags,
      :template_configuration,
      :template_type,
      :type,
      :visibility_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the AI Prompt.
    #
    # @!attribute [rw] ai_prompt_arn
    #   The Amazon Resource Name (ARN) of the AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] ai_prompt_id
    #   The identifier of the Amazon Q in Connect AI prompt.
    #   @return [String]
    #
    # @!attribute [rw] api_format
    #   The API format used for this AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The identifier of the model used for this AI Prompt. Model Ids
    #   supported are: `CLAUDE_3_HAIKU_20240307_V1`.
    #   @return [String]
    #
    # @!attribute [rw] modified_time
    #   The time the AI Prompt was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   The origin of the AI Prompt. `SYSTEM` for a default AI Prompt
    #   created by Q in Connect or `CUSTOMER` for an AI Prompt created by
    #   calling AI Prompt creation APIs.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_type
    #   The type of the prompt template for this AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of this AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] visibility_status
    #   The visibility status of the AI Prompt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AIPromptSummary AWS API Documentation
    #
    class AIPromptSummary < Struct.new(
      :ai_prompt_arn,
      :ai_prompt_id,
      :api_format,
      :assistant_arn,
      :assistant_id,
      :description,
      :model_id,
      :modified_time,
      :name,
      :origin,
      :status,
      :tags,
      :template_type,
      :type,
      :visibility_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A typed union that specifies the configuration for a prompt template
    # based on its type.
    #
    # @note AIPromptTemplateConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note AIPromptTemplateConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AIPromptTemplateConfiguration corresponding to the set member.
    #
    # @!attribute [rw] text_full_ai_prompt_edit_template_configuration
    #   The configuration for a prompt template that supports full textual
    #   prompt configuration using a YAML prompt.
    #   @return [Types::TextFullAIPromptEditTemplateConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AIPromptTemplateConfiguration AWS API Documentation
    #
    class AIPromptTemplateConfiguration < Struct.new(
      :text_full_ai_prompt_edit_template_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class TextFullAiPromptEditTemplateConfiguration < AIPromptTemplateConfiguration; end
      class Unknown < AIPromptTemplateConfiguration; end
    end

    # The summary of the AI Prompt version.
    #
    # @!attribute [rw] ai_prompt_summary
    #   The date for the summary of the AI Prompt version.
    #   @return [Types::AIPromptSummary]
    #
    # @!attribute [rw] version_number
    #   The version number for this AI Prompt version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AIPromptVersionSummary AWS API Documentation
    #
    class AIPromptVersionSummary < Struct.new(
      :ai_prompt_summary,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Content association data for a [step-by-step guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/step-by-step-guided-experiences.html
    #
    # @!attribute [rw] flow_id
    #   The Amazon Resource Name (ARN) of an Amazon Connect flow.
    #   Step-by-step guides are a type of flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AmazonConnectGuideAssociationData AWS API Documentation
    #
    class AmazonConnectGuideAssociationData < Struct.new(
      :flow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for the `ANSWER_RECOMMENDATION` AI Agent type.
    #
    # @!attribute [rw] answer_generation_ai_prompt_id
    #   The AI Prompt identifier for the Answer Generation prompt used by
    #   the `ANSWER_RECOMMENDATION` AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] association_configurations
    #   The association configurations for overriding behavior on this AI
    #   Agent.
    #   @return [Array<Types::AssociationConfiguration>]
    #
    # @!attribute [rw] intent_labeling_generation_ai_prompt_id
    #   The AI Prompt identifier for the Intent Labeling prompt used by the
    #   `ANSWER_RECOMMENDATION` AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] query_reformulation_ai_prompt_id
    #   The AI Prompt identifier for the Query Reformulation prompt used by
    #   the `ANSWER_RECOMMENDATION` AI Agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AnswerRecommendationAIAgentConfiguration AWS API Documentation
    #
    class AnswerRecommendationAIAgentConfiguration < Struct.new(
      :answer_generation_ai_prompt_id,
      :association_configurations,
      :intent_labeling_generation_ai_prompt_id,
      :query_reformulation_ai_prompt_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for Amazon AppIntegrations to automatically
    # ingest content.
    #
    # @!attribute [rw] app_integration_arn
    #   The Amazon Resource Name (ARN) of the AppIntegrations
    #   DataIntegration to use for ingesting content.
    #
    #   * For [ Salesforce][1], your AppIntegrations DataIntegration must
    #     have an ObjectConfiguration if objectFields is not provided,
    #     including at least `Id`, `ArticleNumber`, `VersionNumber`,
    #     `Title`, `PublishStatus`, and `IsDeleted` as source fields.
    #
    #   * For [ ServiceNow][2], your AppIntegrations DataIntegration must
    #     have an ObjectConfiguration if objectFields is not provided,
    #     including at least `number`, `short_description`, `sys_mod_count`,
    #     `workflow_state`, and `active` as source fields.
    #
    #   * For [ Zendesk][3], your AppIntegrations DataIntegration must have
    #     an ObjectConfiguration if `objectFields` is not provided,
    #     including at least `id`, `title`, `updated_at`, and `draft` as
    #     source fields.
    #
    #   * For [SharePoint][4], your AppIntegrations DataIntegration must
    #     have a FileConfiguration, including only file extensions that are
    #     among `docx`, `pdf`, `html`, `htm`, and `txt`.
    #
    #   * For [Amazon S3][5], the ObjectConfiguration and FileConfiguration
    #     of your AppIntegrations DataIntegration must be null. The
    #     `SourceURI` of your DataIntegration must use the following format:
    #     `s3://your_s3_bucket_name`.
    #
    #     The bucket policy of the corresponding S3 bucket must allow the
    #     Amazon Web Services principal `app-integrations.amazonaws.com` to
    #     perform `s3:ListBucket`, `s3:GetObject`, and
    #     `s3:GetBucketLocation` against the bucket.
    #
    #
    #
    #   [1]: https://developer.salesforce.com/docs/atlas.en-us.knowledge_dev.meta/knowledge_dev/sforce_api_objects_knowledge__kav.htm
    #   [2]: https://developer.servicenow.com/dev.do#!/reference/api/rome/rest/knowledge-management-api
    #   [3]: https://developer.zendesk.com/api-reference/help_center/help-center-api/articles/
    #   [4]: https://learn.microsoft.com/en-us/sharepoint/dev/sp-add-ins/sharepoint-net-server-csom-jsom-and-rest-api-index
    #   [5]: http://aws.amazon.com/s3/
    #   @return [String]
    #
    # @!attribute [rw] object_fields
    #   The fields from the source that are made available to your agents in
    #   Amazon Q in Connect. Optional if ObjectConfiguration is included in
    #   the provided DataIntegration.
    #
    #   * For [ Salesforce][1], you must include at least `Id`,
    #     `ArticleNumber`, `VersionNumber`, `Title`, `PublishStatus`, and
    #     `IsDeleted`.
    #
    #   * For [ ServiceNow][2], you must include at least `number`,
    #     `short_description`, `sys_mod_count`, `workflow_state`, and
    #     `active`.
    #
    #   * For [ Zendesk][3], you must include at least `id`, `title`,
    #     `updated_at`, and `draft`.
    #
    #   Make sure to include additional fields. These fields are indexed and
    #   used to source recommendations.
    #
    #
    #
    #   [1]: https://developer.salesforce.com/docs/atlas.en-us.knowledge_dev.meta/knowledge_dev/sforce_api_objects_knowledge__kav.htm
    #   [2]: https://developer.servicenow.com/dev.do#!/reference/api/rome/rest/knowledge-management-api
    #   [3]: https://developer.zendesk.com/api-reference/help_center/help-center-api/articles/
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AppIntegrationsConfiguration AWS API Documentation
    #
    class AppIntegrationsConfiguration < Struct.new(
      :app_integration_arn,
      :object_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the assistant association.
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_association_arn
    #   The Amazon Resource Name (ARN) of the assistant association.
    #   @return [String]
    #
    # @!attribute [rw] assistant_association_id
    #   The identifier of the assistant association.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] association_data
    #   A union type that currently has a single argument, the knowledge
    #   base ID.
    #   @return [Types::AssistantAssociationOutputData]
    #
    # @!attribute [rw] association_type
    #   The type of association.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AssistantAssociationData AWS API Documentation
    #
    class AssistantAssociationData < Struct.new(
      :assistant_arn,
      :assistant_association_arn,
      :assistant_association_id,
      :assistant_id,
      :association_data,
      :association_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data that is input into Amazon Q in Connect as a result of the
    # assistant association.
    #
    # @note AssistantAssociationInputData is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AssistantAssociationInputData AWS API Documentation
    #
    class AssistantAssociationInputData < Struct.new(
      :knowledge_base_id,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class KnowledgeBaseId < AssistantAssociationInputData; end
      class Unknown < AssistantAssociationInputData; end
    end

    # The data that is output as a result of the assistant association.
    #
    # @note AssistantAssociationOutputData is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AssistantAssociationOutputData corresponding to the set member.
    #
    # @!attribute [rw] knowledge_base_association
    #   The knowledge base where output data is sent.
    #   @return [Types::KnowledgeBaseAssociationData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AssistantAssociationOutputData AWS API Documentation
    #
    class AssistantAssociationOutputData < Struct.new(
      :knowledge_base_association,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class KnowledgeBaseAssociation < AssistantAssociationOutputData; end
      class Unknown < AssistantAssociationOutputData; end
    end

    # Summary information about the assistant association.
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_association_arn
    #   The Amazon Resource Name (ARN) of the assistant association.
    #   @return [String]
    #
    # @!attribute [rw] assistant_association_id
    #   The identifier of the assistant association.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] association_data
    #   The association data.
    #   @return [Types::AssistantAssociationOutputData]
    #
    # @!attribute [rw] association_type
    #   The type of association.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AssistantAssociationSummary AWS API Documentation
    #
    class AssistantAssociationSummary < Struct.new(
      :assistant_arn,
      :assistant_association_arn,
      :assistant_association_id,
      :assistant_id,
      :association_data,
      :association_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The capability configuration for an Amazon Q in Connect assistant.
    #
    # @!attribute [rw] type
    #   The type of Amazon Q in Connect assistant capability.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AssistantCapabilityConfiguration AWS API Documentation
    #
    class AssistantCapabilityConfiguration < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The assistant data.
    #
    # @!attribute [rw] ai_agent_configuration
    #   The configuration of the AI Agents (mapped by AI Agent Type to AI
    #   Agent version) that is set on the Amazon Q in Connect Assistant.
    #   @return [Hash<String,Types::AIAgentConfigurationData>]
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] capability_configuration
    #   The configuration information for the Amazon Q in Connect assistant
    #   capability.
    #   @return [Types::AssistantCapabilityConfiguration]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] integration_configuration
    #   The configuration information for the Amazon Q in Connect assistant
    #   integration.
    #   @return [Types::AssistantIntegrationConfiguration]
    #
    # @!attribute [rw] name
    #   The name.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The configuration information for the customer managed key used for
    #   encryption.
    #
    #   This KMS key must have a policy that allows `kms:CreateGrant`,
    #   `kms:DescribeKey`, `kms:Decrypt`, and `kms:GenerateDataKey*`
    #   permissions to the IAM identity using the key to invoke Amazon Q in
    #   Connect. To use Amazon Q in Connect with chat, the key policy must
    #   also allow `kms:Decrypt`, `kms:GenerateDataKey*`, and
    #   `kms:DescribeKey` permissions to the `connect.amazonaws.com` service
    #   principal.
    #
    #   For more information about setting up a customer managed key for
    #   Amazon Q in Connect, see [Enable Amazon Q in Connect for your
    #   instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] status
    #   The status of the assistant.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of assistant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AssistantData AWS API Documentation
    #
    class AssistantData < Struct.new(
      :ai_agent_configuration,
      :assistant_arn,
      :assistant_id,
      :capability_configuration,
      :description,
      :integration_configuration,
      :name,
      :server_side_encryption_configuration,
      :status,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration information for the Amazon Q in Connect assistant
    # integration.
    #
    # @!attribute [rw] topic_integration_arn
    #   The Amazon Resource Name (ARN) of the integrated Amazon SNS topic
    #   used for streaming chat messages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AssistantIntegrationConfiguration AWS API Documentation
    #
    class AssistantIntegrationConfiguration < Struct.new(
      :topic_integration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about the assistant.
    #
    # @!attribute [rw] ai_agent_configuration
    #   The configuration of the AI Agents (mapped by AI Agent Type to AI
    #   Agent version) that is set on the Amazon Q in Connect Assistant.
    #   @return [Hash<String,Types::AIAgentConfigurationData>]
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] capability_configuration
    #   The configuration information for the Amazon Q in Connect assistant
    #   capability.
    #   @return [Types::AssistantCapabilityConfiguration]
    #
    # @!attribute [rw] description
    #   The description of the assistant.
    #   @return [String]
    #
    # @!attribute [rw] integration_configuration
    #   The configuration information for the Amazon Q in Connect assistant
    #   integration.
    #   @return [Types::AssistantIntegrationConfiguration]
    #
    # @!attribute [rw] name
    #   The name of the assistant.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The configuration information for the customer managed key used for
    #   encryption.
    #
    #   This KMS key must have a policy that allows `kms:CreateGrant`,
    #   `kms:DescribeKey`, `kms:Decrypt`, and `kms:GenerateDataKey*`
    #   permissions to the IAM identity using the key to invoke Amazon Q in
    #   Connect. To use Amazon Q in Connect with chat, the key policy must
    #   also allow `kms:Decrypt`, `kms:GenerateDataKey*`, and
    #   `kms:DescribeKey` permissions to the `connect.amazonaws.com` service
    #   principal.
    #
    #   For more information about setting up a customer managed key for
    #   Amazon Q in Connect, see [Enable Amazon Q in Connect for your
    #   instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] status
    #   The status of the assistant.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of the assistant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AssistantSummary AWS API Documentation
    #
    class AssistantSummary < Struct.new(
      :ai_agent_configuration,
      :assistant_arn,
      :assistant_id,
      :capability_configuration,
      :description,
      :integration_configuration,
      :name,
      :server_side_encryption_configuration,
      :status,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for an Amazon Q in Connect Assistant Association.
    #
    # @!attribute [rw] association_configuration_data
    #   The data of the configuration for an Amazon Q in Connect Assistant
    #   Association.
    #   @return [Types::AssociationConfigurationData]
    #
    # @!attribute [rw] association_id
    #   The identifier of the association for this Association
    #   Configuration.
    #   @return [String]
    #
    # @!attribute [rw] association_type
    #   The type of the association for this Association Configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AssociationConfiguration AWS API Documentation
    #
    class AssociationConfiguration < Struct.new(
      :association_configuration_data,
      :association_id,
      :association_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A typed union of the data of the configuration for an Amazon Q in
    # Connect Assistant Association.
    #
    # @note AssociationConfigurationData is a union - when making an API calls you must set exactly one of the members.
    #
    # @note AssociationConfigurationData is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AssociationConfigurationData corresponding to the set member.
    #
    # @!attribute [rw] knowledge_base_association_configuration_data
    #   The data of the configuration for a `KNOWLEDGE_BASE` type Amazon Q
    #   in Connect Assistant Association.
    #   @return [Types::KnowledgeBaseAssociationConfigurationData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AssociationConfigurationData AWS API Documentation
    #
    class AssociationConfigurationData < Struct.new(
      :knowledge_base_association_configuration_data,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class KnowledgeBaseAssociationConfigurationData < AssociationConfigurationData; end
      class Unknown < AssociationConfigurationData; end
    end

    # Settings for a foundation model used to parse documents for a data
    # source.
    #
    # @!attribute [rw] model_arn
    #   The ARN of the foundation model.
    #   @return [String]
    #
    # @!attribute [rw] parsing_prompt
    #   Instructions for interpreting the contents of a document.
    #   @return [Types::ParsingPrompt]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/BedrockFoundationModelConfigurationForParsing AWS API Documentation
    #
    class BedrockFoundationModelConfigurationForParsing < Struct.new(
      :model_arn,
      :parsing_prompt)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about how to chunk the documents in the data source. A chunk
    # refers to an excerpt from a data source that is returned when the
    # knowledge base that it belongs to is queried.
    #
    # @!attribute [rw] chunking_strategy
    #   Knowledge base can split your source data into chunks. A chunk
    #   refers to an excerpt from a data source that is returned when the
    #   knowledge base that it belongs to is queried. You have the following
    #   options for chunking your data. If you opt for `NONE`, then you may
    #   want to pre-process your files by splitting them up such that each
    #   file corresponds to a chunk.
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
    #   chunking splits a document into smaller documents based on groups of
    #   similar content derived from the text with natural language
    #   processing.
    #   @return [Types::SemanticChunkingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ChunkingConfiguration AWS API Documentation
    #
    class ChunkingConfiguration < Struct.new(
      :chunking_strategy,
      :fixed_size_chunking_configuration,
      :hierarchical_chunking_configuration,
      :semantic_chunking_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about where the text with a citation begins and
    # ends in the generated output.
    #
    # @!attribute [rw] begin_offset_inclusive
    #   Where the text with a citation starts in the generated output.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset_exclusive
    #   Where the text with a citation ends in the generated output.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CitationSpan AWS API Documentation
    #
    class CitationSpan < Struct.new(
      :begin_offset_inclusive,
      :end_offset_exclusive)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration information of the external data source.
    #
    # @note Configuration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Configuration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Configuration corresponding to the set member.
    #
    # @!attribute [rw] connect_configuration
    #   The configuration information of the Amazon Connect data source.
    #   @return [Types::ConnectConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/Configuration AWS API Documentation
    #
    class Configuration < Struct.new(
      :connect_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ConnectConfiguration < Configuration; end
      class Unknown < Configuration; end
    end

    # The request could not be processed because of conflict in the current
    # state of the resource. For example, if you're using a `Create` API
    # (such as `CreateAssistant`) that accepts name, a conflicting resource
    # (usually with the same name) is being created or mutated.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration information of the Amazon Connect data source.
    #
    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ConnectConfiguration AWS API Documentation
    #
    class ConnectConfiguration < Struct.new(
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The contents of a content association.
    #
    # @note ContentAssociationContents is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ContentAssociationContents is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ContentAssociationContents corresponding to the set member.
    #
    # @!attribute [rw] amazon_connect_guide_association
    #   The data of the step-by-step guide association.
    #   @return [Types::AmazonConnectGuideAssociationData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ContentAssociationContents AWS API Documentation
    #
    class ContentAssociationContents < Struct.new(
      :amazon_connect_guide_association,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AmazonConnectGuideAssociation < ContentAssociationContents; end
      class Unknown < ContentAssociationContents; end
    end

    # Information about the content association.
    #
    # @!attribute [rw] association_data
    #   The content association.
    #   @return [Types::ContentAssociationContents]
    #
    # @!attribute [rw] association_type
    #   The type of association.
    #   @return [String]
    #
    # @!attribute [rw] content_arn
    #   The Amazon Resource Name (ARN) of the content.
    #   @return [String]
    #
    # @!attribute [rw] content_association_arn
    #   The Amazon Resource Name (ARN) of the content association.
    #   @return [String]
    #
    # @!attribute [rw] content_association_id
    #   The identifier of the content association. Can be either the ID or
    #   the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] content_id
    #   The identifier of the content.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ContentAssociationData AWS API Documentation
    #
    class ContentAssociationData < Struct.new(
      :association_data,
      :association_type,
      :content_arn,
      :content_association_arn,
      :content_association_id,
      :content_id,
      :knowledge_base_arn,
      :knowledge_base_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a content association.
    #
    # @!attribute [rw] association_data
    #   The content association.
    #   @return [Types::ContentAssociationContents]
    #
    # @!attribute [rw] association_type
    #   The type of association.
    #   @return [String]
    #
    # @!attribute [rw] content_arn
    #   The Amazon Resource Name (ARN) of the content.
    #   @return [String]
    #
    # @!attribute [rw] content_association_arn
    #   The Amazon Resource Name (ARN) of the content association.
    #   @return [String]
    #
    # @!attribute [rw] content_association_id
    #   The identifier of the content association. Can be either the ID or
    #   the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] content_id
    #   The identifier of the content.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ContentAssociationSummary AWS API Documentation
    #
    class ContentAssociationSummary < Struct.new(
      :association_data,
      :association_type,
      :content_arn,
      :content_association_arn,
      :content_association_id,
      :content_id,
      :knowledge_base_arn,
      :knowledge_base_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the content.
    #
    # @!attribute [rw] content_arn
    #   The Amazon Resource Name (ARN) of the content.
    #   @return [String]
    #
    # @!attribute [rw] content_id
    #   The identifier of the content.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The media type of the content.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] link_out_uri
    #   The URI of the content.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   A key/value map to store attributes without affecting tagging or
    #   recommendations. For example, when synchronizing data between an
    #   external system and Amazon Q in Connect, you can store an external
    #   version identifier as metadata to utilize for determining drift.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] name
    #   The name of the content.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The identifier of the content revision.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the content.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] title
    #   The title of the content.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL of the content.
    #   @return [String]
    #
    # @!attribute [rw] url_expiry
    #   The expiration time of the URL as an epoch timestamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ContentData AWS API Documentation
    #
    class ContentData < Struct.new(
      :content_arn,
      :content_id,
      :content_type,
      :knowledge_base_arn,
      :knowledge_base_id,
      :link_out_uri,
      :metadata,
      :name,
      :revision_id,
      :status,
      :tags,
      :title,
      :url,
      :url_expiry)
      SENSITIVE = [:url]
      include Aws::Structure
    end

    # Details about the content data.
    #
    # @!attribute [rw] ranking_data
    #   Details about the content ranking data.
    #   @return [Types::RankingData]
    #
    # @!attribute [rw] text_data
    #   Details about the content text data.
    #   @return [Types::TextData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ContentDataDetails AWS API Documentation
    #
    class ContentDataDetails < Struct.new(
      :ranking_data,
      :text_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the feedback.
    #
    # @note ContentFeedbackData is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ContentFeedbackData is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ContentFeedbackData corresponding to the set member.
    #
    # @!attribute [rw] generative_content_feedback_data
    #   Information about the feedback for a generative target type.
    #   @return [Types::GenerativeContentFeedbackData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ContentFeedbackData AWS API Documentation
    #
    class ContentFeedbackData < Struct.new(
      :generative_content_feedback_data,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class GenerativeContentFeedbackData < ContentFeedbackData; end
      class Unknown < ContentFeedbackData; end
    end

    # Reference information about the content.
    #
    # @!attribute [rw] content_arn
    #   The Amazon Resource Name (ARN) of the content.
    #   @return [String]
    #
    # @!attribute [rw] content_id
    #   The identifier of the content.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] reference_type
    #   The type of reference content.
    #   @return [String]
    #
    # @!attribute [rw] source_url
    #   The web URL of the source content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ContentReference AWS API Documentation
    #
    class ContentReference < Struct.new(
      :content_arn,
      :content_id,
      :knowledge_base_arn,
      :knowledge_base_id,
      :reference_type,
      :source_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about the content.
    #
    # @!attribute [rw] content_arn
    #   The Amazon Resource Name (ARN) of the content.
    #   @return [String]
    #
    # @!attribute [rw] content_id
    #   The identifier of the content.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The media type of the content.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   A key/value map to store attributes without affecting tagging or
    #   recommendations. For example, when synchronizing data between an
    #   external system and Amazon Q in Connect, you can store an external
    #   version identifier as metadata to utilize for determining drift.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] name
    #   The name of the content.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The identifier of the revision of the content.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the content.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] title
    #   The title of the content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ContentSummary AWS API Documentation
    #
    class ContentSummary < Struct.new(
      :content_arn,
      :content_id,
      :content_type,
      :knowledge_base_arn,
      :knowledge_base_id,
      :metadata,
      :name,
      :revision_id,
      :status,
      :tags,
      :title)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the AWS SDK populates
    #   this field. For more information about idempotency, see [Making
    #   retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration of the AI Agent.
    #   @return [Types::AIAgentConfiguration]
    #
    # @!attribute [rw] description
    #   The description of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] visibility_status
    #   The visibility status of the AI Agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAIAgentRequest AWS API Documentation
    #
    class CreateAIAgentRequest < Struct.new(
      :assistant_id,
      :client_token,
      :configuration,
      :description,
      :name,
      :tags,
      :type,
      :visibility_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_agent
    #   The data of the created AI Agent.
    #   @return [Types::AIAgentData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAIAgentResponse AWS API Documentation
    #
    class CreateAIAgentResponse < Struct.new(
      :ai_agent)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_agent_id
    #   The identifier of the Amazon Q in Connect AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the AWS SDK populates
    #   this field. For more information about idempotency, see [Making
    #   retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] modified_time
    #   The modification time of the AI Agent should be tracked for version
    #   creation. This field should be specified to avoid version creation
    #   when simultaneous update to the underlying AI Agent are possible.
    #   The value should be the modifiedTime returned from the request to
    #   create or update an AI Agent so that version creation can fail if an
    #   update to the AI Agent post the specified modification time has been
    #   made.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAIAgentVersionRequest AWS API Documentation
    #
    class CreateAIAgentVersionRequest < Struct.new(
      :ai_agent_id,
      :assistant_id,
      :client_token,
      :modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_agent
    #   The data of the AI Agent version.
    #   @return [Types::AIAgentData]
    #
    # @!attribute [rw] version_number
    #   The version number of the AI Agent version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAIAgentVersionResponse AWS API Documentation
    #
    class CreateAIAgentVersionResponse < Struct.new(
      :ai_agent,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_format
    #   The API Format of the AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the AWS SDK populates
    #   this field. For more information about idempotency, see [Making
    #   retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The identifier of the model used for this AI Prompt. Model Ids
    #   supported are: `CLAUDE_3_HAIKU_20240307_V1`
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_configuration
    #   The configuration of the prompt template for this AI Prompt.
    #   @return [Types::AIPromptTemplateConfiguration]
    #
    # @!attribute [rw] template_type
    #   The type of the prompt template for this AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of this AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] visibility_status
    #   The visibility status of the AI Prompt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAIPromptRequest AWS API Documentation
    #
    class CreateAIPromptRequest < Struct.new(
      :api_format,
      :assistant_id,
      :client_token,
      :description,
      :model_id,
      :name,
      :tags,
      :template_configuration,
      :template_type,
      :type,
      :visibility_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_prompt
    #   The data of the AI Prompt.
    #   @return [Types::AIPromptData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAIPromptResponse AWS API Documentation
    #
    class CreateAIPromptResponse < Struct.new(
      :ai_prompt)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_prompt_id
    #   The identifier of the Amazon Q in Connect AI prompt.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the AWS SDK populates
    #   this field. For more information about idempotency, see [Making
    #   retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: http://aws.amazon.com/https:/aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] modified_time
    #   The time the AI Prompt was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAIPromptVersionRequest AWS API Documentation
    #
    class CreateAIPromptVersionRequest < Struct.new(
      :ai_prompt_id,
      :assistant_id,
      :client_token,
      :modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_prompt
    #   The data of the AI Prompt version.
    #   @return [Types::AIPromptData]
    #
    # @!attribute [rw] version_number
    #   The version number of the AI Prompt version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAIPromptVersionResponse AWS API Documentation
    #
    class CreateAIPromptVersionResponse < Struct.new(
      :ai_prompt,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] association
    #   The identifier of the associated resource.
    #   @return [Types::AssistantAssociationInputData]
    #
    # @!attribute [rw] association_type
    #   The type of association.
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
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAssistantAssociationRequest AWS API Documentation
    #
    class CreateAssistantAssociationRequest < Struct.new(
      :assistant_id,
      :association,
      :association_type,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_association
    #   The assistant association.
    #   @return [Types::AssistantAssociationData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAssistantAssociationResponse AWS API Documentation
    #
    class CreateAssistantAssociationResponse < Struct.new(
      :assistant_association)
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
    # @!attribute [rw] description
    #   The description of the assistant.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the assistant.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The configuration information for the customer managed key used for
    #   encryption.
    #
    #   The customer managed key must have a policy that allows
    #   `kms:CreateGrant`, ` kms:DescribeKey`, `kms:Decrypt`, and
    #   `kms:GenerateDataKey*` permissions to the IAM identity using the key
    #   to invoke Amazon Q in Connect. To use Amazon Q in Connect with chat,
    #   the key policy must also allow `kms:Decrypt`,
    #   `kms:GenerateDataKey*`, and `kms:DescribeKey` permissions to the
    #   `connect.amazonaws.com` service principal.
    #
    #   For more information about setting up a customer managed key for
    #   Amazon Q in Connect, see [Enable Amazon Q in Connect for your
    #   instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of assistant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAssistantRequest AWS API Documentation
    #
    class CreateAssistantRequest < Struct.new(
      :client_token,
      :description,
      :name,
      :server_side_encryption_configuration,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant
    #   Information about the assistant.
    #   @return [Types::AssistantData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAssistantResponse AWS API Documentation
    #
    class CreateAssistantResponse < Struct.new(
      :assistant)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] association
    #   The identifier of the associated resource.
    #   @return [Types::ContentAssociationContents]
    #
    # @!attribute [rw] association_type
    #   The type of association.
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
    # @!attribute [rw] content_id
    #   The identifier of the content.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateContentAssociationRequest AWS API Documentation
    #
    class CreateContentAssociationRequest < Struct.new(
      :association,
      :association_type,
      :client_token,
      :content_id,
      :knowledge_base_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_association
    #   The association between Amazon Q in Connect content and another
    #   resource.
    #   @return [Types::ContentAssociationData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateContentAssociationResponse AWS API Documentation
    #
    class CreateContentAssociationResponse < Struct.new(
      :content_association)
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
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   A key/value map to store attributes without affecting tagging or
    #   recommendations. For example, when synchronizing data between an
    #   external system and Amazon Q in Connect, you can store an external
    #   version identifier as metadata to utilize for determining drift.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] name
    #   The name of the content. Each piece of content in a knowledge base
    #   must have a unique name. You can retrieve a piece of content using
    #   only its knowledge base and its name with the [SearchContent][1]
    #   API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_SearchContent.html
    #   @return [String]
    #
    # @!attribute [rw] override_link_out_uri
    #   The URI you want to use for the article. If the knowledge base has a
    #   templateUri, setting this argument overrides it for this piece of
    #   content.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] title
    #   The title of the content. If not set, the title is equal to the
    #   name.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   A pointer to the uploaded asset. This value is returned by
    #   [StartContentUpload][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_StartContentUpload.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateContentRequest AWS API Documentation
    #
    class CreateContentRequest < Struct.new(
      :client_token,
      :knowledge_base_id,
      :metadata,
      :name,
      :override_link_out_uri,
      :tags,
      :title,
      :upload_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   The content.
    #   @return [Types::ContentData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateContentResponse AWS API Documentation
    #
    class CreateContentResponse < Struct.new(
      :content)
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
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_type
    #   The type of knowledge base. Only CUSTOM knowledge bases allow you to
    #   upload your own content. EXTERNAL knowledge bases support
    #   integrations with third-party systems whose content is synchronized
    #   automatically.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] rendering_configuration
    #   Information about how to render the content.
    #   @return [Types::RenderingConfiguration]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The configuration information for the customer managed key used for
    #   encryption.
    #
    #   This KMS key must have a policy that allows `kms:CreateGrant`,
    #   `kms:DescribeKey`, `kms:Decrypt`, and `kms:GenerateDataKey*`
    #   permissions to the IAM identity using the key to invoke Amazon Q in
    #   Connect.
    #
    #   For more information about setting up a customer managed key for
    #   Amazon Q in Connect, see [Enable Amazon Q in Connect for your
    #   instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] source_configuration
    #   The source of the knowledge base content. Only set this argument for
    #   EXTERNAL knowledge bases.
    #   @return [Types::SourceConfiguration]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vector_ingestion_configuration
    #   Contains details about how to ingest the documents in a data source.
    #   @return [Types::VectorIngestionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateKnowledgeBaseRequest AWS API Documentation
    #
    class CreateKnowledgeBaseRequest < Struct.new(
      :client_token,
      :description,
      :knowledge_base_type,
      :name,
      :rendering_configuration,
      :server_side_encryption_configuration,
      :source_configuration,
      :tags,
      :vector_ingestion_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base
    #   The knowledge base.
    #   @return [Types::KnowledgeBaseData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateKnowledgeBaseResponse AWS API Documentation
    #
    class CreateKnowledgeBaseResponse < Struct.new(
      :knowledge_base)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channels
    #   The Amazon Connect channels this quick response applies to.
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
    # @!attribute [rw] content
    #   The content of the quick response.
    #   @return [Types::QuickResponseDataProvider]
    #
    # @!attribute [rw] content_type
    #   The media type of the quick response content.
    #
    #   * Use `application/x.quickresponse;format=plain` for a quick
    #     response written in plain text.
    #
    #   * Use `application/x.quickresponse;format=markdown` for a quick
    #     response written in richtext.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] grouping_configuration
    #   The configuration information of the user groups that the quick
    #   response is accessible to.
    #   @return [Types::GroupingConfiguration]
    #
    # @!attribute [rw] is_active
    #   Whether the quick response is active.
    #   @return [Boolean]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language code value for the language in which the quick response
    #   is written. The supported language codes include `de_DE`, `en_US`,
    #   `es_ES`, `fr_FR`, `id_ID`, `it_IT`, `ja_JP`, `ko_KR`, `pt_BR`,
    #   `zh_CN`, `zh_TW`
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] shortcut_key
    #   The shortcut key of the quick response. The value should be unique
    #   across the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateQuickResponseRequest AWS API Documentation
    #
    class CreateQuickResponseRequest < Struct.new(
      :channels,
      :client_token,
      :content,
      :content_type,
      :description,
      :grouping_configuration,
      :is_active,
      :knowledge_base_id,
      :language,
      :name,
      :shortcut_key,
      :tags)
      SENSITIVE = [:channels]
      include Aws::Structure
    end

    # @!attribute [rw] quick_response
    #   The quick response.
    #   @return [Types::QuickResponseData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateQuickResponseResponse AWS API Documentation
    #
    class CreateQuickResponseResponse < Struct.new(
      :quick_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_agent_configuration
    #   The configuration of the AI Agents (mapped by AI Agent Type to AI
    #   Agent version) that should be used by Amazon Q in Connect for this
    #   Session.
    #   @return [Hash<String,Types::AIAgentConfigurationData>]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
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
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the session.
    #   @return [String]
    #
    # @!attribute [rw] tag_filter
    #   An object that can be used to specify Tag conditions.
    #   @return [Types::TagFilter]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateSessionRequest AWS API Documentation
    #
    class CreateSessionRequest < Struct.new(
      :ai_agent_configuration,
      :assistant_id,
      :client_token,
      :description,
      :name,
      :tag_filter,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session
    #   The session.
    #   @return [Types::SessionData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateSessionResponse AWS API Documentation
    #
    class CreateSessionResponse < Struct.new(
      :session)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the data.
    #
    # @note DataDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DataDetails corresponding to the set member.
    #
    # @!attribute [rw] content_data
    #   Details about the content data.
    #   @return [Types::ContentDataDetails]
    #
    # @!attribute [rw] generative_data
    #   Details about the generative data.
    #   @return [Types::GenerativeDataDetails]
    #
    # @!attribute [rw] intent_detected_data
    #   Details about the intent data.
    #   @return [Types::IntentDetectedDataDetails]
    #
    # @!attribute [rw] source_content_data
    #   Details about the content data.
    #   @return [Types::SourceContentDataDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DataDetails AWS API Documentation
    #
    class DataDetails < Struct.new(
      :content_data,
      :generative_data,
      :intent_detected_data,
      :source_content_data,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ContentData < DataDetails; end
      class GenerativeData < DataDetails; end
      class IntentDetectedData < DataDetails; end
      class SourceContentData < DataDetails; end
      class Unknown < DataDetails; end
    end

    # Reference data.
    #
    # @note DataReference is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DataReference corresponding to the set member.
    #
    # @!attribute [rw] content_reference
    #   Reference information about the content.
    #   @return [Types::ContentReference]
    #
    # @!attribute [rw] generative_reference
    #   Reference information about the generative content.
    #   @return [Types::GenerativeReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DataReference AWS API Documentation
    #
    class DataReference < Struct.new(
      :content_reference,
      :generative_reference,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ContentReference < DataReference; end
      class GenerativeReference < DataReference; end
      class Unknown < DataReference; end
    end

    # Summary of the data.
    #
    # @!attribute [rw] details
    #   Details about the data.
    #   @return [Types::DataDetails]
    #
    # @!attribute [rw] reference
    #   Reference information about the content.
    #   @return [Types::DataReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DataSummary AWS API Documentation
    #
    class DataSummary < Struct.new(
      :details,
      :reference)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_agent_id
    #   The identifier of the Amazon Q in Connect AI Agent. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIAgentRequest AWS API Documentation
    #
    class DeleteAIAgentRequest < Struct.new(
      :ai_agent_id,
      :assistant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIAgentResponse AWS API Documentation
    #
    class DeleteAIAgentResponse < Aws::EmptyStructure; end

    # @!attribute [rw] ai_agent_id
    #   The identifier of the Amazon Q in Connect AI Agent. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the AI Agent version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIAgentVersionRequest AWS API Documentation
    #
    class DeleteAIAgentVersionRequest < Struct.new(
      :ai_agent_id,
      :assistant_id,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIAgentVersionResponse AWS API Documentation
    #
    class DeleteAIAgentVersionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] ai_prompt_id
    #   The identifier of the Amazon Q in Connect AI prompt. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIPromptRequest AWS API Documentation
    #
    class DeleteAIPromptRequest < Struct.new(
      :ai_prompt_id,
      :assistant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIPromptResponse AWS API Documentation
    #
    class DeleteAIPromptResponse < Aws::EmptyStructure; end

    # @!attribute [rw] ai_prompt_id
    #   The identifier of the Amazon Q in Connect AI prompt.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the AI Prompt version to be deleted.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIPromptVersionRequest AWS API Documentation
    #
    class DeleteAIPromptVersionRequest < Struct.new(
      :ai_prompt_id,
      :assistant_id,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIPromptVersionResponse AWS API Documentation
    #
    class DeleteAIPromptVersionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] assistant_association_id
    #   The identifier of the assistant association. Can be either the ID or
    #   the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAssistantAssociationRequest AWS API Documentation
    #
    class DeleteAssistantAssociationRequest < Struct.new(
      :assistant_association_id,
      :assistant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAssistantAssociationResponse AWS API Documentation
    #
    class DeleteAssistantAssociationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAssistantRequest AWS API Documentation
    #
    class DeleteAssistantRequest < Struct.new(
      :assistant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAssistantResponse AWS API Documentation
    #
    class DeleteAssistantResponse < Aws::EmptyStructure; end

    # @!attribute [rw] content_association_id
    #   The identifier of the content association. Can be either the ID or
    #   the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] content_id
    #   The identifier of the content.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteContentAssociationRequest AWS API Documentation
    #
    class DeleteContentAssociationRequest < Struct.new(
      :content_association_id,
      :content_id,
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteContentAssociationResponse AWS API Documentation
    #
    class DeleteContentAssociationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] content_id
    #   The identifier of the content. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteContentRequest AWS API Documentation
    #
    class DeleteContentRequest < Struct.new(
      :content_id,
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteContentResponse AWS API Documentation
    #
    class DeleteContentResponse < Aws::EmptyStructure; end

    # @!attribute [rw] import_job_id
    #   The identifier of the import job to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteImportJobRequest AWS API Documentation
    #
    class DeleteImportJobRequest < Struct.new(
      :import_job_id,
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteImportJobResponse AWS API Documentation
    #
    class DeleteImportJobResponse < Aws::EmptyStructure; end

    # @!attribute [rw] knowledge_base_id
    #   The knowledge base to delete content from. Can be either the ID or
    #   the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteKnowledgeBaseRequest AWS API Documentation
    #
    class DeleteKnowledgeBaseRequest < Struct.new(
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteKnowledgeBaseResponse AWS API Documentation
    #
    class DeleteKnowledgeBaseResponse < Aws::EmptyStructure; end

    # @!attribute [rw] knowledge_base_id
    #   The knowledge base from which the quick response is deleted. The
    #   identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] quick_response_id
    #   The identifier of the quick response to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteQuickResponseRequest AWS API Documentation
    #
    class DeleteQuickResponseRequest < Struct.new(
      :knowledge_base_id,
      :quick_response_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteQuickResponseResponse AWS API Documentation
    #
    class DeleteQuickResponseResponse < Aws::EmptyStructure; end

    # The document.
    #
    # @!attribute [rw] content_reference
    #   A reference to the content resource.
    #   @return [Types::ContentReference]
    #
    # @!attribute [rw] excerpt
    #   The excerpt from the document.
    #   @return [Types::DocumentText]
    #
    # @!attribute [rw] title
    #   The title of the document.
    #   @return [Types::DocumentText]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/Document AWS API Documentation
    #
    class Document < Struct.new(
      :content_reference,
      :excerpt,
      :title)
      SENSITIVE = []
      include Aws::Structure
    end

    # The text of the document.
    #
    # @!attribute [rw] highlights
    #   Highlights in the document text.
    #   @return [Array<Types::Highlight>]
    #
    # @!attribute [rw] text
    #   Text in the document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DocumentText AWS API Documentation
    #
    class DocumentText < Struct.new(
      :highlights,
      :text)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # The configuration information of the external data source.
    #
    # @!attribute [rw] configuration
    #   The configuration information of the external data source.
    #   @return [Types::Configuration]
    #
    # @!attribute [rw] source
    #   The type of the external data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ExternalSourceConfiguration AWS API Documentation
    #
    class ExternalSourceConfiguration < Struct.new(
      :configuration,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # A search filter.
    #
    # @!attribute [rw] field
    #   The field on which to filter.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The operator to use for comparing the field’s value with the
    #   provided value.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The desired field value on which to filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :field,
      :operator,
      :value)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/FixedSizeChunkingConfiguration AWS API Documentation
    #
    class FixedSizeChunkingConfiguration < Struct.new(
      :max_tokens,
      :overlap_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The feedback information for a generative target type.
    #
    # @!attribute [rw] relevance
    #   The relevance of the feedback.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GenerativeContentFeedbackData AWS API Documentation
    #
    class GenerativeContentFeedbackData < Struct.new(
      :relevance)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about generative data.
    #
    # @!attribute [rw] completion
    #   The LLM response.
    #   @return [String]
    #
    # @!attribute [rw] ranking_data
    #   Details about the generative content ranking data.
    #   @return [Types::RankingData]
    #
    # @!attribute [rw] references
    #   The references used to generative the LLM response.
    #   @return [Array<Types::DataSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GenerativeDataDetails AWS API Documentation
    #
    class GenerativeDataDetails < Struct.new(
      :completion,
      :ranking_data,
      :references)
      SENSITIVE = [:completion]
      include Aws::Structure
    end

    # Reference information about generative content.
    #
    # @!attribute [rw] generation_id
    #   The identifier of the LLM model.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The identifier of the LLM model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GenerativeReference AWS API Documentation
    #
    class GenerativeReference < Struct.new(
      :generation_id,
      :model_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_agent_id
    #   The identifier of the Amazon Q in Connect AI Agent (with or without
    #   a version qualifier). Can be either the ID or the ARN. URLs cannot
    #   contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetAIAgentRequest AWS API Documentation
    #
    class GetAIAgentRequest < Struct.new(
      :ai_agent_id,
      :assistant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_agent
    #   The data of the AI Agent.
    #   @return [Types::AIAgentData]
    #
    # @!attribute [rw] version_number
    #   The version number of the AI Agent version (returned if an AI Agent
    #   version was specified via use of a qualifier for the `aiAgentId` on
    #   the request).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetAIAgentResponse AWS API Documentation
    #
    class GetAIAgentResponse < Struct.new(
      :ai_agent,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_prompt_id
    #   The identifier of the Amazon Q in Connect AI prompt.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetAIPromptRequest AWS API Documentation
    #
    class GetAIPromptRequest < Struct.new(
      :ai_prompt_id,
      :assistant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_prompt
    #   The data of the AI Prompt.
    #   @return [Types::AIPromptData]
    #
    # @!attribute [rw] version_number
    #   The version number of the AI Prompt version (returned if an AI
    #   Prompt version was specified via use of a qualifier for the
    #   `aiPromptId` on the request).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetAIPromptResponse AWS API Documentation
    #
    class GetAIPromptResponse < Struct.new(
      :ai_prompt,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_association_id
    #   The identifier of the assistant association. Can be either the ID or
    #   the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetAssistantAssociationRequest AWS API Documentation
    #
    class GetAssistantAssociationRequest < Struct.new(
      :assistant_association_id,
      :assistant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_association
    #   The assistant association.
    #   @return [Types::AssistantAssociationData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetAssistantAssociationResponse AWS API Documentation
    #
    class GetAssistantAssociationResponse < Struct.new(
      :assistant_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetAssistantRequest AWS API Documentation
    #
    class GetAssistantRequest < Struct.new(
      :assistant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant
    #   Information about the assistant.
    #   @return [Types::AssistantData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetAssistantResponse AWS API Documentation
    #
    class GetAssistantResponse < Struct.new(
      :assistant)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_association_id
    #   The identifier of the content association. Can be either the ID or
    #   the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] content_id
    #   The identifier of the content.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetContentAssociationRequest AWS API Documentation
    #
    class GetContentAssociationRequest < Struct.new(
      :content_association_id,
      :content_id,
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_association
    #   The association between Amazon Q in Connect content and another
    #   resource.
    #   @return [Types::ContentAssociationData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetContentAssociationResponse AWS API Documentation
    #
    class GetContentAssociationResponse < Struct.new(
      :content_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_id
    #   The identifier of the content. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetContentRequest AWS API Documentation
    #
    class GetContentRequest < Struct.new(
      :content_id,
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   The content.
    #   @return [Types::ContentData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetContentResponse AWS API Documentation
    #
    class GetContentResponse < Struct.new(
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_id
    #   The identifier of the content. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetContentSummaryRequest AWS API Documentation
    #
    class GetContentSummaryRequest < Struct.new(
      :content_id,
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_summary
    #   The content summary.
    #   @return [Types::ContentSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetContentSummaryResponse AWS API Documentation
    #
    class GetContentSummaryResponse < Struct.new(
      :content_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] import_job_id
    #   The identifier of the import job to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base that the import job belongs to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetImportJobRequest AWS API Documentation
    #
    class GetImportJobRequest < Struct.new(
      :import_job_id,
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] import_job
    #   The import job.
    #   @return [Types::ImportJobData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetImportJobResponse AWS API Documentation
    #
    class GetImportJobResponse < Struct.new(
      :import_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetKnowledgeBaseRequest AWS API Documentation
    #
    class GetKnowledgeBaseRequest < Struct.new(
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base
    #   The knowledge base.
    #   @return [Types::KnowledgeBaseData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetKnowledgeBaseResponse AWS API Documentation
    #
    class GetKnowledgeBaseResponse < Struct.new(
      :knowledge_base)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. This should be a
    #   QUICK\_RESPONSES type knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] quick_response_id
    #   The identifier of the quick response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetQuickResponseRequest AWS API Documentation
    #
    class GetQuickResponseRequest < Struct.new(
      :knowledge_base_id,
      :quick_response_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] quick_response
    #   The quick response.
    #   @return [Types::QuickResponseData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetQuickResponseResponse AWS API Documentation
    #
    class GetQuickResponseResponse < Struct.new(
      :quick_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] wait_time_seconds
    #   The duration (in seconds) for which the call waits for a
    #   recommendation to be made available before returning. If a
    #   recommendation is available, the call returns sooner than
    #   `WaitTimeSeconds`. If no messages are available and the wait time
    #   expires, the call returns successfully with an empty list.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetRecommendationsRequest AWS API Documentation
    #
    class GetRecommendationsRequest < Struct.new(
      :assistant_id,
      :max_results,
      :session_id,
      :wait_time_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendations
    #   The recommendations.
    #   @return [Array<Types::RecommendationData>]
    #
    # @!attribute [rw] triggers
    #   The triggers corresponding to recommendations.
    #   @return [Array<Types::RecommendationTrigger>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetRecommendationsResponse AWS API Documentation
    #
    class GetRecommendationsResponse < Struct.new(
      :recommendations,
      :triggers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetSessionRequest AWS API Documentation
    #
    class GetSessionRequest < Struct.new(
      :assistant_id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session
    #   The session.
    #   @return [Types::SessionData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetSessionResponse AWS API Documentation
    #
    class GetSessionResponse < Struct.new(
      :session)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration information of the grouping of Amazon Q in Connect
    # users.
    #
    # @!attribute [rw] criteria
    #   The criteria used for grouping Amazon Q in Connect users.
    #
    #   The following is the list of supported criteria values.
    #
    #   * `RoutingProfileArn`: Grouping the users by their [Amazon Connect
    #     routing profile ARN][1]. User should have
    #     [SearchRoutingProfile][2] and [DescribeRoutingProfile][3]
    #     permissions when setting criteria to this value.
    #
    #   ^
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_RoutingProfile.html
    #   [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchRoutingProfiles.html
    #   [3]: https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeRoutingProfile.html
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The list of values that define different groups of Amazon Q in
    #   Connect users.
    #
    #   * When setting `criteria` to `RoutingProfileArn`, you need to
    #     provide a list of ARNs of [Amazon Connect routing profiles][1] as
    #     values of this parameter.
    #
    #   ^
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_RoutingProfile.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GroupingConfiguration AWS API Documentation
    #
    class GroupingConfiguration < Struct.new(
      :criteria,
      :values)
      SENSITIVE = [:criteria, :values]
      include Aws::Structure
    end

    # Settings for hierarchical document chunking for a data source.
    # Hierarchical chunking splits documents into layers of chunks where the
    # first layer contains large chunks, and the second layer contains
    # smaller chunks derived from the first layer.
    #
    # @!attribute [rw] level_configurations
    #   Token settings for each layer.
    #   @return [Array<Types::HierarchicalChunkingLevelConfiguration>]
    #
    # @!attribute [rw] overlap_tokens
    #   The number of tokens to repeat across chunks in the same layer.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/HierarchicalChunkingConfiguration AWS API Documentation
    #
    class HierarchicalChunkingConfiguration < Struct.new(
      :level_configurations,
      :overlap_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # Token settings for each layer.
    #
    # @!attribute [rw] max_tokens
    #   The maximum number of tokens that a chunk can contain in this layer.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/HierarchicalChunkingLevelConfiguration AWS API Documentation
    #
    class HierarchicalChunkingLevelConfiguration < Struct.new(
      :max_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # Offset specification to describe highlighting of document excerpts for
    # rendering search results and recommendations.
    #
    # @!attribute [rw] begin_offset_inclusive
    #   The offset for the start of the highlight.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset_exclusive
    #   The offset for the end of the highlight.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/Highlight AWS API Documentation
    #
    class Highlight < Struct.new(
      :begin_offset_inclusive,
      :end_offset_exclusive)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about the import job.
    #
    # @!attribute [rw] created_time
    #   The timestamp when the import job was created.
    #   @return [Time]
    #
    # @!attribute [rw] external_source_configuration
    #   The configuration information of the external data source.
    #   @return [Types::ExternalSourceConfiguration]
    #
    # @!attribute [rw] failed_record_report
    #   The link to download the information of resource data that failed to
    #   be imported.
    #   @return [String]
    #
    # @!attribute [rw] import_job_id
    #   The identifier of the import job.
    #   @return [String]
    #
    # @!attribute [rw] import_job_type
    #   The type of the import job.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when the import job data was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] metadata
    #   The metadata fields of the imported Amazon Q in Connect resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   The status of the import job.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   A pointer to the uploaded asset. This value is returned by
    #   [StartContentUpload][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The download link to the resource file that is uploaded to the
    #   import job.
    #   @return [String]
    #
    # @!attribute [rw] url_expiry
    #   The expiration time of the URL as an epoch timestamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ImportJobData AWS API Documentation
    #
    class ImportJobData < Struct.new(
      :created_time,
      :external_source_configuration,
      :failed_record_report,
      :import_job_id,
      :import_job_type,
      :knowledge_base_arn,
      :knowledge_base_id,
      :last_modified_time,
      :metadata,
      :status,
      :upload_id,
      :url,
      :url_expiry)
      SENSITIVE = [:failed_record_report, :url]
      include Aws::Structure
    end

    # Summary information about the import job.
    #
    # @!attribute [rw] created_time
    #   The timestamp when the import job was created.
    #   @return [Time]
    #
    # @!attribute [rw] external_source_configuration
    #   The configuration information of the external source that the
    #   resource data are imported from.
    #   @return [Types::ExternalSourceConfiguration]
    #
    # @!attribute [rw] import_job_id
    #   The identifier of the import job.
    #   @return [String]
    #
    # @!attribute [rw] import_job_type
    #   The type of import job.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when the import job was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] metadata
    #   The metadata fields of the imported Amazon Q in Connect resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   The status of the import job.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   A pointer to the uploaded asset. This value is returned by
    #   [StartContentUpload][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ImportJobSummary AWS API Documentation
    #
    class ImportJobSummary < Struct.new(
      :created_time,
      :external_source_configuration,
      :import_job_id,
      :import_job_type,
      :knowledge_base_arn,
      :knowledge_base_id,
      :last_modified_time,
      :metadata,
      :status,
      :upload_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the detected intent.
    #
    # @!attribute [rw] intent
    #   The detected intent.
    #   @return [String]
    #
    # @!attribute [rw] intent_id
    #   The identifier of the detected intent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/IntentDetectedDataDetails AWS API Documentation
    #
    class IntentDetectedDataDetails < Struct.new(
      :intent,
      :intent_id)
      SENSITIVE = [:intent]
      include Aws::Structure
    end

    # Information about the Amazon Q intent.
    #
    # @!attribute [rw] intent_id
    #   The identifier of the Amazon Q intent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/IntentInputData AWS API Documentation
    #
    class IntentInputData < Struct.new(
      :intent_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data of the configuration for a `KNOWLEDGE_BASE` type Amazon Q in
    # Connect Assistant Association.
    #
    # @!attribute [rw] content_tag_filter
    #   An object that can be used to specify Tag conditions.
    #   @return [Types::TagFilter]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] override_knowledge_base_search_type
    #   The search type to be used against the Knowledge Base for this
    #   request. The values can be `SEMANTIC` which uses vector embeddings
    #   or `HYBRID` which use vector embeddings and raw text
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/KnowledgeBaseAssociationConfigurationData AWS API Documentation
    #
    class KnowledgeBaseAssociationConfigurationData < Struct.new(
      :content_tag_filter,
      :max_results,
      :override_knowledge_base_search_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Association information about the knowledge base.
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/KnowledgeBaseAssociationData AWS API Documentation
    #
    class KnowledgeBaseAssociationData < Struct.new(
      :knowledge_base_arn,
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the knowledge base.
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_failure_reasons
    #   List of failure reasons on ingestion per file.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ingestion_status
    #   Status of ingestion on data source.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_type
    #   The type of knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] last_content_modification_time
    #   An epoch timestamp indicating the most recent content modification
    #   inside the knowledge base. If no content exists in a knowledge base,
    #   this value is unset.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] rendering_configuration
    #   Information about how to render the content.
    #   @return [Types::RenderingConfiguration]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The configuration information for the customer managed key used for
    #   encryption.
    #
    #   This KMS key must have a policy that allows `kms:CreateGrant`,
    #   `kms:DescribeKey`, `kms:Decrypt`, and `kms:GenerateDataKey*`
    #   permissions to the IAM identity using the key to invoke Amazon Q in
    #   Connect.
    #
    #   For more information about setting up a customer managed key for
    #   Amazon Q in Connect, see [Enable Amazon Q in Connect for your
    #   instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] source_configuration
    #   Source configuration information about the knowledge base.
    #   @return [Types::SourceConfiguration]
    #
    # @!attribute [rw] status
    #   The status of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vector_ingestion_configuration
    #   Contains details about how to ingest the documents in a data source.
    #   @return [Types::VectorIngestionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/KnowledgeBaseData AWS API Documentation
    #
    class KnowledgeBaseData < Struct.new(
      :description,
      :ingestion_failure_reasons,
      :ingestion_status,
      :knowledge_base_arn,
      :knowledge_base_id,
      :knowledge_base_type,
      :last_content_modification_time,
      :name,
      :rendering_configuration,
      :server_side_encryption_configuration,
      :source_configuration,
      :status,
      :tags,
      :vector_ingestion_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about the knowledge base.
    #
    # @!attribute [rw] description
    #   The description of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_type
    #   The type of knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] rendering_configuration
    #   Information about how to render the content.
    #   @return [Types::RenderingConfiguration]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The configuration information for the customer managed key used for
    #   encryption.
    #
    #   This KMS key must have a policy that allows `kms:CreateGrant`,
    #   `kms:DescribeKey`, `kms:Decrypt`, and `kms:GenerateDataKey*`
    #   permissions to the IAM identity using the key to invoke Amazon Q in
    #   Connect.
    #
    #   For more information about setting up a customer managed key for
    #   Amazon Q in Connect, see [Enable Amazon Q in Connect for your
    #   instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] source_configuration
    #   Configuration information about the external data source.
    #   @return [Types::SourceConfiguration]
    #
    # @!attribute [rw] status
    #   The status of the knowledge base summary.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vector_ingestion_configuration
    #   Contains details about how to ingest the documents in a data source.
    #   @return [Types::VectorIngestionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/KnowledgeBaseSummary AWS API Documentation
    #
    class KnowledgeBaseSummary < Struct.new(
      :description,
      :knowledge_base_arn,
      :knowledge_base_id,
      :knowledge_base_type,
      :name,
      :rendering_configuration,
      :server_side_encryption_configuration,
      :source_configuration,
      :status,
      :tags,
      :vector_ingestion_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_agent_id
    #   The identifier of the Amazon Q in Connect AI Agent for which
    #   versions are to be listed.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
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
    # @!attribute [rw] origin
    #   The origin of the AI Agent versions to be listed. `SYSTEM` for a
    #   default AI Agent created by Q in Connect or `CUSTOMER` for an AI
    #   Agent created by calling AI Agent creation APIs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAIAgentVersionsRequest AWS API Documentation
    #
    class ListAIAgentVersionsRequest < Struct.new(
      :ai_agent_id,
      :assistant_id,
      :max_results,
      :next_token,
      :origin)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_agent_version_summaries
    #   The summaries of AI Agent versions.
    #   @return [Array<Types::AIAgentVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAIAgentVersionsResponse AWS API Documentation
    #
    class ListAIAgentVersionsResponse < Struct.new(
      :ai_agent_version_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
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
    # @!attribute [rw] origin
    #   The origin of the AI Agents to be listed. `SYSTEM` for a default AI
    #   Agent created by Q in Connect or `CUSTOMER` for an AI Agent created
    #   by calling AI Agent creation APIs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAIAgentsRequest AWS API Documentation
    #
    class ListAIAgentsRequest < Struct.new(
      :assistant_id,
      :max_results,
      :next_token,
      :origin)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_agent_summaries
    #   The summaries of AI Agents.
    #   @return [Array<Types::AIAgentSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAIAgentsResponse AWS API Documentation
    #
    class ListAIAgentsResponse < Struct.new(
      :ai_agent_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_prompt_id
    #   The identifier of the Amazon Q in Connect AI prompt for which
    #   versions are to be listed.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
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
    # @!attribute [rw] origin
    #   The origin of the AI Prompt versions to be listed. `SYSTEM` for a
    #   default AI Agent created by Q in Connect or `CUSTOMER` for an AI
    #   Agent created by calling AI Agent creation APIs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAIPromptVersionsRequest AWS API Documentation
    #
    class ListAIPromptVersionsRequest < Struct.new(
      :ai_prompt_id,
      :assistant_id,
      :max_results,
      :next_token,
      :origin)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_prompt_version_summaries
    #   The summaries of the AI Prompt versions.
    #   @return [Array<Types::AIPromptVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAIPromptVersionsResponse AWS API Documentation
    #
    class ListAIPromptVersionsResponse < Struct.new(
      :ai_prompt_version_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
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
    # @!attribute [rw] origin
    #   The origin of the AI Prompts to be listed. `SYSTEM` for a default AI
    #   Agent created by Q in Connect or `CUSTOMER` for an AI Agent created
    #   by calling AI Agent creation APIs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAIPromptsRequest AWS API Documentation
    #
    class ListAIPromptsRequest < Struct.new(
      :assistant_id,
      :max_results,
      :next_token,
      :origin)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_prompt_summaries
    #   The summaries of the AI Prompts.
    #   @return [Array<Types::AIPromptSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAIPromptsResponse AWS API Documentation
    #
    class ListAIPromptsResponse < Struct.new(
      :ai_prompt_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAssistantAssociationsRequest AWS API Documentation
    #
    class ListAssistantAssociationsRequest < Struct.new(
      :assistant_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_association_summaries
    #   Summary information about assistant associations.
    #   @return [Array<Types::AssistantAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAssistantAssociationsResponse AWS API Documentation
    #
    class ListAssistantAssociationsResponse < Struct.new(
      :assistant_association_summaries,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAssistantsRequest AWS API Documentation
    #
    class ListAssistantsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_summaries
    #   Information about the assistants.
    #   @return [Array<Types::AssistantSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAssistantsResponse AWS API Documentation
    #
    class ListAssistantsResponse < Struct.new(
      :assistant_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_id
    #   The identifier of the content.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListContentAssociationsRequest AWS API Documentation
    #
    class ListContentAssociationsRequest < Struct.new(
      :content_id,
      :knowledge_base_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_association_summaries
    #   Summary information about content associations.
    #   @return [Array<Types::ContentAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListContentAssociationsResponse AWS API Documentation
    #
    class ListContentAssociationsResponse < Struct.new(
      :content_association_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListContentsRequest AWS API Documentation
    #
    class ListContentsRequest < Struct.new(
      :knowledge_base_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_summaries
    #   Information about the content.
    #   @return [Array<Types::ContentSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListContentsResponse AWS API Documentation
    #
    class ListContentsResponse < Struct.new(
      :content_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListImportJobsRequest AWS API Documentation
    #
    class ListImportJobsRequest < Struct.new(
      :knowledge_base_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] import_job_summaries
    #   Summary information about the import jobs.
    #   @return [Array<Types::ImportJobSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListImportJobsResponse AWS API Documentation
    #
    class ListImportJobsResponse < Struct.new(
      :import_job_summaries,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListKnowledgeBasesRequest AWS API Documentation
    #
    class ListKnowledgeBasesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_summaries
    #   Information about the knowledge bases.
    #   @return [Array<Types::KnowledgeBaseSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListKnowledgeBasesResponse AWS API Documentation
    #
    class ListKnowledgeBasesResponse < Struct.new(
      :knowledge_base_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListQuickResponsesRequest AWS API Documentation
    #
    class ListQuickResponsesRequest < Struct.new(
      :knowledge_base_id,
      :max_results,
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
    # @!attribute [rw] quick_response_summaries
    #   Summary information about the quick responses.
    #   @return [Array<Types::QuickResponseSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListQuickResponsesResponse AWS API Documentation
    #
    class ListQuickResponsesResponse < Struct.new(
      :next_token,
      :quick_response_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Source configuration for managed resources.
    #
    # @note ManagedSourceConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ManagedSourceConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ManagedSourceConfiguration corresponding to the set member.
    #
    # @!attribute [rw] web_crawler_configuration
    #   Configuration data for web crawler data source.
    #   @return [Types::WebCrawlerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ManagedSourceConfiguration AWS API Documentation
    #
    class ManagedSourceConfiguration < Struct.new(
      :web_crawler_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class WebCrawlerConfiguration < ManagedSourceConfiguration; end
      class Unknown < ManagedSourceConfiguration; end
    end

    # The configuration for the `MANUAL_SEARCH` AI Agent type.
    #
    # @!attribute [rw] answer_generation_ai_prompt_id
    #   The AI Prompt identifier for the Answer Generation prompt used by
    #   the MANUAL\_SEARCH AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] association_configurations
    #   The association configurations for overriding behavior on this AI
    #   Agent.
    #   @return [Array<Types::AssociationConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ManualSearchAIAgentConfiguration AWS API Documentation
    #
    class ManualSearchAIAgentConfiguration < Struct.new(
      :answer_generation_ai_prompt_id,
      :association_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred when creating a recommendation.
    #
    # @!attribute [rw] message
    #   A recommendation is causing an error.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_id
    #   The identifier of the recommendation that is in error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/NotifyRecommendationsReceivedError AWS API Documentation
    #
    class NotifyRecommendationsReceivedError < Struct.new(
      :message,
      :recommendation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_ids
    #   The identifiers of the recommendations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/NotifyRecommendationsReceivedRequest AWS API Documentation
    #
    class NotifyRecommendationsReceivedRequest < Struct.new(
      :assistant_id,
      :recommendation_ids,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   The identifiers of recommendations that are causing errors.
    #   @return [Array<Types::NotifyRecommendationsReceivedError>]
    #
    # @!attribute [rw] recommendation_ids
    #   The identifiers of the recommendations.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/NotifyRecommendationsReceivedResponse AWS API Documentation
    #
    class NotifyRecommendationsReceivedResponse < Struct.new(
      :errors,
      :recommendation_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of conditions which would be applied together with an `OR`
    # condition.
    #
    # @note OrCondition is a union - when making an API calls you must set exactly one of the members.
    #
    # @note OrCondition is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of OrCondition corresponding to the set member.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/OrCondition AWS API Documentation
    #
    class OrCondition < Struct.new(
      :and_conditions,
      :tag_condition,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AndConditions < OrCondition; end
      class TagCondition < OrCondition; end
      class Unknown < OrCondition; end
    end

    # Settings for parsing document contents. By default, the service
    # converts the contents of each document into text before splitting it
    # into chunks. To improve processing of PDF files with tables and
    # images, you can configure the data source to convert the pages of text
    # into images and use a model to describe the contents of each page.
    #
    # @!attribute [rw] bedrock_foundation_model_configuration
    #   Settings for a foundation model used to parse documents for a data
    #   source.
    #   @return [Types::BedrockFoundationModelConfigurationForParsing]
    #
    # @!attribute [rw] parsing_strategy
    #   The parsing strategy for the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ParsingConfiguration AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ParsingPrompt AWS API Documentation
    #
    class ParsingPrompt < Struct.new(
      :parsing_prompt_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # The provided `revisionId` does not match, indicating the content has
    # been modified since it was last read.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/PreconditionFailedException AWS API Documentation
    #
    class PreconditionFailedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] content_feedback
    #   Information about the feedback provided.
    #   @return [Types::ContentFeedbackData]
    #
    # @!attribute [rw] target_id
    #   The identifier of the feedback target.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The type of the feedback target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/PutFeedbackRequest AWS API Documentation
    #
    class PutFeedbackRequest < Struct.new(
      :assistant_id,
      :content_feedback,
      :target_id,
      :target_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] content_feedback
    #   Information about the feedback provided.
    #   @return [Types::ContentFeedbackData]
    #
    # @!attribute [rw] target_id
    #   The identifier of the feedback target.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The type of the feedback target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/PutFeedbackResponse AWS API Documentation
    #
    class PutFeedbackResponse < Struct.new(
      :assistant_arn,
      :assistant_id,
      :content_feedback,
      :target_id,
      :target_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
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
    # @!attribute [rw] override_knowledge_base_search_type
    #   The search type to be used against the Knowledge Base for this
    #   request. The values can be `SEMANTIC` which uses vector embeddings
    #   or `HYBRID` which use vector embeddings and raw text.
    #   @return [String]
    #
    # @!attribute [rw] query_condition
    #   Information about how to query content.
    #   @return [Array<Types::QueryCondition>]
    #
    # @!attribute [rw] query_input_data
    #   Information about the query.
    #   @return [Types::QueryInputData]
    #
    # @!attribute [rw] query_text
    #   The text to search for.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the Amazon Q in Connect session. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QueryAssistantRequest AWS API Documentation
    #
    class QueryAssistantRequest < Struct.new(
      :assistant_id,
      :max_results,
      :next_token,
      :override_knowledge_base_search_type,
      :query_condition,
      :query_input_data,
      :query_text,
      :session_id)
      SENSITIVE = [:query_text]
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] results
    #   The results of the query.
    #   @return [Array<Types::ResultData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QueryAssistantResponse AWS API Documentation
    #
    class QueryAssistantResponse < Struct.new(
      :next_token,
      :results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about how to query content.
    #
    # @note QueryCondition is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] single
    #   The condition for the query.
    #   @return [Types::QueryConditionItem]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QueryCondition AWS API Documentation
    #
    class QueryCondition < Struct.new(
      :single,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Single < QueryCondition; end
      class Unknown < QueryCondition; end
    end

    # The condition for the query.
    #
    # @!attribute [rw] comparator
    #   The comparison operator for query condition to query on.
    #   @return [String]
    #
    # @!attribute [rw] field
    #   The name of the field for query condition to query on.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the query condition to query on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QueryConditionItem AWS API Documentation
    #
    class QueryConditionItem < Struct.new(
      :comparator,
      :field,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input information for the query.
    #
    # @note QueryInputData is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] intent_input_data
    #   Input information for the intent.
    #   @return [Types::IntentInputData]
    #
    # @!attribute [rw] query_text_input_data
    #   Input information for the query.
    #   @return [Types::QueryTextInputData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QueryInputData AWS API Documentation
    #
    class QueryInputData < Struct.new(
      :intent_input_data,
      :query_text_input_data,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IntentInputData < QueryInputData; end
      class QueryTextInputData < QueryInputData; end
      class Unknown < QueryInputData; end
    end

    # Data associated with the QUERY RecommendationTriggerType.
    #
    # @!attribute [rw] text
    #   The text associated with the recommendation trigger.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QueryRecommendationTriggerData AWS API Documentation
    #
    class QueryRecommendationTriggerData < Struct.new(
      :text)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # Information about the text to search for.
    #
    # @!attribute [rw] text
    #   The text to search for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QueryTextInputData AWS API Documentation
    #
    class QueryTextInputData < Struct.new(
      :text)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # The container quick response content.
    #
    # @note QuickResponseContentProvider is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of QuickResponseContentProvider corresponding to the set member.
    #
    # @!attribute [rw] content
    #   The content of the quick response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QuickResponseContentProvider AWS API Documentation
    #
    class QuickResponseContentProvider < Struct.new(
      :content,
      :unknown)
      SENSITIVE = [:content]
      include Aws::Structure
      include Aws::Structure::Union

      class Content < QuickResponseContentProvider; end
      class Unknown < QuickResponseContentProvider; end
    end

    # The content of the quick response stored in different media types.
    #
    # @!attribute [rw] markdown
    #   The container quick response content.
    #   @return [Types::QuickResponseContentProvider]
    #
    # @!attribute [rw] plain_text
    #   The container quick response content.
    #   @return [Types::QuickResponseContentProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QuickResponseContents AWS API Documentation
    #
    class QuickResponseContents < Struct.new(
      :markdown,
      :plain_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the quick response.
    #
    # @!attribute [rw] channels
    #   The Amazon Connect contact channels this quick response applies to.
    #   The supported contact channel types include `Chat`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] content_type
    #   The media type of the quick response content.
    #
    #   * Use `application/x.quickresponse;format=plain` for quick response
    #     written in plain text.
    #
    #   * Use `application/x.quickresponse;format=markdown` for quick
    #     response written in richtext.
    #   @return [String]
    #
    # @!attribute [rw] contents
    #   The contents of the quick response.
    #   @return [Types::QuickResponseContents]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the quick response was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] grouping_configuration
    #   The configuration information of the user groups that the quick
    #   response is accessible to.
    #   @return [Types::GroupingConfiguration]
    #
    # @!attribute [rw] is_active
    #   Whether the quick response is active.
    #   @return [Boolean]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language code value for the language in which the quick response
    #   is written.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_by
    #   The Amazon Resource Name (ARN) of the user who last updated the
    #   quick response data.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when the quick response data was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] quick_response_arn
    #   The Amazon Resource Name (ARN) of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] quick_response_id
    #   The identifier of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] shortcut_key
    #   The shortcut key of the quick response. The value should be unique
    #   across the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the quick response data.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QuickResponseData AWS API Documentation
    #
    class QuickResponseData < Struct.new(
      :channels,
      :content_type,
      :contents,
      :created_time,
      :description,
      :grouping_configuration,
      :is_active,
      :knowledge_base_arn,
      :knowledge_base_id,
      :language,
      :last_modified_by,
      :last_modified_time,
      :name,
      :quick_response_arn,
      :quick_response_id,
      :shortcut_key,
      :status,
      :tags)
      SENSITIVE = [:channels]
      include Aws::Structure
    end

    # The container of quick response data.
    #
    # @note QuickResponseDataProvider is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] content
    #   The content of the quick response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QuickResponseDataProvider AWS API Documentation
    #
    class QuickResponseDataProvider < Struct.new(
      :content,
      :unknown)
      SENSITIVE = [:content]
      include Aws::Structure
      include Aws::Structure::Union

      class Content < QuickResponseDataProvider; end
      class Unknown < QuickResponseDataProvider; end
    end

    # The quick response fields to filter the quick response query results
    # by.
    #
    # The following is the list of supported field names.
    #
    # * name
    #
    # * description
    #
    # * shortcutKey
    #
    # * isActive
    #
    # * channels
    #
    # * language
    #
    # * contentType
    #
    # * createdTime
    #
    # * lastModifiedTime
    #
    # * lastModifiedBy
    #
    # * groupingConfiguration.criteria
    #
    # * groupingConfiguration.values
    #
    # @!attribute [rw] include_no_existence
    #   Whether to treat null value as a match for the attribute field.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the attribute field to filter the quick responses by.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The operator to use for filtering.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values of attribute field to filter the quick response by.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QuickResponseFilterField AWS API Documentation
    #
    class QuickResponseFilterField < Struct.new(
      :include_no_existence,
      :name,
      :operator,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The quick response fields to order the quick response query results
    # by.
    #
    # The following is the list of supported field names.
    #
    # * name
    #
    # * description
    #
    # * shortcutKey
    #
    # * isActive
    #
    # * channels
    #
    # * language
    #
    # * contentType
    #
    # * createdTime
    #
    # * lastModifiedTime
    #
    # * lastModifiedBy
    #
    # * groupingConfiguration.criteria
    #
    # * groupingConfiguration.values
    #
    # @!attribute [rw] name
    #   The name of the attribute to order the quick response query results
    #   by.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   The order at which the quick responses are sorted by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QuickResponseOrderField AWS API Documentation
    #
    class QuickResponseOrderField < Struct.new(
      :name,
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # The quick response fields to query quick responses by.
    #
    # The following is the list of supported field names.
    #
    # * content
    #
    # * name
    #
    # * description
    #
    # * shortcutKey
    #
    # @!attribute [rw] allow_fuzziness
    #   Whether the query expects only exact matches on the attribute field
    #   values. The results of the query will only include exact matches if
    #   this parameter is set to false.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the attribute to query the quick responses by.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The operator to use for matching attribute field values in the
    #   query.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The importance of the attribute field when calculating query result
    #   relevancy scores. The value set for this parameter affects the
    #   ordering of search results.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values of the attribute to query the quick responses by.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QuickResponseQueryField AWS API Documentation
    #
    class QuickResponseQueryField < Struct.new(
      :allow_fuzziness,
      :name,
      :operator,
      :priority,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the import job.
    #
    # @!attribute [rw] filters
    #   The configuration of filtering rules applied to quick response query
    #   results.
    #   @return [Array<Types::QuickResponseFilterField>]
    #
    # @!attribute [rw] order_on_field
    #   The quick response attribute fields on which the query results are
    #   ordered.
    #   @return [Types::QuickResponseOrderField]
    #
    # @!attribute [rw] queries
    #   The quick response query expressions.
    #   @return [Array<Types::QuickResponseQueryField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QuickResponseSearchExpression AWS API Documentation
    #
    class QuickResponseSearchExpression < Struct.new(
      :filters,
      :order_on_field,
      :queries)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of quick response search.
    #
    # @!attribute [rw] attributes_interpolated
    #   The user defined contact attributes that are resolved when the
    #   search result is returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] attributes_not_interpolated
    #   The user defined contact attributes that are not resolved when the
    #   search result is returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] channels
    #   The Amazon Connect contact channels this quick response applies to.
    #   The supported contact channel types include `Chat`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] content_type
    #   The media type of the quick response content.
    #
    #   * Use `application/x.quickresponse;format=plain` for quick response
    #     written in plain text.
    #
    #   * Use `application/x.quickresponse;format=markdown` for quick
    #     response written in richtext.
    #   @return [String]
    #
    # @!attribute [rw] contents
    #   The contents of the quick response.
    #   @return [Types::QuickResponseContents]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the quick response was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] grouping_configuration
    #   The configuration information of the user groups that the quick
    #   response is accessible to.
    #   @return [Types::GroupingConfiguration]
    #
    # @!attribute [rw] is_active
    #   Whether the quick response is active.
    #   @return [Boolean]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language code value for the language in which the quick response
    #   is written.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_by
    #   The Amazon Resource Name (ARN) of the user who last updated the
    #   quick response search result data.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when the quick response search result data was last
    #   modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] quick_response_arn
    #   The Amazon Resource Name (ARN) of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] quick_response_id
    #   The identifier of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] shortcut_key
    #   The shortcut key of the quick response. The value should be unique
    #   across the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The resource status of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QuickResponseSearchResultData AWS API Documentation
    #
    class QuickResponseSearchResultData < Struct.new(
      :attributes_interpolated,
      :attributes_not_interpolated,
      :channels,
      :content_type,
      :contents,
      :created_time,
      :description,
      :grouping_configuration,
      :is_active,
      :knowledge_base_arn,
      :knowledge_base_id,
      :language,
      :last_modified_by,
      :last_modified_time,
      :name,
      :quick_response_arn,
      :quick_response_id,
      :shortcut_key,
      :status,
      :tags)
      SENSITIVE = [:attributes_interpolated, :attributes_not_interpolated, :channels]
      include Aws::Structure
    end

    # The summary information about the quick response.
    #
    # @!attribute [rw] channels
    #   The Amazon Connect contact channels this quick response applies to.
    #   The supported contact channel types include `Chat`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] content_type
    #   The media type of the quick response content.
    #
    #   * Use `application/x.quickresponse;format=plain` for quick response
    #     written in plain text.
    #
    #   * Use `application/x.quickresponse;format=markdown` for quick
    #     response written in richtext.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the quick response was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] is_active
    #   Whether the quick response is active.
    #   @return [Boolean]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_by
    #   The Amazon Resource Name (ARN) of the user who last updated the
    #   quick response data.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when the quick response summary was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] quick_response_arn
    #   The Amazon Resource Name (ARN) of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] quick_response_id
    #   The identifier of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The resource status of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QuickResponseSummary AWS API Documentation
    #
    class QuickResponseSummary < Struct.new(
      :channels,
      :content_type,
      :created_time,
      :description,
      :is_active,
      :knowledge_base_arn,
      :knowledge_base_id,
      :last_modified_by,
      :last_modified_time,
      :name,
      :quick_response_arn,
      :quick_response_id,
      :status,
      :tags)
      SENSITIVE = [:channels]
      include Aws::Structure
    end

    # Details about the source content ranking data.
    #
    # @!attribute [rw] relevance_level
    #   The relevance score of the content.
    #   @return [String]
    #
    # @!attribute [rw] relevance_score
    #   The relevance level of the recommendation.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/RankingData AWS API Documentation
    #
    class RankingData < Struct.new(
      :relevance_level,
      :relevance_score)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the recommendation.
    #
    # @!attribute [rw] data
    #   Summary of the recommended content.
    #   @return [Types::DataSummary]
    #
    # @!attribute [rw] document
    #   The recommended document.
    #   @return [Types::Document]
    #
    # @!attribute [rw] recommendation_id
    #   The identifier of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] relevance_level
    #   The relevance level of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] relevance_score
    #   The relevance score of the recommendation.
    #   @return [Float]
    #
    # @!attribute [rw] type
    #   The type of recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/RecommendationData AWS API Documentation
    #
    class RecommendationData < Struct.new(
      :data,
      :document,
      :recommendation_id,
      :relevance_level,
      :relevance_score,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A recommendation trigger provides context on the event that produced
    # the referenced recommendations. Recommendations are only referenced in
    # `recommendationIds` by a single RecommendationTrigger.
    #
    # @!attribute [rw] data
    #   A union type containing information related to the trigger.
    #   @return [Types::RecommendationTriggerData]
    #
    # @!attribute [rw] id
    #   The identifier of the recommendation trigger.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_ids
    #   The identifiers of the recommendations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source
    #   The source of the recommendation trigger.
    #
    #   * ISSUE\_DETECTION: The corresponding recommendations were triggered
    #     by a Contact Lens issue.
    #
    #   * RULE\_EVALUATION: The corresponding recommendations were triggered
    #     by a Contact Lens rule.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of recommendation trigger.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/RecommendationTrigger AWS API Documentation
    #
    class RecommendationTrigger < Struct.new(
      :data,
      :id,
      :recommendation_ids,
      :source,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A union type containing information related to the trigger.
    #
    # @note RecommendationTriggerData is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RecommendationTriggerData corresponding to the set member.
    #
    # @!attribute [rw] query
    #   Data associated with the QUERY RecommendationTriggerType.
    #   @return [Types::QueryRecommendationTriggerData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/RecommendationTriggerData AWS API Documentation
    #
    class RecommendationTriggerData < Struct.new(
      :query,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Query < RecommendationTriggerData; end
      class Unknown < RecommendationTriggerData; end
    end

    # @!attribute [rw] ai_agent_type
    #   The type of the AI Agent being removed for use by default from the
    #   Amazon Q in Connect Assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/RemoveAssistantAIAgentRequest AWS API Documentation
    #
    class RemoveAssistantAIAgentRequest < Struct.new(
      :ai_agent_type,
      :assistant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/RemoveAssistantAIAgentResponse AWS API Documentation
    #
    class RemoveAssistantAIAgentResponse < Aws::EmptyStructure; end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/RemoveKnowledgeBaseTemplateUriRequest AWS API Documentation
    #
    class RemoveKnowledgeBaseTemplateUriRequest < Struct.new(
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/RemoveKnowledgeBaseTemplateUriResponse AWS API Documentation
    #
    class RemoveKnowledgeBaseTemplateUriResponse < Aws::EmptyStructure; end

    # Information about how to render the content.
    #
    # @!attribute [rw] template_uri
    #   A URI template containing exactly one variable in `$\{variableName\}
    #   `format. This can only be set for `EXTERNAL` knowledge bases. For
    #   Salesforce, ServiceNow, and Zendesk, the variable must be one of the
    #   following:
    #
    #   * Salesforce: `Id`, `ArticleNumber`, `VersionNumber`, `Title`,
    #     `PublishStatus`, or `IsDeleted`
    #
    #   * ServiceNow: `number`, `short_description`, `sys_mod_count`,
    #     `workflow_state`, or `active`
    #
    #   * Zendesk: `id`, `title`, `updated_at`, or `draft`
    #
    #   The variable is replaced with the actual value for a piece of
    #   content when calling [GetContent][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_GetContent.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/RenderingConfiguration AWS API Documentation
    #
    class RenderingConfiguration < Struct.new(
      :template_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request reached the service more than 15 minutes after the date
    # stamp on the request or more than 15 minutes after the request
    # expiration date (such as for pre-signed URLs), or the date stamp on
    # the request is more than 15 minutes in the future.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/RequestTimeoutException AWS API Documentation
    #
    class RequestTimeoutException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The specified resource name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the result.
    #
    # @!attribute [rw] data
    #   Summary of the recommended content.
    #   @return [Types::DataSummary]
    #
    # @!attribute [rw] document
    #   The document.
    #   @return [Types::Document]
    #
    # @!attribute [rw] relevance_score
    #   The relevance score of the results.
    #   @return [Float]
    #
    # @!attribute [rw] result_id
    #   The identifier of the result data.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the query result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ResultData AWS API Documentation
    #
    class ResultData < Struct.new(
      :data,
      :document,
      :relevance_score,
      :result_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of key-value pairs that are stored on the session.
    #
    # @!attribute [rw] key
    #   The key of the data stored on the session.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the data stored on the session.
    #   @return [Types::RuntimeSessionDataValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/RuntimeSessionData AWS API Documentation
    #
    class RuntimeSessionData < Struct.new(
      :key,
      :value)
      SENSITIVE = [:key]
      include Aws::Structure
    end

    # A union type that specifies the data stored on the session.
    #
    # @note RuntimeSessionDataValue is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RuntimeSessionDataValue is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RuntimeSessionDataValue corresponding to the set member.
    #
    # @!attribute [rw] string_value
    #   The string value of the data stored on the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/RuntimeSessionDataValue AWS API Documentation
    #
    class RuntimeSessionDataValue < Struct.new(
      :string_value,
      :unknown)
      SENSITIVE = [:string_value]
      include Aws::Structure
      include Aws::Structure::Union

      class StringValue < RuntimeSessionDataValue; end
      class Unknown < RuntimeSessionDataValue; end
    end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
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
    # @!attribute [rw] search_expression
    #   The search expression to filter results.
    #   @return [Types::SearchExpression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SearchContentRequest AWS API Documentation
    #
    class SearchContentRequest < Struct.new(
      :knowledge_base_id,
      :max_results,
      :next_token,
      :search_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_summaries
    #   Summary information about the content.
    #   @return [Array<Types::ContentSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SearchContentResponse AWS API Documentation
    #
    class SearchContentResponse < Struct.new(
      :content_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The search expression.
    #
    # @!attribute [rw] filters
    #   The search expression filters.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SearchExpression AWS API Documentation
    #
    class SearchExpression < Struct.new(
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   The [user-defined Amazon Connect contact attributes][1] to be
    #   resolved when search results are returned.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/connect-attrib-list.html#user-defined-attributes
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. This should be a
    #   QUICK\_RESPONSES type knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
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
    # @!attribute [rw] search_expression
    #   The search expression for querying the quick response.
    #   @return [Types::QuickResponseSearchExpression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SearchQuickResponsesRequest AWS API Documentation
    #
    class SearchQuickResponsesRequest < Struct.new(
      :attributes,
      :knowledge_base_id,
      :max_results,
      :next_token,
      :search_expression)
      SENSITIVE = [:attributes]
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] results
    #   The results of the quick response search.
    #   @return [Array<Types::QuickResponseSearchResultData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SearchQuickResponsesResponse AWS API Documentation
    #
    class SearchQuickResponsesResponse < Struct.new(
      :next_token,
      :results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
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
    # @!attribute [rw] search_expression
    #   The search expression to filter results.
    #   @return [Types::SearchExpression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SearchSessionsRequest AWS API Documentation
    #
    class SearchSessionsRequest < Struct.new(
      :assistant_id,
      :max_results,
      :next_token,
      :search_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] session_summaries
    #   Summary information about the sessions.
    #   @return [Array<Types::SessionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SearchSessionsResponse AWS API Documentation
    #
    class SearchSessionsResponse < Struct.new(
      :next_token,
      :session_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # A URL for crawling.
    #
    # @!attribute [rw] url
    #   URL for crawling
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SeedUrl AWS API Documentation
    #
    class SeedUrl < Struct.new(
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for semantic document chunking for a data source. Semantic
    # chunking splits a document into smaller documents based on groups of
    # similar content derived from the text with natural language
    # processing.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SemanticChunkingConfiguration AWS API Documentation
    #
    class SemanticChunkingConfiguration < Struct.new(
      :breakpoint_percentile_threshold,
      :buffer_size,
      :max_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration information for the customer managed key used for
    # encryption.
    #
    # @!attribute [rw] kms_key_id
    #   The customer managed key used for encryption. For more information
    #   about setting up a customer managed key for Amazon Q in Connect, see
    #   [Enable Amazon Q in Connect for your instance][1]. For information
    #   about valid ID values, see [Key identifiers (KeyId)][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ServerSideEncryptionConfiguration AWS API Documentation
    #
    class ServerSideEncryptionConfiguration < Struct.new(
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # You've exceeded your service quota. To perform the requested action,
    # remove some of the relevant resources, or use service quotas to
    # request a service quota increase.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the session.
    #
    # @!attribute [rw] ai_agent_configuration
    #   The configuration of the AI Agents (mapped by AI Agent Type to AI
    #   Agent version) that should be used by Amazon Q in Connect for this
    #   Session.
    #   @return [Hash<String,Types::AIAgentConfigurationData>]
    #
    # @!attribute [rw] description
    #   The description of the session.
    #   @return [String]
    #
    # @!attribute [rw] integration_configuration
    #   The configuration information for the session integration.
    #   @return [Types::SessionIntegrationConfiguration]
    #
    # @!attribute [rw] name
    #   The name of the session.
    #   @return [String]
    #
    # @!attribute [rw] session_arn
    #   The Amazon Resource Name (ARN) of the session.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session.
    #   @return [String]
    #
    # @!attribute [rw] tag_filter
    #   An object that can be used to specify Tag conditions.
    #   @return [Types::TagFilter]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SessionData AWS API Documentation
    #
    class SessionData < Struct.new(
      :ai_agent_configuration,
      :description,
      :integration_configuration,
      :name,
      :session_arn,
      :session_id,
      :tag_filter,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration information for the session integration.
    #
    # @!attribute [rw] topic_integration_arn
    #   The Amazon Resource Name (ARN) of the integrated Amazon SNS topic
    #   used for streaming chat messages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SessionIntegrationConfiguration AWS API Documentation
    #
    class SessionIntegrationConfiguration < Struct.new(
      :topic_integration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about the session.
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] session_arn
    #   The Amazon Resource Name (ARN) of the session.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SessionSummary AWS API Documentation
    #
    class SessionSummary < Struct.new(
      :assistant_arn,
      :assistant_id,
      :session_arn,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information about the external data source.
    #
    # @note SourceConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note SourceConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SourceConfiguration corresponding to the set member.
    #
    # @!attribute [rw] app_integrations
    #   Configuration information for Amazon AppIntegrations to
    #   automatically ingest content.
    #   @return [Types::AppIntegrationsConfiguration]
    #
    # @!attribute [rw] managed_source_configuration
    #   Source configuration for managed resources.
    #   @return [Types::ManagedSourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SourceConfiguration AWS API Documentation
    #
    class SourceConfiguration < Struct.new(
      :app_integrations,
      :managed_source_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AppIntegrations < SourceConfiguration; end
      class ManagedSourceConfiguration < SourceConfiguration; end
      class Unknown < SourceConfiguration; end
    end

    # Details about the source content data.
    #
    # @!attribute [rw] citation_span
    #   Contains information about where the text with a citation begins and
    #   ends in the generated output.
    #   @return [Types::CitationSpan]
    #
    # @!attribute [rw] id
    #   The identifier of the source content.
    #   @return [String]
    #
    # @!attribute [rw] ranking_data
    #   Details about the source content ranking data.
    #   @return [Types::RankingData]
    #
    # @!attribute [rw] text_data
    #   Details about the source content text data.
    #   @return [Types::TextData]
    #
    # @!attribute [rw] type
    #   The type of the source content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SourceContentDataDetails AWS API Documentation
    #
    class SourceContentDataDetails < Struct.new(
      :citation_span,
      :id,
      :ranking_data,
      :text_data,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   The type of content to upload.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] presigned_url_time_to_live
    #   The expected expiration time of the generated presigned URL,
    #   specified in minutes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/StartContentUploadRequest AWS API Documentation
    #
    class StartContentUploadRequest < Struct.new(
      :content_type,
      :knowledge_base_id,
      :presigned_url_time_to_live)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] headers_to_include
    #   The headers to include in the upload.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] upload_id
    #   The identifier of the upload.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL of the upload.
    #   @return [String]
    #
    # @!attribute [rw] url_expiry
    #   The expiration time of the URL as an epoch timestamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/StartContentUploadResponse AWS API Documentation
    #
    class StartContentUploadResponse < Struct.new(
      :headers_to_include,
      :upload_id,
      :url,
      :url_expiry)
      SENSITIVE = [:url]
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The tags used to organize, track, or control access for this
    #   resource.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] external_source_configuration
    #   The configuration information of the external source that the
    #   resource data are imported from.
    #   @return [Types::ExternalSourceConfiguration]
    #
    # @!attribute [rw] import_job_type
    #   The type of the import job.
    #
    #   * For importing quick response resource, set the value to
    #     `QUICK_RESPONSES`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #
    #   * For importing Amazon Q in Connect quick responses, this should be
    #     a `QUICK_RESPONSES` type knowledge base.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata fields of the imported Amazon Q in Connect resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] upload_id
    #   A pointer to the uploaded asset. This value is returned by
    #   [StartContentUpload][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/StartImportJobRequest AWS API Documentation
    #
    class StartImportJobRequest < Struct.new(
      :client_token,
      :external_source_configuration,
      :import_job_type,
      :knowledge_base_id,
      :metadata,
      :upload_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] import_job
    #   The import job.
    #   @return [Types::ImportJobData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/StartImportJobResponse AWS API Documentation
    #
    class StartImportJobResponse < Struct.new(
      :import_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # A leaf node condition which can be used to specify a tag condition.
    #
    # @!attribute [rw] key
    #   The tag key in the tag condition.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value in the tag condition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/TagCondition AWS API Documentation
    #
    class TagCondition < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that can be used to specify Tag conditions.
    #
    # @note TagFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @note TagFilter is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of TagFilter corresponding to the set member.
    #
    # @!attribute [rw] and_conditions
    #   A list of conditions which would be applied together with an `AND`
    #   condition.
    #   @return [Array<Types::TagCondition>]
    #
    # @!attribute [rw] or_conditions
    #   A list of conditions which would be applied together with an `OR`
    #   condition.
    #   @return [Array<Types::OrCondition>]
    #
    # @!attribute [rw] tag_condition
    #   A leaf node condition which can be used to specify a tag condition.
    #   @return [Types::TagCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/TagFilter AWS API Documentation
    #
    class TagFilter < Struct.new(
      :and_conditions,
      :or_conditions,
      :tag_condition,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AndConditions < TagFilter; end
      class OrConditions < TagFilter; end
      class TagCondition < TagFilter; end
      class Unknown < TagFilter; end
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Details about the source content text data.
    #
    # @!attribute [rw] excerpt
    #   The text of the document.
    #   @return [Types::DocumentText]
    #
    # @!attribute [rw] title
    #   The text of the document.
    #   @return [Types::DocumentText]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/TextData AWS API Documentation
    #
    class TextData < Struct.new(
      :excerpt,
      :title)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a prompt template that supports full textual
    # prompt configuration using a YAML prompt.
    #
    # @!attribute [rw] text
    #   The YAML text for the AI Prompt template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/TextFullAIPromptEditTemplateConfiguration AWS API Documentation
    #
    class TextFullAIPromptEditTemplateConfiguration < Struct.new(
      :text)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # The throttling limit has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Q in Connect throws this exception if you have too many tags in
    # your tag set.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The specified resource name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] ai_agent_id
    #   The identifier of the Amazon Q in Connect AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the AWS SDK populates
    #   this field. For more information about idempotency, see [Making
    #   retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration of the Amazon Q in Connect AI Agent.
    #   @return [Types::AIAgentConfiguration]
    #
    # @!attribute [rw] description
    #   The description of the Amazon Q in Connect AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] visibility_status
    #   The visbility status of the Amazon Q in Connect AI Agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateAIAgentRequest AWS API Documentation
    #
    class UpdateAIAgentRequest < Struct.new(
      :ai_agent_id,
      :assistant_id,
      :client_token,
      :configuration,
      :description,
      :visibility_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_agent
    #   The data of the updated Amazon Q in Connect AI Agent.
    #   @return [Types::AIAgentData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateAIAgentResponse AWS API Documentation
    #
    class UpdateAIAgentResponse < Struct.new(
      :ai_agent)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_prompt_id
    #   The identifier of the Amazon Q in Connect AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the AWS SDK populates
    #   this field. For more information about idempotency, see [Making
    #   retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: http://aws.amazon.com/https:/aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the Amazon Q in Connect AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] template_configuration
    #   The configuration of the prompt template for this AI Prompt.
    #   @return [Types::AIPromptTemplateConfiguration]
    #
    # @!attribute [rw] visibility_status
    #   The visibility status of the Amazon Q in Connect AI prompt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateAIPromptRequest AWS API Documentation
    #
    class UpdateAIPromptRequest < Struct.new(
      :ai_prompt_id,
      :assistant_id,
      :client_token,
      :description,
      :template_configuration,
      :visibility_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_prompt
    #   The data of the updated Amazon Q in Connect AI Prompt.
    #   @return [Types::AIPromptData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateAIPromptResponse AWS API Documentation
    #
    class UpdateAIPromptResponse < Struct.new(
      :ai_prompt)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_agent_type
    #   The type of the AI Agent being updated for use by default on the
    #   Amazon Q in Connect Assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration of the AI Agent being updated for use by default
    #   on the Amazon Q in Connect Assistant.
    #   @return [Types::AIAgentConfigurationData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateAssistantAIAgentRequest AWS API Documentation
    #
    class UpdateAssistantAIAgentRequest < Struct.new(
      :ai_agent_type,
      :assistant_id,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant
    #   The assistant data.
    #   @return [Types::AssistantData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateAssistantAIAgentResponse AWS API Documentation
    #
    class UpdateAssistantAIAgentResponse < Struct.new(
      :assistant)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_id
    #   The identifier of the content. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base. Can be either the ID or the
    #   ARN
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   A key/value map to store attributes without affecting tagging or
    #   recommendations. For example, when synchronizing data between an
    #   external system and Amazon Q in Connect, you can store an external
    #   version identifier as metadata to utilize for determining drift.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] override_link_out_uri
    #   The URI for the article. If the knowledge base has a templateUri,
    #   setting this argument overrides it for this piece of content. To
    #   remove an existing `overrideLinkOurUri`, exclude this argument and
    #   set `removeOverrideLinkOutUri` to true.
    #   @return [String]
    #
    # @!attribute [rw] remove_override_link_out_uri
    #   Unset the existing `overrideLinkOutUri` if it exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] revision_id
    #   The `revisionId` of the content resource to update, taken from an
    #   earlier call to `GetContent`, `GetContentSummary`, `SearchContent`,
    #   or `ListContents`. If included, this argument acts as an optimistic
    #   lock to ensure content was not modified since it was last read. If
    #   it has been modified, this API throws a
    #   `PreconditionFailedException`.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the content.
    #   @return [String]
    #
    # @!attribute [rw] upload_id
    #   A pointer to the uploaded asset. This value is returned by
    #   [StartContentUpload][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_StartContentUpload.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateContentRequest AWS API Documentation
    #
    class UpdateContentRequest < Struct.new(
      :content_id,
      :knowledge_base_id,
      :metadata,
      :override_link_out_uri,
      :remove_override_link_out_uri,
      :revision_id,
      :title,
      :upload_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   The content.
    #   @return [Types::ContentData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateContentResponse AWS API Documentation
    #
    class UpdateContentResponse < Struct.new(
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] template_uri
    #   The template URI to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateKnowledgeBaseTemplateUriRequest AWS API Documentation
    #
    class UpdateKnowledgeBaseTemplateUriRequest < Struct.new(
      :knowledge_base_id,
      :template_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base
    #   The knowledge base to update.
    #   @return [Types::KnowledgeBaseData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateKnowledgeBaseTemplateUriResponse AWS API Documentation
    #
    class UpdateKnowledgeBaseTemplateUriResponse < Struct.new(
      :knowledge_base)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channels
    #   The Amazon Connect contact channels this quick response applies to.
    #   The supported contact channel types include `Chat`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] content
    #   The updated content of the quick response.
    #   @return [Types::QuickResponseDataProvider]
    #
    # @!attribute [rw] content_type
    #   The media type of the quick response content.
    #
    #   * Use `application/x.quickresponse;format=plain` for quick response
    #     written in plain text.
    #
    #   * Use `application/x.quickresponse;format=markdown` for quick
    #     response written in richtext.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] grouping_configuration
    #   The updated grouping configuration of the quick response.
    #   @return [Types::GroupingConfiguration]
    #
    # @!attribute [rw] is_active
    #   Whether the quick response is active.
    #   @return [Boolean]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language code value for the language in which the quick response
    #   is written. The supported language codes include `de_DE`, `en_US`,
    #   `es_ES`, `fr_FR`, `id_ID`, `it_IT`, `ja_JP`, `ko_KR`, `pt_BR`,
    #   `zh_CN`, `zh_TW`
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] quick_response_id
    #   The identifier of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] remove_description
    #   Whether to remove the description from the quick response.
    #   @return [Boolean]
    #
    # @!attribute [rw] remove_grouping_configuration
    #   Whether to remove the grouping configuration of the quick response.
    #   @return [Boolean]
    #
    # @!attribute [rw] remove_shortcut_key
    #   Whether to remove the shortcut key of the quick response.
    #   @return [Boolean]
    #
    # @!attribute [rw] shortcut_key
    #   The shortcut key of the quick response. The value should be unique
    #   across the knowledge base.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateQuickResponseRequest AWS API Documentation
    #
    class UpdateQuickResponseRequest < Struct.new(
      :channels,
      :content,
      :content_type,
      :description,
      :grouping_configuration,
      :is_active,
      :knowledge_base_id,
      :language,
      :name,
      :quick_response_id,
      :remove_description,
      :remove_grouping_configuration,
      :remove_shortcut_key,
      :shortcut_key)
      SENSITIVE = [:channels]
      include Aws::Structure
    end

    # @!attribute [rw] quick_response
    #   The quick response.
    #   @return [Types::QuickResponseData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateQuickResponseResponse AWS API Documentation
    #
    class UpdateQuickResponseResponse < Struct.new(
      :quick_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The data stored on the Amazon Q in Connect Session.
    #   @return [Array<Types::RuntimeSessionData>]
    #
    # @!attribute [rw] namespace
    #   The namespace into which the session data is stored. Supported
    #   namespaces are: Custom
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateSessionDataRequest AWS API Documentation
    #
    class UpdateSessionDataRequest < Struct.new(
      :assistant_id,
      :data,
      :namespace,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data
    #   Data stored in the session.
    #   @return [Array<Types::RuntimeSessionData>]
    #
    # @!attribute [rw] namespace
    #   The namespace into which the session data is stored. Supported
    #   namespaces are: Custom
    #   @return [String]
    #
    # @!attribute [rw] session_arn
    #   The Amazon Resource Name (ARN) of the session.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateSessionDataResponse AWS API Documentation
    #
    class UpdateSessionDataResponse < Struct.new(
      :data,
      :namespace,
      :session_arn,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_agent_configuration
    #   The configuration of the AI Agents (mapped by AI Agent Type to AI
    #   Agent version) that should be used by Amazon Q in Connect for this
    #   Session.
    #   @return [Hash<String,Types::AIAgentConfigurationData>]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] tag_filter
    #   An object that can be used to specify Tag conditions.
    #   @return [Types::TagFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateSessionRequest AWS API Documentation
    #
    class UpdateSessionRequest < Struct.new(
      :ai_agent_configuration,
      :assistant_id,
      :description,
      :session_id,
      :tag_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session
    #   Information about the session.
    #   @return [Types::SessionData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateSessionResponse AWS API Documentation
    #
    class UpdateSessionResponse < Struct.new(
      :session)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the URL/URLs for the web content that you want to
    # crawl. You should be authorized to crawl the URLs.
    #
    # @!attribute [rw] seed_urls
    #   List of URLs for crawling.
    #   @return [Array<Types::SeedUrl>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UrlConfiguration AWS API Documentation
    #
    class UrlConfiguration < Struct.new(
      :seed_urls)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by a service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about how to ingest the documents in a data source.
    #
    # @!attribute [rw] chunking_configuration
    #   Details about how to chunk the documents in the data source. A chunk
    #   refers to an excerpt from a data source that is returned when the
    #   knowledge base that it belongs to is queried.
    #   @return [Types::ChunkingConfiguration]
    #
    # @!attribute [rw] parsing_configuration
    #   A custom parser for data source documents.
    #   @return [Types::ParsingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/VectorIngestionConfiguration AWS API Documentation
    #
    class VectorIngestionConfiguration < Struct.new(
      :chunking_configuration,
      :parsing_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration details for the web data source.
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
    #   The scope of what is crawled for your URLs. You can choose to crawl
    #   only web pages that belong to the same host or primary domain. For
    #   example, only web pages that contain the seed URL
    #   `https://docs.aws.amazon.com/bedrock/latest/userguide/` and no other
    #   domains. You can choose to include sub domains in addition to the
    #   host or primary domain. For example, web pages that contain
    #   `aws.amazon.com` can also include sub domain `docs.aws.amazon.com`.
    #   @return [String]
    #
    # @!attribute [rw] url_configuration
    #   The configuration of the URL/URLs for the web content that you want
    #   to crawl. You should be authorized to crawl the URLs.
    #   @return [Types::UrlConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/WebCrawlerConfiguration AWS API Documentation
    #
    class WebCrawlerConfiguration < Struct.new(
      :crawler_limits,
      :exclusion_filters,
      :inclusion_filters,
      :scope,
      :url_configuration)
      SENSITIVE = [:exclusion_filters, :inclusion_filters]
      include Aws::Structure
    end

    # The configuration of crawl limits for the web URLs.
    #
    # @!attribute [rw] rate_limit
    #   Rate of web URLs retrieved per minute.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/WebCrawlerLimits AWS API Documentation
    #
    class WebCrawlerLimits < Struct.new(
      :rate_limit)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end


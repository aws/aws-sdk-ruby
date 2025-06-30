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
    # @!attribute [rw] manual_search_ai_agent_configuration
    #   The configuration for AI Agents of type `MANUAL_SEARCH`.
    #   @return [Types::ManualSearchAIAgentConfiguration]
    #
    # @!attribute [rw] answer_recommendation_ai_agent_configuration
    #   The configuration for AI Agents of type `ANSWER_RECOMMENDATION`.
    #   @return [Types::AnswerRecommendationAIAgentConfiguration]
    #
    # @!attribute [rw] self_service_ai_agent_configuration
    #   The configuration for AI Agents of type SELF\_SERVICE.
    #   @return [Types::SelfServiceAIAgentConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AIAgentConfiguration AWS API Documentation
    #
    class AIAgentConfiguration < Struct.new(
      :manual_search_ai_agent_configuration,
      :answer_recommendation_ai_agent_configuration,
      :self_service_ai_agent_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ManualSearchAiAgentConfiguration < AIAgentConfiguration; end
      class AnswerRecommendationAiAgentConfiguration < AIAgentConfiguration; end
      class SelfServiceAiAgentConfiguration < AIAgentConfiguration; end
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
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] ai_agent_id
    #   The identifier of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] ai_agent_arn
    #   The Amazon Resource Name (ARN) of the AI agent.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Configuration for the AI Agent.
    #   @return [Types::AIAgentConfiguration]
    #
    # @!attribute [rw] modified_time
    #   The time the AI Agent was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] visibility_status
    #   The visibility status of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AIAgentData AWS API Documentation
    #
    class AIAgentData < Struct.new(
      :assistant_id,
      :assistant_arn,
      :ai_agent_id,
      :ai_agent_arn,
      :name,
      :type,
      :configuration,
      :modified_time,
      :description,
      :visibility_status,
      :tags,
      :origin,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the AI Agent.
    #
    # @!attribute [rw] name
    #   The name of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] ai_agent_id
    #   The identifier of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] ai_agent_arn
    #   The Amazon Resource Name (ARN) of the AI agent.
    #   @return [String]
    #
    # @!attribute [rw] modified_time
    #   The time the AI Agent was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] visibility_status
    #   The visibility status of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration for the AI Agent.
    #   @return [Types::AIAgentConfiguration]
    #
    # @!attribute [rw] origin
    #   The origin of the AI Agent. `SYSTEM` for a default AI Agent created
    #   by Q in Connect or `CUSTOMER` for an AI Agent created by calling AI
    #   Agent creation APIs.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the AI Agent.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AIAgentSummary AWS API Documentation
    #
    class AIAgentSummary < Struct.new(
      :name,
      :assistant_id,
      :assistant_arn,
      :ai_agent_id,
      :type,
      :ai_agent_arn,
      :modified_time,
      :visibility_status,
      :configuration,
      :origin,
      :description,
      :status,
      :tags)
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

    # Contains details about how to handle harmful content.
    #
    # @!attribute [rw] filters_config
    #   Contains the type of the content filter and how strongly it should
    #   apply to prompts and model responses.
    #   @return [Array<Types::GuardrailContentFilterConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AIGuardrailContentPolicyConfig AWS API Documentation
    #
    class AIGuardrailContentPolicyConfig < Struct.new(
      :filters_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The policy configuration details for the AI Guardrail's contextual
    # grounding policy.
    #
    # @!attribute [rw] filters_config
    #   The filter configuration details for the AI Guardrails contextual
    #   grounding policy.
    #   @return [Array<Types::GuardrailContextualGroundingFilterConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AIGuardrailContextualGroundingPolicyConfig AWS API Documentation
    #
    class AIGuardrailContextualGroundingPolicyConfig < Struct.new(
      :filters_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data for the AI Guardrail
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] ai_guardrail_arn
    #   The Amazon Resource Name (ARN) of the AI Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] ai_guardrail_id
    #   The identifier of the Amazon Q in Connect AI Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the AI Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] visibility_status
    #   The visibility status of the AI Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] blocked_input_messaging
    #   The message to return when the AI Guardrail blocks a prompt.
    #   @return [String]
    #
    # @!attribute [rw] blocked_outputs_messaging
    #   The message to return when the AI Guardrail blocks a model response.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the AI Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] topic_policy_config
    #   Contains details about topics that the AI Guardrail should identify
    #   and deny.
    #   @return [Types::AIGuardrailTopicPolicyConfig]
    #
    # @!attribute [rw] content_policy_config
    #   Contains details about how to handle harmful content.
    #   @return [Types::AIGuardrailContentPolicyConfig]
    #
    # @!attribute [rw] word_policy_config
    #   Contains details about the word policy to configured for the AI
    #   Guardrail.
    #   @return [Types::AIGuardrailWordPolicyConfig]
    #
    # @!attribute [rw] sensitive_information_policy_config
    #   Contains details about PII entities and regular expressions to
    #   configure for the AI Guardrail.
    #   @return [Types::AIGuardrailSensitiveInformationPolicyConfig]
    #
    # @!attribute [rw] contextual_grounding_policy_config
    #   The policy configuration details for the AI Guardrail's contextual
    #   grounding policy.
    #   @return [Types::AIGuardrailContextualGroundingPolicyConfig]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   The status of the AI Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] modified_time
    #   The time the AI Guardrail was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AIGuardrailData AWS API Documentation
    #
    class AIGuardrailData < Struct.new(
      :assistant_id,
      :assistant_arn,
      :ai_guardrail_arn,
      :ai_guardrail_id,
      :name,
      :visibility_status,
      :blocked_input_messaging,
      :blocked_outputs_messaging,
      :description,
      :topic_policy_config,
      :content_policy_config,
      :word_policy_config,
      :sensitive_information_policy_config,
      :contextual_grounding_policy_config,
      :tags,
      :status,
      :modified_time)
      SENSITIVE = [:blocked_input_messaging, :blocked_outputs_messaging, :description]
      include Aws::Structure
    end

    # Contains details about PII entities and regular expressions to
    # configure for the AI Guardrail.
    #
    # @!attribute [rw] pii_entities_config
    #   A list of PII entities to configure to the AI Guardrail.
    #   @return [Array<Types::GuardrailPiiEntityConfig>]
    #
    # @!attribute [rw] regexes_config
    #   A list of regular expressions to configure to the AI Guardrail.
    #   @return [Array<Types::GuardrailRegexConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AIGuardrailSensitiveInformationPolicyConfig AWS API Documentation
    #
    class AIGuardrailSensitiveInformationPolicyConfig < Struct.new(
      :pii_entities_config,
      :regexes_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the AI Guardrail.
    #
    # @!attribute [rw] name
    #   The name of the AI Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] ai_guardrail_id
    #   The identifier of the Amazon Q in Connect AI Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] ai_guardrail_arn
    #   The Amazon Resource Name (ARN) of the AI Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] modified_time
    #   The time the AI Guardrail was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] visibility_status
    #   The visibility status of the AI Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the AI Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the AI Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AIGuardrailSummary AWS API Documentation
    #
    class AIGuardrailSummary < Struct.new(
      :name,
      :assistant_id,
      :assistant_arn,
      :ai_guardrail_id,
      :ai_guardrail_arn,
      :modified_time,
      :visibility_status,
      :description,
      :status,
      :tags)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Contains details about topics that the AI Guardrail should identify
    # and deny.
    #
    # @!attribute [rw] topics_config
    #   A list of policies related to topics that the AI Guardrail should
    #   deny.
    #   @return [Array<Types::GuardrailTopicConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AIGuardrailTopicPolicyConfig AWS API Documentation
    #
    class AIGuardrailTopicPolicyConfig < Struct.new(
      :topics_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the AI Guardrail version.
    #
    # @!attribute [rw] ai_guardrail_summary
    #   The data for the summary of the AI Guardrail version.
    #   @return [Types::AIGuardrailSummary]
    #
    # @!attribute [rw] version_number
    #   The version number for this AI Guardrail version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AIGuardrailVersionSummary AWS API Documentation
    #
    class AIGuardrailVersionSummary < Struct.new(
      :ai_guardrail_summary,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the word policy to configured for the AI
    # Guardrail.
    #
    # @!attribute [rw] words_config
    #   A list of words to configure for the AI Guardrail.
    #   @return [Array<Types::GuardrailWordConfig>]
    #
    # @!attribute [rw] managed_word_lists_config
    #   A list of managed words to configure for the AI Guardrail.
    #   @return [Array<Types::GuardrailManagedWordsConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AIGuardrailWordPolicyConfig AWS API Documentation
    #
    class AIGuardrailWordPolicyConfig < Struct.new(
      :words_config,
      :managed_word_lists_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data for the AI Prompt
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] ai_prompt_id
    #   The identifier of the Amazon Q in Connect AI prompt.
    #   @return [String]
    #
    # @!attribute [rw] ai_prompt_arn
    #   The Amazon Resource Name (ARN) of the AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the AI Prompt
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of this AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] template_type
    #   The type of the prompt template for this AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The identifier of the model used for this AI Prompt. The following
    #   model Ids are supported:
    #
    #   * `anthropic.claude-3-haiku--v1:0`
    #
    #   * `apac.amazon.nova-lite-v1:0`
    #
    #   * `apac.amazon.nova-micro-v1:0`
    #
    #   * `apac.amazon.nova-pro-v1:0`
    #
    #   * `apac.anthropic.claude-3-5-sonnet--v2:0`
    #
    #   * `apac.anthropic.claude-3-haiku-20240307-v1:0`
    #
    #   * `eu.amazon.nova-lite-v1:0`
    #
    #   * `eu.amazon.nova-micro-v1:0`
    #
    #   * `eu.amazon.nova-pro-v1:0`
    #
    #   * `eu.anthropic.claude-3-7-sonnet-20250219-v1:0`
    #
    #   * `eu.anthropic.claude-3-haiku-20240307-v1:0`
    #
    #   * `us.amazon.nova-lite-v1:0`
    #
    #   * `us.amazon.nova-micro-v1:0`
    #
    #   * `us.amazon.nova-pro-v1:0`
    #
    #   * `us.anthropic.claude-3-5-haiku-20241022-v1:0`
    #
    #   * `us.anthropic.claude-3-7-sonnet-20250219-v1:0`
    #
    #   * `us.anthropic.claude-3-haiku-20240307-v1:0`
    #   @return [String]
    #
    # @!attribute [rw] api_format
    #   The API format used for this AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] template_configuration
    #   The configuration of the prompt template for this AI Prompt.
    #   @return [Types::AIPromptTemplateConfiguration]
    #
    # @!attribute [rw] modified_time
    #   The time the AI Prompt was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] visibility_status
    #   The visibility status of the AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AIPromptData AWS API Documentation
    #
    class AIPromptData < Struct.new(
      :assistant_id,
      :assistant_arn,
      :ai_prompt_id,
      :ai_prompt_arn,
      :name,
      :type,
      :template_type,
      :model_id,
      :api_format,
      :template_configuration,
      :modified_time,
      :description,
      :visibility_status,
      :tags,
      :origin,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the AI Prompt.
    #
    # @!attribute [rw] name
    #   The name of the AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] ai_prompt_id
    #   The identifier of the Amazon Q in Connect AI prompt.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of this AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] ai_prompt_arn
    #   The Amazon Resource Name (ARN) of the AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] modified_time
    #   The time the AI Prompt was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] template_type
    #   The type of the prompt template for this AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The identifier of the model used for this AI Prompt. Model Ids
    #   supported are: `anthropic.claude-3-haiku-20240307-v1:0`.
    #   @return [String]
    #
    # @!attribute [rw] api_format
    #   The API format used for this AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] visibility_status
    #   The visibility status of the AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   The origin of the AI Prompt. `SYSTEM` for a default AI Prompt
    #   created by Q in Connect or `CUSTOMER` for an AI Prompt created by
    #   calling AI Prompt creation APIs.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the AI Prompt.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AIPromptSummary AWS API Documentation
    #
    class AIPromptSummary < Struct.new(
      :name,
      :assistant_id,
      :assistant_arn,
      :ai_prompt_id,
      :type,
      :ai_prompt_arn,
      :modified_time,
      :template_type,
      :model_id,
      :api_format,
      :visibility_status,
      :origin,
      :description,
      :status,
      :tags)
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

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] message_template_id
    #   The identifier of the message template. Can be either the ID or the
    #   ARN. It cannot contain any qualifier.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the message template version to activate.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ActivateMessageTemplateRequest AWS API Documentation
    #
    class ActivateMessageTemplateRequest < Struct.new(
      :knowledge_base_id,
      :message_template_id,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message_template_arn
    #   The Amazon Resource Name (ARN) of the message template.
    #   @return [String]
    #
    # @!attribute [rw] message_template_id
    #   The identifier of the message template.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the message template version that is
    #   activated.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ActivateMessageTemplateResponse AWS API Documentation
    #
    class ActivateMessageTemplateResponse < Struct.new(
      :message_template_arn,
      :message_template_id,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an agent.
    #
    # @!attribute [rw] first_name
    #   The agent’s first name as entered in their Amazon Connect user
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The agent’s last name as entered in their Amazon Connect user
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AgentAttributes AWS API Documentation
    #
    class AgentAttributes < Struct.new(
      :first_name,
      :last_name)
      SENSITIVE = [:first_name, :last_name]
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
    # @!attribute [rw] answer_generation_ai_prompt_id
    #   The AI Prompt identifier for the Answer Generation prompt used by
    #   the `ANSWER_RECOMMENDATION` AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] answer_generation_ai_guardrail_id
    #   The AI Guardrail identifier for the Answer Generation Guardrail used
    #   by the `ANSWER_RECOMMENDATION` AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] association_configurations
    #   The association configurations for overriding behavior on this AI
    #   Agent.
    #   @return [Array<Types::AssociationConfiguration>]
    #
    # @!attribute [rw] locale
    #   The locale to which specifies the language and region settings that
    #   determine the response language for [QueryAssistant][1].
    #
    #   <note markdown="1"> For more information on supported locales, see [Language support for
    #   Amazon Q in Connect][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_amazon-q-connect_QueryAssistant.html
    #   [2]: https://docs.aws.amazon.com/connect/latest/adminguide/supported-languages.html#qic-notes-languages
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AnswerRecommendationAIAgentConfiguration AWS API Documentation
    #
    class AnswerRecommendationAIAgentConfiguration < Struct.new(
      :intent_labeling_generation_ai_prompt_id,
      :query_reformulation_ai_prompt_id,
      :answer_generation_ai_prompt_id,
      :answer_generation_ai_guardrail_id,
      :association_configurations,
      :locale)
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
    # @!attribute [rw] assistant_association_id
    #   The identifier of the assistant association.
    #   @return [String]
    #
    # @!attribute [rw] assistant_association_arn
    #   The Amazon Resource Name (ARN) of the assistant association.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] association_type
    #   The type of association.
    #   @return [String]
    #
    # @!attribute [rw] association_data
    #   A union type that currently has a single argument, the knowledge
    #   base ID.
    #   @return [Types::AssistantAssociationOutputData]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AssistantAssociationData AWS API Documentation
    #
    class AssistantAssociationData < Struct.new(
      :assistant_association_id,
      :assistant_association_arn,
      :assistant_id,
      :assistant_arn,
      :association_type,
      :association_data,
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
    # @!attribute [rw] assistant_association_id
    #   The identifier of the assistant association.
    #   @return [String]
    #
    # @!attribute [rw] assistant_association_arn
    #   The Amazon Resource Name (ARN) of the assistant association.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] association_type
    #   The type of association.
    #   @return [String]
    #
    # @!attribute [rw] association_data
    #   The association data.
    #   @return [Types::AssistantAssociationOutputData]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AssistantAssociationSummary AWS API Documentation
    #
    class AssistantAssociationSummary < Struct.new(
      :assistant_association_id,
      :assistant_association_arn,
      :assistant_id,
      :assistant_arn,
      :association_type,
      :association_data,
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
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of assistant.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the assistant.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
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
    # @!attribute [rw] integration_configuration
    #   The configuration information for the Amazon Q in Connect assistant
    #   integration.
    #   @return [Types::AssistantIntegrationConfiguration]
    #
    # @!attribute [rw] capability_configuration
    #   The configuration information for the Amazon Q in Connect assistant
    #   capability.
    #   @return [Types::AssistantCapabilityConfiguration]
    #
    # @!attribute [rw] ai_agent_configuration
    #   The configuration of the AI Agents (mapped by AI Agent Type to AI
    #   Agent version) that is set on the Amazon Q in Connect Assistant.
    #   @return [Hash<String,Types::AIAgentConfigurationData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AssistantData AWS API Documentation
    #
    class AssistantData < Struct.new(
      :assistant_id,
      :assistant_arn,
      :name,
      :type,
      :status,
      :description,
      :tags,
      :server_side_encryption_configuration,
      :integration_configuration,
      :capability_configuration,
      :ai_agent_configuration)
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
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the assistant.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the assistant.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the assistant.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the assistant.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
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
    # @!attribute [rw] integration_configuration
    #   The configuration information for the Amazon Q in Connect assistant
    #   integration.
    #   @return [Types::AssistantIntegrationConfiguration]
    #
    # @!attribute [rw] capability_configuration
    #   The configuration information for the Amazon Q in Connect assistant
    #   capability.
    #   @return [Types::AssistantCapabilityConfiguration]
    #
    # @!attribute [rw] ai_agent_configuration
    #   The configuration of the AI Agents (mapped by AI Agent Type to AI
    #   Agent version) that is set on the Amazon Q in Connect Assistant.
    #   @return [Hash<String,Types::AIAgentConfigurationData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AssistantSummary AWS API Documentation
    #
    class AssistantSummary < Struct.new(
      :assistant_id,
      :assistant_arn,
      :name,
      :type,
      :status,
      :description,
      :tags,
      :server_side_encryption_configuration,
      :integration_configuration,
      :capability_configuration,
      :ai_agent_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for an Amazon Q in Connect Assistant Association.
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
    # @!attribute [rw] association_configuration_data
    #   The data of the configuration for an Amazon Q in Connect Assistant
    #   Association.
    #   @return [Types::AssociationConfigurationData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/AssociationConfiguration AWS API Documentation
    #
    class AssociationConfiguration < Struct.new(
      :association_id,
      :association_type,
      :association_configuration_data)
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
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] content_id
    #   The identifier of the content.
    #   @return [String]
    #
    # @!attribute [rw] content_arn
    #   The Amazon Resource Name (ARN) of the content.
    #   @return [String]
    #
    # @!attribute [rw] content_association_id
    #   The identifier of the content association. Can be either the ID or
    #   the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] content_association_arn
    #   The Amazon Resource Name (ARN) of the content association.
    #   @return [String]
    #
    # @!attribute [rw] association_type
    #   The type of association.
    #   @return [String]
    #
    # @!attribute [rw] association_data
    #   The content association.
    #   @return [Types::ContentAssociationContents]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ContentAssociationData AWS API Documentation
    #
    class ContentAssociationData < Struct.new(
      :knowledge_base_id,
      :knowledge_base_arn,
      :content_id,
      :content_arn,
      :content_association_id,
      :content_association_arn,
      :association_type,
      :association_data,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a content association.
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] content_id
    #   The identifier of the content.
    #   @return [String]
    #
    # @!attribute [rw] content_arn
    #   The Amazon Resource Name (ARN) of the content.
    #   @return [String]
    #
    # @!attribute [rw] content_association_id
    #   The identifier of the content association. Can be either the ID or
    #   the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] content_association_arn
    #   The Amazon Resource Name (ARN) of the content association.
    #   @return [String]
    #
    # @!attribute [rw] association_type
    #   The type of association.
    #   @return [String]
    #
    # @!attribute [rw] association_data
    #   The content association.
    #   @return [Types::ContentAssociationContents]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ContentAssociationSummary AWS API Documentation
    #
    class ContentAssociationSummary < Struct.new(
      :knowledge_base_id,
      :knowledge_base_arn,
      :content_id,
      :content_arn,
      :content_association_id,
      :content_association_arn,
      :association_type,
      :association_data,
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
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the content.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The identifier of the content revision.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the content.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The media type of the content.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the content.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   A key/value map to store attributes without affecting tagging or
    #   recommendations. For example, when synchronizing data between an
    #   external system and Amazon Q in Connect, you can store an external
    #   version identifier as metadata to utilize for determining drift.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] link_out_uri
    #   The URI of the content.
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
      :knowledge_base_arn,
      :knowledge_base_id,
      :name,
      :revision_id,
      :title,
      :content_type,
      :status,
      :metadata,
      :tags,
      :link_out_uri,
      :url,
      :url_expiry)
      SENSITIVE = [:url]
      include Aws::Structure
    end

    # Details about the content data.
    #
    # @!attribute [rw] text_data
    #   Details about the content text data.
    #   @return [Types::TextData]
    #
    # @!attribute [rw] ranking_data
    #   Details about the content ranking data.
    #   @return [Types::RankingData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ContentDataDetails AWS API Documentation
    #
    class ContentDataDetails < Struct.new(
      :text_data,
      :ranking_data)
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
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] content_arn
    #   The Amazon Resource Name (ARN) of the content.
    #   @return [String]
    #
    # @!attribute [rw] content_id
    #   The identifier of the content.
    #   @return [String]
    #
    # @!attribute [rw] source_url
    #   The web URL of the source content.
    #   @return [String]
    #
    # @!attribute [rw] reference_type
    #   The type of reference content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ContentReference AWS API Documentation
    #
    class ContentReference < Struct.new(
      :knowledge_base_arn,
      :knowledge_base_id,
      :content_arn,
      :content_id,
      :source_url,
      :reference_type)
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
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the content.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The identifier of the revision of the content.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the content.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The media type of the content.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the content.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   A key/value map to store attributes without affecting tagging or
    #   recommendations. For example, when synchronizing data between an
    #   external system and Amazon Q in Connect, you can store an external
    #   version identifier as metadata to utilize for determining drift.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ContentSummary AWS API Documentation
    #
    class ContentSummary < Struct.new(
      :content_arn,
      :content_id,
      :knowledge_base_arn,
      :knowledge_base_id,
      :name,
      :revision_id,
      :title,
      :content_type,
      :status,
      :metadata,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The conversation context to include in SendMessage.
    #
    # @!attribute [rw] self_service_conversation_history
    #   The self service conversation history before the Amazon Q in Connect
    #   session.
    #   @return [Array<Types::SelfServiceConversationHistory>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ConversationContext AWS API Documentation
    #
    class ConversationContext < Struct.new(
      :self_service_conversation_history)
      SENSITIVE = []
      include Aws::Structure
    end

    # The conversation state associated to a message.
    #
    # @!attribute [rw] status
    #   The status of the conversation state.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason of the conversation state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ConversationState AWS API Documentation
    #
    class ConversationState < Struct.new(
      :status,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1]..
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration of the AI Agent.
    #   @return [Types::AIAgentConfiguration]
    #
    # @!attribute [rw] visibility_status
    #   The visibility status of the AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] description
    #   The description of the AI Agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAIAgentRequest AWS API Documentation
    #
    class CreateAIAgentRequest < Struct.new(
      :client_token,
      :assistant_id,
      :name,
      :type,
      :configuration,
      :visibility_status,
      :tags,
      :description)
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

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] ai_agent_id
    #   The identifier of the Amazon Q in Connect AI Agent.
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
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1]..
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAIAgentVersionRequest AWS API Documentation
    #
    class CreateAIAgentVersionRequest < Struct.new(
      :assistant_id,
      :ai_agent_id,
      :modified_time,
      :client_token)
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

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1]..
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the AI Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] blocked_input_messaging
    #   The message to return when the AI Guardrail blocks a prompt.
    #   @return [String]
    #
    # @!attribute [rw] blocked_outputs_messaging
    #   The message to return when the AI Guardrail blocks a model response.
    #   @return [String]
    #
    # @!attribute [rw] visibility_status
    #   The visibility status of the AI Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the AI Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] topic_policy_config
    #   The topic policies to configure for the AI Guardrail.
    #   @return [Types::AIGuardrailTopicPolicyConfig]
    #
    # @!attribute [rw] content_policy_config
    #   The content filter policies to configure for the AI Guardrail.
    #   @return [Types::AIGuardrailContentPolicyConfig]
    #
    # @!attribute [rw] word_policy_config
    #   The word policy you configure for the AI Guardrail.
    #   @return [Types::AIGuardrailWordPolicyConfig]
    #
    # @!attribute [rw] sensitive_information_policy_config
    #   The sensitive information policy to configure for the AI Guardrail.
    #   @return [Types::AIGuardrailSensitiveInformationPolicyConfig]
    #
    # @!attribute [rw] contextual_grounding_policy_config
    #   The contextual grounding policy configuration used to create an AI
    #   Guardrail.
    #   @return [Types::AIGuardrailContextualGroundingPolicyConfig]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAIGuardrailRequest AWS API Documentation
    #
    class CreateAIGuardrailRequest < Struct.new(
      :client_token,
      :assistant_id,
      :name,
      :blocked_input_messaging,
      :blocked_outputs_messaging,
      :visibility_status,
      :description,
      :topic_policy_config,
      :content_policy_config,
      :word_policy_config,
      :sensitive_information_policy_config,
      :contextual_grounding_policy_config,
      :tags)
      SENSITIVE = [:blocked_input_messaging, :blocked_outputs_messaging, :description]
      include Aws::Structure
    end

    # @!attribute [rw] ai_guardrail
    #   The data of the AI Guardrail.
    #   @return [Types::AIGuardrailData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAIGuardrailResponse AWS API Documentation
    #
    class CreateAIGuardrailResponse < Struct.new(
      :ai_guardrail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] ai_guardrail_id
    #   The identifier of the Amazon Q in Connect AI Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] modified_time
    #   The time the AI Guardrail was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1]..
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAIGuardrailVersionRequest AWS API Documentation
    #
    class CreateAIGuardrailVersionRequest < Struct.new(
      :assistant_id,
      :ai_guardrail_id,
      :modified_time,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_guardrail
    #   The data of the AI Guardrail version.
    #   @return [Types::AIGuardrailData]
    #
    # @!attribute [rw] version_number
    #   The version number of the AI Guardrail version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAIGuardrailVersionResponse AWS API Documentation
    #
    class CreateAIGuardrailVersionResponse < Struct.new(
      :ai_guardrail,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1]..
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of this AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] template_configuration
    #   The configuration of the prompt template for this AI Prompt.
    #   @return [Types::AIPromptTemplateConfiguration]
    #
    # @!attribute [rw] visibility_status
    #   The visibility status of the AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] template_type
    #   The type of the prompt template for this AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The identifier of the model used for this AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] api_format
    #   The API Format of the AI Prompt.
    #
    #   Recommended values: `MESSAGES | TEXT_COMPLETIONS`
    #
    #   <note markdown="1"> The values `ANTHROPIC_CLAUDE_MESSAGES |
    #   ANTHROPIC_CLAUDE_TEXT_COMPLETIONS` will be deprecated.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] description
    #   The description of the AI Prompt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAIPromptRequest AWS API Documentation
    #
    class CreateAIPromptRequest < Struct.new(
      :client_token,
      :assistant_id,
      :name,
      :type,
      :template_configuration,
      :visibility_status,
      :template_type,
      :model_id,
      :api_format,
      :tags,
      :description)
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

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] ai_prompt_id
    #   The identifier of the Amazon Q in Connect AI prompt.
    #   @return [String]
    #
    # @!attribute [rw] modified_time
    #   The time the AI Prompt was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1]..
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAIPromptVersionRequest AWS API Documentation
    #
    class CreateAIPromptVersionRequest < Struct.new(
      :assistant_id,
      :ai_prompt_id,
      :modified_time,
      :client_token)
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
    # @!attribute [rw] association_type
    #   The type of association.
    #   @return [String]
    #
    # @!attribute [rw] association
    #   The identifier of the associated resource.
    #   @return [Types::AssistantAssociationInputData]
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
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
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
      :association_type,
      :association,
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
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the assistant.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of assistant.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the assistant.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateAssistantRequest AWS API Documentation
    #
    class CreateAssistantRequest < Struct.new(
      :client_token,
      :name,
      :type,
      :description,
      :tags,
      :server_side_encryption_configuration)
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
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] content_id
    #   The identifier of the content.
    #   @return [String]
    #
    # @!attribute [rw] association_type
    #   The type of association.
    #   @return [String]
    #
    # @!attribute [rw] association
    #   The identifier of the associated resource.
    #   @return [Types::ContentAssociationContents]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateContentAssociationRequest AWS API Documentation
    #
    class CreateContentAssociationRequest < Struct.new(
      :client_token,
      :knowledge_base_id,
      :content_id,
      :association_type,
      :association,
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

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
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
    # @!attribute [rw] title
    #   The title of the content. If not set, the title is equal to the
    #   name.
    #   @return [String]
    #
    # @!attribute [rw] override_link_out_uri
    #   The URI you want to use for the article. If the knowledge base has a
    #   templateUri, setting this argument overrides it for this piece of
    #   content.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   A key/value map to store attributes without affecting tagging or
    #   recommendations. For example, when synchronizing data between an
    #   external system and Amazon Q in Connect, you can store an external
    #   version identifier as metadata to utilize for determining drift.
    #   @return [Hash<String,String>]
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
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateContentRequest AWS API Documentation
    #
    class CreateContentRequest < Struct.new(
      :knowledge_base_id,
      :name,
      :title,
      :override_link_out_uri,
      :metadata,
      :upload_id,
      :client_token,
      :tags)
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
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_type
    #   The type of knowledge base. Only CUSTOM knowledge bases allow you to
    #   upload your own content. EXTERNAL knowledge bases support
    #   integrations with third-party systems whose content is synchronized
    #   automatically.
    #   @return [String]
    #
    # @!attribute [rw] source_configuration
    #   The source of the knowledge base content. Only set this argument for
    #   EXTERNAL or Managed knowledge bases.
    #   @return [Types::SourceConfiguration]
    #
    # @!attribute [rw] rendering_configuration
    #   Information about how to render the content.
    #   @return [Types::RenderingConfiguration]
    #
    # @!attribute [rw] vector_ingestion_configuration
    #   Contains details about how to ingest the documents in a data source.
    #   @return [Types::VectorIngestionConfiguration]
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
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateKnowledgeBaseRequest AWS API Documentation
    #
    class CreateKnowledgeBaseRequest < Struct.new(
      :client_token,
      :name,
      :knowledge_base_type,
      :source_configuration,
      :rendering_configuration,
      :vector_ingestion_configuration,
      :server_side_encryption_configuration,
      :description,
      :tags)
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

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] message_template_id
    #   The identifier of the message template. Can be either the ID or the
    #   ARN. It cannot contain any qualifier.
    #   @return [String]
    #
    # @!attribute [rw] content_disposition
    #   The presentation information for the attachment file.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the attachment file being uploaded. The name should
    #   include the file extension.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The body of the attachment file being uploaded. It should be encoded
    #   using base64 encoding.
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
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateMessageTemplateAttachmentRequest AWS API Documentation
    #
    class CreateMessageTemplateAttachmentRequest < Struct.new(
      :knowledge_base_id,
      :message_template_id,
      :content_disposition,
      :name,
      :body,
      :client_token)
      SENSITIVE = [:name, :body]
      include Aws::Structure
    end

    # @!attribute [rw] attachment
    #   The message template attachment.
    #   @return [Types::MessageTemplateAttachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateMessageTemplateAttachmentResponse AWS API Documentation
    #
    class CreateMessageTemplateAttachmentResponse < Struct.new(
      :attachment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the message template.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the message template.
    #   @return [Types::MessageTemplateContentProvider]
    #
    # @!attribute [rw] description
    #   The description of the message template.
    #   @return [String]
    #
    # @!attribute [rw] channel_subtype
    #   The channel subtype this message template applies to.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language code value for the language in which the quick response
    #   is written. The supported language codes include `de_DE`, `en_US`,
    #   `es_ES`, `fr_FR`, `id_ID`, `it_IT`, `ja_JP`, `ko_KR`, `pt_BR`,
    #   `zh_CN`, `zh_TW`
    #   @return [String]
    #
    # @!attribute [rw] default_attributes
    #   An object that specifies the default values to use for variables in
    #   the message template. This object contains different categories of
    #   key-value pairs. Each key defines a variable or placeholder in the
    #   message template. The corresponding value defines the default value
    #   for that variable.
    #   @return [Types::MessageTemplateAttributes]
    #
    # @!attribute [rw] grouping_configuration
    #   The configuration information of the grouping of Amazon Q in Connect
    #   users.
    #   @return [Types::GroupingConfiguration]
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
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateMessageTemplateRequest AWS API Documentation
    #
    class CreateMessageTemplateRequest < Struct.new(
      :knowledge_base_id,
      :name,
      :content,
      :description,
      :channel_subtype,
      :language,
      :default_attributes,
      :grouping_configuration,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message_template
    #   The message template.
    #   @return [Types::MessageTemplateData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateMessageTemplateResponse AWS API Documentation
    #
    class CreateMessageTemplateResponse < Struct.new(
      :message_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] message_template_id
    #   The identifier of the message template. Can be either the ID or the
    #   ARN. It cannot contain any qualifier.
    #   @return [String]
    #
    # @!attribute [rw] message_template_content_sha_256
    #   The checksum value of the message template content that is
    #   referenced by the `$LATEST` qualifier. It can be returned in
    #   `MessageTemplateData` or `ExtendedMessageTemplateData`. It’s
    #   calculated by content, language, `defaultAttributes` and
    #   `Attachments` of the message template. If not supplied, the message
    #   template version will be created based on the message template
    #   content that is referenced by the `$LATEST` qualifier by default.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateMessageTemplateVersionRequest AWS API Documentation
    #
    class CreateMessageTemplateVersionRequest < Struct.new(
      :knowledge_base_id,
      :message_template_id,
      :message_template_content_sha_256)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message_template
    #   The message template.
    #   @return [Types::ExtendedMessageTemplateData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateMessageTemplateVersionResponse AWS API Documentation
    #
    class CreateMessageTemplateVersionResponse < Struct.new(
      :message_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the quick response.
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
    # @!attribute [rw] grouping_configuration
    #   The configuration information of the user groups that the quick
    #   response is accessible to.
    #   @return [Types::GroupingConfiguration]
    #
    # @!attribute [rw] description
    #   The description of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] shortcut_key
    #   The shortcut key of the quick response. The value should be unique
    #   across the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] is_active
    #   Whether the quick response is active.
    #   @return [Boolean]
    #
    # @!attribute [rw] channels
    #   The Amazon Connect channels this quick response applies to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language
    #   The language code value for the language in which the quick response
    #   is written. The supported language codes include `de_DE`, `en_US`,
    #   `es_ES`, `fr_FR`, `id_ID`, `it_IT`, `ja_JP`, `ko_KR`, `pt_BR`,
    #   `zh_CN`, `zh_TW`
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
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
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
      :knowledge_base_id,
      :name,
      :content,
      :content_type,
      :grouping_configuration,
      :description,
      :shortcut_key,
      :is_active,
      :channels,
      :language,
      :client_token,
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
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the session.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tag_filter
    #   An object that can be used to specify Tag conditions.
    #   @return [Types::TagFilter]
    #
    # @!attribute [rw] ai_agent_configuration
    #   The configuration of the AI Agents (mapped by AI Agent Type to AI
    #   Agent version) that should be used by Amazon Q in Connect for this
    #   Session.
    #   @return [Hash<String,Types::AIAgentConfigurationData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CreateSessionRequest AWS API Documentation
    #
    class CreateSessionRequest < Struct.new(
      :client_token,
      :assistant_id,
      :name,
      :description,
      :tags,
      :tag_filter,
      :ai_agent_configuration)
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

    # The customer profile attributes that are used with the message
    # template.
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The ARN of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The customer's first name.
    #   @return [String]
    #
    # @!attribute [rw] middle_name
    #   The customer's middle name.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The customer's last name.
    #   @return [String]
    #
    # @!attribute [rw] account_number
    #   A unique account number that you have given to the customer.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The customer's email address, which has not been specified as a
    #   personal or business address.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The customer's phone number, which has not been specified as a
    #   mobile, home, or business number.
    #   @return [String]
    #
    # @!attribute [rw] additional_information
    #   Any additional information relevant to the customer's profile.
    #   @return [String]
    #
    # @!attribute [rw] party_type
    #   The customer's party type.
    #   @return [String]
    #
    # @!attribute [rw] business_name
    #   The name of the customer's business.
    #   @return [String]
    #
    # @!attribute [rw] birth_date
    #   The customer's birth date.
    #   @return [String]
    #
    # @!attribute [rw] gender
    #   The customer's gender.
    #   @return [String]
    #
    # @!attribute [rw] mobile_phone_number
    #   The customer's mobile phone number.
    #   @return [String]
    #
    # @!attribute [rw] home_phone_number
    #   The customer's mobile phone number.
    #   @return [String]
    #
    # @!attribute [rw] business_phone_number
    #   The customer's business phone number.
    #   @return [String]
    #
    # @!attribute [rw] business_email_address
    #   The customer's business email address.
    #   @return [String]
    #
    # @!attribute [rw] address1
    #   The first line of a customer address.
    #   @return [String]
    #
    # @!attribute [rw] address2
    #   The second line of a customer address.
    #   @return [String]
    #
    # @!attribute [rw] address3
    #   The third line of a customer address.
    #   @return [String]
    #
    # @!attribute [rw] address4
    #   The fourth line of a customer address.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The city in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] county
    #   The county in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The country in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   The postal code of a customer address.
    #   @return [String]
    #
    # @!attribute [rw] province
    #   The province in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] shipping_address_1
    #   The first line of a customer’s shipping address.
    #   @return [String]
    #
    # @!attribute [rw] shipping_address_2
    #   The second line of a customer’s shipping address.
    #   @return [String]
    #
    # @!attribute [rw] shipping_address_3
    #   The third line of a customer’s shipping address.
    #   @return [String]
    #
    # @!attribute [rw] shipping_address_4
    #   The fourth line of a customer’s shipping address.
    #   @return [String]
    #
    # @!attribute [rw] shipping_city
    #   The city of a customer’s shipping address.
    #   @return [String]
    #
    # @!attribute [rw] shipping_county
    #   The county of a customer’s shipping address.
    #   @return [String]
    #
    # @!attribute [rw] shipping_country
    #   The country of a customer’s shipping address.
    #   @return [String]
    #
    # @!attribute [rw] shipping_postal_code
    #   The postal code of a customer’s shipping address.
    #   @return [String]
    #
    # @!attribute [rw] shipping_province
    #   The province of a customer’s shipping address.
    #   @return [String]
    #
    # @!attribute [rw] shipping_state
    #   The state of a customer’s shipping address.
    #   @return [String]
    #
    # @!attribute [rw] mailing_address_1
    #   The first line of a customer’s mailing address.
    #   @return [String]
    #
    # @!attribute [rw] mailing_address_2
    #   The second line of a customer’s mailing address.
    #   @return [String]
    #
    # @!attribute [rw] mailing_address_3
    #   The third line of a customer’s mailing address.
    #   @return [String]
    #
    # @!attribute [rw] mailing_address_4
    #   The fourth line of a customer’s mailing address.
    #   @return [String]
    #
    # @!attribute [rw] mailing_city
    #   The city of a customer’s mailing address.
    #   @return [String]
    #
    # @!attribute [rw] mailing_county
    #   The county of a customer’s mailing address.
    #   @return [String]
    #
    # @!attribute [rw] mailing_country
    #   The country of a customer’s mailing address.
    #   @return [String]
    #
    # @!attribute [rw] mailing_postal_code
    #   The postal code of a customer’s mailing address.
    #   @return [String]
    #
    # @!attribute [rw] mailing_province
    #   The province of a customer’s mailing address.
    #   @return [String]
    #
    # @!attribute [rw] mailing_state
    #   The state of a customer’s mailing address.
    #   @return [String]
    #
    # @!attribute [rw] billing_address_1
    #   The first line of a customer’s billing address.
    #   @return [String]
    #
    # @!attribute [rw] billing_address_2
    #   The second line of a customer’s billing address.
    #   @return [String]
    #
    # @!attribute [rw] billing_address_3
    #   The third line of a customer’s billing address.
    #   @return [String]
    #
    # @!attribute [rw] billing_address_4
    #   The fourth line of a customer’s billing address.
    #   @return [String]
    #
    # @!attribute [rw] billing_city
    #   The city of a customer’s billing address.
    #   @return [String]
    #
    # @!attribute [rw] billing_county
    #   The county of a customer’s billing address.
    #   @return [String]
    #
    # @!attribute [rw] billing_country
    #   The country of a customer’s billing address.
    #   @return [String]
    #
    # @!attribute [rw] billing_postal_code
    #   The postal code of a customer’s billing address.
    #   @return [String]
    #
    # @!attribute [rw] billing_province
    #   The province of a customer’s billing address.
    #   @return [String]
    #
    # @!attribute [rw] billing_state
    #   The state of a customer’s billing address.
    #   @return [String]
    #
    # @!attribute [rw] custom
    #   The custom attributes in customer profile attributes.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/CustomerProfileAttributes AWS API Documentation
    #
    class CustomerProfileAttributes < Struct.new(
      :profile_id,
      :profile_arn,
      :first_name,
      :middle_name,
      :last_name,
      :account_number,
      :email_address,
      :phone_number,
      :additional_information,
      :party_type,
      :business_name,
      :birth_date,
      :gender,
      :mobile_phone_number,
      :home_phone_number,
      :business_phone_number,
      :business_email_address,
      :address1,
      :address2,
      :address3,
      :address4,
      :city,
      :county,
      :country,
      :postal_code,
      :province,
      :state,
      :shipping_address_1,
      :shipping_address_2,
      :shipping_address_3,
      :shipping_address_4,
      :shipping_city,
      :shipping_county,
      :shipping_country,
      :shipping_postal_code,
      :shipping_province,
      :shipping_state,
      :mailing_address_1,
      :mailing_address_2,
      :mailing_address_3,
      :mailing_address_4,
      :mailing_city,
      :mailing_county,
      :mailing_country,
      :mailing_postal_code,
      :mailing_province,
      :mailing_state,
      :billing_address_1,
      :billing_address_2,
      :billing_address_3,
      :billing_address_4,
      :billing_city,
      :billing_county,
      :billing_country,
      :billing_postal_code,
      :billing_province,
      :billing_state,
      :custom)
      SENSITIVE = [:profile_id, :profile_arn, :first_name, :middle_name, :last_name, :account_number, :email_address, :phone_number, :additional_information, :party_type, :business_name, :birth_date, :gender, :mobile_phone_number, :home_phone_number, :business_phone_number, :business_email_address, :address1, :address2, :address3, :address4, :city, :county, :country, :postal_code, :province, :state, :shipping_address_1, :shipping_address_2, :shipping_address_3, :shipping_address_4, :shipping_city, :shipping_county, :shipping_country, :shipping_postal_code, :shipping_province, :shipping_state, :mailing_address_1, :mailing_address_2, :mailing_address_3, :mailing_address_4, :mailing_city, :mailing_county, :mailing_country, :mailing_postal_code, :mailing_province, :mailing_state, :billing_address_1, :billing_address_2, :billing_address_3, :billing_address_4, :billing_city, :billing_county, :billing_country, :billing_postal_code, :billing_province, :billing_state, :custom]
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
    # @!attribute [rw] generative_chunk_data
    #   Details about the generative chunk data.
    #   @return [Types::GenerativeChunkDataDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DataDetails AWS API Documentation
    #
    class DataDetails < Struct.new(
      :content_data,
      :generative_data,
      :intent_detected_data,
      :source_content_data,
      :generative_chunk_data,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ContentData < DataDetails; end
      class GenerativeData < DataDetails; end
      class IntentDetectedData < DataDetails; end
      class SourceContentData < DataDetails; end
      class GenerativeChunkData < DataDetails; end
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
    # @!attribute [rw] reference
    #   Reference information about the content.
    #   @return [Types::DataReference]
    #
    # @!attribute [rw] details
    #   Details about the data.
    #   @return [Types::DataDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DataSummary AWS API Documentation
    #
    class DataSummary < Struct.new(
      :reference,
      :details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] message_template_id
    #   The identifier of the message template. Can be either the ID or the
    #   ARN. It cannot contain any qualifier.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the message template version to deactivate.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeactivateMessageTemplateRequest AWS API Documentation
    #
    class DeactivateMessageTemplateRequest < Struct.new(
      :knowledge_base_id,
      :message_template_id,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message_template_arn
    #   The Amazon Resource Name (ARN) of the message template.
    #   @return [String]
    #
    # @!attribute [rw] message_template_id
    #   The identifier of the message template.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the message template version that has been
    #   deactivated.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeactivateMessageTemplateResponse AWS API Documentation
    #
    class DeactivateMessageTemplateResponse < Struct.new(
      :message_template_arn,
      :message_template_id,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] ai_agent_id
    #   The identifier of the Amazon Q in Connect AI Agent. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIAgentRequest AWS API Documentation
    #
    class DeleteAIAgentRequest < Struct.new(
      :assistant_id,
      :ai_agent_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIAgentResponse AWS API Documentation
    #
    class DeleteAIAgentResponse < Aws::EmptyStructure; end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] ai_agent_id
    #   The identifier of the Amazon Q in Connect AI Agent. Can be either
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
      :assistant_id,
      :ai_agent_id,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIAgentVersionResponse AWS API Documentation
    #
    class DeleteAIAgentVersionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] ai_guardrail_id
    #   The identifier of the Amazon Q in Connect AI Guardrail. Can be
    #   either the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIGuardrailRequest AWS API Documentation
    #
    class DeleteAIGuardrailRequest < Struct.new(
      :assistant_id,
      :ai_guardrail_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIGuardrailResponse AWS API Documentation
    #
    class DeleteAIGuardrailResponse < Aws::EmptyStructure; end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] ai_guardrail_id
    #   The identifier of the Amazon Q in Connect AI Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the AI Guardrail version to be deleted.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIGuardrailVersionRequest AWS API Documentation
    #
    class DeleteAIGuardrailVersionRequest < Struct.new(
      :assistant_id,
      :ai_guardrail_id,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIGuardrailVersionResponse AWS API Documentation
    #
    class DeleteAIGuardrailVersionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] ai_prompt_id
    #   The identifier of the Amazon Q in Connect AI prompt. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIPromptRequest AWS API Documentation
    #
    class DeleteAIPromptRequest < Struct.new(
      :assistant_id,
      :ai_prompt_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIPromptResponse AWS API Documentation
    #
    class DeleteAIPromptResponse < Aws::EmptyStructure; end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] ai_prompt_id
    #   The identifier of the Amazon Q in Connect AI prompt.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the AI Prompt version to be deleted.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteAIPromptVersionRequest AWS API Documentation
    #
    class DeleteAIPromptVersionRequest < Struct.new(
      :assistant_id,
      :ai_prompt_id,
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

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] content_id
    #   The identifier of the content.
    #   @return [String]
    #
    # @!attribute [rw] content_association_id
    #   The identifier of the content association. Can be either the ID or
    #   the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteContentAssociationRequest AWS API Documentation
    #
    class DeleteContentAssociationRequest < Struct.new(
      :knowledge_base_id,
      :content_id,
      :content_association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteContentAssociationResponse AWS API Documentation
    #
    class DeleteContentAssociationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] content_id
    #   The identifier of the content. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteContentRequest AWS API Documentation
    #
    class DeleteContentRequest < Struct.new(
      :knowledge_base_id,
      :content_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteContentResponse AWS API Documentation
    #
    class DeleteContentResponse < Aws::EmptyStructure; end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] import_job_id
    #   The identifier of the import job to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteImportJobRequest AWS API Documentation
    #
    class DeleteImportJobRequest < Struct.new(
      :knowledge_base_id,
      :import_job_id)
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
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] message_template_id
    #   The identifier of the message template. Can be either the ID or the
    #   ARN. It cannot contain any qualifier.
    #   @return [String]
    #
    # @!attribute [rw] attachment_id
    #   The identifier of the attachment file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteMessageTemplateAttachmentRequest AWS API Documentation
    #
    class DeleteMessageTemplateAttachmentRequest < Struct.new(
      :knowledge_base_id,
      :message_template_id,
      :attachment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteMessageTemplateAttachmentResponse AWS API Documentation
    #
    class DeleteMessageTemplateAttachmentResponse < Aws::EmptyStructure; end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] message_template_id
    #   The identifier of the message template. Can be either the ID or the
    #   ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteMessageTemplateRequest AWS API Documentation
    #
    class DeleteMessageTemplateRequest < Struct.new(
      :knowledge_base_id,
      :message_template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DeleteMessageTemplateResponse AWS API Documentation
    #
    class DeleteMessageTemplateResponse < Aws::EmptyStructure; end

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
    # @!attribute [rw] title
    #   The title of the document.
    #   @return [Types::DocumentText]
    #
    # @!attribute [rw] excerpt
    #   The excerpt from the document.
    #   @return [Types::DocumentText]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/Document AWS API Documentation
    #
    class Document < Struct.new(
      :content_reference,
      :title,
      :excerpt)
      SENSITIVE = []
      include Aws::Structure
    end

    # The text of the document.
    #
    # @!attribute [rw] text
    #   Text in the document.
    #   @return [String]
    #
    # @!attribute [rw] highlights
    #   Highlights in the document text.
    #   @return [Array<Types::Highlight>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/DocumentText AWS API Documentation
    #
    class DocumentText < Struct.new(
      :text,
      :highlights)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # The email header to include in email messages.
    #
    # @!attribute [rw] name
    #   The name of the email header.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the email header.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/EmailHeader AWS API Documentation
    #
    class EmailHeader < Struct.new(
      :name,
      :value)
      SENSITIVE = [:value]
      include Aws::Structure
    end

    # The content of the message template that applies to the email channel
    # subtype.
    #
    # @!attribute [rw] subject
    #   The subject line, or title, to use in email messages.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The body to use in email messages.
    #   @return [Types::EmailMessageTemplateContentBody]
    #
    # @!attribute [rw] headers
    #   The email headers to include in email messages.
    #   @return [Array<Types::EmailHeader>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/EmailMessageTemplateContent AWS API Documentation
    #
    class EmailMessageTemplateContent < Struct.new(
      :subject,
      :body,
      :headers)
      SENSITIVE = [:subject]
      include Aws::Structure
    end

    # The body to use in email messages.
    #
    # @!attribute [rw] plain_text
    #   The message body, in plain text format, to use in email messages
    #   that are based on the message template. We recommend using plain
    #   text format for email clients that don't render HTML content and
    #   clients that are connected to high-latency networks, such as mobile
    #   devices.
    #   @return [Types::MessageTemplateBodyContentProvider]
    #
    # @!attribute [rw] html
    #   The message body, in HTML format, to use in email messages that are
    #   based on the message template. We recommend using HTML format for
    #   email clients that render HTML content. You can include links,
    #   formatted text, and more in an HTML message.
    #   @return [Types::MessageTemplateBodyContentProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/EmailMessageTemplateContentBody AWS API Documentation
    #
    class EmailMessageTemplateContentBody < Struct.new(
      :plain_text,
      :html)
      SENSITIVE = []
      include Aws::Structure
    end

    # The extended data of a message template.
    #
    # @!attribute [rw] message_template_arn
    #   The Amazon Resource Name (ARN) of the message template.
    #   @return [String]
    #
    # @!attribute [rw] message_template_id
    #   The identifier of the message template.
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
    # @!attribute [rw] name
    #   The name of the message template.
    #   @return [String]
    #
    # @!attribute [rw] channel_subtype
    #   The channel subtype this message template applies to.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the message template was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when the message template data was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The Amazon Resource Name (ARN) of the user who last updated the
    #   message template data.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the message template.
    #   @return [Types::MessageTemplateContentProvider]
    #
    # @!attribute [rw] description
    #   The description of the message template.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language code value for the language in which the quick response
    #   is written. The supported language codes include `de_DE`, `en_US`,
    #   `es_ES`, `fr_FR`, `id_ID`, `it_IT`, `ja_JP`, `ko_KR`, `pt_BR`,
    #   `zh_CN`, `zh_TW`
    #   @return [String]
    #
    # @!attribute [rw] grouping_configuration
    #   The configuration information of the grouping of Amazon Q in Connect
    #   users.
    #   @return [Types::GroupingConfiguration]
    #
    # @!attribute [rw] default_attributes
    #   An object that specifies the default values to use for variables in
    #   the message template. This object contains different categories of
    #   key-value pairs. Each key defines a variable or placeholder in the
    #   message template. The corresponding value defines the default value
    #   for that variable.
    #   @return [Types::MessageTemplateAttributes]
    #
    # @!attribute [rw] attribute_types
    #   The types of attributes contain the message template.
    #   @return [Array<String>]
    #
    # @!attribute [rw] attachments
    #   The message template attachments.
    #   @return [Array<Types::MessageTemplateAttachment>]
    #
    # @!attribute [rw] is_active
    #   Whether the version of the message template is activated.
    #   @return [Boolean]
    #
    # @!attribute [rw] version_number
    #   The version number of the message template version.
    #   @return [Integer]
    #
    # @!attribute [rw] message_template_content_sha_256
    #   The checksum value of the message template content that is
    #   referenced by the `$LATEST` qualifier. It can be returned in
    #   `MessageTemplateData` or `ExtendedMessageTemplateData`. It’s
    #   calculated by content, language, `defaultAttributes` and
    #   `Attachments` of the message template.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ExtendedMessageTemplateData AWS API Documentation
    #
    class ExtendedMessageTemplateData < Struct.new(
      :message_template_arn,
      :message_template_id,
      :knowledge_base_arn,
      :knowledge_base_id,
      :name,
      :channel_subtype,
      :created_time,
      :last_modified_time,
      :last_modified_by,
      :content,
      :description,
      :language,
      :grouping_configuration,
      :default_attributes,
      :attribute_types,
      :attachments,
      :is_active,
      :version_number,
      :message_template_content_sha_256,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration information of the external data source.
    #
    # @!attribute [rw] source
    #   The type of the external data source.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration information of the external data source.
    #   @return [Types::Configuration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ExternalSourceConfiguration AWS API Documentation
    #
    class ExternalSourceConfiguration < Struct.new(
      :source,
      :configuration)
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

    # Details about the generative chunk data.
    #
    # @!attribute [rw] completion
    #   A chunk of the LLM response.
    #   @return [String]
    #
    # @!attribute [rw] references
    #   The references used to generate the LLM response.
    #   @return [Array<Types::DataSummary>]
    #
    # @!attribute [rw] next_chunk_token
    #   The token for the next set of chunks. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   chunks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GenerativeChunkDataDetails AWS API Documentation
    #
    class GenerativeChunkDataDetails < Struct.new(
      :completion,
      :references,
      :next_chunk_token)
      SENSITIVE = [:completion]
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
    # @!attribute [rw] references
    #   The references used to generative the LLM response.
    #   @return [Array<Types::DataSummary>]
    #
    # @!attribute [rw] ranking_data
    #   Details about the generative content ranking data.
    #   @return [Types::RankingData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GenerativeDataDetails AWS API Documentation
    #
    class GenerativeDataDetails < Struct.new(
      :completion,
      :references,
      :ranking_data)
      SENSITIVE = [:completion]
      include Aws::Structure
    end

    # Reference information about generative content.
    #
    # @!attribute [rw] model_id
    #   The identifier of the LLM model.
    #   @return [String]
    #
    # @!attribute [rw] generation_id
    #   The identifier of the LLM model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GenerativeReference AWS API Documentation
    #
    class GenerativeReference < Struct.new(
      :model_id,
      :generation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] ai_agent_id
    #   The identifier of the Amazon Q in Connect AI Agent (with or without
    #   a version qualifier). Can be either the ID or the ARN. URLs cannot
    #   contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetAIAgentRequest AWS API Documentation
    #
    class GetAIAgentRequest < Struct.new(
      :assistant_id,
      :ai_agent_id)
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

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] ai_guardrail_id
    #   The identifier of the Amazon Q in Connect AI Guardrail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetAIGuardrailRequest AWS API Documentation
    #
    class GetAIGuardrailRequest < Struct.new(
      :assistant_id,
      :ai_guardrail_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_guardrail
    #   The data of the AI Guardrail.
    #   @return [Types::AIGuardrailData]
    #
    # @!attribute [rw] version_number
    #   The version number of the AI Guardrail version (returned if an AI
    #   Guardrail version was specified via use of a qualifier for the
    #   `aiGuardrailId` on the request).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetAIGuardrailResponse AWS API Documentation
    #
    class GetAIGuardrailResponse < Struct.new(
      :ai_guardrail,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] ai_prompt_id
    #   The identifier of the Amazon Q in Connect AI prompt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetAIPromptRequest AWS API Documentation
    #
    class GetAIPromptRequest < Struct.new(
      :assistant_id,
      :ai_prompt_id)
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

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] content_id
    #   The identifier of the content.
    #   @return [String]
    #
    # @!attribute [rw] content_association_id
    #   The identifier of the content association. Can be either the ID or
    #   the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetContentAssociationRequest AWS API Documentation
    #
    class GetContentAssociationRequest < Struct.new(
      :knowledge_base_id,
      :content_id,
      :content_association_id)
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

    # @!attribute [rw] message_template_id
    #   The identifier of the message template. Can be either the ID or the
    #   ARN.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetMessageTemplateRequest AWS API Documentation
    #
    class GetMessageTemplateRequest < Struct.new(
      :message_template_id,
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message_template
    #   The message template.
    #   @return [Types::ExtendedMessageTemplateData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetMessageTemplateResponse AWS API Documentation
    #
    class GetMessageTemplateResponse < Struct.new(
      :message_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the Amazon Q in Connect session.
    #   @return [String]
    #
    # @!attribute [rw] next_message_token
    #   The token for the next message. Use the value returned in the
    #   SendMessage or previous response in the next request to retrieve the
    #   next message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetNextMessageRequest AWS API Documentation
    #
    class GetNextMessageRequest < Struct.new(
      :assistant_id,
      :session_id,
      :next_message_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   The type of message response.
    #   @return [String]
    #
    # @!attribute [rw] response
    #   The message response to the requested message.
    #   @return [Types::MessageOutput]
    #
    # @!attribute [rw] request_message_id
    #   The identifier of the submitted message.
    #   @return [String]
    #
    # @!attribute [rw] conversation_state
    #   The state of current conversation.
    #   @return [Types::ConversationState]
    #
    # @!attribute [rw] next_message_token
    #   The token for the next message.
    #   @return [String]
    #
    # @!attribute [rw] conversation_session_data
    #   The conversation data stored on an Amazon Q in Connect Session.
    #   @return [Array<Types::RuntimeSessionData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetNextMessageResponse AWS API Documentation
    #
    class GetNextMessageResponse < Struct.new(
      :type,
      :response,
      :request_message_id,
      :conversation_state,
      :next_message_token,
      :conversation_session_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] quick_response_id
    #   The identifier of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. This should be a
    #   QUICK\_RESPONSES type knowledge base.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetQuickResponseRequest AWS API Documentation
    #
    class GetQuickResponseRequest < Struct.new(
      :quick_response_id,
      :knowledge_base_id)
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
    # @!attribute [rw] session_id
    #   The identifier of the session. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] wait_time_seconds
    #   The duration (in seconds) for which the call waits for a
    #   recommendation to be made available before returning. If a
    #   recommendation is available, the call returns sooner than
    #   `WaitTimeSeconds`. If no messages are available and the wait time
    #   expires, the call returns successfully with an empty list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_chunk_token
    #   The token for the next set of chunks. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   chunks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GetRecommendationsRequest AWS API Documentation
    #
    class GetRecommendationsRequest < Struct.new(
      :assistant_id,
      :session_id,
      :max_results,
      :wait_time_seconds,
      :next_chunk_token)
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

    # Contains filter strengths for harmful content. AI Guardrail's support
    # the following content filters to detect and filter harmful user inputs
    # and FM-generated outputs.
    #
    # * **Hate**: Describes input prompts and model responses that
    #   discriminate, criticize, insult, denounce, or dehumanize a person or
    #   group on the basis of an identity (such as race, ethnicity, gender,
    #   religion, sexual orientation, ability, and national origin).
    #
    # * **Insults**: Describes input prompts and model responses that
    #   includes demeaning, humiliating, mocking, insulting, or belittling
    #   language. This type of language is also labeled as bullying.
    #
    # * **Sexual**: Describes input prompts and model responses that
    #   indicates sexual interest, activity, or arousal using direct or
    #   indirect references to body parts, physical traits, or sex.
    #
    # * **Violence**: Describes input prompts and model responses that
    #   includes glorification of, or threats to inflict physical pain,
    #   hurt, or injury toward a person, group, or thing.
    #
    # Content filtering depends on the confidence classification of user
    # inputs and FM responses across each of the four harmful categories.
    # All input and output statements are classified into one of four
    # confidence levels (NONE, LOW, MEDIUM, HIGH) for each harmful category.
    # For example, if a statement is classified as *Hate* with HIGH
    # confidence, the likelihood of the statement representing hateful
    # content is high. A single statement can be classified across multiple
    # categories with varying confidence levels. For example, a single
    # statement can be classified as *Hate* with HIGH confidence, <i>
    # Insults</i> with LOW confidence, *Sexual* with NONE confidence, and
    # *Violence* with MEDIUM confidence.
    #
    # @!attribute [rw] type
    #   The harmful category that the content filter is applied to.
    #   @return [String]
    #
    # @!attribute [rw] input_strength
    #   The strength of the content filter to apply to prompts. As you
    #   increase the filter strength, the likelihood of filtering harmful
    #   content increases and the probability of seeing harmful content in
    #   your application reduces.
    #   @return [String]
    #
    # @!attribute [rw] output_strength
    #   The strength of the content filter to apply to model responses. As
    #   you increase the filter strength, the likelihood of filtering
    #   harmful content increases and the probability of seeing harmful
    #   content in your application reduces.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GuardrailContentFilterConfig AWS API Documentation
    #
    class GuardrailContentFilterConfig < Struct.new(
      :type,
      :input_strength,
      :output_strength)
      SENSITIVE = [:type, :input_strength, :output_strength]
      include Aws::Structure
    end

    # The filter configuration details for the AI Guardrail's contextual
    # grounding filter.
    #
    # @!attribute [rw] type
    #   The filter type for the AI Guardrail's contextual grounding filter.
    #   @return [String]
    #
    # @!attribute [rw] threshold
    #   The threshold details for the AI Guardrail's contextual grounding
    #   filter.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GuardrailContextualGroundingFilterConfig AWS API Documentation
    #
    class GuardrailContextualGroundingFilterConfig < Struct.new(
      :type,
      :threshold)
      SENSITIVE = [:type, :threshold]
      include Aws::Structure
    end

    # The managed word list to configure for the AI Guardrail.
    #
    # @!attribute [rw] type
    #   The managed word type to configure for the AI Guardrail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GuardrailManagedWordsConfig AWS API Documentation
    #
    class GuardrailManagedWordsConfig < Struct.new(
      :type)
      SENSITIVE = [:type]
      include Aws::Structure
    end

    # The PII entity to configure for the AI Guardrail.
    #
    # @!attribute [rw] type
    #   Configure AI Guardrail type when the PII entity is detected.
    #
    #   The following PIIs are used to block or mask sensitive information:
    #
    #   * **General**
    #
    #     * **ADDRESS**
    #
    #       A physical address, such as "100 Main Street, Anytown, USA" or
    #       "Suite #12, Building 123". An address can include information
    #       such as the street, building, location, city, state, country,
    #       county, zip code, precinct, and neighborhood.
    #
    #     * **AGE**
    #
    #       An individual's age, including the quantity and unit of time.
    #       For example, in the phrase "I am 40 years old," Guarrails
    #       recognizes "40 years" as an age.
    #
    #     * **NAME**
    #
    #       An individual's name. This entity type does not include titles,
    #       such as Dr., Mr., Mrs., or Miss. AI Guardrail doesn't apply
    #       this entity type to names that are part of organizations or
    #       addresses. For example, AI Guardrail recognizes the "John Doe
    #       Organization" as an organization, and it recognizes "Jane Doe
    #       Street" as an address.
    #
    #     * **EMAIL**
    #
    #       An email address, such as *marymajor@email.com*.
    #
    #     * **PHONE**
    #
    #       A phone number. This entity type also includes fax and pager
    #       numbers.
    #
    #     * **USERNAME**
    #
    #       A user name that identifies an account, such as a login name,
    #       screen name, nick name, or handle.
    #
    #     * **PASSWORD**
    #
    #       An alphanumeric string that is used as a password, such as
    #       "*<i> very20special#pass*</i>".
    #
    #     * **DRIVER\_ID**
    #
    #       The number assigned to a driver's license, which is an official
    #       document permitting an individual to operate one or more
    #       motorized vehicles on a public road. A driver's license number
    #       consists of alphanumeric characters.
    #
    #     * **LICENSE\_PLATE**
    #
    #       A license plate for a vehicle is issued by the state or country
    #       where the vehicle is registered. The format for passenger
    #       vehicles is typically five to eight digits, consisting of
    #       upper-case letters and numbers. The format varies depending on
    #       the location of the issuing state or country.
    #
    #     * **VEHICLE\_IDENTIFICATION\_NUMBER**
    #
    #       A Vehicle Identification Number (VIN) uniquely identifies a
    #       vehicle. VIN content and format are defined in the *ISO 3779*
    #       specification. Each country has specific codes and formats for
    #       VINs.
    #   * **Finance**
    #
    #     * **CREDIT\_DEBIT\_CARD\_CVV**
    #
    #       A three-digit card verification code (CVV) that is present on
    #       VISA, MasterCard, and Discover credit and debit cards. For
    #       American Express credit or debit cards, the CVV is a four-digit
    #       numeric code.
    #
    #     * **CREDIT\_DEBIT\_CARD\_EXPIRY**
    #
    #       The expiration date for a credit or debit card. This number is
    #       usually four digits long and is often formatted as *month/year*
    #       or *MM/YY*. AI Guardrail recognizes expiration dates such as
    #       *01/21*, *01/2021*, and *Jan 2021*.
    #
    #     * **CREDIT\_DEBIT\_CARD\_NUMBER**
    #
    #       The number for a credit or debit card. These numbers can vary
    #       from 13 to 16 digits in length. However, Amazon Comprehend also
    #       recognizes credit or debit card numbers when only the last four
    #       digits are present.
    #
    #     * **PIN**
    #
    #       A four-digit personal identification number (PIN) with which you
    #       can access your bank account.
    #
    #     * **INTERNATIONAL\_BANK\_ACCOUNT\_NUMBER**
    #
    #       An International Bank Account Number has specific formats in
    #       each country. For more information, see [
    #       www.iban.com/structure][1].
    #
    #     * **SWIFT\_CODE**
    #
    #       A SWIFT code is a standard format of Bank Identifier Code (BIC)
    #       used to specify a particular bank or branch. Banks use these
    #       codes for money transfers such as international wire transfers.
    #
    #       SWIFT codes consist of eight or 11 characters. The 11-digit
    #       codes refer to specific branches, while eight-digit codes (or
    #       11-digit codes ending in 'XXX') refer to the head or primary
    #       office.
    #   * **IT**
    #
    #     * **IP\_ADDRESS**
    #
    #       An IPv4 address, such as *198.51.100.0*.
    #
    #     * **MAC\_ADDRESS**
    #
    #       A *media access control* (MAC) address is a unique identifier
    #       assigned to a network interface controller (NIC).
    #
    #     * **URL**
    #
    #       A web address, such as *www.example.com*.
    #
    #     * **AWS\_ACCESS\_KEY**
    #
    #       A unique identifier that's associated with a secret access key;
    #       you use the access key ID and secret access key to sign
    #       programmatic Amazon Web Services requests cryptographically.
    #
    #     * **AWS\_SECRET\_KEY**
    #
    #       A unique identifier that's associated with an access key. You
    #       use the access key ID and secret access key to sign programmatic
    #       Amazon Web Services requests cryptographically.
    #   * **USA specific**
    #
    #     * **US\_BANK\_ACCOUNT\_NUMBER**
    #
    #       A US bank account number, which is typically 10 to 12 digits
    #       long.
    #
    #     * **US\_BANK\_ROUTING\_NUMBER**
    #
    #       A US bank account routing number. These are typically nine
    #       digits long,
    #
    #     * **US\_INDIVIDUAL\_TAX\_IDENTIFICATION\_NUMBER**
    #
    #       A US Individual Taxpayer Identification Number (ITIN) is a
    #       nine-digit number that starts with a "9" and contain a "7"
    #       or "8" as the fourth digit. An ITIN can be formatted with a
    #       space or a dash after the third and forth digits.
    #
    #     * **US\_PASSPORT\_NUMBER**
    #
    #       A US passport number. Passport numbers range from six to nine
    #       alphanumeric characters.
    #
    #     * **US\_SOCIAL\_SECURITY\_NUMBER**
    #
    #       A US Social Security Number (SSN) is a nine-digit number that is
    #       issued to US citizens, permanent residents, and temporary
    #       working residents.
    #   * **Canada specific**
    #
    #     * **CA\_HEALTH\_NUMBER**
    #
    #       A Canadian Health Service Number is a 10-digit unique
    #       identifier, required for individuals to access healthcare
    #       benefits.
    #
    #     * **CA\_SOCIAL\_INSURANCE\_NUMBER**
    #
    #       A Canadian Social Insurance Number (SIN) is a nine-digit unique
    #       identifier, required for individuals to access government
    #       programs and benefits.
    #
    #       The SIN is formatted as three groups of three digits, such as
    #       <i> 123-456-789</i>. A SIN can be validated through a simple
    #       check-digit process called the [Luhn algorithm][2] .
    #   * **UK Specific**
    #
    #     * **UK\_NATIONAL\_HEALTH\_SERVICE\_NUMBER**
    #
    #       A UK National Health Service Number is a 10-17 digit number,
    #       such as *485 555 3456*. The current system formats the 10-digit
    #       number with spaces after the third and sixth digits. The final
    #       digit is an error-detecting checksum.
    #
    #     * **UK\_NATIONAL\_INSURANCE\_NUMBER**
    #
    #       A UK National Insurance Number (NINO) provides individuals with
    #       access to National Insurance (social security) benefits. It is
    #       also used for some purposes in the UK tax system.
    #
    #       The number is nine digits long and starts with two letters,
    #       followed by six numbers and one letter. A NINO can be formatted
    #       with a space or a dash after the two letters and after the
    #       second, forth, and sixth digits.
    #
    #     * **UK\_UNIQUE\_TAXPAYER\_REFERENCE\_NUMBER**
    #
    #       A UK Unique Taxpayer Reference (UTR) is a 10-digit number that
    #       identifies a taxpayer or a business.
    #   * **Custom**
    #
    #     * **Regex filter** - You can use a regular expressions to define
    #       patterns for an AI Guardrail to recognize and act upon such as
    #       serial number, booking ID etc..
    #
    #     ^
    #
    #
    #
    #   [1]: https://www.iban.com/structure
    #   [2]: https://www.wikipedia.org/wiki/Luhn_algorithm
    #   @return [String]
    #
    # @!attribute [rw] action
    #   Configure AI Guardrail's action when the PII entity is detected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GuardrailPiiEntityConfig AWS API Documentation
    #
    class GuardrailPiiEntityConfig < Struct.new(
      :type,
      :action)
      SENSITIVE = [:type, :action]
      include Aws::Structure
    end

    # The regular expression to configure for the AI Guardrail.
    #
    # @!attribute [rw] name
    #   The name of the regular expression to configure for the AI
    #   Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the regular expression to configure for the AI
    #   Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] pattern
    #   The regular expression pattern to configure for the AI Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The AI Guardrail action to configure when matching regular
    #   expression is detected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GuardrailRegexConfig AWS API Documentation
    #
    class GuardrailRegexConfig < Struct.new(
      :name,
      :description,
      :pattern,
      :action)
      SENSITIVE = [:name, :description, :pattern, :action]
      include Aws::Structure
    end

    # Details about topics for the AI Guardrail to identify and deny.
    #
    # @!attribute [rw] name
    #   The name of the topic to deny.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   A definition of the topic to deny.
    #   @return [String]
    #
    # @!attribute [rw] examples
    #   A list of prompts, each of which is an example of a prompt that can
    #   be categorized as belonging to the topic.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   Specifies to deny the topic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GuardrailTopicConfig AWS API Documentation
    #
    class GuardrailTopicConfig < Struct.new(
      :name,
      :definition,
      :examples,
      :type)
      SENSITIVE = [:name, :definition, :examples, :type]
      include Aws::Structure
    end

    # A word to configure for the AI Guardrail.
    #
    # @!attribute [rw] text
    #   Text of the word configured for the AI Guardrail to block.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/GuardrailWordConfig AWS API Documentation
    #
    class GuardrailWordConfig < Struct.new(
      :text)
      SENSITIVE = [:text]
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
    # @!attribute [rw] import_job_id
    #   The identifier of the import job.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
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
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] import_job_type
    #   The type of the import job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the import job.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The download link to the resource file that is uploaded to the
    #   import job.
    #   @return [String]
    #
    # @!attribute [rw] failed_record_report
    #   The link to download the information of resource data that failed to
    #   be imported.
    #   @return [String]
    #
    # @!attribute [rw] url_expiry
    #   The expiration time of the URL as an epoch timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the import job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when the import job data was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] metadata
    #   The metadata fields of the imported Amazon Q in Connect resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] external_source_configuration
    #   The configuration information of the external data source.
    #   @return [Types::ExternalSourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ImportJobData AWS API Documentation
    #
    class ImportJobData < Struct.new(
      :import_job_id,
      :knowledge_base_id,
      :upload_id,
      :knowledge_base_arn,
      :import_job_type,
      :status,
      :url,
      :failed_record_report,
      :url_expiry,
      :created_time,
      :last_modified_time,
      :metadata,
      :external_source_configuration)
      SENSITIVE = [:url, :failed_record_report]
      include Aws::Structure
    end

    # Summary information about the import job.
    #
    # @!attribute [rw] import_job_id
    #   The identifier of the import job.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
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
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] import_job_type
    #   The type of import job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the import job.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the import job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when the import job was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] metadata
    #   The metadata fields of the imported Amazon Q in Connect resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] external_source_configuration
    #   The configuration information of the external source that the
    #   resource data are imported from.
    #   @return [Types::ExternalSourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ImportJobSummary AWS API Documentation
    #
    class ImportJobSummary < Struct.new(
      :import_job_id,
      :knowledge_base_id,
      :upload_id,
      :knowledge_base_arn,
      :import_job_type,
      :status,
      :created_time,
      :last_modified_time,
      :metadata,
      :external_source_configuration)
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
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/KnowledgeBaseAssociationData AWS API Documentation
    #
    class KnowledgeBaseAssociationData < Struct.new(
      :knowledge_base_id,
      :knowledge_base_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the knowledge base.
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_type
    #   The type of knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] last_content_modification_time
    #   An epoch timestamp indicating the most recent content modification
    #   inside the knowledge base. If no content exists in a knowledge base,
    #   this value is unset.
    #   @return [Time]
    #
    # @!attribute [rw] vector_ingestion_configuration
    #   Contains details about how to ingest the documents in a data source.
    #   @return [Types::VectorIngestionConfiguration]
    #
    # @!attribute [rw] source_configuration
    #   Source configuration information about the knowledge base.
    #   @return [Types::SourceConfiguration]
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
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] ingestion_status
    #   Status of ingestion on data source.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_failure_reasons
    #   List of failure reasons on ingestion per file.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/KnowledgeBaseData AWS API Documentation
    #
    class KnowledgeBaseData < Struct.new(
      :knowledge_base_id,
      :knowledge_base_arn,
      :name,
      :knowledge_base_type,
      :status,
      :last_content_modification_time,
      :vector_ingestion_configuration,
      :source_configuration,
      :rendering_configuration,
      :server_side_encryption_configuration,
      :description,
      :tags,
      :ingestion_status,
      :ingestion_failure_reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about the knowledge base.
    #
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_arn
    #   The Amazon Resource Name (ARN) of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] knowledge_base_type
    #   The type of knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the knowledge base summary.
    #   @return [String]
    #
    # @!attribute [rw] source_configuration
    #   Configuration information about the external data source.
    #   @return [Types::SourceConfiguration]
    #
    # @!attribute [rw] vector_ingestion_configuration
    #   Contains details about how to ingest the documents in a data source.
    #   @return [Types::VectorIngestionConfiguration]
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
    # @!attribute [rw] description
    #   The description of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/KnowledgeBaseSummary AWS API Documentation
    #
    class KnowledgeBaseSummary < Struct.new(
      :knowledge_base_id,
      :knowledge_base_arn,
      :name,
      :knowledge_base_type,
      :status,
      :source_configuration,
      :vector_ingestion_configuration,
      :rendering_configuration,
      :server_side_encryption_configuration,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] ai_agent_id
    #   The identifier of the Amazon Q in Connect AI Agent for which
    #   versions are to be listed.
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
    # @!attribute [rw] origin
    #   The origin of the AI Agent versions to be listed. `SYSTEM` for a
    #   default AI Agent created by Q in Connect or `CUSTOMER` for an AI
    #   Agent created by calling AI Agent creation APIs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAIAgentVersionsRequest AWS API Documentation
    #
    class ListAIAgentVersionsRequest < Struct.new(
      :assistant_id,
      :ai_agent_id,
      :next_token,
      :max_results,
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
      :next_token,
      :max_results,
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

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] ai_guardrail_id
    #   The identifier of the Amazon Q in Connect AI Guardrail for which
    #   versions are to be listed.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAIGuardrailVersionsRequest AWS API Documentation
    #
    class ListAIGuardrailVersionsRequest < Struct.new(
      :assistant_id,
      :ai_guardrail_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_guardrail_version_summaries
    #   The summaries of the AI Guardrail versions.
    #   @return [Array<Types::AIGuardrailVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAIGuardrailVersionsResponse AWS API Documentation
    #
    class ListAIGuardrailVersionsResponse < Struct.new(
      :ai_guardrail_version_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAIGuardrailsRequest AWS API Documentation
    #
    class ListAIGuardrailsRequest < Struct.new(
      :assistant_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ai_guardrail_summaries
    #   The summaries of the AI Guardrails.
    #   @return [Array<Types::AIGuardrailSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAIGuardrailsResponse AWS API Documentation
    #
    class ListAIGuardrailsResponse < Struct.new(
      :ai_guardrail_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] ai_prompt_id
    #   The identifier of the Amazon Q in Connect AI prompt for which
    #   versions are to be listed.
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
    # @!attribute [rw] origin
    #   The origin of the AI Prompt versions to be listed. `SYSTEM` for a
    #   default AI Agent created by Q in Connect or `CUSTOMER` for an AI
    #   Agent created by calling AI Agent creation APIs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAIPromptVersionsRequest AWS API Documentation
    #
    class ListAIPromptVersionsRequest < Struct.new(
      :assistant_id,
      :ai_prompt_id,
      :next_token,
      :max_results,
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
      :next_token,
      :max_results,
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
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAssistantAssociationsRequest AWS API Documentation
    #
    class ListAssistantAssociationsRequest < Struct.new(
      :next_token,
      :max_results,
      :assistant_id)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListAssistantsRequest AWS API Documentation
    #
    class ListAssistantsRequest < Struct.new(
      :next_token,
      :max_results)
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
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] content_id
    #   The identifier of the content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListContentAssociationsRequest AWS API Documentation
    #
    class ListContentAssociationsRequest < Struct.new(
      :next_token,
      :max_results,
      :knowledge_base_id,
      :content_id)
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
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListContentsRequest AWS API Documentation
    #
    class ListContentsRequest < Struct.new(
      :next_token,
      :max_results,
      :knowledge_base_id)
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
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListImportJobsRequest AWS API Documentation
    #
    class ListImportJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :knowledge_base_id)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListKnowledgeBasesRequest AWS API Documentation
    #
    class ListKnowledgeBasesRequest < Struct.new(
      :next_token,
      :max_results)
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
    # @!attribute [rw] message_template_id
    #   The identifier of the message template. Can be either the ID or the
    #   ARN. It cannot contain any qualifier.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListMessageTemplateVersionsRequest AWS API Documentation
    #
    class ListMessageTemplateVersionsRequest < Struct.new(
      :knowledge_base_id,
      :message_template_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message_template_version_summaries
    #   Summary information about the versions of a message template.
    #   @return [Array<Types::MessageTemplateVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListMessageTemplateVersionsResponse AWS API Documentation
    #
    class ListMessageTemplateVersionsResponse < Struct.new(
      :message_template_version_summaries,
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
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListMessageTemplatesRequest AWS API Documentation
    #
    class ListMessageTemplatesRequest < Struct.new(
      :next_token,
      :max_results,
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message_template_summaries
    #   Summary information about the message template.
    #   @return [Array<Types::MessageTemplateSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListMessageTemplatesResponse AWS API Documentation
    #
    class ListMessageTemplatesResponse < Struct.new(
      :message_template_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the Amazon Q in Connect session.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListMessagesRequest AWS API Documentation
    #
    class ListMessagesRequest < Struct.new(
      :assistant_id,
      :session_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] messages
    #   The message information.
    #   @return [Array<Types::MessageOutput>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListMessagesResponse AWS API Documentation
    #
    class ListMessagesResponse < Struct.new(
      :messages,
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
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListQuickResponsesRequest AWS API Documentation
    #
    class ListQuickResponsesRequest < Struct.new(
      :next_token,
      :max_results,
      :knowledge_base_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] quick_response_summaries
    #   Summary information about the quick responses.
    #   @return [Array<Types::QuickResponseSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ListQuickResponsesResponse AWS API Documentation
    #
    class ListQuickResponsesResponse < Struct.new(
      :quick_response_summaries,
      :next_token)
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
    # @!attribute [rw] answer_generation_ai_guardrail_id
    #   The AI Guardrail identifier for the Answer Generation guardrail used
    #   by the MANUAL\_SEARCH AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] association_configurations
    #   The association configurations for overriding behavior on this AI
    #   Agent.
    #   @return [Array<Types::AssociationConfiguration>]
    #
    # @!attribute [rw] locale
    #   The locale to which specifies the language and region settings that
    #   determine the response language for [QueryAssistant][1].
    #
    #   <note markdown="1"> For more information on supported locales, see [Language support for
    #   Amazon Q in Connect][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_amazon-q-connect_QueryAssistant.html
    #   [2]: https://docs.aws.amazon.com/connect/latest/adminguide/supported-languages.html#qic-notes-languages
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ManualSearchAIAgentConfiguration AWS API Documentation
    #
    class ManualSearchAIAgentConfiguration < Struct.new(
      :answer_generation_ai_prompt_id,
      :answer_generation_ai_guardrail_id,
      :association_configurations,
      :locale)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a [SendMessage][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_amazon-q-connect_SendMessage.html
    #
    # @!attribute [rw] generate_filler_message
    #   Generates a filler response when tool selection is `QUESTION`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/MessageConfiguration AWS API Documentation
    #
    class MessageConfiguration < Struct.new(
      :generate_filler_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The message data.
    #
    # @note MessageData is a union - when making an API calls you must set exactly one of the members.
    #
    # @note MessageData is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of MessageData corresponding to the set member.
    #
    # @!attribute [rw] text
    #   The message data in text type.
    #   @return [Types::TextMessage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/MessageData AWS API Documentation
    #
    class MessageData < Struct.new(
      :text,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < MessageData; end
      class Unknown < MessageData; end
    end

    # The message input.
    #
    # @!attribute [rw] value
    #   The message input value.
    #   @return [Types::MessageData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/MessageInput AWS API Documentation
    #
    class MessageInput < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The message output.
    #
    # @!attribute [rw] value
    #   The value of a message data.
    #   @return [Types::MessageData]
    #
    # @!attribute [rw] message_id
    #   The identifier of a message.
    #   @return [String]
    #
    # @!attribute [rw] participant
    #   The participant of a message.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp of a message.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/MessageOutput AWS API Documentation
    #
    class MessageOutput < Struct.new(
      :value,
      :message_id,
      :participant,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the message template attachment.
    #
    # @!attribute [rw] content_disposition
    #   The presentation information for the attachment file.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the attachment file being uploaded. The name should
    #   include the file extension.
    #   @return [String]
    #
    # @!attribute [rw] uploaded_time
    #   The timestamp when the attachment file was uploaded.
    #   @return [Time]
    #
    # @!attribute [rw] url
    #   A pre-signed Amazon S3 URL that can be used to download the
    #   attachment file.
    #   @return [String]
    #
    # @!attribute [rw] url_expiry
    #   The expiration time of the pre-signed Amazon S3 URL.
    #   @return [Time]
    #
    # @!attribute [rw] attachment_id
    #   The identifier of the attachment file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/MessageTemplateAttachment AWS API Documentation
    #
    class MessageTemplateAttachment < Struct.new(
      :content_disposition,
      :name,
      :uploaded_time,
      :url,
      :url_expiry,
      :attachment_id)
      SENSITIVE = [:name, :url]
      include Aws::Structure
    end

    # The attributes that are used with the message template.
    #
    # @!attribute [rw] system_attributes
    #   The system attributes that are used with the message template.
    #   @return [Types::SystemAttributes]
    #
    # @!attribute [rw] agent_attributes
    #   The agent attributes that are used with the message template.
    #   @return [Types::AgentAttributes]
    #
    # @!attribute [rw] customer_profile_attributes
    #   The customer profile attributes that are used with the message
    #   template.
    #   @return [Types::CustomerProfileAttributes]
    #
    # @!attribute [rw] custom_attributes
    #   The custom attributes that are used with the message template.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/MessageTemplateAttributes AWS API Documentation
    #
    class MessageTemplateAttributes < Struct.new(
      :system_attributes,
      :agent_attributes,
      :customer_profile_attributes,
      :custom_attributes)
      SENSITIVE = [:custom_attributes]
      include Aws::Structure
    end

    # The container of the message template body.
    #
    # @note MessageTemplateBodyContentProvider is a union - when making an API calls you must set exactly one of the members.
    #
    # @note MessageTemplateBodyContentProvider is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of MessageTemplateBodyContentProvider corresponding to the set member.
    #
    # @!attribute [rw] content
    #   The content of the message template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/MessageTemplateBodyContentProvider AWS API Documentation
    #
    class MessageTemplateBodyContentProvider < Struct.new(
      :content,
      :unknown)
      SENSITIVE = [:content]
      include Aws::Structure
      include Aws::Structure::Union

      class Content < MessageTemplateBodyContentProvider; end
      class Unknown < MessageTemplateBodyContentProvider; end
    end

    # The container of message template content.
    #
    # @note MessageTemplateContentProvider is a union - when making an API calls you must set exactly one of the members.
    #
    # @note MessageTemplateContentProvider is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of MessageTemplateContentProvider corresponding to the set member.
    #
    # @!attribute [rw] email
    #   The content of the message template that applies to the email
    #   channel subtype.
    #   @return [Types::EmailMessageTemplateContent]
    #
    # @!attribute [rw] sms
    #   The content of the message template that applies to the SMS channel
    #   subtype.
    #   @return [Types::SMSMessageTemplateContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/MessageTemplateContentProvider AWS API Documentation
    #
    class MessageTemplateContentProvider < Struct.new(
      :email,
      :sms,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Email < MessageTemplateContentProvider; end
      class Sms < MessageTemplateContentProvider; end
      class Unknown < MessageTemplateContentProvider; end
    end

    # The data of a message template.
    #
    # @!attribute [rw] message_template_arn
    #   The Amazon Resource Name (ARN) of the message template.
    #   @return [String]
    #
    # @!attribute [rw] message_template_id
    #   The identifier of the message template.
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
    # @!attribute [rw] name
    #   The name of the message template.
    #   @return [String]
    #
    # @!attribute [rw] channel_subtype
    #   The channel subtype this message template applies to.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the message template was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when the message template data was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The Amazon Resource Name (ARN) of the user who last updated the
    #   message template data.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the message template.
    #   @return [Types::MessageTemplateContentProvider]
    #
    # @!attribute [rw] description
    #   The description of the message template.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language code value for the language in which the quick response
    #   is written. The supported language codes include `de_DE`, `en_US`,
    #   `es_ES`, `fr_FR`, `id_ID`, `it_IT`, `ja_JP`, `ko_KR`, `pt_BR`,
    #   `zh_CN`, `zh_TW`
    #   @return [String]
    #
    # @!attribute [rw] grouping_configuration
    #   The configuration information of the grouping of Amazon Q in Connect
    #   users.
    #   @return [Types::GroupingConfiguration]
    #
    # @!attribute [rw] default_attributes
    #   An object that specifies the default values to use for variables in
    #   the message template. This object contains different categories of
    #   key-value pairs. Each key defines a variable or placeholder in the
    #   message template. The corresponding value defines the default value
    #   for that variable.
    #   @return [Types::MessageTemplateAttributes]
    #
    # @!attribute [rw] attribute_types
    #   The types of attributes that the message template contains.
    #   @return [Array<String>]
    #
    # @!attribute [rw] message_template_content_sha_256
    #   The checksum value of the message template content that is
    #   referenced by the `$LATEST` qualifier. It can be returned in
    #   `MessageTemplateData` or `ExtendedMessageTemplateData`. It’s
    #   calculated by content, language, `defaultAttributes` and
    #   `Attachments` of the message template.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/MessageTemplateData AWS API Documentation
    #
    class MessageTemplateData < Struct.new(
      :message_template_arn,
      :message_template_id,
      :knowledge_base_arn,
      :knowledge_base_id,
      :name,
      :channel_subtype,
      :created_time,
      :last_modified_time,
      :last_modified_by,
      :content,
      :description,
      :language,
      :grouping_configuration,
      :default_attributes,
      :attribute_types,
      :message_template_content_sha_256,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The message template fields to filter the message template query
    # results by. The following is the list of supported field names:
    #
    # * name
    #
    # * description
    #
    # * channel
    #
    # * channelSubtype
    #
    # * language
    #
    # * qualifier
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
    #   The name of the attribute field to filter the message templates by.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values of attribute field to filter the message template by.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operator
    #   The operator to use for filtering.
    #   @return [String]
    #
    # @!attribute [rw] include_no_existence
    #   Whether to treat null value as a match for the attribute field.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/MessageTemplateFilterField AWS API Documentation
    #
    class MessageTemplateFilterField < Struct.new(
      :name,
      :values,
      :operator,
      :include_no_existence)
      SENSITIVE = []
      include Aws::Structure
    end

    # The message template fields to order the message template query
    # results by. The following is the list of supported field names:
    #
    # * name
    #
    # * description
    #
    # * channel
    #
    # * channelSubtype
    #
    # * language
    #
    # * qualifier
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
    #   The name of the message template.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   The order at which the message templates are sorted by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/MessageTemplateOrderField AWS API Documentation
    #
    class MessageTemplateOrderField < Struct.new(
      :name,
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # The message template fields to query message templates by. The
    # following is the list of supported field names:
    #
    # * name
    #
    # * description
    #
    # @!attribute [rw] name
    #   The name of the attribute to query the message templates by.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values of the attribute to query the message templates by.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operator
    #   The operator to use for matching attribute field values in the
    #   query.
    #   @return [String]
    #
    # @!attribute [rw] allow_fuzziness
    #   Whether the query expects only exact matches on the attribute field
    #   values. The results of the query will only include exact matches if
    #   this parameter is set to false.
    #   @return [Boolean]
    #
    # @!attribute [rw] priority
    #   The importance of the attribute field when calculating query result
    #   relevancy scores. The value set for this parameter affects the
    #   ordering of search results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/MessageTemplateQueryField AWS API Documentation
    #
    class MessageTemplateQueryField < Struct.new(
      :name,
      :values,
      :operator,
      :allow_fuzziness,
      :priority)
      SENSITIVE = []
      include Aws::Structure
    end

    # The search expression of the message template.
    #
    # @!attribute [rw] queries
    #   The message template query expressions.
    #   @return [Array<Types::MessageTemplateQueryField>]
    #
    # @!attribute [rw] filters
    #   The configuration of filtering rules applied to message template
    #   query results.
    #   @return [Array<Types::MessageTemplateFilterField>]
    #
    # @!attribute [rw] order_on_field
    #   The message template attribute fields on which the query results are
    #   ordered.
    #   @return [Types::MessageTemplateOrderField]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/MessageTemplateSearchExpression AWS API Documentation
    #
    class MessageTemplateSearchExpression < Struct.new(
      :queries,
      :filters,
      :order_on_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of message template search.
    #
    # @!attribute [rw] message_template_arn
    #   The Amazon Resource Name (ARN) of the message template.
    #   @return [String]
    #
    # @!attribute [rw] message_template_id
    #   The identifier of the message template.
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
    # @!attribute [rw] name
    #   The name of the message template.
    #   @return [String]
    #
    # @!attribute [rw] channel_subtype
    #   The channel subtype this message template applies to.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the message template was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when the message template data was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The Amazon Resource Name (ARN) of the user who last updated the
    #   message template data.
    #   @return [String]
    #
    # @!attribute [rw] is_active
    #   Whether the version of the message template is activated.
    #   @return [Boolean]
    #
    # @!attribute [rw] version_number
    #   The version number of the message template version.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The description of the message template.
    #   @return [String]
    #
    # @!attribute [rw] grouping_configuration
    #   The configuration information of the grouping of Amazon Q in Connect
    #   users.
    #   @return [Types::GroupingConfiguration]
    #
    # @!attribute [rw] language
    #   The language code value for the language in which the quick response
    #   is written. The supported language codes include `de_DE`, `en_US`,
    #   `es_ES`, `fr_FR`, `id_ID`, `it_IT`, `ja_JP`, `ko_KR`, `pt_BR`,
    #   `zh_CN`, `zh_TW`
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/MessageTemplateSearchResultData AWS API Documentation
    #
    class MessageTemplateSearchResultData < Struct.new(
      :message_template_arn,
      :message_template_id,
      :knowledge_base_arn,
      :knowledge_base_id,
      :name,
      :channel_subtype,
      :created_time,
      :last_modified_time,
      :last_modified_by,
      :is_active,
      :version_number,
      :description,
      :grouping_configuration,
      :language,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the message template.
    #
    # @!attribute [rw] message_template_arn
    #   The Amazon Resource Name (ARN) of the message template.
    #   @return [String]
    #
    # @!attribute [rw] message_template_id
    #   The identifier of the message template.
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
    # @!attribute [rw] name
    #   The name of the message template.
    #   @return [String]
    #
    # @!attribute [rw] channel_subtype
    #   The channel subtype this message template applies to.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the message template was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when the message template data was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The Amazon Resource Name (ARN) of the user who last updated the
    #   message template data.
    #   @return [String]
    #
    # @!attribute [rw] active_version_number
    #   The version number of the message template version that is
    #   activated.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The description of the message template.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/MessageTemplateSummary AWS API Documentation
    #
    class MessageTemplateSummary < Struct.new(
      :message_template_arn,
      :message_template_id,
      :knowledge_base_arn,
      :knowledge_base_id,
      :name,
      :channel_subtype,
      :created_time,
      :last_modified_time,
      :last_modified_by,
      :active_version_number,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the message template version.
    #
    # @!attribute [rw] message_template_arn
    #   The Amazon Resource Name (ARN) of the message template.
    #   @return [String]
    #
    # @!attribute [rw] message_template_id
    #   The identifier of the message template.
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
    # @!attribute [rw] name
    #   The name of the message template.
    #   @return [String]
    #
    # @!attribute [rw] channel_subtype
    #   The channel subtype this message template applies to.
    #   @return [String]
    #
    # @!attribute [rw] is_active
    #   Whether the version of the message template is activated.
    #   @return [Boolean]
    #
    # @!attribute [rw] version_number
    #   The version number of the message template version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/MessageTemplateVersionSummary AWS API Documentation
    #
    class MessageTemplateVersionSummary < Struct.new(
      :message_template_arn,
      :message_template_id,
      :knowledge_base_arn,
      :knowledge_base_id,
      :name,
      :channel_subtype,
      :is_active,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred when creating a recommendation.
    #
    # @!attribute [rw] recommendation_id
    #   The identifier of the recommendation that is in error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A recommendation is causing an error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/NotifyRecommendationsReceivedError AWS API Documentation
    #
    class NotifyRecommendationsReceivedError < Struct.new(
      :recommendation_id,
      :message)
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
    # @!attribute [rw] recommendation_ids
    #   The identifiers of the recommendations.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/NotifyRecommendationsReceivedRequest AWS API Documentation
    #
    class NotifyRecommendationsReceivedRequest < Struct.new(
      :assistant_id,
      :session_id,
      :recommendation_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendation_ids
    #   The identifiers of the recommendations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] errors
    #   The identifiers of recommendations that are causing errors.
    #   @return [Array<Types::NotifyRecommendationsReceivedError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/NotifyRecommendationsReceivedResponse AWS API Documentation
    #
    class NotifyRecommendationsReceivedResponse < Struct.new(
      :recommendation_ids,
      :errors)
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
    # @!attribute [rw] parsing_strategy
    #   The parsing strategy for the data source.
    #   @return [String]
    #
    # @!attribute [rw] bedrock_foundation_model_configuration
    #   Settings for a foundation model used to parse documents for a data
    #   source.
    #   @return [Types::BedrockFoundationModelConfigurationForParsing]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ParsingConfiguration AWS API Documentation
    #
    class ParsingConfiguration < Struct.new(
      :parsing_strategy,
      :bedrock_foundation_model_configuration)
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
    # @!attribute [rw] target_id
    #   The identifier of the feedback target.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The type of the feedback target.
    #   @return [String]
    #
    # @!attribute [rw] content_feedback
    #   Information about the feedback provided.
    #   @return [Types::ContentFeedbackData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/PutFeedbackRequest AWS API Documentation
    #
    class PutFeedbackRequest < Struct.new(
      :assistant_id,
      :target_id,
      :target_type,
      :content_feedback)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The identifier of the feedback target.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The type of the feedback target.
    #   @return [String]
    #
    # @!attribute [rw] content_feedback
    #   Information about the feedback provided.
    #   @return [Types::ContentFeedbackData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/PutFeedbackResponse AWS API Documentation
    #
    class PutFeedbackResponse < Struct.new(
      :assistant_id,
      :assistant_arn,
      :target_id,
      :target_type,
      :content_feedback)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] query_text
    #   The text to search for.
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
    # @!attribute [rw] session_id
    #   The identifier of the Amazon Q in Connect session. Can be either the
    #   ID or the ARN. URLs cannot contain the ARN.
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
    # @!attribute [rw] override_knowledge_base_search_type
    #   The search type to be used against the Knowledge Base for this
    #   request. The values can be `SEMANTIC` which uses vector embeddings
    #   or `HYBRID` which use vector embeddings and raw text.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QueryAssistantRequest AWS API Documentation
    #
    class QueryAssistantRequest < Struct.new(
      :assistant_id,
      :query_text,
      :next_token,
      :max_results,
      :session_id,
      :query_condition,
      :query_input_data,
      :override_knowledge_base_search_type)
      SENSITIVE = [:query_text]
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   The results of the query.
    #   @return [Array<Types::ResultData>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QueryAssistantResponse AWS API Documentation
    #
    class QueryAssistantResponse < Struct.new(
      :results,
      :next_token)
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
    # @!attribute [rw] field
    #   The name of the field for query condition to query on.
    #   @return [String]
    #
    # @!attribute [rw] comparator
    #   The comparison operator for query condition to query on.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the query condition to query on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QueryConditionItem AWS API Documentation
    #
    class QueryConditionItem < Struct.new(
      :field,
      :comparator,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input information for the query.
    #
    # @note QueryInputData is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] query_text_input_data
    #   Input information for the query.
    #   @return [Types::QueryTextInputData]
    #
    # @!attribute [rw] intent_input_data
    #   Input information for the intent.
    #   @return [Types::IntentInputData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QueryInputData AWS API Documentation
    #
    class QueryInputData < Struct.new(
      :query_text_input_data,
      :intent_input_data,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class QueryTextInputData < QueryInputData; end
      class IntentInputData < QueryInputData; end
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
    # @!attribute [rw] plain_text
    #   The container quick response content.
    #   @return [Types::QuickResponseContentProvider]
    #
    # @!attribute [rw] markdown
    #   The container quick response content.
    #   @return [Types::QuickResponseContentProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QuickResponseContents AWS API Documentation
    #
    class QuickResponseContents < Struct.new(
      :plain_text,
      :markdown)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the quick response.
    #
    # @!attribute [rw] quick_response_arn
    #   The Amazon Resource Name (ARN) of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] quick_response_id
    #   The identifier of the quick response.
    #   @return [String]
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
    # @!attribute [rw] name
    #   The name of the quick response.
    #   @return [String]
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
    # @!attribute [rw] status
    #   The status of the quick response data.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the quick response was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when the quick response data was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] contents
    #   The contents of the quick response.
    #   @return [Types::QuickResponseContents]
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
    # @!attribute [rw] shortcut_key
    #   The shortcut key of the quick response. The value should be unique
    #   across the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_by
    #   The Amazon Resource Name (ARN) of the user who last updated the
    #   quick response data.
    #   @return [String]
    #
    # @!attribute [rw] is_active
    #   Whether the quick response is active.
    #   @return [Boolean]
    #
    # @!attribute [rw] channels
    #   The Amazon Connect contact channels this quick response applies to.
    #   The supported contact channel types include `Chat`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language
    #   The language code value for the language in which the quick response
    #   is written. The supported language codes include `de_DE`, `en_US`,
    #   `es_ES`, `fr_FR`, `id_ID`, `it_IT`, `ja_JP`, `ko_KR`, `pt_BR`,
    #   `zh_CN`, `zh_TW`
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
      :quick_response_arn,
      :quick_response_id,
      :knowledge_base_arn,
      :knowledge_base_id,
      :name,
      :content_type,
      :status,
      :created_time,
      :last_modified_time,
      :contents,
      :description,
      :grouping_configuration,
      :shortcut_key,
      :last_modified_by,
      :is_active,
      :channels,
      :language,
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
    # @!attribute [rw] name
    #   The name of the attribute field to filter the quick responses by.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values of attribute field to filter the quick response by.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operator
    #   The operator to use for filtering.
    #   @return [String]
    #
    # @!attribute [rw] include_no_existence
    #   Whether to treat null value as a match for the attribute field.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QuickResponseFilterField AWS API Documentation
    #
    class QuickResponseFilterField < Struct.new(
      :name,
      :values,
      :operator,
      :include_no_existence)
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
    # @!attribute [rw] name
    #   The name of the attribute to query the quick responses by.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values of the attribute to query the quick responses by.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operator
    #   The operator to use for matching attribute field values in the
    #   query.
    #   @return [String]
    #
    # @!attribute [rw] allow_fuzziness
    #   Whether the query expects only exact matches on the attribute field
    #   values. The results of the query will only include exact matches if
    #   this parameter is set to false.
    #   @return [Boolean]
    #
    # @!attribute [rw] priority
    #   The importance of the attribute field when calculating query result
    #   relevancy scores. The value set for this parameter affects the
    #   ordering of search results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QuickResponseQueryField AWS API Documentation
    #
    class QuickResponseQueryField < Struct.new(
      :name,
      :values,
      :operator,
      :allow_fuzziness,
      :priority)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the import job.
    #
    # @!attribute [rw] queries
    #   The quick response query expressions.
    #   @return [Array<Types::QuickResponseQueryField>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QuickResponseSearchExpression AWS API Documentation
    #
    class QuickResponseSearchExpression < Struct.new(
      :queries,
      :filters,
      :order_on_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of quick response search.
    #
    # @!attribute [rw] quick_response_arn
    #   The Amazon Resource Name (ARN) of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] quick_response_id
    #   The identifier of the quick response.
    #   @return [String]
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
    # @!attribute [rw] name
    #   The name of the quick response.
    #   @return [String]
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
    # @!attribute [rw] status
    #   The resource status of the quick response.
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
    # @!attribute [rw] last_modified_time
    #   The timestamp when the quick response search result data was last
    #   modified.
    #   @return [Time]
    #
    # @!attribute [rw] is_active
    #   Whether the quick response is active.
    #   @return [Boolean]
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
    # @!attribute [rw] shortcut_key
    #   The shortcut key of the quick response. The value should be unique
    #   across the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_by
    #   The Amazon Resource Name (ARN) of the user who last updated the
    #   quick response search result data.
    #   @return [String]
    #
    # @!attribute [rw] channels
    #   The Amazon Connect contact channels this quick response applies to.
    #   The supported contact channel types include `Chat`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language
    #   The language code value for the language in which the quick response
    #   is written.
    #   @return [String]
    #
    # @!attribute [rw] attributes_not_interpolated
    #   The user defined contact attributes that are not resolved when the
    #   search result is returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] attributes_interpolated
    #   The user defined contact attributes that are resolved when the
    #   search result is returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QuickResponseSearchResultData AWS API Documentation
    #
    class QuickResponseSearchResultData < Struct.new(
      :quick_response_arn,
      :quick_response_id,
      :knowledge_base_arn,
      :knowledge_base_id,
      :name,
      :content_type,
      :status,
      :contents,
      :created_time,
      :last_modified_time,
      :is_active,
      :description,
      :grouping_configuration,
      :shortcut_key,
      :last_modified_by,
      :channels,
      :language,
      :attributes_not_interpolated,
      :attributes_interpolated,
      :tags)
      SENSITIVE = [:channels, :attributes_not_interpolated, :attributes_interpolated]
      include Aws::Structure
    end

    # The summary information about the quick response.
    #
    # @!attribute [rw] quick_response_arn
    #   The Amazon Resource Name (ARN) of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] quick_response_id
    #   The identifier of the quick response.
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
    # @!attribute [rw] name
    #   The name of the quick response.
    #   @return [String]
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
    # @!attribute [rw] status
    #   The resource status of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the quick response was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The timestamp when the quick response summary was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_by
    #   The Amazon Resource Name (ARN) of the user who last updated the
    #   quick response data.
    #   @return [String]
    #
    # @!attribute [rw] is_active
    #   Whether the quick response is active.
    #   @return [Boolean]
    #
    # @!attribute [rw] channels
    #   The Amazon Connect contact channels this quick response applies to.
    #   The supported contact channel types include `Chat`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/QuickResponseSummary AWS API Documentation
    #
    class QuickResponseSummary < Struct.new(
      :quick_response_arn,
      :quick_response_id,
      :knowledge_base_arn,
      :knowledge_base_id,
      :name,
      :content_type,
      :status,
      :created_time,
      :last_modified_time,
      :description,
      :last_modified_by,
      :is_active,
      :channels,
      :tags)
      SENSITIVE = [:channels]
      include Aws::Structure
    end

    # Details about the source content ranking data.
    #
    # @!attribute [rw] relevance_score
    #   The relevance level of the recommendation.
    #   @return [Float]
    #
    # @!attribute [rw] relevance_level
    #   The relevance score of the content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/RankingData AWS API Documentation
    #
    class RankingData < Struct.new(
      :relevance_score,
      :relevance_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the recommendation.
    #
    # @!attribute [rw] recommendation_id
    #   The identifier of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] document
    #   The recommended document.
    #   @return [Types::Document]
    #
    # @!attribute [rw] relevance_score
    #   The relevance score of the recommendation.
    #   @return [Float]
    #
    # @!attribute [rw] relevance_level
    #   The relevance level of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of recommendation.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   Summary of the recommended content.
    #   @return [Types::DataSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/RecommendationData AWS API Documentation
    #
    class RecommendationData < Struct.new(
      :recommendation_id,
      :document,
      :relevance_score,
      :relevance_level,
      :type,
      :data)
      SENSITIVE = []
      include Aws::Structure
    end

    # A recommendation trigger provides context on the event that produced
    # the referenced recommendations. Recommendations are only referenced in
    # `recommendationIds` by a single RecommendationTrigger.
    #
    # @!attribute [rw] id
    #   The identifier of the recommendation trigger.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of recommendation trigger.
    #   @return [String]
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
    # @!attribute [rw] data
    #   A union type containing information related to the trigger.
    #   @return [Types::RecommendationTriggerData]
    #
    # @!attribute [rw] recommendation_ids
    #   The identifiers of the recommendations.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/RecommendationTrigger AWS API Documentation
    #
    class RecommendationTrigger < Struct.new(
      :id,
      :type,
      :source,
      :data,
      :recommendation_ids)
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

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] ai_agent_type
    #   The type of the AI Agent being removed for use by default from the
    #   Amazon Q in Connect Assistant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/RemoveAssistantAIAgentRequest AWS API Documentation
    #
    class RemoveAssistantAIAgentRequest < Struct.new(
      :assistant_id,
      :ai_agent_type)
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

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] message_template_id
    #   The identifier of the message template. Can be either the ID or the
    #   ARN.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   An object that specifies the values to use for variables in the
    #   message template. This object contains different categories of
    #   key-value pairs. Each key defines a variable or placeholder in the
    #   message template. The corresponding value defines the value for that
    #   variable.
    #   @return [Types::MessageTemplateAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/RenderMessageTemplateRequest AWS API Documentation
    #
    class RenderMessageTemplateRequest < Struct.new(
      :knowledge_base_id,
      :message_template_id,
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   The content of the message template.
    #   @return [Types::MessageTemplateContentProvider]
    #
    # @!attribute [rw] attributes_not_interpolated
    #   The attribute keys that are not resolved.
    #   @return [Array<String>]
    #
    # @!attribute [rw] attachments
    #   The message template attachments.
    #   @return [Array<Types::MessageTemplateAttachment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/RenderMessageTemplateResponse AWS API Documentation
    #
    class RenderMessageTemplateResponse < Struct.new(
      :content,
      :attributes_not_interpolated,
      :attachments)
      SENSITIVE = [:attributes_not_interpolated]
      include Aws::Structure
    end

    # Information about how to render the content.
    #
    # @!attribute [rw] template_uri
    #   A URI template containing exactly one variable in `${variableName}
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
    # @!attribute [rw] result_id
    #   The identifier of the result data.
    #   @return [String]
    #
    # @!attribute [rw] document
    #   The document.
    #   @return [Types::Document]
    #
    # @!attribute [rw] relevance_score
    #   The relevance score of the results.
    #   @return [Float]
    #
    # @!attribute [rw] data
    #   Summary of the recommended content.
    #   @return [Types::DataSummary]
    #
    # @!attribute [rw] type
    #   The type of the query result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/ResultData AWS API Documentation
    #
    class ResultData < Struct.new(
      :result_id,
      :document,
      :relevance_score,
      :data,
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

    # The content of the message template that applies to the SMS channel
    # subtype.
    #
    # @!attribute [rw] body
    #   The body to use in SMS messages.
    #   @return [Types::SMSMessageTemplateContentBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SMSMessageTemplateContent AWS API Documentation
    #
    class SMSMessageTemplateContent < Struct.new(
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # The body to use in SMS messages.
    #
    # @!attribute [rw] plain_text
    #   The message body to use in SMS messages.
    #   @return [Types::MessageTemplateBodyContentProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SMSMessageTemplateContentBody AWS API Documentation
    #
    class SMSMessageTemplateContentBody < Struct.new(
      :plain_text)
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
    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] search_expression
    #   The search expression to filter results.
    #   @return [Types::SearchExpression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SearchContentRequest AWS API Documentation
    #
    class SearchContentRequest < Struct.new(
      :next_token,
      :max_results,
      :knowledge_base_id,
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

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] search_expression
    #   The search expression for querying the message template.
    #   @return [Types::MessageTemplateSearchExpression]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SearchMessageTemplatesRequest AWS API Documentation
    #
    class SearchMessageTemplatesRequest < Struct.new(
      :knowledge_base_id,
      :search_expression,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   The results of the message template search.
    #   @return [Array<Types::MessageTemplateSearchResultData>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SearchMessageTemplatesResponse AWS API Documentation
    #
    class SearchMessageTemplatesResponse < Struct.new(
      :results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. This should be a
    #   QUICK\_RESPONSES type knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] search_expression
    #   The search expression for querying the quick response.
    #   @return [Types::QuickResponseSearchExpression]
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
    # @!attribute [rw] attributes
    #   The [user-defined Amazon Connect contact attributes][1] to be
    #   resolved when search results are returned.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/connect-attrib-list.html#user-defined-attributes
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SearchQuickResponsesRequest AWS API Documentation
    #
    class SearchQuickResponsesRequest < Struct.new(
      :knowledge_base_id,
      :search_expression,
      :next_token,
      :max_results,
      :attributes)
      SENSITIVE = [:attributes]
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   The results of the quick response search.
    #   @return [Array<Types::QuickResponseSearchResultData>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SearchQuickResponsesResponse AWS API Documentation
    #
    class SearchQuickResponsesResponse < Struct.new(
      :results,
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
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] search_expression
    #   The search expression to filter results.
    #   @return [Types::SearchExpression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SearchSessionsRequest AWS API Documentation
    #
    class SearchSessionsRequest < Struct.new(
      :next_token,
      :max_results,
      :assistant_id,
      :search_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_summaries
    #   Summary information about the sessions.
    #   @return [Array<Types::SessionSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SearchSessionsResponse AWS API Documentation
    #
    class SearchSessionsResponse < Struct.new(
      :session_summaries,
      :next_token)
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

    # The configuration for AI Agents of type SELF\_SERVICE.
    #
    # @!attribute [rw] self_service_pre_processing_ai_prompt_id
    #   The AI Prompt identifier for the Self Service Pre-Processing prompt
    #   used by the SELF\_SERVICE AI Agent
    #   @return [String]
    #
    # @!attribute [rw] self_service_answer_generation_ai_prompt_id
    #   The AI Prompt identifier for the Self Service Answer Generation
    #   prompt used by the SELF\_SERVICE AI Agent
    #   @return [String]
    #
    # @!attribute [rw] self_service_ai_guardrail_id
    #   The AI Guardrail identifier used by the SELF\_SERVICE AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] association_configurations
    #   The association configurations for overriding behavior on this AI
    #   Agent.
    #   @return [Array<Types::AssociationConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SelfServiceAIAgentConfiguration AWS API Documentation
    #
    class SelfServiceAIAgentConfiguration < Struct.new(
      :self_service_pre_processing_ai_prompt_id,
      :self_service_answer_generation_ai_prompt_id,
      :self_service_ai_guardrail_id,
      :association_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The conversation history data to included in conversation context data
    # before the Amazon Q in Connect session.
    #
    # @!attribute [rw] turn_number
    #   The number of turn of the conversation history data.
    #   @return [Integer]
    #
    # @!attribute [rw] input_transcript
    #   The input transcript of the conversation history data.
    #   @return [String]
    #
    # @!attribute [rw] bot_response
    #   The bot response of the conversation history data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SelfServiceConversationHistory AWS API Documentation
    #
    class SelfServiceConversationHistory < Struct.new(
      :turn_number,
      :input_transcript,
      :bot_response)
      SENSITIVE = [:input_transcript, :bot_response]
      include Aws::Structure
    end

    # Settings for semantic document chunking for a data source. Semantic
    # chunking splits a document into smaller documents based on groups of
    # similar content derived from the text with natural language
    # processing.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SemanticChunkingConfiguration AWS API Documentation
    #
    class SemanticChunkingConfiguration < Struct.new(
      :max_tokens,
      :buffer_size,
      :breakpoint_percentile_threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the Amazon Q in Connect session.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The message type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message data to submit to the Amazon Q in Connect session.
    #   @return [Types::MessageInput]
    #
    # @!attribute [rw] conversation_context
    #   The conversation context before the Amazon Q in Connect session.
    #   @return [Types::ConversationContext]
    #
    # @!attribute [rw] configuration
    #   The configuration of the [SendMessage][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_amazon-q-connect_SendMessage.html
    #   @return [Types::MessageConfiguration]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the AWS SDK populates
    #   this field.For more information about idempotency, see Making
    #   retries safe with idempotent APIs.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SendMessageRequest AWS API Documentation
    #
    class SendMessageRequest < Struct.new(
      :assistant_id,
      :session_id,
      :type,
      :message,
      :conversation_context,
      :configuration,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_message_id
    #   The identifier of the submitted message.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration of the [SendMessage][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_amazon-q-connect_SendMessage.html
    #   @return [Types::MessageConfiguration]
    #
    # @!attribute [rw] next_message_token
    #   The token for the next message, used by GetNextMessage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SendMessageResponse AWS API Documentation
    #
    class SendMessageResponse < Struct.new(
      :request_message_id,
      :configuration,
      :next_message_token)
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
    # @!attribute [rw] session_arn
    #   The Amazon Resource Name (ARN) of the session.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the session.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the session.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] integration_configuration
    #   The configuration information for the session integration.
    #   @return [Types::SessionIntegrationConfiguration]
    #
    # @!attribute [rw] tag_filter
    #   An object that can be used to specify Tag conditions.
    #   @return [Types::TagFilter]
    #
    # @!attribute [rw] ai_agent_configuration
    #   The configuration of the AI Agents (mapped by AI Agent Type to AI
    #   Agent version) that should be used by Amazon Q in Connect for this
    #   Session.
    #   @return [Hash<String,Types::AIAgentConfigurationData>]
    #
    # @!attribute [rw] origin
    #   The origin of the Session to be listed. `SYSTEM` for a default
    #   Session created by Amazon Q in Connect or `CUSTOMER` for a Session
    #   created by calling [CreateSession][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_amazon-q-connect_CreateSession.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SessionData AWS API Documentation
    #
    class SessionData < Struct.new(
      :session_arn,
      :session_id,
      :name,
      :description,
      :tags,
      :integration_configuration,
      :tag_filter,
      :ai_agent_configuration,
      :origin)
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
    # @!attribute [rw] session_id
    #   The identifier of the session.
    #   @return [String]
    #
    # @!attribute [rw] session_arn
    #   The Amazon Resource Name (ARN) of the session.
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @!attribute [rw] assistant_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SessionSummary AWS API Documentation
    #
    class SessionSummary < Struct.new(
      :session_id,
      :session_arn,
      :assistant_id,
      :assistant_arn)
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
    # @!attribute [rw] id
    #   The identifier of the source content.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the source content.
    #   @return [String]
    #
    # @!attribute [rw] text_data
    #   Details about the source content text data.
    #   @return [Types::TextData]
    #
    # @!attribute [rw] ranking_data
    #   Details about the source content ranking data.
    #   @return [Types::RankingData]
    #
    # @!attribute [rw] citation_span
    #   Contains information about where the text with a citation begins and
    #   ends in the generated output.
    #   @return [Types::CitationSpan]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SourceContentDataDetails AWS API Documentation
    #
    class SourceContentDataDetails < Struct.new(
      :id,
      :type,
      :text_data,
      :ranking_data,
      :citation_span)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The type of content to upload.
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
      :knowledge_base_id,
      :content_type,
      :presigned_url_time_to_live)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] headers_to_include
    #   The headers to include in the upload.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/StartContentUploadResponse AWS API Documentation
    #
    class StartContentUploadResponse < Struct.new(
      :upload_id,
      :url,
      :url_expiry,
      :headers_to_include)
      SENSITIVE = [:url]
      include Aws::Structure
    end

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
    # @!attribute [rw] import_job_type
    #   The type of the import job.
    #
    #   * For importing quick response resource, set the value to
    #     `QUICK_RESPONSES`.
    #
    #   ^
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
    # @!attribute [rw] client_token
    #   The tags used to organize, track, or control access for this
    #   resource.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata fields of the imported Amazon Q in Connect resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] external_source_configuration
    #   The configuration information of the external source that the
    #   resource data are imported from.
    #   @return [Types::ExternalSourceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/StartImportJobRequest AWS API Documentation
    #
    class StartImportJobRequest < Struct.new(
      :knowledge_base_id,
      :import_job_type,
      :upload_id,
      :client_token,
      :metadata,
      :external_source_configuration)
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

    # The system attributes that are used with the message template.
    #
    # @!attribute [rw] name
    #   The name of the task.
    #   @return [String]
    #
    # @!attribute [rw] customer_endpoint
    #   The CustomerEndpoint attribute.
    #   @return [Types::SystemEndpointAttributes]
    #
    # @!attribute [rw] system_endpoint
    #   The SystemEndpoint attribute.
    #   @return [Types::SystemEndpointAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SystemAttributes AWS API Documentation
    #
    class SystemAttributes < Struct.new(
      :name,
      :customer_endpoint,
      :system_endpoint)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # The system endpoint attributes that are used with the message
    # template.
    #
    # @!attribute [rw] address
    #   The customer's phone number if used with `customerEndpoint`, or the
    #   number the customer dialed to call your contact center if used with
    #   `systemEndpoint`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/SystemEndpointAttributes AWS API Documentation
    #
    class SystemEndpointAttributes < Struct.new(
      :address)
      SENSITIVE = [:address]
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
    # @!attribute [rw] tag_condition
    #   A leaf node condition which can be used to specify a tag condition.
    #   @return [Types::TagCondition]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/TagFilter AWS API Documentation
    #
    class TagFilter < Struct.new(
      :tag_condition,
      :and_conditions,
      :or_conditions,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class TagCondition < TagFilter; end
      class AndConditions < TagFilter; end
      class OrConditions < TagFilter; end
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
    # @!attribute [rw] title
    #   The text of the document.
    #   @return [Types::DocumentText]
    #
    # @!attribute [rw] excerpt
    #   The text of the document.
    #   @return [Types::DocumentText]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/TextData AWS API Documentation
    #
    class TextData < Struct.new(
      :title,
      :excerpt)
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

    # The message data in text type.
    #
    # @!attribute [rw] value
    #   The value of the message data in text type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/TextMessage AWS API Documentation
    #
    class TextMessage < Struct.new(
      :value)
      SENSITIVE = [:value]
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

    # You do not have permission to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :message)
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

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1]..
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] ai_agent_id
    #   The identifier of the Amazon Q in Connect AI Agent.
    #   @return [String]
    #
    # @!attribute [rw] visibility_status
    #   The visbility status of the Amazon Q in Connect AI Agent.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateAIAgentRequest AWS API Documentation
    #
    class UpdateAIAgentRequest < Struct.new(
      :client_token,
      :assistant_id,
      :ai_agent_id,
      :visibility_status,
      :configuration,
      :description)
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

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1]..
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] ai_guardrail_id
    #   The identifier of the Amazon Q in Connect AI Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] visibility_status
    #   The visibility status of the Amazon Q in Connect AI Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] blocked_input_messaging
    #   The message to return when the AI Guardrail blocks a prompt.
    #   @return [String]
    #
    # @!attribute [rw] blocked_outputs_messaging
    #   The message to return when the AI Guardrail blocks a model response.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the AI Guardrail.
    #   @return [String]
    #
    # @!attribute [rw] topic_policy_config
    #   The topic policies to configure for the AI Guardrail.
    #   @return [Types::AIGuardrailTopicPolicyConfig]
    #
    # @!attribute [rw] content_policy_config
    #   The content filter policies to configure for the AI Guardrail.
    #   @return [Types::AIGuardrailContentPolicyConfig]
    #
    # @!attribute [rw] word_policy_config
    #   The word policy you configure for the AI Guardrail.
    #   @return [Types::AIGuardrailWordPolicyConfig]
    #
    # @!attribute [rw] sensitive_information_policy_config
    #   The sensitive information policy to configure for the AI Guardrail.
    #   @return [Types::AIGuardrailSensitiveInformationPolicyConfig]
    #
    # @!attribute [rw] contextual_grounding_policy_config
    #   The contextual grounding policy configuration used to create an AI
    #   Guardrail.
    #   @return [Types::AIGuardrailContextualGroundingPolicyConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateAIGuardrailRequest AWS API Documentation
    #
    class UpdateAIGuardrailRequest < Struct.new(
      :client_token,
      :assistant_id,
      :ai_guardrail_id,
      :visibility_status,
      :blocked_input_messaging,
      :blocked_outputs_messaging,
      :description,
      :topic_policy_config,
      :content_policy_config,
      :word_policy_config,
      :sensitive_information_policy_config,
      :contextual_grounding_policy_config)
      SENSITIVE = [:blocked_input_messaging, :blocked_outputs_messaging, :description]
      include Aws::Structure
    end

    # @!attribute [rw] ai_guardrail
    #   The data of the updated Amazon Q in Connect AI Guardrail.
    #   @return [Types::AIGuardrailData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateAIGuardrailResponse AWS API Documentation
    #
    class UpdateAIGuardrailResponse < Struct.new(
      :ai_guardrail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1]..
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] ai_prompt_id
    #   The identifier of the Amazon Q in Connect AI Prompt.
    #   @return [String]
    #
    # @!attribute [rw] visibility_status
    #   The visibility status of the Amazon Q in Connect AI prompt.
    #   @return [String]
    #
    # @!attribute [rw] template_configuration
    #   The configuration of the prompt template for this AI Prompt.
    #   @return [Types::AIPromptTemplateConfiguration]
    #
    # @!attribute [rw] description
    #   The description of the Amazon Q in Connect AI Prompt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateAIPromptRequest AWS API Documentation
    #
    class UpdateAIPromptRequest < Struct.new(
      :client_token,
      :assistant_id,
      :ai_prompt_id,
      :visibility_status,
      :template_configuration,
      :description)
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

    # @!attribute [rw] assistant_id
    #   The identifier of the Amazon Q in Connect assistant. Can be either
    #   the ID or the ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] ai_agent_type
    #   The type of the AI Agent being updated for use by default on the
    #   Amazon Q in Connect Assistant.
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
      :assistant_id,
      :ai_agent_type,
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

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. This should not be a
    #   QUICK\_RESPONSES type knowledge base. Can be either the ID or the
    #   ARN
    #   @return [String]
    #
    # @!attribute [rw] content_id
    #   The identifier of the content. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #   @return [String]
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
    # @!attribute [rw] metadata
    #   A key/value map to store attributes without affecting tagging or
    #   recommendations. For example, when synchronizing data between an
    #   external system and Amazon Q in Connect, you can store an external
    #   version identifier as metadata to utilize for determining drift.
    #   @return [Hash<String,String>]
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
      :knowledge_base_id,
      :content_id,
      :revision_id,
      :title,
      :override_link_out_uri,
      :remove_override_link_out_uri,
      :metadata,
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

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] message_template_id
    #   The identifier of the message template. Can be either the ID or the
    #   ARN. It cannot contain any qualifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the message template.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the message template.
    #   @return [String]
    #
    # @!attribute [rw] grouping_configuration
    #   The configuration information of the grouping of Amazon Q in Connect
    #   users.
    #   @return [Types::GroupingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateMessageTemplateMetadataRequest AWS API Documentation
    #
    class UpdateMessageTemplateMetadataRequest < Struct.new(
      :knowledge_base_id,
      :message_template_id,
      :name,
      :description,
      :grouping_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message_template
    #   The message template.
    #   @return [Types::MessageTemplateData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateMessageTemplateMetadataResponse AWS API Documentation
    #
    class UpdateMessageTemplateMetadataResponse < Struct.new(
      :message_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] message_template_id
    #   The identifier of the message template. Can be either the ID or the
    #   ARN. It cannot contain any qualifier.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the message template.
    #   @return [Types::MessageTemplateContentProvider]
    #
    # @!attribute [rw] language
    #   The language code value for the language in which the quick response
    #   is written. The supported language codes include `de_DE`, `en_US`,
    #   `es_ES`, `fr_FR`, `id_ID`, `it_IT`, `ja_JP`, `ko_KR`, `pt_BR`,
    #   `zh_CN`, `zh_TW`
    #   @return [String]
    #
    # @!attribute [rw] default_attributes
    #   An object that specifies the default values to use for variables in
    #   the message template. This object contains different categories of
    #   key-value pairs. Each key defines a variable or placeholder in the
    #   message template. The corresponding value defines the default value
    #   for that variable.
    #   @return [Types::MessageTemplateAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateMessageTemplateRequest AWS API Documentation
    #
    class UpdateMessageTemplateRequest < Struct.new(
      :knowledge_base_id,
      :message_template_id,
      :content,
      :language,
      :default_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message_template
    #   The message template.
    #   @return [Types::MessageTemplateData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateMessageTemplateResponse AWS API Documentation
    #
    class UpdateMessageTemplateResponse < Struct.new(
      :message_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] knowledge_base_id
    #   The identifier of the knowledge base. Can be either the ID or the
    #   ARN. URLs cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] quick_response_id
    #   The identifier of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the quick response.
    #   @return [String]
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
    # @!attribute [rw] grouping_configuration
    #   The updated grouping configuration of the quick response.
    #   @return [Types::GroupingConfiguration]
    #
    # @!attribute [rw] remove_grouping_configuration
    #   Whether to remove the grouping configuration of the quick response.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The updated description of the quick response.
    #   @return [String]
    #
    # @!attribute [rw] remove_description
    #   Whether to remove the description from the quick response.
    #   @return [Boolean]
    #
    # @!attribute [rw] shortcut_key
    #   The shortcut key of the quick response. The value should be unique
    #   across the knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] remove_shortcut_key
    #   Whether to remove the shortcut key of the quick response.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_active
    #   Whether the quick response is active.
    #   @return [Boolean]
    #
    # @!attribute [rw] channels
    #   The Amazon Connect contact channels this quick response applies to.
    #   The supported contact channel types include `Chat`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language
    #   The language code value for the language in which the quick response
    #   is written. The supported language codes include `de_DE`, `en_US`,
    #   `es_ES`, `fr_FR`, `id_ID`, `it_IT`, `ja_JP`, `ko_KR`, `pt_BR`,
    #   `zh_CN`, `zh_TW`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateQuickResponseRequest AWS API Documentation
    #
    class UpdateQuickResponseRequest < Struct.new(
      :knowledge_base_id,
      :quick_response_id,
      :name,
      :content,
      :content_type,
      :grouping_configuration,
      :remove_grouping_configuration,
      :description,
      :remove_description,
      :shortcut_key,
      :remove_shortcut_key,
      :is_active,
      :channels,
      :language)
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
    # @!attribute [rw] session_id
    #   The identifier of the session. Can be either the ID or the ARN. URLs
    #   cannot contain the ARN.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace into which the session data is stored. Supported
    #   namespaces are: Custom
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The data stored on the Amazon Q in Connect Session.
    #   @return [Array<Types::RuntimeSessionData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateSessionDataRequest AWS API Documentation
    #
    class UpdateSessionDataRequest < Struct.new(
      :assistant_id,
      :session_id,
      :namespace,
      :data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_arn
    #   The Amazon Resource Name (ARN) of the session.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace into which the session data is stored. Supported
    #   namespaces are: Custom
    #   @return [String]
    #
    # @!attribute [rw] data
    #   Data stored in the session.
    #   @return [Array<Types::RuntimeSessionData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateSessionDataResponse AWS API Documentation
    #
    class UpdateSessionDataResponse < Struct.new(
      :session_arn,
      :session_id,
      :namespace,
      :data)
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
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] tag_filter
    #   An object that can be used to specify Tag conditions.
    #   @return [Types::TagFilter]
    #
    # @!attribute [rw] ai_agent_configuration
    #   The configuration of the AI Agents (mapped by AI Agent Type to AI
    #   Agent version) that should be used by Amazon Q in Connect for this
    #   Session.
    #   @return [Hash<String,Types::AIAgentConfigurationData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/UpdateSessionRequest AWS API Documentation
    #
    class UpdateSessionRequest < Struct.new(
      :assistant_id,
      :session_id,
      :description,
      :tag_filter,
      :ai_agent_configuration)
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
    # @!attribute [rw] url_configuration
    #   The configuration of the URL/URLs for the web content that you want
    #   to crawl. You should be authorized to crawl the URLs.
    #   @return [Types::UrlConfiguration]
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
    #   The scope of what is crawled for your URLs. You can choose to crawl
    #   only web pages that belong to the same host or primary domain. For
    #   example, only web pages that contain the seed URL
    #   `https://docs.aws.amazon.com/bedrock/latest/userguide/` and no other
    #   domains. You can choose to include sub domains in addition to the
    #   host or primary domain. For example, web pages that contain
    #   `aws.amazon.com` can also include sub domain `docs.aws.amazon.com`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qconnect-2020-10-19/WebCrawlerConfiguration AWS API Documentation
    #
    class WebCrawlerConfiguration < Struct.new(
      :url_configuration,
      :crawler_limits,
      :inclusion_filters,
      :exclusion_filters,
      :scope)
      SENSITIVE = [:inclusion_filters, :exclusion_filters]
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


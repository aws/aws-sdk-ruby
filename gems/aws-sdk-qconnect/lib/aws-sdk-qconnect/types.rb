# frozen_string_literal: true

# This is generated code!

module Aws::QConnect
  # This module contains the types returned by client operations.
  module Types

    # <p>A typed union that specifies the configuration based on the type of AI Agent.</p>
    # @!attribute manual_search_ai_agent_configuration
    #   <p>The configuration for AI Agents of type <code>MANUAL_SEARCH</code>.</p>
    #   @return [Types::ManualSearchAIAgentConfiguration]
    # @!attribute answer_recommendation_ai_agent_configuration
    #   <p>The configuration for AI Agents of type <code>ANSWER_RECOMMENDATION</code>.</p>
    #   @return [Types::AnswerRecommendationAIAgentConfiguration]
    # @!attribute self_service_ai_agent_configuration
    #   <p>The configuration for AI Agents of type SELF_SERVICE.</p>
    #   @return [Types::SelfServiceAIAgentConfiguration]
    # @!attribute email_response_ai_agent_configuration
    #   <p>Configuration for the EMAIL_RESPONSE AI agent that generates professional email responses using knowledge base content.</p>
    #   @return [Types::EmailResponseAIAgentConfiguration]
    # @!attribute email_overview_ai_agent_configuration
    #   <p>Configuration for the EMAIL_OVERVIEW AI agent that generates structured overview of email conversations.</p>
    #   @return [Types::EmailOverviewAIAgentConfiguration]
    # @!attribute email_generative_answer_ai_agent_configuration
    #   <p>Configuration for the EMAIL_GENERATIVE_ANSWER AI agent that provides comprehensive knowledge-based answers for customer queries.</p>
    #   @return [Types::EmailGenerativeAnswerAIAgentConfiguration]
    class AIAgentConfiguration < Struct.new(
      :manual_search_ai_agent_configuration,
      :answer_recommendation_ai_agent_configuration,
      :self_service_ai_agent_configuration,
      :email_response_ai_agent_configuration,
      :email_overview_ai_agent_configuration,
      :email_generative_answer_ai_agent_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ManualSearchAIAgentConfiguration < AIAgentConfiguration; end
      class AnswerRecommendationAIAgentConfiguration < AIAgentConfiguration; end
      class SelfServiceAIAgentConfiguration < AIAgentConfiguration; end
      class EmailResponseAIAgentConfiguration < AIAgentConfiguration; end
      class EmailOverviewAIAgentConfiguration < AIAgentConfiguration; end
      class EmailGenerativeAnswerAIAgentConfiguration < AIAgentConfiguration; end
      class Unknown < AIAgentConfiguration; end
    end

    # <p>A type that specifies the AI Agent ID configuration data when mapping an AI Agents to be used for an AI Agent type on a session or assistant.</p>
    # @!attribute ai_agent_id
    #   <p>The ID of the AI Agent to be configured.</p>
    #   @return [String]
    class AIAgentConfigurationData < Struct.new(
      nil,
      :ai_agent_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The data for the AI Agent.</p>
    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute assistant_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>
    #   @return [String]
    # @!attribute ai_agent_id
    #   <p>The identifier of the AI Agent.</p>
    #   @return [String]
    # @!attribute ai_agent_arn
    #   <p>The Amazon Resource Name (ARN) of the AI agent.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the AI Agent.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the AI Agent.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Configuration for the AI Agent.</p>
    #   @return [Types::AIAgentConfiguration]
    # @!attribute modified_time
    #   <p>The time the AI Agent was last modified.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the AI Agent.</p>
    #   @return [String]
    # @!attribute visibility_status
    #   <p>The visibility status of the AI Agent.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute origin
    #   <p>Specifies the origin of the AI Agent. <code>SYSTEM</code> for a default AI Agent created by Q in Connect or <code>CUSTOMER</code> for an AI Agent created by calling AI Agent creation APIs. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the AI Agent.</p>
    #   @return [String]
    class AIAgentData < Struct.new(
      nil,
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
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the AI Agent.</p>
    # @!attribute name
    #   <p>The name of the AI Agent.</p>
    #   @return [String]
    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute assistant_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>
    #   @return [String]
    # @!attribute ai_agent_id
    #   <p>The identifier of the AI Agent.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the AI Agent.</p>
    #   @return [String]
    # @!attribute ai_agent_arn
    #   <p>The Amazon Resource Name (ARN) of the AI agent.</p>
    #   @return [String]
    # @!attribute modified_time
    #   <p>The time the AI Agent was last modified.</p>
    #   @return [Time]
    # @!attribute visibility_status
    #   <p>The visibility status of the AI Agent.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration for the AI Agent.</p>
    #   @return [Types::AIAgentConfiguration]
    # @!attribute origin
    #   <p>The origin of the AI Agent. <code>SYSTEM</code> for a default AI Agent created by Q in Connect or <code>CUSTOMER</code> for an AI Agent created by calling AI Agent creation APIs.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the AI Agent.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the AI Agent.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class AIAgentSummary < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the AI Agent version.</p>
    # @!attribute ai_agent_summary
    #   <p>The data for the summary of the AI Agent version.</p>
    #   @return [Types::AIAgentSummary]
    # @!attribute version_number
    #   <p>The version number for this AI Agent version.</p>
    #   @return [Integer]
    class AIAgentVersionSummary < Struct.new(
      nil,
      :ai_agent_summary,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about how to handle harmful content.</p>
    # @!attribute filters_config
    #   <p>Contains the type of the content filter and how strongly it should apply to prompts and model responses.</p>
    #   @return [Array<Types::GuardrailContentFilterConfig>]
    class AIGuardrailContentPolicyConfig < Struct.new(
      nil,
      :filters_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The policy configuration details for the AI Guardrail's contextual grounding policy.</p>
    # @!attribute filters_config
    #   <p>The filter configuration details for the AI Guardrails contextual grounding policy.</p>
    #   @return [Array<Types::GuardrailContextualGroundingFilterConfig>]
    class AIGuardrailContextualGroundingPolicyConfig < Struct.new(
      nil,
      :filters_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The data for the AI Guardrail</p>
    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute assistant_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>
    #   @return [String]
    # @!attribute ai_guardrail_arn
    #   <p>The Amazon Resource Name (ARN) of the AI Guardrail.</p>
    #   @return [String]
    # @!attribute ai_guardrail_id
    #   <p>The identifier of the Amazon Q in Connect AI Guardrail.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the AI Guardrail.</p>
    #   @return [String]
    # @!attribute visibility_status
    #   <p>The visibility status of the AI Guardrail.</p>
    #   @return [String]
    # @!attribute blocked_input_messaging
    #   <p>The message to return when the AI Guardrail blocks a prompt.</p>
    #   @return [String]
    # @!attribute blocked_outputs_messaging
    #   <p>The message to return when the AI Guardrail blocks a model response.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the AI Guardrail.</p>
    #   @return [String]
    # @!attribute topic_policy_config
    #   <p>Contains details about topics that the AI Guardrail should identify and deny.</p>
    #   @return [Types::AIGuardrailTopicPolicyConfig]
    # @!attribute content_policy_config
    #   <p>Contains details about how to handle harmful content.</p>
    #   @return [Types::AIGuardrailContentPolicyConfig]
    # @!attribute word_policy_config
    #   <p>Contains details about the word policy to configured for the AI Guardrail.</p>
    #   @return [Types::AIGuardrailWordPolicyConfig]
    # @!attribute sensitive_information_policy_config
    #   <p>Contains details about PII entities and regular expressions to configure for the AI Guardrail.</p>
    #   @return [Types::AIGuardrailSensitiveInformationPolicyConfig]
    # @!attribute contextual_grounding_policy_config
    #   <p>The policy configuration details for the AI Guardrail's contextual grounding policy.</p>
    #   @return [Types::AIGuardrailContextualGroundingPolicyConfig]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute status
    #   <p>The status of the AI Guardrail.</p>
    #   @return [String]
    # @!attribute modified_time
    #   <p>The time the AI Guardrail was last modified.</p>
    #   @return [Time]
    class AIGuardrailData < Struct.new(
      nil,
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
      :modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about PII entities and regular expressions to configure for the AI Guardrail.</p>
    # @!attribute pii_entities_config
    #   <p>A list of PII entities to configure to the AI Guardrail.</p>
    #   @return [Array<Types::GuardrailPiiEntityConfig>]
    # @!attribute regexes_config
    #   <p>A list of regular expressions to configure to the AI Guardrail.</p>
    #   @return [Array<Types::GuardrailRegexConfig>]
    class AIGuardrailSensitiveInformationPolicyConfig < Struct.new(
      nil,
      :pii_entities_config,
      :regexes_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the AI Guardrail.</p>
    # @!attribute name
    #   <p>The name of the AI Guardrail.</p>
    #   @return [String]
    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute assistant_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>
    #   @return [String]
    # @!attribute ai_guardrail_id
    #   <p>The identifier of the Amazon Q in Connect AI Guardrail.</p>
    #   @return [String]
    # @!attribute ai_guardrail_arn
    #   <p>The Amazon Resource Name (ARN) of the AI Guardrail.</p>
    #   @return [String]
    # @!attribute modified_time
    #   <p>The time the AI Guardrail was last modified.</p>
    #   @return [Time]
    # @!attribute visibility_status
    #   <p>The visibility status of the AI Guardrail.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the AI Guardrail.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the AI Guardrail.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class AIGuardrailSummary < Struct.new(
      nil,
      :name,
      :assistant_id,
      :assistant_arn,
      :ai_guardrail_id,
      :ai_guardrail_arn,
      :modified_time,
      :visibility_status,
      :description,
      :status,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about topics that the AI Guardrail should identify and deny.</p>
    # @!attribute topics_config
    #   <p>A list of policies related to topics that the AI Guardrail should deny.</p>
    #   @return [Array<Types::GuardrailTopicConfig>]
    class AIGuardrailTopicPolicyConfig < Struct.new(
      nil,
      :topics_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the AI Guardrail version.</p>
    # @!attribute ai_guardrail_summary
    #   <p>The data for the summary of the AI Guardrail version.</p>
    #   @return [Types::AIGuardrailSummary]
    # @!attribute version_number
    #   <p>The version number for this AI Guardrail version.</p>
    #   @return [Integer]
    class AIGuardrailVersionSummary < Struct.new(
      nil,
      :ai_guardrail_summary,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the word policy to configured for the AI Guardrail.</p>
    # @!attribute words_config
    #   <p>A list of words to configure for the AI Guardrail.</p>
    #   @return [Array<Types::GuardrailWordConfig>]
    # @!attribute managed_word_lists_config
    #   <p>A list of managed words to configure for the AI Guardrail.</p>
    #   @return [Array<Types::GuardrailManagedWordsConfig>]
    class AIGuardrailWordPolicyConfig < Struct.new(
      nil,
      :words_config,
      :managed_word_lists_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The data for the AI Prompt</p>
    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute assistant_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>
    #   @return [String]
    # @!attribute ai_prompt_id
    #   <p>The identifier of the Amazon Q in Connect AI prompt.</p>
    #   @return [String]
    # @!attribute ai_prompt_arn
    #   <p>The Amazon Resource Name (ARN) of the AI Prompt.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the AI Prompt</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of this AI Prompt.</p>
    #   @return [String]
    # @!attribute template_type
    #   <p>The type of the prompt template for this AI Prompt.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The identifier of the model used for this AI Prompt. The following model Ids are supported:</p> <ul> <li> <p> <code>anthropic.claude-3-haiku--v1:0</code> </p> </li> <li> <p> <code>apac.amazon.nova-lite-v1:0</code> </p> </li> <li> <p> <code>apac.amazon.nova-micro-v1:0</code> </p> </li> <li> <p> <code>apac.amazon.nova-pro-v1:0</code> </p> </li> <li> <p> <code>apac.anthropic.claude-3-5-sonnet--v2:0</code> </p> </li> <li> <p> <code>apac.anthropic.claude-3-haiku-20240307-v1:0</code> </p> </li> <li> <p> <code>eu.amazon.nova-lite-v1:0</code> </p> </li> <li> <p> <code>eu.amazon.nova-micro-v1:0</code> </p> </li> <li> <p> <code>eu.amazon.nova-pro-v1:0</code> </p> </li> <li> <p> <code>eu.anthropic.claude-3-7-sonnet-20250219-v1:0</code> </p> </li> <li> <p> <code>eu.anthropic.claude-3-haiku-20240307-v1:0</code> </p> </li> <li> <p> <code>us.amazon.nova-lite-v1:0</code> </p> </li> <li> <p> <code>us.amazon.nova-micro-v1:0</code> </p> </li> <li> <p> <code>us.amazon.nova-pro-v1:0</code> </p> </li> <li> <p> <code>us.anthropic.claude-3-5-haiku-20241022-v1:0</code> </p> </li> <li> <p> <code>us.anthropic.claude-3-7-sonnet-20250219-v1:0</code> </p> </li> <li> <p> <code>us.anthropic.claude-3-haiku-20240307-v1:0</code> </p> </li> </ul>
    #   @return [String]
    # @!attribute api_format
    #   <p>The API format used for this AI Prompt.</p>
    #   @return [String]
    # @!attribute template_configuration
    #   <p>The configuration of the prompt template for this AI Prompt.</p>
    #   @return [Types::AIPromptTemplateConfiguration]
    # @!attribute modified_time
    #   <p>The time the AI Prompt was last modified.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the AI Prompt.</p>
    #   @return [String]
    # @!attribute visibility_status
    #   <p>The visibility status of the AI Prompt.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute origin
    #   <p>The origin of the AI Prompt. <code>SYSTEM</code> for a default AI Prompt created by Q in Connect or <code>CUSTOMER</code> for an AI Prompt created by calling AI Prompt creation APIs. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the AI Prompt.</p>
    #   @return [String]
    class AIPromptData < Struct.new(
      nil,
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
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the AI Prompt.</p>
    # @!attribute name
    #   <p>The name of the AI Prompt.</p>
    #   @return [String]
    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute assistant_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>
    #   @return [String]
    # @!attribute ai_prompt_id
    #   <p>The identifier of the Amazon Q in Connect AI prompt.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of this AI Prompt.</p>
    #   @return [String]
    # @!attribute ai_prompt_arn
    #   <p>The Amazon Resource Name (ARN) of the AI Prompt.</p>
    #   @return [String]
    # @!attribute modified_time
    #   <p>The time the AI Prompt was last modified.</p>
    #   @return [Time]
    # @!attribute template_type
    #   <p>The type of the prompt template for this AI Prompt.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The identifier of the model used for this AI Prompt. Model Ids supported are: <code>anthropic.claude-3-haiku-20240307-v1:0</code>.</p>
    #   @return [String]
    # @!attribute api_format
    #   <p>The API format used for this AI Prompt.</p>
    #   @return [String]
    # @!attribute visibility_status
    #   <p>The visibility status of the AI Prompt.</p>
    #   @return [String]
    # @!attribute origin
    #   <p>The origin of the AI Prompt. <code>SYSTEM</code> for a default AI Prompt created by Q in Connect or <code>CUSTOMER</code> for an AI Prompt created by calling AI Prompt creation APIs. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the AI Prompt.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the AI Prompt.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class AIPromptSummary < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A typed union that specifies the configuration for a prompt template based on its type.</p>
    # @!attribute text_full_ai_prompt_edit_template_configuration
    #   <p>The configuration for a prompt template that supports full textual prompt configuration using a YAML prompt.</p>
    #   @return [Types::TextFullAIPromptEditTemplateConfiguration]
    class AIPromptTemplateConfiguration < Struct.new(
      :text_full_ai_prompt_edit_template_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class TextFullAIPromptEditTemplateConfiguration < AIPromptTemplateConfiguration; end
      class Unknown < AIPromptTemplateConfiguration; end
    end

    # <p>The summary of the AI Prompt version.</p>
    # @!attribute ai_prompt_summary
    #   <p>The date for the summary of the AI Prompt version.</p>
    #   @return [Types::AIPromptSummary]
    # @!attribute version_number
    #   <p>The version number for this AI Prompt version.</p>
    #   @return [Integer]
    class AIPromptVersionSummary < Struct.new(
      nil,
      :ai_prompt_summary,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute message_template_id
    #   <p>The identifier of the message template. Can be either the ID or the ARN. It cannot contain any qualifier.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number of the message template version to activate.</p>
    #   @return [Integer]
    class ActivateMessageTemplateRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :message_template_id,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_template_arn
    #   <p>The Amazon Resource Name (ARN) of the message template.</p>
    #   @return [String]
    # @!attribute message_template_id
    #   <p>The identifier of the message template.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number of the message template version that is activated.</p>
    #   @return [Integer]
    class ActivateMessageTemplateResponse < Struct.new(
      nil,
      :message_template_arn,
      :message_template_id,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an agent.</p>
    # @!attribute first_name
    #   <p>The agent’s first name as entered in their Amazon Connect user account.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>The agent’s last name as entered in their Amazon Connect user account.</p>
    #   @return [String]
    class AgentAttributes < Struct.new(
      nil,
      :first_name,
      :last_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Content association data for a <a href="https://docs.aws.amazon.com/connect/latest/adminguide/step-by-step-guided-experiences.html">step-by-step guide</a>.</p>
    # @!attribute flow_id
    #   <p> The Amazon Resource Name (ARN) of an Amazon Connect flow. Step-by-step guides are a type of flow.</p>
    #   @return [String]
    class AmazonConnectGuideAssociationData < Struct.new(
      nil,
      :flow_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the <code>ANSWER_RECOMMENDATION</code> AI Agent type.</p>
    # @!attribute intent_labeling_generation_ai_prompt_id
    #   <p>The AI Prompt identifier for the Intent Labeling prompt used by the <code>ANSWER_RECOMMENDATION</code> AI Agent.</p>
    #   @return [String]
    # @!attribute query_reformulation_ai_prompt_id
    #   <p>The AI Prompt identifier for the Query Reformulation prompt used by the <code>ANSWER_RECOMMENDATION</code> AI Agent.</p>
    #   @return [String]
    # @!attribute answer_generation_ai_prompt_id
    #   <p>The AI Prompt identifier for the Answer Generation prompt used by the <code>ANSWER_RECOMMENDATION</code> AI Agent.</p>
    #   @return [String]
    # @!attribute answer_generation_ai_guardrail_id
    #   <p>The AI Guardrail identifier for the Answer Generation Guardrail used by the <code>ANSWER_RECOMMENDATION</code> AI Agent.</p>
    #   @return [String]
    # @!attribute association_configurations
    #   <p>The association configurations for overriding behavior on this AI Agent.</p>
    #   @return [Array<Types::AssociationConfiguration>]
    # @!attribute locale
    #   <p>The locale to which specifies the language and region settings that determine the response language for <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_amazon-q-connect_QueryAssistant.html">QueryAssistant</a>.</p> <note> <p>For more information on supported locales, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/supported-languages.html#qic-notes-languages">Language support for Amazon Q in Connect</a>.</p> </note>
    #   @return [String]
    class AnswerRecommendationAIAgentConfiguration < Struct.new(
      nil,
      :intent_labeling_generation_ai_prompt_id,
      :query_reformulation_ai_prompt_id,
      :answer_generation_ai_prompt_id,
      :answer_generation_ai_guardrail_id,
      :association_configurations,
      :locale,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information for Amazon AppIntegrations to automatically ingest content.</p>
    # @!attribute app_integration_arn
    #   <p>The Amazon Resource Name (ARN) of the AppIntegrations DataIntegration to use for ingesting content.</p> <ul> <li> <p> For <a href="https://developer.salesforce.com/docs/atlas.en-us.knowledge_dev.meta/knowledge_dev/sforce_api_objects_knowledge__kav.htm"> Salesforce</a>, your AppIntegrations DataIntegration must have an ObjectConfiguration if objectFields is not provided, including at least <code>Id</code>, <code>ArticleNumber</code>, <code>VersionNumber</code>, <code>Title</code>, <code>PublishStatus</code>, and <code>IsDeleted</code> as source fields. </p> </li> <li> <p> For <a href="https://developer.servicenow.com/dev.do#!/reference/api/rome/rest/knowledge-management-api"> ServiceNow</a>, your AppIntegrations DataIntegration must have an ObjectConfiguration if objectFields is not provided, including at least <code>number</code>, <code>short_description</code>, <code>sys_mod_count</code>, <code>workflow_state</code>, and <code>active</code> as source fields. </p> </li> <li> <p> For <a href="https://developer.zendesk.com/api-reference/help_center/help-center-api/articles/"> Zendesk</a>, your AppIntegrations DataIntegration must have an ObjectConfiguration if <code>objectFields</code> is not provided, including at least <code>id</code>, <code>title</code>, <code>updated_at</code>, and <code>draft</code> as source fields. </p> </li> <li> <p> For <a href="https://learn.microsoft.com/en-us/sharepoint/dev/sp-add-ins/sharepoint-net-server-csom-jsom-and-rest-api-index">SharePoint</a>, your AppIntegrations DataIntegration must have a FileConfiguration, including only file extensions that are among <code>docx</code>, <code>pdf</code>, <code>html</code>, <code>htm</code>, and <code>txt</code>. </p> </li> <li> <p> For <a href="http://aws.amazon.com/s3/">Amazon S3</a>, the ObjectConfiguration and FileConfiguration of your AppIntegrations DataIntegration must be null. The <code>SourceURI</code> of your DataIntegration must use the following format: <code>s3://your_s3_bucket_name</code>.</p> <important> <p>The bucket policy of the corresponding S3 bucket must allow the Amazon Web Services principal <code>app-integrations.amazonaws.com</code> to perform <code>s3:ListBucket</code>, <code>s3:GetObject</code>, and <code>s3:GetBucketLocation</code> against the bucket.</p> </important> </li> </ul>
    #   @return [String]
    # @!attribute object_fields
    #   <p>The fields from the source that are made available to your agents in Amazon Q in Connect. Optional if ObjectConfiguration is included in the provided DataIntegration. </p> <ul> <li> <p> For <a href="https://developer.salesforce.com/docs/atlas.en-us.knowledge_dev.meta/knowledge_dev/sforce_api_objects_knowledge__kav.htm"> Salesforce</a>, you must include at least <code>Id</code>, <code>ArticleNumber</code>, <code>VersionNumber</code>, <code>Title</code>, <code>PublishStatus</code>, and <code>IsDeleted</code>. </p> </li> <li> <p>For <a href="https://developer.servicenow.com/dev.do#!/reference/api/rome/rest/knowledge-management-api"> ServiceNow</a>, you must include at least <code>number</code>, <code>short_description</code>, <code>sys_mod_count</code>, <code>workflow_state</code>, and <code>active</code>. </p> </li> <li> <p>For <a href="https://developer.zendesk.com/api-reference/help_center/help-center-api/articles/"> Zendesk</a>, you must include at least <code>id</code>, <code>title</code>, <code>updated_at</code>, and <code>draft</code>. </p> </li> </ul> <p>Make sure to include additional fields. These fields are indexed and used to source recommendations. </p>
    #   @return [Array<String>]
    class AppIntegrationsConfiguration < Struct.new(
      nil,
      :app_integration_arn,
      :object_fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the assistant association.</p>
    # @!attribute assistant_association_id
    #   <p>The identifier of the assistant association.</p>
    #   @return [String]
    # @!attribute assistant_association_arn
    #   <p>The Amazon Resource Name (ARN) of the assistant association.</p>
    #   @return [String]
    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant.</p>
    #   @return [String]
    # @!attribute assistant_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>
    #   @return [String]
    # @!attribute association_type
    #   <p>The type of association.</p>
    #   @return [String]
    # @!attribute association_data
    #   <p>A union type that currently has a single argument, the knowledge base ID.</p>
    #   @return [Types::AssistantAssociationOutputData]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class AssistantAssociationData < Struct.new(
      nil,
      :assistant_association_id,
      :assistant_association_arn,
      :assistant_id,
      :assistant_arn,
      :association_type,
      :association_data,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The data that is input into Amazon Q in Connect as a result of the assistant association.</p>
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge base.</p>
    #   @return [String]
    class AssistantAssociationInputData < Struct.new(
      :knowledge_base_id,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class KnowledgeBaseId < AssistantAssociationInputData; end
      class Unknown < AssistantAssociationInputData; end
    end

    # <p>The data that is output as a result of the assistant association.</p>
    # @!attribute knowledge_base_association
    #   <p>The knowledge base where output data is sent.</p>
    #   @return [Types::KnowledgeBaseAssociationData]
    class AssistantAssociationOutputData < Struct.new(
      :knowledge_base_association,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class KnowledgeBaseAssociation < AssistantAssociationOutputData; end
      class Unknown < AssistantAssociationOutputData; end
    end

    # <p>Summary information about the assistant association.</p>
    # @!attribute assistant_association_id
    #   <p>The identifier of the assistant association.</p>
    #   @return [String]
    # @!attribute assistant_association_arn
    #   <p>The Amazon Resource Name (ARN) of the assistant association.</p>
    #   @return [String]
    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant.</p>
    #   @return [String]
    # @!attribute assistant_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>
    #   @return [String]
    # @!attribute association_type
    #   <p>The type of association.</p>
    #   @return [String]
    # @!attribute association_data
    #   <p>The association data.</p>
    #   @return [Types::AssistantAssociationOutputData]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class AssistantAssociationSummary < Struct.new(
      nil,
      :assistant_association_id,
      :assistant_association_arn,
      :assistant_id,
      :assistant_arn,
      :association_type,
      :association_data,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The capability configuration for an Amazon Q in Connect assistant. </p>
    # @!attribute type
    #   <p>The type of Amazon Q in Connect assistant capability. </p>
    #   @return [String]
    class AssistantCapabilityConfiguration < Struct.new(
      nil,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The assistant data.</p>
    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant.</p>
    #   @return [String]
    # @!attribute assistant_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of assistant.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the assistant.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute server_side_encryption_configuration
    #   <p>The configuration information for the customer managed key used for encryption. </p> <p>This KMS key must have a policy that allows <code>kms:CreateGrant</code>, <code>kms:DescribeKey</code>, <code>kms:Decrypt</code>, and <code>kms:GenerateDataKey*</code> permissions to the IAM identity using the key to invoke Amazon Q in Connect. To use Amazon Q in Connect with chat, the key policy must also allow <code>kms:Decrypt</code>, <code>kms:GenerateDataKey*</code>, and <code>kms:DescribeKey</code> permissions to the <code>connect.amazonaws.com</code> service principal. </p> <p>For more information about setting up a customer managed key for Amazon Q in Connect, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html">Enable Amazon Q in Connect for your instance</a>.</p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    # @!attribute integration_configuration
    #   <p>The configuration information for the Amazon Q in Connect assistant integration.</p>
    #   @return [Types::AssistantIntegrationConfiguration]
    # @!attribute capability_configuration
    #   <p>The configuration information for the Amazon Q in Connect assistant capability. </p>
    #   @return [Types::AssistantCapabilityConfiguration]
    # @!attribute ai_agent_configuration
    #   <p>The configuration of the AI Agents (mapped by AI Agent Type to AI Agent version) that is set on the Amazon Q in Connect Assistant.</p>
    #   @return [Hash<String, Types::AIAgentConfigurationData>]
    class AssistantData < Struct.new(
      nil,
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
      :ai_agent_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration information for the Amazon Q in Connect assistant integration.</p>
    # @!attribute topic_integration_arn
    #   <p>The Amazon Resource Name (ARN) of the integrated Amazon SNS topic used for streaming chat messages.</p>
    #   @return [String]
    class AssistantIntegrationConfiguration < Struct.new(
      nil,
      :topic_integration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about the assistant.</p>
    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant.</p>
    #   @return [String]
    # @!attribute assistant_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the assistant.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the assistant.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the assistant.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the assistant.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute server_side_encryption_configuration
    #   <p>The configuration information for the customer managed key used for encryption. </p> <p>This KMS key must have a policy that allows <code>kms:CreateGrant</code>, <code>kms:DescribeKey</code>, <code>kms:Decrypt</code>, and <code>kms:GenerateDataKey*</code> permissions to the IAM identity using the key to invoke Amazon Q in Connect. To use Amazon Q in Connect with chat, the key policy must also allow <code>kms:Decrypt</code>, <code>kms:GenerateDataKey*</code>, and <code>kms:DescribeKey</code> permissions to the <code>connect.amazonaws.com</code> service principal. </p> <p>For more information about setting up a customer managed key for Amazon Q in Connect, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html">Enable Amazon Q in Connect for your instance</a>.</p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    # @!attribute integration_configuration
    #   <p>The configuration information for the Amazon Q in Connect assistant integration.</p>
    #   @return [Types::AssistantIntegrationConfiguration]
    # @!attribute capability_configuration
    #   <p>The configuration information for the Amazon Q in Connect assistant capability. </p>
    #   @return [Types::AssistantCapabilityConfiguration]
    # @!attribute ai_agent_configuration
    #   <p>The configuration of the AI Agents (mapped by AI Agent Type to AI Agent version) that is set on the Amazon Q in Connect Assistant.</p>
    #   @return [Hash<String, Types::AIAgentConfigurationData>]
    class AssistantSummary < Struct.new(
      nil,
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
      :ai_agent_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an Amazon Q in Connect Assistant Association.</p>
    # @!attribute association_id
    #   <p>The identifier of the association for this Association Configuration.</p>
    #   @return [String]
    # @!attribute association_type
    #   <p>The type of the association for this Association Configuration.</p>
    #   @return [String]
    # @!attribute association_configuration_data
    #   <p>The data of the configuration for an Amazon Q in Connect Assistant Association.</p>
    #   @return [Types::AssociationConfigurationData]
    class AssociationConfiguration < Struct.new(
      nil,
      :association_id,
      :association_type,
      :association_configuration_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A typed union of the data of the configuration for an Amazon Q in Connect Assistant Association.</p>
    # @!attribute knowledge_base_association_configuration_data
    #   <p>The data of the configuration for a <code>KNOWLEDGE_BASE</code> type Amazon Q in Connect Assistant Association.</p>
    #   @return [Types::KnowledgeBaseAssociationConfigurationData]
    class AssociationConfigurationData < Struct.new(
      :knowledge_base_association_configuration_data,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class KnowledgeBaseAssociationConfigurationData < AssociationConfigurationData; end
      class Unknown < AssociationConfigurationData; end
    end

    # <p>Settings for a foundation model used to parse documents for a data source.</p>
    # @!attribute model_arn
    #   <p>The ARN of the foundation model.</p>
    #   @return [String]
    # @!attribute parsing_prompt
    #   <p>Instructions for interpreting the contents of a document.</p>
    #   @return [Types::ParsingPrompt]
    class BedrockFoundationModelConfigurationForParsing < Struct.new(
      nil,
      :model_arn,
      :parsing_prompt,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about how to chunk the documents in the data source. A chunk refers to an excerpt from a data source that is returned when the knowledge base that it belongs to is queried.</p>
    # @!attribute chunking_strategy
    #   <p>Knowledge base can split your source data into chunks. A chunk refers to an excerpt from a data source that is returned when the knowledge base that it belongs to is queried. You have the following options for chunking your data. If you opt for <code>NONE</code>, then you may want to pre-process your files by splitting them up such that each file corresponds to a chunk.</p>
    #   @return [String]
    # @!attribute fixed_size_chunking_configuration
    #   <p>Configurations for when you choose fixed-size chunking. If you set the <code>chunkingStrategy</code> as <code>NONE</code>, exclude this field.</p>
    #   @return [Types::FixedSizeChunkingConfiguration]
    # @!attribute hierarchical_chunking_configuration
    #   <p>Settings for hierarchical document chunking for a data source. Hierarchical chunking splits documents into layers of chunks where the first layer contains large chunks, and the second layer contains smaller chunks derived from the first layer.</p>
    #   @return [Types::HierarchicalChunkingConfiguration]
    # @!attribute semantic_chunking_configuration
    #   <p>Settings for semantic document chunking for a data source. Semantic chunking splits a document into smaller documents based on groups of similar content derived from the text with natural language processing.</p>
    #   @return [Types::SemanticChunkingConfiguration]
    class ChunkingConfiguration < Struct.new(
      nil,
      :chunking_strategy,
      :fixed_size_chunking_configuration,
      :hierarchical_chunking_configuration,
      :semantic_chunking_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about where the text with a citation begins and ends in the generated output.</p>
    # @!attribute begin_offset_inclusive
    #   <p>Where the text with a citation starts in the generated output.</p>
    #   @return [Integer]
    # @!attribute end_offset_exclusive
    #   <p>Where the text with a citation ends in the generated output.</p>
    #   @return [Integer]
    class CitationSpan < Struct.new(
      nil,
      :begin_offset_inclusive,
      :end_offset_exclusive,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:begin_offset_inclusive] = 0 unless options.key?(:begin_offset_inclusive)
        options[:end_offset_exclusive] = 0 unless options.key?(:end_offset_exclusive)
        super
      end
    end

    # <p>The configuration information of the external data source.</p>
    # @!attribute connect_configuration
    #   <p>The configuration information of the Amazon Connect data source.</p>
    #   @return [Types::ConnectConfiguration]
    class Configuration < Struct.new(
      :connect_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ConnectConfiguration < Configuration; end
      class Unknown < Configuration; end
    end

    # <p>The request could not be processed because of conflict in the current state of the resource. For example, if you're using a <code>Create</code> API (such as <code>CreateAssistant</code>) that accepts name, a conflicting resource (usually with the same name) is being created or mutated.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration information of the Amazon Connect data source.</p>
    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #   @return [String]
    class ConnectConfiguration < Struct.new(
      nil,
      :instance_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The contents of a content association.</p>
    # @!attribute amazon_connect_guide_association
    #   <p>The data of the step-by-step guide association.</p>
    #   @return [Types::AmazonConnectGuideAssociationData]
    class ContentAssociationContents < Struct.new(
      :amazon_connect_guide_association,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AmazonConnectGuideAssociation < ContentAssociationContents; end
      class Unknown < ContentAssociationContents; end
    end

    # <p>Information about the content association.</p>
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute content_id
    #   <p>The identifier of the content.</p>
    #   @return [String]
    # @!attribute content_arn
    #   <p>The Amazon Resource Name (ARN) of the content.</p>
    #   @return [String]
    # @!attribute content_association_id
    #   <p>The identifier of the content association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute content_association_arn
    #   <p>The Amazon Resource Name (ARN) of the content association.</p>
    #   @return [String]
    # @!attribute association_type
    #   <p>The type of association.</p>
    #   @return [String]
    # @!attribute association_data
    #   <p>The content association.</p>
    #   @return [Types::ContentAssociationContents]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class ContentAssociationData < Struct.new(
      nil,
      :knowledge_base_id,
      :knowledge_base_arn,
      :content_id,
      :content_arn,
      :content_association_id,
      :content_association_arn,
      :association_type,
      :association_data,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a content association.</p>
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute content_id
    #   <p>The identifier of the content.</p>
    #   @return [String]
    # @!attribute content_arn
    #   <p>The Amazon Resource Name (ARN) of the content.</p>
    #   @return [String]
    # @!attribute content_association_id
    #   <p>The identifier of the content association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute content_association_arn
    #   <p>The Amazon Resource Name (ARN) of the content association.</p>
    #   @return [String]
    # @!attribute association_type
    #   <p>The type of association.</p>
    #   @return [String]
    # @!attribute association_data
    #   <p>The content association.</p>
    #   @return [Types::ContentAssociationContents]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class ContentAssociationSummary < Struct.new(
      nil,
      :knowledge_base_id,
      :knowledge_base_arn,
      :content_id,
      :content_arn,
      :content_association_id,
      :content_association_arn,
      :association_type,
      :association_data,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the content.</p>
    # @!attribute content_arn
    #   <p>The Amazon Resource Name (ARN) of the content.</p>
    #   @return [String]
    # @!attribute content_id
    #   <p>The identifier of the content.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the content.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The identifier of the content revision.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the content.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The media type of the content.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the content.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>A key/value map to store attributes without affecting tagging or recommendations. For example, when synchronizing data between an external system and Amazon Q in Connect, you can store an external version identifier as metadata to utilize for determining drift.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute link_out_uri
    #   <p>The URI of the content.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL of the content.</p>
    #   @return [String]
    # @!attribute url_expiry
    #   <p>The expiration time of the URL as an epoch timestamp.</p>
    #   @return [Time]
    class ContentData < Struct.new(
      nil,
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
      :url_expiry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the content data.</p>
    # @!attribute text_data
    #   <p>Details about the content text data.</p>
    #   @return [Types::TextData]
    # @!attribute ranking_data
    #   <p>Details about the content ranking data.</p>
    #   @return [Types::RankingData]
    class ContentDataDetails < Struct.new(
      nil,
      :text_data,
      :ranking_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the feedback.</p>
    # @!attribute generative_content_feedback_data
    #   <p>Information about the feedback for a generative target type.</p>
    #   @return [Types::GenerativeContentFeedbackData]
    class ContentFeedbackData < Struct.new(
      :generative_content_feedback_data,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class GenerativeContentFeedbackData < ContentFeedbackData; end
      class Unknown < ContentFeedbackData; end
    end

    # <p>Reference information about the content.</p>
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge base.</p>
    #   @return [String]
    # @!attribute content_arn
    #   <p>The Amazon Resource Name (ARN) of the content.</p>
    #   @return [String]
    # @!attribute content_id
    #   <p>The identifier of the content.</p>
    #   @return [String]
    # @!attribute source_url
    #   <p>The web URL of the source content.</p>
    #   @return [String]
    # @!attribute reference_type
    #   <p>The type of reference content.</p>
    #   @return [String]
    class ContentReference < Struct.new(
      nil,
      :knowledge_base_arn,
      :knowledge_base_id,
      :content_arn,
      :content_id,
      :source_url,
      :reference_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about the content.</p>
    # @!attribute content_arn
    #   <p>The Amazon Resource Name (ARN) of the content.</p>
    #   @return [String]
    # @!attribute content_id
    #   <p>The identifier of the content.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge base.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the content.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The identifier of the revision of the content.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the content.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The media type of the content.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the content.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>A key/value map to store attributes without affecting tagging or recommendations. For example, when synchronizing data between an external system and Amazon Q in Connect, you can store an external version identifier as metadata to utilize for determining drift.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class ContentSummary < Struct.new(
      nil,
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
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The conversation context to include in SendMessage.</p>
    # @!attribute self_service_conversation_history
    #   <p>The self service conversation history before the Amazon Q in Connect session.</p>
    #   @return [Array<Types::SelfServiceConversationHistory>]
    class ConversationContext < Struct.new(
      nil,
      :self_service_conversation_history,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The conversation state associated to a message.</p>
    # @!attribute status
    #   <p>The status of the conversation state.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason of the conversation state.</p>
    #   @return [String]
    class ConversationState < Struct.new(
      nil,
      :status,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href="http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>..</p>
    #   @return [String]
    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the AI Agent.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the AI Agent.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration of the AI Agent.</p>
    #   @return [Types::AIAgentConfiguration]
    # @!attribute visibility_status
    #   <p>The visibility status of the AI Agent.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute description
    #   <p>The description of the AI Agent.</p>
    #   @return [String]
    class CreateAIAgentRequest < Struct.new(
      nil,
      :client_token,
      :assistant_id,
      :name,
      :type,
      :configuration,
      :visibility_status,
      :tags,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ai_agent
    #   <p>The data of the created AI Agent.</p>
    #   @return [Types::AIAgentData]
    class CreateAIAgentResponse < Struct.new(
      nil,
      :ai_agent,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute ai_agent_id
    #   <p>The identifier of the Amazon Q in Connect AI Agent.</p>
    #   @return [String]
    # @!attribute modified_time
    #   <p>The modification time of the AI Agent should be tracked for version creation. This field should be specified to avoid version creation when simultaneous update to the underlying AI Agent are possible. The value should be the modifiedTime returned from the request to create or update an AI Agent so that version creation can fail if an update to the AI Agent post the specified modification time has been made.</p>
    #   @return [Time]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href="http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>..</p>
    #   @return [String]
    class CreateAIAgentVersionRequest < Struct.new(
      nil,
      :assistant_id,
      :ai_agent_id,
      :modified_time,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ai_agent
    #   <p>The data of the AI Agent version.</p>
    #   @return [Types::AIAgentData]
    # @!attribute version_number
    #   <p>The version number of the AI Agent version.</p>
    #   @return [Integer]
    class CreateAIAgentVersionResponse < Struct.new(
      nil,
      :ai_agent,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href="http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>..</p>
    #   @return [String]
    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the AI Guardrail.</p>
    #   @return [String]
    # @!attribute blocked_input_messaging
    #   <p>The message to return when the AI Guardrail blocks a prompt.</p>
    #   @return [String]
    # @!attribute blocked_outputs_messaging
    #   <p>The message to return when the AI Guardrail blocks a model response.</p>
    #   @return [String]
    # @!attribute visibility_status
    #   <p>The visibility status of the AI Guardrail.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the AI Guardrail.</p>
    #   @return [String]
    # @!attribute topic_policy_config
    #   <p>The topic policies to configure for the AI Guardrail.</p>
    #   @return [Types::AIGuardrailTopicPolicyConfig]
    # @!attribute content_policy_config
    #   <p>The content filter policies to configure for the AI Guardrail.</p>
    #   @return [Types::AIGuardrailContentPolicyConfig]
    # @!attribute word_policy_config
    #   <p>The word policy you configure for the AI Guardrail.</p>
    #   @return [Types::AIGuardrailWordPolicyConfig]
    # @!attribute sensitive_information_policy_config
    #   <p>The sensitive information policy to configure for the AI Guardrail.</p>
    #   @return [Types::AIGuardrailSensitiveInformationPolicyConfig]
    # @!attribute contextual_grounding_policy_config
    #   <p>The contextual grounding policy configuration used to create an AI Guardrail.</p>
    #   @return [Types::AIGuardrailContextualGroundingPolicyConfig]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateAIGuardrailRequest < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ai_guardrail
    #   <p>The data of the AI Guardrail.</p>
    #   @return [Types::AIGuardrailData]
    class CreateAIGuardrailResponse < Struct.new(
      nil,
      :ai_guardrail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute ai_guardrail_id
    #   <p>The identifier of the Amazon Q in Connect AI Guardrail.</p>
    #   @return [String]
    # @!attribute modified_time
    #   <p>The time the AI Guardrail was last modified.</p>
    #   @return [Time]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href="http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>..</p>
    #   @return [String]
    class CreateAIGuardrailVersionRequest < Struct.new(
      nil,
      :assistant_id,
      :ai_guardrail_id,
      :modified_time,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ai_guardrail
    #   <p>The data of the AI Guardrail version.</p>
    #   @return [Types::AIGuardrailData]
    # @!attribute version_number
    #   <p>The version number of the AI Guardrail version.</p>
    #   @return [Integer]
    class CreateAIGuardrailVersionResponse < Struct.new(
      nil,
      :ai_guardrail,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href="http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>..</p>
    #   @return [String]
    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the AI Prompt.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of this AI Prompt.</p>
    #   @return [String]
    # @!attribute template_configuration
    #   <p>The configuration of the prompt template for this AI Prompt.</p>
    #   @return [Types::AIPromptTemplateConfiguration]
    # @!attribute visibility_status
    #   <p>The visibility status of the AI Prompt.</p>
    #   @return [String]
    # @!attribute template_type
    #   <p>The type of the prompt template for this AI Prompt.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The identifier of the model used for this AI Prompt.</p> <note> <p>For information about which models are supported in each Amazon Web Services Region, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/create-ai-prompts.html#cli-create-aiprompt">Supported models for system/custom prompts</a>.</p> </note>
    #   @return [String]
    # @!attribute api_format
    #   <p>The API Format of the AI Prompt.</p> <p>Recommended values: <code>MESSAGES | TEXT_COMPLETIONS</code> </p> <note> <p>The values <code>ANTHROPIC_CLAUDE_MESSAGES | ANTHROPIC_CLAUDE_TEXT_COMPLETIONS</code> will be deprecated.</p> </note>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute description
    #   <p>The description of the AI Prompt.</p>
    #   @return [String]
    class CreateAIPromptRequest < Struct.new(
      nil,
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
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ai_prompt
    #   <p>The data of the AI Prompt.</p>
    #   @return [Types::AIPromptData]
    class CreateAIPromptResponse < Struct.new(
      nil,
      :ai_prompt,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute ai_prompt_id
    #   <p>The identifier of the Amazon Q in Connect AI prompt.</p>
    #   @return [String]
    # @!attribute modified_time
    #   <p>The time the AI Prompt was last modified.</p>
    #   @return [Time]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href="http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>..</p>
    #   @return [String]
    class CreateAIPromptVersionRequest < Struct.new(
      nil,
      :assistant_id,
      :ai_prompt_id,
      :modified_time,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ai_prompt
    #   <p>The data of the AI Prompt version.</p>
    #   @return [Types::AIPromptData]
    # @!attribute version_number
    #   <p>The version number of the AI Prompt version.</p>
    #   @return [Integer]
    class CreateAIPromptVersionResponse < Struct.new(
      nil,
      :ai_prompt,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute association_type
    #   <p>The type of association.</p>
    #   @return [String]
    # @!attribute association
    #   <p>The identifier of the associated resource.</p>
    #   @return [Types::AssistantAssociationInputData]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href="http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateAssistantAssociationInput < Struct.new(
      nil,
      :assistant_id,
      :association_type,
      :association,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_association
    #   <p>The assistant association.</p>
    #   @return [Types::AssistantAssociationData]
    class CreateAssistantAssociationOutput < Struct.new(
      nil,
      :assistant_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href="http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the assistant.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of assistant.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the assistant.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute server_side_encryption_configuration
    #   <p>The configuration information for the customer managed key used for encryption. </p> <p>The customer managed key must have a policy that allows <code>kms:CreateGrant</code>, <code> kms:DescribeKey</code>, <code>kms:Decrypt</code>, and <code>kms:GenerateDataKey*</code> permissions to the IAM identity using the key to invoke Amazon Q in Connect. To use Amazon Q in Connect with chat, the key policy must also allow <code>kms:Decrypt</code>, <code>kms:GenerateDataKey*</code>, and <code>kms:DescribeKey</code> permissions to the <code>connect.amazonaws.com</code> service principal. </p> <p>For more information about setting up a customer managed key for Amazon Q in Connect, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html">Enable Amazon Q in Connect for your instance</a>.</p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    class CreateAssistantInput < Struct.new(
      nil,
      :client_token,
      :name,
      :type,
      :description,
      :tags,
      :server_side_encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant
    #   <p>Information about the assistant.</p>
    #   @return [Types::AssistantData]
    class CreateAssistantOutput < Struct.new(
      nil,
      :assistant,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href="http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute content_id
    #   <p>The identifier of the content.</p>
    #   @return [String]
    # @!attribute association_type
    #   <p>The type of association.</p>
    #   @return [String]
    # @!attribute association
    #   <p>The identifier of the associated resource.</p>
    #   @return [Types::ContentAssociationContents]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateContentAssociationRequest < Struct.new(
      nil,
      :client_token,
      :knowledge_base_id,
      :content_id,
      :association_type,
      :association,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content_association
    #   <p>The association between Amazon Q in Connect content and another resource.</p>
    #   @return [Types::ContentAssociationData]
    class CreateContentAssociationResponse < Struct.new(
      nil,
      :content_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the content. Each piece of content in a knowledge base must have a unique name. You can retrieve a piece of content using only its knowledge base and its name with the <a href="https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_SearchContent.html">SearchContent</a> API.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the content. If not set, the title is equal to the name.</p>
    #   @return [String]
    # @!attribute override_link_out_uri
    #   <p>The URI you want to use for the article. If the knowledge base has a templateUri, setting this argument overrides it for this piece of content.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>A key/value map to store attributes without affecting tagging or recommendations. For example, when synchronizing data between an external system and Amazon Q in Connect, you can store an external version identifier as metadata to utilize for determining drift.</p>
    #   @return [Hash<String, String>]
    # @!attribute upload_id
    #   <p>A pointer to the uploaded asset. This value is returned by <a href="https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_StartContentUpload.html">StartContentUpload</a>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href="http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateContentInput < Struct.new(
      nil,
      :knowledge_base_id,
      :name,
      :title,
      :override_link_out_uri,
      :metadata,
      :upload_id,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content
    #   <p>The content.</p>
    #   @return [Types::ContentData]
    class CreateContentOutput < Struct.new(
      nil,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href="http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_type
    #   <p>The type of knowledge base. Only CUSTOM knowledge bases allow you to upload your own content. EXTERNAL knowledge bases support integrations with third-party systems whose content is synchronized automatically. </p>
    #   @return [String]
    # @!attribute source_configuration
    #   <p>The source of the knowledge base content. Only set this argument for EXTERNAL or Managed knowledge bases.</p>
    #   @return [Types::SourceConfiguration]
    # @!attribute rendering_configuration
    #   <p>Information about how to render the content.</p>
    #   @return [Types::RenderingConfiguration]
    # @!attribute vector_ingestion_configuration
    #   <p>Contains details about how to ingest the documents in a data source.</p>
    #   @return [Types::VectorIngestionConfiguration]
    # @!attribute server_side_encryption_configuration
    #   <p>The configuration information for the customer managed key used for encryption. </p> <p>This KMS key must have a policy that allows <code>kms:CreateGrant</code>, <code>kms:DescribeKey</code>, <code>kms:Decrypt</code>, and <code>kms:GenerateDataKey*</code> permissions to the IAM identity using the key to invoke Amazon Q in Connect.</p> <p>For more information about setting up a customer managed key for Amazon Q in Connect, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html">Enable Amazon Q in Connect for your instance</a>.</p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    # @!attribute description
    #   <p>The description.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateKnowledgeBaseInput < Struct.new(
      nil,
      :client_token,
      :name,
      :knowledge_base_type,
      :source_configuration,
      :rendering_configuration,
      :vector_ingestion_configuration,
      :server_side_encryption_configuration,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base
    #   <p>The knowledge base.</p>
    #   @return [Types::KnowledgeBaseData]
    class CreateKnowledgeBaseOutput < Struct.new(
      nil,
      :knowledge_base,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute message_template_id
    #   <p>The identifier of the message template. Can be either the ID or the ARN. It cannot contain any qualifier.</p>
    #   @return [String]
    # @!attribute content_disposition
    #   <p>The presentation information for the attachment file.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the attachment file being uploaded. The name should include the file extension.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The body of the attachment file being uploaded. It should be encoded using base64 encoding.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href="http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    class CreateMessageTemplateAttachmentRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :message_template_id,
      :content_disposition,
      :name,
      :body,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment
    #   <p>The message template attachment.</p>
    #   @return [Types::MessageTemplateAttachment]
    class CreateMessageTemplateAttachmentResponse < Struct.new(
      nil,
      :attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the message template.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the message template.</p>
    #   @return [Types::MessageTemplateContentProvider]
    # @!attribute description
    #   <p>The description of the message template.</p>
    #   @return [String]
    # @!attribute channel_subtype
    #   <p>The channel subtype this message template applies to.</p>
    #   @return [String]
    # @!attribute language
    #   <p>The language code value for the language in which the quick response is written. The supported language codes include <code>de_DE</code>, <code>en_US</code>, <code>es_ES</code>, <code>fr_FR</code>, <code>id_ID</code>, <code>it_IT</code>, <code>ja_JP</code>, <code>ko_KR</code>, <code>pt_BR</code>, <code>zh_CN</code>, <code>zh_TW</code> </p>
    #   @return [String]
    # @!attribute default_attributes
    #   <p>An object that specifies the default values to use for variables in the message template. This object contains different categories of key-value pairs. Each key defines a variable or placeholder in the message template. The corresponding value defines the default value for that variable.</p>
    #   @return [Types::MessageTemplateAttributes]
    # @!attribute grouping_configuration
    #   <p>The configuration information of the grouping of Amazon Q in Connect users.</p>
    #   @return [Types::GroupingConfiguration]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href="http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateMessageTemplateRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :name,
      :content,
      :description,
      :channel_subtype,
      :language,
      :default_attributes,
      :grouping_configuration,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_template
    #   <p>The message template.</p>
    #   @return [Types::MessageTemplateData]
    class CreateMessageTemplateResponse < Struct.new(
      nil,
      :message_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute message_template_id
    #   <p>The identifier of the message template. Can be either the ID or the ARN. It cannot contain any qualifier.</p>
    #   @return [String]
    # @!attribute message_template_content_sha256
    #   <p>The checksum value of the message template content that is referenced by the <code>$LATEST</code> qualifier. It can be returned in <code>MessageTemplateData</code> or <code>ExtendedMessageTemplateData</code>. It’s calculated by content, language, <code>defaultAttributes</code> and <code>Attachments</code> of the message template. If not supplied, the message template version will be created based on the message template content that is referenced by the <code>$LATEST</code> qualifier by default.</p>
    #   @return [String]
    class CreateMessageTemplateVersionRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :message_template_id,
      :message_template_content_sha256,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_template
    #   <p>The message template.</p>
    #   @return [Types::ExtendedMessageTemplateData]
    class CreateMessageTemplateVersionResponse < Struct.new(
      nil,
      :message_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the quick response.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the quick response.</p>
    #   @return [Types::QuickResponseDataProvider]
    # @!attribute content_type
    #   <p>The media type of the quick response content.</p> <ul> <li> <p>Use <code>application/x.quickresponse;format=plain</code> for a quick response written in plain text.</p> </li> <li> <p>Use <code>application/x.quickresponse;format=markdown</code> for a quick response written in richtext.</p> </li> </ul>
    #   @return [String]
    # @!attribute grouping_configuration
    #   <p>The configuration information of the user groups that the quick response is accessible to.</p>
    #   @return [Types::GroupingConfiguration]
    # @!attribute description
    #   <p>The description of the quick response.</p>
    #   @return [String]
    # @!attribute shortcut_key
    #   <p>The shortcut key of the quick response. The value should be unique across the knowledge base. </p>
    #   @return [String]
    # @!attribute is_active
    #   <p>Whether the quick response is active.</p>
    #   @return [Boolean]
    # @!attribute channels
    #   <p>The Amazon Connect channels this quick response applies to.</p>
    #   @return [Array<String>]
    # @!attribute language
    #   <p>The language code value for the language in which the quick response is written. The supported language codes include <code>de_DE</code>, <code>en_US</code>, <code>es_ES</code>, <code>fr_FR</code>, <code>id_ID</code>, <code>it_IT</code>, <code>ja_JP</code>, <code>ko_KR</code>, <code>pt_BR</code>, <code>zh_CN</code>, <code>zh_TW</code> </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href="http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateQuickResponseRequest < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute quick_response
    #   <p>The quick response.</p>
    #   @return [Types::QuickResponseData]
    class CreateQuickResponseResponse < Struct.new(
      nil,
      :quick_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href="http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the session.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute tag_filter
    #   <p>An object that can be used to specify Tag conditions. </p>
    #   @return [Types::TagFilter]
    # @!attribute ai_agent_configuration
    #   <p>The configuration of the AI Agents (mapped by AI Agent Type to AI Agent version) that should be used by Amazon Q in Connect for this Session.</p>
    #   @return [Hash<String, Types::AIAgentConfigurationData>]
    # @!attribute contact_arn
    #   <p>The Amazon Resource Name (ARN) of the email contact in Amazon Connect. Used to retrieve email content and establish session context for AI-powered email assistance.</p>
    #   @return [String]
    class CreateSessionInput < Struct.new(
      nil,
      :client_token,
      :assistant_id,
      :name,
      :description,
      :tags,
      :tag_filter,
      :ai_agent_configuration,
      :contact_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session
    #   <p>The session.</p>
    #   @return [Types::SessionData]
    class CreateSessionOutput < Struct.new(
      nil,
      :session,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The customer profile attributes that are used with the message template.</p>
    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #   @return [String]
    # @!attribute profile_arn
    #   <p>The ARN of a customer profile.</p>
    #   @return [String]
    # @!attribute first_name
    #   <p>The customer's first name.</p>
    #   @return [String]
    # @!attribute middle_name
    #   <p>The customer's middle name.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>The customer's last name.</p>
    #   @return [String]
    # @!attribute account_number
    #   <p>A unique account number that you have given to the customer.</p>
    #   @return [String]
    # @!attribute email_address
    #   <p>The customer's email address, which has not been specified as a personal or business address.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The customer's phone number, which has not been specified as a mobile, home, or business number.</p>
    #   @return [String]
    # @!attribute additional_information
    #   <p>Any additional information relevant to the customer's profile.</p>
    #   @return [String]
    # @!attribute party_type
    #   <p>The customer's party type.</p>
    #   @return [String]
    # @!attribute business_name
    #   <p>The name of the customer's business.</p>
    #   @return [String]
    # @!attribute birth_date
    #   <p>The customer's birth date.</p>
    #   @return [String]
    # @!attribute gender
    #   <p>The customer's gender.</p>
    #   @return [String]
    # @!attribute mobile_phone_number
    #   <p>The customer's mobile phone number.</p>
    #   @return [String]
    # @!attribute home_phone_number
    #   <p>The customer's mobile phone number.</p>
    #   @return [String]
    # @!attribute business_phone_number
    #   <p>The customer's business phone number.</p>
    #   @return [String]
    # @!attribute business_email_address
    #   <p>The customer's business email address.</p>
    #   @return [String]
    # @!attribute address1
    #   <p>The first line of a customer address.</p>
    #   @return [String]
    # @!attribute address2
    #   <p>The second line of a customer address.</p>
    #   @return [String]
    # @!attribute address3
    #   <p>The third line of a customer address.</p>
    #   @return [String]
    # @!attribute address4
    #   <p>The fourth line of a customer address.</p>
    #   @return [String]
    # @!attribute city
    #   <p>The city in which a customer lives.</p>
    #   @return [String]
    # @!attribute county
    #   <p>The county in which a customer lives.</p>
    #   @return [String]
    # @!attribute country
    #   <p>The country in which a customer lives.</p>
    #   @return [String]
    # @!attribute postal_code
    #   <p>The postal code of a customer address.</p>
    #   @return [String]
    # @!attribute province
    #   <p>The province in which a customer lives.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state in which a customer lives.</p>
    #   @return [String]
    # @!attribute shipping_address1
    #   <p>The first line of a customer’s shipping address.</p>
    #   @return [String]
    # @!attribute shipping_address2
    #   <p>The second line of a customer’s shipping address.</p>
    #   @return [String]
    # @!attribute shipping_address3
    #   <p>The third line of a customer’s shipping address.</p>
    #   @return [String]
    # @!attribute shipping_address4
    #   <p>The fourth line of a customer’s shipping address.</p>
    #   @return [String]
    # @!attribute shipping_city
    #   <p>The city of a customer’s shipping address.</p>
    #   @return [String]
    # @!attribute shipping_county
    #   <p>The county of a customer’s shipping address.</p>
    #   @return [String]
    # @!attribute shipping_country
    #   <p>The country of a customer’s shipping address.</p>
    #   @return [String]
    # @!attribute shipping_postal_code
    #   <p>The postal code of a customer’s shipping address.</p>
    #   @return [String]
    # @!attribute shipping_province
    #   <p>The province of a customer’s shipping address.</p>
    #   @return [String]
    # @!attribute shipping_state
    #   <p>The state of a customer’s shipping address.</p>
    #   @return [String]
    # @!attribute mailing_address1
    #   <p>The first line of a customer’s mailing address.</p>
    #   @return [String]
    # @!attribute mailing_address2
    #   <p>The second line of a customer’s mailing address.</p>
    #   @return [String]
    # @!attribute mailing_address3
    #   <p>The third line of a customer’s mailing address.</p>
    #   @return [String]
    # @!attribute mailing_address4
    #   <p>The fourth line of a customer’s mailing address.</p>
    #   @return [String]
    # @!attribute mailing_city
    #   <p>The city of a customer’s mailing address.</p>
    #   @return [String]
    # @!attribute mailing_county
    #   <p>The county of a customer’s mailing address.</p>
    #   @return [String]
    # @!attribute mailing_country
    #   <p>The country of a customer’s mailing address.</p>
    #   @return [String]
    # @!attribute mailing_postal_code
    #   <p>The postal code of a customer’s mailing address.</p>
    #   @return [String]
    # @!attribute mailing_province
    #   <p>The province of a customer’s mailing address.</p>
    #   @return [String]
    # @!attribute mailing_state
    #   <p>The state of a customer’s mailing address.</p>
    #   @return [String]
    # @!attribute billing_address1
    #   <p>The first line of a customer’s billing address.</p>
    #   @return [String]
    # @!attribute billing_address2
    #   <p>The second line of a customer’s billing address.</p>
    #   @return [String]
    # @!attribute billing_address3
    #   <p>The third line of a customer’s billing address.</p>
    #   @return [String]
    # @!attribute billing_address4
    #   <p>The fourth line of a customer’s billing address.</p>
    #   @return [String]
    # @!attribute billing_city
    #   <p>The city of a customer’s billing address.</p>
    #   @return [String]
    # @!attribute billing_county
    #   <p>The county of a customer’s billing address.</p>
    #   @return [String]
    # @!attribute billing_country
    #   <p>The country of a customer’s billing address.</p>
    #   @return [String]
    # @!attribute billing_postal_code
    #   <p>The postal code of a customer’s billing address.</p>
    #   @return [String]
    # @!attribute billing_province
    #   <p>The province of a customer’s billing address.</p>
    #   @return [String]
    # @!attribute billing_state
    #   <p>The state of a customer’s billing address.</p>
    #   @return [String]
    # @!attribute custom
    #   <p>The custom attributes in customer profile attributes.</p>
    #   @return [Hash<String, String>]
    class CustomerProfileAttributes < Struct.new(
      nil,
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
      :shipping_address1,
      :shipping_address2,
      :shipping_address3,
      :shipping_address4,
      :shipping_city,
      :shipping_county,
      :shipping_country,
      :shipping_postal_code,
      :shipping_province,
      :shipping_state,
      :mailing_address1,
      :mailing_address2,
      :mailing_address3,
      :mailing_address4,
      :mailing_city,
      :mailing_county,
      :mailing_country,
      :mailing_postal_code,
      :mailing_province,
      :mailing_state,
      :billing_address1,
      :billing_address2,
      :billing_address3,
      :billing_address4,
      :billing_city,
      :billing_county,
      :billing_country,
      :billing_postal_code,
      :billing_province,
      :billing_state,
      :custom,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the data.</p>
    # @!attribute content_data
    #   <p>Details about the content data.</p>
    #   @return [Types::ContentDataDetails]
    # @!attribute generative_data
    #   <p> Details about the generative data.</p>
    #   @return [Types::GenerativeDataDetails]
    # @!attribute intent_detected_data
    #   <p>Details about the intent data.</p>
    #   @return [Types::IntentDetectedDataDetails]
    # @!attribute source_content_data
    #   <p>Details about the content data.</p>
    #   @return [Types::SourceContentDataDetails]
    # @!attribute generative_chunk_data
    #   <p>Details about the generative chunk data.</p>
    #   @return [Types::GenerativeChunkDataDetails]
    # @!attribute email_response_chunk_data
    #   <p>Streaming chunk data for email response generation containing partial response content.</p>
    #   @return [Types::EmailResponseChunkDataDetails]
    # @!attribute email_overview_chunk_data
    #   <p>Streaming chunk data for email overview containing partial overview content.</p>
    #   @return [Types::EmailOverviewChunkDataDetails]
    # @!attribute email_generative_answer_chunk_data
    #   <p>Streaming chunk data for email generative answers containing partial knowledge-based response content.</p>
    #   @return [Types::EmailGenerativeAnswerChunkDataDetails]
    class DataDetails < Struct.new(
      :content_data,
      :generative_data,
      :intent_detected_data,
      :source_content_data,
      :generative_chunk_data,
      :email_response_chunk_data,
      :email_overview_chunk_data,
      :email_generative_answer_chunk_data,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ContentData < DataDetails; end
      class GenerativeData < DataDetails; end
      class IntentDetectedData < DataDetails; end
      class SourceContentData < DataDetails; end
      class GenerativeChunkData < DataDetails; end
      class EmailResponseChunkData < DataDetails; end
      class EmailOverviewChunkData < DataDetails; end
      class EmailGenerativeAnswerChunkData < DataDetails; end
      class Unknown < DataDetails; end
    end

    # <p>Reference data.</p>
    # @!attribute content_reference
    #   <p>Reference information about the content.</p>
    #   @return [Types::ContentReference]
    # @!attribute generative_reference
    #   <p>Reference information about the generative content.</p>
    #   @return [Types::GenerativeReference]
    class DataReference < Struct.new(
      :content_reference,
      :generative_reference,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ContentReference < DataReference; end
      class GenerativeReference < DataReference; end
      class Unknown < DataReference; end
    end

    # <p>Summary of the data.</p>
    # @!attribute reference
    #   <p>Reference information about the content.</p>
    #   @return [Types::DataReference]
    # @!attribute details
    #   <p>Details about the data.</p>
    #   @return [Types::DataDetails]
    class DataSummary < Struct.new(
      nil,
      :reference,
      :details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute message_template_id
    #   <p>The identifier of the message template. Can be either the ID or the ARN. It cannot contain any qualifier.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number of the message template version to deactivate.</p>
    #   @return [Integer]
    class DeactivateMessageTemplateRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :message_template_id,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_template_arn
    #   <p>The Amazon Resource Name (ARN) of the message template.</p>
    #   @return [String]
    # @!attribute message_template_id
    #   <p>The identifier of the message template.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number of the message template version that has been deactivated.</p>
    #   @return [Integer]
    class DeactivateMessageTemplateResponse < Struct.new(
      nil,
      :message_template_arn,
      :message_template_id,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute ai_agent_id
    #   <p>The identifier of the Amazon Q in Connect AI Agent. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class DeleteAIAgentRequest < Struct.new(
      nil,
      :assistant_id,
      :ai_agent_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAIAgentResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute ai_agent_id
    #   <p>The identifier of the Amazon Q in Connect AI Agent. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number of the AI Agent version.</p>
    #   @return [Integer]
    class DeleteAIAgentVersionRequest < Struct.new(
      nil,
      :assistant_id,
      :ai_agent_id,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAIAgentVersionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute ai_guardrail_id
    #   <p>The identifier of the Amazon Q in Connect AI Guardrail. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class DeleteAIGuardrailRequest < Struct.new(
      nil,
      :assistant_id,
      :ai_guardrail_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAIGuardrailResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute ai_guardrail_id
    #   <p>The identifier of the Amazon Q in Connect AI Guardrail.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number of the AI Guardrail version to be deleted.</p>
    #   @return [Integer]
    class DeleteAIGuardrailVersionRequest < Struct.new(
      nil,
      :assistant_id,
      :ai_guardrail_id,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAIGuardrailVersionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute ai_prompt_id
    #   <p>The identifier of the Amazon Q in Connect AI prompt. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class DeleteAIPromptRequest < Struct.new(
      nil,
      :assistant_id,
      :ai_prompt_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAIPromptResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute ai_prompt_id
    #   <p>The identifier of the Amazon Q in Connect AI prompt.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The version number of the AI Prompt version to be deleted.</p>
    #   @return [Integer]
    class DeleteAIPromptVersionRequest < Struct.new(
      nil,
      :assistant_id,
      :ai_prompt_id,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAIPromptVersionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_association_id
    #   <p>The identifier of the assistant association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class DeleteAssistantAssociationInput < Struct.new(
      nil,
      :assistant_association_id,
      :assistant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAssistantAssociationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class DeleteAssistantInput < Struct.new(
      nil,
      :assistant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAssistantOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute content_id
    #   <p>The identifier of the content.</p>
    #   @return [String]
    # @!attribute content_association_id
    #   <p>The identifier of the content association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class DeleteContentAssociationRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :content_id,
      :content_association_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteContentAssociationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute content_id
    #   <p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class DeleteContentInput < Struct.new(
      nil,
      :knowledge_base_id,
      :content_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteContentOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute import_job_id
    #   <p>The identifier of the import job to be deleted.</p>
    #   @return [String]
    class DeleteImportJobRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :import_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteImportJobResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The knowledge base to delete content from. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class DeleteKnowledgeBaseInput < Struct.new(
      nil,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteKnowledgeBaseOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute message_template_id
    #   <p>The identifier of the message template. Can be either the ID or the ARN. It cannot contain any qualifier.</p>
    #   @return [String]
    # @!attribute attachment_id
    #   <p>The identifier of the attachment file.</p>
    #   @return [String]
    class DeleteMessageTemplateAttachmentRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :message_template_id,
      :attachment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteMessageTemplateAttachmentResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute message_template_id
    #   <p>The identifier of the message template. Can be either the ID or the ARN.</p>
    #   @return [String]
    class DeleteMessageTemplateRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :message_template_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteMessageTemplateResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The knowledge base from which the quick response is deleted. The identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute quick_response_id
    #   <p>The identifier of the quick response to delete.</p>
    #   @return [String]
    class DeleteQuickResponseRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :quick_response_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteQuickResponseResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error occurred while calling a dependency. For example, calling <code>connect:DecribeContact</code> as part of <code>CreateSession</code> with a contactArn.</p>
    # @!attribute message
    #   @return [String]
    class DependencyFailedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The document.</p>
    # @!attribute content_reference
    #   <p>A reference to the content resource.</p>
    #   @return [Types::ContentReference]
    # @!attribute title
    #   <p>The title of the document.</p>
    #   @return [Types::DocumentText]
    # @!attribute excerpt
    #   <p>The excerpt from the document.</p>
    #   @return [Types::DocumentText]
    class Document < Struct.new(
      nil,
      :content_reference,
      :title,
      :excerpt,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The text of the document.</p>
    # @!attribute text
    #   <p>Text in the document.</p>
    #   @return [String]
    # @!attribute highlights
    #   <p>Highlights in the document text.</p>
    #   @return [Array<Types::Highlight>]
    class DocumentText < Struct.new(
      nil,
      :text,
      :highlights,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for the EMAIL_GENERATIVE_ANSWER AI agent including prompts, locale, and knowledge base associations.</p>
    # @!attribute email_generative_answer_ai_prompt_id
    #   <p>The ID of the System AI prompt used for generating comprehensive knowledge-based answers from email queries.</p>
    #   @return [String]
    # @!attribute email_query_reformulation_ai_prompt_id
    #   <p>The ID of the System AI prompt used for reformulating email queries to optimize knowledge base search results.</p>
    #   @return [String]
    # @!attribute locale
    #   <p>The locale setting for language-specific email processing and response generation (for example, en_US, es_ES).</p>
    #   @return [String]
    # @!attribute association_configurations
    #   <p>Configuration settings for knowledge base associations used by the email generative answer agent.</p>
    #   @return [Array<Types::AssociationConfiguration>]
    class EmailGenerativeAnswerAIAgentConfiguration < Struct.new(
      nil,
      :email_generative_answer_ai_prompt_id,
      :email_query_reformulation_ai_prompt_id,
      :locale,
      :association_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of streaming chunk data for email generative answers including completion text and references.</p>
    # @!attribute completion
    #   <p>The partial or complete text content of the generative answer response.</p>
    #   @return [String]
    # @!attribute references
    #   <p>Source references and citations from knowledge base articles used to generate the answer.</p>
    #   @return [Array<Types::DataSummary>]
    # @!attribute next_chunk_token
    #   <p>Token for retrieving the next chunk of streaming response data, if available.</p>
    #   @return [String]
    class EmailGenerativeAnswerChunkDataDetails < Struct.new(
      nil,
      :completion,
      :references,
      :next_chunk_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The email header to include in email messages.</p>
    # @!attribute name
    #   <p>The name of the email header.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the email header.</p>
    #   @return [String]
    class EmailHeader < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The content of the message template that applies to the email channel subtype.</p>
    # @!attribute subject
    #   <p>The subject line, or title, to use in email messages.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The body to use in email messages.</p>
    #   @return [Types::EmailMessageTemplateContentBody]
    # @!attribute headers
    #   <p>The email headers to include in email messages.</p>
    #   @return [Array<Types::EmailHeader>]
    class EmailMessageTemplateContent < Struct.new(
      nil,
      :subject,
      :body,
      :headers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The body to use in email messages.</p>
    # @!attribute plain_text
    #   <p>The message body, in plain text format, to use in email messages that are based on the message template. We recommend using plain text format for email clients that don't render HTML content and clients that are connected to high-latency networks, such as mobile devices.</p>
    #   @return [Types::MessageTemplateBodyContentProvider]
    # @!attribute html
    #   <p>The message body, in HTML format, to use in email messages that are based on the message template. We recommend using HTML format for email clients that render HTML content. You can include links, formatted text, and more in an HTML message.</p>
    #   @return [Types::MessageTemplateBodyContentProvider]
    class EmailMessageTemplateContentBody < Struct.new(
      nil,
      :plain_text,
      :html,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for the EMAIL_OVERVIEW AI agent including prompt ID and locale settings.</p>
    # @!attribute email_overview_ai_prompt_id
    #   <p>The ID of the System AI prompt used for generating structured email conversation summaries.</p>
    #   @return [String]
    # @!attribute locale
    #   <p>The locale setting for language-specific email overview processing (for example, en_US, es_ES).</p>
    #   @return [String]
    class EmailOverviewAIAgentConfiguration < Struct.new(
      nil,
      :email_overview_ai_prompt_id,
      :locale,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of streaming chunk data for email overview including completion text and pagination tokens.</p>
    # @!attribute completion
    #   <p>The partial or complete overview text content in structured HTML format with customer issues, resolutions, and next steps.</p>
    #   @return [String]
    # @!attribute next_chunk_token
    #   <p>Token for retrieving the next chunk of streaming overview data, if available.</p>
    #   @return [String]
    class EmailOverviewChunkDataDetails < Struct.new(
      nil,
      :completion,
      :next_chunk_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for the EMAIL_RESPONSE AI agent including prompts, locale, and knowledge base associations.</p>
    # @!attribute email_response_ai_prompt_id
    #   <p>The ID of the System AI prompt used for generating professional email responses based on knowledge base content.</p>
    #   @return [String]
    # @!attribute email_query_reformulation_ai_prompt_id
    #   <p>The ID of the System AI prompt used for reformulating email queries to optimize knowledge base search for response generation.</p>
    #   @return [String]
    # @!attribute locale
    #   <p>The locale setting for language-specific email response generation (for example, en_US, es_ES).</p>
    #   @return [String]
    # @!attribute association_configurations
    #   <p>Configuration settings for knowledge base associations used by the email response agent.</p>
    #   @return [Array<Types::AssociationConfiguration>]
    class EmailResponseAIAgentConfiguration < Struct.new(
      nil,
      :email_response_ai_prompt_id,
      :email_query_reformulation_ai_prompt_id,
      :locale,
      :association_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of streaming chunk data for email responses including completion text and pagination tokens.</p>
    # @!attribute completion
    #   <p>The partial or complete professional email response text with appropriate greetings and closings.</p>
    #   @return [String]
    # @!attribute next_chunk_token
    #   <p>Token for retrieving the next chunk of streaming response data, if available.</p>
    #   @return [String]
    class EmailResponseChunkDataDetails < Struct.new(
      nil,
      :completion,
      :next_chunk_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The extended data of a message template.</p>
    # @!attribute message_template_arn
    #   <p>The Amazon Resource Name (ARN) of the message template.</p>
    #   @return [String]
    # @!attribute message_template_id
    #   <p>The identifier of the message template.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the message template.</p>
    #   @return [String]
    # @!attribute channel_subtype
    #   <p>The channel subtype this message template applies to.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp when the message template was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The timestamp when the message template data was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_by
    #   <p>The Amazon Resource Name (ARN) of the user who last updated the message template data.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the message template.</p>
    #   @return [Types::MessageTemplateContentProvider]
    # @!attribute description
    #   <p>The description of the message template.</p>
    #   @return [String]
    # @!attribute language
    #   <p>The language code value for the language in which the quick response is written. The supported language codes include <code>de_DE</code>, <code>en_US</code>, <code>es_ES</code>, <code>fr_FR</code>, <code>id_ID</code>, <code>it_IT</code>, <code>ja_JP</code>, <code>ko_KR</code>, <code>pt_BR</code>, <code>zh_CN</code>, <code>zh_TW</code> </p>
    #   @return [String]
    # @!attribute grouping_configuration
    #   <p>The configuration information of the grouping of Amazon Q in Connect users.</p>
    #   @return [Types::GroupingConfiguration]
    # @!attribute default_attributes
    #   <p>An object that specifies the default values to use for variables in the message template. This object contains different categories of key-value pairs. Each key defines a variable or placeholder in the message template. The corresponding value defines the default value for that variable.</p>
    #   @return [Types::MessageTemplateAttributes]
    # @!attribute attribute_types
    #   <p>The types of attributes contain the message template.</p>
    #   @return [Array<String>]
    # @!attribute attachments
    #   <p>The message template attachments.</p>
    #   @return [Array<Types::MessageTemplateAttachment>]
    # @!attribute is_active
    #   <p>Whether the version of the message template is activated.</p>
    #   @return [Boolean]
    # @!attribute version_number
    #   <p>The version number of the message template version.</p>
    #   @return [Integer]
    # @!attribute message_template_content_sha256
    #   <p>The checksum value of the message template content that is referenced by the <code>$LATEST</code> qualifier. It can be returned in <code>MessageTemplateData</code> or <code>ExtendedMessageTemplateData</code>. It’s calculated by content, language, <code>defaultAttributes</code> and <code>Attachments</code> of the message template.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class ExtendedMessageTemplateData < Struct.new(
      nil,
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
      :message_template_content_sha256,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration information of the external data source.</p>
    # @!attribute source
    #   <p>The type of the external data source.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration information of the external data source.</p>
    #   @return [Types::Configuration]
    class ExternalSourceConfiguration < Struct.new(
      nil,
      :source,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A search filter.</p>
    # @!attribute field
    #   <p>The field on which to filter.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>The operator to use for comparing the field’s value with the provided value.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The desired field value on which to filter.</p>
    #   @return [String]
    class Filter < Struct.new(
      nil,
      :field,
      :operator,
      :value,
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
      nil,
      :max_tokens,
      :overlap_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the generative chunk data.</p>
    # @!attribute completion
    #   <p>A chunk of the LLM response.</p>
    #   @return [String]
    # @!attribute references
    #   <p>The references used to generate the LLM response.</p>
    #   @return [Array<Types::DataSummary>]
    # @!attribute next_chunk_token
    #   <p>The token for the next set of chunks. Use the value returned in the previous response in the next request to retrieve the next set of chunks.</p>
    #   @return [String]
    class GenerativeChunkDataDetails < Struct.new(
      nil,
      :completion,
      :references,
      :next_chunk_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The feedback information for a generative target type.</p>
    # @!attribute relevance
    #   <p>The relevance of the feedback.</p>
    #   @return [String]
    class GenerativeContentFeedbackData < Struct.new(
      nil,
      :relevance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about generative data.</p>
    # @!attribute completion
    #   <p>The LLM response.</p>
    #   @return [String]
    # @!attribute references
    #   <p>The references used to generative the LLM response.</p>
    #   @return [Array<Types::DataSummary>]
    # @!attribute ranking_data
    #   <p>Details about the generative content ranking data.</p>
    #   @return [Types::RankingData]
    class GenerativeDataDetails < Struct.new(
      nil,
      :completion,
      :references,
      :ranking_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Reference information about generative content.</p>
    # @!attribute model_id
    #   <p>The identifier of the LLM model. </p>
    #   @return [String]
    # @!attribute generation_id
    #   <p> The identifier of the LLM model. </p>
    #   @return [String]
    class GenerativeReference < Struct.new(
      nil,
      :model_id,
      :generation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute ai_agent_id
    #   <p>The identifier of the Amazon Q in Connect AI Agent (with or without a version qualifier). Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class GetAIAgentRequest < Struct.new(
      nil,
      :assistant_id,
      :ai_agent_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ai_agent
    #   <p>The data of the AI Agent.</p>
    #   @return [Types::AIAgentData]
    # @!attribute version_number
    #   <p>The version number of the AI Agent version (returned if an AI Agent version was specified via use of a qualifier for the <code>aiAgentId</code> on the request). </p>
    #   @return [Integer]
    class GetAIAgentResponse < Struct.new(
      nil,
      :ai_agent,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute ai_guardrail_id
    #   <p>The identifier of the Amazon Q in Connect AI Guardrail.</p>
    #   @return [String]
    class GetAIGuardrailRequest < Struct.new(
      nil,
      :assistant_id,
      :ai_guardrail_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ai_guardrail
    #   <p>The data of the AI Guardrail.</p>
    #   @return [Types::AIGuardrailData]
    # @!attribute version_number
    #   <p>The version number of the AI Guardrail version (returned if an AI Guardrail version was specified via use of a qualifier for the <code>aiGuardrailId</code> on the request). </p>
    #   @return [Integer]
    class GetAIGuardrailResponse < Struct.new(
      nil,
      :ai_guardrail,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute ai_prompt_id
    #   <p>The identifier of the Amazon Q in Connect AI prompt.</p>
    #   @return [String]
    class GetAIPromptRequest < Struct.new(
      nil,
      :assistant_id,
      :ai_prompt_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ai_prompt
    #   <p>The data of the AI Prompt.</p>
    #   @return [Types::AIPromptData]
    # @!attribute version_number
    #   <p>The version number of the AI Prompt version (returned if an AI Prompt version was specified via use of a qualifier for the <code>aiPromptId</code> on the request). </p>
    #   @return [Integer]
    class GetAIPromptResponse < Struct.new(
      nil,
      :ai_prompt,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_association_id
    #   <p>The identifier of the assistant association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class GetAssistantAssociationInput < Struct.new(
      nil,
      :assistant_association_id,
      :assistant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_association
    #   <p>The assistant association.</p>
    #   @return [Types::AssistantAssociationData]
    class GetAssistantAssociationOutput < Struct.new(
      nil,
      :assistant_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class GetAssistantInput < Struct.new(
      nil,
      :assistant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant
    #   <p>Information about the assistant.</p>
    #   @return [Types::AssistantData]
    class GetAssistantOutput < Struct.new(
      nil,
      :assistant,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute content_id
    #   <p>The identifier of the content.</p>
    #   @return [String]
    # @!attribute content_association_id
    #   <p>The identifier of the content association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class GetContentAssociationRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :content_id,
      :content_association_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content_association
    #   <p>The association between Amazon Q in Connect content and another resource.</p>
    #   @return [Types::ContentAssociationData]
    class GetContentAssociationResponse < Struct.new(
      nil,
      :content_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content_id
    #   <p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class GetContentInput < Struct.new(
      nil,
      :content_id,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content
    #   <p>The content.</p>
    #   @return [Types::ContentData]
    class GetContentOutput < Struct.new(
      nil,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content_id
    #   <p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class GetContentSummaryInput < Struct.new(
      nil,
      :content_id,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content_summary
    #   <p>The content summary.</p>
    #   @return [Types::ContentSummary]
    class GetContentSummaryOutput < Struct.new(
      nil,
      :content_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_job_id
    #   <p>The identifier of the import job to retrieve.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base that the import job belongs to.</p>
    #   @return [String]
    class GetImportJobRequest < Struct.new(
      nil,
      :import_job_id,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_job
    #   <p>The import job.</p>
    #   @return [Types::ImportJobData]
    class GetImportJobResponse < Struct.new(
      nil,
      :import_job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class GetKnowledgeBaseInput < Struct.new(
      nil,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base
    #   <p>The knowledge base.</p>
    #   @return [Types::KnowledgeBaseData]
    class GetKnowledgeBaseOutput < Struct.new(
      nil,
      :knowledge_base,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_template_id
    #   <p>The identifier of the message template. Can be either the ID or the ARN.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class GetMessageTemplateRequest < Struct.new(
      nil,
      :message_template_id,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_template
    #   <p>The message template.</p>
    #   @return [Types::ExtendedMessageTemplateData]
    class GetMessageTemplateResponse < Struct.new(
      nil,
      :message_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the Amazon Q in Connect session.</p>
    #   @return [String]
    # @!attribute next_message_token
    #   <p>The token for the next message. Use the value returned in the SendMessage or previous response in the next request to retrieve the next message.</p>
    #   @return [String]
    class GetNextMessageRequest < Struct.new(
      nil,
      :assistant_id,
      :session_id,
      :next_message_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The type of message response.</p>
    #   @return [String]
    # @!attribute response
    #   <p>The message response to the requested message.</p>
    #   @return [Types::MessageOutput]
    # @!attribute request_message_id
    #   <p>The identifier of the submitted message.</p>
    #   @return [String]
    # @!attribute conversation_state
    #   <p>The state of current conversation.</p>
    #   @return [Types::ConversationState]
    # @!attribute next_message_token
    #   <p>The token for the next message.</p>
    #   @return [String]
    # @!attribute conversation_session_data
    #   <p>The conversation data stored on an Amazon Q in Connect Session.</p>
    #   @return [Array<Types::RuntimeSessionData>]
    class GetNextMessageResponse < Struct.new(
      nil,
      :type,
      :response,
      :request_message_id,
      :conversation_state,
      :next_message_token,
      :conversation_session_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute quick_response_id
    #   <p>The identifier of the quick response.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should be a QUICK_RESPONSES type knowledge base.</p>
    #   @return [String]
    class GetQuickResponseRequest < Struct.new(
      nil,
      :quick_response_id,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute quick_response
    #   <p>The quick response.</p>
    #   @return [Types::QuickResponseData]
    class GetQuickResponseResponse < Struct.new(
      nil,
      :quick_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute wait_time_seconds
    #   <p>The duration (in seconds) for which the call waits for a recommendation to be made available before returning. If a recommendation is available, the call returns sooner than <code>WaitTimeSeconds</code>. If no messages are available and the wait time expires, the call returns successfully with an empty list.</p>
    #   @return [Integer]
    # @!attribute next_chunk_token
    #   <p>The token for the next set of chunks. Use the value returned in the previous response in the next request to retrieve the next set of chunks.</p>
    #   @return [String]
    class GetRecommendationsInput < Struct.new(
      nil,
      :assistant_id,
      :session_id,
      :max_results,
      :wait_time_seconds,
      :next_chunk_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommendations
    #   <p>The recommendations.</p>
    #   @return [Array<Types::RecommendationData>]
    # @!attribute triggers
    #   <p>The triggers corresponding to recommendations.</p>
    #   @return [Array<Types::RecommendationTrigger>]
    class GetRecommendationsOutput < Struct.new(
      nil,
      :recommendations,
      :triggers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class GetSessionInput < Struct.new(
      nil,
      :assistant_id,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session
    #   <p>The session.</p>
    #   @return [Types::SessionData]
    class GetSessionOutput < Struct.new(
      nil,
      :session,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration information of the grouping of Amazon Q in Connect users.</p>
    # @!attribute criteria
    #   <p>The criteria used for grouping Amazon Q in Connect users.</p> <p>The following is the list of supported criteria values.</p> <ul> <li> <p> <code>RoutingProfileArn</code>: Grouping the users by their <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_RoutingProfile.html">Amazon Connect routing profile ARN</a>. User should have <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchRoutingProfiles.html">SearchRoutingProfile</a> and <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeRoutingProfile.html">DescribeRoutingProfile</a> permissions when setting criteria to this value.</p> </li> </ul>
    #   @return [String]
    # @!attribute values
    #   <p>The list of values that define different groups of Amazon Q in Connect users.</p> <ul> <li> <p>When setting <code>criteria</code> to <code>RoutingProfileArn</code>, you need to provide a list of ARNs of <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_RoutingProfile.html">Amazon Connect routing profiles</a> as values of this parameter.</p> </li> </ul>
    #   @return [Array<String>]
    class GroupingConfiguration < Struct.new(
      nil,
      :criteria,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains filter strengths for harmful content. AI Guardrail's support the following content filters to detect and filter harmful user inputs and FM-generated outputs.</p> <ul> <li> <p> <b>Hate</b>: Describes input prompts and model responses that discriminate, criticize, insult, denounce, or dehumanize a person or group on the basis of an identity (such as race, ethnicity, gender, religion, sexual orientation, ability, and national origin).</p> </li> <li> <p> <b>Insults</b>: Describes input prompts and model responses that includes demeaning, humiliating, mocking, insulting, or belittling language. This type of language is also labeled as bullying.</p> </li> <li> <p> <b>Sexual</b>: Describes input prompts and model responses that indicates sexual interest, activity, or arousal using direct or indirect references to body parts, physical traits, or sex.</p> </li> <li> <p> <b>Violence</b>: Describes input prompts and model responses that includes glorification of, or threats to inflict physical pain, hurt, or injury toward a person, group, or thing.</p> </li> </ul> <p>Content filtering depends on the confidence classification of user inputs and FM responses across each of the four harmful categories. All input and output statements are classified into one of four confidence levels (NONE, LOW, MEDIUM, HIGH) for each harmful category. For example, if a statement is classified as <i>Hate</i> with HIGH confidence, the likelihood of the statement representing hateful content is high. A single statement can be classified across multiple categories with varying confidence levels. For example, a single statement can be classified as <i>Hate</i> with HIGH confidence, <i> Insults</i> with LOW confidence, <i>Sexual</i> with NONE confidence, and <i>Violence</i> with MEDIUM confidence.</p>
    # @!attribute type
    #   <p>The harmful category that the content filter is applied to.</p>
    #   @return [String]
    # @!attribute input_strength
    #   <p>The strength of the content filter to apply to prompts. As you increase the filter strength, the likelihood of filtering harmful content increases and the probability of seeing harmful content in your application reduces.</p>
    #   @return [String]
    # @!attribute output_strength
    #   <p>The strength of the content filter to apply to model responses. As you increase the filter strength, the likelihood of filtering harmful content increases and the probability of seeing harmful content in your application reduces.</p>
    #   @return [String]
    class GuardrailContentFilterConfig < Struct.new(
      nil,
      :type,
      :input_strength,
      :output_strength,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter configuration details for the AI Guardrail's contextual grounding filter.</p>
    # @!attribute type
    #   <p>The filter type for the AI Guardrail's contextual grounding filter.</p>
    #   @return [String]
    # @!attribute threshold
    #   <p>The threshold details for the AI Guardrail's contextual grounding filter.</p>
    #   @return [Float]
    class GuardrailContextualGroundingFilterConfig < Struct.new(
      nil,
      :type,
      :threshold,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:threshold] = 0 unless options.key?(:threshold)
        super
      end
    end

    # <p>The managed word list to configure for the AI Guardrail.</p>
    # @!attribute type
    #   <p>The managed word type to configure for the AI Guardrail.</p>
    #   @return [String]
    class GuardrailManagedWordsConfig < Struct.new(
      nil,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The PII entity to configure for the AI Guardrail.</p>
    # @!attribute type
    #   <p>Configure AI Guardrail type when the PII entity is detected.</p> <p>The following PIIs are used to block or mask sensitive information:</p> <ul> <li> <p> <b>General</b> </p> <ul> <li> <p> <b>ADDRESS</b> </p> <p>A physical address, such as "100 Main Street, Anytown, USA" or "Suite #12, Building 123". An address can include information such as the street, building, location, city, state, country, county, zip code, precinct, and neighborhood. </p> </li> <li> <p> <b>AGE</b> </p> <p>An individual's age, including the quantity and unit of time. For example, in the phrase "I am 40 years old," Guarrails recognizes "40 years" as an age. </p> </li> <li> <p> <b>NAME</b> </p> <p>An individual's name. This entity type does not include titles, such as Dr., Mr., Mrs., or Miss. AI Guardrail doesn't apply this entity type to names that are part of organizations or addresses. For example, AI Guardrail recognizes the "John Doe Organization" as an organization, and it recognizes "Jane Doe Street" as an address. </p> </li> <li> <p> <b>EMAIL</b> </p> <p>An email address, such as <i>marymajor@email.com</i>.</p> </li> <li> <p> <b>PHONE</b> </p> <p>A phone number. This entity type also includes fax and pager numbers. </p> </li> <li> <p> <b>USERNAME</b> </p> <p>A user name that identifies an account, such as a login name, screen name, nick name, or handle. </p> </li> <li> <p> <b>PASSWORD</b> </p> <p>An alphanumeric string that is used as a password, such as "*<i> very20special#pass*</i>". </p> </li> <li> <p> <b>DRIVER_ID</b> </p> <p>The number assigned to a driver's license, which is an official document permitting an individual to operate one or more motorized vehicles on a public road. A driver's license number consists of alphanumeric characters. </p> </li> <li> <p> <b>LICENSE_PLATE</b> </p> <p>A license plate for a vehicle is issued by the state or country where the vehicle is registered. The format for passenger vehicles is typically five to eight digits, consisting of upper-case letters and numbers. The format varies depending on the location of the issuing state or country. </p> </li> <li> <p> <b>VEHICLE_IDENTIFICATION_NUMBER</b> </p> <p>A Vehicle Identification Number (VIN) uniquely identifies a vehicle. VIN content and format are defined in the <i>ISO 3779</i> specification. Each country has specific codes and formats for VINs. </p> </li> </ul> </li> <li> <p> <b>Finance</b> </p> <ul> <li> <p> <b>CREDIT_DEBIT_CARD_CVV</b> </p> <p>A three-digit card verification code (CVV) that is present on VISA, MasterCard, and Discover credit and debit cards. For American Express credit or debit cards, the CVV is a four-digit numeric code. </p> </li> <li> <p> <b>CREDIT_DEBIT_CARD_EXPIRY</b> </p> <p>The expiration date for a credit or debit card. This number is usually four digits long and is often formatted as <i>month/year</i> or <i>MM/YY</i>. AI Guardrail recognizes expiration dates such as <i>01/21</i>, <i>01/2021</i>, and <i>Jan 2021</i>. </p> </li> <li> <p> <b>CREDIT_DEBIT_CARD_NUMBER</b> </p> <p>The number for a credit or debit card. These numbers can vary from 13 to 16 digits in length. However, Amazon Comprehend also recognizes credit or debit card numbers when only the last four digits are present. </p> </li> <li> <p> <b>PIN</b> </p> <p>A four-digit personal identification number (PIN) with which you can access your bank account. </p> </li> <li> <p> <b>INTERNATIONAL_BANK_ACCOUNT_NUMBER</b> </p> <p>An International Bank Account Number has specific formats in each country. For more information, see <a href="https://www.iban.com/structure"> www.iban.com/structure</a>.</p> </li> <li> <p> <b>SWIFT_CODE</b> </p> <p>A SWIFT code is a standard format of Bank Identifier Code (BIC) used to specify a particular bank or branch. Banks use these codes for money transfers such as international wire transfers.</p> <p>SWIFT codes consist of eight or 11 characters. The 11-digit codes refer to specific branches, while eight-digit codes (or 11-digit codes ending in 'XXX') refer to the head or primary office.</p> </li> </ul> </li> <li> <p> <b>IT</b> </p> <ul> <li> <p> <b>IP_ADDRESS</b> </p> <p>An IPv4 address, such as <i>198.51.100.0</i>. </p> </li> <li> <p> <b>MAC_ADDRESS</b> </p> <p>A <i>media access control</i> (MAC) address is a unique identifier assigned to a network interface controller (NIC). </p> </li> <li> <p> <b>URL</b> </p> <p>A web address, such as <i>www.example.com</i>. </p> </li> <li> <p> <b>AWS_ACCESS_KEY</b> </p> <p>A unique identifier that's associated with a secret access key; you use the access key ID and secret access key to sign programmatic Amazon Web Services requests cryptographically. </p> </li> <li> <p> <b>AWS_SECRET_KEY</b> </p> <p>A unique identifier that's associated with an access key. You use the access key ID and secret access key to sign programmatic Amazon Web Services requests cryptographically. </p> </li> </ul> </li> <li> <p> <b>USA specific</b> </p> <ul> <li> <p> <b>US_BANK_ACCOUNT_NUMBER</b> </p> <p>A US bank account number, which is typically 10 to 12 digits long. </p> </li> <li> <p> <b>US_BANK_ROUTING_NUMBER</b> </p> <p>A US bank account routing number. These are typically nine digits long, </p> </li> <li> <p> <b>US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER</b> </p> <p>A US Individual Taxpayer Identification Number (ITIN) is a nine-digit number that starts with a "9" and contain a "7" or "8" as the fourth digit. An ITIN can be formatted with a space or a dash after the third and forth digits. </p> </li> <li> <p> <b>US_PASSPORT_NUMBER</b> </p> <p>A US passport number. Passport numbers range from six to nine alphanumeric characters. </p> </li> <li> <p> <b>US_SOCIAL_SECURITY_NUMBER</b> </p> <p>A US Social Security Number (SSN) is a nine-digit number that is issued to US citizens, permanent residents, and temporary working residents. </p> </li> </ul> </li> <li> <p> <b>Canada specific</b> </p> <ul> <li> <p> <b>CA_HEALTH_NUMBER</b> </p> <p>A Canadian Health Service Number is a 10-digit unique identifier, required for individuals to access healthcare benefits. </p> </li> <li> <p> <b>CA_SOCIAL_INSURANCE_NUMBER</b> </p> <p>A Canadian Social Insurance Number (SIN) is a nine-digit unique identifier, required for individuals to access government programs and benefits.</p> <p>The SIN is formatted as three groups of three digits, such as <i> 123-456-789</i>. A SIN can be validated through a simple check-digit process called the <a href="https://www.wikipedia.org/wiki/Luhn_algorithm">Luhn algorithm</a> .</p> </li> </ul> </li> <li> <p> <b>UK Specific</b> </p> <ul> <li> <p> <b>UK_NATIONAL_HEALTH_SERVICE_NUMBER</b> </p> <p>A UK National Health Service Number is a 10-17 digit number, such as <i>485 555 3456</i>. The current system formats the 10-digit number with spaces after the third and sixth digits. The final digit is an error-detecting checksum.</p> </li> <li> <p> <b>UK_NATIONAL_INSURANCE_NUMBER</b> </p> <p>A UK National Insurance Number (NINO) provides individuals with access to National Insurance (social security) benefits. It is also used for some purposes in the UK tax system.</p> <p>The number is nine digits long and starts with two letters, followed by six numbers and one letter. A NINO can be formatted with a space or a dash after the two letters and after the second, forth, and sixth digits.</p> </li> <li> <p> <b>UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER</b> </p> <p>A UK Unique Taxpayer Reference (UTR) is a 10-digit number that identifies a taxpayer or a business. </p> </li> </ul> </li> <li> <p> <b>Custom</b> </p> <ul> <li> <p> <b>Regex filter</b> - You can use a regular expressions to define patterns for an AI Guardrail to recognize and act upon such as serial number, booking ID etc..</p> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute action
    #   <p>Configure AI Guardrail's action when the PII entity is detected.</p>
    #   @return [String]
    class GuardrailPiiEntityConfig < Struct.new(
      nil,
      :type,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The regular expression to configure for the AI Guardrail.</p>
    # @!attribute name
    #   <p>The name of the regular expression to configure for the AI Guardrail.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the regular expression to configure for the AI Guardrail.</p>
    #   @return [String]
    # @!attribute pattern
    #   <p>The regular expression pattern to configure for the AI Guardrail.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The AI Guardrail action to configure when matching regular expression is detected.</p>
    #   @return [String]
    class GuardrailRegexConfig < Struct.new(
      nil,
      :name,
      :description,
      :pattern,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about topics for the AI Guardrail to identify and deny.</p>
    # @!attribute name
    #   <p>The name of the topic to deny.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>A definition of the topic to deny.</p>
    #   @return [String]
    # @!attribute examples
    #   <p>A list of prompts, each of which is an example of a prompt that can be categorized as belonging to the topic.</p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>Specifies to deny the topic.</p>
    #   @return [String]
    class GuardrailTopicConfig < Struct.new(
      nil,
      :name,
      :definition,
      :examples,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A word to configure for the AI Guardrail.</p>
    # @!attribute text
    #   <p>Text of the word configured for the AI Guardrail to block.</p>
    #   @return [String]
    class GuardrailWordConfig < Struct.new(
      nil,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for hierarchical document chunking for a data source. Hierarchical chunking splits documents into layers of chunks where the first layer contains large chunks, and the second layer contains smaller chunks derived from the first layer.</p>
    # @!attribute level_configurations
    #   <p>Token settings for each layer.</p>
    #   @return [Array<Types::HierarchicalChunkingLevelConfiguration>]
    # @!attribute overlap_tokens
    #   <p>The number of tokens to repeat across chunks in the same layer.</p>
    #   @return [Integer]
    class HierarchicalChunkingConfiguration < Struct.new(
      nil,
      :level_configurations,
      :overlap_tokens,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Token settings for each layer.</p>
    # @!attribute max_tokens
    #   <p>The maximum number of tokens that a chunk can contain in this layer.</p>
    #   @return [Integer]
    class HierarchicalChunkingLevelConfiguration < Struct.new(
      nil,
      :max_tokens,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Offset specification to describe highlighting of document excerpts for rendering search results and recommendations.</p>
    # @!attribute begin_offset_inclusive
    #   <p>The offset for the start of the highlight.</p>
    #   @return [Integer]
    # @!attribute end_offset_exclusive
    #   <p>The offset for the end of the highlight.</p>
    #   @return [Integer]
    class Highlight < Struct.new(
      nil,
      :begin_offset_inclusive,
      :end_offset_exclusive,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:begin_offset_inclusive] = 0 unless options.key?(:begin_offset_inclusive)
        options[:end_offset_exclusive] = 0 unless options.key?(:end_offset_exclusive)
        super
      end
    end

    # <p>Summary information about the import job.</p>
    # @!attribute import_job_id
    #   <p>The identifier of the import job.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>A pointer to the uploaded asset. This value is returned by <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html">StartContentUpload</a>.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute import_job_type
    #   <p>The type of the import job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the import job.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The download link to the resource file that is uploaded to the import job.</p>
    #   @return [String]
    # @!attribute failed_record_report
    #   <p>The link to download the information of resource data that failed to be imported.</p>
    #   @return [String]
    # @!attribute url_expiry
    #   <p>The expiration time of the URL as an epoch timestamp.</p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>The timestamp when the import job was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The timestamp when the import job data was last modified.</p>
    #   @return [Time]
    # @!attribute metadata
    #   <p>The metadata fields of the imported Amazon Q in Connect resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute external_source_configuration
    #   <p>The configuration information of the external data source.</p>
    #   @return [Types::ExternalSourceConfiguration]
    class ImportJobData < Struct.new(
      nil,
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
      :external_source_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about the import job.</p>
    # @!attribute import_job_id
    #   <p>The identifier of the import job.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>A pointer to the uploaded asset. This value is returned by <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html">StartContentUpload</a>.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute import_job_type
    #   <p>The type of import job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the import job.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp when the import job was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The timestamp when the import job was last modified.</p>
    #   @return [Time]
    # @!attribute metadata
    #   <p>The metadata fields of the imported Amazon Q in Connect resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute external_source_configuration
    #   <p>The configuration information of the external source that the resource data are imported from.</p>
    #   @return [Types::ExternalSourceConfiguration]
    class ImportJobSummary < Struct.new(
      nil,
      :import_job_id,
      :knowledge_base_id,
      :upload_id,
      :knowledge_base_arn,
      :import_job_type,
      :status,
      :created_time,
      :last_modified_time,
      :metadata,
      :external_source_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the detected intent.</p>
    # @!attribute intent
    #   <p>The detected intent.</p>
    #   @return [String]
    # @!attribute intent_id
    #   <p>The identifier of the detected intent.</p>
    #   @return [String]
    class IntentDetectedDataDetails < Struct.new(
      nil,
      :intent,
      :intent_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the Amazon Q intent.</p>
    # @!attribute intent_id
    #   <p>The identifier of the Amazon Q intent.</p>
    #   @return [String]
    class IntentInputData < Struct.new(
      nil,
      :intent_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The data of the configuration for a <code>KNOWLEDGE_BASE</code> type Amazon Q in Connect Assistant Association.</p>
    # @!attribute content_tag_filter
    #   <p>An object that can be used to specify Tag conditions.</p>
    #   @return [Types::TagFilter]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute override_knowledge_base_search_type
    #   <p>The search type to be used against the Knowledge Base for this request. The values can be <code>SEMANTIC</code> which uses vector embeddings or <code>HYBRID</code> which use vector embeddings and raw text</p>
    #   @return [String]
    class KnowledgeBaseAssociationConfigurationData < Struct.new(
      nil,
      :content_tag_filter,
      :max_results,
      :override_knowledge_base_search_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Association information about the knowledge base.</p>
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    class KnowledgeBaseAssociationData < Struct.new(
      nil,
      :knowledge_base_id,
      :knowledge_base_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the knowledge base.</p>
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_type
    #   <p>The type of knowledge base.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the knowledge base.</p>
    #   @return [String]
    # @!attribute last_content_modification_time
    #   <p>An epoch timestamp indicating the most recent content modification inside the knowledge base. If no content exists in a knowledge base, this value is unset.</p>
    #   @return [Time]
    # @!attribute vector_ingestion_configuration
    #   <p>Contains details about how to ingest the documents in a data source.</p>
    #   @return [Types::VectorIngestionConfiguration]
    # @!attribute source_configuration
    #   <p>Source configuration information about the knowledge base.</p>
    #   @return [Types::SourceConfiguration]
    # @!attribute rendering_configuration
    #   <p>Information about how to render the content.</p>
    #   @return [Types::RenderingConfiguration]
    # @!attribute server_side_encryption_configuration
    #   <p>The configuration information for the customer managed key used for encryption. </p> <p>This KMS key must have a policy that allows <code>kms:CreateGrant</code>, <code>kms:DescribeKey</code>, <code>kms:Decrypt</code>, and <code>kms:GenerateDataKey*</code> permissions to the IAM identity using the key to invoke Amazon Q in Connect. </p> <p>For more information about setting up a customer managed key for Amazon Q in Connect, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html">Enable Amazon Q in Connect for your instance</a>.</p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    # @!attribute description
    #   <p>The description.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute ingestion_status
    #   <p>Status of ingestion on data source.</p>
    #   @return [String]
    # @!attribute ingestion_failure_reasons
    #   <p>List of failure reasons on ingestion per file.</p>
    #   @return [Array<String>]
    class KnowledgeBaseData < Struct.new(
      nil,
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
      :ingestion_failure_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about the knowledge base.</p>
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_type
    #   <p>The type of knowledge base.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the knowledge base summary.</p>
    #   @return [String]
    # @!attribute source_configuration
    #   <p>Configuration information about the external data source.</p>
    #   @return [Types::SourceConfiguration]
    # @!attribute vector_ingestion_configuration
    #   <p>Contains details about how to ingest the documents in a data source.</p>
    #   @return [Types::VectorIngestionConfiguration]
    # @!attribute rendering_configuration
    #   <p>Information about how to render the content.</p>
    #   @return [Types::RenderingConfiguration]
    # @!attribute server_side_encryption_configuration
    #   <p>The configuration information for the customer managed key used for encryption. </p> <p>This KMS key must have a policy that allows <code>kms:CreateGrant</code>, <code>kms:DescribeKey</code>, <code>kms:Decrypt</code>, and <code>kms:GenerateDataKey*</code> permissions to the IAM identity using the key to invoke Amazon Q in Connect. </p> <p>For more information about setting up a customer managed key for Amazon Q in Connect, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html">Enable Amazon Q in Connect for your instance</a>.</p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    # @!attribute description
    #   <p>The description of the knowledge base.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class KnowledgeBaseSummary < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute ai_agent_id
    #   <p>The identifier of the Amazon Q in Connect AI Agent for which versions are to be listed.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute origin
    #   <p>The origin of the AI Agent versions to be listed. <code>SYSTEM</code> for a default AI Agent created by Q in Connect or <code>CUSTOMER</code> for an AI Agent created by calling AI Agent creation APIs. </p>
    #   @return [String]
    class ListAIAgentVersionsRequest < Struct.new(
      nil,
      :assistant_id,
      :ai_agent_id,
      :next_token,
      :max_results,
      :origin,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ai_agent_version_summaries
    #   <p>The summaries of AI Agent versions.</p>
    #   @return [Array<Types::AIAgentVersionSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListAIAgentVersionsResponse < Struct.new(
      nil,
      :ai_agent_version_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute origin
    #   <p>The origin of the AI Agents to be listed. <code>SYSTEM</code> for a default AI Agent created by Q in Connect or <code>CUSTOMER</code> for an AI Agent created by calling AI Agent creation APIs. </p>
    #   @return [String]
    class ListAIAgentsRequest < Struct.new(
      nil,
      :assistant_id,
      :next_token,
      :max_results,
      :origin,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ai_agent_summaries
    #   <p>The summaries of AI Agents.</p>
    #   @return [Array<Types::AIAgentSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListAIAgentsResponse < Struct.new(
      nil,
      :ai_agent_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute ai_guardrail_id
    #   <p>The identifier of the Amazon Q in Connect AI Guardrail for which versions are to be listed.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListAIGuardrailVersionsRequest < Struct.new(
      nil,
      :assistant_id,
      :ai_guardrail_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ai_guardrail_version_summaries
    #   <p>The summaries of the AI Guardrail versions.</p>
    #   @return [Array<Types::AIGuardrailVersionSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListAIGuardrailVersionsResponse < Struct.new(
      nil,
      :ai_guardrail_version_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListAIGuardrailsRequest < Struct.new(
      nil,
      :assistant_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ai_guardrail_summaries
    #   <p>The summaries of the AI Guardrails.</p>
    #   @return [Array<Types::AIGuardrailSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListAIGuardrailsResponse < Struct.new(
      nil,
      :ai_guardrail_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute ai_prompt_id
    #   <p>The identifier of the Amazon Q in Connect AI prompt for which versions are to be listed.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute origin
    #   <p>The origin of the AI Prompt versions to be listed. <code>SYSTEM</code> for a default AI Agent created by Q in Connect or <code>CUSTOMER</code> for an AI Agent created by calling AI Agent creation APIs. </p>
    #   @return [String]
    class ListAIPromptVersionsRequest < Struct.new(
      nil,
      :assistant_id,
      :ai_prompt_id,
      :next_token,
      :max_results,
      :origin,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ai_prompt_version_summaries
    #   <p>The summaries of the AI Prompt versions.</p>
    #   @return [Array<Types::AIPromptVersionSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListAIPromptVersionsResponse < Struct.new(
      nil,
      :ai_prompt_version_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute origin
    #   <p>The origin of the AI Prompts to be listed. <code>SYSTEM</code> for a default AI Agent created by Q in Connect or <code>CUSTOMER</code> for an AI Agent created by calling AI Agent creation APIs. </p>
    #   @return [String]
    class ListAIPromptsRequest < Struct.new(
      nil,
      :assistant_id,
      :next_token,
      :max_results,
      :origin,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ai_prompt_summaries
    #   <p>The summaries of the AI Prompts.</p>
    #   @return [Array<Types::AIPromptSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListAIPromptsResponse < Struct.new(
      nil,
      :ai_prompt_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class ListAssistantAssociationsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :assistant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_association_summaries
    #   <p>Summary information about assistant associations.</p>
    #   @return [Array<Types::AssistantAssociationSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListAssistantAssociationsOutput < Struct.new(
      nil,
      :assistant_association_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListAssistantsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_summaries
    #   <p>Information about the assistants.</p>
    #   @return [Array<Types::AssistantSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListAssistantsOutput < Struct.new(
      nil,
      :assistant_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute content_id
    #   <p>The identifier of the content.</p>
    #   @return [String]
    class ListContentAssociationsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :knowledge_base_id,
      :content_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content_association_summaries
    #   <p>Summary information about content associations.</p>
    #   @return [Array<Types::ContentAssociationSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListContentAssociationsResponse < Struct.new(
      nil,
      :content_association_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class ListContentsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content_summaries
    #   <p>Information about the content.</p>
    #   @return [Array<Types::ContentSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListContentsOutput < Struct.new(
      nil,
      :content_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class ListImportJobsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_job_summaries
    #   <p>Summary information about the import jobs.</p>
    #   @return [Array<Types::ImportJobSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListImportJobsResponse < Struct.new(
      nil,
      :import_job_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListKnowledgeBasesInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_summaries
    #   <p>Information about the knowledge bases.</p>
    #   @return [Array<Types::KnowledgeBaseSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListKnowledgeBasesOutput < Struct.new(
      nil,
      :knowledge_base_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute message_template_id
    #   <p>The identifier of the message template. Can be either the ID or the ARN. It cannot contain any qualifier.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListMessageTemplateVersionsRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :message_template_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_template_version_summaries
    #   <p>Summary information about the versions of a message template.</p>
    #   @return [Array<Types::MessageTemplateVersionSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListMessageTemplateVersionsResponse < Struct.new(
      nil,
      :message_template_version_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class ListMessageTemplatesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_template_summaries
    #   <p>Summary information about the message template.</p>
    #   @return [Array<Types::MessageTemplateSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListMessageTemplatesResponse < Struct.new(
      nil,
      :message_template_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the Amazon Q in Connect session.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListMessagesRequest < Struct.new(
      nil,
      :assistant_id,
      :session_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute messages
    #   <p>The message information.</p>
    #   @return [Array<Types::MessageOutput>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListMessagesResponse < Struct.new(
      nil,
      :messages,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class ListQuickResponsesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute quick_response_summaries
    #   <p>Summary information about the quick responses.</p>
    #   @return [Array<Types::QuickResponseSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListQuickResponsesResponse < Struct.new(
      nil,
      :quick_response_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Source configuration for managed resources.</p>
    # @!attribute web_crawler_configuration
    #   <p>Configuration data for web crawler data source.</p>
    #   @return [Types::WebCrawlerConfiguration]
    class ManagedSourceConfiguration < Struct.new(
      :web_crawler_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class WebCrawlerConfiguration < ManagedSourceConfiguration; end
      class Unknown < ManagedSourceConfiguration; end
    end

    # <p>The configuration for the <code>MANUAL_SEARCH</code> AI Agent type.</p>
    # @!attribute answer_generation_ai_prompt_id
    #   <p>The AI Prompt identifier for the Answer Generation prompt used by the MANUAL_SEARCH AI Agent.</p>
    #   @return [String]
    # @!attribute answer_generation_ai_guardrail_id
    #   <p>The AI Guardrail identifier for the Answer Generation guardrail used by the MANUAL_SEARCH AI Agent.</p>
    #   @return [String]
    # @!attribute association_configurations
    #   <p>The association configurations for overriding behavior on this AI Agent.</p>
    #   @return [Array<Types::AssociationConfiguration>]
    # @!attribute locale
    #   <p>The locale to which specifies the language and region settings that determine the response language for <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_amazon-q-connect_QueryAssistant.html">QueryAssistant</a>.</p> <note> <p>For more information on supported locales, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/supported-languages.html#qic-notes-languages">Language support for Amazon Q in Connect</a>.</p> </note>
    #   @return [String]
    class ManualSearchAIAgentConfiguration < Struct.new(
      nil,
      :answer_generation_ai_prompt_id,
      :answer_generation_ai_guardrail_id,
      :association_configurations,
      :locale,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_amazon-q-connect_SendMessage.html">SendMessage</a> request.</p>
    # @!attribute generate_filler_message
    #   <p>Generates a filler response when tool selection is <code>QUESTION</code>.</p>
    #   @return [Boolean]
    class MessageConfiguration < Struct.new(
      nil,
      :generate_filler_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The message data.</p>
    # @!attribute text
    #   <p>The message data in text type.</p>
    #   @return [Types::TextMessage]
    class MessageData < Struct.new(
      :text,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < MessageData; end
      class Unknown < MessageData; end
    end

    # <p>The message input.</p>
    # @!attribute value
    #   <p>The message input value.</p>
    #   @return [Types::MessageData]
    class MessageInput < Struct.new(
      nil,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The message output.</p>
    # @!attribute value
    #   <p>The value of a message data.</p>
    #   @return [Types::MessageData]
    # @!attribute message_id
    #   <p>The identifier of a message.</p>
    #   @return [String]
    # @!attribute participant
    #   <p>The participant of a message.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp of a message.</p>
    #   @return [Time]
    class MessageOutput < Struct.new(
      nil,
      :value,
      :message_id,
      :participant,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the message template attachment.</p>
    # @!attribute content_disposition
    #   <p>The presentation information for the attachment file.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the attachment file being uploaded. The name should include the file extension.</p>
    #   @return [String]
    # @!attribute uploaded_time
    #   <p>The timestamp when the attachment file was uploaded.</p>
    #   @return [Time]
    # @!attribute url
    #   <p>A pre-signed Amazon S3 URL that can be used to download the attachment file.</p>
    #   @return [String]
    # @!attribute url_expiry
    #   <p>The expiration time of the pre-signed Amazon S3 URL.</p>
    #   @return [Time]
    # @!attribute attachment_id
    #   <p>The identifier of the attachment file.</p>
    #   @return [String]
    class MessageTemplateAttachment < Struct.new(
      nil,
      :content_disposition,
      :name,
      :uploaded_time,
      :url,
      :url_expiry,
      :attachment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The attributes that are used with the message template.</p>
    # @!attribute system_attributes
    #   <p>The system attributes that are used with the message template.</p>
    #   @return [Types::SystemAttributes]
    # @!attribute agent_attributes
    #   <p>The agent attributes that are used with the message template.</p>
    #   @return [Types::AgentAttributes]
    # @!attribute customer_profile_attributes
    #   <p>The customer profile attributes that are used with the message template.</p>
    #   @return [Types::CustomerProfileAttributes]
    # @!attribute custom_attributes
    #   <p>The custom attributes that are used with the message template.</p>
    #   @return [Hash<String, String>]
    class MessageTemplateAttributes < Struct.new(
      nil,
      :system_attributes,
      :agent_attributes,
      :customer_profile_attributes,
      :custom_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container of the message template body.</p>
    # @!attribute content
    #   <p>The content of the message template.</p>
    #   @return [String]
    class MessageTemplateBodyContentProvider < Struct.new(
      :content,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Content < MessageTemplateBodyContentProvider; end
      class Unknown < MessageTemplateBodyContentProvider; end
    end

    # <p>The container of message template content.</p>
    # @!attribute email
    #   <p>The content of the message template that applies to the email channel subtype.</p>
    #   @return [Types::EmailMessageTemplateContent]
    # @!attribute sms
    #   <p>The content of the message template that applies to the SMS channel subtype.</p>
    #   @return [Types::SMSMessageTemplateContent]
    class MessageTemplateContentProvider < Struct.new(
      :email,
      :sms,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Email < MessageTemplateContentProvider; end
      class Sms < MessageTemplateContentProvider; end
      class Unknown < MessageTemplateContentProvider; end
    end

    # <p>The data of a message template.</p>
    # @!attribute message_template_arn
    #   <p>The Amazon Resource Name (ARN) of the message template.</p>
    #   @return [String]
    # @!attribute message_template_id
    #   <p>The identifier of the message template.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the message template.</p>
    #   @return [String]
    # @!attribute channel_subtype
    #   <p>The channel subtype this message template applies to.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp when the message template was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The timestamp when the message template data was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_by
    #   <p>The Amazon Resource Name (ARN) of the user who last updated the message template data.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the message template.</p>
    #   @return [Types::MessageTemplateContentProvider]
    # @!attribute description
    #   <p>The description of the message template.</p>
    #   @return [String]
    # @!attribute language
    #   <p>The language code value for the language in which the quick response is written. The supported language codes include <code>de_DE</code>, <code>en_US</code>, <code>es_ES</code>, <code>fr_FR</code>, <code>id_ID</code>, <code>it_IT</code>, <code>ja_JP</code>, <code>ko_KR</code>, <code>pt_BR</code>, <code>zh_CN</code>, <code>zh_TW</code> </p>
    #   @return [String]
    # @!attribute grouping_configuration
    #   <p>The configuration information of the grouping of Amazon Q in Connect users.</p>
    #   @return [Types::GroupingConfiguration]
    # @!attribute default_attributes
    #   <p>An object that specifies the default values to use for variables in the message template. This object contains different categories of key-value pairs. Each key defines a variable or placeholder in the message template. The corresponding value defines the default value for that variable.</p>
    #   @return [Types::MessageTemplateAttributes]
    # @!attribute attribute_types
    #   <p>The types of attributes that the message template contains.</p>
    #   @return [Array<String>]
    # @!attribute message_template_content_sha256
    #   <p>The checksum value of the message template content that is referenced by the <code>$LATEST</code> qualifier. It can be returned in <code>MessageTemplateData</code> or <code>ExtendedMessageTemplateData</code>. It’s calculated by content, language, <code>defaultAttributes</code> and <code>Attachments</code> of the message template.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class MessageTemplateData < Struct.new(
      nil,
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
      :message_template_content_sha256,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The message template fields to filter the message template query results by. The following is the list of supported field names:</p> <ul> <li> <p>name</p> </li> <li> <p>description</p> </li> <li> <p>channel</p> </li> <li> <p>channelSubtype</p> </li> <li> <p>language</p> </li> <li> <p>qualifier</p> </li> <li> <p>createdTime</p> </li> <li> <p>lastModifiedTime</p> </li> <li> <p>lastModifiedBy</p> </li> <li> <p>groupingConfiguration.criteria</p> </li> <li> <p>groupingConfiguration.values</p> </li> </ul>
    # @!attribute name
    #   <p>The name of the attribute field to filter the message templates by.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values of attribute field to filter the message template by.</p>
    #   @return [Array<String>]
    # @!attribute operator
    #   <p>The operator to use for filtering.</p>
    #   @return [String]
    # @!attribute include_no_existence
    #   <p>Whether to treat null value as a match for the attribute field.</p>
    #   @return [Boolean]
    class MessageTemplateFilterField < Struct.new(
      nil,
      :name,
      :values,
      :operator,
      :include_no_existence,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The message template fields to order the message template query results by. The following is the list of supported field names:</p> <ul> <li> <p>name</p> </li> <li> <p>description</p> </li> <li> <p>channel</p> </li> <li> <p>channelSubtype</p> </li> <li> <p>language</p> </li> <li> <p>qualifier</p> </li> <li> <p>createdTime</p> </li> <li> <p>lastModifiedTime</p> </li> <li> <p>lastModifiedBy</p> </li> <li> <p>groupingConfiguration.criteria</p> </li> <li> <p>groupingConfiguration.values</p> </li> </ul>
    # @!attribute name
    #   <p>The name of the message template.</p>
    #   @return [String]
    # @!attribute order
    #   <p>The order at which the message templates are sorted by.</p>
    #   @return [String]
    class MessageTemplateOrderField < Struct.new(
      nil,
      :name,
      :order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The message template fields to query message templates by. The following is the list of supported field names:</p> <ul> <li> <p>name</p> </li> <li> <p>description</p> </li> </ul>
    # @!attribute name
    #   <p>The name of the attribute to query the message templates by.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values of the attribute to query the message templates by.</p>
    #   @return [Array<String>]
    # @!attribute operator
    #   <p>The operator to use for matching attribute field values in the query.</p>
    #   @return [String]
    # @!attribute allow_fuzziness
    #   <p>Whether the query expects only exact matches on the attribute field values. The results of the query will only include exact matches if this parameter is set to false.</p>
    #   @return [Boolean]
    # @!attribute priority
    #   <p>The importance of the attribute field when calculating query result relevancy scores. The value set for this parameter affects the ordering of search results.</p>
    #   @return [String]
    class MessageTemplateQueryField < Struct.new(
      nil,
      :name,
      :values,
      :operator,
      :allow_fuzziness,
      :priority,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The search expression of the message template.</p>
    # @!attribute queries
    #   <p>The message template query expressions.</p>
    #   @return [Array<Types::MessageTemplateQueryField>]
    # @!attribute filters
    #   <p>The configuration of filtering rules applied to message template query results.</p>
    #   @return [Array<Types::MessageTemplateFilterField>]
    # @!attribute order_on_field
    #   <p>The message template attribute fields on which the query results are ordered.</p>
    #   @return [Types::MessageTemplateOrderField]
    class MessageTemplateSearchExpression < Struct.new(
      nil,
      :queries,
      :filters,
      :order_on_field,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of message template search.</p>
    # @!attribute message_template_arn
    #   <p>The Amazon Resource Name (ARN) of the message template.</p>
    #   @return [String]
    # @!attribute message_template_id
    #   <p>The identifier of the message template.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the message template.</p>
    #   @return [String]
    # @!attribute channel_subtype
    #   <p>The channel subtype this message template applies to.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp when the message template was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The timestamp when the message template data was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_by
    #   <p>The Amazon Resource Name (ARN) of the user who last updated the message template data.</p>
    #   @return [String]
    # @!attribute is_active
    #   <p>Whether the version of the message template is activated.</p>
    #   @return [Boolean]
    # @!attribute version_number
    #   <p>The version number of the message template version.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>The description of the message template.</p>
    #   @return [String]
    # @!attribute grouping_configuration
    #   <p>The configuration information of the grouping of Amazon Q in Connect users.</p>
    #   @return [Types::GroupingConfiguration]
    # @!attribute language
    #   <p>The language code value for the language in which the quick response is written. The supported language codes include <code>de_DE</code>, <code>en_US</code>, <code>es_ES</code>, <code>fr_FR</code>, <code>id_ID</code>, <code>it_IT</code>, <code>ja_JP</code>, <code>ko_KR</code>, <code>pt_BR</code>, <code>zh_CN</code>, <code>zh_TW</code> </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class MessageTemplateSearchResultData < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the message template.</p>
    # @!attribute message_template_arn
    #   <p>The Amazon Resource Name (ARN) of the message template.</p>
    #   @return [String]
    # @!attribute message_template_id
    #   <p>The identifier of the message template.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the message template.</p>
    #   @return [String]
    # @!attribute channel_subtype
    #   <p>The channel subtype this message template applies to.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp when the message template was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The timestamp when the message template data was last modified.</p>
    #   @return [Time]
    # @!attribute last_modified_by
    #   <p>The Amazon Resource Name (ARN) of the user who last updated the message template data.</p>
    #   @return [String]
    # @!attribute active_version_number
    #   <p>The version number of the message template version that is activated.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>The description of the message template.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class MessageTemplateSummary < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the message template version.</p>
    # @!attribute message_template_arn
    #   <p>The Amazon Resource Name (ARN) of the message template.</p>
    #   @return [String]
    # @!attribute message_template_id
    #   <p>The identifier of the message template.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the message template.</p>
    #   @return [String]
    # @!attribute channel_subtype
    #   <p>The channel subtype this message template applies to.</p>
    #   @return [String]
    # @!attribute is_active
    #   <p>Whether the version of the message template is activated.</p>
    #   @return [Boolean]
    # @!attribute version_number
    #   <p>The version number of the message template version.</p>
    #   @return [Integer]
    class MessageTemplateVersionSummary < Struct.new(
      nil,
      :message_template_arn,
      :message_template_id,
      :knowledge_base_arn,
      :knowledge_base_id,
      :name,
      :channel_subtype,
      :is_active,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error occurred when creating a recommendation.</p>
    # @!attribute recommendation_id
    #   <p>The identifier of the recommendation that is in error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A recommendation is causing an error.</p>
    #   @return [String]
    class NotifyRecommendationsReceivedError < Struct.new(
      nil,
      :recommendation_id,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute recommendation_ids
    #   <p>The identifiers of the recommendations.</p>
    #   @return [Array<String>]
    class NotifyRecommendationsReceivedInput < Struct.new(
      nil,
      :assistant_id,
      :session_id,
      :recommendation_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommendation_ids
    #   <p>The identifiers of the recommendations.</p>
    #   @return [Array<String>]
    # @!attribute errors
    #   <p>The identifiers of recommendations that are causing errors.</p>
    #   @return [Array<Types::NotifyRecommendationsReceivedError>]
    class NotifyRecommendationsReceivedOutput < Struct.new(
      nil,
      :recommendation_ids,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of conditions which would be applied together with an <code>OR</code> condition.</p>
    # @!attribute and_conditions
    #   <p>A list of conditions which would be applied together with an <code>AND</code> condition.</p>
    #   @return [Array<Types::TagCondition>]
    # @!attribute tag_condition
    #   <p>A leaf node condition which can be used to specify a tag condition.</p>
    #   @return [Types::TagCondition]
    class OrCondition < Struct.new(
      :and_conditions,
      :tag_condition,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AndConditions < OrCondition; end
      class TagCondition < OrCondition; end
      class Unknown < OrCondition; end
    end

    # <p>Settings for parsing document contents. By default, the service converts the contents of each document into text before splitting it into chunks. To improve processing of PDF files with tables and images, you can configure the data source to convert the pages of text into images and use a model to describe the contents of each page.</p>
    # @!attribute parsing_strategy
    #   <p>The parsing strategy for the data source.</p>
    #   @return [String]
    # @!attribute bedrock_foundation_model_configuration
    #   <p>Settings for a foundation model used to parse documents for a data source.</p>
    #   @return [Types::BedrockFoundationModelConfigurationForParsing]
    class ParsingConfiguration < Struct.new(
      nil,
      :parsing_strategy,
      :bedrock_foundation_model_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Instructions for interpreting the contents of a document.</p>
    # @!attribute parsing_prompt_text
    #   <p>Instructions for interpreting the contents of a document.</p>
    #   @return [String]
    class ParsingPrompt < Struct.new(
      nil,
      :parsing_prompt_text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The provided <code>revisionId</code> does not match, indicating the content has been modified since it was last read.</p>
    # @!attribute message
    #   @return [String]
    class PreconditionFailedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant.</p>
    #   @return [String]
    # @!attribute target_id
    #   <p>The identifier of the feedback target.</p>
    #   @return [String]
    # @!attribute target_type
    #   <p>The type of the feedback target.</p>
    #   @return [String]
    # @!attribute content_feedback
    #   <p>Information about the feedback provided.</p>
    #   @return [Types::ContentFeedbackData]
    class PutFeedbackRequest < Struct.new(
      nil,
      :assistant_id,
      :target_id,
      :target_type,
      :content_feedback,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant.</p>
    #   @return [String]
    # @!attribute assistant_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>
    #   @return [String]
    # @!attribute target_id
    #   <p>The identifier of the feedback target.</p>
    #   @return [String]
    # @!attribute target_type
    #   <p>The type of the feedback target.</p>
    #   @return [String]
    # @!attribute content_feedback
    #   <p>Information about the feedback provided.</p>
    #   @return [Types::ContentFeedbackData]
    class PutFeedbackResponse < Struct.new(
      nil,
      :assistant_id,
      :assistant_arn,
      :target_id,
      :target_type,
      :content_feedback,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute query_text
    #   <p>The text to search for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute session_id
    #   <p>The identifier of the Amazon Q in Connect session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute query_condition
    #   <p>Information about how to query content.</p>
    #   @return [Array<Types::QueryCondition>]
    # @!attribute query_input_data
    #   <p>Information about the query.</p>
    #   @return [Types::QueryInputData]
    # @!attribute override_knowledge_base_search_type
    #   <p>The search type to be used against the Knowledge Base for this request. The values can be <code>SEMANTIC</code> which uses vector embeddings or <code>HYBRID</code> which use vector embeddings and raw text.</p>
    #   @return [String]
    class QueryAssistantInput < Struct.new(
      nil,
      :assistant_id,
      :query_text,
      :next_token,
      :max_results,
      :session_id,
      :query_condition,
      :query_input_data,
      :override_knowledge_base_search_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>The results of the query.</p>
    #   @return [Array<Types::ResultData>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class QueryAssistantOutput < Struct.new(
      nil,
      :results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about how to query content.</p>
    # @!attribute single
    #   <p>The condition for the query.</p>
    #   @return [Types::QueryConditionItem]
    class QueryCondition < Struct.new(
      :single,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Single < QueryCondition; end
      class Unknown < QueryCondition; end
    end

    # <p>The condition for the query.</p>
    # @!attribute field
    #   <p> The name of the field for query condition to query on.</p>
    #   @return [String]
    # @!attribute comparator
    #   <p>The comparison operator for query condition to query on.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value for the query condition to query on.</p>
    #   @return [String]
    class QueryConditionItem < Struct.new(
      nil,
      :field,
      :comparator,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input information for the query.</p>
    # @!attribute query_text_input_data
    #   <p>Input information for the query.</p>
    #   @return [Types::QueryTextInputData]
    # @!attribute intent_input_data
    #   <p>Input information for the intent.</p>
    #   @return [Types::IntentInputData]
    class QueryInputData < Struct.new(
      :query_text_input_data,
      :intent_input_data,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class QueryTextInputData < QueryInputData; end
      class IntentInputData < QueryInputData; end
      class Unknown < QueryInputData; end
    end

    # <p>Data associated with the QUERY RecommendationTriggerType.</p>
    # @!attribute text
    #   <p>The text associated with the recommendation trigger.</p>
    #   @return [String]
    class QueryRecommendationTriggerData < Struct.new(
      nil,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the text to search for.</p>
    # @!attribute text
    #   <p>The text to search for.</p>
    #   @return [String]
    class QueryTextInputData < Struct.new(
      nil,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container quick response content.</p>
    # @!attribute content
    #   <p>The content of the quick response.</p>
    #   @return [String]
    class QuickResponseContentProvider < Struct.new(
      :content,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Content < QuickResponseContentProvider; end
      class Unknown < QuickResponseContentProvider; end
    end

    # <p>The content of the quick response stored in different media types.</p>
    # @!attribute plain_text
    #   <p>The container quick response content.</p>
    #   @return [Types::QuickResponseContentProvider]
    # @!attribute markdown
    #   <p>The container quick response content.</p>
    #   @return [Types::QuickResponseContentProvider]
    class QuickResponseContents < Struct.new(
      nil,
      :plain_text,
      :markdown,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the quick response.</p>
    # @!attribute quick_response_arn
    #   <p>The Amazon Resource Name (ARN) of the quick response.</p>
    #   @return [String]
    # @!attribute quick_response_id
    #   <p>The identifier of the quick response.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the quick response.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The media type of the quick response content.</p> <ul> <li> <p>Use <code>application/x.quickresponse;format=plain</code> for quick response written in plain text.</p> </li> <li> <p>Use <code>application/x.quickresponse;format=markdown</code> for quick response written in richtext.</p> </li> </ul>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the quick response data.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp when the quick response was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The timestamp when the quick response data was last modified.</p>
    #   @return [Time]
    # @!attribute contents
    #   <p>The contents of the quick response.</p>
    #   @return [Types::QuickResponseContents]
    # @!attribute description
    #   <p>The description of the quick response.</p>
    #   @return [String]
    # @!attribute grouping_configuration
    #   <p>The configuration information of the user groups that the quick response is accessible to.</p>
    #   @return [Types::GroupingConfiguration]
    # @!attribute shortcut_key
    #   <p>The shortcut key of the quick response. The value should be unique across the knowledge base.</p>
    #   @return [String]
    # @!attribute last_modified_by
    #   <p>The Amazon Resource Name (ARN) of the user who last updated the quick response data.</p>
    #   @return [String]
    # @!attribute is_active
    #   <p>Whether the quick response is active.</p>
    #   @return [Boolean]
    # @!attribute channels
    #   <p>The Amazon Connect contact channels this quick response applies to. The supported contact channel types include <code>Chat</code>.</p>
    #   @return [Array<String>]
    # @!attribute language
    #   <p>The language code value for the language in which the quick response is written. The supported language codes include <code>de_DE</code>, <code>en_US</code>, <code>es_ES</code>, <code>fr_FR</code>, <code>id_ID</code>, <code>it_IT</code>, <code>ja_JP</code>, <code>ko_KR</code>, <code>pt_BR</code>, <code>zh_CN</code>, <code>zh_TW</code> </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class QuickResponseData < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container of quick response data.</p>
    # @!attribute content
    #   <p>The content of the quick response.</p>
    #   @return [String]
    class QuickResponseDataProvider < Struct.new(
      :content,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Content < QuickResponseDataProvider; end
      class Unknown < QuickResponseDataProvider; end
    end

    # <p>The quick response fields to filter the quick response query results by.</p> <p>The following is the list of supported field names.</p> <ul> <li> <p>name</p> </li> <li> <p>description</p> </li> <li> <p>shortcutKey</p> </li> <li> <p>isActive</p> </li> <li> <p>channels</p> </li> <li> <p>language</p> </li> <li> <p>contentType</p> </li> <li> <p>createdTime</p> </li> <li> <p>lastModifiedTime</p> </li> <li> <p>lastModifiedBy</p> </li> <li> <p>groupingConfiguration.criteria</p> </li> <li> <p>groupingConfiguration.values</p> </li> </ul>
    # @!attribute name
    #   <p>The name of the attribute field to filter the quick responses by.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values of attribute field to filter the quick response by.</p>
    #   @return [Array<String>]
    # @!attribute operator
    #   <p>The operator to use for filtering.</p>
    #   @return [String]
    # @!attribute include_no_existence
    #   <p>Whether to treat null value as a match for the attribute field.</p>
    #   @return [Boolean]
    class QuickResponseFilterField < Struct.new(
      nil,
      :name,
      :values,
      :operator,
      :include_no_existence,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The quick response fields to order the quick response query results by.</p> <p>The following is the list of supported field names.</p> <ul> <li> <p>name</p> </li> <li> <p>description</p> </li> <li> <p>shortcutKey</p> </li> <li> <p>isActive</p> </li> <li> <p>channels</p> </li> <li> <p>language</p> </li> <li> <p>contentType</p> </li> <li> <p>createdTime</p> </li> <li> <p>lastModifiedTime</p> </li> <li> <p>lastModifiedBy</p> </li> <li> <p>groupingConfiguration.criteria</p> </li> <li> <p>groupingConfiguration.values</p> </li> </ul>
    # @!attribute name
    #   <p>The name of the attribute to order the quick response query results by.</p>
    #   @return [String]
    # @!attribute order
    #   <p>The order at which the quick responses are sorted by.</p>
    #   @return [String]
    class QuickResponseOrderField < Struct.new(
      nil,
      :name,
      :order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The quick response fields to query quick responses by.</p> <p>The following is the list of supported field names.</p> <ul> <li> <p>content</p> </li> <li> <p>name</p> </li> <li> <p>description</p> </li> <li> <p>shortcutKey</p> </li> </ul>
    # @!attribute name
    #   <p>The name of the attribute to query the quick responses by.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values of the attribute to query the quick responses by.</p>
    #   @return [Array<String>]
    # @!attribute operator
    #   <p>The operator to use for matching attribute field values in the query.</p>
    #   @return [String]
    # @!attribute allow_fuzziness
    #   <p>Whether the query expects only exact matches on the attribute field values. The results of the query will only include exact matches if this parameter is set to false.</p>
    #   @return [Boolean]
    # @!attribute priority
    #   <p>The importance of the attribute field when calculating query result relevancy scores. The value set for this parameter affects the ordering of search results.</p>
    #   @return [String]
    class QuickResponseQueryField < Struct.new(
      nil,
      :name,
      :values,
      :operator,
      :allow_fuzziness,
      :priority,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the import job.</p>
    # @!attribute queries
    #   <p>The quick response query expressions.</p>
    #   @return [Array<Types::QuickResponseQueryField>]
    # @!attribute filters
    #   <p>The configuration of filtering rules applied to quick response query results.</p>
    #   @return [Array<Types::QuickResponseFilterField>]
    # @!attribute order_on_field
    #   <p>The quick response attribute fields on which the query results are ordered.</p>
    #   @return [Types::QuickResponseOrderField]
    class QuickResponseSearchExpression < Struct.new(
      nil,
      :queries,
      :filters,
      :order_on_field,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of quick response search.</p>
    # @!attribute quick_response_arn
    #   <p>The Amazon Resource Name (ARN) of the quick response.</p>
    #   @return [String]
    # @!attribute quick_response_id
    #   <p>The identifier of the quick response.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the quick response.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The media type of the quick response content.</p> <ul> <li> <p>Use <code>application/x.quickresponse;format=plain</code> for quick response written in plain text.</p> </li> <li> <p>Use <code>application/x.quickresponse;format=markdown</code> for quick response written in richtext.</p> </li> </ul>
    #   @return [String]
    # @!attribute status
    #   <p>The resource status of the quick response.</p>
    #   @return [String]
    # @!attribute contents
    #   <p>The contents of the quick response.</p>
    #   @return [Types::QuickResponseContents]
    # @!attribute created_time
    #   <p>The timestamp when the quick response was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The timestamp when the quick response search result data was last modified.</p>
    #   @return [Time]
    # @!attribute is_active
    #   <p>Whether the quick response is active.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>The description of the quick response.</p>
    #   @return [String]
    # @!attribute grouping_configuration
    #   <p>The configuration information of the user groups that the quick response is accessible to.</p>
    #   @return [Types::GroupingConfiguration]
    # @!attribute shortcut_key
    #   <p>The shortcut key of the quick response. The value should be unique across the knowledge base.</p>
    #   @return [String]
    # @!attribute last_modified_by
    #   <p>The Amazon Resource Name (ARN) of the user who last updated the quick response search result data.</p>
    #   @return [String]
    # @!attribute channels
    #   <p>The Amazon Connect contact channels this quick response applies to. The supported contact channel types include <code>Chat</code>.</p>
    #   @return [Array<String>]
    # @!attribute language
    #   <p>The language code value for the language in which the quick response is written.</p>
    #   @return [String]
    # @!attribute attributes_not_interpolated
    #   <p>The user defined contact attributes that are not resolved when the search result is returned.</p>
    #   @return [Array<String>]
    # @!attribute attributes_interpolated
    #   <p>The user defined contact attributes that are resolved when the search result is returned.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class QuickResponseSearchResultData < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary information about the quick response.</p>
    # @!attribute quick_response_arn
    #   <p>The Amazon Resource Name (ARN) of the quick response.</p>
    #   @return [String]
    # @!attribute quick_response_id
    #   <p>The identifier of the quick response.</p>
    #   @return [String]
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the quick response.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The media type of the quick response content.</p> <ul> <li> <p>Use <code>application/x.quickresponse;format=plain</code> for quick response written in plain text.</p> </li> <li> <p>Use <code>application/x.quickresponse;format=markdown</code> for quick response written in richtext.</p> </li> </ul>
    #   @return [String]
    # @!attribute status
    #   <p>The resource status of the quick response.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp when the quick response was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The timestamp when the quick response summary was last modified.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the quick response.</p>
    #   @return [String]
    # @!attribute last_modified_by
    #   <p>The Amazon Resource Name (ARN) of the user who last updated the quick response data.</p>
    #   @return [String]
    # @!attribute is_active
    #   <p>Whether the quick response is active.</p>
    #   @return [Boolean]
    # @!attribute channels
    #   <p>The Amazon Connect contact channels this quick response applies to. The supported contact channel types include <code>Chat</code>.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class QuickResponseSummary < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the source content ranking data.</p>
    # @!attribute relevance_score
    #   <p>The relevance level of the recommendation.</p>
    #   @return [Float]
    # @!attribute relevance_level
    #   <p>The relevance score of the content.</p>
    #   @return [String]
    class RankingData < Struct.new(
      nil,
      :relevance_score,
      :relevance_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:relevance_score] = 0 unless options.key?(:relevance_score)
        super
      end
    end

    # <p>Information about the recommendation.</p>
    # @!attribute recommendation_id
    #   <p>The identifier of the recommendation.</p>
    #   @return [String]
    # @!attribute document
    #   <p>The recommended document.</p>
    #   @return [Types::Document]
    # @!attribute relevance_score
    #   <p>The relevance score of the recommendation.</p>
    #   @return [Float]
    # @!attribute relevance_level
    #   <p>The relevance level of the recommendation.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of recommendation.</p>
    #   @return [String]
    # @!attribute data
    #   <p> Summary of the recommended content.</p>
    #   @return [Types::DataSummary]
    class RecommendationData < Struct.new(
      nil,
      :recommendation_id,
      :document,
      :relevance_score,
      :relevance_level,
      :type,
      :data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:relevance_score] = 0 unless options.key?(:relevance_score)
        super
      end
    end

    # <p>A recommendation trigger provides context on the event that produced the referenced recommendations. Recommendations are only referenced in <code>recommendationIds</code> by a single RecommendationTrigger.</p>
    # @!attribute id
    #   <p>The identifier of the recommendation trigger.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of recommendation trigger.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source of the recommendation trigger.</p> <ul> <li> <p>ISSUE_DETECTION: The corresponding recommendations were triggered by a Contact Lens issue.</p> </li> <li> <p>RULE_EVALUATION: The corresponding recommendations were triggered by a Contact Lens rule.</p> </li> </ul>
    #   @return [String]
    # @!attribute data
    #   <p>A union type containing information related to the trigger.</p>
    #   @return [Types::RecommendationTriggerData]
    # @!attribute recommendation_ids
    #   <p>The identifiers of the recommendations.</p>
    #   @return [Array<String>]
    class RecommendationTrigger < Struct.new(
      nil,
      :id,
      :type,
      :source,
      :data,
      :recommendation_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A union type containing information related to the trigger.</p>
    # @!attribute query
    #   <p>Data associated with the QUERY RecommendationTriggerType.</p>
    #   @return [Types::QueryRecommendationTriggerData]
    class RecommendationTriggerData < Struct.new(
      :query,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Query < RecommendationTriggerData; end
      class Unknown < RecommendationTriggerData; end
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute ai_agent_type
    #   <p>The type of the AI Agent being removed for use by default from the Amazon Q in Connect Assistant.</p>
    #   @return [String]
    class RemoveAssistantAIAgentRequest < Struct.new(
      nil,
      :assistant_id,
      :ai_agent_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class RemoveAssistantAIAgentResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    class RemoveKnowledgeBaseTemplateUriInput < Struct.new(
      nil,
      :knowledge_base_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class RemoveKnowledgeBaseTemplateUriOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute message_template_id
    #   <p>The identifier of the message template. Can be either the ID or the ARN.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>An object that specifies the values to use for variables in the message template. This object contains different categories of key-value pairs. Each key defines a variable or placeholder in the message template. The corresponding value defines the value for that variable.</p>
    #   @return [Types::MessageTemplateAttributes]
    class RenderMessageTemplateRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :message_template_id,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content
    #   <p>The content of the message template.</p>
    #   @return [Types::MessageTemplateContentProvider]
    # @!attribute attributes_not_interpolated
    #   <p>The attribute keys that are not resolved.</p>
    #   @return [Array<String>]
    # @!attribute attachments
    #   <p>The message template attachments.</p>
    #   @return [Array<Types::MessageTemplateAttachment>]
    class RenderMessageTemplateResponse < Struct.new(
      nil,
      :content,
      :attributes_not_interpolated,
      :attachments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about how to render the content.</p>
    # @!attribute template_uri
    #   <p>A URI template containing exactly one variable in <code>${variableName} </code>format. This can only be set for <code>EXTERNAL</code> knowledge bases. For Salesforce, ServiceNow, and Zendesk, the variable must be one of the following:</p> <ul> <li> <p>Salesforce: <code>Id</code>, <code>ArticleNumber</code>, <code>VersionNumber</code>, <code>Title</code>, <code>PublishStatus</code>, or <code>IsDeleted</code> </p> </li> <li> <p>ServiceNow: <code>number</code>, <code>short_description</code>, <code>sys_mod_count</code>, <code>workflow_state</code>, or <code>active</code> </p> </li> <li> <p>Zendesk: <code>id</code>, <code>title</code>, <code>updated_at</code>, or <code>draft</code> </p> </li> </ul> <p>The variable is replaced with the actual value for a piece of content when calling <a href="https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_GetContent.html">GetContent</a>. </p>
    #   @return [String]
    class RenderingConfiguration < Struct.new(
      nil,
      :template_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request reached the service more than 15 minutes after the date stamp on the request or more than 15 minutes after the request expiration date (such as for pre-signed URLs), or the date stamp on the request is more than 15 minutes in the future.</p>
    # @!attribute message
    #   @return [String]
    class RequestTimeoutException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource does not exist.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>The specified resource name.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the result.</p>
    # @!attribute result_id
    #   <p>The identifier of the result data.</p>
    #   @return [String]
    # @!attribute document
    #   <p>The document.</p>
    #   @return [Types::Document]
    # @!attribute relevance_score
    #   <p>The relevance score of the results.</p>
    #   @return [Float]
    # @!attribute data
    #   <p> Summary of the recommended content.</p>
    #   @return [Types::DataSummary]
    # @!attribute type
    #   <p>The type of the query result.</p>
    #   @return [String]
    class ResultData < Struct.new(
      nil,
      :result_id,
      :document,
      :relevance_score,
      :data,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:relevance_score] = 0 unless options.key?(:relevance_score)
        super
      end
    end

    # <p>The list of key-value pairs that are stored on the session.</p>
    # @!attribute key
    #   <p>The key of the data stored on the session.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the data stored on the session.</p>
    #   @return [Types::RuntimeSessionDataValue]
    class RuntimeSessionData < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A union type that specifies the data stored on the session.</p>
    # @!attribute string_value
    #   <p>The string value of the data stored on the session.</p>
    #   @return [String]
    class RuntimeSessionDataValue < Struct.new(
      :string_value,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class StringValue < RuntimeSessionDataValue; end
      class Unknown < RuntimeSessionDataValue; end
    end

    # <p>The content of the message template that applies to the SMS channel subtype.</p>
    # @!attribute body
    #   <p>The body to use in SMS messages.</p>
    #   @return [Types::SMSMessageTemplateContentBody]
    class SMSMessageTemplateContent < Struct.new(
      nil,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The body to use in SMS messages.</p>
    # @!attribute plain_text
    #   <p>The message body to use in SMS messages.</p>
    #   @return [Types::MessageTemplateBodyContentProvider]
    class SMSMessageTemplateContentBody < Struct.new(
      nil,
      :plain_text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute search_expression
    #   <p>The search expression to filter results.</p>
    #   @return [Types::SearchExpression]
    class SearchContentInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :knowledge_base_id,
      :search_expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content_summaries
    #   <p>Summary information about the content.</p>
    #   @return [Array<Types::ContentSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class SearchContentOutput < Struct.new(
      nil,
      :content_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The search expression.</p>
    # @!attribute filters
    #   <p>The search expression filters.</p>
    #   @return [Array<Types::Filter>]
    class SearchExpression < Struct.new(
      nil,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute search_expression
    #   <p>The search expression for querying the message template.</p>
    #   @return [Types::MessageTemplateSearchExpression]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class SearchMessageTemplatesRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :search_expression,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>The results of the message template search.</p>
    #   @return [Array<Types::MessageTemplateSearchResultData>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class SearchMessageTemplatesResponse < Struct.new(
      nil,
      :results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should be a QUICK_RESPONSES type knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute search_expression
    #   <p>The search expression for querying the quick response.</p>
    #   @return [Types::QuickResponseSearchExpression]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute attributes
    #   <p>The <a href="https://docs.aws.amazon.com/connect/latest/adminguide/connect-attrib-list.html#user-defined-attributes">user-defined Amazon Connect contact attributes</a> to be resolved when search results are returned.</p>
    #   @return [Hash<String, String>]
    class SearchQuickResponsesRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :search_expression,
      :next_token,
      :max_results,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>The results of the quick response search.</p>
    #   @return [Array<Types::QuickResponseSearchResultData>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class SearchQuickResponsesResponse < Struct.new(
      nil,
      :results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute search_expression
    #   <p>The search expression to filter results.</p>
    #   @return [Types::SearchExpression]
    class SearchSessionsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :assistant_id,
      :search_expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_summaries
    #   <p>Summary information about the sessions.</p>
    #   @return [Array<Types::SessionSummary>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class SearchSessionsOutput < Struct.new(
      nil,
      :session_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A URL for crawling.</p>
    # @!attribute url
    #   <p>URL for crawling</p>
    #   @return [String]
    class SeedUrl < Struct.new(
      nil,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for AI Agents of type SELF_SERVICE.</p>
    # @!attribute self_service_pre_processing_ai_prompt_id
    #   <p>The AI Prompt identifier for the Self Service Pre-Processing prompt used by the SELF_SERVICE AI Agent</p>
    #   @return [String]
    # @!attribute self_service_answer_generation_ai_prompt_id
    #   <p>The AI Prompt identifier for the Self Service Answer Generation prompt used by the SELF_SERVICE AI Agent</p>
    #   @return [String]
    # @!attribute self_service_ai_guardrail_id
    #   <p>The AI Guardrail identifier used by the SELF_SERVICE AI Agent.</p>
    #   @return [String]
    # @!attribute association_configurations
    #   <p>The association configurations for overriding behavior on this AI Agent.</p>
    #   @return [Array<Types::AssociationConfiguration>]
    class SelfServiceAIAgentConfiguration < Struct.new(
      nil,
      :self_service_pre_processing_ai_prompt_id,
      :self_service_answer_generation_ai_prompt_id,
      :self_service_ai_guardrail_id,
      :association_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The conversation history data to included in conversation context data before the Amazon Q in Connect session.</p>
    # @!attribute turn_number
    #   <p>The number of turn of the conversation history data.</p>
    #   @return [Integer]
    # @!attribute input_transcript
    #   <p>The input transcript of the conversation history data.</p>
    #   @return [String]
    # @!attribute bot_response
    #   <p>The bot response of the conversation history data.</p>
    #   @return [String]
    class SelfServiceConversationHistory < Struct.new(
      nil,
      :turn_number,
      :input_transcript,
      :bot_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for semantic document chunking for a data source. Semantic chunking splits a document into smaller documents based on groups of similar content derived from the text with natural language processing.</p>
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
      nil,
      :max_tokens,
      :buffer_size,
      :breakpoint_percentile_threshold,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the Amazon Q in Connect session.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The message type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message data to submit to the Amazon Q in Connect session.</p>
    #   @return [Types::MessageInput]
    # @!attribute conversation_context
    #   <p>The conversation context before the Amazon Q in Connect session.</p>
    #   @return [Types::ConversationContext]
    # @!attribute configuration
    #   <p>The configuration of the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_amazon-q-connect_SendMessage.html">SendMessage</a> request.</p>
    #   @return [Types::MessageConfiguration]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the AWS SDK populates this field.For more information about idempotency, see Making retries safe with idempotent APIs.</p>
    #   @return [String]
    class SendMessageRequest < Struct.new(
      nil,
      :assistant_id,
      :session_id,
      :type,
      :message,
      :conversation_context,
      :configuration,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_message_id
    #   <p>The identifier of the submitted message.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration of the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_amazon-q-connect_SendMessage.html">SendMessage</a> request.</p>
    #   @return [Types::MessageConfiguration]
    # @!attribute next_message_token
    #   <p>The token for the next message, used by GetNextMessage.</p>
    #   @return [String]
    class SendMessageResponse < Struct.new(
      nil,
      :request_message_id,
      :configuration,
      :next_message_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration information for the customer managed key used for encryption.</p>
    # @!attribute kms_key_id
    #   <p>The customer managed key used for encryption. For more information about setting up a customer managed key for Amazon Q in Connect, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-q.html">Enable Amazon Q in Connect for your instance</a>. For information about valid ID values, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id">Key identifiers (KeyId)</a>.</p>
    #   @return [String]
    class ServerSideEncryptionConfiguration < Struct.new(
      nil,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You've exceeded your service quota. To perform the requested action, remove some of the relevant resources, or use service quotas to request a service quota increase.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the session.</p>
    # @!attribute session_arn
    #   <p>The Amazon Resource Name (ARN) of the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the session.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the session.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the session.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute integration_configuration
    #   <p>The configuration information for the session integration.</p>
    #   @return [Types::SessionIntegrationConfiguration]
    # @!attribute tag_filter
    #   <p>An object that can be used to specify Tag conditions.</p>
    #   @return [Types::TagFilter]
    # @!attribute ai_agent_configuration
    #   <p>The configuration of the AI Agents (mapped by AI Agent Type to AI Agent version) that should be used by Amazon Q in Connect for this Session.</p>
    #   @return [Hash<String, Types::AIAgentConfigurationData>]
    # @!attribute origin
    #   <p>The origin of the Session to be listed. <code>SYSTEM</code> for a default Session created by Amazon Q in Connect or <code>CUSTOMER</code> for a Session created by calling <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_amazon-q-connect_CreateSession.html">CreateSession</a> API.</p>
    #   @return [String]
    class SessionData < Struct.new(
      nil,
      :session_arn,
      :session_id,
      :name,
      :description,
      :tags,
      :integration_configuration,
      :tag_filter,
      :ai_agent_configuration,
      :origin,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration information for the session integration.</p>
    # @!attribute topic_integration_arn
    #   <p>The Amazon Resource Name (ARN) of the integrated Amazon SNS topic used for streaming chat messages.</p>
    #   @return [String]
    class SessionIntegrationConfiguration < Struct.new(
      nil,
      :topic_integration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about the session.</p>
    # @!attribute session_id
    #   <p>The identifier of the session.</p>
    #   @return [String]
    # @!attribute session_arn
    #   <p>The Amazon Resource Name (ARN) of the session.</p>
    #   @return [String]
    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant.</p>
    #   @return [String]
    # @!attribute assistant_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q in Connect assistant.</p>
    #   @return [String]
    class SessionSummary < Struct.new(
      nil,
      :session_id,
      :session_arn,
      :assistant_id,
      :assistant_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information about the external data source.</p>
    # @!attribute app_integrations
    #   <p>Configuration information for Amazon AppIntegrations to automatically ingest content.</p>
    #   @return [Types::AppIntegrationsConfiguration]
    # @!attribute managed_source_configuration
    #   <p>Source configuration for managed resources.</p>
    #   @return [Types::ManagedSourceConfiguration]
    class SourceConfiguration < Struct.new(
      :app_integrations,
      :managed_source_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AppIntegrations < SourceConfiguration; end
      class ManagedSourceConfiguration < SourceConfiguration; end
      class Unknown < SourceConfiguration; end
    end

    # <p>Details about the source content data.</p>
    # @!attribute id
    #   <p>The identifier of the source content.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the source content.</p>
    #   @return [String]
    # @!attribute text_data
    #   <p> Details about the source content text data.</p>
    #   @return [Types::TextData]
    # @!attribute ranking_data
    #   <p>Details about the source content ranking data.</p>
    #   @return [Types::RankingData]
    # @!attribute citation_span
    #   <p>Contains information about where the text with a citation begins and ends in the generated output.</p>
    #   @return [Types::CitationSpan]
    class SourceContentDataDetails < Struct.new(
      nil,
      :id,
      :type,
      :text_data,
      :ranking_data,
      :citation_span,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The type of content to upload.</p>
    #   @return [String]
    # @!attribute presigned_url_time_to_live
    #   <p>The expected expiration time of the generated presigned URL, specified in minutes.</p>
    #   @return [Integer]
    class StartContentUploadInput < Struct.new(
      nil,
      :knowledge_base_id,
      :content_type,
      :presigned_url_time_to_live,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute upload_id
    #   <p>The identifier of the upload.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL of the upload.</p>
    #   @return [String]
    # @!attribute url_expiry
    #   <p>The expiration time of the URL as an epoch timestamp.</p>
    #   @return [Time]
    # @!attribute headers_to_include
    #   <p>The headers to include in the upload.</p>
    #   @return [Hash<String, String>]
    class StartContentUploadOutput < Struct.new(
      nil,
      :upload_id,
      :url,
      :url_expiry,
      :headers_to_include,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p> <ul> <li> <p>For importing Amazon Q in Connect quick responses, this should be a <code>QUICK_RESPONSES</code> type knowledge base.</p> </li> </ul>
    #   @return [String]
    # @!attribute import_job_type
    #   <p>The type of the import job.</p> <ul> <li> <p>For importing quick response resource, set the value to <code>QUICK_RESPONSES</code>.</p> </li> </ul>
    #   @return [String]
    # @!attribute upload_id
    #   <p>A pointer to the uploaded asset. This value is returned by <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html">StartContentUpload</a>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata fields of the imported Amazon Q in Connect resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute external_source_configuration
    #   <p>The configuration information of the external source that the resource data are imported from.</p>
    #   @return [Types::ExternalSourceConfiguration]
    class StartImportJobRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :import_job_type,
      :upload_id,
      :client_token,
      :metadata,
      :external_source_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_job
    #   <p>The import job.</p>
    #   @return [Types::ImportJobData]
    class StartImportJobResponse < Struct.new(
      nil,
      :import_job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The system attributes that are used with the message template.</p>
    # @!attribute name
    #   <p>The name of the task.</p>
    #   @return [String]
    # @!attribute customer_endpoint
    #   <p>The CustomerEndpoint attribute.</p>
    #   @return [Types::SystemEndpointAttributes]
    # @!attribute system_endpoint
    #   <p>The SystemEndpoint attribute.</p>
    #   @return [Types::SystemEndpointAttributes]
    class SystemAttributes < Struct.new(
      nil,
      :name,
      :customer_endpoint,
      :system_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The system endpoint attributes that are used with the message template.</p>
    # @!attribute address
    #   <p>The customer's phone number if used with <code>customerEndpoint</code>, or the number the customer dialed to call your contact center if used with <code>systemEndpoint</code>.</p>
    #   @return [String]
    class SystemEndpointAttributes < Struct.new(
      nil,
      :address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A leaf node condition which can be used to specify a tag condition. </p>
    # @!attribute key
    #   <p>The tag key in the tag condition.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag value in the tag condition.</p>
    #   @return [String]
    class TagCondition < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that can be used to specify Tag conditions.</p>
    # @!attribute tag_condition
    #   <p>A leaf node condition which can be used to specify a tag condition.</p>
    #   @return [Types::TagCondition]
    # @!attribute and_conditions
    #   <p>A list of conditions which would be applied together with an <code>AND</code> condition.</p>
    #   @return [Array<Types::TagCondition>]
    # @!attribute or_conditions
    #   <p>A list of conditions which would be applied together with an <code>OR</code> condition.</p>
    #   @return [Array<Types::OrCondition>]
    class TagFilter < Struct.new(
      :tag_condition,
      :and_conditions,
      :or_conditions,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class TagCondition < TagFilter; end
      class AndConditions < TagFilter; end
      class OrConditions < TagFilter; end
      class Unknown < TagFilter; end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the source content text data.</p>
    # @!attribute title
    #   <p>The text of the document.</p>
    #   @return [Types::DocumentText]
    # @!attribute excerpt
    #   <p>The text of the document.</p>
    #   @return [Types::DocumentText]
    class TextData < Struct.new(
      nil,
      :title,
      :excerpt,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a prompt template that supports full textual prompt configuration using a YAML prompt.</p>
    # @!attribute text
    #   <p>The YAML text for the AI Prompt template.</p>
    #   @return [String]
    class TextFullAIPromptEditTemplateConfiguration < Struct.new(
      nil,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The message data in text type.</p>
    # @!attribute value
    #   <p>The value of the message data in text type.</p>
    #   @return [String]
    class TextMessage < Struct.new(
      nil,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The throttling limit has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Q in Connect throws this exception if you have too many tags in your tag set.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>The specified resource name.</p>
    #   @return [String]
    class TooManyTagsException < Struct.new(
      nil,
      :message,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You do not have permission to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href="http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>..</p>
    #   @return [String]
    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute ai_agent_id
    #   <p>The identifier of the Amazon Q in Connect AI Agent.</p>
    #   @return [String]
    # @!attribute visibility_status
    #   <p>The visbility status of the Amazon Q in Connect AI Agent.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration of the Amazon Q in Connect AI Agent.</p>
    #   @return [Types::AIAgentConfiguration]
    # @!attribute description
    #   <p>The description of the Amazon Q in Connect AI Agent.</p>
    #   @return [String]
    class UpdateAIAgentRequest < Struct.new(
      nil,
      :client_token,
      :assistant_id,
      :ai_agent_id,
      :visibility_status,
      :configuration,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ai_agent
    #   <p>The data of the updated Amazon Q in Connect AI Agent.</p>
    #   @return [Types::AIAgentData]
    class UpdateAIAgentResponse < Struct.new(
      nil,
      :ai_agent,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href="http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>..</p>
    #   @return [String]
    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute ai_guardrail_id
    #   <p>The identifier of the Amazon Q in Connect AI Guardrail.</p>
    #   @return [String]
    # @!attribute visibility_status
    #   <p>The visibility status of the Amazon Q in Connect AI Guardrail.</p>
    #   @return [String]
    # @!attribute blocked_input_messaging
    #   <p>The message to return when the AI Guardrail blocks a prompt.</p>
    #   @return [String]
    # @!attribute blocked_outputs_messaging
    #   <p>The message to return when the AI Guardrail blocks a model response.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the AI Guardrail.</p>
    #   @return [String]
    # @!attribute topic_policy_config
    #   <p>The topic policies to configure for the AI Guardrail.</p>
    #   @return [Types::AIGuardrailTopicPolicyConfig]
    # @!attribute content_policy_config
    #   <p>The content filter policies to configure for the AI Guardrail.</p>
    #   @return [Types::AIGuardrailContentPolicyConfig]
    # @!attribute word_policy_config
    #   <p>The word policy you configure for the AI Guardrail.</p>
    #   @return [Types::AIGuardrailWordPolicyConfig]
    # @!attribute sensitive_information_policy_config
    #   <p>The sensitive information policy to configure for the AI Guardrail.</p>
    #   @return [Types::AIGuardrailSensitiveInformationPolicyConfig]
    # @!attribute contextual_grounding_policy_config
    #   <p>The contextual grounding policy configuration used to create an AI Guardrail.</p>
    #   @return [Types::AIGuardrailContextualGroundingPolicyConfig]
    class UpdateAIGuardrailRequest < Struct.new(
      nil,
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
      :contextual_grounding_policy_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ai_guardrail
    #   <p>The data of the updated Amazon Q in Connect AI Guardrail.</p>
    #   @return [Types::AIGuardrailData]
    class UpdateAIGuardrailResponse < Struct.new(
      nil,
      :ai_guardrail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href="http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>..</p>
    #   @return [String]
    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute ai_prompt_id
    #   <p>The identifier of the Amazon Q in Connect AI Prompt.</p>
    #   @return [String]
    # @!attribute visibility_status
    #   <p>The visibility status of the Amazon Q in Connect AI prompt.</p>
    #   @return [String]
    # @!attribute template_configuration
    #   <p>The configuration of the prompt template for this AI Prompt.</p>
    #   @return [Types::AIPromptTemplateConfiguration]
    # @!attribute description
    #   <p>The description of the Amazon Q in Connect AI Prompt.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The identifier of the model used for this AI Prompt.</p> <note> <p>For information about which models are supported in each Amazon Web Services Region, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/create-ai-prompts.html#cli-create-aiprompt">Supported models for system/custom prompts</a>.</p> </note>
    #   @return [String]
    class UpdateAIPromptRequest < Struct.new(
      nil,
      :client_token,
      :assistant_id,
      :ai_prompt_id,
      :visibility_status,
      :template_configuration,
      :description,
      :model_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ai_prompt
    #   <p>The data of the updated Amazon Q in Connect AI Prompt.</p>
    #   @return [Types::AIPromptData]
    class UpdateAIPromptResponse < Struct.new(
      nil,
      :ai_prompt,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute ai_agent_type
    #   <p>The type of the AI Agent being updated for use by default on the Amazon Q in Connect Assistant.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration of the AI Agent being updated for use by default on the Amazon Q in Connect Assistant.</p>
    #   @return [Types::AIAgentConfigurationData]
    class UpdateAssistantAIAgentRequest < Struct.new(
      nil,
      :assistant_id,
      :ai_agent_type,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant
    #   <p>The assistant data.</p>
    #   @return [Types::AssistantData]
    class UpdateAssistantAIAgentResponse < Struct.new(
      nil,
      :assistant,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge base. Can be either the ID or the ARN</p>
    #   @return [String]
    # @!attribute content_id
    #   <p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The <code>revisionId</code> of the content resource to update, taken from an earlier call to <code>GetContent</code>, <code>GetContentSummary</code>, <code>SearchContent</code>, or <code>ListContents</code>. If included, this argument acts as an optimistic lock to ensure content was not modified since it was last read. If it has been modified, this API throws a <code>PreconditionFailedException</code>.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the content.</p>
    #   @return [String]
    # @!attribute override_link_out_uri
    #   <p>The URI for the article. If the knowledge base has a templateUri, setting this argument overrides it for this piece of content. To remove an existing <code>overrideLinkOurUri</code>, exclude this argument and set <code>removeOverrideLinkOutUri</code> to true.</p>
    #   @return [String]
    # @!attribute remove_override_link_out_uri
    #   <p>Unset the existing <code>overrideLinkOutUri</code> if it exists.</p>
    #   @return [Boolean]
    # @!attribute metadata
    #   <p>A key/value map to store attributes without affecting tagging or recommendations. For example, when synchronizing data between an external system and Amazon Q in Connect, you can store an external version identifier as metadata to utilize for determining drift.</p>
    #   @return [Hash<String, String>]
    # @!attribute upload_id
    #   <p>A pointer to the uploaded asset. This value is returned by <a href="https://docs.aws.amazon.com/amazon-q-connect/latest/APIReference/API_StartContentUpload.html">StartContentUpload</a>. </p>
    #   @return [String]
    class UpdateContentInput < Struct.new(
      nil,
      :knowledge_base_id,
      :content_id,
      :revision_id,
      :title,
      :override_link_out_uri,
      :remove_override_link_out_uri,
      :metadata,
      :upload_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content
    #   <p>The content.</p>
    #   @return [Types::ContentData]
    class UpdateContentOutput < Struct.new(
      nil,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. This should not be a QUICK_RESPONSES type knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute template_uri
    #   <p>The template URI to update.</p>
    #   @return [String]
    class UpdateKnowledgeBaseTemplateUriInput < Struct.new(
      nil,
      :knowledge_base_id,
      :template_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base
    #   <p>The knowledge base to update.</p>
    #   @return [Types::KnowledgeBaseData]
    class UpdateKnowledgeBaseTemplateUriOutput < Struct.new(
      nil,
      :knowledge_base,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute message_template_id
    #   <p>The identifier of the message template. Can be either the ID or the ARN. It cannot contain any qualifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the message template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the message template.</p>
    #   @return [String]
    # @!attribute grouping_configuration
    #   <p>The configuration information of the grouping of Amazon Q in Connect users.</p>
    #   @return [Types::GroupingConfiguration]
    class UpdateMessageTemplateMetadataRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :message_template_id,
      :name,
      :description,
      :grouping_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_template
    #   <p>The message template.</p>
    #   @return [Types::MessageTemplateData]
    class UpdateMessageTemplateMetadataResponse < Struct.new(
      nil,
      :message_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute message_template_id
    #   <p>The identifier of the message template. Can be either the ID or the ARN. It cannot contain any qualifier.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the message template.</p>
    #   @return [Types::MessageTemplateContentProvider]
    # @!attribute language
    #   <p>The language code value for the language in which the quick response is written. The supported language codes include <code>de_DE</code>, <code>en_US</code>, <code>es_ES</code>, <code>fr_FR</code>, <code>id_ID</code>, <code>it_IT</code>, <code>ja_JP</code>, <code>ko_KR</code>, <code>pt_BR</code>, <code>zh_CN</code>, <code>zh_TW</code> </p>
    #   @return [String]
    # @!attribute default_attributes
    #   <p>An object that specifies the default values to use for variables in the message template. This object contains different categories of key-value pairs. Each key defines a variable or placeholder in the message template. The corresponding value defines the default value for that variable.</p>
    #   @return [Types::MessageTemplateAttributes]
    class UpdateMessageTemplateRequest < Struct.new(
      nil,
      :knowledge_base_id,
      :message_template_id,
      :content,
      :language,
      :default_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_template
    #   <p>The message template.</p>
    #   @return [Types::MessageTemplateData]
    class UpdateMessageTemplateResponse < Struct.new(
      nil,
      :message_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute quick_response_id
    #   <p>The identifier of the quick response.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the quick response.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The updated content of the quick response.</p>
    #   @return [Types::QuickResponseDataProvider]
    # @!attribute content_type
    #   <p>The media type of the quick response content.</p> <ul> <li> <p>Use <code>application/x.quickresponse;format=plain</code> for quick response written in plain text.</p> </li> <li> <p>Use <code>application/x.quickresponse;format=markdown</code> for quick response written in richtext.</p> </li> </ul>
    #   @return [String]
    # @!attribute grouping_configuration
    #   <p>The updated grouping configuration of the quick response.</p>
    #   @return [Types::GroupingConfiguration]
    # @!attribute remove_grouping_configuration
    #   <p>Whether to remove the grouping configuration of the quick response.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>The updated description of the quick response.</p>
    #   @return [String]
    # @!attribute remove_description
    #   <p>Whether to remove the description from the quick response.</p>
    #   @return [Boolean]
    # @!attribute shortcut_key
    #   <p>The shortcut key of the quick response. The value should be unique across the knowledge base.</p>
    #   @return [String]
    # @!attribute remove_shortcut_key
    #   <p>Whether to remove the shortcut key of the quick response.</p>
    #   @return [Boolean]
    # @!attribute is_active
    #   <p>Whether the quick response is active. </p>
    #   @return [Boolean]
    # @!attribute channels
    #   <p>The Amazon Connect contact channels this quick response applies to. The supported contact channel types include <code>Chat</code>.</p>
    #   @return [Array<String>]
    # @!attribute language
    #   <p>The language code value for the language in which the quick response is written. The supported language codes include <code>de_DE</code>, <code>en_US</code>, <code>es_ES</code>, <code>fr_FR</code>, <code>id_ID</code>, <code>it_IT</code>, <code>ja_JP</code>, <code>ko_KR</code>, <code>pt_BR</code>, <code>zh_CN</code>, <code>zh_TW</code> </p>
    #   @return [String]
    class UpdateQuickResponseRequest < Struct.new(
      nil,
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
      :language,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute quick_response
    #   <p>The quick response.</p>
    #   @return [Types::QuickResponseData]
    class UpdateQuickResponseResponse < Struct.new(
      nil,
      :quick_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace into which the session data is stored. Supported namespaces are: Custom</p>
    #   @return [String]
    # @!attribute data
    #   <p>The data stored on the Amazon Q in Connect Session.</p>
    #   @return [Array<Types::RuntimeSessionData>]
    class UpdateSessionDataRequest < Struct.new(
      nil,
      :assistant_id,
      :session_id,
      :namespace,
      :data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_arn
    #   <p>The Amazon Resource Name (ARN) of the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the session.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace into which the session data is stored. Supported namespaces are: Custom</p>
    #   @return [String]
    # @!attribute data
    #   <p>Data stored in the session.</p>
    #   @return [Array<Types::RuntimeSessionData>]
    class UpdateSessionDataResponse < Struct.new(
      nil,
      :session_arn,
      :session_id,
      :namespace,
      :data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Amazon Q in Connect assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description.</p>
    #   @return [String]
    # @!attribute tag_filter
    #   <p>An object that can be used to specify Tag conditions.</p>
    #   @return [Types::TagFilter]
    # @!attribute ai_agent_configuration
    #   <p>The configuration of the AI Agents (mapped by AI Agent Type to AI Agent version) that should be used by Amazon Q in Connect for this Session.</p>
    #   @return [Hash<String, Types::AIAgentConfigurationData>]
    class UpdateSessionRequest < Struct.new(
      nil,
      :assistant_id,
      :session_id,
      :description,
      :tag_filter,
      :ai_agent_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session
    #   <p>Information about the session.</p>
    #   @return [Types::SessionData]
    class UpdateSessionResponse < Struct.new(
      nil,
      :session,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of the URL/URLs for the web content that you want to crawl. You should be authorized to crawl the URLs.</p>
    # @!attribute seed_urls
    #   <p>List of URLs for crawling.</p>
    #   @return [Array<Types::SeedUrl>]
    class UrlConfiguration < Struct.new(
      nil,
      :seed_urls,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by a service.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about how to ingest the documents in a data source.</p>
    # @!attribute chunking_configuration
    #   <p>Details about how to chunk the documents in the data source. A chunk refers to an excerpt from a data source that is returned when the knowledge base that it belongs to is queried.</p>
    #   @return [Types::ChunkingConfiguration]
    # @!attribute parsing_configuration
    #   <p>A custom parser for data source documents.</p>
    #   @return [Types::ParsingConfiguration]
    class VectorIngestionConfiguration < Struct.new(
      nil,
      :chunking_configuration,
      :parsing_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details for the web data source.</p>
    # @!attribute url_configuration
    #   <p>The configuration of the URL/URLs for the web content that you want to crawl. You should be authorized to crawl the URLs.</p>
    #   @return [Types::UrlConfiguration]
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
    #   <p>The scope of what is crawled for your URLs. You can choose to crawl only web pages that belong to the same host or primary domain. For example, only web pages that contain the seed URL <code>https://docs.aws.amazon.com/bedrock/latest/userguide/</code> and no other domains. You can choose to include sub domains in addition to the host or primary domain. For example, web pages that contain <code>aws.amazon.com</code> can also include sub domain <code>docs.aws.amazon.com</code>.</p>
    #   @return [String]
    class WebCrawlerConfiguration < Struct.new(
      nil,
      :url_configuration,
      :crawler_limits,
      :inclusion_filters,
      :exclusion_filters,
      :scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of crawl limits for the web URLs.</p>
    # @!attribute rate_limit
    #   <p>Rate of web URLs retrieved per minute.</p>
    #   @return [Integer]
    class WebCrawlerLimits < Struct.new(
      nil,
      :rate_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end

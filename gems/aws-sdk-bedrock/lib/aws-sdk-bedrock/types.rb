# frozen_string_literal: true

# This is generated code!

module Aws::Bedrock
  # This module contains the types returned by client operations.
  module Types

    # <p>The request is denied because of missing access permissions.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the agreement availability</p>
    # @!attribute status
    #   <p>Status of the agreement.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Error message.</p>
    #   @return [String]
    class AgreementAvailability < Struct.new(
      :status,
      :error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AgreementStatus
      AVAILABLE = 'AVAILABLE'
      PENDING = 'PENDING'
      NOT_AVAILABLE = 'NOT_AVAILABLE'
      ERROR = 'ERROR'
    end

    module ApplicationType
      MODEL_EVALUATION = 'ModelEvaluation'
      RAG_EVALUATION = 'RagEvaluation'
    end

    module AttributeType
      STRING = 'STRING'
      NUMBER = 'NUMBER'
      BOOLEAN = 'BOOLEAN'
      STRING_LIST = 'STRING_LIST'
    end

    module AuthorizationStatus
      AUTHORIZED = 'AUTHORIZED'
      NOT_AUTHORIZED = 'NOT_AUTHORIZED'
    end

    # <p>The configuration details of an automated evaluation job. The <code>EvaluationDatasetMetricConfig</code> object is used to specify the prompt datasets, task type, and metric names.</p>
    # @!attribute dataset_metric_configs
    #   <p>Configuration details of the prompt datasets and metrics you want to use for your evaluation job.</p>
    #   @return [Array<Types::EvaluationDatasetMetricConfig>]
    # @!attribute evaluator_model_config
    #   <p>Contains the evaluator model configuration details. <code>EvaluatorModelConfig</code> is required for evaluation jobs that use a knowledge base or in model evaluation job that use a model as judge. This model computes all evaluation related metrics.</p>
    #   @return [Types::EvaluatorModelConfig]
    # @!attribute custom_metric_config
    #   <p>Defines the configuration of custom metrics to be used in an evaluation job.</p>
    #   @return [Types::AutomatedEvaluationCustomMetricConfig]
    class AutomatedEvaluationConfig < Struct.new(
      :dataset_metric_configs,
      :evaluator_model_config,
      :custom_metric_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines the configuration of custom metrics to be used in an evaluation job. To learn more about using custom metrics in Amazon Bedrock evaluation jobs, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-evaluation-custom-metrics-prompt-formats.html">Create a prompt for a custom metrics (LLM-as-a-judge model evaluations)</a> and <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-evaluation-custom-metrics-prompt-formats.html">Create a prompt for a custom metrics (RAG evaluations)</a>.</p>
    # @!attribute custom_metrics
    #   <p>Defines a list of custom metrics to be used in an Amazon Bedrock evaluation job.</p>
    #   @return [Array<Types::AutomatedEvaluationCustomMetricSource>]
    # @!attribute evaluator_model_config
    #   <p>Configuration of the evaluator model you want to use to evaluate custom metrics in an Amazon Bedrock evaluation job.</p>
    #   @return [Types::CustomMetricEvaluatorModelConfig]
    class AutomatedEvaluationCustomMetricConfig < Struct.new(
      :custom_metrics,
      :evaluator_model_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An array item definining a single custom metric for use in an Amazon Bedrock evaluation job.</p>
    # @!attribute custom_metric_definition
    #   <p>The definition of a custom metric for use in an Amazon Bedrock evaluation job.</p>
    #   @return [Types::CustomMetricDefinition]
    class AutomatedEvaluationCustomMetricSource < Struct.new(
      :custom_metric_definition,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class CustomMetricDefinition < AutomatedEvaluationCustomMetricSource; end
      class Unknown < AutomatedEvaluationCustomMetricSource; end
    end

    # <p>Represents the result of an Automated Reasoning validation check, indicating whether the content is logically valid, invalid, or falls into other categories based on the policy rules.</p>
    # @!attribute valid
    #   <p>Indicates that the claims are true. The claims are implied by the premises and the Automated Reasoning policy. Given the Automated Reasoning policy and premises, it is not possible for these claims to be false.</p>
    #   @return [Types::AutomatedReasoningCheckValidFinding]
    # @!attribute invalid
    #   <p>Indicates that the claims are false. The claims are not implied by the premises and Automated Reasoning policy. Furthermore, there exist different claims that are consistent with the premises and Automated Reasoning policy.</p>
    #   @return [Types::AutomatedReasoningCheckInvalidFinding]
    # @!attribute satisfiable
    #   <p>Indicates that the claims can be true or false. It depends on what assumptions are made for the claim to be implied from the premises and Automated Reasoning policy rules. In this situation, different assumptions can make input claims false and alternative claims true.</p>
    #   @return [Types::AutomatedReasoningCheckSatisfiableFinding]
    # @!attribute impossible
    #   <p>Indicates that Automated Reasoning cannot make a statement about the claims. This can happen if the premises are logically incorrect, or if there is a conflict within the Automated Reasoning policy itself.</p>
    #   @return [Types::AutomatedReasoningCheckImpossibleFinding]
    # @!attribute translation_ambiguous
    #   <p>Indicates that an ambiguity was detected in the translation, making it unsound to continue with validity checking. Additional context or follow-up questions might be needed to get translation to succeed.</p>
    #   @return [Types::AutomatedReasoningCheckTranslationAmbiguousFinding]
    # @!attribute too_complex
    #   <p>Indicates that the input contains too much information for Automated Reasoning to process within its latency limits.</p>
    #   @return [Types::AutomatedReasoningCheckTooComplexFinding]
    # @!attribute no_translations
    #   <p>Identifies that some or all of the input prompt wasn't translated into logic. This can happen if the input isn't relevant to the Automated Reasoning policy, or if the policy doesn't have variables to model relevant input.</p>
    #   @return [Types::AutomatedReasoningCheckNoTranslationsFinding]
    class AutomatedReasoningCheckFinding < Struct.new(
      :valid,
      :invalid,
      :satisfiable,
      :impossible,
      :translation_ambiguous,
      :too_complex,
      :no_translations,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Valid < AutomatedReasoningCheckFinding; end
      class Invalid < AutomatedReasoningCheckFinding; end
      class Satisfiable < AutomatedReasoningCheckFinding; end
      class Impossible < AutomatedReasoningCheckFinding; end
      class TranslationAmbiguous < AutomatedReasoningCheckFinding; end
      class TooComplex < AutomatedReasoningCheckFinding; end
      class NoTranslations < AutomatedReasoningCheckFinding; end
      class Unknown < AutomatedReasoningCheckFinding; end
    end

    # <p>Indicates that no valid claims can be made due to logical contradictions in the premises or rules.</p>
    # @!attribute translation
    #   <p>The logical translation of the input that this finding evaluates.</p>
    #   @return [Types::AutomatedReasoningCheckTranslation]
    # @!attribute contradicting_rules
    #   <p>The automated reasoning policy rules that contradict the claims and/or premises in the input.</p>
    #   @return [Array<Types::AutomatedReasoningCheckRule>]
    # @!attribute logic_warning
    #   <p>Indication of a logic issue with the translation without needing to consider the automated reasoning policy rules.</p>
    #   @return [Types::AutomatedReasoningCheckLogicWarning]
    class AutomatedReasoningCheckImpossibleFinding < Struct.new(
      :translation,
      :contradicting_rules,
      :logic_warning,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>References a portion of the original input text that corresponds to logical elements.</p>
    # @!attribute text
    #   <p>The specific text from the original input that this reference points to.</p>
    #   @return [String]
    class AutomatedReasoningCheckInputTextReference < Struct.new(
      :text,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Indicates that the claims are logically false and contradictory to the established rules or premises.</p>
    # @!attribute translation
    #   <p>The logical translation of the input that this finding invalidates.</p>
    #   @return [Types::AutomatedReasoningCheckTranslation]
    # @!attribute contradicting_rules
    #   <p>The automated reasoning policy rules that contradict the claims in the input.</p>
    #   @return [Array<Types::AutomatedReasoningCheckRule>]
    # @!attribute logic_warning
    #   <p>Indication of a logic issue with the translation without needing to consider the automated reasoning policy rules.</p>
    #   @return [Types::AutomatedReasoningCheckLogicWarning]
    class AutomatedReasoningCheckInvalidFinding < Struct.new(
      :translation,
      :contradicting_rules,
      :logic_warning,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Identifies logical issues in the translated statements that exist independent of any policy rules, such as statements that are always true or always false.</p>
    # @!attribute type
    #   <p>The category of the detected logical issue, such as statements that are always true or always false.</p>
    #   @return [String]
    # @!attribute premises
    #   <p>The logical statements that serve as premises under which the claims are validated.</p>
    #   @return [Array<Types::AutomatedReasoningLogicStatement>]
    # @!attribute claims
    #   <p>The logical statements that are validated while assuming the policy and premises.</p>
    #   @return [Array<Types::AutomatedReasoningLogicStatement>]
    class AutomatedReasoningCheckLogicWarning < Struct.new(
      :type,
      :premises,
      :claims,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AutomatedReasoningCheckLogicWarningType
      ALWAYS_TRUE = 'ALWAYS_TRUE'
      ALWAYS_FALSE = 'ALWAYS_FALSE'
    end

    # <p>Indicates that no relevant logical information could be extracted from the input for validation.</p>
    class AutomatedReasoningCheckNoTranslationsFinding < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AutomatedReasoningCheckResult
      VALID = 'VALID'
      INVALID = 'INVALID'
      SATISFIABLE = 'SATISFIABLE'
      IMPOSSIBLE = 'IMPOSSIBLE'
      TRANSLATION_AMBIGUOUS = 'TRANSLATION_AMBIGUOUS'
      TOO_COMPLEX = 'TOO_COMPLEX'
      NO_TRANSLATION = 'NO_TRANSLATION'
    end

    # <p>References a specific automated reasoning policy rule that was applied during evaluation.</p>
    # @!attribute id
    #   <p>The unique identifier of the automated reasoning rule.</p>
    #   @return [String]
    # @!attribute policy_version_arn
    #   <p>The ARN of the automated reasoning policy version that contains this rule.</p>
    #   @return [String]
    class AutomatedReasoningCheckRule < Struct.new(
      :id,
      :policy_version_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Indicates that the claims could be either true or false depending on additional assumptions not provided in the input.</p>
    # @!attribute translation
    #   <p>The logical translation of the input that this finding evaluates.</p>
    #   @return [Types::AutomatedReasoningCheckTranslation]
    # @!attribute claims_true_scenario
    #   <p>An example scenario demonstrating how the claims could be logically true.</p>
    #   @return [Types::AutomatedReasoningCheckScenario]
    # @!attribute claims_false_scenario
    #   <p>An example scenario demonstrating how the claims could be logically false.</p>
    #   @return [Types::AutomatedReasoningCheckScenario]
    # @!attribute logic_warning
    #   <p>Indication of a logic issue with the translation without needing to consider the automated reasoning policy rules.</p>
    #   @return [Types::AutomatedReasoningCheckLogicWarning]
    class AutomatedReasoningCheckSatisfiableFinding < Struct.new(
      :translation,
      :claims_true_scenario,
      :claims_false_scenario,
      :logic_warning,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a logical scenario where claims can be evaluated as true or false, containing specific logical assignments.</p>
    # @!attribute statements
    #   <p>List of logical assignments and statements that define this scenario.</p>
    #   @return [Array<Types::AutomatedReasoningLogicStatement>]
    class AutomatedReasoningCheckScenario < Struct.new(
      :statements,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Indicates that the input exceeds the processing capacity due to the volume or complexity of the logical information.</p>
    class AutomatedReasoningCheckTooComplexFinding < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the logical translation of natural language input into formal logical statements, including premises, claims, and confidence scores.</p>
    # @!attribute premises
    #   <p>The logical statements that serve as the foundation or assumptions for the claims.</p>
    #   @return [Array<Types::AutomatedReasoningLogicStatement>]
    # @!attribute claims
    #   <p>The logical statements that are being validated against the premises and policy rules.</p>
    #   @return [Array<Types::AutomatedReasoningLogicStatement>]
    # @!attribute untranslated_premises
    #   <p>References to portions of the original input text that correspond to the premises but could not be fully translated.</p>
    #   @return [Array<Types::AutomatedReasoningCheckInputTextReference>]
    # @!attribute untranslated_claims
    #   <p>References to portions of the original input text that correspond to the claims but could not be fully translated.</p>
    #   @return [Array<Types::AutomatedReasoningCheckInputTextReference>]
    # @!attribute confidence
    #   <p>A confidence score between 0 and 1 indicating how certain the system is about the logical translation.</p>
    #   @return [Float]
    class AutomatedReasoningCheckTranslation < Struct.new(
      :premises,
      :claims,
      :untranslated_premises,
      :untranslated_claims,
      :confidence,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Indicates that the input has multiple valid logical interpretations, requiring additional context or clarification.</p>
    # @!attribute options
    #   <p>Different logical interpretations that were detected during translation of the input.</p>
    #   @return [Array<Types::AutomatedReasoningCheckTranslationOption>]
    # @!attribute difference_scenarios
    #   <p>Scenarios showing how the different translation options differ in meaning.</p>
    #   @return [Array<Types::AutomatedReasoningCheckScenario>]
    class AutomatedReasoningCheckTranslationAmbiguousFinding < Struct.new(
      :options,
      :difference_scenarios,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents one possible logical interpretation of ambiguous input content.</p>
    # @!attribute translations
    #   <p>Different logical interpretations that were detected during translation of the input.</p>
    #   @return [Array<Types::AutomatedReasoningCheckTranslation>]
    class AutomatedReasoningCheckTranslationOption < Struct.new(
      :translations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Indicates that the claims are definitively true and logically implied by the premises, with no possible alternative interpretations.</p>
    # @!attribute translation
    #   <p>The logical translation of the input that this finding validates.</p>
    #   @return [Types::AutomatedReasoningCheckTranslation]
    # @!attribute claims_true_scenario
    #   <p>An example scenario demonstrating how the claims are logically true.</p>
    #   @return [Types::AutomatedReasoningCheckScenario]
    # @!attribute supporting_rules
    #   <p>The automated reasoning policy rules that support why this result is considered valid.</p>
    #   @return [Array<Types::AutomatedReasoningCheckRule>]
    # @!attribute logic_warning
    #   <p>Indication of a logic issue with the translation without needing to consider the automated reasoning policy rules.</p>
    #   @return [Types::AutomatedReasoningCheckLogicWarning]
    class AutomatedReasoningCheckValidFinding < Struct.new(
      :translation,
      :claims_true_scenario,
      :supporting_rules,
      :logic_warning,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a logical statement that can be expressed both in formal logic notation and natural language, providing dual representations for better understanding and validation.</p>
    # @!attribute logic
    #   <p>The formal logic representation of the statement using mathematical notation and logical operators.</p>
    #   @return [String]
    # @!attribute natural_language
    #   <p>The natural language representation of the logical statement, providing a human-readable interpretation of the formal logic.</p>
    #   @return [String]
    class AutomatedReasoningLogicStatement < Struct.new(
      :logic,
      :natural_language,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An annotation for adding a new rule to an Automated Reasoning policy using a formal logical expression.</p>
    # @!attribute expression
    #   <p>The formal logical expression that defines the rule, using mathematical notation and referencing policy variables and types.</p>
    #   @return [String]
    class AutomatedReasoningPolicyAddRuleAnnotation < Struct.new(
      :expression,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An annotation for adding a new rule to the policy by converting a natural language description into a formal logical expression.</p>
    # @!attribute natural_language
    #   <p>The natural language description of the rule that should be converted into a formal logical expression.</p>
    #   @return [String]
    class AutomatedReasoningPolicyAddRuleFromNaturalLanguageAnnotation < Struct.new(
      :natural_language,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A mutation operation that adds a new rule to the policy definition during the build process.</p>
    # @!attribute rule
    #   <p>The rule definition that specifies the formal logical expression and metadata for the new rule being added to the policy.</p>
    #   @return [Types::AutomatedReasoningPolicyDefinitionRule]
    class AutomatedReasoningPolicyAddRuleMutation < Struct.new(
      :rule,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An annotation for adding a new custom type to an Automated Reasoning policy, defining a set of possible values for variables.</p>
    # @!attribute name
    #   <p>The name of the new custom type. This name will be used to reference the type in variable definitions and rules.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of what the custom type represents and how it should be used in the policy.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The list of possible values that variables of this type can take, each with its own description and identifier.</p>
    #   @return [Array<Types::AutomatedReasoningPolicyDefinitionTypeValue>]
    class AutomatedReasoningPolicyAddTypeAnnotation < Struct.new(
      :name,
      :description,
      :values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A mutation operation that adds a new custom type to the policy definition during the build process.</p>
    # @!attribute type
    #   <p>The type definition that specifies the name, description, and possible values for the new custom type being added to the policy.</p>
    #   @return [Types::AutomatedReasoningPolicyDefinitionType]
    class AutomatedReasoningPolicyAddTypeMutation < Struct.new(
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a single value that can be added to an existing custom type in the policy.</p>
    # @!attribute value
    #   <p>The identifier or name of the new value to add to the type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of what this new type value represents and when it should be used.</p>
    #   @return [String]
    class AutomatedReasoningPolicyAddTypeValue < Struct.new(
      :value,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An annotation for adding a new variable to an Automated Reasoning policy, which can be used in rule expressions.</p>
    # @!attribute name
    #   <p>The name of the new variable. This name will be used to reference the variable in rule expressions.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the variable, which can be a built-in type (like string or number) or a custom type defined in the policy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of what the variable represents and how it should be used in rules.</p>
    #   @return [String]
    class AutomatedReasoningPolicyAddVariableAnnotation < Struct.new(
      :name,
      :type,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A mutation operation that adds a new variable to the policy definition during the build process.</p>
    # @!attribute variable
    #   <p>The variable definition that specifies the name, type, and description for the new variable being added to the policy.</p>
    #   @return [Types::AutomatedReasoningPolicyDefinitionVariable]
    class AutomatedReasoningPolicyAddVariableMutation < Struct.new(
      :variable,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the various operations that can be performed on an Automated Reasoning policy, including adding, updating, and deleting rules, variables, and types.</p>
    # @!attribute add_type
    #   <p>An operation to add a new custom type to the policy, defining a set of possible values for policy variables.</p>
    #   @return [Types::AutomatedReasoningPolicyAddTypeAnnotation]
    # @!attribute update_type
    #   <p>An operation to modify an existing custom type in the policy, such as changing its name, description, or allowed values.</p>
    #   @return [Types::AutomatedReasoningPolicyUpdateTypeAnnotation]
    # @!attribute delete_type
    #   <p>An operation to remove a custom type from the policy. The type must not be referenced by any variables or rules.</p>
    #   @return [Types::AutomatedReasoningPolicyDeleteTypeAnnotation]
    # @!attribute add_variable
    #   <p>An operation to add a new variable to the policy, which can be used in rule expressions to represent dynamic values.</p>
    #   @return [Types::AutomatedReasoningPolicyAddVariableAnnotation]
    # @!attribute update_variable
    #   <p>An operation to modify an existing variable in the policy, such as changing its name, type, or description.</p>
    #   @return [Types::AutomatedReasoningPolicyUpdateVariableAnnotation]
    # @!attribute delete_variable
    #   <p>An operation to remove a variable from the policy. The variable must not be referenced by any rules.</p>
    #   @return [Types::AutomatedReasoningPolicyDeleteVariableAnnotation]
    # @!attribute add_rule
    #   <p>An operation to add a new logical rule to the policy using formal mathematical expressions.</p>
    #   @return [Types::AutomatedReasoningPolicyAddRuleAnnotation]
    # @!attribute update_rule
    #   <p>An operation to modify an existing rule in the policy, such as changing its logical expression or conditions.</p>
    #   @return [Types::AutomatedReasoningPolicyUpdateRuleAnnotation]
    # @!attribute delete_rule
    #   <p>An operation to remove a rule from the policy.</p>
    #   @return [Types::AutomatedReasoningPolicyDeleteRuleAnnotation]
    # @!attribute add_rule_from_natural_language
    #   <p>An operation to add a new rule by converting natural language descriptions into formal logical expressions.</p>
    #   @return [Types::AutomatedReasoningPolicyAddRuleFromNaturalLanguageAnnotation]
    # @!attribute update_from_rules_feedback
    #   <p>An operation to update the policy based on feedback about how specific rules performed during testing or validation.</p>
    #   @return [Types::AutomatedReasoningPolicyUpdateFromRuleFeedbackAnnotation]
    # @!attribute update_from_scenario_feedback
    #   <p>An operation to update the policy based on feedback about how it performed on specific test scenarios.</p>
    #   @return [Types::AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation]
    # @!attribute ingest_content
    #   <p>An operation to process and incorporate new content into the policy, extracting additional rules and concepts.</p>
    #   @return [Types::AutomatedReasoningPolicyIngestContentAnnotation]
    class AutomatedReasoningPolicyAnnotation < Struct.new(
      :add_type,
      :update_type,
      :delete_type,
      :add_variable,
      :update_variable,
      :delete_variable,
      :add_rule,
      :update_rule,
      :delete_rule,
      :add_rule_from_natural_language,
      :update_from_rules_feedback,
      :update_from_scenario_feedback,
      :ingest_content,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class AddType < AutomatedReasoningPolicyAnnotation; end
      class UpdateType < AutomatedReasoningPolicyAnnotation; end
      class DeleteType < AutomatedReasoningPolicyAnnotation; end
      class AddVariable < AutomatedReasoningPolicyAnnotation; end
      class UpdateVariable < AutomatedReasoningPolicyAnnotation; end
      class DeleteVariable < AutomatedReasoningPolicyAnnotation; end
      class AddRule < AutomatedReasoningPolicyAnnotation; end
      class UpdateRule < AutomatedReasoningPolicyAnnotation; end
      class DeleteRule < AutomatedReasoningPolicyAnnotation; end
      class AddRuleFromNaturalLanguage < AutomatedReasoningPolicyAnnotation; end
      class UpdateFromRulesFeedback < AutomatedReasoningPolicyAnnotation; end
      class UpdateFromScenarioFeedback < AutomatedReasoningPolicyAnnotation; end
      class IngestContent < AutomatedReasoningPolicyAnnotation; end
      class Unknown < AutomatedReasoningPolicyAnnotation; end
    end

    module AutomatedReasoningPolicyAnnotationStatus
      APPLIED = 'APPLIED'
      FAILED = 'FAILED'
    end

    module AutomatedReasoningPolicyBuildDocumentContentType
      PDF = 'pdf'
      TEXT = 'txt'
    end

    # <p>Contains detailed logging information about the policy build process, including steps taken, decisions made, and any issues encountered.</p>
    # @!attribute entries
    #   <p>A list of log entries documenting each step in the policy build process, including timestamps, status, and detailed messages.</p>
    #   @return [Array<Types::AutomatedReasoningPolicyBuildLogEntry>]
    class AutomatedReasoningPolicyBuildLog < Struct.new(
      :entries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a single entry in the policy build log, containing information about a specific step or event in the build process.</p>
    # @!attribute annotation
    #   <p>The annotation or operation that was being processed when this log entry was created.</p>
    #   @return [Types::AutomatedReasoningPolicyAnnotation]
    # @!attribute status
    #   <p>The status of the build step (e.g., SUCCESS, FAILED, IN_PROGRESS).</p>
    #   @return [String]
    # @!attribute build_steps
    #   <p>Detailed information about the specific build steps that were executed, including any sub-operations or transformations.</p>
    #   @return [Array<Types::AutomatedReasoningPolicyBuildStep>]
    class AutomatedReasoningPolicyBuildLogEntry < Struct.new(
      :annotation,
      :status,
      :build_steps,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AutomatedReasoningPolicyBuildMessageType
      INFO = 'INFO'
      WARNING = 'WARNING'
      ERROR = 'ERROR'
    end

    module AutomatedReasoningPolicyBuildResultAssetType
      BUILD_LOG = 'BUILD_LOG'
      QUALITY_REPORT = 'QUALITY_REPORT'
      POLICY_DEFINITION = 'POLICY_DEFINITION'
    end

    # <p>Contains the various assets generated during a policy build workflow, including logs, quality reports, and the final policy definition.</p>
    # @!attribute policy_definition
    #   <p>The complete policy definition generated by the build workflow, containing all rules, variables, and custom types extracted from the source documents.</p>
    #   @return [Types::AutomatedReasoningPolicyDefinition]
    # @!attribute quality_report
    #   <p>A comprehensive report analyzing the quality of the generated policy, including metrics about rule coverage, potential conflicts, and unused elements.</p>
    #   @return [Types::AutomatedReasoningPolicyDefinitionQualityReport]
    # @!attribute build_log
    #   <p>The complete build log containing detailed information about each step in the policy generation process.</p>
    #   @return [Types::AutomatedReasoningPolicyBuildLog]
    class AutomatedReasoningPolicyBuildResultAssets < Struct.new(
      :policy_definition,
      :quality_report,
      :build_log,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class PolicyDefinition < AutomatedReasoningPolicyBuildResultAssets; end
      class QualityReport < AutomatedReasoningPolicyBuildResultAssets; end
      class BuildLog < AutomatedReasoningPolicyBuildResultAssets; end
      class Unknown < AutomatedReasoningPolicyBuildResultAssets; end
    end

    # <p>Represents a single step in the policy build process, containing context about what was being processed and any messages or results.</p>
    # @!attribute context
    #   <p>Contextual information about what was being processed during this build step, such as the type of operation or the source material being analyzed.</p>
    #   @return [Types::AutomatedReasoningPolicyBuildStepContext]
    # @!attribute prior_element
    #   <p>Reference to the previous element or step in the build process, helping to trace the sequence of operations.</p>
    #   @return [Types::AutomatedReasoningPolicyDefinitionElement]
    # @!attribute messages
    #   <p>A list of messages generated during this build step, including informational messages, warnings, and error details.</p>
    #   @return [Array<Types::AutomatedReasoningPolicyBuildStepMessage>]
    class AutomatedReasoningPolicyBuildStep < Struct.new(
      :context,
      :prior_element,
      :messages,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides context about what type of operation was being performed during a build step.</p>
    # @!attribute planning
    #   <p>Indicates that this build step was part of the planning phase, where the system determines what operations to perform.</p>
    #   @return [Types::AutomatedReasoningPolicyPlanning]
    # @!attribute mutation
    #   <p>Indicates that this build step involved modifying the policy structure, such as adding or updating rules, variables, or types.</p>
    #   @return [Types::AutomatedReasoningPolicyMutation]
    class AutomatedReasoningPolicyBuildStepContext < Struct.new(
      :planning,
      :mutation,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Planning < AutomatedReasoningPolicyBuildStepContext; end
      class Mutation < AutomatedReasoningPolicyBuildStepContext; end
      class Unknown < AutomatedReasoningPolicyBuildStepContext; end
    end

    # <p>Represents a message generated during a build step, providing information about what happened or any issues encountered.</p>
    # @!attribute message
    #   <p>The content of the message, describing what occurred during the build step.</p>
    #   @return [String]
    # @!attribute message_type
    #   <p>The type of message (e.g., INFO, WARNING, ERROR) indicating its severity and purpose.</p>
    #   @return [String]
    class AutomatedReasoningPolicyBuildStepMessage < Struct.new(
      :message,
      :message_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a source document used in the policy build workflow, containing the content and metadata needed for policy generation.</p>
    # @!attribute document
    #   <p>The actual content of the source document that will be analyzed to extract policy rules and concepts.</p>
    #   @return [String]
    # @!attribute document_content_type
    #   <p>The MIME type of the document content (e.g., text/plain, application/pdf, text/markdown).</p>
    #   @return [String]
    # @!attribute document_name
    #   <p>A descriptive name for the document that helps identify its purpose and content.</p>
    #   @return [String]
    # @!attribute document_description
    #   <p>A detailed description of the document's content and how it should be used in the policy generation process.</p>
    #   @return [String]
    class AutomatedReasoningPolicyBuildWorkflowDocument < Struct.new(
      :document,
      :document_content_type,
      :document_name,
      :document_description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains content and instructions for repairing or improving an existing Automated Reasoning policy.</p>
    # @!attribute annotations
    #   <p>Specific annotations or modifications to apply during the policy repair process, such as rule corrections or variable updates.</p>
    #   @return [Array<Types::AutomatedReasoningPolicyAnnotation>]
    class AutomatedReasoningPolicyBuildWorkflowRepairContent < Struct.new(
      :annotations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines the source content for a policy build workflow, which can include documents, repair instructions, or other input materials.</p>
    # @!attribute policy_definition
    #   <p>An existing policy definition that serves as the starting point for the build workflow, typically used in policy repair or update scenarios.</p>
    #   @return [Types::AutomatedReasoningPolicyDefinition]
    # @!attribute workflow_content
    #   <p>The actual content to be processed in the build workflow, such as documents to analyze or repair instructions to apply.</p>
    #   @return [Types::AutomatedReasoningPolicyWorkflowTypeContent]
    class AutomatedReasoningPolicyBuildWorkflowSource < Struct.new(
      :policy_definition,
      :workflow_content,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AutomatedReasoningPolicyBuildWorkflowStatus
      SCHEDULED = 'SCHEDULED'
      CANCEL_REQUESTED = 'CANCEL_REQUESTED'
      PREPROCESSING = 'PREPROCESSING'
      BUILDING = 'BUILDING'
      TESTING = 'TESTING'
      COMPLETED = 'COMPLETED'
      FAILED = 'FAILED'
      CANCELLED = 'CANCELLED'
    end

    # <p>Provides a summary of a policy build workflow, including its current status, timing information, and key identifiers.</p>
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy associated with this build workflow.</p>
    #   @return [String]
    # @!attribute build_workflow_id
    #   <p>The unique identifier of the build workflow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the build workflow (e.g., RUNNING, COMPLETED, FAILED, CANCELLED).</p>
    #   @return [String]
    # @!attribute build_workflow_type
    #   <p>The type of build workflow (e.g., DOCUMENT_INGESTION, POLICY_REPAIR).</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the build workflow was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the build workflow was last updated.</p>
    #   @return [Time]
    class AutomatedReasoningPolicyBuildWorkflowSummary < Struct.new(
      :policy_arn,
      :build_workflow_id,
      :status,
      :build_workflow_type,
      :created_at,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AutomatedReasoningPolicyBuildWorkflowType
      INGEST_CONTENT = 'INGEST_CONTENT'
      REFINE_POLICY = 'REFINE_POLICY'
      IMPORT_POLICY = 'IMPORT_POLICY'
    end

    # <p>Contains the formal logic rules, variables, and custom variable types that define an Automated Reasoning policy. The policy definition specifies the constraints used to validate foundation model responses for accuracy and logical consistency.</p>
    # @!attribute version
    #   <p>The version of the policy definition format.</p>
    #   @return [String]
    # @!attribute types
    #   <p>The custom user-defined vairable types used in the policy. Types are enum-based variable types that provide additional context beyond the predefined variable types.</p>
    #   @return [Array<Types::AutomatedReasoningPolicyDefinitionType>]
    # @!attribute rules
    #   <p>The formal logic rules extracted from the source document. Rules define the logical constraints that determine whether model responses are valid, invalid, or satisfiable.</p>
    #   @return [Array<Types::AutomatedReasoningPolicyDefinitionRule>]
    # @!attribute variables
    #   <p>The variables that represent concepts in the policy. Variables can have values assigned when translating natural language into formal logic. Their descriptions are crucial for accurate translation.</p>
    #   @return [Array<Types::AutomatedReasoningPolicyDefinitionVariable>]
    class AutomatedReasoningPolicyDefinition < Struct.new(
      :version,
      :types,
      :rules,
      :variables,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:version] = '1' unless options.key?(:version)
        super
      end
    end

    # <p>Represents a single element in an Automated Reasoning policy definition, such as a rule, variable, or type definition.</p>
    # @!attribute policy_definition_variable
    #   <p>A variable element within the policy definition that represents a concept used in logical expressions and rules.</p>
    #   @return [Types::AutomatedReasoningPolicyDefinitionVariable]
    # @!attribute policy_definition_type
    #   <p>A custom type element within the policy definition that defines a set of possible values for variables.</p>
    #   @return [Types::AutomatedReasoningPolicyDefinitionType]
    # @!attribute policy_definition_rule
    #   <p>A rule element within the policy definition that contains a formal logical expression used for validation.</p>
    #   @return [Types::AutomatedReasoningPolicyDefinitionRule]
    class AutomatedReasoningPolicyDefinitionElement < Struct.new(
      :policy_definition_variable,
      :policy_definition_type,
      :policy_definition_rule,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class PolicyDefinitionVariable < AutomatedReasoningPolicyDefinitionElement; end
      class PolicyDefinitionType < AutomatedReasoningPolicyDefinitionElement; end
      class PolicyDefinitionRule < AutomatedReasoningPolicyDefinitionElement; end
      class Unknown < AutomatedReasoningPolicyDefinitionElement; end
    end

    # <p>Provides a comprehensive analysis of the quality and completeness of an Automated Reasoning policy definition, highlighting potential issues and optimization opportunities.</p>
    # @!attribute type_count
    #   <p>The total number of custom types defined in the policy.</p>
    #   @return [Integer]
    # @!attribute variable_count
    #   <p>The total number of variables defined in the policy.</p>
    #   @return [Integer]
    # @!attribute rule_count
    #   <p>The total number of rules defined in the policy.</p>
    #   @return [Integer]
    # @!attribute unused_types
    #   <p>A list of custom types that are defined but not referenced by any variables or rules, suggesting they may be unnecessary.</p>
    #   @return [Array<String>]
    # @!attribute unused_type_values
    #   <p>A list of type values that are defined but never used in any rules, indicating potential cleanup opportunities.</p>
    #   @return [Array<Types::AutomatedReasoningPolicyDefinitionTypeValuePair>]
    # @!attribute unused_variables
    #   <p>A list of variables that are defined but not referenced by any rules, suggesting they may be unnecessary.</p>
    #   @return [Array<String>]
    # @!attribute conflicting_rules
    #   <p>A list of rules that may conflict with each other, potentially leading to inconsistent policy behavior.</p>
    #   @return [Array<String>]
    # @!attribute disjoint_rule_sets
    #   <p>Groups of rules that operate on completely separate sets of variables, indicating the policy may be addressing multiple unrelated concerns.</p>
    #   @return [Array<Types::AutomatedReasoningPolicyDisjointRuleSet>]
    class AutomatedReasoningPolicyDefinitionQualityReport < Struct.new(
      :type_count,
      :variable_count,
      :rule_count,
      :unused_types,
      :unused_type_values,
      :unused_variables,
      :conflicting_rules,
      :disjoint_rule_sets,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a formal logic rule in an Automated Reasoning policy. For example, rules can be expressed as if-then statements that define logical constraints.</p>
    # @!attribute id
    #   <p>The unique identifier of the rule within the policy.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>The formal logic expression of the rule.</p>
    #   @return [String]
    # @!attribute alternate_expression
    #   <p>The human-readable form of the rule expression, often in natural language or simplified notation.</p>
    #   @return [String]
    class AutomatedReasoningPolicyDefinitionRule < Struct.new(
      :id,
      :expression,
      :alternate_expression,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a custom user-defined viarble type in an Automated Reasoning policy. Types are enum-based and provide additional context beyond predefined variable types.</p>
    # @!attribute name
    #   <p>The name of the custom type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of what the custom type represents.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The possible values for this enum-based type, each with its own description.</p>
    #   @return [Array<Types::AutomatedReasoningPolicyDefinitionTypeValue>]
    class AutomatedReasoningPolicyDefinitionType < Struct.new(
      :name,
      :description,
      :values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a single value within a custom type definition, including its identifier and description.</p>
    # @!attribute value
    #   <p>The actual value or identifier for this type value.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A human-readable description explaining what this type value represents and when it should be used.</p>
    #   @return [String]
    class AutomatedReasoningPolicyDefinitionTypeValue < Struct.new(
      :value,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Associates a type name with a specific value name, used for referencing type values in rules and other policy elements.</p>
    # @!attribute type_name
    #   <p>The name of the custom type that contains the referenced value.</p>
    #   @return [String]
    # @!attribute value_name
    #   <p>The name of the specific value within the type.</p>
    #   @return [String]
    class AutomatedReasoningPolicyDefinitionTypeValuePair < Struct.new(
      :type_name,
      :value_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a variable in an Automated Reasoning policy. Variables represent concepts that can have values assigned during natural language translation.</p>
    # @!attribute name
    #   <p>The name of the variable. Use descriptive names that clearly indicate the concept being represented.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type of the variable. Valid types include bool, int, real, enum, and custom types that you can provide.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the variable that explains what it represents and how users might refer to it. Clear and comprehensive descriptions are essential for accurate natural language translation.</p>
    #   @return [String]
    class AutomatedReasoningPolicyDefinitionVariable < Struct.new(
      :name,
      :type,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An annotation for removing a rule from an Automated Reasoning policy.</p>
    # @!attribute rule_id
    #   <p>The unique identifier of the rule to delete from the policy.</p>
    #   @return [String]
    class AutomatedReasoningPolicyDeleteRuleAnnotation < Struct.new(
      :rule_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A mutation operation that removes a rule from the policy definition during the build process.</p>
    # @!attribute id
    #   <p>The unique identifier of the rule to delete.</p>
    #   @return [String]
    class AutomatedReasoningPolicyDeleteRuleMutation < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An annotation for removing a custom type from an Automated Reasoning policy.</p>
    # @!attribute name
    #   <p>The name of the custom type to delete from the policy. The type must not be referenced by any variables or rules.</p>
    #   @return [String]
    class AutomatedReasoningPolicyDeleteTypeAnnotation < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A mutation operation that removes a custom type from the policy definition during the build process.</p>
    # @!attribute name
    #   <p>The name of the custom type to delete.</p>
    #   @return [String]
    class AutomatedReasoningPolicyDeleteTypeMutation < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a value to be removed from an existing custom type in the policy.</p>
    # @!attribute value
    #   <p>The identifier or name of the value to remove from the type.</p>
    #   @return [String]
    class AutomatedReasoningPolicyDeleteTypeValue < Struct.new(
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An annotation for removing a variable from an Automated Reasoning policy.</p>
    # @!attribute name
    #   <p>The name of the variable to delete from the policy. The variable must not be referenced by any rules.</p>
    #   @return [String]
    class AutomatedReasoningPolicyDeleteVariableAnnotation < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A mutation operation that removes a variable from the policy definition during the build process.</p>
    # @!attribute name
    #   <p>The name of the variable to delete.</p>
    #   @return [String]
    class AutomatedReasoningPolicyDeleteVariableMutation < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a set of rules that operate on completely separate variables, indicating they address different concerns or domains within the policy.</p>
    # @!attribute variables
    #   <p>The set of variables that are used by the rules in this disjoint set.</p>
    #   @return [Array<String>]
    # @!attribute rules
    #   <p>The list of rules that form this disjoint set, all operating on the same set of variables.</p>
    #   @return [Array<String>]
    class AutomatedReasoningPolicyDisjointRuleSet < Struct.new(
      :variables,
      :rules,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An annotation for processing and incorporating new content into an Automated Reasoning policy.</p>
    # @!attribute content
    #   <p>The new content to be analyzed and incorporated into the policy, such as additional documents or rule descriptions.</p>
    #   @return [String]
    class AutomatedReasoningPolicyIngestContentAnnotation < Struct.new(
      :content,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A container for various mutation operations that can be applied to an Automated Reasoning policy, including adding, updating, and deleting policy elements.</p>
    # @!attribute add_type
    #   <p>A mutation to add a new custom type to the policy.</p>
    #   @return [Types::AutomatedReasoningPolicyAddTypeMutation]
    # @!attribute update_type
    #   <p>A mutation to modify an existing custom type in the policy.</p>
    #   @return [Types::AutomatedReasoningPolicyUpdateTypeMutation]
    # @!attribute delete_type
    #   <p>A mutation to remove a custom type from the policy.</p>
    #   @return [Types::AutomatedReasoningPolicyDeleteTypeMutation]
    # @!attribute add_variable
    #   <p>A mutation to add a new variable to the policy.</p>
    #   @return [Types::AutomatedReasoningPolicyAddVariableMutation]
    # @!attribute update_variable
    #   <p>A mutation to modify an existing variable in the policy.</p>
    #   @return [Types::AutomatedReasoningPolicyUpdateVariableMutation]
    # @!attribute delete_variable
    #   <p>A mutation to remove a variable from the policy.</p>
    #   @return [Types::AutomatedReasoningPolicyDeleteVariableMutation]
    # @!attribute add_rule
    #   <p>A mutation to add a new rule to the policy.</p>
    #   @return [Types::AutomatedReasoningPolicyAddRuleMutation]
    # @!attribute update_rule
    #   <p>A mutation to modify an existing rule in the policy.</p>
    #   @return [Types::AutomatedReasoningPolicyUpdateRuleMutation]
    # @!attribute delete_rule
    #   <p>A mutation to remove a rule from the policy.</p>
    #   @return [Types::AutomatedReasoningPolicyDeleteRuleMutation]
    class AutomatedReasoningPolicyMutation < Struct.new(
      :add_type,
      :update_type,
      :delete_type,
      :add_variable,
      :update_variable,
      :delete_variable,
      :add_rule,
      :update_rule,
      :delete_rule,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class AddType < AutomatedReasoningPolicyMutation; end
      class UpdateType < AutomatedReasoningPolicyMutation; end
      class DeleteType < AutomatedReasoningPolicyMutation; end
      class AddVariable < AutomatedReasoningPolicyMutation; end
      class UpdateVariable < AutomatedReasoningPolicyMutation; end
      class DeleteVariable < AutomatedReasoningPolicyMutation; end
      class AddRule < AutomatedReasoningPolicyMutation; end
      class UpdateRule < AutomatedReasoningPolicyMutation; end
      class DeleteRule < AutomatedReasoningPolicyMutation; end
      class Unknown < AutomatedReasoningPolicyMutation; end
    end

    # <p>Represents the planning phase of policy build workflow, where the system analyzes source content and determines what operations to perform.</p>
    class AutomatedReasoningPolicyPlanning < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a test scenario used to validate an Automated Reasoning policy, including the test conditions and expected outcomes.</p>
    # @!attribute expression
    #   <p>The logical expression or condition that defines this test scenario.</p>
    #   @return [String]
    # @!attribute alternate_expression
    #   <p>An alternative way to express the same test scenario, used for validation and comparison purposes.</p>
    #   @return [String]
    # @!attribute rule_ids
    #   <p>The list of rule identifiers that are expected to be triggered or evaluated by this test scenario.</p>
    #   @return [Array<String>]
    # @!attribute expected_result
    #   <p>The expected outcome when this scenario is evaluated against the policy (e.g., PASS, FAIL, VIOLATION).</p>
    #   @return [String]
    class AutomatedReasoningPolicyScenario < Struct.new(
      :expression,
      :alternate_expression,
      :rule_ids,
      :expected_result,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains summary information about an Automated Reasoning policy, including metadata and timestamps.</p>
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the policy.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the policy.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>The unique identifier of the policy.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the policy was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the policy was last updated.</p>
    #   @return [Time]
    class AutomatedReasoningPolicySummary < Struct.new(
      :policy_arn,
      :name,
      :description,
      :version,
      :policy_id,
      :created_at,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a test for validating an Automated Reasoning policy. tests contain sample inputs and expected outcomes to verify policy behavior.</p>
    # @!attribute test_case_id
    #   <p>The unique identifier of the test.</p>
    #   @return [String]
    # @!attribute guard_content
    #   <p>The output content to be validated by the policy, typically representing a foundation model response.</p>
    #   @return [String]
    # @!attribute query_content
    #   <p>The input query or prompt that generated the content. This provides context for the validation.</p>
    #   @return [String]
    # @!attribute expected_aggregated_findings_result
    #   <p>The expected result of the Automated Reasoning check for this test.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the test was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the test was last updated.</p>
    #   @return [Time]
    # @!attribute confidence_threshold
    #   <p>The minimum confidence level for logic validation. Content meeting this threshold is considered high-confidence and can be validated.</p>
    #   @return [Float]
    class AutomatedReasoningPolicyTestCase < Struct.new(
      :test_case_id,
      :guard_content,
      :query_content,
      :expected_aggregated_findings_result,
      :created_at,
      :updated_at,
      :confidence_threshold,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the results of testing an Automated Reasoning policy against various scenarios and validation checks.</p>
    # @!attribute test_case
    #   <p>The test case that was executed, including the input content, expected results, and configuration parameters used during validation.</p>
    #   @return [Types::AutomatedReasoningPolicyTestCase]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy that was tested.</p>
    #   @return [String]
    # @!attribute test_run_status
    #   <p>The overall status of the test run (e.g., COMPLETED, FAILED, IN_PROGRESS).</p>
    #   @return [String]
    # @!attribute test_findings
    #   <p>Detailed findings from the test run, including any issues, violations, or unexpected behaviors discovered.</p>
    #   @return [Array<Types::AutomatedReasoningCheckFinding>]
    # @!attribute test_run_result
    #   <p>The overall result of the test run, indicating whether the policy passed or failed validation.</p>
    #   @return [String]
    # @!attribute aggregated_test_findings_result
    #   <p>A summary of all test findings, aggregated to provide an overall assessment of policy quality and correctness.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the test results were last updated.</p>
    #   @return [Time]
    class AutomatedReasoningPolicyTestResult < Struct.new(
      :test_case,
      :policy_arn,
      :test_run_status,
      :test_findings,
      :test_run_result,
      :aggregated_test_findings_result,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AutomatedReasoningPolicyTestRunResult
      PASSED = 'PASSED'
      FAILED = 'FAILED'
    end

    module AutomatedReasoningPolicyTestRunStatus
      NOT_STARTED = 'NOT_STARTED'
      SCHEDULED = 'SCHEDULED'
      IN_PROGRESS = 'IN_PROGRESS'
      COMPLETED = 'COMPLETED'
      FAILED = 'FAILED'
    end

    # <p>An annotation for managing values within custom types, including adding, updating, or removing specific type values.</p>
    # @!attribute add_type_value
    #   <p>An operation to add a new value to an existing custom type.</p>
    #   @return [Types::AutomatedReasoningPolicyAddTypeValue]
    # @!attribute update_type_value
    #   <p>An operation to modify an existing value within a custom type.</p>
    #   @return [Types::AutomatedReasoningPolicyUpdateTypeValue]
    # @!attribute delete_type_value
    #   <p>An operation to remove a value from an existing custom type.</p>
    #   @return [Types::AutomatedReasoningPolicyDeleteTypeValue]
    class AutomatedReasoningPolicyTypeValueAnnotation < Struct.new(
      :add_type_value,
      :update_type_value,
      :delete_type_value,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class AddTypeValue < AutomatedReasoningPolicyTypeValueAnnotation; end
      class UpdateTypeValue < AutomatedReasoningPolicyTypeValueAnnotation; end
      class DeleteTypeValue < AutomatedReasoningPolicyTypeValueAnnotation; end
      class Unknown < AutomatedReasoningPolicyTypeValueAnnotation; end
    end

    # <p>An annotation for updating the policy based on feedback about how specific rules performed during testing or real-world usage.</p>
    # @!attribute rule_ids
    #   <p>The list of rule identifiers that the feedback applies to.</p>
    #   @return [Array<String>]
    # @!attribute feedback
    #   <p>The feedback information about rule performance, including suggestions for improvements or corrections.</p>
    #   @return [String]
    class AutomatedReasoningPolicyUpdateFromRuleFeedbackAnnotation < Struct.new(
      :rule_ids,
      :feedback,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An annotation for updating the policy based on feedback about how it performed on specific test scenarios.</p>
    # @!attribute rule_ids
    #   <p>The list of rule identifiers that were involved in the scenario being evaluated.</p>
    #   @return [Array<String>]
    # @!attribute scenario_expression
    #   <p>The logical expression that defines the test scenario that generated this feedback.</p>
    #   @return [String]
    # @!attribute feedback
    #   <p>The feedback information about scenario performance, including any issues or improvements identified.</p>
    #   @return [String]
    class AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation < Struct.new(
      :rule_ids,
      :scenario_expression,
      :feedback,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An annotation for modifying an existing rule in an Automated Reasoning policy.</p>
    # @!attribute rule_id
    #   <p>The unique identifier of the rule to update.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>The new formal logical expression for the rule, replacing the previous expression.</p>
    #   @return [String]
    class AutomatedReasoningPolicyUpdateRuleAnnotation < Struct.new(
      :rule_id,
      :expression,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A mutation operation that modifies an existing rule in the policy definition during the build process.</p>
    # @!attribute rule
    #   <p>The updated rule definition containing the modified formal logical expression and any changed metadata for the existing rule.</p>
    #   @return [Types::AutomatedReasoningPolicyDefinitionRule]
    class AutomatedReasoningPolicyUpdateRuleMutation < Struct.new(
      :rule,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An annotation for modifying an existing custom type in an Automated Reasoning policy.</p>
    # @!attribute name
    #   <p>The current name of the custom type to update.</p>
    #   @return [String]
    # @!attribute new_name
    #   <p>The new name for the custom type, if you want to rename it. If not provided, the name remains unchanged.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description for the custom type, replacing the previous description.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The updated list of values for the custom type, which can include additions, modifications, or removals.</p>
    #   @return [Array<Types::AutomatedReasoningPolicyTypeValueAnnotation>]
    class AutomatedReasoningPolicyUpdateTypeAnnotation < Struct.new(
      :name,
      :new_name,
      :description,
      :values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A mutation operation that modifies an existing custom type in the policy definition during the build process.</p>
    # @!attribute type
    #   <p>The updated type definition containing the modified name, description, or values for the existing custom type.</p>
    #   @return [Types::AutomatedReasoningPolicyDefinitionType]
    class AutomatedReasoningPolicyUpdateTypeMutation < Struct.new(
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a modification to a value within an existing custom type.</p>
    # @!attribute value
    #   <p>The current identifier or name of the type value to update.</p>
    #   @return [String]
    # @!attribute new_value
    #   <p>The new identifier or name for the type value, if you want to rename it.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description for the type value, replacing the previous description.</p>
    #   @return [String]
    class AutomatedReasoningPolicyUpdateTypeValue < Struct.new(
      :value,
      :new_value,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An annotation for modifying an existing variable in an Automated Reasoning policy.</p>
    # @!attribute name
    #   <p>The current name of the variable to update.</p>
    #   @return [String]
    # @!attribute new_name
    #   <p>The new name for the variable, if you want to rename it. If not provided, the name remains unchanged.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description for the variable, replacing the previous description.</p>
    #   @return [String]
    class AutomatedReasoningPolicyUpdateVariableAnnotation < Struct.new(
      :name,
      :new_name,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A mutation operation that modifies an existing variable in the policy definition during the build process.</p>
    # @!attribute variable
    #   <p>The updated variable definition containing the modified name, type, or description for the existing variable.</p>
    #   @return [Types::AutomatedReasoningPolicyDefinitionVariable]
    class AutomatedReasoningPolicyUpdateVariableMutation < Struct.new(
      :variable,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines the content and configuration for different types of policy build workflows.</p>
    # @!attribute documents
    #   <p>The list of documents to be processed in a document ingestion workflow.</p>
    #   @return [Array<Types::AutomatedReasoningPolicyBuildWorkflowDocument>]
    # @!attribute policy_repair_assets
    #   <p>The assets and instructions needed for a policy repair workflow, including repair annotations and guidance.</p>
    #   @return [Types::AutomatedReasoningPolicyBuildWorkflowRepairContent]
    class AutomatedReasoningPolicyWorkflowTypeContent < Struct.new(
      :documents,
      :policy_repair_assets,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Documents < AutomatedReasoningPolicyWorkflowTypeContent; end
      class PolicyRepairAssets < AutomatedReasoningPolicyWorkflowTypeContent; end
      class Unknown < AutomatedReasoningPolicyWorkflowTypeContent; end
    end

    # <p>A JSON array that provides the status of the evaluation jobs being deleted.</p>
    # @!attribute job_identifier
    #   <p>The ARN of the evaluation job being deleted.</p>
    #   @return [String]
    # @!attribute code
    #   <p>A HTTP status code of the evaluation job being deleted.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A status message about the evaluation job deletion.</p>
    #   @return [String]
    class BatchDeleteEvaluationJobError < Struct.new(
      :job_identifier,
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An evaluation job for deletion, and it’s current status.</p>
    # @!attribute job_identifier
    #   <p>The Amazon Resource Name (ARN) of the evaluation job for deletion.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The status of the evaluation job for deletion.</p>
    #   @return [String]
    class BatchDeleteEvaluationJobItem < Struct.new(
      :job_identifier,
      :job_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_identifiers
    #   <p>A list of one or more evaluation job Amazon Resource Names (ARNs) you want to delete.</p>
    #   @return [Array<String>]
    class BatchDeleteEvaluationJobRequest < Struct.new(
      :job_identifiers,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>A JSON object containing the HTTP status codes and the ARNs of evaluation jobs that failed to be deleted.</p>
    #   @return [Array<Types::BatchDeleteEvaluationJobError>]
    # @!attribute evaluation_jobs
    #   <p>The list of evaluation jobs for deletion.</p>
    #   @return [Array<Types::BatchDeleteEvaluationJobItem>]
    class BatchDeleteEvaluationJobResponse < Struct.new(
      :errors,
      :evaluation_jobs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The evaluator model used in knowledge base evaluation job or in model evaluation job that use a model as judge. This model computes all evaluation related metrics.</p>
    # @!attribute model_identifier
    #   <p>The Amazon Resource Name (ARN) of the evaluator model used used in knowledge base evaluation job or in model evaluation job that use a model as judge.</p>
    #   @return [String]
    class BedrockEvaluatorModel < Struct.new(
      :model_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the document contained in the wrapper object, along with its attributes/fields.</p>
    # @!attribute identifier
    #   <p>The file name of the document contained in the wrapper object.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The MIME type of the document contained in the wrapper object.</p>
    #   @return [String]
    # @!attribute data
    #   <p>The byte value of the file to upload, encoded as a Base-64 string.</p>
    #   @return [String]
    class ByteContentDoc < Struct.new(
      :identifier,
      :content_type,
      :data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy whose build workflow you want to cancel.</p>
    #   @return [String]
    # @!attribute build_workflow_id
    #   <p>The unique identifier of the build workflow to cancel. You can get this ID from the StartAutomatedReasoningPolicyBuildWorkflow response or by listing build workflows.</p>
    #   @return [String]
    class CancelAutomatedReasoningPolicyBuildWorkflowRequest < Struct.new(
      :policy_arn,
      :build_workflow_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class CancelAutomatedReasoningPolicyBuildWorkflowResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>CloudWatch logging configuration.</p>
    # @!attribute log_group_name
    #   <p>The log group name.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The role Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute large_data_delivery_s3_config
    #   <p>S3 configuration for delivering a large amount of data.</p>
    #   @return [Types::S3Config]
    class CloudWatchConfig < Struct.new(
      :log_group_name,
      :role_arn,
      :large_data_delivery_s3_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CommitmentDuration
      ONE_MONTH = 'OneMonth'
      SIX_MONTHS = 'SixMonths'
    end

    # <p>Error occurred because of a conflict while performing an operation.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A unique name for the Automated Reasoning policy. The name must be between 1 and 63 characters and can contain letters, numbers, hyphens, and underscores.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the Automated Reasoning policy. Use this to provide context about the policy's purpose and the types of validations it performs.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than once. If this token matches a previous request, Amazon Bedrock ignores the request but doesn't return an error.</p>
    #   @return [String]
    # @!attribute policy_definition
    #   <p>The policy definition that contains the formal logic rules, variables, and custom variable types used to validate foundation model responses in your application.</p>
    #   @return [Types::AutomatedReasoningPolicyDefinition]
    # @!attribute tags
    #   <p>A list of tags to associate with the Automated Reasoning policy. Tags help you organize and manage your policies.</p>
    #   @return [Array<Types::Tag>]
    class CreateAutomatedReasoningPolicyRequest < Struct.new(
      :name,
      :description,
      :client_request_token,
      :policy_definition,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy that you created.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version number of the newly created Automated Reasoning policy. The initial version is always DRAFT.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Automated Reasoning policy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Automated Reasoning policy.</p>
    #   @return [String]
    # @!attribute definition_hash
    #   <p>The hash of the policy definition. This is used as a concurrency token for creating policy versions that you can use in your application.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the policy was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the policy was last updated.</p>
    #   @return [Time]
    class CreateAutomatedReasoningPolicyResponse < Struct.new(
      :policy_arn,
      :version,
      :name,
      :description,
      :definition_hash,
      :created_at,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy for which to create the test.</p>
    #   @return [String]
    # @!attribute guard_content
    #   <p>The output content that's validated by the Automated Reasoning policy. This represents the foundation model response that will be checked for accuracy.</p>
    #   @return [String]
    # @!attribute query_content
    #   <p>The input query or prompt that generated the content. This provides context for the validation.</p>
    #   @return [String]
    # @!attribute expected_aggregated_findings_result
    #   <p>The expected result of the Automated Reasoning check. Valid values include: , TOO_COMPLEX, and NO_TRANSLATIONS.</p> <ul> <li> <p> <code>VALID</code> - The claims are true. The claims are implied by the premises and the Automated Reasoning policy. Given the Automated Reasoning policy and premises, it is not possible for these claims to be false. In other words, there are no alternative answers that are true that contradict the claims.</p> </li> <li> <p> <code>INVALID</code> - The claims are false. The claims are not implied by the premises and Automated Reasoning policy. Furthermore, there exists different claims that are consistent with the premises and Automated Reasoning policy.</p> </li> <li> <p> <code>SATISFIABLE</code> - The claims can be true or false. It depends on what assumptions are made for the claim to be implied from the premises and Automated Reasoning policy rules. In this situation, different assumptions can make input claims false and alternative claims true.</p> </li> <li> <p> <code>IMPOSSIBLE</code> - Automated Reasoning can’t make a statement about the claims. This can happen if the premises are logically incorrect, or if there is a conflict within the Automated Reasoning policy itself.</p> </li> <li> <p> <code>TRANSLATION_AMBIGUOUS</code> - Detected an ambiguity in the translation meant it would be unsound to continue with validity checking. Additional context or follow-up questions might be needed to get translation to succeed.</p> </li> <li> <p> <code>TOO_COMPLEX</code> - The input contains too much information for Automated Reasoning to process within its latency limits.</p> </li> <li> <p> <code>NO_TRANSLATIONS</code> - Identifies that some or all of the input prompt wasn't translated into logic. This can happen if the input isn't relevant to the Automated Reasoning policy, or if the policy doesn't have variables to model relevant input. If Automated Reasoning can't translate anything, you get a single <code>NO_TRANSLATIONS</code> finding. You might also see a <code>NO_TRANSLATIONS</code> (along with other findings) if some part of the validation isn't translated.</p> </li> </ul>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error.</p>
    #   @return [String]
    # @!attribute confidence_threshold
    #   <p>The minimum confidence level for logic validation. Content that meets the threshold is considered a high-confidence finding that can be validated.</p>
    #   @return [Float]
    class CreateAutomatedReasoningPolicyTestCaseRequest < Struct.new(
      :policy_arn,
      :guard_content,
      :query_content,
      :expected_aggregated_findings_result,
      :client_request_token,
      :confidence_threshold,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the policy for which the test was created.</p>
    #   @return [String]
    # @!attribute test_case_id
    #   <p>The unique identifier of the created test.</p>
    #   @return [String]
    class CreateAutomatedReasoningPolicyTestCaseResponse < Struct.new(
      :policy_arn,
      :test_case_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy for which to create a version.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error.</p>
    #   @return [String]
    # @!attribute last_updated_definition_hash
    #   <p>The hash of the current policy definition used as a concurrency token to ensure the policy hasn't been modified since you last retrieved it.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to associate with the policy version.</p>
    #   @return [Array<Types::Tag>]
    class CreateAutomatedReasoningPolicyVersionRequest < Struct.new(
      :policy_arn,
      :client_request_token,
      :last_updated_definition_hash,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The versioned Amazon Resource Name (ARN) of the policy version.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version number of the policy version.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the policy version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the policy version.</p>
    #   @return [String]
    # @!attribute definition_hash
    #   <p>The hash of the policy definition for this version.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the policy version was created.</p>
    #   @return [Time]
    class CreateAutomatedReasoningPolicyVersionResponse < Struct.new(
      :policy_arn,
      :version,
      :name,
      :description,
      :definition_hash,
      :created_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_deployment_name
    #   <p>The name for the custom model deployment. The name must be unique within your Amazon Web Services account and Region.</p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model to deploy for on-demand inference. The custom model must be in the <code>Active</code> state.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the custom model deployment to help you identify its purpose.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to assign to the custom model deployment. You can use tags to organize and track your Amazon Web Services resources for cost allocation and management purposes.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    class CreateCustomModelDeploymentRequest < Struct.new(
      :model_deployment_name,
      :model_arn,
      :description,
      :tags,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute custom_model_deployment_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model deployment. Use this ARN as the <code>modelId</code> parameter when invoking the model with the <code>InvokeModel</code> or <code>Converse</code> operations.</p>
    #   @return [String]
    class CreateCustomModelDeploymentResponse < Struct.new(
      :custom_model_deployment_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_name
    #   <p>A unique name for the custom model.</p>
    #   @return [String]
    # @!attribute model_source_config
    #   <p>The data source for the model. The Amazon S3 URI in the model source must be for the Amazon-managed Amazon S3 bucket containing your model artifacts.</p>
    #   @return [Types::ModelDataSource]
    # @!attribute model_kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the customer managed KMS key to encrypt the custom model. If you don't provide a KMS key, Amazon Bedrock uses an Amazon Web Services-managed KMS key to encrypt the model. </p> <p>If you provide a customer managed KMS key, your Amazon Bedrock service role must have permissions to use it. For more information see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/encryption-import-model.html">Encryption of imported models</a>. </p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM service role that Amazon Bedrock assumes to perform tasks on your behalf. This role must have permissions to access the Amazon S3 bucket containing your model artifacts and the KMS key (if specified). For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-import-iam-role.html">Setting up an IAM service role for importing models</a> in the Amazon Bedrock User Guide.</p>
    #   @return [String]
    # @!attribute model_tags
    #   <p>A list of key-value pairs to associate with the custom model resource. You can use these tags to organize and identify your resources.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html">Tagging resources</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    class CreateCustomModelRequest < Struct.new(
      :model_name,
      :model_source_config,
      :model_kms_key_arn,
      :role_arn,
      :model_tags,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the new custom model.</p>
    #   @return [String]
    class CreateCustomModelResponse < Struct.new(
      :model_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>A name for the evaluation job. Names must unique with your Amazon Web Services account, and your account's Amazon Web Services region.</p>
    #   @return [String]
    # @!attribute job_description
    #   <p>A description of the evaluation job.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM service role that Amazon Bedrock can assume to perform tasks on your behalf. To learn more about the required permissions, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-evaluation-security.html">Required permissions for model evaluations</a>.</p>
    #   @return [String]
    # @!attribute customer_encryption_key_id
    #   <p>Specify your customer managed encryption key Amazon Resource Name (ARN) that will be used to encrypt your evaluation job.</p>
    #   @return [String]
    # @!attribute job_tags
    #   <p>Tags to attach to the model evaluation job.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute application_type
    #   <p>Specifies whether the evaluation job is for evaluating a model or evaluating a knowledge base (retrieval and response generation).</p>
    #   @return [String]
    # @!attribute evaluation_config
    #   <p>Contains the configuration details of either an automated or human-based evaluation job.</p>
    #   @return [Types::EvaluationConfig]
    # @!attribute inference_config
    #   <p>Contains the configuration details of the inference model for the evaluation job.</p> <p>For model evaluation jobs, automated jobs support a single model or <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html">inference profile</a>, and jobs that use human workers support two models or inference profiles.</p>
    #   @return [Types::EvaluationInferenceConfig]
    # @!attribute output_data_config
    #   <p>Contains the configuration details of the Amazon S3 bucket for storing the results of the evaluation job.</p>
    #   @return [Types::EvaluationOutputDataConfig]
    class CreateEvaluationJobRequest < Struct.new(
      :job_name,
      :job_description,
      :client_request_token,
      :role_arn,
      :customer_encryption_key_id,
      :job_tags,
      :application_type,
      :evaluation_config,
      :inference_config,
      :output_data_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the evaluation job.</p>
    #   @return [String]
    class CreateEvaluationJobResponse < Struct.new(
      :job_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute offer_token
    #   <p>An offer token encapsulates the information for an offer.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>Model Id of the model for the access request.</p>
    #   @return [String]
    class CreateFoundationModelAgreementRequest < Struct.new(
      :offer_token,
      :model_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_id
    #   <p>Model Id of the model for the access request.</p>
    #   @return [String]
    class CreateFoundationModelAgreementResponse < Struct.new(
      :model_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name to give the guardrail.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the guardrail.</p>
    #   @return [String]
    # @!attribute topic_policy_config
    #   <p>The topic policies to configure for the guardrail.</p>
    #   @return [Types::GuardrailTopicPolicyConfig]
    # @!attribute content_policy_config
    #   <p>The content filter policies to configure for the guardrail.</p>
    #   @return [Types::GuardrailContentPolicyConfig]
    # @!attribute word_policy_config
    #   <p>The word policy you configure for the guardrail.</p>
    #   @return [Types::GuardrailWordPolicyConfig]
    # @!attribute sensitive_information_policy_config
    #   <p>The sensitive information policy to configure for the guardrail.</p>
    #   @return [Types::GuardrailSensitiveInformationPolicyConfig]
    # @!attribute contextual_grounding_policy_config
    #   <p>The contextual grounding policy configuration used to create a guardrail.</p>
    #   @return [Types::GuardrailContextualGroundingPolicyConfig]
    # @!attribute automated_reasoning_policy_config
    #   <p>Optional configuration for integrating Automated Reasoning policies with the new guardrail.</p>
    #   @return [Types::GuardrailAutomatedReasoningPolicyConfig]
    # @!attribute cross_region_config
    #   <p>The system-defined guardrail profile that you're using with your guardrail. Guardrail profiles define the destination Amazon Web Services Regions where guardrail inference requests can be automatically routed.</p> <p>For more information, see the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-cross-region.html">Amazon Bedrock User Guide</a>.</p>
    #   @return [Types::GuardrailCrossRegionConfig]
    # @!attribute blocked_input_messaging
    #   <p>The message to return when the guardrail blocks a prompt.</p>
    #   @return [String]
    # @!attribute blocked_outputs_messaging
    #   <p>The message to return when the guardrail blocks a model response.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ARN of the KMS key that you use to encrypt the guardrail.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags that you want to attach to the guardrail. </p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than once. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    class CreateGuardrailRequest < Struct.new(
      :name,
      :description,
      :topic_policy_config,
      :content_policy_config,
      :word_policy_config,
      :sensitive_information_policy_config,
      :contextual_grounding_policy_config,
      :automated_reasoning_policy_config,
      :cross_region_config,
      :blocked_input_messaging,
      :blocked_outputs_messaging,
      :kms_key_id,
      :tags,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute guardrail_id
    #   <p>The unique identifier of the guardrail that was created.</p>
    #   @return [String]
    # @!attribute guardrail_arn
    #   <p>The ARN of the guardrail.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the guardrail that was created. This value will always be <code>DRAFT</code>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the guardrail was created.</p>
    #   @return [Time]
    class CreateGuardrailResponse < Struct.new(
      :guardrail_id,
      :guardrail_arn,
      :version,
      :created_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute guardrail_identifier
    #   <p>The unique identifier of the guardrail. This can be an ID or the ARN.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the guardrail version.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than once. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    class CreateGuardrailVersionRequest < Struct.new(
      :guardrail_identifier,
      :description,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute guardrail_id
    #   <p>The unique identifier of the guardrail.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The number of the version of the guardrail.</p>
    #   @return [String]
    class CreateGuardrailVersionResponse < Struct.new(
      :guardrail_id,
      :version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute inference_profile_name
    #   <p>A name for the inference profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the inference profile.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute model_source
    #   <p>The foundation model or system-defined inference profile that the inference profile will track metrics and costs for.</p>
    #   @return [Types::InferenceProfileModelSource]
    # @!attribute tags
    #   <p>An array of objects, each of which contains a tag and its value. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Tagging resources</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    #   @return [Array<Types::Tag>]
    class CreateInferenceProfileRequest < Struct.new(
      :inference_profile_name,
      :description,
      :client_request_token,
      :model_source,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute inference_profile_arn
    #   <p>The ARN of the inference profile that you created.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the inference profile. <code>ACTIVE</code> means that the inference profile is ready to be used.</p>
    #   @return [String]
    class CreateInferenceProfileResponse < Struct.new(
      :inference_profile_arn,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_source_identifier
    #   <p>The ARN of the model from Amazon Bedrock Marketplace that you want to deploy to the endpoint.</p>
    #   @return [String]
    # @!attribute endpoint_config
    #   <p>The configuration for the endpoint, including the number and type of instances to use.</p>
    #   @return [Types::EndpointConfig]
    # @!attribute accept_eula
    #   <p>Indicates whether you accept the end-user license agreement (EULA) for the model. Set to <code>true</code> to accept the EULA.</p>
    #   @return [Boolean]
    # @!attribute endpoint_name
    #   <p>The name of the endpoint. This name must be unique within your Amazon Web Services account and region.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This token is listed as not required because Amazon Web Services SDKs automatically generate it for you and set this parameter. If you're not using the Amazon Web Services SDK or the CLI, you must provide this token or the action will fail.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of key-value pairs to apply to the underlying Amazon SageMaker endpoint. You can use these tags to organize and identify your Amazon Web Services resources.</p>
    #   @return [Array<Types::Tag>]
    class CreateMarketplaceModelEndpointRequest < Struct.new(
      :model_source_identifier,
      :endpoint_config,
      :accept_eula,
      :endpoint_name,
      :client_request_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute marketplace_model_endpoint
    #   <p>Details about the created endpoint.</p>
    #   @return [Types::MarketplaceModelEndpoint]
    class CreateMarketplaceModelEndpointResponse < Struct.new(
      :marketplace_model_endpoint,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_model_arn
    #   <p>The Amazon Resource Name (ARN) of the model to be copied.</p>
    #   @return [String]
    # @!attribute target_model_name
    #   <p>A name for the copied model.</p>
    #   @return [String]
    # @!attribute model_kms_key_id
    #   <p>The ARN of the KMS key that you use to encrypt the model copy.</p>
    #   @return [String]
    # @!attribute target_model_tags
    #   <p>Tags to associate with the target model. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html">Tag resources</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    class CreateModelCopyJobRequest < Struct.new(
      :source_model_arn,
      :target_model_name,
      :model_kms_key_id,
      :target_model_tags,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the model copy job.</p>
    #   @return [String]
    class CreateModelCopyJobResponse < Struct.new(
      :job_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>A name for the fine-tuning job.</p>
    #   @return [String]
    # @!attribute custom_model_name
    #   <p>A name for the resulting custom model.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM service role that Amazon Bedrock can assume to perform tasks on your behalf. For example, during model training, Amazon Bedrock needs your permission to read input data from an S3 bucket, write model artifacts to an S3 bucket. To pass this role to Amazon Bedrock, the caller of this API must have the <code>iam:PassRole</code> permission. </p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute base_model_identifier
    #   <p>Name of the base model.</p>
    #   @return [String]
    # @!attribute customization_type
    #   <p>The customization type.</p>
    #   @return [String]
    # @!attribute custom_model_kms_key_id
    #   <p>The custom model is encrypted at rest using this key.</p>
    #   @return [String]
    # @!attribute job_tags
    #   <p>Tags to attach to the job.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute custom_model_tags
    #   <p>Tags to attach to the resulting custom model.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute training_data_config
    #   <p>Information about the training dataset.</p>
    #   @return [Types::TrainingDataConfig]
    # @!attribute validation_data_config
    #   <p>Information about the validation dataset. </p>
    #   @return [Types::ValidationDataConfig]
    # @!attribute output_data_config
    #   <p>S3 location for the output data.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute hyper_parameters
    #   <p>Parameters related to tuning the model. For details on the format for different models, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models-hp.html">Custom model hyperparameters</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute vpc_config
    #   <p>The configuration of the Virtual Private Cloud (VPC) that contains the resources that you're using for this job. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/vpc-model-customization.html">Protect your model customization jobs using a VPC</a>.</p>
    #   @return [Types::VpcConfig]
    # @!attribute customization_config
    #   <p>The customization configuration for the model customization job.</p>
    #   @return [Types::CustomizationConfig]
    class CreateModelCustomizationJobRequest < Struct.new(
      :job_name,
      :custom_model_name,
      :role_arn,
      :client_request_token,
      :base_model_identifier,
      :customization_type,
      :custom_model_kms_key_id,
      :job_tags,
      :custom_model_tags,
      :training_data_config,
      :validation_data_config,
      :output_data_config,
      :hyper_parameters,
      :vpc_config,
      :customization_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_arn
    #   <p>Amazon Resource Name (ARN) of the fine tuning job</p>
    #   @return [String]
    class CreateModelCustomizationJobResponse < Struct.new(
      :job_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The name of the import job.</p>
    #   @return [String]
    # @!attribute imported_model_name
    #   <p>The name of the imported model.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the model import job.</p>
    #   @return [String]
    # @!attribute model_data_source
    #   <p>The data source for the imported model.</p>
    #   @return [Types::ModelDataSource]
    # @!attribute job_tags
    #   <p>Tags to attach to this import job. </p>
    #   @return [Array<Types::Tag>]
    # @!attribute imported_model_tags
    #   <p>Tags to attach to the imported model.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>VPC configuration parameters for the private Virtual Private Cloud (VPC) that contains the resources you are using for the import job.</p>
    #   @return [Types::VpcConfig]
    # @!attribute imported_model_kms_key_id
    #   <p>The imported model is encrypted at rest using this key.</p>
    #   @return [String]
    class CreateModelImportJobRequest < Struct.new(
      :job_name,
      :imported_model_name,
      :role_arn,
      :model_data_source,
      :job_tags,
      :imported_model_tags,
      :client_request_token,
      :vpc_config,
      :imported_model_kms_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the model import job.</p>
    #   @return [String]
    class CreateModelImportJobResponse < Struct.new(
      :job_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>A name to give the batch inference job.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role with permissions to carry out and manage batch inference. You can use the console to create a default service role or follow the steps at <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/batch-iam-sr.html">Create a service role for batch inference</a>.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The unique identifier of the foundation model to use for the batch inference job.</p>
    #   @return [String]
    # @!attribute input_data_config
    #   <p>Details about the location of the input to the batch inference job.</p>
    #   @return [Types::ModelInvocationJobInputDataConfig]
    # @!attribute output_data_config
    #   <p>Details about the location of the output of the batch inference job.</p>
    #   @return [Types::ModelInvocationJobOutputDataConfig]
    # @!attribute vpc_config
    #   <p>The configuration of the Virtual Private Cloud (VPC) for the data in the batch inference job. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/batch-vpc">Protect batch inference jobs using a VPC</a>.</p>
    #   @return [Types::VpcConfig]
    # @!attribute timeout_duration_in_hours
    #   <p>The number of hours after which to force the batch inference job to time out.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>Any tags to associate with the batch inference job. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html">Tagging Amazon Bedrock resources</a>.</p>
    #   @return [Array<Types::Tag>]
    class CreateModelInvocationJobRequest < Struct.new(
      :job_name,
      :role_arn,
      :client_request_token,
      :model_id,
      :input_data_config,
      :output_data_config,
      :vpc_config,
      :timeout_duration_in_hours,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the batch inference job.</p>
    #   @return [String]
    class CreateModelInvocationJobResponse < Struct.new(
      :job_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure idempotency of your requests. If not specified, the Amazon Web Services SDK automatically generates one for you.</p>
    #   @return [String]
    # @!attribute prompt_router_name
    #   <p>The name of the prompt router. The name must be unique within your Amazon Web Services account in the current region.</p>
    #   @return [String]
    # @!attribute models
    #   <p>A list of foundation models that the prompt router can route requests to. At least one model must be specified.</p>
    #   @return [Array<Types::PromptRouterTargetModel>]
    # @!attribute description
    #   <p>An optional description of the prompt router to help identify its purpose.</p>
    #   @return [String]
    # @!attribute routing_criteria
    #   <p>The criteria, which is the response quality difference, used to determine how incoming requests are routed to different models.</p>
    #   @return [Types::RoutingCriteria]
    # @!attribute fallback_model
    #   <p>The default model to use when the routing criteria is not met.</p>
    #   @return [Types::PromptRouterTargetModel]
    # @!attribute tags
    #   <p>An array of key-value pairs to apply to this resource as tags. You can use tags to categorize and manage your Amazon Web Services resources.</p>
    #   @return [Array<Types::Tag>]
    class CreatePromptRouterRequest < Struct.new(
      :client_request_token,
      :prompt_router_name,
      :models,
      :description,
      :routing_criteria,
      :fallback_model,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute prompt_router_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the prompt router.</p>
    #   @return [String]
    class CreatePromptRouterResponse < Struct.new(
      :prompt_router_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> in the Amazon S3 User Guide.</p>
    #   @return [String]
    # @!attribute model_units
    #   <p>Number of model units to allocate. A model unit delivers a specific throughput level for the specified model. The throughput level of a model unit specifies the total number of input and output tokens that it can process and generate within a span of one minute. By default, your account has no model units for purchasing Provisioned Throughputs with commitment. You must first visit the <a href="https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase">Amazon Web Services support center</a> to request MUs.</p> <p>For model unit quotas, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/quotas.html#prov-thru-quotas">Provisioned Throughput quotas</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p> <p>For more information about what an MU specifies, contact your Amazon Web Services account manager.</p>
    #   @return [Integer]
    # @!attribute provisioned_model_name
    #   <p>The name for this Provisioned Throughput.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The Amazon Resource Name (ARN) or name of the model to associate with this Provisioned Throughput. For a list of models for which you can purchase Provisioned Throughput, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#prov-throughput-models">Amazon Bedrock model IDs for purchasing Provisioned Throughput</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    #   @return [String]
    # @!attribute commitment_duration
    #   <p>The commitment duration requested for the Provisioned Throughput. Billing occurs hourly and is discounted for longer commitment terms. To request a no-commit Provisioned Throughput, omit this field.</p> <p>Custom models support all levels of commitment. To see which base models support no commitment, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/pt-supported.html">Supported regions and models for Provisioned Throughput</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a> </p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to associate with this Provisioned Throughput.</p>
    #   @return [Array<Types::Tag>]
    class CreateProvisionedModelThroughputRequest < Struct.new(
      :client_request_token,
      :model_units,
      :provisioned_model_name,
      :model_id,
      :commitment_duration,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute provisioned_model_arn
    #   <p>The Amazon Resource Name (ARN) for this Provisioned Throughput.</p>
    #   @return [String]
    class CreateProvisionedModelThroughputResponse < Struct.new(
      :provisioned_model_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines the model you want to evaluate custom metrics in an Amazon Bedrock evaluation job.</p>
    # @!attribute model_identifier
    #   <p>The Amazon Resource Name (ARN) of the evaluator model for custom metrics. For a list of supported evaluator models, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/evaluation-judge.html">Evaluate model performance using another LLM as a judge</a> and <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/evaluation-kb.html">Evaluate the performance of RAG sources using Amazon Bedrock evaluations</a>.</p>
    #   @return [String]
    class CustomMetricBedrockEvaluatorModel < Struct.new(
      :model_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The definition of a custom metric for use in an Amazon Bedrock evaluation job. A custom metric definition includes a metric name, prompt (instructions) and optionally, a rating scale. Your prompt must include a task description and input variables. The required input variables are different for model-as-a-judge and RAG evaluations.</p> <p>For more information about how to define a custom metric in Amazon Bedrock, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-evaluation-custom-metrics-prompt-formats.html">Create a prompt for a custom metrics (LLM-as-a-judge model evaluations)</a> and <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-evaluation-custom-metrics-prompt-formats.html">Create a prompt for a custom metrics (RAG evaluations)</a>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute name
    #   <p>The name for a custom metric. Names must be unique in your Amazon Web Services region.</p>
    #   @return [String]
    # @!attribute instructions
    #   <p>The prompt for a custom metric that instructs the evaluator model how to rate the model or RAG source under evaluation.</p>
    #   @return [String]
    # @!attribute rating_scale
    #   <p>Defines the rating scale to be used for a custom metric. We recommend that you always define a ratings scale when creating a custom metric. If you don't define a scale, Amazon Bedrock won't be able to visually display the results of the evaluation in the console or calculate average values of numerical scores. For more information on specifying a rating scale, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-evaluation-custom-metrics-prompt-formats.html#model-evaluation-custom-metrics-prompt-formats-schema">Specifying an output schema (rating scale)</a>.</p>
    #   @return [Array<Types::RatingScaleItem>]
    class CustomMetricDefinition < Struct.new(
      :name,
      :instructions,
      :rating_scale,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration of the evaluator model you want to use to evaluate custom metrics in an Amazon Bedrock evaluation job.</p>
    # @!attribute bedrock_evaluator_models
    #   <p>Defines the model you want to evaluate custom metrics in an Amazon Bedrock evaluation job.</p>
    #   @return [Array<Types::CustomMetricBedrockEvaluatorModel>]
    class CustomMetricEvaluatorModelConfig < Struct.new(
      :bedrock_evaluator_models,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CustomModelDeploymentStatus
      CREATING = 'Creating'
      ACTIVE = 'Active'
      FAILED = 'Failed'
    end

    # <p>Contains summary information about a custom model deployment, including its ARN, name, status, and associated custom model.</p>
    # @!attribute custom_model_deployment_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model deployment.</p>
    #   @return [String]
    # @!attribute custom_model_deployment_name
    #   <p>The name of the custom model deployment.</p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model associated with this deployment.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the custom model deployment was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the custom model deployment. Possible values are <code>CREATING</code>, <code>ACTIVE</code>, and <code>FAILED</code>.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The date and time when the custom model deployment was last modified.</p>
    #   @return [Time]
    # @!attribute failure_message
    #   <p>If the deployment status is <code>FAILED</code>, this field contains a message describing the failure reason.</p>
    #   @return [String]
    class CustomModelDeploymentSummary < Struct.new(
      :custom_model_deployment_arn,
      :custom_model_deployment_name,
      :model_arn,
      :created_at,
      :status,
      :last_updated_at,
      :failure_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary information for a custom model.</p>
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model.</p>
    #   @return [String]
    # @!attribute model_name
    #   <p>The name of the custom model.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Creation time of the model.</p>
    #   @return [Time]
    # @!attribute base_model_arn
    #   <p>The base model Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute base_model_name
    #   <p>The base model name.</p>
    #   @return [String]
    # @!attribute customization_type
    #   <p>Specifies whether to carry out continued pre-training of a model or whether to fine-tune it. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html">Custom models</a>.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The unique identifier of the account that owns the model.</p>
    #   @return [String]
    # @!attribute model_status
    #   <p>The current status of the custom model. Possible values include:</p> <ul> <li> <p> <code>Creating</code> - The model is being created and validated.</p> </li> <li> <p> <code>Active</code> - The model has been successfully created and is ready for use.</p> </li> <li> <p> <code>Failed</code> - The model creation process failed.</p> </li> </ul>
    #   @return [String]
    class CustomModelSummary < Struct.new(
      :model_arn,
      :model_name,
      :creation_time,
      :base_model_arn,
      :base_model_name,
      :customization_type,
      :owner_account_id,
      :model_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A <code>CustomModelUnit</code> (CMU) is an abstract view of the hardware utilization that Amazon Bedrock needs to host a single copy of your custom model. A model copy represents a single instance of your imported model that is ready to serve inference requests. Amazon Bedrock determines the number of custom model units that a model copy needs when you import the custom model. </p> <p>You can use <code>CustomModelUnits</code> to estimate the cost of running your custom model. For more information, see Calculate the cost of running a custom model in the Amazon Bedrock user guide. </p>
    # @!attribute custom_model_units_per_model_copy
    #   <p>The number of custom model units used to host a model copy. </p>
    #   @return [Integer]
    # @!attribute custom_model_units_version
    #   <p>The version of the custom model unit. Use to determine the billing rate for the custom model unit.</p>
    #   @return [String]
    class CustomModelUnits < Struct.new(
      :custom_model_units_per_model_copy,
      :custom_model_units_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A model customization configuration</p>
    # @!attribute distillation_config
    #   <p>The Distillation configuration for the custom model.</p>
    #   @return [Types::DistillationConfig]
    class CustomizationConfig < Struct.new(
      :distillation_config,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class DistillationConfig < CustomizationConfig; end
      class Unknown < CustomizationConfig; end
    end

    module CustomizationType
      FINE_TUNING = 'FINE_TUNING'
      CONTINUED_PRE_TRAINING = 'CONTINUED_PRE_TRAINING'
      DISTILLATION = 'DISTILLATION'
      IMPORTED = 'IMPORTED'
    end

    # <p>For a Distillation job, the status details for the data processing sub-task of the job.</p>
    # @!attribute status
    #   <p>The status of the data processing sub-task of the job.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The start time of the data processing sub-task of the job.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The latest update to the data processing sub-task of the job.</p>
    #   @return [Time]
    class DataProcessingDetails < Struct.new(
      :status,
      :creation_time,
      :last_modified_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy whose build workflow you want to delete.</p>
    #   @return [String]
    # @!attribute build_workflow_id
    #   <p>The unique identifier of the build workflow to delete.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The timestamp when the build workflow was last updated. This is used for optimistic concurrency control to prevent accidental deletion of workflows that have been modified.</p>
    #   @return [Time]
    class DeleteAutomatedReasoningPolicyBuildWorkflowRequest < Struct.new(
      :policy_arn,
      :build_workflow_id,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteAutomatedReasoningPolicyBuildWorkflowResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy to delete.</p>
    #   @return [String]
    class DeleteAutomatedReasoningPolicyRequest < Struct.new(
      :policy_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteAutomatedReasoningPolicyResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy that contains the test.</p>
    #   @return [String]
    # @!attribute test_case_id
    #   <p>The unique identifier of the test to delete.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The timestamp when the test was last updated. This is used as a concurrency token to prevent conflicting modifications.</p>
    #   @return [Time]
    class DeleteAutomatedReasoningPolicyTestCaseRequest < Struct.new(
      :policy_arn,
      :test_case_id,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteAutomatedReasoningPolicyTestCaseResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute custom_model_deployment_identifier
    #   <p>The Amazon Resource Name (ARN) or name of the custom model deployment to delete.</p>
    #   @return [String]
    class DeleteCustomModelDeploymentRequest < Struct.new(
      :custom_model_deployment_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteCustomModelDeploymentResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_identifier
    #   <p>Name of the model to delete.</p>
    #   @return [String]
    class DeleteCustomModelRequest < Struct.new(
      :model_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteCustomModelResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_id
    #   <p>Model Id of the model access to delete.</p>
    #   @return [String]
    class DeleteFoundationModelAgreementRequest < Struct.new(
      :model_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteFoundationModelAgreementResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute guardrail_identifier
    #   <p>The unique identifier of the guardrail. This can be an ID or the ARN.</p>
    #   @return [String]
    # @!attribute guardrail_version
    #   <p>The version of the guardrail.</p>
    #   @return [String]
    class DeleteGuardrailRequest < Struct.new(
      :guardrail_identifier,
      :guardrail_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteGuardrailResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_identifier
    #   <p>Name of the imported model to delete.</p>
    #   @return [String]
    class DeleteImportedModelRequest < Struct.new(
      :model_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteImportedModelResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute inference_profile_identifier
    #   <p>The Amazon Resource Name (ARN) or ID of the application inference profile to delete.</p>
    #   @return [String]
    class DeleteInferenceProfileRequest < Struct.new(
      :inference_profile_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteInferenceProfileResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint you want to delete.</p>
    #   @return [String]
    class DeleteMarketplaceModelEndpointRequest < Struct.new(
      :endpoint_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteMarketplaceModelEndpointResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteModelInvocationLoggingConfigurationRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteModelInvocationLoggingConfigurationResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute prompt_router_arn
    #   <p>The Amazon Resource Name (ARN) of the prompt router to delete.</p>
    #   @return [String]
    class DeletePromptRouterRequest < Struct.new(
      :prompt_router_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeletePromptRouterResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute provisioned_model_id
    #   <p>The Amazon Resource Name (ARN) or name of the Provisioned Throughput.</p>
    #   @return [String]
    class DeleteProvisionedModelThroughputRequest < Struct.new(
      :provisioned_model_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteProvisionedModelThroughputResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint you want to deregister.</p>
    #   @return [String]
    class DeregisterMarketplaceModelEndpointRequest < Struct.new(
      :endpoint_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeregisterMarketplaceModelEndpointResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Dimensional price rate.</p>
    # @!attribute dimension
    #   <p>Dimension for the price rate.</p>
    #   @return [String]
    # @!attribute price
    #   <p>Single-dimensional rate information.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the price rate.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>Unit associated with the price.</p>
    #   @return [String]
    class DimensionalPriceRate < Struct.new(
      :dimension,
      :price,
      :description,
      :unit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Settings for distilling a foundation model into a smaller and more efficient model.</p>
    # @!attribute teacher_model_config
    #   <p>The teacher model configuration.</p>
    #   @return [Types::TeacherModelConfig]
    class DistillationConfig < Struct.new(
      :teacher_model_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the configuration for the endpoint.</p>
    # @!attribute sage_maker
    #   <p>The configuration specific to Amazon SageMaker for the endpoint.</p>
    #   @return [Types::SageMakerEndpoint]
    class EndpointConfig < Struct.new(
      :sage_maker,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class SageMaker < EndpointConfig; end
      class Unknown < EndpointConfig; end
    end

    module EntitlementAvailability
      AVAILABLE = 'AVAILABLE'
      NOT_AVAILABLE = 'NOT_AVAILABLE'
    end

    # <p>Contains the ARN of the Amazon Bedrock model or <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html">inference profile</a> specified in your evaluation job. Each Amazon Bedrock model supports different <code>inferenceParams</code>. To learn more about supported inference parameters for Amazon Bedrock models, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html">Inference parameters for foundation models</a>.</p> <p>The <code>inferenceParams</code> are specified using JSON. To successfully insert JSON as string make sure that all quotations are properly escaped. For example, <code>"temperature":"0.25"</code> key value pair would need to be formatted as <code>\"temperature\":\"0.25\"</code> to successfully accepted in the request.</p>
    # @!attribute model_identifier
    #   <p>The ARN of the Amazon Bedrock model or inference profile specified.</p>
    #   @return [String]
    # @!attribute inference_params
    #   <p>Each Amazon Bedrock support different inference parameters that change how the model behaves during inference.</p>
    #   @return [String]
    # @!attribute performance_config
    #   <p>Specifies performance settings for the model or inference profile.</p>
    #   @return [Types::PerformanceConfiguration]
    class EvaluationBedrockModel < Struct.new(
      :model_identifier,
      :inference_params,
      :performance_config,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:inference_params] = '{}' unless options.key?(:inference_params)
        super
      end
    end

    # <p>The configuration details of either an automated or human-based evaluation job.</p>
    # @!attribute automated
    #   <p>Contains the configuration details of an automated evaluation job that computes metrics.</p>
    #   @return [Types::AutomatedEvaluationConfig]
    # @!attribute human
    #   <p>Contains the configuration details of an evaluation job that uses human workers.</p>
    #   @return [Types::HumanEvaluationConfig]
    class EvaluationConfig < Struct.new(
      :automated,
      :human,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Automated < EvaluationConfig; end
      class Human < EvaluationConfig; end
      class Unknown < EvaluationConfig; end
    end

    # <p>Used to specify the name of a built-in prompt dataset and optionally, the Amazon S3 bucket where a custom prompt dataset is saved.</p>
    # @!attribute name
    #   <p>Used to specify supported built-in prompt datasets. Valid values are <code>Builtin.Bold</code>, <code>Builtin.BoolQ</code>, <code>Builtin.NaturalQuestions</code>, <code>Builtin.Gigaword</code>, <code>Builtin.RealToxicityPrompts</code>, <code>Builtin.TriviaQA</code>, <code>Builtin.T-Rex</code>, <code>Builtin.WomensEcommerceClothingReviews</code> and <code>Builtin.Wikitext2</code>.</p>
    #   @return [String]
    # @!attribute dataset_location
    #   <p>For custom prompt datasets, you must specify the location in Amazon S3 where the prompt dataset is saved.</p>
    #   @return [Types::EvaluationDatasetLocation]
    class EvaluationDataset < Struct.new(
      :name,
      :dataset_location,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The location in Amazon S3 where your prompt dataset is stored.</p>
    # @!attribute s3_uri
    #   <p>The S3 URI of the S3 bucket specified in the job.</p>
    #   @return [String]
    class EvaluationDatasetLocation < Struct.new(
      :s3_uri,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class S3Uri < EvaluationDatasetLocation; end
      class Unknown < EvaluationDatasetLocation; end
    end

    # <p>Defines the prompt datasets, built-in metric names and custom metric names, and the task type.</p>
    # @!attribute task_type
    #   <p>The the type of task you want to evaluate for your evaluation job. This applies only to model evaluation jobs and is ignored for knowledge base evaluation jobs.</p>
    #   @return [String]
    # @!attribute dataset
    #   <p>Specifies the prompt dataset.</p>
    #   @return [Types::EvaluationDataset]
    # @!attribute metric_names
    #   <p>The names of the metrics you want to use for your evaluation job.</p> <p>For knowledge base evaluation jobs that evaluate retrieval only, valid values are "<code>Builtin.ContextRelevance</code>", "<code>Builtin.ContextCoverage</code>".</p> <p>For knowledge base evaluation jobs that evaluate retrieval with response generation, valid values are "<code>Builtin.Correctness</code>", "<code>Builtin.Completeness</code>", "<code>Builtin.Helpfulness</code>", "<code>Builtin.LogicalCoherence</code>", "<code>Builtin.Faithfulness</code>", "<code>Builtin.Harmfulness</code>", "<code>Builtin.Stereotyping</code>", "<code>Builtin.Refusal</code>".</p> <p>For automated model evaluation jobs, valid values are "<code>Builtin.Accuracy</code>", "<code>Builtin.Robustness</code>", and "<code>Builtin.Toxicity</code>". In model evaluation jobs that use a LLM as judge you can specify "<code>Builtin.Correctness</code>", "<code>Builtin.Completeness"</code>, "<code>Builtin.Faithfulness"</code>, "<code>Builtin.Helpfulness</code>", "<code>Builtin.Coherence</code>", "<code>Builtin.Relevance</code>", "<code>Builtin.FollowingInstructions</code>", "<code>Builtin.ProfessionalStyleAndTone</code>", You can also specify the following responsible AI related metrics only for model evaluation job that use a LLM as judge "<code>Builtin.Harmfulness</code>", "<code>Builtin.Stereotyping</code>", and "<code>Builtin.Refusal</code>".</p> <p>For human-based model evaluation jobs, the list of strings must match the <code>name</code> parameter specified in <code>HumanEvaluationCustomMetric</code>.</p>
    #   @return [Array<String>]
    class EvaluationDatasetMetricConfig < Struct.new(
      :task_type,
      :dataset,
      :metric_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration details of the inference model for an evaluation job.</p> <p>For automated model evaluation jobs, only a single model is supported.</p> <p>For human-based model evaluation jobs, your annotator can compare the responses for up to two different models.</p>
    # @!attribute models
    #   <p>Specifies the inference models.</p>
    #   @return [Array<Types::EvaluationModelConfig>]
    # @!attribute rag_configs
    #   <p>Contains the configuration details of the inference for a knowledge base evaluation job, including either the retrieval only configuration or the retrieval with response generation configuration.</p>
    #   @return [Array<Types::RAGConfig>]
    class EvaluationInferenceConfig < Struct.new(
      :models,
      :rag_configs,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Models < EvaluationInferenceConfig; end
      class RagConfigs < EvaluationInferenceConfig; end
      class Unknown < EvaluationInferenceConfig; end
    end

    # <p>Identifies the models, Knowledge Bases, or other RAG sources evaluated in a model or Knowledge Base evaluation job.</p>
    # @!attribute model_config_summary
    #   <p>A summary of the models used in an Amazon Bedrock model evaluation job. These resources can be models in Amazon Bedrock or models outside of Amazon Bedrock that you use to generate your own inference response data.</p>
    #   @return [Types::EvaluationModelConfigSummary]
    # @!attribute rag_config_summary
    #   <p>A summary of the RAG resources used in an Amazon Bedrock Knowledge Base evaluation job. These resources can be Knowledge Bases in Amazon Bedrock or RAG sources outside of Amazon Bedrock that you use to generate your own inference response data.</p>
    #   @return [Types::EvaluationRagConfigSummary]
    class EvaluationInferenceConfigSummary < Struct.new(
      :model_config_summary,
      :rag_config_summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EvaluationJobStatus
      IN_PROGRESS = 'InProgress'
      COMPLETED = 'Completed'
      FAILED = 'Failed'
      STOPPING = 'Stopping'
      STOPPED = 'Stopped'
      DELETING = 'Deleting'
    end

    module EvaluationJobType
      HUMAN = 'Human'
      AUTOMATED = 'Automated'
    end

    # <p>Defines the models used in the model evaluation job.</p>
    # @!attribute bedrock_model
    #   <p>Defines the Amazon Bedrock model or inference profile and inference parameters you want used.</p>
    #   @return [Types::EvaluationBedrockModel]
    # @!attribute precomputed_inference_source
    #   <p>Defines the model used to generate inference response data for a model evaluation job where you provide your own inference response data.</p>
    #   @return [Types::EvaluationPrecomputedInferenceSource]
    class EvaluationModelConfig < Struct.new(
      :bedrock_model,
      :precomputed_inference_source,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class BedrockModel < EvaluationModelConfig; end
      class PrecomputedInferenceSource < EvaluationModelConfig; end
      class Unknown < EvaluationModelConfig; end
    end

    # <p>A summary of the models used in an Amazon Bedrock model evaluation job. These resources can be models in Amazon Bedrock or models outside of Amazon Bedrock that you use to generate your own inference response data.</p>
    # @!attribute bedrock_model_identifiers
    #   <p>The Amazon Resource Names (ARNs) of the models used for the evaluation job.</p>
    #   @return [Array<String>]
    # @!attribute precomputed_inference_source_identifiers
    #   <p>A label that identifies the models used for a model evaluation job where you provide your own inference response data.</p>
    #   @return [Array<String>]
    class EvaluationModelConfigSummary < Struct.new(
      :bedrock_model_identifiers,
      :precomputed_inference_source_identifiers,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon S3 location where the results of your evaluation job are saved.</p>
    # @!attribute s3_uri
    #   <p>The Amazon S3 URI where the results of the evaluation job are saved.</p>
    #   @return [String]
    class EvaluationOutputDataConfig < Struct.new(
      :s3_uri,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A summary of a model used for a model evaluation job where you provide your own inference response data.</p>
    # @!attribute inference_source_identifier
    #   <p>A label that identifies a model used in a model evaluation job where you provide your own inference response data.</p>
    #   @return [String]
    class EvaluationPrecomputedInferenceSource < Struct.new(
      :inference_source_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A summary of a RAG source used for a Knowledge Base evaluation job where you provide your own inference response data.</p>
    # @!attribute retrieve_source_config
    #   <p>A summary of a RAG source used for a retrieve-only Knowledge Base evaluation job where you provide your own inference response data.</p>
    #   @return [Types::EvaluationPrecomputedRetrieveSourceConfig]
    # @!attribute retrieve_and_generate_source_config
    #   <p>A summary of a RAG source used for a retrieve-and-generate Knowledge Base evaluation job where you provide your own inference response data.</p>
    #   @return [Types::EvaluationPrecomputedRetrieveAndGenerateSourceConfig]
    class EvaluationPrecomputedRagSourceConfig < Struct.new(
      :retrieve_source_config,
      :retrieve_and_generate_source_config,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class RetrieveSourceConfig < EvaluationPrecomputedRagSourceConfig; end
      class RetrieveAndGenerateSourceConfig < EvaluationPrecomputedRagSourceConfig; end
      class Unknown < EvaluationPrecomputedRagSourceConfig; end
    end

    # <p>A summary of a RAG source used for a retrieve-and-generate Knowledge Base evaluation job where you provide your own inference response data.</p>
    # @!attribute rag_source_identifier
    #   <p>A label that identifies the RAG source used for a retrieve-and-generate Knowledge Base evaluation job where you provide your own inference response data.</p>
    #   @return [String]
    class EvaluationPrecomputedRetrieveAndGenerateSourceConfig < Struct.new(
      :rag_source_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A summary of a RAG source used for a retrieve-only Knowledge Base evaluation job where you provide your own inference response data.</p>
    # @!attribute rag_source_identifier
    #   <p>A label that identifies the RAG source used for a retrieve-only Knowledge Base evaluation job where you provide your own inference response data.</p>
    #   @return [String]
    class EvaluationPrecomputedRetrieveSourceConfig < Struct.new(
      :rag_source_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A summary of the RAG resources used in an Amazon Bedrock Knowledge Base evaluation job. These resources can be Knowledge Bases in Amazon Bedrock or RAG sources outside of Amazon Bedrock that you use to generate your own inference response data.</p>
    # @!attribute bedrock_knowledge_base_identifiers
    #   <p>The Amazon Resource Names (ARNs) of the Knowledge Base resources used for a Knowledge Base evaluation job where Amazon Bedrock invokes the Knowledge Base for you.</p>
    #   @return [Array<String>]
    # @!attribute precomputed_rag_source_identifiers
    #   <p>A label that identifies the RAG sources used for a Knowledge Base evaluation job where you provide your own inference response data.</p>
    #   @return [Array<String>]
    class EvaluationRagConfigSummary < Struct.new(
      :bedrock_knowledge_base_identifiers,
      :precomputed_rag_source_identifiers,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary information of an evaluation job.</p>
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the evaluation job.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name for the evaluation job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the evaluation job.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the evaluation job was created.</p>
    #   @return [Time]
    # @!attribute job_type
    #   <p>Specifies whether the evaluation job is automated or human-based.</p>
    #   @return [String]
    # @!attribute evaluation_task_types
    #   <p>The type of task for model evaluation.</p>
    #   @return [Array<String>]
    # @!attribute model_identifiers
    #   <p>The Amazon Resource Names (ARNs) of the model(s) used for the evaluation job.</p>
    #   @deprecated
    #     Inference identifiers should be retrieved from the inferenceConfigSummary
    #     Since: 2025-03-07
    #   @return [Array<String>]
    # @!attribute rag_identifiers
    #   <p>The Amazon Resource Names (ARNs) of the knowledge base resources used for a knowledge base evaluation job.</p>
    #   @deprecated
    #     Inference identifiers should be retrieved from the inferenceConfigSummary
    #     Since: 2025-03-07
    #   @return [Array<String>]
    # @!attribute evaluator_model_identifiers
    #   <p>The Amazon Resource Names (ARNs) of the models used to compute the metrics for a knowledge base evaluation job.</p>
    #   @return [Array<String>]
    # @!attribute custom_metrics_evaluator_model_identifiers
    #   <p>The Amazon Resource Names (ARNs) of the models used to compute custom metrics in an Amazon Bedrock evaluation job.</p>
    #   @return [Array<String>]
    # @!attribute inference_config_summary
    #   <p>Identifies the models, Knowledge Bases, or other RAG sources evaluated in a model or Knowledge Base evaluation job.</p>
    #   @return [Types::EvaluationInferenceConfigSummary]
    # @!attribute application_type
    #   <p>Specifies whether the evaluation job is for evaluating a model or evaluating a knowledge base (retrieval and response generation).</p>
    #   @return [String]
    class EvaluationSummary < Struct.new(
      :job_arn,
      :job_name,
      :status,
      :creation_time,
      :job_type,
      :evaluation_task_types,
      :model_identifiers,
      :rag_identifiers,
      :evaluator_model_identifiers,
      :custom_metrics_evaluator_model_identifiers,
      :inference_config_summary,
      :application_type,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:model_identifiers] = [] unless options.key?(:model_identifiers)
        super
      end
    end

    module EvaluationTaskType
      SUMMARIZATION = 'Summarization'
      CLASSIFICATION = 'Classification'
      QUESTION_AND_ANSWER = 'QuestionAndAnswer'
      GENERATION = 'Generation'
      CUSTOM = 'Custom'
    end

    # <p>Specifies the model configuration for the evaluator model. <code>EvaluatorModelConfig</code> is required for evaluation jobs that use a knowledge base or in model evaluation job that use a model as judge. This model computes all evaluation related metrics.</p>
    # @!attribute bedrock_evaluator_models
    #   <p>The evaluator model used in knowledge base evaluation job or in model evaluation job that use a model as judge. This model computes all evaluation related metrics.</p>
    #   @return [Array<Types::BedrockEvaluatorModel>]
    class EvaluatorModelConfig < Struct.new(
      :bedrock_evaluator_models,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class BedrockEvaluatorModels < EvaluatorModelConfig; end
      class Unknown < EvaluatorModelConfig; end
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy to export. Can be either the unversioned ARN for the draft policy or a versioned ARN for a specific policy version.</p>
    #   @return [String]
    class ExportAutomatedReasoningPolicyVersionRequest < Struct.new(
      :policy_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_definition
    #   <p>The exported policy definition containing the formal logic rules, variables, and custom variable types.</p>
    #   @return [Types::AutomatedReasoningPolicyDefinition]
    class ExportAutomatedReasoningPolicyVersionResponse < Struct.new(
      :policy_definition,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The unique external source of the content contained in the wrapper object.</p>
    # @!attribute source_type
    #   <p>The source type of the external source wrapper object.</p>
    #   @return [String]
    # @!attribute s3_location
    #   <p>The S3 location of the external source wrapper object.</p>
    #   @return [Types::S3ObjectDoc]
    # @!attribute byte_content
    #   <p>The identifier, content type, and data of the external source wrapper object.</p>
    #   @return [Types::ByteContentDoc]
    class ExternalSource < Struct.new(
      :source_type,
      :s3_location,
      :byte_content,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ExternalSourceType
      S3 = 'S3'
      BYTE_CONTENT = 'BYTE_CONTENT'
    end

    # <p>The response generation configuration of the external source wrapper object.</p>
    # @!attribute prompt_template
    #   <p>Contains the template for the prompt for the external source wrapper object.</p>
    #   @return [Types::PromptTemplate]
    # @!attribute guardrail_configuration
    #   <p>Configuration details for the guardrail.</p>
    #   @return [Types::GuardrailConfiguration]
    # @!attribute kb_inference_config
    #   <p>Configuration details for inference when using <code>RetrieveAndGenerate</code> to generate responses while using an external source.</p>
    #   @return [Types::KbInferenceConfig]
    # @!attribute additional_model_request_fields
    #   <p>Additional model parameters and their corresponding values not included in the text inference configuration for an external source. Takes in custom model parameters specific to the language model being used.</p>
    #   @return [Hash<String, JSON>]
    class ExternalSourcesGenerationConfiguration < Struct.new(
      :prompt_template,
      :guardrail_configuration,
      :kb_inference_config,
      :additional_model_request_fields,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration of the external source wrapper object in the <code>retrieveAndGenerate</code> function.</p>
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the foundation model or <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html">inference profile</a> used to generate responses. </p>
    #   @return [String]
    # @!attribute sources
    #   <p>The document for the external source wrapper object in the <code>retrieveAndGenerate</code> function.</p>
    #   @return [Array<Types::ExternalSource>]
    # @!attribute generation_configuration
    #   <p>Contains configurations details for response generation based on retrieved text chunks.</p>
    #   @return [Types::ExternalSourcesGenerationConfiguration]
    class ExternalSourcesRetrieveAndGenerateConfiguration < Struct.new(
      :model_arn,
      :sources,
      :generation_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies a field to be used during the reranking process in a Knowledge Base vector search. This structure identifies metadata fields that should be considered when reordering search results to improve relevance.</p>
    # @!attribute field_name
    #   <p>The name of the metadata field to be used during the reranking process.</p>
    #   @return [String]
    class FieldForReranking < Struct.new(
      :field_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the name of the metadata attribute/field to apply filters. You must match the name of the attribute/field in your data source/document metadata.</p>
    # @!attribute key
    #   <p>The name of metadata attribute/field, which must match the name in your data source/document metadata.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the metadata attribute/field.</p>
    #   @return [JSON]
    class FilterAttribute < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FineTuningJobStatus
      IN_PROGRESS = 'InProgress'
      COMPLETED = 'Completed'
      FAILED = 'Failed'
      STOPPING = 'Stopping'
      STOPPED = 'Stopped'
    end

    # <p>Information about a foundation model.</p>
    # @!attribute model_arn
    #   <p>The model Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model identifier.</p>
    #   @return [String]
    # @!attribute model_name
    #   <p>The model name.</p>
    #   @return [String]
    # @!attribute provider_name
    #   <p>The model's provider name.</p>
    #   @return [String]
    # @!attribute input_modalities
    #   <p>The input modalities that the model supports.</p>
    #   @return [Array<String>]
    # @!attribute output_modalities
    #   <p>The output modalities that the model supports.</p>
    #   @return [Array<String>]
    # @!attribute response_streaming_supported
    #   <p>Indicates whether the model supports streaming.</p>
    #   @return [Boolean]
    # @!attribute customizations_supported
    #   <p>The customization that the model supports.</p>
    #   @return [Array<String>]
    # @!attribute inference_types_supported
    #   <p>The inference types that the model supports.</p>
    #   @return [Array<String>]
    # @!attribute model_lifecycle
    #   <p>Contains details about whether a model version is available or deprecated</p>
    #   @return [Types::FoundationModelLifecycle]
    class FoundationModelDetails < Struct.new(
      :model_arn,
      :model_id,
      :model_name,
      :provider_name,
      :input_modalities,
      :output_modalities,
      :response_streaming_supported,
      :customizations_supported,
      :inference_types_supported,
      :model_lifecycle,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about whether a model version is available or deprecated.</p>
    # @!attribute status
    #   <p>Specifies whether a model version is available (<code>ACTIVE</code>) or deprecated (<code>LEGACY</code>.</p>
    #   @return [String]
    class FoundationModelLifecycle < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FoundationModelLifecycleStatus
      ACTIVE = 'ACTIVE'
      LEGACY = 'LEGACY'
    end

    # <p>Summary information for a foundation model.</p>
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the foundation model.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model ID of the foundation model.</p>
    #   @return [String]
    # @!attribute model_name
    #   <p>The name of the model.</p>
    #   @return [String]
    # @!attribute provider_name
    #   <p>The model's provider name.</p>
    #   @return [String]
    # @!attribute input_modalities
    #   <p>The input modalities that the model supports.</p>
    #   @return [Array<String>]
    # @!attribute output_modalities
    #   <p>The output modalities that the model supports.</p>
    #   @return [Array<String>]
    # @!attribute response_streaming_supported
    #   <p>Indicates whether the model supports streaming.</p>
    #   @return [Boolean]
    # @!attribute customizations_supported
    #   <p>Whether the model supports fine-tuning or continual pre-training.</p>
    #   @return [Array<String>]
    # @!attribute inference_types_supported
    #   <p>The inference types that the model supports.</p>
    #   @return [Array<String>]
    # @!attribute model_lifecycle
    #   <p>Contains details about whether a model version is available or deprecated.</p>
    #   @return [Types::FoundationModelLifecycle]
    class FoundationModelSummary < Struct.new(
      :model_arn,
      :model_id,
      :model_name,
      :provider_name,
      :input_modalities,
      :output_modalities,
      :response_streaming_supported,
      :customizations_supported,
      :inference_types_supported,
      :model_lifecycle,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration details for response generation based on retrieved text chunks.</p>
    # @!attribute prompt_template
    #   <p>Contains the template for the prompt that's sent to the model for response generation.</p>
    #   @return [Types::PromptTemplate]
    # @!attribute guardrail_configuration
    #   <p>Contains configuration details for the guardrail.</p>
    #   @return [Types::GuardrailConfiguration]
    # @!attribute kb_inference_config
    #   <p>Contains configuration details for inference for knowledge base retrieval and response generation.</p>
    #   @return [Types::KbInferenceConfig]
    # @!attribute additional_model_request_fields
    #   <p>Additional model parameters and corresponding values not included in the <code>textInferenceConfig</code> structure for a knowledge base. This allows you to provide custom model parameters specific to the language model being used.</p>
    #   @return [Hash<String, JSON>]
    class GenerationConfiguration < Struct.new(
      :prompt_template,
      :guardrail_configuration,
      :kb_inference_config,
      :additional_model_request_fields,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy whose annotations you want to retrieve.</p>
    #   @return [String]
    # @!attribute build_workflow_id
    #   <p>The unique identifier of the build workflow whose annotations you want to retrieve.</p>
    #   @return [String]
    class GetAutomatedReasoningPolicyAnnotationsRequest < Struct.new(
      :policy_arn,
      :build_workflow_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Automated Reasoning policy.</p>
    #   @return [String]
    # @!attribute build_workflow_id
    #   <p>The unique identifier of the build workflow.</p>
    #   @return [String]
    # @!attribute annotations
    #   <p>The current set of annotations containing rules, variables, and types extracted from the source documents. These can be modified before finalizing the policy.</p>
    #   @return [Array<Types::AutomatedReasoningPolicyAnnotation>]
    # @!attribute annotation_set_hash
    #   <p>A hash value representing the current state of the annotations. This is used for optimistic concurrency control when updating annotations.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the annotations were last updated.</p>
    #   @return [Time]
    class GetAutomatedReasoningPolicyAnnotationsResponse < Struct.new(
      :policy_arn,
      :name,
      :build_workflow_id,
      :annotations,
      :annotation_set_hash,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy whose build workflow you want to retrieve.</p>
    #   @return [String]
    # @!attribute build_workflow_id
    #   <p>The unique identifier of the build workflow to retrieve.</p>
    #   @return [String]
    class GetAutomatedReasoningPolicyBuildWorkflowRequest < Struct.new(
      :policy_arn,
      :build_workflow_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy.</p>
    #   @return [String]
    # @!attribute build_workflow_id
    #   <p>The unique identifier of the build workflow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the build workflow (e.g., RUNNING, COMPLETED, FAILED, CANCELLED).</p>
    #   @return [String]
    # @!attribute build_workflow_type
    #   <p>The type of build workflow being executed (e.g., DOCUMENT_INGESTION, POLICY_REPAIR).</p>
    #   @return [String]
    # @!attribute document_name
    #   <p>The name of the source document used in the build workflow.</p>
    #   @return [String]
    # @!attribute document_content_type
    #   <p>The content type of the source document (e.g., text/plain, application/pdf).</p>
    #   @return [String]
    # @!attribute document_description
    #   <p>A detailed description of the document's content and how it should be used in the policy generation process.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the build workflow was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the build workflow was last updated.</p>
    #   @return [Time]
    class GetAutomatedReasoningPolicyBuildWorkflowResponse < Struct.new(
      :policy_arn,
      :build_workflow_id,
      :status,
      :build_workflow_type,
      :document_name,
      :document_content_type,
      :document_description,
      :created_at,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy whose build workflow assets you want to retrieve.</p>
    #   @return [String]
    # @!attribute build_workflow_id
    #   <p>The unique identifier of the build workflow whose result assets you want to retrieve.</p>
    #   @return [String]
    # @!attribute asset_type
    #   <p>The type of asset to retrieve (e.g., BUILD_LOG, QUALITY_REPORT, POLICY_DEFINITION).</p>
    #   @return [String]
    class GetAutomatedReasoningPolicyBuildWorkflowResultAssetsRequest < Struct.new(
      :policy_arn,
      :build_workflow_id,
      :asset_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy.</p>
    #   @return [String]
    # @!attribute build_workflow_id
    #   <p>The unique identifier of the build workflow.</p>
    #   @return [String]
    # @!attribute build_workflow_assets
    #   <p>The requested build workflow asset. This is a union type that returns only one of the available asset types (logs, reports, or generated artifacts) based on the specific asset type requested in the API call.</p>
    #   @return [Types::AutomatedReasoningPolicyBuildResultAssets]
    class GetAutomatedReasoningPolicyBuildWorkflowResultAssetsResponse < Struct.new(
      :policy_arn,
      :build_workflow_id,
      :build_workflow_assets,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy for which you want to get the next test scenario.</p>
    #   @return [String]
    # @!attribute build_workflow_id
    #   <p>The unique identifier of the build workflow associated with the test scenarios.</p>
    #   @return [String]
    class GetAutomatedReasoningPolicyNextScenarioRequest < Struct.new(
      :policy_arn,
      :build_workflow_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy.</p>
    #   @return [String]
    # @!attribute scenario
    #   <p>The next test scenario to validate, including the test expression and expected results.</p>
    #   @return [Types::AutomatedReasoningPolicyScenario]
    class GetAutomatedReasoningPolicyNextScenarioResponse < Struct.new(
      :policy_arn,
      :scenario,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy to retrieve. Can be either the unversioned ARN for the draft policy or an ARN for a specific policy version.</p>
    #   @return [String]
    class GetAutomatedReasoningPolicyRequest < Struct.new(
      :policy_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the policy.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>The unique identifier of the policy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the policy.</p>
    #   @return [String]
    # @!attribute definition_hash
    #   <p>The hash of the policy definition used as a concurrency token.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the policy was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the policy was last updated.</p>
    #   @return [Time]
    class GetAutomatedReasoningPolicyResponse < Struct.new(
      :policy_arn,
      :name,
      :version,
      :policy_id,
      :description,
      :definition_hash,
      :created_at,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy that contains the test.</p>
    #   @return [String]
    # @!attribute test_case_id
    #   <p>The unique identifier of the test to retrieve.</p>
    #   @return [String]
    class GetAutomatedReasoningPolicyTestCaseRequest < Struct.new(
      :policy_arn,
      :test_case_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the policy that contains the test.</p>
    #   @return [String]
    # @!attribute test_case
    #   <p>The test details including the content, query, expected result, and metadata.</p>
    #   @return [Types::AutomatedReasoningPolicyTestCase]
    class GetAutomatedReasoningPolicyTestCaseResponse < Struct.new(
      :policy_arn,
      :test_case,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy.</p>
    #   @return [String]
    # @!attribute build_workflow_id
    #   <p>The build workflow identifier. The build workflow must display a <code>COMPLETED</code> status to get results.</p>
    #   @return [String]
    # @!attribute test_case_id
    #   <p>The unique identifier of the test for which to retrieve results.</p>
    #   @return [String]
    class GetAutomatedReasoningPolicyTestResultRequest < Struct.new(
      :policy_arn,
      :build_workflow_id,
      :test_case_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute test_result
    #   <p>The test result containing validation findings, execution status, and detailed analysis.</p>
    #   @return [Types::AutomatedReasoningPolicyTestResult]
    class GetAutomatedReasoningPolicyTestResultResponse < Struct.new(
      :test_result,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute custom_model_deployment_identifier
    #   <p>The Amazon Resource Name (ARN) or name of the custom model deployment to retrieve information about.</p>
    #   @return [String]
    class GetCustomModelDeploymentRequest < Struct.new(
      :custom_model_deployment_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute custom_model_deployment_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model deployment.</p>
    #   @return [String]
    # @!attribute model_deployment_name
    #   <p>The name of the custom model deployment.</p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model associated with this deployment.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the custom model deployment was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the custom model deployment. Possible values are:</p> <ul> <li> <p> <code>CREATING</code> - The deployment is being set up and prepared for inference.</p> </li> <li> <p> <code>ACTIVE</code> - The deployment is ready and available for inference requests.</p> </li> <li> <p> <code>FAILED</code> - The deployment failed to be created or became unavailable.</p> </li> </ul>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the custom model deployment.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>If the deployment status is <code>FAILED</code>, this field contains a message describing the failure reason.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The date and time when the custom model deployment was last updated.</p>
    #   @return [Time]
    class GetCustomModelDeploymentResponse < Struct.new(
      :custom_model_deployment_arn,
      :model_deployment_name,
      :model_arn,
      :created_at,
      :status,
      :description,
      :failure_message,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_identifier
    #   <p>Name or Amazon Resource Name (ARN) of the custom model.</p>
    #   @return [String]
    class GetCustomModelRequest < Struct.new(
      :model_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_arn
    #   <p>Amazon Resource Name (ARN) associated with this model.</p>
    #   @return [String]
    # @!attribute model_name
    #   <p>Model name associated with this model.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>Job name associated with this model.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>Job Amazon Resource Name (ARN) associated with this model. For models that you create with the <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateCustomModel.html">CreateCustomModel</a> API operation, this is <code>NULL</code>.</p>
    #   @return [String]
    # @!attribute base_model_arn
    #   <p>Amazon Resource Name (ARN) of the base model.</p>
    #   @return [String]
    # @!attribute customization_type
    #   <p>The type of model customization.</p>
    #   @return [String]
    # @!attribute model_kms_key_arn
    #   <p>The custom model is encrypted at rest using this key.</p>
    #   @return [String]
    # @!attribute hyper_parameters
    #   <p>Hyperparameter values associated with this model. For details on the format for different models, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models-hp.html">Custom model hyperparameters</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute training_data_config
    #   <p>Contains information about the training dataset.</p>
    #   @return [Types::TrainingDataConfig]
    # @!attribute validation_data_config
    #   <p>Contains information about the validation dataset.</p>
    #   @return [Types::ValidationDataConfig]
    # @!attribute output_data_config
    #   <p>Output data configuration associated with this custom model.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute training_metrics
    #   <p>Contains training metrics from the job creation.</p>
    #   @return [Types::TrainingMetrics]
    # @!attribute validation_metrics
    #   <p>The validation metrics from the job creation.</p>
    #   @return [Array<Types::ValidatorMetric>]
    # @!attribute creation_time
    #   <p>Creation time of the model.</p>
    #   @return [Time]
    # @!attribute customization_config
    #   <p>The customization configuration for the custom model.</p>
    #   @return [Types::CustomizationConfig]
    # @!attribute model_status
    #   <p>The current status of the custom model. Possible values include:</p> <ul> <li> <p> <code>Creating</code> - The model is being created and validated.</p> </li> <li> <p> <code>Active</code> - The model has been successfully created and is ready for use.</p> </li> <li> <p> <code>Failed</code> - The model creation process failed. Check the <code>failureMessage</code> field for details.</p> </li> </ul>
    #   @return [String]
    # @!attribute failure_message
    #   <p>A failure message for any issues that occurred when creating the custom model. This is included for only a failed CreateCustomModel operation.</p>
    #   @return [String]
    class GetCustomModelResponse < Struct.new(
      :model_arn,
      :model_name,
      :job_name,
      :job_arn,
      :base_model_arn,
      :customization_type,
      :model_kms_key_arn,
      :hyper_parameters,
      :training_data_config,
      :validation_data_config,
      :output_data_config,
      :training_metrics,
      :validation_metrics,
      :creation_time,
      :customization_config,
      :model_status,
      :failure_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_identifier
    #   <p>The Amazon Resource Name (ARN) of the evaluation job you want get information on.</p>
    #   @return [String]
    class GetEvaluationJobRequest < Struct.new(
      :job_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The name for the evaluation job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the evaluation job.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the evaluation job.</p>
    #   @return [String]
    # @!attribute job_description
    #   <p>The description of the evaluation job.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role used in the evaluation job.</p>
    #   @return [String]
    # @!attribute customer_encryption_key_id
    #   <p>The Amazon Resource Name (ARN) of the customer managed encryption key specified when the evaluation job was created.</p>
    #   @return [String]
    # @!attribute job_type
    #   <p>Specifies whether the evaluation job is automated or human-based.</p>
    #   @return [String]
    # @!attribute application_type
    #   <p>Specifies whether the evaluation job is for evaluating a model or evaluating a knowledge base (retrieval and response generation).</p>
    #   @return [String]
    # @!attribute evaluation_config
    #   <p>Contains the configuration details of either an automated or human-based evaluation job.</p>
    #   @return [Types::EvaluationConfig]
    # @!attribute inference_config
    #   <p>Contains the configuration details of the inference model used for the evaluation job. </p>
    #   @return [Types::EvaluationInferenceConfig]
    # @!attribute output_data_config
    #   <p>Contains the configuration details of the Amazon S3 bucket for storing the results of the evaluation job.</p>
    #   @return [Types::EvaluationOutputDataConfig]
    # @!attribute creation_time
    #   <p>The time the evaluation job was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The time the evaluation job was last modified.</p>
    #   @return [Time]
    # @!attribute failure_messages
    #   <p>A list of strings that specify why the evaluation job failed to create.</p>
    #   @return [Array<String>]
    class GetEvaluationJobResponse < Struct.new(
      :job_name,
      :status,
      :job_arn,
      :job_description,
      :role_arn,
      :customer_encryption_key_id,
      :job_type,
      :application_type,
      :evaluation_config,
      :inference_config,
      :output_data_config,
      :creation_time,
      :last_modified_time,
      :failure_messages,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_id
    #   <p>The model Id of the foundation model.</p>
    #   @return [String]
    class GetFoundationModelAvailabilityRequest < Struct.new(
      :model_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_id
    #   <p>The model Id of the foundation model.</p>
    #   @return [String]
    # @!attribute agreement_availability
    #   <p>Agreement availability. </p>
    #   @return [Types::AgreementAvailability]
    # @!attribute authorization_status
    #   <p>Authorization status.</p>
    #   @return [String]
    # @!attribute entitlement_availability
    #   <p>Entitlement availability. </p>
    #   @return [String]
    # @!attribute region_availability
    #   <p>Region availability. </p>
    #   @return [String]
    class GetFoundationModelAvailabilityResponse < Struct.new(
      :model_id,
      :agreement_availability,
      :authorization_status,
      :entitlement_availability,
      :region_availability,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_identifier
    #   <p>The model identifier. </p>
    #   @return [String]
    class GetFoundationModelRequest < Struct.new(
      :model_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_details
    #   <p>Information about the foundation model.</p>
    #   @return [Types::FoundationModelDetails]
    class GetFoundationModelResponse < Struct.new(
      :model_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute guardrail_identifier
    #   <p>The unique identifier of the guardrail for which to get details. This can be an ID or the ARN.</p>
    #   @return [String]
    # @!attribute guardrail_version
    #   <p>The version of the guardrail for which to get details. If you don't specify a version, the response returns details for the <code>DRAFT</code> version.</p>
    #   @return [String]
    class GetGuardrailRequest < Struct.new(
      :guardrail_identifier,
      :guardrail_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the guardrail.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the guardrail.</p>
    #   @return [String]
    # @!attribute guardrail_id
    #   <p>The unique identifier of the guardrail.</p>
    #   @return [String]
    # @!attribute guardrail_arn
    #   <p>The ARN of the guardrail.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the guardrail.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the guardrail.</p>
    #   @return [String]
    # @!attribute topic_policy
    #   <p>The topic policy that was configured for the guardrail.</p>
    #   @return [Types::GuardrailTopicPolicy]
    # @!attribute content_policy
    #   <p>The content policy that was configured for the guardrail.</p>
    #   @return [Types::GuardrailContentPolicy]
    # @!attribute word_policy
    #   <p>The word policy that was configured for the guardrail.</p>
    #   @return [Types::GuardrailWordPolicy]
    # @!attribute sensitive_information_policy
    #   <p>The sensitive information policy that was configured for the guardrail.</p>
    #   @return [Types::GuardrailSensitiveInformationPolicy]
    # @!attribute contextual_grounding_policy
    #   <p>The contextual grounding policy used in the guardrail.</p>
    #   @return [Types::GuardrailContextualGroundingPolicy]
    # @!attribute automated_reasoning_policy
    #   <p>The current Automated Reasoning policy configuration for the guardrail, if any is configured.</p>
    #   @return [Types::GuardrailAutomatedReasoningPolicy]
    # @!attribute cross_region_details
    #   <p>Details about the system-defined guardrail profile that you're using with your guardrail, including the guardrail profile ID and Amazon Resource Name (ARN).</p>
    #   @return [Types::GuardrailCrossRegionDetails]
    # @!attribute created_at
    #   <p>The date and time at which the guardrail was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time at which the guardrail was updated.</p>
    #   @return [Time]
    # @!attribute status_reasons
    #   <p>Appears if the <code>status</code> is <code>FAILED</code>. A list of reasons for why the guardrail failed to be created, updated, versioned, or deleted.</p>
    #   @return [Array<String>]
    # @!attribute failure_recommendations
    #   <p>Appears if the <code>status</code> of the guardrail is <code>FAILED</code>. A list of recommendations to carry out before retrying the request.</p>
    #   @return [Array<String>]
    # @!attribute blocked_input_messaging
    #   <p>The message that the guardrail returns when it blocks a prompt.</p>
    #   @return [String]
    # @!attribute blocked_outputs_messaging
    #   <p>The message that the guardrail returns when it blocks a model response.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key that encrypts the guardrail.</p>
    #   @return [String]
    class GetGuardrailResponse < Struct.new(
      :name,
      :description,
      :guardrail_id,
      :guardrail_arn,
      :version,
      :status,
      :topic_policy,
      :content_policy,
      :word_policy,
      :sensitive_information_policy,
      :contextual_grounding_policy,
      :automated_reasoning_policy,
      :cross_region_details,
      :created_at,
      :updated_at,
      :status_reasons,
      :failure_recommendations,
      :blocked_input_messaging,
      :blocked_outputs_messaging,
      :kms_key_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_identifier
    #   <p>Name or Amazon Resource Name (ARN) of the imported model.</p>
    #   @return [String]
    class GetImportedModelRequest < Struct.new(
      :model_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) associated with this imported model.</p>
    #   @return [String]
    # @!attribute model_name
    #   <p>The name of the imported model.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>Job name associated with the imported model.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>Job Amazon Resource Name (ARN) associated with the imported model.</p>
    #   @return [String]
    # @!attribute model_data_source
    #   <p>The data source for this imported model.</p>
    #   @return [Types::ModelDataSource]
    # @!attribute creation_time
    #   <p>Creation time of the imported model.</p>
    #   @return [Time]
    # @!attribute model_architecture
    #   <p>The architecture of the imported model.</p>
    #   @return [String]
    # @!attribute model_kms_key_arn
    #   <p>The imported model is encrypted at rest using this key.</p>
    #   @return [String]
    # @!attribute instruct_supported
    #   <p>Specifies if the imported model supports converse.</p>
    #   @return [Boolean]
    # @!attribute custom_model_units
    #   <p>Information about the hardware utilization for a single copy of the model.</p>
    #   @return [Types::CustomModelUnits]
    class GetImportedModelResponse < Struct.new(
      :model_arn,
      :model_name,
      :job_name,
      :job_arn,
      :model_data_source,
      :creation_time,
      :model_architecture,
      :model_kms_key_arn,
      :instruct_supported,
      :custom_model_units,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute inference_profile_identifier
    #   <p>The ID or Amazon Resource Name (ARN) of the inference profile.</p>
    #   @return [String]
    class GetInferenceProfileRequest < Struct.new(
      :inference_profile_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute inference_profile_name
    #   <p>The name of the inference profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the inference profile.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the inference profile was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the inference profile was last updated.</p>
    #   @return [Time]
    # @!attribute inference_profile_arn
    #   <p>The Amazon Resource Name (ARN) of the inference profile.</p>
    #   @return [String]
    # @!attribute models
    #   <p>A list of information about each model in the inference profile.</p>
    #   @return [Array<Types::InferenceProfileModel>]
    # @!attribute inference_profile_id
    #   <p>The unique identifier of the inference profile.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the inference profile. <code>ACTIVE</code> means that the inference profile is ready to be used.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the inference profile. The following types are possible:</p> <ul> <li> <p> <code>SYSTEM_DEFINED</code> – The inference profile is defined by Amazon Bedrock. You can route inference requests across regions with these inference profiles.</p> </li> <li> <p> <code>APPLICATION</code> – The inference profile was created by a user. This type of inference profile can track metrics and costs when invoking the model in it. The inference profile may route requests to one or multiple regions.</p> </li> </ul>
    #   @return [String]
    class GetInferenceProfileResponse < Struct.new(
      :inference_profile_name,
      :description,
      :created_at,
      :updated_at,
      :inference_profile_arn,
      :models,
      :inference_profile_id,
      :status,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint you want to get information about.</p>
    #   @return [String]
    class GetMarketplaceModelEndpointRequest < Struct.new(
      :endpoint_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute marketplace_model_endpoint
    #   <p>Details about the requested endpoint.</p>
    #   @return [Types::MarketplaceModelEndpoint]
    class GetMarketplaceModelEndpointResponse < Struct.new(
      :marketplace_model_endpoint,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the model copy job.</p>
    #   @return [String]
    class GetModelCopyJobRequest < Struct.new(
      :job_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the model copy job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the model copy job.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time at which the model copy job was created.</p>
    #   @return [Time]
    # @!attribute target_model_arn
    #   <p>The Amazon Resource Name (ARN) of the copied model.</p>
    #   @return [String]
    # @!attribute target_model_name
    #   <p>The name of the copied model.</p>
    #   @return [String]
    # @!attribute source_account_id
    #   <p>The unique identifier of the account that the model being copied originated from.</p>
    #   @return [String]
    # @!attribute source_model_arn
    #   <p>The Amazon Resource Name (ARN) of the original model being copied.</p>
    #   @return [String]
    # @!attribute target_model_kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key encrypting the copied model.</p>
    #   @return [String]
    # @!attribute target_model_tags
    #   <p>The tags associated with the copied model.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute failure_message
    #   <p>An error message for why the model copy job failed.</p>
    #   @return [String]
    # @!attribute source_model_name
    #   <p>The name of the original model being copied.</p>
    #   @return [String]
    class GetModelCopyJobResponse < Struct.new(
      :job_arn,
      :status,
      :creation_time,
      :target_model_arn,
      :target_model_name,
      :source_account_id,
      :source_model_arn,
      :target_model_kms_key_arn,
      :target_model_tags,
      :failure_message,
      :source_model_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_identifier
    #   <p>Identifier for the customization job.</p>
    #   @return [String]
    class GetModelCustomizationJobRequest < Struct.new(
      :job_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the customization job.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name of the customization job.</p>
    #   @return [String]
    # @!attribute output_model_name
    #   <p>The name of the output model.</p>
    #   @return [String]
    # @!attribute output_model_arn
    #   <p>The Amazon Resource Name (ARN) of the output model.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>The token that you specified in the <code>CreateCustomizationJob</code> request.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the job. A successful job transitions from in-progress to completed when the output model is ready to use. If the job failed, the failure message contains information about why the job failed.</p>
    #   @return [String]
    # @!attribute status_details
    #   <p>For a Distillation job, the details about the statuses of the sub-tasks of the customization job. </p>
    #   @return [Types::StatusDetails]
    # @!attribute failure_message
    #   <p>Information about why the job failed.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Time that the resource was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>Time that the resource was last modified.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>Time that the resource transitioned to terminal state.</p>
    #   @return [Time]
    # @!attribute base_model_arn
    #   <p>Amazon Resource Name (ARN) of the base model.</p>
    #   @return [String]
    # @!attribute hyper_parameters
    #   <p>The hyperparameter values for the job. For details on the format for different models, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models-hp.html">Custom model hyperparameters</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute training_data_config
    #   <p>Contains information about the training dataset.</p>
    #   @return [Types::TrainingDataConfig]
    # @!attribute validation_data_config
    #   <p>Contains information about the validation dataset.</p>
    #   @return [Types::ValidationDataConfig]
    # @!attribute output_data_config
    #   <p>Output data configuration </p>
    #   @return [Types::OutputDataConfig]
    # @!attribute customization_type
    #   <p>The type of model customization.</p>
    #   @return [String]
    # @!attribute output_model_kms_key_arn
    #   <p>The custom model is encrypted at rest using this key.</p>
    #   @return [String]
    # @!attribute training_metrics
    #   <p>Contains training metrics from the job creation.</p>
    #   @return [Types::TrainingMetrics]
    # @!attribute validation_metrics
    #   <p>The loss metric for each validator that you provided in the createjob request.</p>
    #   @return [Array<Types::ValidatorMetric>]
    # @!attribute vpc_config
    #   <p>VPC configuration for the custom model job.</p>
    #   @return [Types::VpcConfig]
    # @!attribute customization_config
    #   <p>The customization configuration for the model customization job.</p>
    #   @return [Types::CustomizationConfig]
    class GetModelCustomizationJobResponse < Struct.new(
      :job_arn,
      :job_name,
      :output_model_name,
      :output_model_arn,
      :client_request_token,
      :role_arn,
      :status,
      :status_details,
      :failure_message,
      :creation_time,
      :last_modified_time,
      :end_time,
      :base_model_arn,
      :hyper_parameters,
      :training_data_config,
      :validation_data_config,
      :output_data_config,
      :customization_type,
      :output_model_kms_key_arn,
      :training_metrics,
      :validation_metrics,
      :vpc_config,
      :customization_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_identifier
    #   <p>The identifier of the import job.</p>
    #   @return [String]
    class GetModelImportJobRequest < Struct.new(
      :job_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the import job.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name of the import job.</p>
    #   @return [String]
    # @!attribute imported_model_name
    #   <p>The name of the imported model.</p>
    #   @return [String]
    # @!attribute imported_model_arn
    #   <p>The Amazon Resource Name (ARN) of the imported model.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role associated with this job.</p>
    #   @return [String]
    # @!attribute model_data_source
    #   <p>The data source for the imported model.</p>
    #   @return [Types::ModelDataSource]
    # @!attribute status
    #   <p>The status of the job. A successful job transitions from in-progress to completed when the imported model is ready to use. If the job failed, the failure message contains information about why the job failed.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>Information about why the import job failed.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the resource was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>Time the resource was last modified.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>Time that the resource transitioned to terminal state.</p>
    #   @return [Time]
    # @!attribute vpc_config
    #   <p>The Virtual Private Cloud (VPC) configuration of the import model job.</p>
    #   @return [Types::VpcConfig]
    # @!attribute imported_model_kms_key_arn
    #   <p>The imported model is encrypted at rest using this key.</p>
    #   @return [String]
    class GetModelImportJobResponse < Struct.new(
      :job_arn,
      :job_name,
      :imported_model_name,
      :imported_model_arn,
      :role_arn,
      :model_data_source,
      :status,
      :failure_message,
      :creation_time,
      :last_modified_time,
      :end_time,
      :vpc_config,
      :imported_model_kms_key_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_identifier
    #   <p>The Amazon Resource Name (ARN) of the batch inference job.</p>
    #   @return [String]
    class GetModelInvocationJobRequest < Struct.new(
      :job_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the batch inference job.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name of the batch inference job.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The unique identifier of the foundation model used for model inference.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role with permissions to carry out and manage batch inference. You can use the console to create a default service role or follow the steps at <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/batch-iam-sr.html">Create a service role for batch inference</a>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the batch inference job.</p> <p>The following statuses are possible:</p> <ul> <li> <p>Submitted – This job has been submitted to a queue for validation.</p> </li> <li> <p>Validating – This job is being validated for the requirements described in <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-data.html">Format and upload your batch inference data</a>. The criteria include the following:</p> <ul> <li> <p>Your IAM service role has access to the Amazon S3 buckets containing your files.</p> </li> <li> <p>Your files are .jsonl files and each individual record is a JSON object in the correct format. Note that validation doesn't check if the <code>modelInput</code> value matches the request body for the model.</p> </li> <li> <p>Your files fulfill the requirements for file size and number of records. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/quotas.html">Quotas for Amazon Bedrock</a>.</p> </li> </ul> </li> <li> <p>Scheduled – This job has been validated and is now in a queue. The job will automatically start when it reaches its turn.</p> </li> <li> <p>Expired – This job timed out because it was scheduled but didn't begin before the set timeout duration. Submit a new job request.</p> </li> <li> <p>InProgress – This job has begun. You can start viewing the results in the output S3 location.</p> </li> <li> <p>Completed – This job has successfully completed. View the output files in the output S3 location.</p> </li> <li> <p>PartiallyCompleted – This job has partially completed. Not all of your records could be processed in time. View the output files in the output S3 location.</p> </li> <li> <p>Failed – This job has failed. Check the failure message for any further details. For further assistance, reach out to the <a href="https://console.aws.amazon.com/support/home/">Amazon Web ServicesSupport Center</a>.</p> </li> <li> <p>Stopped – This job was stopped by a user.</p> </li> <li> <p>Stopping – This job is being stopped by a user.</p> </li> </ul>
    #   @return [String]
    # @!attribute message
    #   <p>If the batch inference job failed, this field contains a message describing why the job failed.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>The time at which the batch inference job was submitted.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The time at which the batch inference job was last modified.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time at which the batch inference job ended.</p>
    #   @return [Time]
    # @!attribute input_data_config
    #   <p>Details about the location of the input to the batch inference job.</p>
    #   @return [Types::ModelInvocationJobInputDataConfig]
    # @!attribute output_data_config
    #   <p>Details about the location of the output of the batch inference job.</p>
    #   @return [Types::ModelInvocationJobOutputDataConfig]
    # @!attribute vpc_config
    #   <p>The configuration of the Virtual Private Cloud (VPC) for the data in the batch inference job. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/batch-vpc">Protect batch inference jobs using a VPC</a>.</p>
    #   @return [Types::VpcConfig]
    # @!attribute timeout_duration_in_hours
    #   <p>The number of hours after which batch inference job was set to time out.</p>
    #   @return [Integer]
    # @!attribute job_expiration_time
    #   <p>The time at which the batch inference job times or timed out.</p>
    #   @return [Time]
    class GetModelInvocationJobResponse < Struct.new(
      :job_arn,
      :job_name,
      :model_id,
      :client_request_token,
      :role_arn,
      :status,
      :message,
      :submit_time,
      :last_modified_time,
      :end_time,
      :input_data_config,
      :output_data_config,
      :vpc_config,
      :timeout_duration_in_hours,
      :job_expiration_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class GetModelInvocationLoggingConfigurationRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute logging_config
    #   <p>The current configuration values.</p>
    #   @return [Types::LoggingConfig]
    class GetModelInvocationLoggingConfigurationResponse < Struct.new(
      :logging_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute prompt_router_arn
    #   <p>The prompt router's ARN</p>
    #   @return [String]
    class GetPromptRouterRequest < Struct.new(
      :prompt_router_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute prompt_router_name
    #   <p>The router's name.</p>
    #   @return [String]
    # @!attribute routing_criteria
    #   <p>The router's routing criteria.</p>
    #   @return [Types::RoutingCriteria]
    # @!attribute description
    #   <p>The router's description.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>When the router was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>When the router was updated.</p>
    #   @return [Time]
    # @!attribute prompt_router_arn
    #   <p>The prompt router's ARN</p>
    #   @return [String]
    # @!attribute models
    #   <p>The router's models.</p>
    #   @return [Array<Types::PromptRouterTargetModel>]
    # @!attribute fallback_model
    #   <p>The router's fallback model.</p>
    #   @return [Types::PromptRouterTargetModel]
    # @!attribute status
    #   <p>The router's status.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The router's type.</p>
    #   @return [String]
    class GetPromptRouterResponse < Struct.new(
      :prompt_router_name,
      :routing_criteria,
      :description,
      :created_at,
      :updated_at,
      :prompt_router_arn,
      :models,
      :fallback_model,
      :status,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute provisioned_model_id
    #   <p>The Amazon Resource Name (ARN) or name of the Provisioned Throughput.</p>
    #   @return [String]
    class GetProvisionedModelThroughputRequest < Struct.new(
      :provisioned_model_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_units
    #   <p>The number of model units allocated to this Provisioned Throughput.</p>
    #   @return [Integer]
    # @!attribute desired_model_units
    #   <p>The number of model units that was requested for this Provisioned Throughput.</p>
    #   @return [Integer]
    # @!attribute provisioned_model_name
    #   <p>The name of the Provisioned Throughput.</p>
    #   @return [String]
    # @!attribute provisioned_model_arn
    #   <p>The Amazon Resource Name (ARN) of the Provisioned Throughput.</p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the model associated with this Provisioned Throughput.</p>
    #   @return [String]
    # @!attribute desired_model_arn
    #   <p>The Amazon Resource Name (ARN) of the model requested to be associated to this Provisioned Throughput. This value differs from the <code>modelArn</code> if updating hasn't completed.</p>
    #   @return [String]
    # @!attribute foundation_model_arn
    #   <p>The Amazon Resource Name (ARN) of the base model for which the Provisioned Throughput was created, or of the base model that the custom model for which the Provisioned Throughput was created was customized.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Provisioned Throughput. </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp of the creation time for this Provisioned Throughput. </p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The timestamp of the last time that this Provisioned Throughput was modified. </p>
    #   @return [Time]
    # @!attribute failure_message
    #   <p>A failure message for any issues that occurred during creation, updating, or deletion of the Provisioned Throughput.</p>
    #   @return [String]
    # @!attribute commitment_duration
    #   <p>Commitment duration of the Provisioned Throughput.</p>
    #   @return [String]
    # @!attribute commitment_expiration_time
    #   <p>The timestamp for when the commitment term for the Provisioned Throughput expires.</p>
    #   @return [Time]
    class GetProvisionedModelThroughputResponse < Struct.new(
      :model_units,
      :desired_model_units,
      :provisioned_model_name,
      :provisioned_model_arn,
      :model_arn,
      :desired_model_arn,
      :foundation_model_arn,
      :status,
      :creation_time,
      :last_modified_time,
      :failure_message,
      :commitment_duration,
      :commitment_expiration_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class GetUseCaseForModelAccessRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute form_data
    #   <p>Get customer profile Response.</p>
    #   @return [String]
    class GetUseCaseForModelAccessResponse < Struct.new(
      :form_data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the configuration of Automated Reasoning policies within a Amazon Bedrock Guardrail, including the policies to apply and confidence thresholds.</p>
    # @!attribute policies
    #   <p>The list of Automated Reasoning policy ARNs that should be applied as part of this guardrail configuration.</p>
    #   @return [Array<String>]
    # @!attribute confidence_threshold
    #   <p>The minimum confidence level required for Automated Reasoning policy violations to trigger guardrail actions. Values range from 0.0 to 1.0.</p>
    #   @return [Float]
    class GuardrailAutomatedReasoningPolicy < Struct.new(
      :policies,
      :confidence_threshold,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration settings for integrating Automated Reasoning policies with Amazon Bedrock Guardrails.</p>
    # @!attribute policies
    #   <p>The list of Automated Reasoning policy ARNs to include in the guardrail configuration.</p>
    #   @return [Array<String>]
    # @!attribute confidence_threshold
    #   <p>The confidence threshold for triggering guardrail actions based on Automated Reasoning policy violations.</p>
    #   @return [Float]
    class GuardrailAutomatedReasoningPolicyConfig < Struct.new(
      :policies,
      :confidence_threshold,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration details for the guardrail.</p>
    # @!attribute guardrail_id
    #   <p>The unique identifier for the guardrail.</p>
    #   @return [String]
    # @!attribute guardrail_version
    #   <p>The version of the guardrail.</p>
    #   @return [String]
    class GuardrailConfiguration < Struct.new(
      :guardrail_id,
      :guardrail_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains filter strengths for harmful content. Guardrails support the following content filters to detect and filter harmful user inputs and FM-generated outputs.</p> <ul> <li> <p> <b>Hate</b> – Describes language or a statement that discriminates, criticizes, insults, denounces, or dehumanizes a person or group on the basis of an identity (such as race, ethnicity, gender, religion, sexual orientation, ability, and national origin).</p> </li> <li> <p> <b>Insults</b> – Describes language or a statement that includes demeaning, humiliating, mocking, insulting, or belittling language. This type of language is also labeled as bullying.</p> </li> <li> <p> <b>Sexual</b> – Describes language or a statement that indicates sexual interest, activity, or arousal using direct or indirect references to body parts, physical traits, or sex.</p> </li> <li> <p> <b>Violence</b> – Describes language or a statement that includes glorification of or threats to inflict physical pain, hurt, or injury toward a person, group or thing.</p> </li> </ul> <p>Content filtering depends on the confidence classification of user inputs and FM responses across each of the four harmful categories. All input and output statements are classified into one of four confidence levels (NONE, LOW, MEDIUM, HIGH) for each harmful category. For example, if a statement is classified as <i>Hate</i> with HIGH confidence, the likelihood of the statement representing hateful content is high. A single statement can be classified across multiple categories with varying confidence levels. For example, a single statement can be classified as <i>Hate</i> with HIGH confidence, <i>Insults</i> with LOW confidence, <i>Sexual</i> with NONE confidence, and <i>Violence</i> with MEDIUM confidence.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-filters.html">Guardrails content filters</a>.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetGuardrail.html#API_GetGuardrail_ResponseSyntax">GetGuardrail response body</a> </p> </li> </ul>
    # @!attribute type
    #   <p>The harmful category that the content filter is applied to.</p>
    #   @return [String]
    # @!attribute input_strength
    #   <p>The strength of the content filter to apply to prompts. As you increase the filter strength, the likelihood of filtering harmful content increases and the probability of seeing harmful content in your application reduces.</p>
    #   @return [String]
    # @!attribute output_strength
    #   <p>The strength of the content filter to apply to model responses. As you increase the filter strength, the likelihood of filtering harmful content increases and the probability of seeing harmful content in your application reduces.</p>
    #   @return [String]
    # @!attribute input_modalities
    #   <p>The input modalities selected for the guardrail content filter.</p>
    #   @return [Array<String>]
    # @!attribute output_modalities
    #   <p>The output modalities selected for the guardrail content filter.</p>
    #   @return [Array<String>]
    # @!attribute input_action
    #   <p>The action to take when harmful content is detected in the input. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute output_action
    #   <p>The action to take when harmful content is detected in the output. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute input_enabled
    #   <p>Indicates whether guardrail evaluation is enabled on the input. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    # @!attribute output_enabled
    #   <p>Indicates whether guardrail evaluation is enabled on the output. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    class GuardrailContentFilter < Struct.new(
      :type,
      :input_strength,
      :output_strength,
      :input_modalities,
      :output_modalities,
      :input_action,
      :output_action,
      :input_enabled,
      :output_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    module GuardrailContentFilterAction
      BLOCK = 'BLOCK'
      NONE = 'NONE'
    end

    # <p>Contains filter strengths for harmful content. Guardrails support the following content filters to detect and filter harmful user inputs and FM-generated outputs.</p> <ul> <li> <p> <b>Hate</b> – Describes language or a statement that discriminates, criticizes, insults, denounces, or dehumanizes a person or group on the basis of an identity (such as race, ethnicity, gender, religion, sexual orientation, ability, and national origin).</p> </li> <li> <p> <b>Insults</b> – Describes language or a statement that includes demeaning, humiliating, mocking, insulting, or belittling language. This type of language is also labeled as bullying.</p> </li> <li> <p> <b>Sexual</b> – Describes language or a statement that indicates sexual interest, activity, or arousal using direct or indirect references to body parts, physical traits, or sex.</p> </li> <li> <p> <b>Violence</b> – Describes language or a statement that includes glorification of or threats to inflict physical pain, hurt, or injury toward a person, group or thing.</p> </li> </ul> <p>Content filtering depends on the confidence classification of user inputs and FM responses across each of the four harmful categories. All input and output statements are classified into one of four confidence levels (NONE, LOW, MEDIUM, HIGH) for each harmful category. For example, if a statement is classified as <i>Hate</i> with HIGH confidence, the likelihood of the statement representing hateful content is high. A single statement can be classified across multiple categories with varying confidence levels. For example, a single statement can be classified as <i>Hate</i> with HIGH confidence, <i>Insults</i> with LOW confidence, <i>Sexual</i> with NONE confidence, and <i>Violence</i> with MEDIUM confidence.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-filters.html">Guardrails content filters</a>.</p>
    # @!attribute type
    #   <p>The harmful category that the content filter is applied to.</p>
    #   @return [String]
    # @!attribute input_strength
    #   <p>The strength of the content filter to apply to prompts. As you increase the filter strength, the likelihood of filtering harmful content increases and the probability of seeing harmful content in your application reduces.</p>
    #   @return [String]
    # @!attribute output_strength
    #   <p>The strength of the content filter to apply to model responses. As you increase the filter strength, the likelihood of filtering harmful content increases and the probability of seeing harmful content in your application reduces.</p>
    #   @return [String]
    # @!attribute input_modalities
    #   <p>The input modalities selected for the guardrail content filter configuration.</p>
    #   @return [Array<String>]
    # @!attribute output_modalities
    #   <p>The output modalities selected for the guardrail content filter configuration.</p>
    #   @return [Array<String>]
    # @!attribute input_action
    #   <p>Specifies the action to take when harmful content is detected. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute output_action
    #   <p>Specifies the action to take when harmful content is detected in the output. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute input_enabled
    #   <p>Specifies whether to enable guardrail evaluation on the input. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    # @!attribute output_enabled
    #   <p>Specifies whether to enable guardrail evaluation on the output. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    class GuardrailContentFilterConfig < Struct.new(
      :type,
      :input_strength,
      :output_strength,
      :input_modalities,
      :output_modalities,
      :input_action,
      :output_action,
      :input_enabled,
      :output_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GuardrailContentFilterType
      SEXUAL = 'SEXUAL'
      VIOLENCE = 'VIOLENCE'
      HATE = 'HATE'
      INSULTS = 'INSULTS'
      MISCONDUCT = 'MISCONDUCT'
      PROMPT_ATTACK = 'PROMPT_ATTACK'
    end

    # <p>The tier that your guardrail uses for content filters.</p>
    # @!attribute tier_name
    #   <p>The tier that your guardrail uses for content filters. Valid values include:</p> <ul> <li> <p> <code>CLASSIC</code> tier – Provides established guardrails functionality supporting English, French, and Spanish languages.</p> </li> <li> <p> <code>STANDARD</code> tier – Provides a more robust solution than the <code>CLASSIC</code> tier and has more comprehensive language support. This tier requires that your guardrail use <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-cross-region.html">cross-Region inference</a>.</p> </li> </ul>
    #   @return [String]
    class GuardrailContentFiltersTier < Struct.new(
      :tier_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The tier that your guardrail uses for content filters. Consider using a tier that balances performance, accuracy, and compatibility with your existing generative AI workflows.</p>
    # @!attribute tier_name
    #   <p>The tier that your guardrail uses for content filters. Valid values include:</p> <ul> <li> <p> <code>CLASSIC</code> tier – Provides established guardrails functionality supporting English, French, and Spanish languages.</p> </li> <li> <p> <code>STANDARD</code> tier – Provides a more robust solution than the <code>CLASSIC</code> tier and has more comprehensive language support. This tier requires that your guardrail use <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-cross-region.html">cross-Region inference</a>.</p> </li> </ul>
    #   @return [String]
    class GuardrailContentFiltersTierConfig < Struct.new(
      :tier_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    module GuardrailContentFiltersTierName
      CLASSIC = 'CLASSIC'
      STANDARD = 'STANDARD'
    end

    # <p>Contains details about how to handle harmful content.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetGuardrail.html#API_GetGuardrail_ResponseSyntax">GetGuardrail response body</a> </p> </li> </ul>
    # @!attribute filters
    #   <p>Contains the type of the content filter and how strongly it should apply to prompts and model responses.</p>
    #   @return [Array<Types::GuardrailContentFilter>]
    # @!attribute tier
    #   <p>The tier that your guardrail uses for content filters.</p>
    #   @return [Types::GuardrailContentFiltersTier]
    class GuardrailContentPolicy < Struct.new(
      :filters,
      :tier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about how to handle harmful content.</p>
    # @!attribute filters_config
    #   <p>Contains the type of the content filter and how strongly it should apply to prompts and model responses.</p>
    #   @return [Array<Types::GuardrailContentFilterConfig>]
    # @!attribute tier_config
    #   <p>The tier that your guardrail uses for content filters.</p>
    #   @return [Types::GuardrailContentFiltersTierConfig]
    class GuardrailContentPolicyConfig < Struct.new(
      :filters_config,
      :tier_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    module GuardrailContextualGroundingAction
      BLOCK = 'BLOCK'
      NONE = 'NONE'
    end

    # <p>The details for the guardrails contextual grounding filter.</p>
    # @!attribute type
    #   <p>The filter type details for the guardrails contextual grounding filter.</p>
    #   @return [String]
    # @!attribute threshold
    #   <p>The threshold details for the guardrails contextual grounding filter.</p>
    #   @return [Float]
    # @!attribute action
    #   <p>The action to take when content fails the contextual grounding evaluation. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute enabled
    #   <p>Indicates whether contextual grounding is enabled for evaluation. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    class GuardrailContextualGroundingFilter < Struct.new(
      :type,
      :threshold,
      :action,
      :enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The filter configuration details for the guardrails contextual grounding filter.</p>
    # @!attribute type
    #   <p>The filter details for the guardrails contextual grounding filter.</p>
    #   @return [String]
    # @!attribute threshold
    #   <p>The threshold details for the guardrails contextual grounding filter.</p>
    #   @return [Float]
    # @!attribute action
    #   <p>Specifies the action to take when content fails the contextual grounding evaluation. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute enabled
    #   <p>Specifies whether to enable contextual grounding evaluation. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    class GuardrailContextualGroundingFilterConfig < Struct.new(
      :type,
      :threshold,
      :action,
      :enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GuardrailContextualGroundingFilterType
      GROUNDING = 'GROUNDING'
      RELEVANCE = 'RELEVANCE'
    end

    # <p>The details for the guardrails contextual grounding policy.</p>
    # @!attribute filters
    #   <p>The filter details for the guardrails contextual grounding policy.</p>
    #   @return [Array<Types::GuardrailContextualGroundingFilter>]
    class GuardrailContextualGroundingPolicy < Struct.new(
      :filters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The policy configuration details for the guardrails contextual grounding policy.</p>
    # @!attribute filters_config
    #   <p>The filter configuration details for the guardrails contextual grounding policy.</p>
    #   @return [Array<Types::GuardrailContextualGroundingFilterConfig>]
    class GuardrailContextualGroundingPolicyConfig < Struct.new(
      :filters_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The system-defined guardrail profile that you're using with your guardrail. Guardrail profiles define the destination Amazon Web Services Regions where guardrail inference requests can be automatically routed. Using guardrail profiles helps maintain guardrail performance and reliability when demand increases.</p> <p>For more information, see the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-cross-region.html">Amazon Bedrock User Guide</a>.</p>
    # @!attribute guardrail_profile_identifier
    #   <p>The ID or Amazon Resource Name (ARN) of the guardrail profile that your guardrail is using. Guardrail profile availability depends on your current Amazon Web Services Region. For more information, see the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-cross-region-support.html">Amazon Bedrock User Guide</a>.</p>
    #   @return [String]
    class GuardrailCrossRegionConfig < Struct.new(
      :guardrail_profile_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about the system-defined guardrail profile that you're using with your guardrail for cross-Region inference.</p> <p>For more information, see the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-cross-region.html">Amazon Bedrock User Guide</a>.</p>
    # @!attribute guardrail_profile_id
    #   <p>The ID of the guardrail profile that your guardrail is using. Profile availability depends on your current Amazon Web Services Region. For more information, see the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-cross-region-support.html">Amazon Bedrock User Guide</a>.</p>
    #   @return [String]
    # @!attribute guardrail_profile_arn
    #   <p>The Amazon Resource Name (ARN) of the guardrail profile that you're using with your guardrail.</p>
    #   @return [String]
    class GuardrailCrossRegionDetails < Struct.new(
      :guardrail_profile_id,
      :guardrail_profile_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GuardrailFilterStrength
      NONE = 'NONE'
      LOW = 'LOW'
      MEDIUM = 'MEDIUM'
      HIGH = 'HIGH'
    end

    # <p>The managed word list that was configured for the guardrail. (This is a list of words that are pre-defined and managed by guardrails only.)</p>
    # @!attribute type
    #   <p>ManagedWords$type The managed word type that was configured for the guardrail. (For now, we only offer profanity word list)</p>
    #   @return [String]
    # @!attribute input_action
    #   <p>The action to take when harmful content is detected in the input. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute output_action
    #   <p>The action to take when harmful content is detected in the output. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute input_enabled
    #   <p>Indicates whether guardrail evaluation is enabled on the input. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    # @!attribute output_enabled
    #   <p>Indicates whether guardrail evaluation is enabled on the output. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    class GuardrailManagedWords < Struct.new(
      :type,
      :input_action,
      :output_action,
      :input_enabled,
      :output_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The managed word list to configure for the guardrail.</p>
    # @!attribute type
    #   <p>The managed word type to configure for the guardrail.</p>
    #   @return [String]
    # @!attribute input_action
    #   <p>Specifies the action to take when harmful content is detected in the input. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute output_action
    #   <p>Specifies the action to take when harmful content is detected in the output. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute input_enabled
    #   <p>Specifies whether to enable guardrail evaluation on the input. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    # @!attribute output_enabled
    #   <p>Specifies whether to enable guardrail evaluation on the output. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    class GuardrailManagedWordsConfig < Struct.new(
      :type,
      :input_action,
      :output_action,
      :input_enabled,
      :output_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GuardrailManagedWordsType
      PROFANITY = 'PROFANITY'
    end

    # @note This shape contains sensitive data and should be treated as such.
    module GuardrailModality
      TEXT = 'TEXT'
      IMAGE = 'IMAGE'
    end

    # <p>The PII entity configured for the guardrail.</p>
    # @!attribute type
    #   <p>The type of PII entity. For example, Social Security Number.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The configured guardrail action when PII entity is detected.</p>
    #   @return [String]
    # @!attribute input_action
    #   <p>The action to take when harmful content is detected in the input. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>ANONYMIZE</code> – Mask the content and replace it with identifier tags.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute output_action
    #   <p>The action to take when harmful content is detected in the output. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>ANONYMIZE</code> – Mask the content and replace it with identifier tags.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute input_enabled
    #   <p>Indicates whether guardrail evaluation is enabled on the input. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    # @!attribute output_enabled
    #   <p>Indicates whether guardrail evaluation is enabled on the output. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    class GuardrailPiiEntity < Struct.new(
      :type,
      :action,
      :input_action,
      :output_action,
      :input_enabled,
      :output_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The PII entity to configure for the guardrail.</p>
    # @!attribute type
    #   <p>Configure guardrail type when the PII entity is detected.</p> <p>The following PIIs are used to block or mask sensitive information:</p> <ul> <li> <p> <b>General</b> </p> <ul> <li> <p> <b>ADDRESS</b> </p> <p>A physical address, such as "100 Main Street, Anytown, USA" or "Suite #12, Building 123". An address can include information such as the street, building, location, city, state, country, county, zip code, precinct, and neighborhood. </p> </li> <li> <p> <b>AGE</b> </p> <p>An individual's age, including the quantity and unit of time. For example, in the phrase "I am 40 years old," Guardrails recognizes "40 years" as an age. </p> </li> <li> <p> <b>NAME</b> </p> <p>An individual's name. This entity type does not include titles, such as Dr., Mr., Mrs., or Miss. guardrails doesn't apply this entity type to names that are part of organizations or addresses. For example, guardrails recognizes the "John Doe Organization" as an organization, and it recognizes "Jane Doe Street" as an address. </p> </li> <li> <p> <b>EMAIL</b> </p> <p>An email address, such as <i>marymajor@email.com</i>.</p> </li> <li> <p> <b>PHONE</b> </p> <p>A phone number. This entity type also includes fax and pager numbers. </p> </li> <li> <p> <b>USERNAME</b> </p> <p>A user name that identifies an account, such as a login name, screen name, nick name, or handle. </p> </li> <li> <p> <b>PASSWORD</b> </p> <p>An alphanumeric string that is used as a password, such as "*<i>very20special#pass*</i>". </p> </li> <li> <p> <b>DRIVER_ID</b> </p> <p>The number assigned to a driver's license, which is an official document permitting an individual to operate one or more motorized vehicles on a public road. A driver's license number consists of alphanumeric characters. </p> </li> <li> <p> <b>LICENSE_PLATE</b> </p> <p>A license plate for a vehicle is issued by the state or country where the vehicle is registered. The format for passenger vehicles is typically five to eight digits, consisting of upper-case letters and numbers. The format varies depending on the location of the issuing state or country. </p> </li> <li> <p> <b>VEHICLE_IDENTIFICATION_NUMBER</b> </p> <p>A Vehicle Identification Number (VIN) uniquely identifies a vehicle. VIN content and format are defined in the <i>ISO 3779</i> specification. Each country has specific codes and formats for VINs. </p> </li> </ul> </li> <li> <p> <b>Finance</b> </p> <ul> <li> <p> <b>CREDIT_DEBIT_CARD_CVV</b> </p> <p>A three-digit card verification code (CVV) that is present on VISA, MasterCard, and Discover credit and debit cards. For American Express credit or debit cards, the CVV is a four-digit numeric code. </p> </li> <li> <p> <b>CREDIT_DEBIT_CARD_EXPIRY</b> </p> <p>The expiration date for a credit or debit card. This number is usually four digits long and is often formatted as <i>month/year</i> or <i>MM/YY</i>. Guardrails recognizes expiration dates such as <i>01/21</i>, <i>01/2021</i>, and <i>Jan 2021</i>. </p> </li> <li> <p> <b>CREDIT_DEBIT_CARD_NUMBER</b> </p> <p>The number for a credit or debit card. These numbers can vary from 13 to 16 digits in length. However, Amazon Comprehend also recognizes credit or debit card numbers when only the last four digits are present. </p> </li> <li> <p> <b>PIN</b> </p> <p>A four-digit personal identification number (PIN) with which you can access your bank account. </p> </li> <li> <p> <b>INTERNATIONAL_BANK_ACCOUNT_NUMBER</b> </p> <p>An International Bank Account Number has specific formats in each country. For more information, see <a href="https://www.iban.com/structure">www.iban.com/structure</a>.</p> </li> <li> <p> <b>SWIFT_CODE</b> </p> <p>A SWIFT code is a standard format of Bank Identifier Code (BIC) used to specify a particular bank or branch. Banks use these codes for money transfers such as international wire transfers.</p> <p>SWIFT codes consist of eight or 11 characters. The 11-digit codes refer to specific branches, while eight-digit codes (or 11-digit codes ending in 'XXX') refer to the head or primary office.</p> </li> </ul> </li> <li> <p> <b>IT</b> </p> <ul> <li> <p> <b>IP_ADDRESS</b> </p> <p>An IPv4 address, such as <i>198.51.100.0</i>. </p> </li> <li> <p> <b>MAC_ADDRESS</b> </p> <p>A <i>media access control</i> (MAC) address is a unique identifier assigned to a network interface controller (NIC). </p> </li> <li> <p> <b>URL</b> </p> <p>A web address, such as <i>www.example.com</i>. </p> </li> <li> <p> <b>AWS_ACCESS_KEY</b> </p> <p>A unique identifier that's associated with a secret access key; you use the access key ID and secret access key to sign programmatic Amazon Web Services requests cryptographically. </p> </li> <li> <p> <b>AWS_SECRET_KEY</b> </p> <p>A unique identifier that's associated with an access key. You use the access key ID and secret access key to sign programmatic Amazon Web Services requests cryptographically. </p> </li> </ul> </li> <li> <p> <b>USA specific</b> </p> <ul> <li> <p> <b>US_BANK_ACCOUNT_NUMBER</b> </p> <p>A US bank account number, which is typically 10 to 12 digits long. </p> </li> <li> <p> <b>US_BANK_ROUTING_NUMBER</b> </p> <p>A US bank account routing number. These are typically nine digits long, </p> </li> <li> <p> <b>US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER</b> </p> <p>A US Individual Taxpayer Identification Number (ITIN) is a nine-digit number that starts with a "9" and contain a "7" or "8" as the fourth digit. An ITIN can be formatted with a space or a dash after the third and forth digits. </p> </li> <li> <p> <b>US_PASSPORT_NUMBER</b> </p> <p>A US passport number. Passport numbers range from six to nine alphanumeric characters. </p> </li> <li> <p> <b>US_SOCIAL_SECURITY_NUMBER</b> </p> <p>A US Social Security Number (SSN) is a nine-digit number that is issued to US citizens, permanent residents, and temporary working residents. </p> </li> </ul> </li> <li> <p> <b>Canada specific</b> </p> <ul> <li> <p> <b>CA_HEALTH_NUMBER</b> </p> <p>A Canadian Health Service Number is a 10-digit unique identifier, required for individuals to access healthcare benefits. </p> </li> <li> <p> <b>CA_SOCIAL_INSURANCE_NUMBER</b> </p> <p>A Canadian Social Insurance Number (SIN) is a nine-digit unique identifier, required for individuals to access government programs and benefits.</p> <p>The SIN is formatted as three groups of three digits, such as <i>123-456-789</i>. A SIN can be validated through a simple check-digit process called the <a href="https://www.wikipedia.org/wiki/Luhn_algorithm">Luhn algorithm</a>.</p> </li> </ul> </li> <li> <p> <b>UK Specific</b> </p> <ul> <li> <p> <b>UK_NATIONAL_HEALTH_SERVICE_NUMBER</b> </p> <p>A UK National Health Service Number is a 10-17 digit number, such as <i>485 777 3456</i>. The current system formats the 10-digit number with spaces after the third and sixth digits. The final digit is an error-detecting checksum.</p> </li> <li> <p> <b>UK_NATIONAL_INSURANCE_NUMBER</b> </p> <p>A UK National Insurance Number (NINO) provides individuals with access to National Insurance (social security) benefits. It is also used for some purposes in the UK tax system.</p> <p>The number is nine digits long and starts with two letters, followed by six numbers and one letter. A NINO can be formatted with a space or a dash after the two letters and after the second, forth, and sixth digits.</p> </li> <li> <p> <b>UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER</b> </p> <p>A UK Unique Taxpayer Reference (UTR) is a 10-digit number that identifies a taxpayer or a business. </p> </li> </ul> </li> <li> <p> <b>Custom</b> </p> <ul> <li> <p> <b>Regex filter</b> - You can use a regular expressions to define patterns for a guardrail to recognize and act upon such as serial number, booking ID etc..</p> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute action
    #   <p>Configure guardrail action when the PII entity is detected.</p>
    #   @return [String]
    # @!attribute input_action
    #   <p>Specifies the action to take when harmful content is detected in the input. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>ANONYMIZE</code> – Mask the content and replace it with identifier tags.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute output_action
    #   <p>Specifies the action to take when harmful content is detected in the output. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>ANONYMIZE</code> – Mask the content and replace it with identifier tags.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute input_enabled
    #   <p>Specifies whether to enable guardrail evaluation on the input. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    # @!attribute output_enabled
    #   <p>Specifies whether to enable guardrail evaluation on the output. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    class GuardrailPiiEntityConfig < Struct.new(
      :type,
      :action,
      :input_action,
      :output_action,
      :input_enabled,
      :output_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GuardrailPiiEntityType
      ADDRESS = 'ADDRESS'
      AGE = 'AGE'
      AWS_ACCESS_KEY = 'AWS_ACCESS_KEY'
      AWS_SECRET_KEY = 'AWS_SECRET_KEY'
      CA_HEALTH_NUMBER = 'CA_HEALTH_NUMBER'
      CA_SOCIAL_INSURANCE_NUMBER = 'CA_SOCIAL_INSURANCE_NUMBER'
      CREDIT_DEBIT_CARD_CVV = 'CREDIT_DEBIT_CARD_CVV'
      CREDIT_DEBIT_CARD_EXPIRY = 'CREDIT_DEBIT_CARD_EXPIRY'
      CREDIT_DEBIT_CARD_NUMBER = 'CREDIT_DEBIT_CARD_NUMBER'
      DRIVER_ID = 'DRIVER_ID'
      EMAIL = 'EMAIL'
      INTERNATIONAL_BANK_ACCOUNT_NUMBER = 'INTERNATIONAL_BANK_ACCOUNT_NUMBER'
      IP_ADDRESS = 'IP_ADDRESS'
      LICENSE_PLATE = 'LICENSE_PLATE'
      MAC_ADDRESS = 'MAC_ADDRESS'
      NAME = 'NAME'
      PASSWORD = 'PASSWORD'
      PHONE = 'PHONE'
      PIN = 'PIN'
      SWIFT_CODE = 'SWIFT_CODE'
      UK_NATIONAL_HEALTH_SERVICE_NUMBER = 'UK_NATIONAL_HEALTH_SERVICE_NUMBER'
      UK_NATIONAL_INSURANCE_NUMBER = 'UK_NATIONAL_INSURANCE_NUMBER'
      UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER = 'UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER'
      URL = 'URL'
      USERNAME = 'USERNAME'
      US_BANK_ACCOUNT_NUMBER = 'US_BANK_ACCOUNT_NUMBER'
      US_BANK_ROUTING_NUMBER = 'US_BANK_ROUTING_NUMBER'
      US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER = 'US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER'
      US_PASSPORT_NUMBER = 'US_PASSPORT_NUMBER'
      US_SOCIAL_SECURITY_NUMBER = 'US_SOCIAL_SECURITY_NUMBER'
      VEHICLE_IDENTIFICATION_NUMBER = 'VEHICLE_IDENTIFICATION_NUMBER'
    end

    # <p>The regular expression configured for the guardrail.</p>
    # @!attribute name
    #   <p>The name of the regular expression for the guardrail.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the regular expression for the guardrail.</p>
    #   @return [String]
    # @!attribute pattern
    #   <p>The pattern of the regular expression configured for the guardrail.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action taken when a match to the regular expression is detected.</p>
    #   @return [String]
    # @!attribute input_action
    #   <p>The action to take when harmful content is detected in the input. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute output_action
    #   <p>The action to take when harmful content is detected in the output. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute input_enabled
    #   <p>Indicates whether guardrail evaluation is enabled on the input. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    # @!attribute output_enabled
    #   <p>Indicates whether guardrail evaluation is enabled on the output. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    class GuardrailRegex < Struct.new(
      :name,
      :description,
      :pattern,
      :action,
      :input_action,
      :output_action,
      :input_enabled,
      :output_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The regular expression to configure for the guardrail.</p>
    # @!attribute name
    #   <p>The name of the regular expression to configure for the guardrail.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the regular expression to configure for the guardrail.</p>
    #   @return [String]
    # @!attribute pattern
    #   <p>The regular expression pattern to configure for the guardrail.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The guardrail action to configure when matching regular expression is detected.</p>
    #   @return [String]
    # @!attribute input_action
    #   <p>Specifies the action to take when harmful content is detected in the input. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute output_action
    #   <p>Specifies the action to take when harmful content is detected in the output. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute input_enabled
    #   <p>Specifies whether to enable guardrail evaluation on the input. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    # @!attribute output_enabled
    #   <p>Specifies whether to enable guardrail evaluation on the output. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    class GuardrailRegexConfig < Struct.new(
      :name,
      :description,
      :pattern,
      :action,
      :input_action,
      :output_action,
      :input_enabled,
      :output_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GuardrailSensitiveInformationAction
      BLOCK = 'BLOCK'
      ANONYMIZE = 'ANONYMIZE'
      NONE = 'NONE'
    end

    # <p>Contains details about PII entities and regular expressions configured for the guardrail.</p>
    # @!attribute pii_entities
    #   <p>The list of PII entities configured for the guardrail.</p>
    #   @return [Array<Types::GuardrailPiiEntity>]
    # @!attribute regexes
    #   <p>The list of regular expressions configured for the guardrail.</p>
    #   @return [Array<Types::GuardrailRegex>]
    class GuardrailSensitiveInformationPolicy < Struct.new(
      :pii_entities,
      :regexes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about PII entities and regular expressions to configure for the guardrail.</p>
    # @!attribute pii_entities_config
    #   <p>A list of PII entities to configure to the guardrail.</p>
    #   @return [Array<Types::GuardrailPiiEntityConfig>]
    # @!attribute regexes_config
    #   <p>A list of regular expressions to configure to the guardrail.</p>
    #   @return [Array<Types::GuardrailRegexConfig>]
    class GuardrailSensitiveInformationPolicyConfig < Struct.new(
      :pii_entities_config,
      :regexes_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GuardrailStatus
      CREATING = 'CREATING'
      UPDATING = 'UPDATING'
      VERSIONING = 'VERSIONING'
      READY = 'READY'
      FAILED = 'FAILED'
      DELETING = 'DELETING'
    end

    # <p>Contains details about a guardrail.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_ListGuardrails.html#API_ListGuardrails_ResponseSyntax">ListGuardrails response body</a> </p> </li> </ul>
    # @!attribute id
    #   <p>The unique identifier of the guardrail.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the guardrail.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the guardrail.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the guardrail.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the guardrail.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the guardrail.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time at which the guardrail was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time at which the guardrail was last updated.</p>
    #   @return [Time]
    # @!attribute cross_region_details
    #   <p>Details about the system-defined guardrail profile that you're using with your guardrail, including the guardrail profile ID and Amazon Resource Name (ARN).</p>
    #   @return [Types::GuardrailCrossRegionDetails]
    class GuardrailSummary < Struct.new(
      :id,
      :arn,
      :status,
      :name,
      :description,
      :version,
      :created_at,
      :updated_at,
      :cross_region_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about topics for the guardrail to identify and deny.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetGuardrail.html#API_GetGuardrail_ResponseSyntax">GetGuardrail response body</a> </p> </li> </ul>
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
    # @!attribute input_action
    #   <p>The action to take when harmful content is detected in the input. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute output_action
    #   <p>The action to take when harmful content is detected in the output. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute input_enabled
    #   <p>Indicates whether guardrail evaluation is enabled on the input. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    # @!attribute output_enabled
    #   <p>Indicates whether guardrail evaluation is enabled on the output. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    class GuardrailTopic < Struct.new(
      :name,
      :definition,
      :examples,
      :type,
      :input_action,
      :output_action,
      :input_enabled,
      :output_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    module GuardrailTopicAction
      BLOCK = 'BLOCK'
      NONE = 'NONE'
    end

    # <p>Details about topics for the guardrail to identify and deny.</p>
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
    # @!attribute input_action
    #   <p>Specifies the action to take when harmful content is detected in the input. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute output_action
    #   <p>Specifies the action to take when harmful content is detected in the output. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute input_enabled
    #   <p>Specifies whether to enable guardrail evaluation on the input. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    # @!attribute output_enabled
    #   <p>Specifies whether to enable guardrail evaluation on the output. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    class GuardrailTopicConfig < Struct.new(
      :name,
      :definition,
      :examples,
      :type,
      :input_action,
      :output_action,
      :input_enabled,
      :output_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about topics that the guardrail should identify and deny.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetGuardrail.html#API_GetGuardrail_ResponseSyntax">GetGuardrail response body</a> </p> </li> </ul>
    # @!attribute topics
    #   <p>A list of policies related to topics that the guardrail should deny.</p>
    #   @return [Array<Types::GuardrailTopic>]
    # @!attribute tier
    #   <p>The tier that your guardrail uses for denied topic filters.</p>
    #   @return [Types::GuardrailTopicsTier]
    class GuardrailTopicPolicy < Struct.new(
      :topics,
      :tier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about topics that the guardrail should identify and deny.</p>
    # @!attribute topics_config
    #   <p>A list of policies related to topics that the guardrail should deny.</p>
    #   @return [Array<Types::GuardrailTopicConfig>]
    # @!attribute tier_config
    #   <p>The tier that your guardrail uses for denied topic filters.</p>
    #   @return [Types::GuardrailTopicsTierConfig]
    class GuardrailTopicPolicyConfig < Struct.new(
      :topics_config,
      :tier_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GuardrailTopicType
      DENY = 'DENY'
    end

    # <p>The tier that your guardrail uses for denied topic filters.</p>
    # @!attribute tier_name
    #   <p>The tier that your guardrail uses for denied topic filters. Valid values include:</p> <ul> <li> <p> <code>CLASSIC</code> tier – Provides established guardrails functionality supporting English, French, and Spanish languages.</p> </li> <li> <p> <code>STANDARD</code> tier – Provides a more robust solution than the <code>CLASSIC</code> tier and has more comprehensive language support. This tier requires that your guardrail use <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-cross-region.html">cross-Region inference</a>.</p> </li> </ul>
    #   @return [String]
    class GuardrailTopicsTier < Struct.new(
      :tier_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The tier that your guardrail uses for denied topic filters. Consider using a tier that balances performance, accuracy, and compatibility with your existing generative AI workflows.</p>
    # @!attribute tier_name
    #   <p>The tier that your guardrail uses for denied topic filters. Valid values include:</p> <ul> <li> <p> <code>CLASSIC</code> tier – Provides established guardrails functionality supporting English, French, and Spanish languages.</p> </li> <li> <p> <code>STANDARD</code> tier – Provides a more robust solution than the <code>CLASSIC</code> tier and has more comprehensive language support. This tier requires that your guardrail use <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-cross-region.html">cross-Region inference</a>.</p> </li> </ul>
    #   @return [String]
    class GuardrailTopicsTierConfig < Struct.new(
      :tier_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    module GuardrailTopicsTierName
      CLASSIC = 'CLASSIC'
      STANDARD = 'STANDARD'
    end

    # <p>A word configured for the guardrail.</p>
    # @!attribute text
    #   <p>Text of the word configured for the guardrail to block.</p>
    #   @return [String]
    # @!attribute input_action
    #   <p>The action to take when harmful content is detected in the input. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute output_action
    #   <p>The action to take when harmful content is detected in the output. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute input_enabled
    #   <p>Indicates whether guardrail evaluation is enabled on the input. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    # @!attribute output_enabled
    #   <p>Indicates whether guardrail evaluation is enabled on the output. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    class GuardrailWord < Struct.new(
      :text,
      :input_action,
      :output_action,
      :input_enabled,
      :output_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    module GuardrailWordAction
      BLOCK = 'BLOCK'
      NONE = 'NONE'
    end

    # <p>A word to configure for the guardrail.</p>
    # @!attribute text
    #   <p>Text of the word configured for the guardrail to block.</p>
    #   @return [String]
    # @!attribute input_action
    #   <p>Specifies the action to take when harmful content is detected in the input. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute output_action
    #   <p>Specifies the action to take when harmful content is detected in the output. Supported values include:</p> <ul> <li> <p> <code>BLOCK</code> – Block the content and replace it with blocked messaging.</p> </li> <li> <p> <code>NONE</code> – Take no action but return detection information in the trace response.</p> </li> </ul>
    #   @return [String]
    # @!attribute input_enabled
    #   <p>Specifies whether to enable guardrail evaluation on the intput. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    # @!attribute output_enabled
    #   <p>Specifies whether to enable guardrail evaluation on the output. When disabled, you aren't charged for the evaluation. The evaluation doesn't appear in the response.</p>
    #   @return [Boolean]
    class GuardrailWordConfig < Struct.new(
      :text,
      :input_action,
      :output_action,
      :input_enabled,
      :output_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about the word policy configured for the guardrail.</p>
    # @!attribute words
    #   <p>A list of words configured for the guardrail.</p>
    #   @return [Array<Types::GuardrailWord>]
    # @!attribute managed_word_lists
    #   <p>A list of managed words configured for the guardrail.</p>
    #   @return [Array<Types::GuardrailManagedWords>]
    class GuardrailWordPolicy < Struct.new(
      :words,
      :managed_word_lists,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about the word policy to configured for the guardrail.</p>
    # @!attribute words_config
    #   <p>A list of words to configure for the guardrail.</p>
    #   @return [Array<Types::GuardrailWordConfig>]
    # @!attribute managed_word_lists_config
    #   <p>A list of managed words to configure for the guardrail.</p>
    #   @return [Array<Types::GuardrailManagedWordsConfig>]
    class GuardrailWordPolicyConfig < Struct.new(
      :words_config,
      :managed_word_lists_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the custom metrics, how tasks will be rated, the flow definition ARN, and your custom prompt datasets. Model evaluation jobs use human workers <i>only</i> support the use of custom prompt datasets. To learn more about custom prompt datasets and the required format, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-evaluation-prompt-datasets-custom.html">Custom prompt datasets</a>.</p> <p>When you create custom metrics in <code>HumanEvaluationCustomMetric</code> you must specify the metric's <code>name</code>. The list of <code>names</code> specified in the <code>HumanEvaluationCustomMetric</code> array, must match the <code>metricNames</code> array of strings specified in <code>EvaluationDatasetMetricConfig</code>. For example, if in the <code>HumanEvaluationCustomMetric</code> array your specified the names <code>"accuracy", "toxicity", "readability"</code> as custom metrics <i>then</i> the <code>metricNames</code> array would need to look like the following <code>["accuracy", "toxicity", "readability"]</code> in <code>EvaluationDatasetMetricConfig</code>.</p>
    # @!attribute human_workflow_config
    #   <p>The parameters of the human workflow.</p>
    #   @return [Types::HumanWorkflowConfig]
    # @!attribute custom_metrics
    #   <p>A <code>HumanEvaluationCustomMetric</code> object. It contains the names the metrics, how the metrics are to be evaluated, an optional description.</p>
    #   @return [Array<Types::HumanEvaluationCustomMetric>]
    # @!attribute dataset_metric_configs
    #   <p>Use to specify the metrics, task, and prompt dataset to be used in your model evaluation job.</p>
    #   @return [Array<Types::EvaluationDatasetMetricConfig>]
    class HumanEvaluationConfig < Struct.new(
      :human_workflow_config,
      :custom_metrics,
      :dataset_metric_configs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>In a model evaluation job that uses human workers you must define the name of the metric, and how you want that metric rated <code>ratingMethod</code>, and an optional description of the metric.</p>
    # @!attribute name
    #   <p>The name of the metric. Your human evaluators will see this name in the evaluation UI.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description of the metric. Use this parameter to provide more details about the metric.</p>
    #   @return [String]
    # @!attribute rating_method
    #   <p>Choose how you want your human workers to evaluation your model. Valid values for rating methods are <code>ThumbsUpDown</code>, <code>IndividualLikertScale</code>,<code>ComparisonLikertScale</code>, <code>ComparisonChoice</code>, and <code>ComparisonRank</code> </p>
    #   @return [String]
    class HumanEvaluationCustomMetric < Struct.new(
      :name,
      :description,
      :rating_method,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains <code>SageMakerFlowDefinition</code> object. The object is used to specify the prompt dataset, task type, rating method and metric names.</p>
    # @!attribute flow_definition_arn
    #   <p>The Amazon Resource Number (ARN) for the flow definition</p>
    #   @return [String]
    # @!attribute instructions
    #   <p>Instructions for the flow definition</p>
    #   @return [String]
    class HumanWorkflowConfig < Struct.new(
      :flow_definition_arn,
      :instructions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration for implicit filtering in Knowledge Base vector searches. Implicit filtering allows you to automatically filter search results based on metadata attributes without requiring explicit filter expressions in each query.</p>
    # @!attribute metadata_attributes
    #   <p>A list of metadata attribute schemas that define the structure and properties of metadata fields used for implicit filtering. Each attribute defines a key, type, and optional description.</p>
    #   @return [Array<Types::MetadataAttributeSchema>]
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the foundation model used for implicit filtering. This model processes the query to extract relevant filtering criteria.</p>
    #   @return [String]
    class ImplicitFilterConfiguration < Struct.new(
      :metadata_attributes,
      :model_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the imported model.</p>
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the imported model.</p>
    #   @return [String]
    # @!attribute model_name
    #   <p>Name of the imported model.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Creation time of the imported model.</p>
    #   @return [Time]
    # @!attribute instruct_supported
    #   <p>Specifies if the imported model supports converse.</p>
    #   @return [Boolean]
    # @!attribute model_architecture
    #   <p>The architecture of the imported model.</p>
    #   @return [String]
    class ImportedModelSummary < Struct.new(
      :model_arn,
      :model_name,
      :creation_time,
      :instruct_supported,
      :model_architecture,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a model.</p>
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the model.</p>
    #   @return [String]
    class InferenceProfileModel < Struct.new(
      :model_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the model or system-defined inference profile that is the source for an inference profile..</p>
    # @!attribute copy_from
    #   <p>The ARN of the model or system-defined inference profile that is the source for the inference profile.</p>
    #   @return [String]
    class InferenceProfileModelSource < Struct.new(
      :copy_from,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class CopyFrom < InferenceProfileModelSource; end
      class Unknown < InferenceProfileModelSource; end
    end

    module InferenceProfileStatus
      ACTIVE = 'ACTIVE'
    end

    # <p>Contains information about an inference profile.</p>
    # @!attribute inference_profile_name
    #   <p>The name of the inference profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the inference profile.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the inference profile was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time at which the inference profile was last updated.</p>
    #   @return [Time]
    # @!attribute inference_profile_arn
    #   <p>The Amazon Resource Name (ARN) of the inference profile.</p>
    #   @return [String]
    # @!attribute models
    #   <p>A list of information about each model in the inference profile.</p>
    #   @return [Array<Types::InferenceProfileModel>]
    # @!attribute inference_profile_id
    #   <p>The unique identifier of the inference profile.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the inference profile. <code>ACTIVE</code> means that the inference profile is ready to be used.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the inference profile. The following types are possible:</p> <ul> <li> <p> <code>SYSTEM_DEFINED</code> – The inference profile is defined by Amazon Bedrock. You can route inference requests across regions with these inference profiles.</p> </li> <li> <p> <code>APPLICATION</code> – The inference profile was created by a user. This type of inference profile can track metrics and costs when invoking the model in it. The inference profile may route requests to one or multiple regions.</p> </li> </ul>
    #   @return [String]
    class InferenceProfileSummary < Struct.new(
      :inference_profile_name,
      :description,
      :created_at,
      :updated_at,
      :inference_profile_arn,
      :models,
      :inference_profile_id,
      :status,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module InferenceProfileType
      SYSTEM_DEFINED = 'SYSTEM_DEFINED'
      APPLICATION = 'APPLICATION'
    end

    module InferenceType
      ON_DEMAND = 'ON_DEMAND'
      PROVISIONED = 'PROVISIONED'
    end

    # <p>An internal server error occurred. Retry your request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A storage location for invocation logs.</p>
    # @!attribute s3_uri
    #   <p>The URI of an invocation log in a bucket.</p>
    #   @return [String]
    class InvocationLogSource < Struct.new(
      :s3_uri,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class S3Uri < InvocationLogSource; end
      class Unknown < InvocationLogSource; end
    end

    # <p>Settings for using invocation logs to customize a model.</p>
    # @!attribute use_prompt_response
    #   <p>Whether to use the model's response for training, or just the prompt. The default value is <code>False</code>.</p>
    #   @return [Boolean]
    # @!attribute invocation_log_source
    #   <p>The source of the invocation logs.</p>
    #   @return [Types::InvocationLogSource]
    # @!attribute request_metadata_filters
    #   <p>Rules for filtering invocation logs based on request metadata.</p>
    #   @return [Types::RequestMetadataFilters]
    class InvocationLogsConfig < Struct.new(
      :use_prompt_response,
      :invocation_log_source,
      :request_metadata_filters,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:use_prompt_response] = false unless options.key?(:use_prompt_response)
        super
      end
    end

    module JobStatusDetails
      IN_PROGRESS = 'InProgress'
      COMPLETED = 'Completed'
      STOPPING = 'Stopping'
      STOPPED = 'Stopped'
      FAILED = 'Failed'
      NOT_STARTED = 'NotStarted'
    end

    # <p>Contains configuration details of the inference for knowledge base retrieval and response generation.</p>
    # @!attribute text_inference_config
    #   <p>Contains configuration details for text generation using a language model via the <code>RetrieveAndGenerate</code> function.</p>
    #   @return [Types::TextInferenceConfig]
    class KbInferenceConfig < Struct.new(
      :text_inference_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration details for retrieving information from a knowledge base and generating responses.</p>
    # @!attribute retrieve_config
    #   <p>Contains configuration details for retrieving information from a knowledge base.</p>
    #   @return [Types::RetrieveConfig]
    # @!attribute retrieve_and_generate_config
    #   <p>Contains configuration details for retrieving information from a knowledge base and generating responses.</p>
    #   @return [Types::RetrieveAndGenerateConfiguration]
    class KnowledgeBaseConfig < Struct.new(
      :retrieve_config,
      :retrieve_and_generate_config,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class RetrieveConfig < KnowledgeBaseConfig; end
      class RetrieveAndGenerateConfig < KnowledgeBaseConfig; end
      class Unknown < KnowledgeBaseConfig; end
    end

    # <p>Contains configuration details for retrieving information from a knowledge base.</p>
    # @!attribute vector_search_configuration
    #   <p>Contains configuration details for returning the results from the vector search.</p>
    #   @return [Types::KnowledgeBaseVectorSearchConfiguration]
    class KnowledgeBaseRetrievalConfiguration < Struct.new(
      :vector_search_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains configuration details for retrieving information from a knowledge base and generating responses.</p>
    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the foundation model or <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html">inference profile</a> used to generate responses.</p>
    #   @return [String]
    # @!attribute retrieval_configuration
    #   <p>Contains configuration details for retrieving text chunks.</p>
    #   @return [Types::KnowledgeBaseRetrievalConfiguration]
    # @!attribute generation_configuration
    #   <p>Contains configurations details for response generation based on retrieved text chunks.</p>
    #   @return [Types::GenerationConfiguration]
    # @!attribute orchestration_configuration
    #   <p>Contains configuration details for the model to process the prompt prior to retrieval and response generation.</p>
    #   @return [Types::OrchestrationConfiguration]
    class KnowledgeBaseRetrieveAndGenerateConfiguration < Struct.new(
      :knowledge_base_id,
      :model_arn,
      :retrieval_configuration,
      :generation_configuration,
      :orchestration_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration details for returning the results from the knowledge base vector search.</p>
    # @!attribute number_of_results
    #   <p>The number of text chunks to retrieve; the number of results to return.</p>
    #   @return [Integer]
    # @!attribute override_search_type
    #   <p>By default, Amazon Bedrock decides a search strategy for you. If you're using an Amazon OpenSearch Serverless vector store that contains a filterable text field, you can specify whether to query the knowledge base with a <code>HYBRID</code> search using both vector embeddings and raw text, or <code>SEMANTIC</code> search using only vector embeddings. For other vector store configurations, only <code>SEMANTIC</code> search is available.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Specifies the filters to use on the metadata fields in the knowledge base data sources before returning results.</p>
    #   @return [Types::RetrievalFilter]
    # @!attribute implicit_filter_configuration
    #   <p>Configuration for implicit filtering in Knowledge Base vector searches. This allows the system to automatically apply filters based on the query context without requiring explicit filter expressions.</p>
    #   @return [Types::ImplicitFilterConfiguration]
    # @!attribute reranking_configuration
    #   <p>Configuration for reranking search results in Knowledge Base vector searches. Reranking improves search relevance by reordering initial vector search results using more sophisticated relevance models.</p>
    #   @return [Types::VectorSearchRerankingConfiguration]
    class KnowledgeBaseVectorSearchConfiguration < Struct.new(
      :number_of_results,
      :override_search_type,
      :filter,
      :implicit_filter_configuration,
      :reranking_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The legal term of the agreement.</p>
    # @!attribute url
    #   <p>URL to the legal term document.</p>
    #   @return [String]
    class LegalTerm < Struct.new(
      :url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>Optional filter to list only the policy versions with the specified Amazon Resource Name (ARN). If not provided, the DRAFT versions for all policies are listed.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of policies to return in a single call.</p>
    #   @return [Integer]
    class ListAutomatedReasoningPoliciesRequest < Struct.new(
      :policy_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute automated_reasoning_policy_summaries
    #   <p>A list of Automated Reasoning policy summaries.</p>
    #   @return [Array<Types::AutomatedReasoningPolicySummary>]
    # @!attribute next_token
    #   <p>The pagination token to use in a subsequent request to retrieve the next page of results.</p>
    #   @return [String]
    class ListAutomatedReasoningPoliciesResponse < Struct.new(
      :automated_reasoning_policy_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy whose build workflows you want to list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token from a previous request to continue listing build workflows from where the previous request left off.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of build workflows to return in a single response. Valid range is 1-100.</p>
    #   @return [Integer]
    class ListAutomatedReasoningPolicyBuildWorkflowsRequest < Struct.new(
      :policy_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute automated_reasoning_policy_build_workflow_summaries
    #   <p>A list of build workflow summaries, each containing key information about a build workflow including its status and timestamps.</p>
    #   @return [Array<Types::AutomatedReasoningPolicyBuildWorkflowSummary>]
    # @!attribute next_token
    #   <p>A pagination token to use in subsequent requests to retrieve additional build workflows.</p>
    #   @return [String]
    class ListAutomatedReasoningPolicyBuildWorkflowsResponse < Struct.new(
      :automated_reasoning_policy_build_workflow_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy for which to list tests.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of tests to return in a single call.</p>
    #   @return [Integer]
    class ListAutomatedReasoningPolicyTestCasesRequest < Struct.new(
      :policy_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute test_cases
    #   <p>A list of tests for the specified policy.</p>
    #   @return [Array<Types::AutomatedReasoningPolicyTestCase>]
    # @!attribute next_token
    #   <p>The pagination token to use in a subsequent request to retrieve the next page of results.</p>
    #   @return [String]
    class ListAutomatedReasoningPolicyTestCasesResponse < Struct.new(
      :test_cases,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy whose test results you want to list.</p>
    #   @return [String]
    # @!attribute build_workflow_id
    #   <p>The unique identifier of the build workflow whose test results you want to list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token from a previous request to continue listing test results from where the previous request left off.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of test results to return in a single response. Valid range is 1-100.</p>
    #   @return [Integer]
    class ListAutomatedReasoningPolicyTestResultsRequest < Struct.new(
      :policy_arn,
      :build_workflow_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute test_results
    #   <p>A list of test results, each containing information about how the policy performed on specific test scenarios.</p>
    #   @return [Array<Types::AutomatedReasoningPolicyTestResult>]
    # @!attribute next_token
    #   <p>A pagination token to use in subsequent requests to retrieve additional test results.</p>
    #   @return [String]
    class ListAutomatedReasoningPolicyTestResultsResponse < Struct.new(
      :test_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute created_before
    #   <p>Filters deployments created before the specified date and time.</p>
    #   @return [Time]
    # @!attribute created_after
    #   <p>Filters deployments created after the specified date and time.</p>
    #   @return [Time]
    # @!attribute name_contains
    #   <p>Filters deployments whose names contain the specified string. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use this token to retrieve additional results when the response is truncated.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The field to sort the results by. The only supported value is <code>CreationTime</code>.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order for the results. Valid values are <code>Ascending</code> and <code>Descending</code>. Default is <code>Descending</code>.</p>
    #   @return [String]
    # @!attribute status_equals
    #   <p>Filters deployments by status. Valid values are <code>CREATING</code>, <code>ACTIVE</code>, and <code>FAILED</code>.</p>
    #   @return [String]
    # @!attribute model_arn_equals
    #   <p>Filters deployments by the Amazon Resource Name (ARN) of the associated custom model.</p>
    #   @return [String]
    class ListCustomModelDeploymentsRequest < Struct.new(
      :created_before,
      :created_after,
      :name_contains,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order,
      :status_equals,
      :model_arn_equals,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    # @!attribute model_deployment_summaries
    #   <p>A list of custom model deployment summaries.</p>
    #   @return [Array<Types::CustomModelDeploymentSummary>]
    class ListCustomModelDeploymentsResponse < Struct.new(
      :next_token,
      :model_deployment_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute creation_time_before
    #   <p>Return custom models created before the specified time. </p>
    #   @return [Time]
    # @!attribute creation_time_after
    #   <p>Return custom models created after the specified time. </p>
    #   @return [Time]
    # @!attribute name_contains
    #   <p>Return custom models only if the job name contains these characters.</p>
    #   @return [String]
    # @!attribute base_model_arn_equals
    #   <p>Return custom models only if the base model Amazon Resource Name (ARN) matches this parameter.</p>
    #   @return [String]
    # @!attribute foundation_model_arn_equals
    #   <p>Return custom models only if the foundation model Amazon Resource Name (ARN) matches this parameter.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The field to sort by in the returned list of models.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order of the results.</p>
    #   @return [String]
    # @!attribute is_owned
    #   <p>Return custom models depending on if the current account owns them (<code>true</code>) or if they were shared with the current account (<code>false</code>).</p>
    #   @return [Boolean]
    # @!attribute model_status
    #   <p>The status of them model to filter results by. Possible values include:</p> <ul> <li> <p> <code>Creating</code> - Include only models that are currently being created and validated.</p> </li> <li> <p> <code>Active</code> - Include only models that have been successfully created and are ready for use.</p> </li> <li> <p> <code>Failed</code> - Include only models where the creation process failed.</p> </li> </ul> <p>If you don't specify a status, the API returns models in all states.</p>
    #   @return [String]
    class ListCustomModelsRequest < Struct.new(
      :creation_time_before,
      :creation_time_after,
      :name_contains,
      :base_model_arn_equals,
      :foundation_model_arn_equals,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order,
      :is_owned,
      :model_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    # @!attribute model_summaries
    #   <p>Model summaries.</p>
    #   @return [Array<Types::CustomModelSummary>]
    class ListCustomModelsResponse < Struct.new(
      :next_token,
      :model_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute creation_time_after
    #   <p>A filter to only list evaluation jobs created after a specified time.</p>
    #   @return [Time]
    # @!attribute creation_time_before
    #   <p>A filter to only list evaluation jobs created before a specified time.</p>
    #   @return [Time]
    # @!attribute status_equals
    #   <p>A filter to only list evaluation jobs that are of a certain status.</p>
    #   @return [String]
    # @!attribute application_type_equals
    #   <p>A filter to only list evaluation jobs that are either model evaluations or knowledge base evaluations.</p>
    #   @return [String]
    # @!attribute name_contains
    #   <p>A filter to only list evaluation jobs that contain a specified string in the job name.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Continuation token from the previous response, for Amazon Bedrock to list the next set of results.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Specifies a creation time to sort the list of evaluation jobs by when they were created.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Specifies whether to sort the list of evaluation jobs by either ascending or descending order.</p>
    #   @return [String]
    class ListEvaluationJobsRequest < Struct.new(
      :creation_time_after,
      :creation_time_before,
      :status_equals,
      :application_type_equals,
      :name_contains,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Continuation token from the previous response, for Amazon Bedrock to list the next set of results.</p>
    #   @return [String]
    # @!attribute job_summaries
    #   <p>A list of summaries of the evaluation jobs.</p>
    #   @return [Array<Types::EvaluationSummary>]
    class ListEvaluationJobsResponse < Struct.new(
      :next_token,
      :job_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_id
    #   <p>Model Id of the foundation model.</p>
    #   @return [String]
    # @!attribute offer_type
    #   <p>Type of offer associated with the model.</p>
    #   @return [String]
    class ListFoundationModelAgreementOffersRequest < Struct.new(
      :model_id,
      :offer_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_id
    #   <p>Model Id of the foundation model.</p>
    #   @return [String]
    # @!attribute offers
    #   <p>List of the offers associated with the specified model.</p>
    #   @return [Array<Types::Offer>]
    class ListFoundationModelAgreementOffersResponse < Struct.new(
      :model_id,
      :offers,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute by_provider
    #   <p>Return models belonging to the model provider that you specify.</p>
    #   @return [String]
    # @!attribute by_customization_type
    #   <p>Return models that support the customization type that you specify. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html">Custom models</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    #   @return [String]
    # @!attribute by_output_modality
    #   <p>Return models that support the output modality that you specify.</p>
    #   @return [String]
    # @!attribute by_inference_type
    #   <p>Return models that support the inference type that you specify. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html">Provisioned Throughput</a> in the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html">Amazon Bedrock User Guide</a>.</p>
    #   @return [String]
    class ListFoundationModelsRequest < Struct.new(
      :by_provider,
      :by_customization_type,
      :by_output_modality,
      :by_inference_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_summaries
    #   <p>A list of Amazon Bedrock foundation models.</p>
    #   @return [Array<Types::FoundationModelSummary>]
    class ListFoundationModelsResponse < Struct.new(
      :model_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute guardrail_identifier
    #   <p>The unique identifier of the guardrail. This can be an ID or the ARN.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If there are more results than were returned in the response, the response returns a <code>nextToken</code> that you can send in another <code>ListGuardrails</code> request to see the next batch of results.</p>
    #   @return [String]
    class ListGuardrailsRequest < Struct.new(
      :guardrail_identifier,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute guardrails
    #   <p>A list of objects, each of which contains details about a guardrail.</p>
    #   @return [Array<Types::GuardrailSummary>]
    # @!attribute next_token
    #   <p>If there are more results than were returned in the response, the response returns a <code>nextToken</code> that you can send in another <code>ListGuardrails</code> request to see the next batch of results.</p>
    #   @return [String]
    class ListGuardrailsResponse < Struct.new(
      :guardrails,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute creation_time_before
    #   <p>Return imported models that created before the specified time.</p>
    #   @return [Time]
    # @!attribute creation_time_after
    #   <p>Return imported models that were created after the specified time.</p>
    #   @return [Time]
    # @!attribute name_contains
    #   <p>Return imported models only if the model name contains these characters.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The field to sort by in the returned list of imported models.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Specifies whetehr to sort the results in ascending or descending order.</p>
    #   @return [String]
    class ListImportedModelsRequest < Struct.new(
      :creation_time_before,
      :creation_time_after,
      :name_contains,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    # @!attribute model_summaries
    #   <p>Model summaries.</p>
    #   @return [Array<Types::ImportedModelSummary>]
    class ListImportedModelsResponse < Struct.new(
      :next_token,
      :model_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    # @!attribute type_equals
    #   <p>Filters for inference profiles that match the type you specify.</p> <ul> <li> <p> <code>SYSTEM_DEFINED</code> – The inference profile is defined by Amazon Bedrock. You can route inference requests across regions with these inference profiles.</p> </li> <li> <p> <code>APPLICATION</code> – The inference profile was created by a user. This type of inference profile can track metrics and costs when invoking the model in it. The inference profile may route requests to one or multiple regions.</p> </li> </ul>
    #   @return [String]
    class ListInferenceProfilesRequest < Struct.new(
      :max_results,
      :next_token,
      :type_equals,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute inference_profile_summaries
    #   <p>A list of information about each inference profile that you can use.</p>
    #   @return [Array<Types::InferenceProfileSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListInferenceProfilesResponse < Struct.new(
      :inference_profile_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. If more results are available, the operation returns a <code>NextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous <code>ListMarketplaceModelEndpoints</code> call.</p>
    #   @return [String]
    # @!attribute model_source_equals
    #   <p>If specified, only endpoints for the given model source identifier are returned.</p>
    #   @return [String]
    class ListMarketplaceModelEndpointsRequest < Struct.new(
      :max_results,
      :next_token,
      :model_source_equals,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute marketplace_model_endpoints
    #   <p>An array of endpoint summaries.</p>
    #   @return [Array<Types::MarketplaceModelEndpointSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use this token to get the next set of results.</p>
    #   @return [String]
    class ListMarketplaceModelEndpointsResponse < Struct.new(
      :marketplace_model_endpoints,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute creation_time_after
    #   <p>Filters for model copy jobs created after the specified time.</p>
    #   @return [Time]
    # @!attribute creation_time_before
    #   <p>Filters for model copy jobs created before the specified time. </p>
    #   @return [Time]
    # @!attribute status_equals
    #   <p>Filters for model copy jobs whose status matches the value that you specify.</p>
    #   @return [String]
    # @!attribute source_account_equals
    #   <p>Filters for model copy jobs in which the account that the source model belongs to is equal to the value that you specify.</p>
    #   @return [String]
    # @!attribute source_model_arn_equals
    #   <p>Filters for model copy jobs in which the Amazon Resource Name (ARN) of the source model to is equal to the value that you specify.</p>
    #   @return [String]
    # @!attribute target_model_name_contains
    #   <p>Filters for model copy jobs in which the name of the copied model contains the string that you specify.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The field to sort by in the returned list of model copy jobs.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Specifies whether to sort the results in ascending or descending order.</p>
    #   @return [String]
    class ListModelCopyJobsRequest < Struct.new(
      :creation_time_after,
      :creation_time_before,
      :status_equals,
      :source_account_equals,
      :source_model_arn_equals,
      :target_model_name_contains,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    # @!attribute model_copy_job_summaries
    #   <p>A list of information about each model copy job.</p>
    #   @return [Array<Types::ModelCopyJobSummary>]
    class ListModelCopyJobsResponse < Struct.new(
      :next_token,
      :model_copy_job_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute creation_time_after
    #   <p>Return customization jobs created after the specified time. </p>
    #   @return [Time]
    # @!attribute creation_time_before
    #   <p>Return customization jobs created before the specified time. </p>
    #   @return [Time]
    # @!attribute status_equals
    #   <p>Return customization jobs with the specified status. </p>
    #   @return [String]
    # @!attribute name_contains
    #   <p>Return customization jobs only if the job name contains these characters.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The field to sort by in the returned list of jobs.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order of the results.</p>
    #   @return [String]
    class ListModelCustomizationJobsRequest < Struct.new(
      :creation_time_after,
      :creation_time_before,
      :status_equals,
      :name_contains,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    # @!attribute model_customization_job_summaries
    #   <p>Job summaries.</p>
    #   @return [Array<Types::ModelCustomizationJobSummary>]
    class ListModelCustomizationJobsResponse < Struct.new(
      :next_token,
      :model_customization_job_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute creation_time_after
    #   <p>Return import jobs that were created after the specified time.</p>
    #   @return [Time]
    # @!attribute creation_time_before
    #   <p>Return import jobs that were created before the specified time.</p>
    #   @return [Time]
    # @!attribute status_equals
    #   <p>Return imported jobs with the specified status.</p>
    #   @return [String]
    # @!attribute name_contains
    #   <p>Return imported jobs only if the job name contains these characters.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The field to sort by in the returned list of imported jobs.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Specifies whether to sort the results in ascending or descending order.</p>
    #   @return [String]
    class ListModelImportJobsRequest < Struct.new(
      :creation_time_after,
      :creation_time_before,
      :status_equals,
      :name_contains,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    # @!attribute model_import_job_summaries
    #   <p>Import job summaries.</p>
    #   @return [Array<Types::ModelImportJobSummary>]
    class ListModelImportJobsResponse < Struct.new(
      :next_token,
      :model_import_job_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute submit_time_after
    #   <p>Specify a time to filter for batch inference jobs that were submitted after the time you specify.</p>
    #   @return [Time]
    # @!attribute submit_time_before
    #   <p>Specify a time to filter for batch inference jobs that were submitted before the time you specify.</p>
    #   @return [Time]
    # @!attribute status_equals
    #   <p>Specify a status to filter for batch inference jobs whose statuses match the string you specify.</p> <p>The following statuses are possible:</p> <ul> <li> <p>Submitted – This job has been submitted to a queue for validation.</p> </li> <li> <p>Validating – This job is being validated for the requirements described in <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-data.html">Format and upload your batch inference data</a>. The criteria include the following:</p> <ul> <li> <p>Your IAM service role has access to the Amazon S3 buckets containing your files.</p> </li> <li> <p>Your files are .jsonl files and each individual record is a JSON object in the correct format. Note that validation doesn't check if the <code>modelInput</code> value matches the request body for the model.</p> </li> <li> <p>Your files fulfill the requirements for file size and number of records. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/quotas.html">Quotas for Amazon Bedrock</a>.</p> </li> </ul> </li> <li> <p>Scheduled – This job has been validated and is now in a queue. The job will automatically start when it reaches its turn.</p> </li> <li> <p>Expired – This job timed out because it was scheduled but didn't begin before the set timeout duration. Submit a new job request.</p> </li> <li> <p>InProgress – This job has begun. You can start viewing the results in the output S3 location.</p> </li> <li> <p>Completed – This job has successfully completed. View the output files in the output S3 location.</p> </li> <li> <p>PartiallyCompleted – This job has partially completed. Not all of your records could be processed in time. View the output files in the output S3 location.</p> </li> <li> <p>Failed – This job has failed. Check the failure message for any further details. For further assistance, reach out to the <a href="https://console.aws.amazon.com/support/home/">Amazon Web ServicesSupport Center</a>.</p> </li> <li> <p>Stopped – This job was stopped by a user.</p> </li> <li> <p>Stopping – This job is being stopped by a user.</p> </li> </ul>
    #   @return [String]
    # @!attribute name_contains
    #   <p>Specify a string to filter for batch inference jobs whose names contain the string.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. If there are more results than the number that you specify, a <code>nextToken</code> value is returned. Use the <code>nextToken</code> in a request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If there were more results than the value you specified in the <code>maxResults</code> field in a previous <code>ListModelInvocationJobs</code> request, the response would have returned a <code>nextToken</code> value. To see the next batch of results, send the <code>nextToken</code> value in another request.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>An attribute by which to sort the results.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Specifies whether to sort the results by ascending or descending order.</p>
    #   @return [String]
    class ListModelInvocationJobsRequest < Struct.new(
      :submit_time_after,
      :submit_time_before,
      :status_equals,
      :name_contains,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are more results than can fit in the response, a <code>nextToken</code> is returned. Use the <code>nextToken</code> in a request to return the next batch of results.</p>
    #   @return [String]
    # @!attribute invocation_job_summaries
    #   <p>A list of items, each of which contains a summary about a batch inference job.</p>
    #   @return [Array<Types::ModelInvocationJobSummary>]
    class ListModelInvocationJobsResponse < Struct.new(
      :next_token,
      :invocation_job_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of prompt routers to return in one page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the prompt routers, such as whether it's default or custom.</p>
    #   @return [String]
    class ListPromptRoutersRequest < Struct.new(
      :max_results,
      :next_token,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute prompt_router_summaries
    #   <p>A list of prompt router summaries.</p>
    #   @return [Array<Types::PromptRouterSummary>]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    class ListPromptRoutersResponse < Struct.new(
      :prompt_router_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute creation_time_after
    #   <p>A filter that returns Provisioned Throughputs created after the specified time. </p>
    #   @return [Time]
    # @!attribute creation_time_before
    #   <p>A filter that returns Provisioned Throughputs created before the specified time. </p>
    #   @return [Time]
    # @!attribute status_equals
    #   <p>A filter that returns Provisioned Throughputs if their statuses matches the value that you specify.</p>
    #   @return [String]
    # @!attribute model_arn_equals
    #   <p>A filter that returns Provisioned Throughputs whose model Amazon Resource Name (ARN) is equal to the value that you specify.</p>
    #   @return [String]
    # @!attribute name_contains
    #   <p>A filter that returns Provisioned Throughputs if their name contains the expression that you specify.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>THe maximum number of results to return in the response. If there are more results than the number you specified, the response returns a <code>nextToken</code> value. To see the next batch of results, send the <code>nextToken</code> value in another list request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If there are more results than the number you specified in the <code>maxResults</code> field, the response returns a <code>nextToken</code> value. To see the next batch of results, specify the <code>nextToken</code> value in this field.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The field by which to sort the returned list of Provisioned Throughputs.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order of the results.</p>
    #   @return [String]
    class ListProvisionedModelThroughputsRequest < Struct.new(
      :creation_time_after,
      :creation_time_before,
      :status_equals,
      :model_arn_equals,
      :name_contains,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are more results than the number you specified in the <code>maxResults</code> field, this value is returned. To see the next batch of results, include this value in the <code>nextToken</code> field in another list request.</p>
    #   @return [String]
    # @!attribute provisioned_model_summaries
    #   <p>A list of summaries, one for each Provisioned Throughput in the response.</p>
    #   @return [Array<Types::ProvisionedModelSummary>]
    class ListProvisionedModelThroughputsResponse < Struct.new(
      :next_token,
      :provisioned_model_summaries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>An array of the tags associated with this resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration fields for invocation logging.</p>
    # @!attribute cloud_watch_config
    #   <p>CloudWatch logging configuration.</p>
    #   @return [Types::CloudWatchConfig]
    # @!attribute s3_config
    #   <p>S3 configuration for storing log data.</p>
    #   @return [Types::S3Config]
    # @!attribute text_data_delivery_enabled
    #   <p>Set to include text data in the log delivery.</p>
    #   @return [Boolean]
    # @!attribute image_data_delivery_enabled
    #   <p>Set to include image data in the log delivery.</p>
    #   @return [Boolean]
    # @!attribute embedding_data_delivery_enabled
    #   <p>Set to include embeddings data in the log delivery.</p>
    #   @return [Boolean]
    # @!attribute video_data_delivery_enabled
    #   <p>Set to include video data in the log delivery.</p>
    #   @return [Boolean]
    class LoggingConfig < Struct.new(
      :cloud_watch_config,
      :s3_config,
      :text_data_delivery_enabled,
      :image_data_delivery_enabled,
      :embedding_data_delivery_enabled,
      :video_data_delivery_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about an endpoint for a model from Amazon Bedrock Marketplace.</p>
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint.</p>
    #   @return [String]
    # @!attribute model_source_identifier
    #   <p>The ARN of the model from Amazon Bedrock Marketplace that is deployed on this endpoint.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The overall status of the endpoint in Amazon Bedrock Marketplace (e.g., ACTIVE, INACTIVE).</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Additional information about the overall status, if available.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the endpoint was registered.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the endpoint was last updated.</p>
    #   @return [Time]
    # @!attribute endpoint_config
    #   <p>The configuration of the endpoint, including the number and type of instances used.</p>
    #   @return [Types::EndpointConfig]
    # @!attribute endpoint_status
    #   <p>The current status of the endpoint (e.g., Creating, InService, Updating, Failed).</p>
    #   @return [String]
    # @!attribute endpoint_status_message
    #   <p>Additional information about the endpoint status, if available.</p>
    #   @return [String]
    class MarketplaceModelEndpoint < Struct.new(
      :endpoint_arn,
      :model_source_identifier,
      :status,
      :status_message,
      :created_at,
      :updated_at,
      :endpoint_config,
      :endpoint_status,
      :endpoint_status_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides a summary of an endpoint for a model from Amazon Bedrock Marketplace.</p>
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint.</p>
    #   @return [String]
    # @!attribute model_source_identifier
    #   <p>The ARN of the model from Amazon Bedrock Marketplace that is deployed on this endpoint.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The overall status of the endpoint in Amazon Bedrock Marketplace.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Additional information about the overall status, if available.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the endpoint was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the endpoint was last updated.</p>
    #   @return [Time]
    class MarketplaceModelEndpointSummary < Struct.new(
      :endpoint_arn,
      :model_source_identifier,
      :status,
      :status_message,
      :created_at,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines the schema for a metadata attribute used in Knowledge Base vector searches. Metadata attributes provide additional context for documents and can be used for filtering and reranking search results.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute key
    #   <p>The unique identifier for the metadata attribute. This key is used to reference the attribute in filter expressions and reranking configurations.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type of the metadata attribute. The type determines how the attribute can be used in filter expressions and reranking.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description of the metadata attribute that provides additional context about its purpose and usage.</p>
    #   @return [String]
    class MetadataAttributeSchema < Struct.new(
      :key,
      :type,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration for how metadata should be used during the reranking process in Knowledge Base vector searches. This determines which metadata fields are included or excluded when reordering search results.</p>
    # @!attribute selection_mode
    #   <p>The mode for selecting which metadata fields to include in the reranking process. Valid values are ALL (use all available metadata fields) or SELECTIVE (use only specified fields).</p>
    #   @return [String]
    # @!attribute selective_mode_configuration
    #   <p>Configuration for selective mode, which allows you to explicitly include or exclude specific metadata fields during reranking. This is only used when selectionMode is set to SELECTIVE.</p>
    #   @return [Types::RerankingMetadataSelectiveModeConfiguration]
    class MetadataConfigurationForReranking < Struct.new(
      :selection_mode,
      :selective_mode_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ModelCopyJobStatus
      IN_PROGRESS = 'InProgress'
      COMPLETED = 'Completed'
      FAILED = 'Failed'
    end

    # <p>Contains details about each model copy job.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_ListModelCopyJobs.html#API_ListModelCopyJobs_ResponseSyntax">ListModelCopyJobs response</a> </p> </li> </ul>
    # @!attribute job_arn
    #   <p>The Amazon Resoource Name (ARN) of the model copy job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the model copy job.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time that the model copy job was created.</p>
    #   @return [Time]
    # @!attribute target_model_arn
    #   <p>The Amazon Resource Name (ARN) of the copied model.</p>
    #   @return [String]
    # @!attribute target_model_name
    #   <p>The name of the copied model.</p>
    #   @return [String]
    # @!attribute source_account_id
    #   <p>The unique identifier of the account that the model being copied originated from.</p>
    #   @return [String]
    # @!attribute source_model_arn
    #   <p>The Amazon Resource Name (ARN) of the original model being copied.</p>
    #   @return [String]
    # @!attribute target_model_kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the copied model.</p>
    #   @return [String]
    # @!attribute target_model_tags
    #   <p>Tags associated with the copied model.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute failure_message
    #   <p>If a model fails to be copied, a message describing why the job failed is included here.</p>
    #   @return [String]
    # @!attribute source_model_name
    #   <p>The name of the original model being copied.</p>
    #   @return [String]
    class ModelCopyJobSummary < Struct.new(
      :job_arn,
      :status,
      :creation_time,
      :target_model_arn,
      :target_model_name,
      :source_account_id,
      :source_model_arn,
      :target_model_kms_key_arn,
      :target_model_tags,
      :failure_message,
      :source_model_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ModelCustomization
      FINE_TUNING = 'FINE_TUNING'
      CONTINUED_PRE_TRAINING = 'CONTINUED_PRE_TRAINING'
      DISTILLATION = 'DISTILLATION'
    end

    module ModelCustomizationJobStatus
      IN_PROGRESS = 'InProgress'
      COMPLETED = 'Completed'
      FAILED = 'Failed'
      STOPPING = 'Stopping'
      STOPPED = 'Stopped'
    end

    # <p>Information about one customization job</p>
    # @!attribute job_arn
    #   <p>Amazon Resource Name (ARN) of the customization job.</p>
    #   @return [String]
    # @!attribute base_model_arn
    #   <p>Amazon Resource Name (ARN) of the base model.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>Name of the customization job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the customization job. </p>
    #   @return [String]
    # @!attribute status_details
    #   <p>Details about the status of the data processing sub-task of the job.</p>
    #   @return [Types::StatusDetails]
    # @!attribute last_modified_time
    #   <p>Time that the customization job was last modified.</p>
    #   @return [Time]
    # @!attribute creation_time
    #   <p>Creation time of the custom model. </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>Time that the customization job ended.</p>
    #   @return [Time]
    # @!attribute custom_model_arn
    #   <p>Amazon Resource Name (ARN) of the custom model.</p>
    #   @return [String]
    # @!attribute custom_model_name
    #   <p>Name of the custom model.</p>
    #   @return [String]
    # @!attribute customization_type
    #   <p>Specifies whether to carry out continued pre-training of a model or whether to fine-tune it. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html">Custom models</a>.</p>
    #   @return [String]
    class ModelCustomizationJobSummary < Struct.new(
      :job_arn,
      :base_model_arn,
      :job_name,
      :status,
      :status_details,
      :last_modified_time,
      :creation_time,
      :end_time,
      :custom_model_arn,
      :custom_model_name,
      :customization_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The data source of the model to import.</p>
    # @!attribute s3_data_source
    #   <p>The Amazon S3 data source of the model to import.</p>
    #   @return [Types::S3DataSource]
    class ModelDataSource < Struct.new(
      :s3_data_source,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class S3DataSource < ModelDataSource; end
      class Unknown < ModelDataSource; end
    end

    module ModelImportJobStatus
      IN_PROGRESS = 'InProgress'
      COMPLETED = 'Completed'
      FAILED = 'Failed'
    end

    # <p>Information about the import job.</p>
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the import job.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name of the import job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the imported job. </p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The time when the import job was last modified.</p>
    #   @return [Time]
    # @!attribute creation_time
    #   <p>The time import job was created.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time when import job ended.</p>
    #   @return [Time]
    # @!attribute imported_model_arn
    #   <p>The Amazon resource Name (ARN) of the imported model.</p>
    #   @return [String]
    # @!attribute imported_model_name
    #   <p>The name of the imported model.</p>
    #   @return [String]
    class ModelImportJobSummary < Struct.new(
      :job_arn,
      :job_name,
      :status,
      :last_modified_time,
      :creation_time,
      :end_time,
      :imported_model_arn,
      :imported_model_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about the location of the input to the batch inference job.</p>
    # @!attribute s3_input_data_config
    #   <p>Contains the configuration of the S3 location of the input data.</p>
    #   @return [Types::ModelInvocationJobS3InputDataConfig]
    class ModelInvocationJobInputDataConfig < Struct.new(
      :s3_input_data_config,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class S3InputDataConfig < ModelInvocationJobInputDataConfig; end
      class Unknown < ModelInvocationJobInputDataConfig; end
    end

    # <p>Contains the configuration of the S3 location of the output data.</p>
    # @!attribute s3_output_data_config
    #   <p>Contains the configuration of the S3 location of the output data.</p>
    #   @return [Types::ModelInvocationJobS3OutputDataConfig]
    class ModelInvocationJobOutputDataConfig < Struct.new(
      :s3_output_data_config,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class S3OutputDataConfig < ModelInvocationJobOutputDataConfig; end
      class Unknown < ModelInvocationJobOutputDataConfig; end
    end

    # <p>Contains the configuration of the S3 location of the input data.</p>
    # @!attribute s3_input_format
    #   <p>The format of the input data.</p>
    #   @return [String]
    # @!attribute s3_uri
    #   <p>The S3 location of the input data.</p>
    #   @return [String]
    # @!attribute s3_bucket_owner
    #   <p>The ID of the Amazon Web Services account that owns the S3 bucket containing the input data.</p>
    #   @return [String]
    class ModelInvocationJobS3InputDataConfig < Struct.new(
      :s3_input_format,
      :s3_uri,
      :s3_bucket_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the configuration of the S3 location of the output data.</p>
    # @!attribute s3_uri
    #   <p>The S3 location of the output data.</p>
    #   @return [String]
    # @!attribute s3_encryption_key_id
    #   <p>The unique identifier of the key that encrypts the S3 location of the output data.</p>
    #   @return [String]
    # @!attribute s3_bucket_owner
    #   <p>The ID of the Amazon Web Services account that owns the S3 bucket containing the output data.</p>
    #   @return [String]
    class ModelInvocationJobS3OutputDataConfig < Struct.new(
      :s3_uri,
      :s3_encryption_key_id,
      :s3_bucket_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ModelInvocationJobStatus
      SUBMITTED = 'Submitted'
      IN_PROGRESS = 'InProgress'
      COMPLETED = 'Completed'
      FAILED = 'Failed'
      STOPPING = 'Stopping'
      STOPPED = 'Stopped'
      PARTIALLY_COMPLETED = 'PartiallyCompleted'
      EXPIRED = 'Expired'
      VALIDATING = 'Validating'
      SCHEDULED = 'Scheduled'
    end

    # <p>A summary of a batch inference job.</p>
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the batch inference job.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name of the batch inference job.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The unique identifier of the foundation model used for model inference.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role with permissions to carry out and manage batch inference. You can use the console to create a default service role or follow the steps at <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/batch-iam-sr.html">Create a service role for batch inference</a>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the batch inference job.</p> <p>The following statuses are possible:</p> <ul> <li> <p>Submitted – This job has been submitted to a queue for validation.</p> </li> <li> <p>Validating – This job is being validated for the requirements described in <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-data.html">Format and upload your batch inference data</a>. The criteria include the following:</p> <ul> <li> <p>Your IAM service role has access to the Amazon S3 buckets containing your files.</p> </li> <li> <p>Your files are .jsonl files and each individual record is a JSON object in the correct format. Note that validation doesn't check if the <code>modelInput</code> value matches the request body for the model.</p> </li> <li> <p>Your files fulfill the requirements for file size and number of records. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/quotas.html">Quotas for Amazon Bedrock</a>.</p> </li> </ul> </li> <li> <p>Scheduled – This job has been validated and is now in a queue. The job will automatically start when it reaches its turn.</p> </li> <li> <p>Expired – This job timed out because it was scheduled but didn't begin before the set timeout duration. Submit a new job request.</p> </li> <li> <p>InProgress – This job has begun. You can start viewing the results in the output S3 location.</p> </li> <li> <p>Completed – This job has successfully completed. View the output files in the output S3 location.</p> </li> <li> <p>PartiallyCompleted – This job has partially completed. Not all of your records could be processed in time. View the output files in the output S3 location.</p> </li> <li> <p>Failed – This job has failed. Check the failure message for any further details. For further assistance, reach out to the <a href="https://console.aws.amazon.com/support/home/">Amazon Web ServicesSupport Center</a>.</p> </li> <li> <p>Stopped – This job was stopped by a user.</p> </li> <li> <p>Stopping – This job is being stopped by a user.</p> </li> </ul>
    #   @return [String]
    # @!attribute message
    #   <p>If the batch inference job failed, this field contains a message describing why the job failed.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>The time at which the batch inference job was submitted.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The time at which the batch inference job was last modified.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time at which the batch inference job ended.</p>
    #   @return [Time]
    # @!attribute input_data_config
    #   <p>Details about the location of the input to the batch inference job.</p>
    #   @return [Types::ModelInvocationJobInputDataConfig]
    # @!attribute output_data_config
    #   <p>Details about the location of the output of the batch inference job.</p>
    #   @return [Types::ModelInvocationJobOutputDataConfig]
    # @!attribute vpc_config
    #   <p>The configuration of the Virtual Private Cloud (VPC) for the data in the batch inference job. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/batch-vpc">Protect batch inference jobs using a VPC</a>.</p>
    #   @return [Types::VpcConfig]
    # @!attribute timeout_duration_in_hours
    #   <p>The number of hours after which the batch inference job was set to time out.</p>
    #   @return [Integer]
    # @!attribute job_expiration_time
    #   <p>The time at which the batch inference job times or timed out.</p>
    #   @return [Time]
    class ModelInvocationJobSummary < Struct.new(
      :job_arn,
      :job_name,
      :model_id,
      :client_request_token,
      :role_arn,
      :status,
      :message,
      :submit_time,
      :last_modified_time,
      :end_time,
      :input_data_config,
      :output_data_config,
      :vpc_config,
      :timeout_duration_in_hours,
      :job_expiration_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ModelModality
      TEXT = 'TEXT'
      IMAGE = 'IMAGE'
      EMBEDDING = 'EMBEDDING'
    end

    module ModelStatus
      ACTIVE = 'Active'
      CREATING = 'Creating'
      FAILED = 'Failed'
    end

    # <p>An offer dictates usage terms for the model.</p>
    # @!attribute offer_id
    #   <p>Offer Id for a model offer.</p>
    #   @return [String]
    # @!attribute offer_token
    #   <p>Offer token.</p>
    #   @return [String]
    # @!attribute term_details
    #   <p>Details about the terms of the offer.</p>
    #   @return [Types::TermDetails]
    class Offer < Struct.new(
      :offer_id,
      :offer_token,
      :term_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module OfferType
      ALL = 'ALL'
      PUBLIC = 'PUBLIC'
    end

    # <p>The configuration details for the model to process the prompt prior to retrieval and response generation.</p>
    # @!attribute query_transformation_configuration
    #   <p>Contains configuration details for transforming the prompt.</p>
    #   @return [Types::QueryTransformationConfiguration]
    class OrchestrationConfiguration < Struct.new(
      :query_transformation_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>S3 Location of the output data.</p>
    # @!attribute s3_uri
    #   <p>The S3 URI where the output data is stored.</p>
    #   @return [String]
    class OutputDataConfig < Struct.new(
      :s3_uri,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PerformanceConfigLatency
      STANDARD = 'standard'
      OPTIMIZED = 'optimized'
    end

    # <p>Contains performance settings for a model.</p>
    # @!attribute latency
    #   <p>Specifies whether to use the latency-optimized or standard version of a model or inference profile.</p>
    #   @return [String]
    class PerformanceConfiguration < Struct.new(
      :latency,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the usage-based pricing term.</p>
    # @!attribute rate_card
    #   <p>Describes a usage price for each dimension.</p>
    #   @return [Array<Types::DimensionalPriceRate>]
    class PricingTerm < Struct.new(
      :rate_card,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PromptRouterStatus
      AVAILABLE = 'AVAILABLE'
    end

    # <p>Details about a prompt router.</p>
    # @!attribute prompt_router_name
    #   <p>The router's name.</p>
    #   @return [String]
    # @!attribute routing_criteria
    #   <p>The router's routing criteria.</p>
    #   @return [Types::RoutingCriteria]
    # @!attribute description
    #   <p>The router's description.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>When the router was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>When the router was updated.</p>
    #   @return [Time]
    # @!attribute prompt_router_arn
    #   <p>The router's ARN.</p>
    #   @return [String]
    # @!attribute models
    #   <p>The router's models.</p>
    #   @return [Array<Types::PromptRouterTargetModel>]
    # @!attribute fallback_model
    #   <p>The router's fallback model.</p>
    #   @return [Types::PromptRouterTargetModel]
    # @!attribute status
    #   <p>The router's status.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The summary's type.</p>
    #   @return [String]
    class PromptRouterSummary < Struct.new(
      :prompt_router_name,
      :routing_criteria,
      :description,
      :created_at,
      :updated_at,
      :prompt_router_arn,
      :models,
      :fallback_model,
      :status,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The target model for a prompt router.</p>
    # @!attribute model_arn
    #   <p>The target model's ARN.</p>
    #   @return [String]
    class PromptRouterTargetModel < Struct.new(
      :model_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PromptRouterType
      CUSTOM = 'custom'
      DEFAULT = 'default'
    end

    # <p>The template for the prompt that's sent to the model for response generation.</p>
    # @!attribute text_prompt_template
    #   <p>The template for the prompt that's sent to the model for response generation. You can include prompt placeholders, which become replaced before the prompt is sent to the model to provide instructions and context to the model. In addition, you can include XML tags to delineate meaningful sections of the prompt template.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html">Knowledge base prompt template</a> and <a href="https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/use-xml-tags">Use XML tags with Anthropic Claude models</a>.</p>
    #   @return [String]
    class PromptTemplate < Struct.new(
      :text_prompt_template,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ProvisionedModelStatus
      CREATING = 'Creating'
      IN_SERVICE = 'InService'
      UPDATING = 'Updating'
      FAILED = 'Failed'
    end

    # <p>A summary of information about a Provisioned Throughput.</p> <p>This data type is used in the following API operations:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/bedrock/latest/APIReference/API_ListProvisionedModelThroughputs.html#API_ListProvisionedModelThroughputs_ResponseSyntax">ListProvisionedThroughputs response</a> </p> </li> </ul>
    # @!attribute provisioned_model_name
    #   <p>The name of the Provisioned Throughput.</p>
    #   @return [String]
    # @!attribute provisioned_model_arn
    #   <p>The Amazon Resource Name (ARN) of the Provisioned Throughput.</p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the model associated with the Provisioned Throughput.</p>
    #   @return [String]
    # @!attribute desired_model_arn
    #   <p>The Amazon Resource Name (ARN) of the model requested to be associated to this Provisioned Throughput. This value differs from the <code>modelArn</code> if updating hasn't completed.</p>
    #   @return [String]
    # @!attribute foundation_model_arn
    #   <p>The Amazon Resource Name (ARN) of the base model for which the Provisioned Throughput was created, or of the base model that the custom model for which the Provisioned Throughput was created was customized.</p>
    #   @return [String]
    # @!attribute model_units
    #   <p>The number of model units allocated to the Provisioned Throughput.</p>
    #   @return [Integer]
    # @!attribute desired_model_units
    #   <p>The number of model units that was requested to be allocated to the Provisioned Throughput.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the Provisioned Throughput.</p>
    #   @return [String]
    # @!attribute commitment_duration
    #   <p>The duration for which the Provisioned Throughput was committed.</p>
    #   @return [String]
    # @!attribute commitment_expiration_time
    #   <p>The timestamp for when the commitment term of the Provisioned Throughput expires.</p>
    #   @return [Time]
    # @!attribute creation_time
    #   <p>The time that the Provisioned Throughput was created. </p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The time that the Provisioned Throughput was last modified. </p>
    #   @return [Time]
    class ProvisionedModelSummary < Struct.new(
      :provisioned_model_name,
      :provisioned_model_arn,
      :model_arn,
      :desired_model_arn,
      :foundation_model_arn,
      :model_units,
      :desired_model_units,
      :status,
      :commitment_duration,
      :commitment_expiration_time,
      :creation_time,
      :last_modified_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute logging_config
    #   <p>The logging configuration values to set.</p>
    #   @return [Types::LoggingConfig]
    class PutModelInvocationLoggingConfigurationRequest < Struct.new(
      :logging_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class PutModelInvocationLoggingConfigurationResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute form_data
    #   <p>Put customer profile Request.</p>
    #   @return [String]
    class PutUseCaseForModelAccessRequest < Struct.new(
      :form_data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class PutUseCaseForModelAccessResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration details for transforming the prompt.</p>
    # @!attribute type
    #   <p>The type of transformation to apply to the prompt.</p>
    #   @return [String]
    class QueryTransformationConfiguration < Struct.new(
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module QueryTransformationType
      QUERY_DECOMPOSITION = 'QUERY_DECOMPOSITION'
    end

    # <p>Contains configuration details for retrieval of information and response generation.</p>
    # @!attribute knowledge_base_config
    #   <p>Contains configuration details for knowledge base retrieval and response generation.</p>
    #   @return [Types::KnowledgeBaseConfig]
    # @!attribute precomputed_rag_source_config
    #   <p>Contains configuration details about the RAG source used to generate inference response data for a Knowledge Base evaluation job.</p>
    #   @return [Types::EvaluationPrecomputedRagSourceConfig]
    class RAGConfig < Struct.new(
      :knowledge_base_config,
      :precomputed_rag_source_config,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class KnowledgeBaseConfig < RAGConfig; end
      class PrecomputedRagSourceConfig < RAGConfig; end
      class Unknown < RAGConfig; end
    end

    # <p>Defines the value and corresponding definition for one rating in a custom metric rating scale.</p>
    # @!attribute definition
    #   <p>Defines the definition for one rating in a custom metric rating scale.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Defines the value for one rating in a custom metric rating scale.</p>
    #   @return [Types::RatingScaleItemValue]
    class RatingScaleItem < Struct.new(
      :definition,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines the value for one rating in a custom metric rating scale.</p>
    # @!attribute string_value
    #   <p>A string representing the value for a rating in a custom metric rating scale.</p>
    #   @return [String]
    # @!attribute float_value
    #   <p>A floating point number representing the value for a rating in a custom metric rating scale.</p>
    #   @return [Float]
    class RatingScaleItemValue < Struct.new(
      :string_value,
      :float_value,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class StringValue < RatingScaleItemValue; end
      class FloatValue < RatingScaleItemValue; end
      class Unknown < RatingScaleItemValue; end
    end

    module RegionAvailability
      AVAILABLE = 'AVAILABLE'
      NOT_AVAILABLE = 'NOT_AVAILABLE'
    end

    # @!attribute endpoint_identifier
    #   <p>The ARN of the Amazon SageMaker endpoint you want to register with Amazon Bedrock Marketplace.</p>
    #   @return [String]
    # @!attribute model_source_identifier
    #   <p>The ARN of the model from Amazon Bedrock Marketplace that is deployed on the endpoint.</p>
    #   @return [String]
    class RegisterMarketplaceModelEndpointRequest < Struct.new(
      :endpoint_identifier,
      :model_source_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute marketplace_model_endpoint
    #   <p>Details about the registered endpoint.</p>
    #   @return [Types::MarketplaceModelEndpoint]
    class RegisterMarketplaceModelEndpointResponse < Struct.new(
      :marketplace_model_endpoint,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A mapping of a metadata key to a value that it should or should not equal.</p>
    # @!attribute equals
    #   <p>Include results where the key equals the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute not_equals
    #   <p>Include results where the key does not equal the value.</p>
    #   @return [Hash<String, String>]
    class RequestMetadataBaseFilters < Struct.new(
      :equals,
      :not_equals,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Rules for filtering invocation logs. A filter can be a mapping of a metadata key to a value that it should or should not equal (a base filter), or a list of base filters that are all applied with <code>AND</code> or <code>OR</code> logical operators</p>
    # @!attribute equals
    #   <p>Include results where the key equals the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute not_equals
    #   <p>Include results where the key does not equal the value.</p>
    #   @return [Hash<String, String>]
    # @!attribute and_all
    #   <p>Include results where all of the based filters match.</p>
    #   @return [Array<Types::RequestMetadataBaseFilters>]
    # @!attribute or_all
    #   <p>Include results where any of the base filters match.</p>
    #   @return [Array<Types::RequestMetadataBaseFilters>]
    class RequestMetadataFilters < Struct.new(
      :equals,
      :not_equals,
      :and_all,
      :or_all,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Equals < RequestMetadataFilters; end
      class NotEquals < RequestMetadataFilters; end
      class AndAll < RequestMetadataFilters; end
      class OrAll < RequestMetadataFilters; end
      class Unknown < RequestMetadataFilters; end
    end

    module RerankingMetadataSelectionMode
      SELECTIVE = 'SELECTIVE'
      ALL = 'ALL'
    end

    # <p>Configuration for selectively including or excluding metadata fields during the reranking process. This allows you to control which metadata attributes are considered when reordering search results.</p>
    # @!attribute fields_to_include
    #   <p>A list of metadata field names to explicitly include in the reranking process. Only these fields will be considered when reordering search results. This parameter cannot be used together with fieldsToExclude.</p>
    #   @return [Array<Types::FieldForReranking>]
    # @!attribute fields_to_exclude
    #   <p>A list of metadata field names to explicitly exclude from the reranking process. All metadata fields except these will be considered when reordering search results. This parameter cannot be used together with fieldsToInclude.</p>
    #   @return [Array<Types::FieldForReranking>]
    class RerankingMetadataSelectiveModeConfiguration < Struct.new(
      :fields_to_include,
      :fields_to_exclude,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class FieldsToInclude < RerankingMetadataSelectiveModeConfiguration; end
      class FieldsToExclude < RerankingMetadataSelectiveModeConfiguration; end
      class Unknown < RerankingMetadataSelectiveModeConfiguration; end
    end

    # <p>Thrown when attempting to delete or modify a resource that is currently being used by other resources or operations. For example, trying to delete an Automated Reasoning policy that is referenced by an active guardrail.</p>
    # @!attribute message
    #   @return [String]
    class ResourceInUseException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified resource Amazon Resource Name (ARN) was not found. Check the Amazon Resource Name (ARN) and try your request again.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the filters to use on the metadata attributes/fields in the knowledge base data sources before returning results.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute equals
    #   <p>Knowledge base data sources are returned if they contain a metadata attribute whose name matches the key and whose value matches the value in this object.</p> <p>The following example would return data sources with an animal attribute whose value is 'cat': <code>"equals": { "key": "animal", "value": "cat" }</code> </p>
    #   @return [Types::FilterAttribute]
    # @!attribute not_equals
    #   <p>Knowledge base data sources that contain a metadata attribute whose name matches the key and whose value doesn't match the value in this object are returned.</p> <p>The following example would return data sources that don't contain an animal attribute whose value is 'cat': <code>"notEquals": { "key": "animal", "value": "cat" }</code> </p>
    #   @return [Types::FilterAttribute]
    # @!attribute greater_than
    #   <p>Knowledge base data sources are returned if they contain a metadata attribute whose name matches the key and whose value is greater than the value in this object.</p> <p>The following example would return data sources with an year attribute whose value is greater than '1989': <code>"greaterThan": { "key": "year", "value": 1989 }</code> </p>
    #   @return [Types::FilterAttribute]
    # @!attribute greater_than_or_equals
    #   <p>Knowledge base data sources are returned if they contain a metadata attribute whose name matches the key and whose value is greater than or equal to the value in this object.</p> <p>The following example would return data sources with an year attribute whose value is greater than or equal to '1989': <code>"greaterThanOrEquals": { "key": "year", "value": 1989 }</code> </p>
    #   @return [Types::FilterAttribute]
    # @!attribute less_than
    #   <p>Knowledge base data sources are returned if they contain a metadata attribute whose name matches the key and whose value is less than the value in this object.</p> <p>The following example would return data sources with an year attribute whose value is less than to '1989': <code>"lessThan": { "key": "year", "value": 1989 }</code> </p>
    #   @return [Types::FilterAttribute]
    # @!attribute less_than_or_equals
    #   <p>Knowledge base data sources are returned if they contain a metadata attribute whose name matches the key and whose value is less than or equal to the value in this object.</p> <p>The following example would return data sources with an year attribute whose value is less than or equal to '1989': <code>"lessThanOrEquals": { "key": "year", "value": 1989 }</code> </p>
    #   @return [Types::FilterAttribute]
    # @!attribute in
    #   <p>Knowledge base data sources are returned if they contain a metadata attribute whose name matches the key and whose value is in the list specified in the value in this object.</p> <p>The following example would return data sources with an animal attribute that is either 'cat' or 'dog': <code>"in": { "key": "animal", "value": ["cat", "dog"] }</code> </p>
    #   @return [Types::FilterAttribute]
    # @!attribute not_in
    #   <p>Knowledge base data sources are returned if they contain a metadata attribute whose name matches the key and whose value isn't in the list specified in the value in this object.</p> <p>The following example would return data sources whose animal attribute is neither 'cat' nor 'dog': <code>"notIn": { "key": "animal", "value": ["cat", "dog"] }</code> </p>
    #   @return [Types::FilterAttribute]
    # @!attribute starts_with
    #   <p>Knowledge base data sources are returned if they contain a metadata attribute whose name matches the key and whose value starts with the value in this object. This filter is currently only supported for Amazon OpenSearch Serverless vector stores.</p> <p>The following example would return data sources with an animal attribute starts with 'ca' (for example, 'cat' or 'camel'). <code>"startsWith": { "key": "animal", "value": "ca" }</code> </p>
    #   @return [Types::FilterAttribute]
    # @!attribute list_contains
    #   <p>Knowledge base data sources are returned if they contain a metadata attribute whose name matches the key and whose value is a list that contains the value as one of its members.</p> <p>The following example would return data sources with an animals attribute that is a list containing a cat member (for example, <code>["dog", "cat"]</code>): <code>"listContains": { "key": "animals", "value": "cat" }</code> </p>
    #   @return [Types::FilterAttribute]
    # @!attribute string_contains
    #   <p>Knowledge base data sources are returned if they contain a metadata attribute whose name matches the key and whose value is one of the following:</p> <p>A string that contains the value as a substring. The following example would return data sources with an animal attribute that contains the substring at (for example, 'cat'): <code>"stringContains": { "key": "animal", "value": "at" }</code> </p> <p>A list with a member that contains the value as a substring. The following example would return data sources with an animals attribute that is a list containing a member that contains the substring at (for example, <code>["dog", "cat"]</code>): <code>"stringContains": { "key": "animals", "value": "at" }</code> </p>
    #   @return [Types::FilterAttribute]
    # @!attribute and_all
    #   <p>Knowledge base data sources are returned if their metadata attributes fulfill all the filter conditions inside this list.</p>
    #   @return [Array<Types::RetrievalFilter>]
    # @!attribute or_all
    #   <p>Knowledge base data sources are returned if their metadata attributes fulfill at least one of the filter conditions inside this list.</p>
    #   @return [Array<Types::RetrievalFilter>]
    class RetrievalFilter < Struct.new(
      :equals,
      :not_equals,
      :greater_than,
      :greater_than_or_equals,
      :less_than,
      :less_than_or_equals,
      :in,
      :not_in,
      :starts_with,
      :list_contains,
      :string_contains,
      :and_all,
      :or_all,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Equals < RetrievalFilter; end
      class NotEquals < RetrievalFilter; end
      class GreaterThan < RetrievalFilter; end
      class GreaterThanOrEquals < RetrievalFilter; end
      class LessThan < RetrievalFilter; end
      class LessThanOrEquals < RetrievalFilter; end
      class In < RetrievalFilter; end
      class NotIn < RetrievalFilter; end
      class StartsWith < RetrievalFilter; end
      class ListContains < RetrievalFilter; end
      class StringContains < RetrievalFilter; end
      class AndAll < RetrievalFilter; end
      class OrAll < RetrievalFilter; end
      class Unknown < RetrievalFilter; end
    end

    # <p>Contains configuration details for a knowledge base retrieval and response generation.</p>
    # @!attribute type
    #   <p>The type of resource that contains your data for retrieving information and generating responses.</p> <p>If you choose to use <code>EXTERNAL_SOURCES</code>, then currently only Claude 3 Sonnet models for knowledge bases are supported.</p>
    #   @return [String]
    # @!attribute knowledge_base_configuration
    #   <p>Contains configuration details for the knowledge base retrieval and response generation.</p>
    #   @return [Types::KnowledgeBaseRetrieveAndGenerateConfiguration]
    # @!attribute external_sources_configuration
    #   <p>The configuration for the external source wrapper object in the <code>retrieveAndGenerate</code> function.</p>
    #   @return [Types::ExternalSourcesRetrieveAndGenerateConfiguration]
    class RetrieveAndGenerateConfiguration < Struct.new(
      :type,
      :knowledge_base_configuration,
      :external_sources_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RetrieveAndGenerateType
      KNOWLEDGE_BASE = 'KNOWLEDGE_BASE'
      EXTERNAL_SOURCES = 'EXTERNAL_SOURCES'
    end

    # <p>The configuration details for retrieving information from a knowledge base.</p>
    # @!attribute knowledge_base_id
    #   <p>The unique identifier of the knowledge base.</p>
    #   @return [String]
    # @!attribute knowledge_base_retrieval_configuration
    #   <p>Contains configuration details for knowledge base retrieval.</p>
    #   @return [Types::KnowledgeBaseRetrievalConfiguration]
    class RetrieveConfig < Struct.new(
      :knowledge_base_id,
      :knowledge_base_retrieval_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Routing criteria for a prompt router.</p>
    # @!attribute response_quality_difference
    #   <p>The criteria's response quality difference.</p>
    #   @return [Float]
    class RoutingCriteria < Struct.new(
      :response_quality_difference,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>S3 configuration for storing log data.</p>
    # @!attribute bucket_name
    #   <p>S3 bucket name.</p>
    #   @return [String]
    # @!attribute key_prefix
    #   <p>S3 prefix. </p>
    #   @return [String]
    class S3Config < Struct.new(
      :bucket_name,
      :key_prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon S3 data source of the model to import. </p>
    # @!attribute s3_uri
    #   <p>The URI of the Amazon S3 data source.</p>
    #   @return [String]
    class S3DataSource < Struct.new(
      :s3_uri,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module S3InputFormat
      JSONL = 'JSONL'
    end

    # <p>The unique wrapper object of the document from the S3 location.</p>
    # @!attribute uri
    #   <p>The S3 URI location for the wrapper object of the document.</p>
    #   @return [String]
    class S3ObjectDoc < Struct.new(
      :uri,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the configuration for a Amazon SageMaker endpoint.</p>
    # @!attribute initial_instance_count
    #   <p>The number of Amazon EC2 compute instances to deploy for initial endpoint creation.</p>
    #   @return [Integer]
    # @!attribute instance_type
    #   <p>The Amazon EC2 compute instance type to deploy for hosting the model.</p>
    #   @return [String]
    # @!attribute execution_role
    #   <p>The ARN of the IAM role that Amazon SageMaker can assume to access model artifacts and docker image for deployment on Amazon EC2 compute instances or for batch transform jobs.</p>
    #   @return [String]
    # @!attribute kms_encryption_key
    #   <p>The Amazon Web Services KMS key that Amazon SageMaker uses to encrypt data on the storage volume attached to the Amazon EC2 compute instance that hosts the endpoint.</p>
    #   @return [String]
    # @!attribute vpc
    #   <p>The VPC configuration for the endpoint.</p>
    #   @return [Types::VpcConfig]
    class SageMakerEndpoint < Struct.new(
      :initial_instance_count,
      :instance_type,
      :execution_role,
      :kms_encryption_key,
      :vpc,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SearchType
      HYBRID = 'HYBRID'
      SEMANTIC = 'SEMANTIC'
    end

    # <p>The number of requests exceeds the service quota. Resubmit your request later.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returned if the service cannot complete the request.</p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SortByProvisionedModels
      CREATION_TIME = 'CreationTime'
    end

    module SortJobsBy
      CREATION_TIME = 'CreationTime'
    end

    module SortModelsBy
      CREATION_TIME = 'CreationTime'
    end

    module SortOrder
      ASCENDING = 'Ascending'
      DESCENDING = 'Descending'
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy for which to start the build workflow.</p>
    #   @return [String]
    # @!attribute build_workflow_type
    #   <p>The type of build workflow to start (e.g., DOCUMENT_INGESTION for processing new documents, POLICY_REPAIR for fixing existing policies).</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than once. If this token matches a previous request, Amazon Bedrock ignores the request but doesn't return an error.</p>
    #   @return [String]
    # @!attribute source_content
    #   <p>The source content for the build workflow, such as documents to analyze or repair instructions for existing policies.</p>
    #   @return [Types::AutomatedReasoningPolicyBuildWorkflowSource]
    class StartAutomatedReasoningPolicyBuildWorkflowRequest < Struct.new(
      :policy_arn,
      :build_workflow_type,
      :client_request_token,
      :source_content,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy.</p>
    #   @return [String]
    # @!attribute build_workflow_id
    #   <p>The unique identifier of the newly started build workflow. Use this ID to track the workflow's progress and retrieve its results.</p>
    #   @return [String]
    class StartAutomatedReasoningPolicyBuildWorkflowResponse < Struct.new(
      :policy_arn,
      :build_workflow_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy to test.</p>
    #   @return [String]
    # @!attribute build_workflow_id
    #   <p>The build workflow identifier. The build workflow must show a <code>COMPLETED</code> status before running tests.</p>
    #   @return [String]
    # @!attribute test_case_ids
    #   <p>The list of test identifiers to run. If not provided, all tests for the policy are run.</p>
    #   @return [Array<String>]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request but doesn't return an error.</p>
    #   @return [String]
    class StartAutomatedReasoningPolicyTestWorkflowRequest < Struct.new(
      :policy_arn,
      :build_workflow_id,
      :test_case_ids,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the policy for which the test workflow was started.</p>
    #   @return [String]
    class StartAutomatedReasoningPolicyTestWorkflowResponse < Struct.new(
      :policy_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Status
      REGISTERED = 'REGISTERED'
      INCOMPATIBLE_ENDPOINT = 'INCOMPATIBLE_ENDPOINT'
    end

    # <p>For a Distillation job, the status details for sub-tasks of the job. Possible statuses for each sub-task include the following:</p> <ul> <li> <p>NotStarted</p> </li> <li> <p>InProgress</p> </li> <li> <p>Completed</p> </li> <li> <p>Stopping</p> </li> <li> <p>Stopped</p> </li> <li> <p>Failed</p> </li> </ul>
    # @!attribute validation_details
    #   <p>The status details for the validation sub-task of the job.</p>
    #   @return [Types::ValidationDetails]
    # @!attribute data_processing_details
    #   <p>The status details for the data processing sub-task of the job.</p>
    #   @return [Types::DataProcessingDetails]
    # @!attribute training_details
    #   <p>The status details for the training sub-task of the job.</p>
    #   @return [Types::TrainingDetails]
    class StatusDetails < Struct.new(
      :validation_details,
      :data_processing_details,
      :training_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_identifier
    #   <p>The Amazon Resource Name (ARN) of the evaluation job you want to stop.</p>
    #   @return [String]
    class StopEvaluationJobRequest < Struct.new(
      :job_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class StopEvaluationJobResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_identifier
    #   <p>Job identifier of the job to stop.</p>
    #   @return [String]
    class StopModelCustomizationJobRequest < Struct.new(
      :job_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class StopModelCustomizationJobResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_identifier
    #   <p>The Amazon Resource Name (ARN) of the batch inference job to stop.</p>
    #   @return [String]
    class StopModelInvocationJobRequest < Struct.new(
      :job_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class StopModelInvocationJobResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a support term.</p>
    # @!attribute refund_policy_description
    #   <p>Describes the refund policy.</p>
    #   @return [String]
    class SupportTerm < Struct.new(
      :refund_policy_description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Definition of the key/value pair for a tag.</p>
    # @!attribute key
    #   <p>Key for the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Value for the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to associate with the resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about a teacher model used for model customization.</p>
    # @!attribute teacher_model_identifier
    #   <p>The identifier of the teacher model.</p>
    #   @return [String]
    # @!attribute max_response_length_for_inference
    #   <p>The maximum number of tokens requested when the customization job invokes the teacher model.</p>
    #   @return [Integer]
    class TeacherModelConfig < Struct.new(
      :teacher_model_identifier,
      :max_response_length_for_inference,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the usage terms of an offer.</p>
    # @!attribute usage_based_pricing_term
    #   <p>Describes the usage-based pricing term.</p>
    #   @return [Types::PricingTerm]
    # @!attribute legal_term
    #   <p>Describes the legal terms.</p>
    #   @return [Types::LegalTerm]
    # @!attribute support_term
    #   <p>Describes the support terms.</p>
    #   @return [Types::SupportTerm]
    # @!attribute validity_term
    #   <p>Describes the validity terms.</p>
    #   @return [Types::ValidityTerm]
    class TermDetails < Struct.new(
      :usage_based_pricing_term,
      :legal_term,
      :support_term,
      :validity_term,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration details for text generation using a language model via the <code>RetrieveAndGenerate</code> function.</p>
    # @!attribute temperature
    #   <p>Controls the random-ness of text generated by the language model, influencing how much the model sticks to the most predictable next words versus exploring more surprising options. A lower temperature value (e.g. 0.2 or 0.3) makes model outputs more deterministic or predictable, while a higher temperature (e.g. 0.8 or 0.9) makes the outputs more creative or unpredictable.</p>
    #   @return [Float]
    # @!attribute top_p
    #   <p>A probability distribution threshold which controls what the model considers for the set of possible next tokens. The model will only consider the top p% of the probability distribution when generating the next token.</p>
    #   @return [Float]
    # @!attribute max_tokens
    #   <p>The maximum number of tokens to generate in the output text. Do not use the minimum of 0 or the maximum of 65536. The limit values described here are arbitrary values, for actual values consult the limits defined by your specific model.</p>
    #   @return [Integer]
    # @!attribute stop_sequences
    #   <p>A list of sequences of characters that, if generated, will cause the model to stop generating further tokens. Do not use a minimum length of 1 or a maximum length of 1000. The limit values described here are arbitrary values, for actual values consult the limits defined by your specific model.</p>
    #   @return [Array<String>]
    class TextInferenceConfig < Struct.new(
      :temperature,
      :top_p,
      :max_tokens,
      :stop_sequences,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The number of requests exceeds the limit. Resubmit your request later.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request contains more tags than can be associated with a resource (50 tags per resource). The maximum number of tags includes both existing tags and those included in your current request. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the resource with too many tags.</p>
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>S3 Location of the training data.</p>
    # @!attribute s3_uri
    #   <p>The S3 URI where the training data is stored.</p>
    #   @return [String]
    # @!attribute invocation_logs_config
    #   <p>Settings for using invocation logs to customize a model.</p>
    #   @return [Types::InvocationLogsConfig]
    class TrainingDataConfig < Struct.new(
      :s3_uri,
      :invocation_logs_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>For a Distillation job, the status details for the training sub-task of the job.</p>
    # @!attribute status
    #   <p>The status of the training sub-task of the job.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The start time of the training sub-task of the job.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The latest update to the training sub-task of the job.</p>
    #   @return [Time]
    class TrainingDetails < Struct.new(
      :status,
      :creation_time,
      :last_modified_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Metrics associated with the custom job.</p>
    # @!attribute training_loss
    #   <p>Loss metric associated with the custom job.</p>
    #   @return [Float]
    class TrainingMetrics < Struct.new(
      :training_loss,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to untag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Tag keys of the tags to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy whose annotations you want to update.</p>
    #   @return [String]
    # @!attribute build_workflow_id
    #   <p>The unique identifier of the build workflow whose annotations you want to update.</p>
    #   @return [String]
    # @!attribute annotations
    #   <p>The updated annotations containing modified rules, variables, and types for the policy.</p>
    #   @return [Array<Types::AutomatedReasoningPolicyAnnotation>]
    # @!attribute last_updated_annotation_set_hash
    #   <p>The hash value of the annotation set that you're updating. This is used for optimistic concurrency control to prevent conflicting updates.</p>
    #   @return [String]
    class UpdateAutomatedReasoningPolicyAnnotationsRequest < Struct.new(
      :policy_arn,
      :build_workflow_id,
      :annotations,
      :last_updated_annotation_set_hash,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy.</p>
    #   @return [String]
    # @!attribute build_workflow_id
    #   <p>The unique identifier of the build workflow.</p>
    #   @return [String]
    # @!attribute annotation_set_hash
    #   <p>The new hash value representing the updated state of the annotations.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the annotations were updated.</p>
    #   @return [Time]
    class UpdateAutomatedReasoningPolicyAnnotationsResponse < Struct.new(
      :policy_arn,
      :build_workflow_id,
      :annotation_set_hash,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy to update. This must be the ARN of a draft policy.</p>
    #   @return [String]
    # @!attribute policy_definition
    #   <p>The updated policy definition containing the formal logic rules, variables, and types.</p>
    #   @return [Types::AutomatedReasoningPolicyDefinition]
    # @!attribute name
    #   <p>The updated name for the Automated Reasoning policy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description for the Automated Reasoning policy.</p>
    #   @return [String]
    class UpdateAutomatedReasoningPolicyRequest < Struct.new(
      :policy_arn,
      :policy_definition,
      :name,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the updated policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The updated name of the policy.</p>
    #   @return [String]
    # @!attribute definition_hash
    #   <p>The hash of the updated policy definition.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the policy was last updated.</p>
    #   @return [Time]
    class UpdateAutomatedReasoningPolicyResponse < Struct.new(
      :policy_arn,
      :name,
      :definition_hash,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the Automated Reasoning policy that contains the test.</p>
    #   @return [String]
    # @!attribute test_case_id
    #   <p>The unique identifier of the test to update.</p>
    #   @return [String]
    # @!attribute guard_content
    #   <p>The updated content to be validated by the Automated Reasoning policy.</p>
    #   @return [String]
    # @!attribute query_content
    #   <p>The updated input query or prompt that generated the content.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The timestamp when the test was last updated. This is used as a concurrency token to prevent conflicting modifications.</p>
    #   @return [Time]
    # @!attribute expected_aggregated_findings_result
    #   <p>The updated expected result of the Automated Reasoning check.</p>
    #   @return [String]
    # @!attribute confidence_threshold
    #   <p>The updated minimum confidence level for logic validation. If null is provided, the threshold will be removed.</p>
    #   @return [Float]
    # @!attribute kms_key_arn
    #   <p>The KMS key ARN for encrypting the test at rest. If not provided, the key will not be updated. Use <code>DISCARD</code> to remove the key.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error.</p>
    #   @return [String]
    class UpdateAutomatedReasoningPolicyTestCaseRequest < Struct.new(
      :policy_arn,
      :test_case_id,
      :guard_content,
      :query_content,
      :last_updated_at,
      :expected_aggregated_findings_result,
      :confidence_threshold,
      :kms_key_arn,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the policy that contains the updated test.</p>
    #   @return [String]
    # @!attribute test_case_id
    #   <p>The unique identifier of the updated test.</p>
    #   @return [String]
    class UpdateAutomatedReasoningPolicyTestCaseResponse < Struct.new(
      :policy_arn,
      :test_case_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute guardrail_identifier
    #   <p>The unique identifier of the guardrail. This can be an ID or the ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name for the guardrail.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the guardrail.</p>
    #   @return [String]
    # @!attribute topic_policy_config
    #   <p>The topic policy to configure for the guardrail.</p>
    #   @return [Types::GuardrailTopicPolicyConfig]
    # @!attribute content_policy_config
    #   <p>The content policy to configure for the guardrail.</p>
    #   @return [Types::GuardrailContentPolicyConfig]
    # @!attribute word_policy_config
    #   <p>The word policy to configure for the guardrail.</p>
    #   @return [Types::GuardrailWordPolicyConfig]
    # @!attribute sensitive_information_policy_config
    #   <p>The sensitive information policy to configure for the guardrail.</p>
    #   @return [Types::GuardrailSensitiveInformationPolicyConfig]
    # @!attribute contextual_grounding_policy_config
    #   <p>The contextual grounding policy configuration used to update a guardrail.</p>
    #   @return [Types::GuardrailContextualGroundingPolicyConfig]
    # @!attribute automated_reasoning_policy_config
    #   <p>Updated configuration for Automated Reasoning policies associated with the guardrail.</p>
    #   @return [Types::GuardrailAutomatedReasoningPolicyConfig]
    # @!attribute cross_region_config
    #   <p>The system-defined guardrail profile that you're using with your guardrail. Guardrail profiles define the destination Amazon Web Services Regions where guardrail inference requests can be automatically routed.</p> <p>For more information, see the <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-cross-region.html">Amazon Bedrock User Guide</a>.</p>
    #   @return [Types::GuardrailCrossRegionConfig]
    # @!attribute blocked_input_messaging
    #   <p>The message to return when the guardrail blocks a prompt.</p>
    #   @return [String]
    # @!attribute blocked_outputs_messaging
    #   <p>The message to return when the guardrail blocks a model response.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ARN of the KMS key with which to encrypt the guardrail.</p>
    #   @return [String]
    class UpdateGuardrailRequest < Struct.new(
      :guardrail_identifier,
      :name,
      :description,
      :topic_policy_config,
      :content_policy_config,
      :word_policy_config,
      :sensitive_information_policy_config,
      :contextual_grounding_policy_config,
      :automated_reasoning_policy_config,
      :cross_region_config,
      :blocked_input_messaging,
      :blocked_outputs_messaging,
      :kms_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute guardrail_id
    #   <p>The unique identifier of the guardrail</p>
    #   @return [String]
    # @!attribute guardrail_arn
    #   <p>The ARN of the guardrail.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the guardrail.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time at which the guardrail was updated.</p>
    #   @return [Time]
    class UpdateGuardrailResponse < Struct.new(
      :guardrail_id,
      :guardrail_arn,
      :version,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint you want to update.</p>
    #   @return [String]
    # @!attribute endpoint_config
    #   <p>The new configuration for the endpoint, including the number and type of instances to use.</p>
    #   @return [Types::EndpointConfig]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This token is listed as not required because Amazon Web Services SDKs automatically generate it for you and set this parameter. If you're not using the Amazon Web Services SDK or the CLI, you must provide this token or the action will fail.</p>
    #   @return [String]
    class UpdateMarketplaceModelEndpointRequest < Struct.new(
      :endpoint_arn,
      :endpoint_config,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute marketplace_model_endpoint
    #   <p>Details about the updated endpoint.</p>
    #   @return [Types::MarketplaceModelEndpoint]
    class UpdateMarketplaceModelEndpointResponse < Struct.new(
      :marketplace_model_endpoint,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute provisioned_model_id
    #   <p>The Amazon Resource Name (ARN) or name of the Provisioned Throughput to update.</p>
    #   @return [String]
    # @!attribute desired_provisioned_model_name
    #   <p>The new name for this Provisioned Throughput.</p>
    #   @return [String]
    # @!attribute desired_model_id
    #   <p>The Amazon Resource Name (ARN) of the new model to associate with this Provisioned Throughput. You can't specify this field if this Provisioned Throughput is associated with a base model.</p> <p>If this Provisioned Throughput is associated with a custom model, you can specify one of the following options:</p> <ul> <li> <p>The base model from which the custom model was customized.</p> </li> <li> <p>Another custom model that was customized from the same base model as the custom model.</p> </li> </ul>
    #   @return [String]
    class UpdateProvisionedModelThroughputRequest < Struct.new(
      :provisioned_model_id,
      :desired_provisioned_model_name,
      :desired_model_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateProvisionedModelThroughputResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Array of up to 10 validators.</p>
    # @!attribute validators
    #   <p>Information about the validators.</p>
    #   @return [Array<Types::Validator>]
    class ValidationDataConfig < Struct.new(
      :validators,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>For a Distillation job, the status details for the validation sub-task of the job.</p>
    # @!attribute status
    #   <p>The status of the validation sub-task of the job.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The start time of the validation sub-task of the job.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The latest update to the validation sub-task of the job.</p>
    #   @return [Time]
    class ValidationDetails < Struct.new(
      :status,
      :creation_time,
      :last_modified_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Input validation failed. Check your request parameters and retry the request.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a validator.</p>
    # @!attribute s3_uri
    #   <p>The S3 URI where the validation data is stored.</p>
    #   @return [String]
    class Validator < Struct.new(
      :s3_uri,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The metric for the validator.</p>
    # @!attribute validation_loss
    #   <p>The validation loss associated with this validator.</p>
    #   @return [Float]
    class ValidatorMetric < Struct.new(
      :validation_loss,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the validity terms.</p>
    # @!attribute agreement_duration
    #   <p>Describes the agreement duration.</p>
    #   @return [String]
    class ValidityTerm < Struct.new(
      :agreement_duration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration for using Amazon Bedrock foundation models to rerank Knowledge Base vector search results. This enables more sophisticated relevance ranking using large language models.</p>
    # @!attribute model_configuration
    #   <p>Configuration for the Amazon Bedrock foundation model used for reranking. This includes the model ARN and any additional request fields required by the model.</p>
    #   @return [Types::VectorSearchBedrockRerankingModelConfiguration]
    # @!attribute number_of_reranked_results
    #   <p>The maximum number of results to rerank. This limits how many of the initial vector search results will be processed by the reranking model. A smaller number improves performance but may exclude potentially relevant results.</p>
    #   @return [Integer]
    # @!attribute metadata_configuration
    #   <p>Configuration for how document metadata should be used during the reranking process. This determines which metadata fields are included when reordering search results.</p>
    #   @return [Types::MetadataConfigurationForReranking]
    class VectorSearchBedrockRerankingConfiguration < Struct.new(
      :model_configuration,
      :number_of_reranked_results,
      :metadata_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration for the Amazon Bedrock foundation model used for reranking vector search results. This specifies which model to use and any additional parameters required by the model.</p>
    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the foundation model to use for reranking. This model processes the query and search results to determine a more relevant ordering.</p>
    #   @return [String]
    # @!attribute additional_model_request_fields
    #   <p>A list of additional fields to include in the model request during reranking. These fields provide extra context or configuration options specific to the selected foundation model.</p>
    #   @return [Hash<String, JSON>]
    class VectorSearchBedrockRerankingModelConfiguration < Struct.new(
      :model_arn,
      :additional_model_request_fields,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration for reranking vector search results to improve relevance. Reranking applies additional relevance models to reorder the initial vector search results based on more sophisticated criteria.</p>
    # @!attribute type
    #   <p>The type of reranking to apply to vector search results. Currently, the only supported value is BEDROCK, which uses Amazon Bedrock foundation models for reranking.</p>
    #   @return [String]
    # @!attribute bedrock_reranking_configuration
    #   <p>Configuration for using Amazon Bedrock foundation models to rerank search results. This is required when the reranking type is set to BEDROCK.</p>
    #   @return [Types::VectorSearchBedrockRerankingConfiguration]
    class VectorSearchRerankingConfiguration < Struct.new(
      :type,
      :bedrock_reranking_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module VectorSearchRerankingConfigurationType
      BEDROCK_RERANKING_MODEL = 'BEDROCK_RERANKING_MODEL'
    end

    # <p>The configuration of a virtual private cloud (VPC). For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/usingVPC.html">Protect your data using Amazon Virtual Private Cloud and Amazon Web Services PrivateLink</a>.</p>
    # @!attribute subnet_ids
    #   <p>An array of IDs for each subnet in the VPC to use.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>An array of IDs for each security group in the VPC to use.</p>
    #   @return [Array<String>]
    class VpcConfig < Struct.new(
      :subnet_ids,
      :security_group_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end

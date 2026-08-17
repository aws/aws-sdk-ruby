# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BedrockAgentCore
  module Types

    # The A2A (Agent-to-Agent) descriptor configuration for a registry
    # record.
    #
    # @!attribute [rw] agent_card
    #   The agent card definition that describes the agent's capabilities
    #   and interface.
    #   @return [Types::AgentCardDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/A2aDescriptor AWS API Documentation
    #
    class A2aDescriptor < Struct.new(
      :agent_card)
      SENSITIVE = []
      include Aws::Structure
    end

    # The evaluation configuration for an A/B test, specifying which online
    # evaluation configurations to use for measuring variant performance.
    #
    # @note ABTestEvaluationConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ABTestEvaluationConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ABTestEvaluationConfig corresponding to the set member.
    #
    # @!attribute [rw] online_evaluation_config_arn
    #   The Amazon Resource Name (ARN) of a single online evaluation
    #   configuration to use for both variants.
    #   @return [String]
    #
    # @!attribute [rw] per_variant_online_evaluation_config
    #   Per-variant online evaluation configurations, allowing different
    #   evaluation settings for each variant.
    #   @return [Array<Types::PerVariantOnlineEvaluationConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ABTestEvaluationConfig AWS API Documentation
    #
    class ABTestEvaluationConfig < Struct.new(
      :online_evaluation_config_arn,
      :per_variant_online_evaluation_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class OnlineEvaluationConfigArn < ABTestEvaluationConfig; end
      class PerVariantOnlineEvaluationConfig < ABTestEvaluationConfig; end
      class Unknown < ABTestEvaluationConfig; end
    end

    # The statistical results of an A/B test.
    #
    # @!attribute [rw] analysis_timestamp
    #   The timestamp when the analysis was performed.
    #   @return [Time]
    #
    # @!attribute [rw] evaluator_metrics
    #   The per-evaluator metrics comparing control and treatment variants.
    #   @return [Array<Types::EvaluatorMetric>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ABTestResults AWS API Documentation
    #
    class ABTestResults < Struct.new(
      :analysis_timestamp,
      :evaluator_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about an A/B test.
    #
    # @!attribute [rw] ab_test_id
    #   The unique identifier of the A/B test.
    #   @return [String]
    #
    # @!attribute [rw] ab_test_arn
    #   The Amazon Resource Name (ARN) of the A/B test.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the A/B test.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the A/B test.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   The execution status of the A/B test.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the A/B test.
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway used for traffic
    #   splitting.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the A/B test was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the A/B test was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ABTestSummary AWS API Documentation
    #
    class ABTestSummary < Struct.new(
      :ab_test_id,
      :ab_test_arn,
      :name,
      :status,
      :execution_status,
      :description,
      :gateway_arn,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The exception that occurs when you do not have sufficient permissions
    # to perform an action. Verify that your IAM policy includes the
    # necessary permissions for the operation you are trying to perform.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about an actor in an AgentCore Memory
    # resource.
    #
    # @!attribute [rw] actor_id
    #   The unique identifier of the actor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ActorSummary AWS API Documentation
    #
    class ActorSummary < Struct.new(
      :actor_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A session affected by a detected failure pattern, including root cause
    # details.
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the affected session.
    #   @return [String]
    #
    # @!attribute [rw] explanation
    #   An explanation of how the failure manifested in this session.
    #   @return [String]
    #
    # @!attribute [rw] fix_type
    #   The type of fix recommended for this failure.
    #   @return [String]
    #
    # @!attribute [rw] recommendation
    #   The specific fix recommendation for this session.
    #   @return [String]
    #
    # @!attribute [rw] failure_spans
    #   The list of spans where failures were detected in this session.
    #   @return [Array<Types::FailureSpanDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/AffectedSession AWS API Documentation
    #
    class AffectedSession < Struct.new(
      :session_id,
      :explanation,
      :fix_type,
      :recommendation,
      :failure_spans)
      SENSITIVE = []
      include Aws::Structure
    end

    # The agent card definition for A2A descriptors, including the schema
    # version and inline content that describes the agent's capabilities.
    #
    # @!attribute [rw] schema_version
    #   The schema version of the agent card definition.
    #   @return [String]
    #
    # @!attribute [rw] inline_content
    #   The inline content of the agent card definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/AgentCardDefinition AWS API Documentation
    #
    class AgentCardDefinition < Struct.new(
      :schema_version,
      :inline_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # The agent skills descriptor configuration for a registry record.
    #
    # @!attribute [rw] skill_md
    #   The skill description in markdown format.
    #   @return [Types::SkillMdDefinition]
    #
    # @!attribute [rw] skill_definition
    #   The structured skill definition with a schema version and content.
    #   @return [Types::SkillDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/AgentSkillsDescriptor AWS API Documentation
    #
    class AgentSkillsDescriptor < Struct.new(
      :skill_md,
      :skill_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration specifying where to read agent traces from for
    # recommendation analysis.
    #
    # @note AgentTracesConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note AgentTracesConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AgentTracesConfig corresponding to the set member.
    #
    # @!attribute [rw] session_spans
    #   Agent traces provided as inline session spans in OpenTelemetry
    #   format.
    #   @return [Array<Hash,Array,String,Numeric,Boolean>]
    #
    # @!attribute [rw] cloudwatch_logs
    #   Agent traces read from CloudWatch Logs.
    #   @return [Types::CloudWatchLogsTraceConfig]
    #
    # @!attribute [rw] batch_evaluation
    #   Use a completed batch evaluation as the source of agent traces.
    #   @return [Types::BatchEvaluationTraceConfig]
    #
    # @!attribute [rw] online_evaluation
    #   Agent traces from an online evaluation configuration over a
    #   specified time range.
    #   @return [Types::OnlineEvaluationTraceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/AgentTracesConfig AWS API Documentation
    #
    class AgentTracesConfig < Struct.new(
      :session_spans,
      :cloudwatch_logs,
      :batch_evaluation,
      :online_evaluation,
      :unknown)
      SENSITIVE = [:session_spans]
      include Aws::Structure
      include Aws::Structure::Union

      class SessionSpans < AgentTracesConfig; end
      class CloudwatchLogs < AgentTracesConfig; end
      class BatchEvaluation < AgentTracesConfig; end
      class OnlineEvaluation < AgentTracesConfig; end
      class Unknown < AgentTracesConfig; end
    end

    # Represents a monetary amount with a currency.
    #
    # @!attribute [rw] value
    #   The numeric value of the amount.
    #   @return [String]
    #
    # @!attribute [rw] currency
    #   The currency code for the amount.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/Amount AWS API Documentation
    #
    class Amount < Struct.new(
      :value,
      :currency)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a stream that enables programmatic control of a
    # browser session in Amazon Bedrock AgentCore. This stream provides a
    # bidirectional communication channel for sending commands to the
    # browser and receiving responses, allowing agents to automate web
    # interactions such as navigation, form filling, and element clicking.
    #
    # @!attribute [rw] stream_endpoint
    #   The endpoint URL for the automation stream. This URL is used to
    #   establish a WebSocket connection to the stream for sending commands
    #   and receiving responses.
    #   @return [String]
    #
    # @!attribute [rw] stream_status
    #   The current status of the automation stream. This indicates whether
    #   the stream is available for use. Possible values include ACTIVE,
    #   CONNECTING, and DISCONNECTED.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/AutomationStream AWS API Documentation
    #
    class AutomationStream < Struct.new(
      :stream_endpoint,
      :stream_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an update to an automation stream.
    #
    # @!attribute [rw] stream_status
    #   The status of the automation stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/AutomationStreamUpdate AWS API Documentation
    #
    class AutomationStreamUpdate < Struct.new(
      :stream_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The available spending limits for a payment session.
    #
    # @!attribute [rw] available_spend_amount
    #   The remaining available amount that can be spent.
    #   @return [Types::Amount]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the available limits were last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/AvailableLimits AWS API Documentation
    #
    class AvailableLimits < Struct.new(
      :available_spend_amount,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for HTTP Basic Authentication using credentials stored
    # in Amazon Web Services Secrets Manager. The secret must contain a JSON
    # object with `username` and `password` string fields. Username allows
    # alphanumeric characters and `@._+=-` symbols (pattern:
    # `^[a-zA-Z0-9@._+=\-]+$`). Password allows alphanumeric characters and
    # `@._+=-!#$%&*` symbols (pattern: `^[a-zA-Z0-9@._+=\-!#$%&*]+$`). Both
    # fields have a maximum length of 256 characters.
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Secrets
    #   Manager secret containing proxy credentials. The secret must be a
    #   JSON object with `username` and `password` string fields that meet
    #   validation requirements. The caller must have
    #   `secretsmanager:GetSecretValue` permission for this ARN. Example
    #   secret format: `{"username": "proxy_user", "password":
    #   "secure_password"}`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/BasicAuth AWS API Documentation
    #
    class BasicAuth < Struct.new(
      :secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_id
    #   The unique ID of the memory resource where records will be created.
    #   @return [String]
    #
    # @!attribute [rw] records
    #   A list of memory record creation inputs to be processed in the batch
    #   operation.
    #   @return [Array<Types::MemoryRecordCreateInput>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotent processing
    #   of the batch request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/BatchCreateMemoryRecordsInput AWS API Documentation
    #
    class BatchCreateMemoryRecordsInput < Struct.new(
      :memory_id,
      :records,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] successful_records
    #   A list of memory records that were successfully created during the
    #   batch operation.
    #   @return [Array<Types::MemoryRecordOutput>]
    #
    # @!attribute [rw] failed_records
    #   A list of memory records that failed to be created, including error
    #   details for each failure.
    #   @return [Array<Types::MemoryRecordOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/BatchCreateMemoryRecordsOutput AWS API Documentation
    #
    class BatchCreateMemoryRecordsOutput < Struct.new(
      :successful_records,
      :failed_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_id
    #   The unique ID of the memory resource where records will be deleted.
    #   @return [String]
    #
    # @!attribute [rw] records
    #   A list of memory record deletion inputs to be processed in the batch
    #   operation.
    #   @return [Array<Types::MemoryRecordDeleteInput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/BatchDeleteMemoryRecordsInput AWS API Documentation
    #
    class BatchDeleteMemoryRecordsInput < Struct.new(
      :memory_id,
      :records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] successful_records
    #   A list of memory records that were successfully deleted during the
    #   batch operation.
    #   @return [Array<Types::MemoryRecordOutput>]
    #
    # @!attribute [rw] failed_records
    #   A list of memory records that failed to be deleted, including error
    #   details for each failure.
    #   @return [Array<Types::MemoryRecordOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/BatchDeleteMemoryRecordsOutput AWS API Documentation
    #
    class BatchDeleteMemoryRecordsOutput < Struct.new(
      :successful_records,
      :failed_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary representation for list responses.
    #
    # @!attribute [rw] batch_evaluation_id
    #   The unique identifier of the batch evaluation.
    #   @return [String]
    #
    # @!attribute [rw] batch_evaluation_arn
    #   The Amazon Resource Name (ARN) of the batch evaluation.
    #   @return [String]
    #
    # @!attribute [rw] batch_evaluation_name
    #   The name of the batch evaluation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the batch evaluation.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the batch evaluation was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the batch evaluation.
    #   @return [String]
    #
    # @!attribute [rw] evaluators
    #   The list of evaluators applied during the batch evaluation.
    #   @return [Array<Types::Evaluator>]
    #
    # @!attribute [rw] insights
    #   The list of insight analyses applied during the batch evaluation.
    #   @return [Array<Types::Insight>]
    #
    # @!attribute [rw] evaluation_results
    #   The aggregated evaluation results.
    #   @return [Types::EvaluationJobResults]
    #
    # @!attribute [rw] error_details
    #   The error details if the batch evaluation encountered failures.
    #   @return [Array<String>]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the KMS key used to encrypt evaluation data.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the batch evaluation was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/BatchEvaluationSummary AWS API Documentation
    #
    class BatchEvaluationSummary < Struct.new(
      :batch_evaluation_id,
      :batch_evaluation_arn,
      :batch_evaluation_name,
      :status,
      :created_at,
      :description,
      :evaluators,
      :insights,
      :evaluation_results,
      :error_details,
      :kms_key_arn,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for using a batch evaluation as the source of agent
    # traces for recommendations.
    #
    # @!attribute [rw] batch_evaluation_arn
    #   The ARN of the completed batch evaluation to use as the trace
    #   source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/BatchEvaluationTraceConfig AWS API Documentation
    #
    class BatchEvaluationTraceConfig < Struct.new(
      :batch_evaluation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_id
    #   The unique ID of the memory resource where records will be updated.
    #   @return [String]
    #
    # @!attribute [rw] records
    #   A list of memory record update inputs to be processed in the batch
    #   operation.
    #   @return [Array<Types::MemoryRecordUpdateInput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/BatchUpdateMemoryRecordsInput AWS API Documentation
    #
    class BatchUpdateMemoryRecordsInput < Struct.new(
      :memory_id,
      :records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] successful_records
    #   A list of memory records that were successfully updated during the
    #   batch operation.
    #   @return [Array<Types::MemoryRecordOutput>]
    #
    # @!attribute [rw] failed_records
    #   A list of memory records that failed to be updated, including error
    #   details for each failure.
    #   @return [Array<Types::MemoryRecordOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/BatchUpdateMemoryRecordsOutput AWS API Documentation
    #
    class BatchUpdateMemoryRecordsOutput < Struct.new(
      :successful_records,
      :failed_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a branch in an AgentCore Memory resource.
    # Branches allow for organizing events into different conversation
    # threads or paths.
    #
    # @!attribute [rw] root_event_id
    #   The identifier of the root event for this branch.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the branch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/Branch AWS API Documentation
    #
    class Branch < Struct.new(
      :root_event_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains filter criteria for branches when listing events.
    #
    # @!attribute [rw] name
    #   The name of the branch to filter by.
    #   @return [String]
    #
    # @!attribute [rw] include_parent_branches
    #   Specifies whether to include parent branches in the results. Set to
    #   true to include parent branches, or false to exclude them.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/BranchFilter AWS API Documentation
    #
    class BranchFilter < Struct.new(
      :name,
      :include_parent_branches)
      SENSITIVE = []
      include Aws::Structure
    end

    # The browser action to perform. Exactly one member must be set per
    # request.
    #
    # @note BrowserAction is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] mouse_click
    #   Click at the specified coordinates.
    #   @return [Types::MouseClickArguments]
    #
    # @!attribute [rw] mouse_move
    #   Move the cursor to the specified coordinates.
    #   @return [Types::MouseMoveArguments]
    #
    # @!attribute [rw] mouse_drag
    #   Drag from a start position to an end position.
    #   @return [Types::MouseDragArguments]
    #
    # @!attribute [rw] mouse_scroll
    #   Scroll at the specified position.
    #   @return [Types::MouseScrollArguments]
    #
    # @!attribute [rw] key_type
    #   Type a string of text.
    #   @return [Types::KeyTypeArguments]
    #
    # @!attribute [rw] key_press
    #   Press a key one or more times.
    #   @return [Types::KeyPressArguments]
    #
    # @!attribute [rw] key_shortcut
    #   Press a key combination.
    #   @return [Types::KeyShortcutArguments]
    #
    # @!attribute [rw] screenshot
    #   Capture a full-screen screenshot.
    #   @return [Types::ScreenshotArguments]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/BrowserAction AWS API Documentation
    #
    class BrowserAction < Struct.new(
      :mouse_click,
      :mouse_move,
      :mouse_drag,
      :mouse_scroll,
      :key_type,
      :key_press,
      :key_shortcut,
      :screenshot,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MouseClick < BrowserAction; end
      class MouseMove < BrowserAction; end
      class MouseDrag < BrowserAction; end
      class MouseScroll < BrowserAction; end
      class KeyType < BrowserAction; end
      class KeyPress < BrowserAction; end
      class KeyShortcut < BrowserAction; end
      class Screenshot < BrowserAction; end
      class Unknown < BrowserAction; end
    end

    # The result of a browser action execution. Exactly one member is set,
    # matching the action that was performed.
    #
    # @note BrowserActionResult is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of BrowserActionResult corresponding to the set member.
    #
    # @!attribute [rw] mouse_click
    #   The result of a mouse click action.
    #   @return [Types::MouseClickResult]
    #
    # @!attribute [rw] mouse_move
    #   The result of a mouse move action.
    #   @return [Types::MouseMoveResult]
    #
    # @!attribute [rw] mouse_drag
    #   The result of a mouse drag action.
    #   @return [Types::MouseDragResult]
    #
    # @!attribute [rw] mouse_scroll
    #   The result of a mouse scroll action.
    #   @return [Types::MouseScrollResult]
    #
    # @!attribute [rw] key_type
    #   The result of a key type action.
    #   @return [Types::KeyTypeResult]
    #
    # @!attribute [rw] key_press
    #   The result of a key press action.
    #   @return [Types::KeyPressResult]
    #
    # @!attribute [rw] key_shortcut
    #   The result of a key shortcut action.
    #   @return [Types::KeyShortcutResult]
    #
    # @!attribute [rw] screenshot
    #   The result of a screenshot action.
    #   @return [Types::ScreenshotResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/BrowserActionResult AWS API Documentation
    #
    class BrowserActionResult < Struct.new(
      :mouse_click,
      :mouse_move,
      :mouse_drag,
      :mouse_scroll,
      :key_type,
      :key_press,
      :key_shortcut,
      :screenshot,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MouseClick < BrowserActionResult; end
      class MouseMove < BrowserActionResult; end
      class MouseDrag < BrowserActionResult; end
      class MouseScroll < BrowserActionResult; end
      class KeyType < BrowserActionResult; end
      class KeyPress < BrowserActionResult; end
      class KeyShortcut < BrowserActionResult; end
      class Screenshot < BrowserActionResult; end
      class Unknown < BrowserActionResult; end
    end

    # Browser enterprise policy configuration.
    #
    # @!attribute [rw] location
    #   The location of the enterprise policy file.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] type
    #   The enterprise policy type. See BrowserEnterprisePolicyType.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/BrowserEnterprisePolicy AWS API Documentation
    #
    class BrowserEnterprisePolicy < Struct.new(
      :location,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Browser extension configuration.
    #
    # @!attribute [rw] location
    #   The location where the browser extension files are stored. This
    #   specifies the source from which the extension will be loaded and
    #   installed.
    #   @return [Types::ResourceLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/BrowserExtension AWS API Documentation
    #
    class BrowserExtension < Struct.new(
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a browser profile in Amazon Bedrock AgentCore. A
    # browser profile contains persistent browser data such as cookies and
    # local storage that can be saved from one browser session and reused in
    # subsequent sessions. Browser profiles enable continuity for tasks that
    # require authentication, maintain user preferences, or depend on
    # previously stored browser state.
    #
    # @!attribute [rw] profile_identifier
    #   The unique identifier of the browser profile. This identifier is
    #   used to reference the profile when starting new browser sessions or
    #   saving session data to the profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/BrowserProfileConfiguration AWS API Documentation
    #
    class BrowserProfileConfiguration < Struct.new(
      :profile_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The collection of streams associated with a browser session in Amazon
    # Bedrock AgentCore. These streams provide different ways to interact
    # with and observe the browser session, including programmatic control
    # and visual representation of the browser content.
    #
    # @!attribute [rw] automation_stream
    #   The stream that enables programmatic control of the browser. This
    #   stream allows agents to perform actions such as navigating to URLs,
    #   clicking elements, and filling forms.
    #   @return [Types::AutomationStream]
    #
    # @!attribute [rw] live_view_stream
    #   The stream that provides a visual representation of the browser
    #   content. This stream allows agents to observe the current state of
    #   the browser, including rendered web pages and visual elements.
    #   @return [Types::LiveViewStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/BrowserSessionStream AWS API Documentation
    #
    class BrowserSessionStream < Struct.new(
      :automation_stream,
      :live_view_stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # A condensed representation of a browser session in Amazon Bedrock
    # AgentCore. This structure contains key information about a browser
    # session, including identifiers, status, and timestamps, without the
    # full details of the session configuration and streams.
    #
    # @!attribute [rw] browser_identifier
    #   The unique identifier of the browser associated with the session.
    #   This identifier specifies which browser environment is used for the
    #   session.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the browser session. This identifier is
    #   used in operations that interact with the session.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the browser session. This name helps identify and manage
    #   the session.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the browser session. Possible values include
    #   ACTIVE, STOPPING, and STOPPED.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the browser session was created. This value is in
    #   ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the browser session was last updated. This value
    #   is in ISO 8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/BrowserSessionSummary AWS API Documentation
    #
    class BrowserSessionSummary < Struct.new(
      :browser_identifier,
      :session_id,
      :name,
      :status,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A certificate to install in the browser or code interpreter session.
    #
    # @!attribute [rw] location
    #   The location of the certificate.
    #   @return [Types::CertificateLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/Certificate AWS API Documentation
    #
    class Certificate < Struct.new(
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location from which to retrieve a certificate.
    #
    # @note CertificateLocation is a union - when making an API calls you must set exactly one of the members.
    #
    # @note CertificateLocation is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CertificateLocation corresponding to the set member.
    #
    # @!attribute [rw] secrets_manager
    #   The Amazon Web Services Secrets Manager location of the certificate.
    #   @return [Types::SecretsManagerLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CertificateLocation AWS API Documentation
    #
    class CertificateLocation < Struct.new(
      :secrets_manager,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SecretsManager < CertificateLocation; end
      class Unknown < CertificateLocation; end
    end

    # Filter configuration for narrowing down CloudWatch Logs sessions for
    # evaluation.
    #
    # @!attribute [rw] session_ids
    #   A list of specific session IDs to evaluate. If specified, only these
    #   sessions are included in the evaluation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] time_range
    #   The time range filter for selecting sessions to evaluate.
    #   @return [Types::SessionFilterConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CloudWatchFilterConfig AWS API Documentation
    #
    class CloudWatchFilterConfig < Struct.new(
      :session_ids,
      :time_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for narrowing down agent traces from CloudWatch Logs based on
    # key-value comparisons.
    #
    # @!attribute [rw] key
    #   The key or field name to filter on within the agent trace data.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The comparison operator to use for filtering.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value to compare against using the specified operator.
    #   @return [Types::FilterValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CloudWatchLogsFilter AWS API Documentation
    #
    class CloudWatchLogsFilter < Struct.new(
      :key,
      :operator,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule configuration for filtering agent traces from CloudWatch Logs.
    #
    # @!attribute [rw] filters
    #   The list of filters to apply when reading agent traces.
    #   @return [Array<Types::CloudWatchLogsFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CloudWatchLogsRule AWS API Documentation
    #
    class CloudWatchLogsRule < Struct.new(
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for reading agent traces from CloudWatch Logs.
    #
    # @!attribute [rw] service_names
    #   The list of agent service names to filter traces within the
    #   specified log groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] log_group_names
    #   The list of CloudWatch log group names to read agent traces from.
    #   Maximum of 5 log groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filter_config
    #   Optional filter configuration to narrow down which sessions to
    #   evaluate.
    #   @return [Types::CloudWatchFilterConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CloudWatchLogsSource AWS API Documentation
    #
    class CloudWatchLogsSource < Struct.new(
      :service_names,
      :log_group_names,
      :filter_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for reading agent traces from CloudWatch Logs for
    # recommendation analysis.
    #
    # @!attribute [rw] log_group_arns
    #   The list of CloudWatch log group ARNs to read agent traces from.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_names
    #   The list of service names to filter traces within the specified log
    #   groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The start time of the time range to read traces from.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the time range to read traces from.
    #   @return [Time]
    #
    # @!attribute [rw] rule
    #   Optional rule configuration for filtering traces.
    #   @return [Types::CloudWatchLogsRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CloudWatchLogsTraceConfig AWS API Documentation
    #
    class CloudWatchLogsTraceConfig < Struct.new(
      :log_group_arns,
      :service_names,
      :start_time,
      :end_time,
      :rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # CloudWatch Logs destination for batch evaluation results.
    #
    # @!attribute [rw] log_group_name
    #   The name of the CloudWatch log group where evaluation results will
    #   be written.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name
    #   The name of the CloudWatch log stream where evaluation results will
    #   be written.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CloudWatchOutputConfig AWS API Documentation
    #
    class CloudWatchOutputConfig < Struct.new(
      :log_group_name,
      :log_stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output produced by executing code in a code interpreter session in
    # Amazon Bedrock AgentCore. This structure contains the results of code
    # execution, including textual output, structured data, and error
    # information. Agents use these results to generate responses that
    # incorporate computation, data analysis, and visualization.
    #
    # @!attribute [rw] content
    #   The textual content of the execution result. This includes standard
    #   output from the code execution, such as print statements, console
    #   output, and text representations of results.
    #   @return [Array<Types::ContentBlock>]
    #
    # @!attribute [rw] structured_content
    #   The structured content of the execution result. This includes
    #   additional metadata about the execution, such as execution time,
    #   memory usage, and structured representations of output data. The
    #   format depends on the specific code interpreter and execution
    #   context.
    #   @return [Types::ToolResultStructuredContent]
    #
    # @!attribute [rw] is_error
    #   Indicates whether the result represents an error. If true, the
    #   content contains error messages or exception information. If false,
    #   the content contains successful execution results.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CodeInterpreterResult AWS API Documentation
    #
    class CodeInterpreterResult < Struct.new(
      :content,
      :structured_content,
      :is_error,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A condensed representation of a code interpreter session in Amazon
    # Bedrock AgentCore. This structure contains key information about a
    # code interpreter session, including identifiers, status, and
    # timestamps, without the full details of the session configuration.
    #
    # @!attribute [rw] code_interpreter_identifier
    #   The unique identifier of the code interpreter associated with the
    #   session. This identifier specifies which code interpreter
    #   environment is used for the session.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the code interpreter session. This
    #   identifier is used in operations that interact with the session.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the code interpreter session. This name helps identify
    #   and manage the session.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the code interpreter session. Possible values
    #   include ACTIVE, STOPPING, and STOPPED.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the code interpreter session was created. This
    #   value is in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the code interpreter session was last updated.
    #   This value is in ISO 8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CodeInterpreterSessionSummary AWS API Documentation
    #
    class CodeInterpreterSessionSummary < Struct.new(
      :code_interpreter_identifier,
      :session_id,
      :name,
      :status,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Coinbase CDP token request parameters.
    #
    # @!attribute [rw] request_method
    #   The HTTP method for the payment API request.
    #   @return [String]
    #
    # @!attribute [rw] request_host
    #   The host for the payment API request. Defaults to
    #   "api.cdp.coinbase.com".
    #   @return [String]
    #
    # @!attribute [rw] request_path
    #   The path of the payment API request.
    #   @return [String]
    #
    # @!attribute [rw] include_wallet_auth_token
    #   Set to true for wallet write operations (requires walletSecret
    #   configured).
    #   @return [Boolean]
    #
    # @!attribute [rw] request_body
    #   Request body JSON — used to generate wallet auth JWT.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CoinbaseCdpTokenRequestInput AWS API Documentation
    #
    class CoinbaseCdpTokenRequestInput < Struct.new(
      :request_method,
      :request_host,
      :request_path,
      :include_wallet_auth_token,
      :request_body)
      SENSITIVE = []
      include Aws::Structure
    end

    # Coinbase CDP token response.
    #
    # @!attribute [rw] bearer_token
    #   Bearer Token for Authorization header.
    #   @return [String]
    #
    # @!attribute [rw] wallet_auth_token
    #   Wallet Auth Token for X-Wallet-Auth header.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CoinbaseCdpTokenResponseOutput AWS API Documentation
    #
    class CoinbaseCdpTokenResponseOutput < Struct.new(
      :bearer_token,
      :wallet_auth_token)
      SENSITIVE = [:bearer_token, :wallet_auth_token]
      include Aws::Structure
    end

    # @!attribute [rw] user_identifier
    #   The OAuth2.0 token or user ID that was used to generate the workload
    #   access token used for initiating the user authorization flow to
    #   retrieve OAuth2.0 tokens.
    #   @return [Types::UserIdentifier]
    #
    # @!attribute [rw] session_uri
    #   Unique identifier for the user's authentication session for
    #   retrieving OAuth2 tokens. This ID tracks the authorization flow
    #   state across multiple requests and responses during the OAuth2
    #   authentication process.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CompleteResourceTokenAuthRequest AWS API Documentation
    #
    class CompleteResourceTokenAuthRequest < Struct.new(
      :user_identifier,
      :session_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CompleteResourceTokenAuthResponse AWS API Documentation
    #
    class CompleteResourceTokenAuthResponse < Aws::EmptyStructure; end

    # A confidence interval for a statistical measurement.
    #
    # @!attribute [rw] lower
    #   The lower bound of the confidence interval.
    #   @return [Float]
    #
    # @!attribute [rw] upper
    #   The upper bound of the confidence interval.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ConfidenceInterval AWS API Documentation
    #
    class ConfidenceInterval < Struct.new(
      :lower,
      :upper)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reference to a specific version of a configuration bundle.
    #
    # @!attribute [rw] bundle_arn
    #   The Amazon Resource Name (ARN) of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] bundle_version
    #   The version of the configuration bundle.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ConfigurationBundleRef AWS API Documentation
    #
    class ConfigurationBundleRef < Struct.new(
      :bundle_arn,
      :bundle_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Maps a tool name to its JSON path within a configuration bundle.
    #
    # @!attribute [rw] tool_name
    #   The name of the tool.
    #   @return [String]
    #
    # @!attribute [rw] tool_description_json_path
    #   The JSON path within the configuration bundle's components that
    #   contains the tool description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ConfigurationBundleToolEntry AWS API Documentation
    #
    class ConfigurationBundleToolEntry < Struct.new(
      :tool_name,
      :tool_description_json_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # The exception that occurs when the request conflicts with the current
    # state of the resource. This can happen when trying to modify a
    # resource that is currently being modified by another request, or when
    # trying to create a resource that already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the content of a memory item.
    #
    # @note Content is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Content is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Content corresponding to the set member.
    #
    # @!attribute [rw] text
    #   The text content of the memory item.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/Content AWS API Documentation
    #
    class Content < Struct.new(
      :text,
      :unknown)
      SENSITIVE = [:text]
      include Aws::Structure
      include Aws::Structure::Union

      class Text < Content; end
      class Unknown < Content; end
    end

    # A block of content in a response.
    #
    # @!attribute [rw] type
    #   The type of content in the block.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The text content of the block.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The binary data content of the block.
    #   @return [String]
    #
    # @!attribute [rw] mime_type
    #   The MIME type of the content.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The URI of the content.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the content block.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the content block.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size of the content in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] resource
    #   The resource associated with the content block.
    #   @return [Types::ResourceContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ContentBlock AWS API Documentation
    #
    class ContentBlock < Struct.new(
      :type,
      :text,
      :data,
      :mime_type,
      :uri,
      :name,
      :description,
      :size,
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # An event that contains incremental output from a command execution.
    # This event streams standard output and standard error content as it
    # becomes available during command execution.
    #
    # @!attribute [rw] stdout
    #   The standard output content from the command execution. This field
    #   contains the incremental output written to stdout by the executing
    #   command.
    #   @return [String]
    #
    # @!attribute [rw] stderr
    #   The standard error content from the command execution. This field
    #   contains the incremental output written to stderr by the executing
    #   command.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ContentDeltaEvent AWS API Documentation
    #
    class ContentDeltaEvent < Struct.new(
      :stdout,
      :stderr)
      SENSITIVE = []
      include Aws::Structure
    end

    # An event that signals the start of content streaming from a command
    # execution. This event is sent when the command begins producing
    # output.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ContentStartEvent AWS API Documentation
    #
    class ContentStartEvent < Aws::EmptyStructure; end

    # An event that signals the completion of a command execution. This
    # event contains the final status and exit code of the executed command.
    #
    # @!attribute [rw] exit_code
    #   The exit code returned by the executed command. An exit code of 0
    #   indicates successful execution, -1 indicates a platform error, and
    #   values greater than 0 indicate command-specific errors.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The final status of the command execution. Valid values are
    #   `COMPLETED` for successful completion or `TIMED_OUT` if the command
    #   exceeded the specified timeout.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ContentStopEvent AWS API Documentation
    #
    class ContentStopEvent < Struct.new(
      :exit_code,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The contextual information associated with an evaluation, including
    # span context details that identify the specific traces and sessions
    # being evaluated within the agent's execution flow.
    #
    # @note Context is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Context is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Context corresponding to the set member.
    #
    # @!attribute [rw] span_context
    #   The span context information that uniquely identifies the trace and
    #   span being evaluated, including session ID, trace ID, and span ID
    #   for precise targeting within the agent's execution flow.
    #   @return [Types::SpanContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/Context AWS API Documentation
    #
    class Context < Struct.new(
      :span_context,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SpanContext < Context; end
      class Unknown < Context; end
    end

    # Statistics for the control variant in an A/B test.
    #
    # @!attribute [rw] variant_name
    #   The name of the control variant.
    #   @return [String]
    #
    # @!attribute [rw] sample_size
    #   The number of sessions evaluated for the control variant.
    #   @return [Integer]
    #
    # @!attribute [rw] mean
    #   The mean evaluation score for the control variant.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ControlStats AWS API Documentation
    #
    class ControlStats < Struct.new(
      :variant_name,
      :sample_size,
      :mean)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains conversational content for an event payload.
    #
    # @!attribute [rw] content
    #   The content of the conversation message.
    #   @return [Types::Content]
    #
    # @!attribute [rw] role
    #   The role of the participant in the conversation (for example,
    #   "user" or "assistant").
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/Conversational AWS API Documentation
    #
    class Conversational < Struct.new(
      :content,
      :role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the A/B test. Must be unique within your account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the A/B test.
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway to use for traffic
    #   splitting.
    #   @return [String]
    #
    # @!attribute [rw] variants
    #   The list of variants for the A/B test. Must contain exactly two
    #   variants: a control (C) and a treatment (T1), each with a
    #   configuration bundle or target reference and a traffic weight.
    #   @return [Array<Types::Variant>]
    #
    # @!attribute [rw] gateway_filter
    #   Optional filter to restrict which gateway target paths are included
    #   in the A/B test.
    #   @return [Types::GatewayFilter]
    #
    # @!attribute [rw] evaluation_config
    #   The evaluation configuration specifying which online evaluation
    #   configurations to use for measuring variant performance.
    #   @return [Types::ABTestEvaluationConfig]
    #
    # @!attribute [rw] role_arn
    #   The IAM role ARN that grants permissions for the A/B test to access
    #   gateway and evaluation resources.
    #   @return [String]
    #
    # @!attribute [rw] enable_on_create
    #   Whether to enable the A/B test immediately upon creation. If true,
    #   traffic splitting begins automatically.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, the service ignores the request, but does not return an
    #   error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values to associate with the A/B test.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CreateABTestRequest AWS API Documentation
    #
    class CreateABTestRequest < Struct.new(
      :name,
      :description,
      :gateway_arn,
      :variants,
      :gateway_filter,
      :evaluation_config,
      :role_arn,
      :enable_on_create,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ab_test_id
    #   The unique identifier of the created A/B test.
    #   @return [String]
    #
    # @!attribute [rw] ab_test_arn
    #   The Amazon Resource Name (ARN) of the created A/B test.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the A/B test.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the A/B test.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   The execution status indicating whether the A/B test is currently
    #   running.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the A/B test was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CreateABTestResponse AWS API Documentation
    #
    class CreateABTestResponse < Struct.new(
      :ab_test_id,
      :ab_test_arn,
      :name,
      :status,
      :execution_status,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_id
    #   The identifier of the AgentCore Memory resource in which to create
    #   the event.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The identifier of the actor associated with this event. An actor
    #   represents an entity that participates in sessions and generates
    #   events.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session in which this event occurs. A session
    #   represents a sequence of related events.
    #   @return [String]
    #
    # @!attribute [rw] event_timestamp
    #   The timestamp when the event occurred. If not specified, the current
    #   time is used.
    #   @return [Time]
    #
    # @!attribute [rw] payload
    #   The content payload of the event. This can include conversational
    #   data or binary content.
    #   @return [Array<Types::PayloadType>]
    #
    # @!attribute [rw] branch
    #   The branch information for this event. Branches allow for organizing
    #   events into different conversation threads or paths.
    #   @return [Types::Branch]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, AgentCore ignores the request, but does not return an
    #   error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The key-value metadata to attach to the event.
    #   @return [Hash<String,Types::MetadataValue>]
    #
    # @!attribute [rw] extraction_mode
    #   Controls long-term memory extraction for this event. When set to
    #   `SKIP`, the event is stored in short-term memory but is excluded
    #   from long-term memory extraction. If not specified, the event is
    #   processed for extraction as usual.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CreateEventInput AWS API Documentation
    #
    class CreateEventInput < Struct.new(
      :memory_id,
      :actor_id,
      :session_id,
      :event_timestamp,
      :payload,
      :branch,
      :client_token,
      :metadata,
      :extraction_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event
    #   The event that was created.
    #   @return [Types::Event]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CreateEventOutput AWS API Documentation
    #
    class CreateEventOutput < Struct.new(
      :event)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for creating a payment instrument.
    #
    # @!attribute [rw] user_id
    #   The user ID associated with this payment instrument.
    #   @return [String]
    #
    # @!attribute [rw] agent_name
    #   The agent name associated with this request, used for observability.
    #   @return [String]
    #
    # @!attribute [rw] payment_manager_arn
    #   The ARN of the payment manager that owns this payment instrument.
    #   @return [String]
    #
    # @!attribute [rw] payment_connector_id
    #   The ID of the payment connector to use for this instrument.
    #   @return [String]
    #
    # @!attribute [rw] payment_instrument_type
    #   The type of payment instrument being created.
    #   @return [String]
    #
    # @!attribute [rw] payment_instrument_details
    #   The details of the payment instrument.
    #   @return [Types::PaymentInstrumentDetails]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CreatePaymentInstrumentRequest AWS API Documentation
    #
    class CreatePaymentInstrumentRequest < Struct.new(
      :user_id,
      :agent_name,
      :payment_manager_arn,
      :payment_connector_id,
      :payment_instrument_type,
      :payment_instrument_details,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for creating a payment instrument.
    #
    # @!attribute [rw] payment_instrument
    #   The created payment instrument.
    #   @return [Types::PaymentInstrument]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CreatePaymentInstrumentResponse AWS API Documentation
    #
    class CreatePaymentInstrumentResponse < Struct.new(
      :payment_instrument)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for creating a payment session.
    #
    # @!attribute [rw] user_id
    #   The user ID associated with this payment session.
    #   @return [String]
    #
    # @!attribute [rw] agent_name
    #   The agent name associated with this request, used for observability.
    #   @return [String]
    #
    # @!attribute [rw] payment_manager_arn
    #   The ARN of the payment manager that owns this session.
    #   @return [String]
    #
    # @!attribute [rw] limits
    #   The spending limits for this payment session.
    #   @return [Types::SessionLimits]
    #
    # @!attribute [rw] expiry_time_in_minutes
    #   The session expiry time in minutes. Must be between 15 and 480
    #   minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CreatePaymentSessionRequest AWS API Documentation
    #
    class CreatePaymentSessionRequest < Struct.new(
      :user_id,
      :agent_name,
      :payment_manager_arn,
      :limits,
      :expiry_time_in_minutes,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for creating a payment session.
    #
    # @!attribute [rw] payment_session
    #   The created payment session.
    #   @return [Types::PaymentSession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CreatePaymentSessionResponse AWS API Documentation
    #
    class CreatePaymentSessionResponse < Struct.new(
      :payment_session)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for a crypto X402 payment.
    #
    # @!attribute [rw] version
    #   The version of the X402 protocol.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The X402 payment payload.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] permit2_allowance_limit
    #   The maximum on-chain Permit2 allowance to grant before signing the
    #   payment authorization, in the asset's smallest denomination. This
    #   field is valid only for the `upto` (metered) scheme; supplying it
    #   for the `exact` scheme returns a validation error.
    #
    #   When set, the service approves an ERC-20 allowance for this amount
    #   before processing the payment. The approval sets, rather than adds
    #   to, the wallet's allowance. Set this field only when the wallet
    #   needs approving, for example on its first `upto` payment, to avoid a
    #   redundant on-chain transaction. Omit the field to skip allowance
    #   handling. This is the default, and the only behavior for the `exact`
    #   scheme.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CryptoX402PaymentInput AWS API Documentation
    #
    class CryptoX402PaymentInput < Struct.new(
      :version,
      :payload,
      :permit2_allowance_limit)
      SENSITIVE = [:payload]
      include Aws::Structure
    end

    # The output from a crypto X402 payment.
    #
    # @!attribute [rw] version
    #   The version of the X402 protocol.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The X402 payment response payload.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CryptoX402PaymentOutput AWS API Documentation
    #
    class CryptoX402PaymentOutput < Struct.new(
      :version,
      :payload)
      SENSITIVE = [:payload]
      include Aws::Structure
    end

    # A custom descriptor configuration for a registry record.
    #
    # @!attribute [rw] inline_content
    #   The inline content of the custom descriptor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CustomDescriptor AWS API Documentation
    #
    class CustomDescriptor < Struct.new(
      :inline_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for the data source used in evaluation.
    #
    # @note DataSourceConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note DataSourceConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DataSourceConfig corresponding to the set member.
    #
    # @!attribute [rw] cloud_watch_logs
    #   Configuration for pulling agent session traces from CloudWatch Logs.
    #   @return [Types::CloudWatchLogsSource]
    #
    # @!attribute [rw] online_evaluation_config_source
    #   Reference an existing OnlineEvaluationConfig as session source
    #   @return [Types::OnlineEvaluationConfigSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DataSourceConfig AWS API Documentation
    #
    class DataSourceConfig < Struct.new(
      :cloud_watch_logs,
      :online_evaluation_config_source,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CloudWatchLogs < DataSourceConfig; end
      class OnlineEvaluationConfigSource < DataSourceConfig; end
      class Unknown < DataSourceConfig; end
    end

    # @!attribute [rw] ab_test_id
    #   The unique identifier of the A/B test to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeleteABTestRequest AWS API Documentation
    #
    class DeleteABTestRequest < Struct.new(
      :ab_test_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ab_test_id
    #   The unique identifier of the deleted A/B test.
    #   @return [String]
    #
    # @!attribute [rw] ab_test_arn
    #   The Amazon Resource Name (ARN) of the deleted A/B test.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the A/B test deletion operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeleteABTestResponse AWS API Documentation
    #
    class DeleteABTestResponse < Struct.new(
      :ab_test_id,
      :ab_test_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_evaluation_id
    #   The unique identifier of the batch evaluation to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeleteBatchEvaluationRequest AWS API Documentation
    #
    class DeleteBatchEvaluationRequest < Struct.new(
      :batch_evaluation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_evaluation_id
    #   The unique identifier of the deleted batch evaluation.
    #   @return [String]
    #
    # @!attribute [rw] batch_evaluation_arn
    #   The Amazon Resource Name (ARN) of the deleted batch evaluation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the batch evaluation deletion operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeleteBatchEvaluationResponse AWS API Documentation
    #
    class DeleteBatchEvaluationResponse < Struct.new(
      :batch_evaluation_id,
      :batch_evaluation_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity_provider_id
    #   The unique identifier of the capacity provider associated with the
    #   session.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the capacity provider session to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeleteCapacityProviderSessionRequest AWS API Documentation
    #
    class DeleteCapacityProviderSessionRequest < Struct.new(
      :capacity_provider_id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity_provider_arn
    #   The Amazon Resource Name (ARN) of the capacity provider associated
    #   with the deleted session.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the deleted capacity provider session.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the capacity provider session. When the status
    #   is `Deleting`, the session is being deleted and is not available.
    #   When the status is `Deleted`, the session is no longer available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeleteCapacityProviderSessionResponse AWS API Documentation
    #
    class DeleteCapacityProviderSessionResponse < Struct.new(
      :capacity_provider_arn,
      :session_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_id
    #   The identifier of the AgentCore Memory resource from which to delete
    #   the event.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session containing the event to delete.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The identifier of the event to delete.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The identifier of the actor associated with the event to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeleteEventInput AWS API Documentation
    #
    class DeleteEventInput < Struct.new(
      :memory_id,
      :session_id,
      :event_id,
      :actor_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_id
    #   The identifier of the event that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeleteEventOutput AWS API Documentation
    #
    class DeleteEventOutput < Struct.new(
      :event_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_id
    #   The identifier of the AgentCore Memory resource from which to delete
    #   the memory record.
    #   @return [String]
    #
    # @!attribute [rw] memory_record_id
    #   The identifier of the memory record to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeleteMemoryRecordInput AWS API Documentation
    #
    class DeleteMemoryRecordInput < Struct.new(
      :memory_id,
      :memory_record_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_record_id
    #   The identifier of the memory record that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeleteMemoryRecordOutput AWS API Documentation
    #
    class DeleteMemoryRecordOutput < Struct.new(
      :memory_record_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for deleting a payment instrument.
    #
    # @!attribute [rw] user_id
    #   The user ID making the delete request. Must match the instrument's
    #   userId.
    #   @return [String]
    #
    # @!attribute [rw] payment_manager_arn
    #   The payment manager ARN. Must match the instrument's
    #   paymentManagerArn.
    #   @return [String]
    #
    # @!attribute [rw] payment_connector_id
    #   The payment connector ID. Must match the instrument's
    #   paymentConnectorId.
    #   @return [String]
    #
    # @!attribute [rw] payment_instrument_id
    #   The payment instrument ID to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeletePaymentInstrumentRequest AWS API Documentation
    #
    class DeletePaymentInstrumentRequest < Struct.new(
      :user_id,
      :payment_manager_arn,
      :payment_connector_id,
      :payment_instrument_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for deleting a payment instrument.
    #
    # @!attribute [rw] status
    #   The status of the instrument after deletion. Always DELETED for
    #   successful soft delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeletePaymentInstrumentResponse AWS API Documentation
    #
    class DeletePaymentInstrumentResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for deleting a payment session.
    #
    # @!attribute [rw] user_id
    #   The user ID making the delete request. Must match the session's
    #   userId.
    #   @return [String]
    #
    # @!attribute [rw] payment_manager_arn
    #   The payment manager ARN. Must match the session's
    #   paymentManagerArn.
    #   @return [String]
    #
    # @!attribute [rw] payment_session_id
    #   The payment session ID to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeletePaymentSessionRequest AWS API Documentation
    #
    class DeletePaymentSessionRequest < Struct.new(
      :user_id,
      :payment_manager_arn,
      :payment_session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for deleting a payment session.
    #
    # @!attribute [rw] status
    #   The status of the deletion. Always DELETED for successful hard
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeletePaymentSessionResponse AWS API Documentation
    #
    class DeletePaymentSessionResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendation_id
    #   The unique identifier of the recommendation to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeleteRecommendationRequest AWS API Documentation
    #
    class DeleteRecommendationRequest < Struct.new(
      :recommendation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendation_id
    #   The unique identifier of the deleted recommendation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the recommendation deletion operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeleteRecommendationResponse AWS API Documentation
    #
    class DeleteRecommendationResponse < Struct.new(
      :recommendation_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the descriptor configuration for a registry record. Only the
    # field that matches the record's `descriptorType` is populated.
    #
    # @!attribute [rw] mcp
    #   The MCP (Model Context Protocol) descriptor configuration. Populated
    #   when the record's `descriptorType` is `MCP`.
    #   @return [Types::McpDescriptor]
    #
    # @!attribute [rw] a2a
    #   The A2A (Agent-to-Agent) descriptor configuration. Populated when
    #   the record's `descriptorType` is `A2A`.
    #   @return [Types::A2aDescriptor]
    #
    # @!attribute [rw] custom
    #   The custom descriptor configuration. Populated when the record's
    #   `descriptorType` is `CUSTOM`.
    #   @return [Types::CustomDescriptor]
    #
    # @!attribute [rw] agent_skills
    #   The agent skills descriptor configuration. Populated when the
    #   record's `descriptorType` is `AGENT_SKILLS`.
    #   @return [Types::AgentSkillsDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/Descriptors AWS API Documentation
    #
    class Descriptors < Struct.new(
      :mcp,
      :a2a,
      :custom,
      :agent_skills)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception thrown when attempting to create a resource with an
    # identifier that already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DuplicateIdException AWS API Documentation
    #
    class DuplicateIdException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for mounting an Amazon Elastic File System (Amazon
    # EFS) access point that you own into a session.
    #
    # @!attribute [rw] access_point_arn
    #   The Amazon Resource Name (ARN) of the Amazon Elastic File System
    #   (Amazon EFS) access point to mount.
    #   @return [String]
    #
    # @!attribute [rw] mount_path
    #   The absolute path within the session at which the access point is
    #   mounted, for example `/mnt/efs`. Each mount path must be unique
    #   across all file system configurations in the session.
    #   @return [String]
    #
    # @!attribute [rw] file_system_arn
    #   The Amazon Resource Name (ARN) of the Amazon Elastic File System
    #   (Amazon EFS) file system that owns the access point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/EfsConfiguration AWS API Documentation
    #
    class EfsConfiguration < Struct.new(
      :access_point_arn,
      :mount_path,
      :file_system_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Embedded crypto wallet instrument details.
    #
    # @!attribute [rw] network
    #   The blockchain network for this embedded crypto wallet. Supported
    #   networks: ETHEREUM, SOLANA.
    #   @return [String]
    #
    # @!attribute [rw] linked_accounts
    #   List of linked accounts linked to this wallet. Each represents a way
    #   the end user can authenticate to this wallet.
    #   @return [Array<Types::LinkedAccount>]
    #
    # @!attribute [rw] wallet_address
    #   The wallet address on the specified blockchain network.
    #   @return [String]
    #
    # @!attribute [rw] redirect_url
    #   URL for the end user to complete a provider-specific action such as
    #   wallet linking or onboarding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/EmbeddedCryptoWallet AWS API Documentation
    #
    class EmbeddedCryptoWallet < Struct.new(
      :network,
      :linked_accounts,
      :wallet_address,
      :redirect_url)
      SENSITIVE = [:linked_accounts]
      include Aws::Structure
    end

    # @!attribute [rw] evaluator_id
    #   The unique identifier of the evaluator to use for scoring. Can be a
    #   built-in evaluator (e.g., `Builtin.Helpfulness`,
    #   `Builtin.Correctness`) or a custom evaluator Id created through the
    #   control plane API.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_input
    #   The input data containing agent session spans to be evaluated.
    #   Includes a list of spans in OpenTelemetry format from supported
    #   frameworks like Strands (AgentCore Runtime) or LangGraph with
    #   OpenInference instrumentation.
    #   @return [Types::EvaluationInput]
    #
    # @!attribute [rw] evaluation_target
    #   The specific trace or span IDs to evaluate within the provided
    #   input. Allows targeting evaluation at different levels: individual
    #   tool calls, single request-response interactions (traces), or entire
    #   conversation sessions.
    #   @return [Types::EvaluationTarget]
    #
    # @!attribute [rw] evaluation_reference_inputs
    #   Ground truth data to compare against agent responses during
    #   evaluation. Allows to provide expected responses, assertions, and
    #   expected tool trajectories at different evaluation levels.
    #   Session-level reference inputs apply to the entire conversation,
    #   while trace-level reference inputs target specific request-response
    #   interactions identified by trace ID.
    #   @return [Array<Types::EvaluationReferenceInput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/EvaluateRequest AWS API Documentation
    #
    class EvaluateRequest < Struct.new(
      :evaluator_id,
      :evaluation_input,
      :evaluation_target,
      :evaluation_reference_inputs)
      SENSITIVE = [:evaluation_reference_inputs]
      include Aws::Structure
    end

    # @!attribute [rw] evaluation_results
    #   The detailed evaluation results containing scores, explanations, and
    #   metadata. Includes the evaluator information, numerical or
    #   categorical ratings based on the evaluator's rating scale, and
    #   token usage statistics for the evaluation process.
    #   @return [Array<Types::EvaluationResultContent>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/EvaluateResponse AWS API Documentation
    #
    class EvaluateResponse < Struct.new(
      :evaluation_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # A content block for ground truth data in evaluation reference inputs.
    # Supports text content for expected responses and assertions.
    #
    # @note EvaluationContent is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] text
    #   The text content of the ground truth data. Used for expected
    #   response text and assertion statements.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/EvaluationContent AWS API Documentation
    #
    class EvaluationContent < Struct.new(
      :text,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < EvaluationContent; end
      class Unknown < EvaluationContent; end
    end

    # The expected tool call trajectory for trajectory-based evaluation.
    #
    # @!attribute [rw] tool_names
    #   The list of tool names representing the expected tool call sequence.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/EvaluationExpectedTrajectory AWS API Documentation
    #
    class EvaluationExpectedTrajectory < Struct.new(
      :tool_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input data structure containing agent session spans in
    # OpenTelemetry format. Supports traces from frameworks like Strands
    # (AgentCore Runtime) and LangGraph with OpenInference instrumentation
    # for comprehensive evaluation.
    #
    # @note EvaluationInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] session_spans
    #   The collection of spans representing agent execution traces within a
    #   session. Each span contains detailed information about tool calls,
    #   model interactions, and other agent activities that can be evaluated
    #   for quality and performance.
    #   @return [Array<Hash,Array,String,Numeric,Boolean>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/EvaluationInput AWS API Documentation
    #
    class EvaluationInput < Struct.new(
      :session_spans,
      :unknown)
      SENSITIVE = [:session_spans]
      include Aws::Structure
      include Aws::Structure::Union

      class SessionSpans < EvaluationInput; end
      class Unknown < EvaluationInput; end
    end

    # Aggregated results from a batch evaluation, including session
    # completion counts and evaluator score summaries.
    #
    # @!attribute [rw] number_of_sessions_completed
    #   The number of sessions that have been successfully evaluated.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_sessions_in_progress
    #   The number of sessions currently being evaluated.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_sessions_failed
    #   The number of sessions that failed evaluation.
    #   @return [Integer]
    #
    # @!attribute [rw] total_number_of_sessions
    #   The total number of sessions included in the batch evaluation.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_sessions_ignored
    #   The number of sessions that were ignored during evaluation.
    #   @return [Integer]
    #
    # @!attribute [rw] evaluator_summaries
    #   A list of per-evaluator summary statistics.
    #   @return [Array<Types::EvaluatorSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/EvaluationJobResults AWS API Documentation
    #
    class EvaluationJobResults < Struct.new(
      :number_of_sessions_completed,
      :number_of_sessions_in_progress,
      :number_of_sessions_failed,
      :total_number_of_sessions,
      :number_of_sessions_ignored,
      :evaluator_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for the evaluation, including session-specific ground truth
    # data.
    #
    # @note EvaluationMetadata is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] session_metadata
    #   A list of session metadata entries containing ground truth data and
    #   test scenario identifiers for specific sessions.
    #   @return [Array<Types::SessionMetadataShape>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/EvaluationMetadata AWS API Documentation
    #
    class EvaluationMetadata < Struct.new(
      :session_metadata,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SessionMetadata < EvaluationMetadata; end
      class Unknown < EvaluationMetadata; end
    end

    # A reference input containing ground truth data for evaluation, scoped
    # to a specific context level (session or trace) through its span
    # context.
    #
    # @!attribute [rw] context
    #   The span context that identifies which session or trace this
    #   reference input applies to, used for correlating ground truth with
    #   agent output.
    #   @return [Types::Context]
    #
    # @!attribute [rw] expected_response
    #   The expected response for trace-level evaluation. Built-in
    #   evaluators that support this field compare the agent's actual
    #   response against this value for assessment. Custom evaluators can
    #   access it through the `{expected_response}` placeholder in their
    #   instructions.
    #   @return [Types::EvaluationContent]
    #
    # @!attribute [rw] assertions
    #   A list of assertion statements for session-level evaluation. Each
    #   assertion describes an expected behavior or outcome the agent should
    #   demonstrate during the session.
    #   @return [Array<Types::EvaluationContent>]
    #
    # @!attribute [rw] expected_trajectory
    #   The expected tool call sequence for session-level trajectory
    #   evaluation. Contains a list of tool names representing the tools the
    #   agent is expected to invoke.
    #   @return [Types::EvaluationExpectedTrajectory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/EvaluationReferenceInput AWS API Documentation
    #
    class EvaluationReferenceInput < Struct.new(
      :context,
      :expected_response,
      :assertions,
      :expected_trajectory)
      SENSITIVE = []
      include Aws::Structure
    end

    # The comprehensive result of an evaluation containing the score,
    # explanation, evaluator metadata, and execution details. Provides both
    # quantitative ratings and qualitative insights about agent performance.
    #
    # @!attribute [rw] evaluator_arn
    #   The Amazon Resource Name (ARN) of the evaluator used to generate
    #   this result. For custom evaluators, this is the full ARN; for
    #   built-in evaluators, this follows the pattern
    #   `Builtin.{EvaluatorName}`.
    #   @return [String]
    #
    # @!attribute [rw] evaluator_id
    #   The unique identifier of the evaluator that produced this result.
    #   This matches the `evaluatorId` provided in the evaluation request
    #   and can be used to identify which evaluator generated specific
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] evaluator_name
    #   The human-readable name of the evaluator used for this evaluation.
    #   For built-in evaluators, this is the descriptive name (e.g.,
    #   "Helpfulness", "Correctness"); for custom evaluators, this is
    #   the user-defined name.
    #   @return [String]
    #
    # @!attribute [rw] explanation
    #   The detailed explanation provided by the evaluator describing the
    #   reasoning behind the assigned score. This qualitative feedback helps
    #   understand why specific ratings were given and provides actionable
    #   insights for improvement.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   The contextual information associated with this evaluation result,
    #   including span context details that identify the specific traces and
    #   sessions that were evaluated.
    #   @return [Types::Context]
    #
    # @!attribute [rw] value
    #   The numerical score assigned by the evaluator according to its
    #   configured rating scale. For numerical scales, this is a decimal
    #   value within the defined range. This field is not allowed for
    #   categorical scales.
    #   @return [Float]
    #
    # @!attribute [rw] label
    #   The categorical label assigned by the evaluator when using a
    #   categorical rating scale. This provides a human-readable description
    #   of the evaluation result (e.g., "Excellent", "Good", "Poor")
    #   corresponding to the numerical value. For numerical scales, this
    #   field is optional and provides a natural language explanation of
    #   what the value means (e.g., value 0.5 = "Somewhat Helpful").
    #   @return [String]
    #
    # @!attribute [rw] token_usage
    #   The token consumption statistics for this evaluation, including
    #   input tokens, output tokens, and total tokens used by the underlying
    #   language model during the evaluation process.
    #   @return [Types::TokenUsage]
    #
    # @!attribute [rw] error_message
    #   The error message describing what went wrong if the evaluation
    #   failed. Provides detailed information about evaluation failures to
    #   help diagnose and resolve issues with evaluator configuration or
    #   input data.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code indicating the type of failure that occurred during
    #   evaluation. Used to programmatically identify and handle different
    #   categories of evaluation errors.
    #   @return [String]
    #
    # @!attribute [rw] ignored_reference_input_fields
    #   The list of reference input field names that were provided but not
    #   used by the evaluator. Helps identify which ground truth data was
    #   not consumed during evaluation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/EvaluationResultContent AWS API Documentation
    #
    class EvaluationResultContent < Struct.new(
      :evaluator_arn,
      :evaluator_id,
      :evaluator_name,
      :explanation,
      :context,
      :value,
      :label,
      :token_usage,
      :error_message,
      :error_code,
      :ignored_reference_input_fields)
      SENSITIVE = [:explanation]
      include Aws::Structure
    end

    # The specification of which trace or span IDs to evaluate within the
    # provided input data. Allows precise targeting of evaluation at
    # different levels: tool calls, traces, or sessions.
    #
    # @note EvaluationTarget is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] span_ids
    #   The list of specific span IDs to evaluate within the provided
    #   traces. Used to target evaluation at individual tool calls or
    #   specific operations within the agent's execution flow.
    #   @return [Array<String>]
    #
    # @!attribute [rw] trace_ids
    #   The list of trace IDs to evaluate, representing complete
    #   request-response interactions. Used to evaluate entire conversation
    #   turns or specific agent interactions within a session.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/EvaluationTarget AWS API Documentation
    #
    class EvaluationTarget < Struct.new(
      :span_ids,
      :trace_ids,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SpanIds < EvaluationTarget; end
      class TraceIds < EvaluationTarget; end
      class Unknown < EvaluationTarget; end
    end

    # An evaluator to run against sessions during batch evaluation.
    #
    # @!attribute [rw] evaluator_id
    #   The unique identifier of the evaluator. Can reference built-in
    #   evaluators (e.g., `Builtin.Helpfulness`) or custom evaluators.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/Evaluator AWS API Documentation
    #
    class Evaluator < Struct.new(
      :evaluator_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Statistical metrics for a single evaluator comparing control and
    # treatment variants.
    #
    # @!attribute [rw] evaluator_arn
    #   The Amazon Resource Name (ARN) of the evaluator.
    #   @return [String]
    #
    # @!attribute [rw] control_stats
    #   The statistics for the control variant.
    #   @return [Types::ControlStats]
    #
    # @!attribute [rw] variant_results
    #   The results for each treatment variant compared against the control.
    #   @return [Array<Types::VariantResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/EvaluatorMetric AWS API Documentation
    #
    class EvaluatorMetric < Struct.new(
      :evaluator_arn,
      :control_stats,
      :variant_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Aggregated statistics for an evaluator.
    #
    # @!attribute [rw] average_score
    #   The average score across all evaluated sessions for this evaluator.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/EvaluatorStatistics AWS API Documentation
    #
    class EvaluatorStatistics < Struct.new(
      :average_score)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary statistics for a single evaluator within a batch evaluation.
    #
    # @!attribute [rw] evaluator_id
    #   The unique identifier of the evaluator.
    #   @return [String]
    #
    # @!attribute [rw] statistics
    #   The aggregated statistics for this evaluator.
    #   @return [Types::EvaluatorStatistics]
    #
    # @!attribute [rw] total_evaluated
    #   The total number of sessions evaluated by this evaluator.
    #   @return [Integer]
    #
    # @!attribute [rw] total_failed
    #   The total number of sessions that failed evaluation by this
    #   evaluator.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/EvaluatorSummary AWS API Documentation
    #
    class EvaluatorSummary < Struct.new(
      :evaluator_id,
      :statistics,
      :total_evaluated,
      :total_failed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an event in an AgentCore Memory resource.
    #
    # @!attribute [rw] memory_id
    #   The identifier of the AgentCore Memory resource containing the
    #   event.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The identifier of the actor associated with the event.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session containing the event.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The unique identifier of the event.
    #   @return [String]
    #
    # @!attribute [rw] event_timestamp
    #   The timestamp when the event occurred.
    #   @return [Time]
    #
    # @!attribute [rw] payload
    #   The content payload of the event.
    #   @return [Array<Types::PayloadType>]
    #
    # @!attribute [rw] branch
    #   The branch information for the event.
    #   @return [Types::Branch]
    #
    # @!attribute [rw] metadata
    #   Metadata associated with an event.
    #   @return [Hash<String,Types::MetadataValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/Event AWS API Documentation
    #
    class Event < Struct.new(
      :memory_id,
      :actor_id,
      :session_id,
      :event_id,
      :event_timestamp,
      :payload,
      :branch,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filter expression for retrieving events based on metadata associated
    # with an event.
    #
    # @!attribute [rw] left
    #   Left operand of the event metadata filter expression.
    #   @return [Types::LeftExpression]
    #
    # @!attribute [rw] operator
    #   Operator applied to the event metadata filter expression.
    #   @return [String]
    #
    # @!attribute [rw] right
    #   Right operand of the event metadata filter expression.
    #   @return [Types::RightExpression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/EventMetadataFilterExpression AWS API Documentation
    #
    class EventMetadataFilterExpression < Struct.new(
      :left,
      :operator,
      :right)
      SENSITIVE = []
      include Aws::Structure
    end

    # A session associated with an execution summary cluster.
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session.
    #   @return [String]
    #
    # @!attribute [rw] approach_taken
    #   The approach taken by the agent during this session.
    #   @return [String]
    #
    # @!attribute [rw] final_outcome
    #   The final outcome of the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ExecutionSummaryAffectedSession AWS API Documentation
    #
    class ExecutionSummaryAffectedSession < Struct.new(
      :session_id,
      :approach_taken,
      :final_outcome)
      SENSITIVE = []
      include Aws::Structure
    end

    # A cluster of similar execution patterns identified across sessions.
    #
    # @!attribute [rw] cluster_id
    #   The unique identifier of the execution summary cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the execution pattern cluster.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the execution pattern.
    #   @return [String]
    #
    # @!attribute [rw] affected_session_count
    #   The number of sessions with this execution pattern.
    #   @return [Integer]
    #
    # @!attribute [rw] affected_sessions
    #   The list of sessions with this execution pattern.
    #   @return [Array<Types::ExecutionSummaryAffectedSession>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ExecutionSummaryCluster AWS API Documentation
    #
    class ExecutionSummaryCluster < Struct.new(
      :cluster_id,
      :name,
      :description,
      :affected_session_count,
      :affected_sessions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The execution summary clustering result containing grouped execution
    # patterns identified across evaluated sessions.
    #
    # @!attribute [rw] execution_summaries
    #   The list of execution summary clusters identified across analyzed
    #   sessions.
    #   @return [Array<Types::ExecutionSummaryCluster>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ExecutionSummaryClusteringResultContent AWS API Documentation
    #
    class ExecutionSummaryClusteringResultContent < Struct.new(
      :execution_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for a customer-managed external proxy server. Includes
    # server location, optional domain-based routing patterns, and
    # authentication credentials.
    #
    # @!attribute [rw] server
    #   The hostname of the proxy server. Must be a valid DNS hostname
    #   (maximum 253 characters).
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number of the proxy server. Valid range: 1-65535.
    #   @return [Integer]
    #
    # @!attribute [rw] domain_patterns
    #   Optional array of domain patterns that should route through this
    #   specific proxy. Supports `.example.com` for subdomain matching
    #   (matches any subdomain of example.com) or `example.com` for exact
    #   domain matching. If omitted, this proxy acts as a catch-all for
    #   domains not matched by other proxies. Maximum 100 patterns per
    #   proxy, each up to 253 characters.
    #   @return [Array<String>]
    #
    # @!attribute [rw] credentials
    #   Optional authentication credentials for the proxy server. If
    #   omitted, the proxy is accessed without authentication (useful for
    #   IP-allowlisted proxies).
    #   @return [Types::ProxyCredentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ExternalProxy AWS API Documentation
    #
    class ExternalProxy < Struct.new(
      :server,
      :port,
      :domain_patterns,
      :credentials)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the metadata of a memory extraction job such as the message
    # identifiers that compose this job.
    #
    # @!attribute [rw] job_id
    #   The unique identifier of the extraction job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ExtractionJob AWS API Documentation
    #
    class ExtractionJob < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters for querying memory extraction jobs based on various criteria.
    #
    # @!attribute [rw] strategy_id
    #   The memory strategy identifier to filter extraction jobs by. If
    #   specified, only extraction jobs with this strategy ID are returned.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session. If specified, only extraction
    #   jobs with this session ID are returned.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The identifier of the actor. If specified, only extraction jobs with
    #   this actor ID are returned.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the extraction job. If specified, only extraction jobs
    #   with this status are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ExtractionJobFilterInput AWS API Documentation
    #
    class ExtractionJobFilterInput < Struct.new(
      :strategy_id,
      :session_id,
      :actor_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of messages that compose this extraction job.
    #
    # @note ExtractionJobMessages is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ExtractionJobMessages corresponding to the set member.
    #
    # @!attribute [rw] messages_list
    #   The list of messages that compose this extraction job.
    #   @return [Array<Types::MessageMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ExtractionJobMessages AWS API Documentation
    #
    class ExtractionJobMessages < Struct.new(
      :messages_list,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MessagesList < ExtractionJobMessages; end
      class Unknown < ExtractionJobMessages; end
    end

    # Metadata information associated with this extraction job.
    #
    # @!attribute [rw] job_id
    #   The unique identifier for the extraction job.
    #   @return [String]
    #
    # @!attribute [rw] messages
    #   The messages associated with the extraction job.
    #   @return [Types::ExtractionJobMessages]
    #
    # @!attribute [rw] status
    #   The current status of the extraction job.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The cause of failure, if the job did not complete successfully.
    #   @return [String]
    #
    # @!attribute [rw] strategy_id
    #   The identifier of the memory strategy for this extraction job.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session for this extraction job.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The identifier of the actor for this extraction job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ExtractionJobMetadata AWS API Documentation
    #
    class ExtractionJobMetadata < Struct.new(
      :job_id,
      :messages,
      :status,
      :failure_reason,
      :strategy_id,
      :session_id,
      :actor_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The failure analysis clustering result containing categorized failure
    # clusters with root causes and remediation recommendations.
    #
    # @!attribute [rw] failures
    #   The list of failure category clusters identified across analyzed
    #   sessions.
    #   @return [Array<Types::FailureCategoryCluster>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/FailureAnalysisResultContent AWS API Documentation
    #
    class FailureAnalysisResultContent < Struct.new(
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # A top-level failure category identified by clustering similar failure
    # patterns across sessions.
    #
    # @!attribute [rw] cluster_id
    #   The unique identifier of the failure category cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the failure category.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the failure category pattern.
    #   @return [String]
    #
    # @!attribute [rw] affected_session_count
    #   The number of sessions affected by this failure category.
    #   @return [Integer]
    #
    # @!attribute [rw] sub_categories
    #   The list of failure subcategories within this category.
    #   @return [Array<Types::FailureSubCategoryCluster>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/FailureCategoryCluster AWS API Documentation
    #
    class FailureCategoryCluster < Struct.new(
      :cluster_id,
      :name,
      :description,
      :affected_session_count,
      :sub_categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a specific span where a failure was detected.
    #
    # @!attribute [rw] span_id
    #   The unique identifier of the span where the failure occurred.
    #   @return [String]
    #
    # @!attribute [rw] trace_id
    #   The trace identifier associated with the failure span.
    #   @return [String]
    #
    # @!attribute [rw] signals
    #   The failure signals detected in this span.
    #   @return [Array<Types::InsightsFailureSignal>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/FailureSpanDetail AWS API Documentation
    #
    class FailureSpanDetail < Struct.new(
      :span_id,
      :trace_id,
      :signals)
      SENSITIVE = []
      include Aws::Structure
    end

    # A subcategory of failures within a top-level failure category.
    #
    # @!attribute [rw] cluster_id
    #   The unique identifier of the failure subcategory cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the failure subcategory.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the failure subcategory pattern.
    #   @return [String]
    #
    # @!attribute [rw] affected_session_count
    #   The number of sessions affected by this failure subcategory.
    #   @return [Integer]
    #
    # @!attribute [rw] root_causes
    #   The list of root cause clusters identified within this subcategory.
    #   @return [Array<Types::RootCauseCluster>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/FailureSubCategoryCluster AWS API Documentation
    #
    class FailureSubCategoryCluster < Struct.new(
      :cluster_id,
      :name,
      :description,
      :affected_session_count,
      :root_causes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains filter criteria for listing events.
    #
    # @!attribute [rw] branch
    #   The branch filter criteria to apply when listing events.
    #   @return [Types::BranchFilter]
    #
    # @!attribute [rw] event_metadata
    #   Event metadata filter criteria to apply when retrieving events.
    #   @return [Array<Types::EventMetadataFilterExpression>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/FilterInput AWS API Documentation
    #
    class FilterInput < Struct.new(
      :branch,
      :event_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # A value used in filter comparisons, supporting different data types.
    #
    # @note FilterValue is a union - when making an API calls you must set exactly one of the members.
    #
    # @note FilterValue is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FilterValue corresponding to the set member.
    #
    # @!attribute [rw] string_value
    #   A string value for text-based filtering.
    #   @return [String]
    #
    # @!attribute [rw] double_value
    #   A numeric value for numerical filtering and comparisons.
    #   @return [Float]
    #
    # @!attribute [rw] boolean_value
    #   A boolean value for true/false filtering conditions.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/FilterValue AWS API Documentation
    #
    class FilterValue < Struct.new(
      :string_value,
      :double_value,
      :boolean_value,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class StringValue < FilterValue; end
      class DoubleValue < FilterValue; end
      class BooleanValue < FilterValue; end
      class Unknown < FilterValue; end
    end

    # A filter to restrict which gateway target paths are included in the
    # A/B test.
    #
    # @!attribute [rw] target_paths
    #   A list of target path patterns to include in the A/B test.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GatewayFilter AWS API Documentation
    #
    class GatewayFilter < Struct.new(
      :target_paths)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ab_test_id
    #   The unique identifier of the A/B test to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetABTestRequest AWS API Documentation
    #
    class GetABTestRequest < Struct.new(
      :ab_test_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ab_test_id
    #   The unique identifier of the A/B test.
    #   @return [String]
    #
    # @!attribute [rw] ab_test_arn
    #   The Amazon Resource Name (ARN) of the A/B test.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the A/B test.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the A/B test.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the A/B test.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   The execution status indicating whether the A/B test is currently
    #   running.
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway used for traffic
    #   splitting.
    #   @return [String]
    #
    # @!attribute [rw] variants
    #   The list of variants in the A/B test.
    #   @return [Array<Types::Variant>]
    #
    # @!attribute [rw] gateway_filter
    #   The gateway filter restricting which target paths are included.
    #   @return [Types::GatewayFilter]
    #
    # @!attribute [rw] evaluation_config
    #   The evaluation configuration for measuring variant performance.
    #   @return [Types::ABTestEvaluationConfig]
    #
    # @!attribute [rw] role_arn
    #   The IAM role ARN used by the A/B test.
    #   @return [String]
    #
    # @!attribute [rw] current_run_id
    #   The identifier of the current run of the A/B test.
    #   @return [String]
    #
    # @!attribute [rw] error_details
    #   The error details if the A/B test encountered failures.
    #   @return [Array<String>]
    #
    # @!attribute [rw] started_at
    #   The timestamp when the A/B test was started.
    #   @return [Time]
    #
    # @!attribute [rw] stopped_at
    #   The timestamp when the A/B test was stopped.
    #   @return [Time]
    #
    # @!attribute [rw] max_duration_expires_at
    #   The timestamp when the A/B test will automatically expire.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the A/B test was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the A/B test was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] results
    #   The statistical results of the A/B test, including per-evaluator
    #   metrics and significance analysis.
    #   @return [Types::ABTestResults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetABTestResponse AWS API Documentation
    #
    class GetABTestResponse < Struct.new(
      :ab_test_id,
      :ab_test_arn,
      :name,
      :description,
      :status,
      :execution_status,
      :gateway_arn,
      :variants,
      :gateway_filter,
      :evaluation_config,
      :role_arn,
      :current_run_id,
      :error_details,
      :started_at,
      :stopped_at,
      :max_duration_expires_at,
      :created_at,
      :updated_at,
      :results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] runtime_session_id
    #   The session ID that the AgentCore Runtime agent is using.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_arn
    #   The ARN of the AgentCore Runtime agent for which you want to get the
    #   A2A agent card.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   Optional qualifier to specify an agent alias, such as `prod`code&gt;
    #   or `dev`. If you don't provide a value, the DEFAULT alias is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetAgentCardRequest AWS API Documentation
    #
    class GetAgentCardRequest < Struct.new(
      :runtime_session_id,
      :agent_runtime_arn,
      :qualifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] runtime_session_id
    #   The ID of the session associated with the AgentCore Runtime agent.
    #   @return [String]
    #
    # @!attribute [rw] agent_card
    #   An agent card document that contains metadata and capabilities for
    #   an AgentCore Runtime agent.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] status_code
    #   The status code of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetAgentCardResponse AWS API Documentation
    #
    class GetAgentCardResponse < Struct.new(
      :runtime_session_id,
      :agent_card,
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_evaluation_id
    #   The unique identifier of the batch evaluation to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetBatchEvaluationRequest AWS API Documentation
    #
    class GetBatchEvaluationRequest < Struct.new(
      :batch_evaluation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_evaluation_id
    #   The unique identifier of the batch evaluation.
    #   @return [String]
    #
    # @!attribute [rw] batch_evaluation_arn
    #   The Amazon Resource Name (ARN) of the batch evaluation.
    #   @return [String]
    #
    # @!attribute [rw] batch_evaluation_name
    #   The name of the batch evaluation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the batch evaluation.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the batch evaluation was created.
    #   @return [Time]
    #
    # @!attribute [rw] evaluators
    #   The list of evaluators applied during the batch evaluation.
    #   @return [Array<Types::Evaluator>]
    #
    # @!attribute [rw] insights
    #   The list of insight analyses applied during the batch evaluation.
    #   @return [Array<Types::Insight>]
    #
    # @!attribute [rw] data_source_config
    #   The data source configuration specifying where agent traces are
    #   pulled from.
    #   @return [Types::DataSourceConfig]
    #
    # @!attribute [rw] output_config
    #   The output configuration specifying where evaluation results are
    #   written.
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] evaluation_results
    #   The aggregated evaluation results, including session completion
    #   counts and evaluator score summaries.
    #   @return [Types::EvaluationJobResults]
    #
    # @!attribute [rw] failure_analysis_result
    #   The failure analysis results from insights, containing categorized
    #   failure clusters with root causes and recommendations.
    #   @return [Types::FailureAnalysisResultContent]
    #
    # @!attribute [rw] user_intent_result
    #   The user intent clustering results from insights, containing grouped
    #   user intents across evaluated sessions.
    #   @return [Types::UserIntentClusteringResultContent]
    #
    # @!attribute [rw] execution_summary_result
    #   The execution summary clustering results from insights, containing
    #   grouped execution patterns across evaluated sessions.
    #   @return [Types::ExecutionSummaryClusteringResultContent]
    #
    # @!attribute [rw] error_details
    #   The error details if the batch evaluation encountered failures.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   The description of the batch evaluation.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the batch evaluation was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the KMS key used to encrypt evaluation data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetBatchEvaluationResponse AWS API Documentation
    #
    class GetBatchEvaluationResponse < Struct.new(
      :batch_evaluation_id,
      :batch_evaluation_arn,
      :batch_evaluation_name,
      :status,
      :created_at,
      :evaluators,
      :insights,
      :data_source_config,
      :output_config,
      :evaluation_results,
      :failure_analysis_result,
      :user_intent_result,
      :execution_summary_result,
      :error_details,
      :description,
      :updated_at,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] browser_identifier
    #   The unique identifier of the browser associated with the session.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the browser session to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetBrowserSessionRequest AWS API Documentation
    #
    class GetBrowserSessionRequest < Struct.new(
      :browser_identifier,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] browser_identifier
    #   The identifier of the browser.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the browser session.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the browser session.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the browser session was created.
    #   @return [Time]
    #
    # @!attribute [rw] view_port
    #   The configuration that defines the dimensions of a browser viewport
    #   in a browser session. The viewport determines the visible area of
    #   web content and affects how web pages are rendered and displayed.
    #   Proper viewport configuration ensures that web content is displayed
    #   correctly for the agent's browsing tasks.
    #   @return [Types::ViewPort]
    #
    # @!attribute [rw] extensions
    #   The list of browser extensions that are configured in the browser
    #   session.
    #   @return [Array<Types::BrowserExtension>]
    #
    # @!attribute [rw] enterprise_policies
    #   A list of files containing enterprise policies for the browser
    #   session.
    #   @return [Array<Types::BrowserEnterprisePolicy>]
    #
    # @!attribute [rw] profile_configuration
    #   The browser profile configuration associated with this session.
    #   Contains the profile identifier that links to persistent browser
    #   data such as cookies and local storage.
    #   @return [Types::BrowserProfileConfiguration]
    #
    # @!attribute [rw] session_timeout_seconds
    #   The timeout period for the browser session in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The current status of the browser session. Possible values include
    #   ACTIVE, STOPPING, and STOPPED.
    #   @return [String]
    #
    # @!attribute [rw] streams
    #   The streams associated with this browser session. These include the
    #   automation stream and live view stream.
    #   @return [Types::BrowserSessionStream]
    #
    # @!attribute [rw] proxy_configuration
    #   The active proxy configuration for this browser session. This field
    #   is only present if proxy configuration was provided when the session
    #   was started using `StartBrowserSession`. The configuration includes
    #   proxy servers, domain bypass rules and the proxy authentication
    #   credentials.
    #   @return [Types::ProxyConfiguration]
    #
    # @!attribute [rw] certificates
    #   The list of certificates installed in the browser session.
    #   @return [Array<Types::Certificate>]
    #
    # @!attribute [rw] filesystem_configurations
    #   The file system configurations for the browser session. Each entry
    #   describes an access point and its mount path.
    #   @return [Array<Types::ToolsFileSystemConfiguration>]
    #
    # @!attribute [rw] session_replay_artifact
    #   The artifact containing the session replay information.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The time at which the browser session was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetBrowserSessionResponse AWS API Documentation
    #
    class GetBrowserSessionResponse < Struct.new(
      :browser_identifier,
      :session_id,
      :name,
      :created_at,
      :view_port,
      :extensions,
      :enterprise_policies,
      :profile_configuration,
      :session_timeout_seconds,
      :status,
      :streams,
      :proxy_configuration,
      :certificates,
      :filesystem_configurations,
      :session_replay_artifact,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_interpreter_identifier
    #   The unique identifier of the code interpreter associated with the
    #   session.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the code interpreter session to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetCodeInterpreterSessionRequest AWS API Documentation
    #
    class GetCodeInterpreterSessionRequest < Struct.new(
      :code_interpreter_identifier,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_interpreter_identifier
    #   The identifier of the code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the code interpreter session.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the code interpreter session.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the code interpreter session was created.
    #   @return [Time]
    #
    # @!attribute [rw] session_timeout_seconds
    #   The timeout period for the code interpreter session in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The current status of the code interpreter session. Possible values
    #   include ACTIVE, STOPPING, and STOPPED.
    #   @return [String]
    #
    # @!attribute [rw] certificates
    #   The list of certificates installed in the code interpreter session.
    #   @return [Array<Types::Certificate>]
    #
    # @!attribute [rw] filesystem_configurations
    #   The file system configurations for the code interpreter session.
    #   Each entry describes an access point and its mount path.
    #   @return [Array<Types::ToolsFileSystemConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetCodeInterpreterSessionResponse AWS API Documentation
    #
    class GetCodeInterpreterSessionResponse < Struct.new(
      :code_interpreter_identifier,
      :session_id,
      :name,
      :created_at,
      :session_timeout_seconds,
      :status,
      :certificates,
      :filesystem_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_id
    #   The identifier of the AgentCore Memory resource containing the
    #   event.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session containing the event.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The identifier of the actor associated with the event.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The identifier of the event to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetEventInput AWS API Documentation
    #
    class GetEventInput < Struct.new(
      :memory_id,
      :session_id,
      :actor_id,
      :event_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event
    #   The requested event information.
    #   @return [Types::Event]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetEventOutput AWS API Documentation
    #
    class GetEventOutput < Struct.new(
      :event)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_id
    #   The identifier of the AgentCore Memory resource containing the
    #   memory record.
    #   @return [String]
    #
    # @!attribute [rw] memory_record_id
    #   The identifier of the memory record to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetMemoryRecordInput AWS API Documentation
    #
    class GetMemoryRecordInput < Struct.new(
      :memory_id,
      :memory_record_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_record
    #   The requested memory record.
    #   @return [Types::MemoryRecord]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetMemoryRecordOutput AWS API Documentation
    #
    class GetMemoryRecordOutput < Struct.new(
      :memory_record)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for getting payment instrument balance.
    #
    # @!attribute [rw] user_id
    #   The user ID associated with this payment instrument.
    #   @return [String]
    #
    # @!attribute [rw] agent_name
    #   The agent name associated with this request, used for observability.
    #   @return [String]
    #
    # @!attribute [rw] payment_manager_arn
    #   The ARN of the payment manager that owns this payment instrument.
    #   @return [String]
    #
    # @!attribute [rw] payment_connector_id
    #   The ID of the payment connector associated with this instrument.
    #   @return [String]
    #
    # @!attribute [rw] payment_instrument_id
    #   The ID of the payment instrument to query balance for.
    #   @return [String]
    #
    # @!attribute [rw] chain
    #   The specific blockchain chain to query balance on. Required because
    #   balances are chain-specific.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   The token to query balance for. Only tokens supported for X402
    #   payments are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetPaymentInstrumentBalanceRequest AWS API Documentation
    #
    class GetPaymentInstrumentBalanceRequest < Struct.new(
      :user_id,
      :agent_name,
      :payment_manager_arn,
      :payment_connector_id,
      :payment_instrument_id,
      :chain,
      :token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for getting payment instrument balance.
    #
    # @!attribute [rw] payment_instrument_id
    #   The ID of the payment instrument.
    #   @return [String]
    #
    # @!attribute [rw] token_balance
    #   The balance of the supported token on the requested chain.
    #   @return [Types::TokenBalance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetPaymentInstrumentBalanceResponse AWS API Documentation
    #
    class GetPaymentInstrumentBalanceResponse < Struct.new(
      :payment_instrument_id,
      :token_balance)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for getting a payment instrument.
    #
    # @!attribute [rw] user_id
    #   The user ID associated with this payment instrument.
    #   @return [String]
    #
    # @!attribute [rw] agent_name
    #   The agent name associated with this request, used for observability.
    #   @return [String]
    #
    # @!attribute [rw] payment_manager_arn
    #   The ARN of the payment manager that owns this payment instrument.
    #   @return [String]
    #
    # @!attribute [rw] payment_connector_id
    #   The ID of the payment connector.
    #   @return [String]
    #
    # @!attribute [rw] payment_instrument_id
    #   The ID of the payment instrument to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetPaymentInstrumentRequest AWS API Documentation
    #
    class GetPaymentInstrumentRequest < Struct.new(
      :user_id,
      :agent_name,
      :payment_manager_arn,
      :payment_connector_id,
      :payment_instrument_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for getting a payment instrument.
    #
    # @!attribute [rw] payment_instrument
    #   The payment instrument details.
    #   @return [Types::PaymentInstrument]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetPaymentInstrumentResponse AWS API Documentation
    #
    class GetPaymentInstrumentResponse < Struct.new(
      :payment_instrument)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for getting a payment session.
    #
    # @!attribute [rw] user_id
    #   The user ID associated with this payment session.
    #   @return [String]
    #
    # @!attribute [rw] agent_name
    #   The agent name associated with this request, used for observability.
    #   @return [String]
    #
    # @!attribute [rw] payment_manager_arn
    #   The ARN of the payment manager that owns this session.
    #   @return [String]
    #
    # @!attribute [rw] payment_session_id
    #   The ID of the payment session to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetPaymentSessionRequest AWS API Documentation
    #
    class GetPaymentSessionRequest < Struct.new(
      :user_id,
      :agent_name,
      :payment_manager_arn,
      :payment_session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for getting a payment session.
    #
    # @!attribute [rw] payment_session
    #   The payment session details.
    #   @return [Types::PaymentSession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetPaymentSessionResponse AWS API Documentation
    #
    class GetPaymentSessionResponse < Struct.new(
      :payment_session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendation_id
    #   The unique identifier of the recommendation to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetRecommendationRequest AWS API Documentation
    #
    class GetRecommendationRequest < Struct.new(
      :recommendation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendation_id
    #   The unique identifier of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_arn
    #   The Amazon Resource Name (ARN) of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of recommendation.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_config
    #   The configuration for the recommendation.
    #   @return [Types::RecommendationConfig]
    #
    # @!attribute [rw] status
    #   The current status of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the recommendation was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the recommendation was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] recommendation_result
    #   The result of the recommendation, containing the optimized system
    #   prompt or tool descriptions. Only present when the recommendation
    #   status is `COMPLETED`.
    #   @return [Types::RecommendationResult]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the KMS key used to encrypt recommendation data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetRecommendationResponse AWS API Documentation
    #
    class GetRecommendationResponse < Struct.new(
      :recommendation_id,
      :recommendation_arn,
      :name,
      :description,
      :type,
      :recommendation_config,
      :status,
      :created_at,
      :updated_at,
      :recommendation_result,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_identity_token
    #   The identity token of the workload from which you want to retrieve
    #   the API key.
    #   @return [String]
    #
    # @!attribute [rw] resource_credential_provider_name
    #   The credential provider name for the resource from which you are
    #   retrieving the API key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetResourceApiKeyRequest AWS API Documentation
    #
    class GetResourceApiKeyRequest < Struct.new(
      :workload_identity_token,
      :resource_credential_provider_name)
      SENSITIVE = [:workload_identity_token]
      include Aws::Structure
    end

    # @!attribute [rw] api_key
    #   The API key associated with the resource requested.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetResourceApiKeyResponse AWS API Documentation
    #
    class GetResourceApiKeyResponse < Struct.new(
      :api_key)
      SENSITIVE = [:api_key]
      include Aws::Structure
    end

    # @!attribute [rw] workload_identity_token
    #   The identity token of the workload from which you want to retrieve
    #   the OAuth2 token.
    #   @return [String]
    #
    # @!attribute [rw] resource_credential_provider_name
    #   The name of the resource's credential provider.
    #   @return [String]
    #
    # @!attribute [rw] scopes
    #   The OAuth scopes being requested.
    #   @return [Array<String>]
    #
    # @!attribute [rw] oauth2_flow
    #   The type of flow to be performed.
    #   @return [String]
    #
    # @!attribute [rw] session_uri
    #   Unique identifier for the user's authentication session for
    #   retrieving OAuth2 tokens. This ID tracks the authorization flow
    #   state across multiple requests and responses during the OAuth2
    #   authentication process.
    #   @return [String]
    #
    # @!attribute [rw] resource_oauth_2_return_url
    #   The callback URL to redirect to after the OAuth 2.0 token retrieval
    #   is complete. This URL must be one of the provided URLs configured
    #   for the workload identity.
    #   @return [String]
    #
    # @!attribute [rw] force_authentication
    #   Indicates whether to always initiate a new three-legged OAuth (3LO)
    #   flow, regardless of any existing session.
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_parameters
    #   A map of custom parameters to include in the authorization request
    #   to the resource credential provider. These parameters are in
    #   addition to the standard OAuth 2.0 flow parameters, and will not
    #   override them.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] custom_state
    #   An opaque string that will be sent back to the callback URL provided
    #   in resourceOauth2ReturnUrl. This state should be used to protect the
    #   callback URL of your application against CSRF attacks by ensuring
    #   the response corresponds to the original request.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   The resources to include in the token request. These are used to
    #   specify the target resources for which the OAuth2 token is being
    #   requested.
    #   @return [Array<String>]
    #
    # @!attribute [rw] audiences
    #   The audiences to include in the token request. These are used to
    #   specify the intended recipients of the OAuth2 token.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetResourceOauth2TokenRequest AWS API Documentation
    #
    class GetResourceOauth2TokenRequest < Struct.new(
      :workload_identity_token,
      :resource_credential_provider_name,
      :scopes,
      :oauth2_flow,
      :session_uri,
      :resource_oauth_2_return_url,
      :force_authentication,
      :custom_parameters,
      :custom_state,
      :resources,
      :audiences)
      SENSITIVE = [:workload_identity_token, :custom_parameters, :custom_state]
      include Aws::Structure
    end

    # @!attribute [rw] authorization_url
    #   The URL to initiate the authorization process, provided when the
    #   access token requires user authorization.
    #   @return [String]
    #
    # @!attribute [rw] access_token
    #   The OAuth 2.0 access token to use.
    #   @return [String]
    #
    # @!attribute [rw] session_uri
    #   Unique identifier for the user's authorization session for
    #   retrieving OAuth2 tokens. This matches the sessionId from the
    #   request and can be used to track the session state.
    #   @return [String]
    #
    # @!attribute [rw] session_status
    #   Status indicating whether the user's authorization session is in
    #   progress or has failed. This helps determine the next steps in the
    #   OAuth2 authentication flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetResourceOauth2TokenResponse AWS API Documentation
    #
    class GetResourceOauth2TokenResponse < Struct.new(
      :authorization_url,
      :access_token,
      :session_uri,
      :session_status)
      SENSITIVE = [:authorization_url, :access_token]
      include Aws::Structure
    end

    # @!attribute [rw] workload_identity_token
    #   Workload access token for authorization.
    #   @return [String]
    #
    # @!attribute [rw] resource_credential_provider_name
    #   Name of the payment credential provider to use.
    #   @return [String]
    #
    # @!attribute [rw] payment_token_request
    #   Vendor-specific token request input. Contains all request parameters
    #   in a type-safe, vendor-specific structure.
    #   @return [Types::PaymentTokenRequestInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetResourcePaymentTokenRequest AWS API Documentation
    #
    class GetResourcePaymentTokenRequest < Struct.new(
      :workload_identity_token,
      :resource_credential_provider_name,
      :payment_token_request)
      SENSITIVE = [:workload_identity_token]
      include Aws::Structure
    end

    # @!attribute [rw] payment_token_response
    #   Vendor-specific token response output. Contains all response data in
    #   a type-safe, vendor-specific structure.
    #   @return [Types::PaymentTokenResponseOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetResourcePaymentTokenResponse AWS API Documentation
    #
    class GetResourcePaymentTokenResponse < Struct.new(
      :payment_token_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_name
    #   The unique identifier for the registered workload.
    #   @return [String]
    #
    # @!attribute [rw] user_token
    #   The OAuth 2.0 token issued by the user's identity provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetWorkloadAccessTokenForJWTRequest AWS API Documentation
    #
    class GetWorkloadAccessTokenForJWTRequest < Struct.new(
      :workload_name,
      :user_token)
      SENSITIVE = [:user_token]
      include Aws::Structure
    end

    # @!attribute [rw] workload_access_token
    #   An opaque token representing the identity of both the workload and
    #   the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetWorkloadAccessTokenForJWTResponse AWS API Documentation
    #
    class GetWorkloadAccessTokenForJWTResponse < Struct.new(
      :workload_access_token)
      SENSITIVE = [:workload_access_token]
      include Aws::Structure
    end

    # @!attribute [rw] workload_name
    #   The name of the workload from which you want to retrieve the access
    #   token.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The ID of the user for whom you are retrieving the access token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetWorkloadAccessTokenForUserIdRequest AWS API Documentation
    #
    class GetWorkloadAccessTokenForUserIdRequest < Struct.new(
      :workload_name,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_access_token
    #   The access token for the specified workload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetWorkloadAccessTokenForUserIdResponse AWS API Documentation
    #
    class GetWorkloadAccessTokenForUserIdResponse < Struct.new(
      :workload_access_token)
      SENSITIVE = [:workload_access_token]
      include Aws::Structure
    end

    # @!attribute [rw] workload_name
    #   The unique identifier for the registered workload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetWorkloadAccessTokenRequest AWS API Documentation
    #
    class GetWorkloadAccessTokenRequest < Struct.new(
      :workload_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_access_token
    #   An opaque token representing the identity of both the workload and
    #   the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetWorkloadAccessTokenResponse AWS API Documentation
    #
    class GetWorkloadAccessTokenResponse < Struct.new(
      :workload_access_token)
      SENSITIVE = [:workload_access_token]
      include Aws::Structure
    end

    # Where to pull ground truth from.
    #
    # @note GroundTruthSource is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] inline
    #   Inline ground truth data provided directly in the request.
    #   @return [Types::InlineGroundTruth]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GroundTruthSource AWS API Documentation
    #
    class GroundTruthSource < Struct.new(
      :inline,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Inline < GroundTruthSource; end
      class Unknown < GroundTruthSource; end
    end

    # Ground truth data for a single conversation turn.
    #
    # @!attribute [rw] input
    #   The input for this conversation turn.
    #   @return [Types::GroundTruthTurnInput]
    #
    # @!attribute [rw] expected_response
    #   The expected response for this conversation turn.
    #   @return [Types::EvaluationContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GroundTruthTurn AWS API Documentation
    #
    class GroundTruthTurn < Struct.new(
      :input,
      :expected_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for a ground truth conversation turn.
    #
    # @note GroundTruthTurnInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] prompt
    #   The text prompt for this conversation turn.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GroundTruthTurnInput AWS API Documentation
    #
    class GroundTruthTurnInput < Struct.new(
      :prompt,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Prompt < GroundTruthTurnInput; end
      class Unknown < GroundTruthTurnInput; end
    end

    # Configuration for AgentCore Browser.
    #
    # @!attribute [rw] browser_arn
    #   If not populated, the built-in Browser ARN is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessAgentCoreBrowserConfig AWS API Documentation
    #
    class HarnessAgentCoreBrowserConfig < Struct.new(
      :browser_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for AgentCore Code Interpreter.
    #
    # @!attribute [rw] code_interpreter_arn
    #   If not populated, the built-in Code Interpreter ARN is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessAgentCoreCodeInterpreterConfig AWS API Documentation
    #
    class HarnessAgentCoreCodeInterpreterConfig < Struct.new(
      :code_interpreter_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for AgentCore Gateway.
    #
    # @!attribute [rw] gateway_arn
    #   The ARN of the desired AgentCore Gateway.
    #   @return [String]
    #
    # @!attribute [rw] outbound_auth
    #   How harness authenticates to this Gateway. Defaults to AWS\_IAM
    #   (SigV4) if omitted.
    #   @return [Types::HarnessGatewayOutboundAuth]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessAgentCoreGatewayConfig AWS API Documentation
    #
    class HarnessAgentCoreGatewayConfig < Struct.new(
      :gateway_arn,
      :outbound_auth)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for an Amazon Bedrock model provider.
    #
    # @!attribute [rw] model_id
    #   The Bedrock model ID.
    #   @return [String]
    #
    # @!attribute [rw] max_tokens
    #   The maximum number of tokens to allow in the generated response per
    #   iteration.
    #   @return [Integer]
    #
    # @!attribute [rw] temperature
    #   The temperature to set when calling the model.
    #   @return [Float]
    #
    # @!attribute [rw] top_p
    #   The topP set when calling the model.
    #   @return [Float]
    #
    # @!attribute [rw] api_format
    #   The API format to use when calling the Bedrock provider.
    #   @return [String]
    #
    # @!attribute [rw] additional_params
    #   Provider-specific parameters passed through to the model provider
    #   unchanged.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessBedrockModelConfig AWS API Documentation
    #
    class HarnessBedrockModelConfig < Struct.new(
      :model_id,
      :max_tokens,
      :temperature,
      :top_p,
      :api_format,
      :additional_params)
      SENSITIVE = []
      include Aws::Structure
    end

    # A content block within a message.
    #
    # @note HarnessContentBlock is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] text
    #   Text content.
    #   @return [String]
    #
    # @!attribute [rw] tool_use
    #   A tool use request from the model.
    #   @return [Types::HarnessToolUseBlock]
    #
    # @!attribute [rw] tool_result
    #   A tool execution result.
    #   @return [Types::HarnessToolResultBlock]
    #
    # @!attribute [rw] reasoning_content
    #   Model reasoning content.
    #   @return [Types::HarnessReasoningContentBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessContentBlock AWS API Documentation
    #
    class HarnessContentBlock < Struct.new(
      :text,
      :tool_use,
      :tool_result,
      :reasoning_content,
      :unknown)
      SENSITIVE = [:text, :reasoning_content]
      include Aws::Structure
      include Aws::Structure::Union

      class Text < HarnessContentBlock; end
      class ToolUse < HarnessContentBlock; end
      class ToolResult < HarnessContentBlock; end
      class ReasoningContent < HarnessContentBlock; end
      class Unknown < HarnessContentBlock; end
    end

    # A delta update to a content block.
    #
    # @note HarnessContentBlockDelta is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of HarnessContentBlockDelta corresponding to the set member.
    #
    # @!attribute [rw] text
    #   A text delta.
    #   @return [String]
    #
    # @!attribute [rw] tool_use
    #   A tool use input delta.
    #   @return [Types::HarnessToolUseBlockDelta]
    #
    # @!attribute [rw] tool_result
    #   A tool result delta.
    #   @return [Array<Types::HarnessToolResultBlockDelta>]
    #
    # @!attribute [rw] reasoning_content
    #   A reasoning content delta.
    #   @return [Types::HarnessReasoningContentBlockDelta]
    #
    # @!attribute [rw] tool_result_metadata
    #   A tool result metadata delta.
    #   @return [Types::HarnessToolResultMetadataBlockDelta]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessContentBlockDelta AWS API Documentation
    #
    class HarnessContentBlockDelta < Struct.new(
      :text,
      :tool_use,
      :tool_result,
      :reasoning_content,
      :tool_result_metadata,
      :unknown)
      SENSITIVE = [:text, :reasoning_content]
      include Aws::Structure
      include Aws::Structure::Union

      class Text < HarnessContentBlockDelta; end
      class ToolUse < HarnessContentBlockDelta; end
      class ToolResult < HarnessContentBlockDelta; end
      class ReasoningContent < HarnessContentBlockDelta; end
      class ToolResultMetadata < HarnessContentBlockDelta; end
      class Unknown < HarnessContentBlockDelta; end
    end

    # Event containing a delta update to a content block.
    #
    # @!attribute [rw] content_block_index
    #   The index of the content block being updated.
    #   @return [Integer]
    #
    # @!attribute [rw] delta
    #   The delta payload.
    #   @return [Types::HarnessContentBlockDelta]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessContentBlockDeltaEvent AWS API Documentation
    #
    class HarnessContentBlockDeltaEvent < Struct.new(
      :content_block_index,
      :delta,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The start payload for a content block.
    #
    # @note HarnessContentBlockStart is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of HarnessContentBlockStart corresponding to the set member.
    #
    # @!attribute [rw] tool_use
    #   Start of a tool use content block.
    #   @return [Types::HarnessToolUseBlockStart]
    #
    # @!attribute [rw] tool_result
    #   Start of a tool result content block.
    #   @return [Types::HarnessToolResultBlockStart]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessContentBlockStart AWS API Documentation
    #
    class HarnessContentBlockStart < Struct.new(
      :tool_use,
      :tool_result,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ToolUse < HarnessContentBlockStart; end
      class ToolResult < HarnessContentBlockStart; end
      class Unknown < HarnessContentBlockStart; end
    end

    # Event indicating the start of a content block.
    #
    # @!attribute [rw] content_block_index
    #   The index of the content block within the message.
    #   @return [Integer]
    #
    # @!attribute [rw] start
    #   The content block start payload.
    #   @return [Types::HarnessContentBlockStart]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessContentBlockStartEvent AWS API Documentation
    #
    class HarnessContentBlockStartEvent < Struct.new(
      :content_block_index,
      :start,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Event indicating the end of a content block.
    #
    # @!attribute [rw] content_block_index
    #   The index of the content block that ended.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessContentBlockStopEvent AWS API Documentation
    #
    class HarnessContentBlockStopEvent < Struct.new(
      :content_block_index,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Authentication method for calling a Gateway.
    #
    # @note HarnessGatewayOutboundAuth is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] aws_iam
    #   SigV4-sign requests using the agent's execution role.
    #   @return [Types::Unit]
    #
    # @!attribute [rw] none
    #   No authentication.
    #   @return [Types::Unit]
    #
    # @!attribute [rw] oauth
    #   OAuth 2.0 authentication via AgentCore Identity.
    #   @return [Types::OAuthCredentialProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessGatewayOutboundAuth AWS API Documentation
    #
    class HarnessGatewayOutboundAuth < Struct.new(
      :aws_iam,
      :none,
      :oauth,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AwsIam < HarnessGatewayOutboundAuth; end
      class None < HarnessGatewayOutboundAuth; end
      class Oauth < HarnessGatewayOutboundAuth; end
      class Unknown < HarnessGatewayOutboundAuth; end
    end

    # Configuration for a Google Gemini model provider. Requires an API key
    # stored in AgentCore Identity.
    #
    # @!attribute [rw] model_id
    #   The Gemini model ID.
    #   @return [String]
    #
    # @!attribute [rw] api_key_arn
    #   The ARN of your Gemini API key on AgentCore Identity.
    #   @return [String]
    #
    # @!attribute [rw] max_tokens
    #   The maximum number of tokens to allow in the generated response per
    #   iteration.
    #   @return [Integer]
    #
    # @!attribute [rw] temperature
    #   The temperature to set when calling the model.
    #   @return [Float]
    #
    # @!attribute [rw] top_p
    #   The topP set when calling the model.
    #   @return [Float]
    #
    # @!attribute [rw] top_k
    #   The topK set when calling the model.
    #   @return [Integer]
    #
    # @!attribute [rw] additional_params
    #   Provider-specific parameters passed through to the Gemini model
    #   provider unchanged.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessGeminiModelConfig AWS API Documentation
    #
    class HarnessGeminiModelConfig < Struct.new(
      :model_id,
      :api_key_arn,
      :max_tokens,
      :temperature,
      :top_p,
      :top_k,
      :additional_params)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for an inline function tool. When the agent calls this
    # tool, the tool call is returned to the caller for external execution.
    #
    # @!attribute [rw] description
    #   Description of what the tool does, provided to the model.
    #   @return [String]
    #
    # @!attribute [rw] input_schema
    #   JSON Schema describing the tool's input parameters.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessInlineFunctionConfig AWS API Documentation
    #
    class HarnessInlineFunctionConfig < Struct.new(
      :description,
      :input_schema)
      SENSITIVE = [:description, :input_schema]
      include Aws::Structure
    end

    # Configuration for a LiteLLM model provider, enabling connection to
    # third-party model providers.
    #
    # @!attribute [rw] model_id
    #   The LiteLLM model identifier (e.g., "anthropic/claude-3-sonnet").
    #   @return [String]
    #
    # @!attribute [rw] api_key_arn
    #   The ARN of the API key in AgentCore Identity for authenticating with
    #   the model provider.
    #   @return [String]
    #
    # @!attribute [rw] api_base
    #   The base URL for the model provider's API endpoint.
    #   @return [String]
    #
    # @!attribute [rw] max_tokens
    #   The maximum number of tokens to allow in the generated response per
    #   iteration.
    #   @return [Integer]
    #
    # @!attribute [rw] temperature
    #   The temperature to set when calling the model.
    #   @return [Float]
    #
    # @!attribute [rw] top_p
    #   The topP set when calling the model.
    #   @return [Float]
    #
    # @!attribute [rw] additional_params
    #   Provider-specific parameters passed through to the model provider
    #   unchanged.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessLiteLlmModelConfig AWS API Documentation
    #
    class HarnessLiteLlmModelConfig < Struct.new(
      :model_id,
      :api_key_arn,
      :api_base,
      :max_tokens,
      :temperature,
      :top_p,
      :additional_params)
      SENSITIVE = [:api_base]
      include Aws::Structure
    end

    # A message in the conversation.
    #
    # @!attribute [rw] role
    #   The role of the message sender.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content blocks of the message.
    #   @return [Array<Types::HarnessContentBlock>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessMessage AWS API Documentation
    #
    class HarnessMessage < Struct.new(
      :role,
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Event indicating the start of a message.
    #
    # @!attribute [rw] role
    #   The role of the message sender.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessMessageStartEvent AWS API Documentation
    #
    class HarnessMessageStartEvent < Struct.new(
      :role,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Event indicating the end of a message.
    #
    # @!attribute [rw] stop_reason
    #   The reason the agent stopped generating.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessMessageStopEvent AWS API Documentation
    #
    class HarnessMessageStopEvent < Struct.new(
      :stop_reason,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Token usage and latency metrics for the invocation.
    #
    # @!attribute [rw] usage
    #   Token usage counts.
    #   @return [Types::HarnessTokenUsage]
    #
    # @!attribute [rw] metrics
    #   Latency metrics.
    #   @return [Types::HarnessStreamMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessMetadataEvent AWS API Documentation
    #
    class HarnessMetadataEvent < Struct.new(
      :usage,
      :metrics,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specification of which model to use.
    #
    # @note HarnessModelConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] bedrock_model_config
    #   Configuration for an Amazon Bedrock model.
    #   @return [Types::HarnessBedrockModelConfig]
    #
    # @!attribute [rw] open_ai_model_config
    #   Configuration for an OpenAI model.
    #   @return [Types::HarnessOpenAiModelConfig]
    #
    # @!attribute [rw] gemini_model_config
    #   Configuration for a Google Gemini model.
    #   @return [Types::HarnessGeminiModelConfig]
    #
    # @!attribute [rw] lite_llm_model_config
    #   The LiteLLM model configuration for connecting to third-party model
    #   providers.
    #   @return [Types::HarnessLiteLlmModelConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessModelConfiguration AWS API Documentation
    #
    class HarnessModelConfiguration < Struct.new(
      :bedrock_model_config,
      :open_ai_model_config,
      :gemini_model_config,
      :lite_llm_model_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class BedrockModelConfig < HarnessModelConfiguration; end
      class OpenAiModelConfig < HarnessModelConfiguration; end
      class GeminiModelConfig < HarnessModelConfiguration; end
      class LiteLlmModelConfig < HarnessModelConfiguration; end
      class Unknown < HarnessModelConfiguration; end
    end

    # Configuration for an OpenAI model provider. Requires an API key stored
    # in AgentCore Identity.
    #
    # @!attribute [rw] model_id
    #   The OpenAI model ID.
    #   @return [String]
    #
    # @!attribute [rw] api_key_arn
    #   The ARN of your OpenAI API key on AgentCore Identity.
    #   @return [String]
    #
    # @!attribute [rw] max_tokens
    #   The maximum number of tokens to allow in the generated response per
    #   iteration.
    #   @return [Integer]
    #
    # @!attribute [rw] temperature
    #   The temperature to set when calling the model.
    #   @return [Float]
    #
    # @!attribute [rw] top_p
    #   The topP set when calling the model.
    #   @return [Float]
    #
    # @!attribute [rw] api_format
    #   The API format to use when calling the OpenAI provider.
    #   @return [String]
    #
    # @!attribute [rw] additional_params
    #   Provider-specific parameters passed through to the model provider
    #   unchanged.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessOpenAiModelConfig AWS API Documentation
    #
    class HarnessOpenAiModelConfig < Struct.new(
      :model_id,
      :api_key_arn,
      :max_tokens,
      :temperature,
      :top_p,
      :api_format,
      :additional_params)
      SENSITIVE = []
      include Aws::Structure
    end

    # Reasoning content from the model.
    #
    # @note HarnessReasoningContentBlock is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] reasoning_text
    #   The reasoning text.
    #   @return [Types::HarnessReasoningTextBlock]
    #
    # @!attribute [rw] redacted_content
    #   Redacted reasoning content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessReasoningContentBlock AWS API Documentation
    #
    class HarnessReasoningContentBlock < Struct.new(
      :reasoning_text,
      :redacted_content,
      :unknown)
      SENSITIVE = [:reasoning_text]
      include Aws::Structure
      include Aws::Structure::Union

      class ReasoningText < HarnessReasoningContentBlock; end
      class RedactedContent < HarnessReasoningContentBlock; end
      class Unknown < HarnessReasoningContentBlock; end
    end

    # A delta update to a reasoning content block.
    #
    # @note HarnessReasoningContentBlockDelta is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of HarnessReasoningContentBlockDelta corresponding to the set member.
    #
    # @!attribute [rw] text
    #   Reasoning text delta.
    #   @return [String]
    #
    # @!attribute [rw] redacted_content
    #   Redacted reasoning content.
    #   @return [String]
    #
    # @!attribute [rw] signature
    #   Signature for the reasoning content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessReasoningContentBlockDelta AWS API Documentation
    #
    class HarnessReasoningContentBlockDelta < Struct.new(
      :text,
      :redacted_content,
      :signature,
      :unknown)
      SENSITIVE = [:redacted_content]
      include Aws::Structure
      include Aws::Structure::Union

      class Text < HarnessReasoningContentBlockDelta; end
      class RedactedContent < HarnessReasoningContentBlockDelta; end
      class Signature < HarnessReasoningContentBlockDelta; end
      class Unknown < HarnessReasoningContentBlockDelta; end
    end

    # A block of reasoning text from the model.
    #
    # @!attribute [rw] text
    #   The reasoning text.
    #   @return [String]
    #
    # @!attribute [rw] signature
    #   Signature for verifying the reasoning content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessReasoningTextBlock AWS API Documentation
    #
    class HarnessReasoningTextBlock < Struct.new(
      :text,
      :signature)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for connecting to a remote MCP server.
    #
    # @!attribute [rw] url
    #   URL of the MCP endpoint.
    #   @return [String]
    #
    # @!attribute [rw] headers
    #   Custom headers to include when connecting to the remote MCP server.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessRemoteMcpConfig AWS API Documentation
    #
    class HarnessRemoteMcpConfig < Struct.new(
      :url,
      :headers)
      SENSITIVE = [:url, :headers]
      include Aws::Structure
    end

    # A skill available to the agent.
    #
    # @note HarnessSkill is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] path
    #   The filesystem path to the skill definition.
    #   @return [String]
    #
    # @!attribute [rw] s3
    #   An S3 source containing the skill.
    #   @return [Types::HarnessSkillS3Source]
    #
    # @!attribute [rw] git
    #   A git repository containing the skill.
    #   @return [Types::HarnessSkillGitSource]
    #
    # @!attribute [rw] aws_skills
    #   AWS Skills baked into the Harness's underlying Runtime.
    #   @return [Types::HarnessSkillAwsSkillsSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessSkill AWS API Documentation
    #
    class HarnessSkill < Struct.new(
      :path,
      :s3,
      :git,
      :aws_skills,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Path < HarnessSkill; end
      class S3 < HarnessSkill; end
      class Git < HarnessSkill; end
      class AwsSkills < HarnessSkill; end
      class Unknown < HarnessSkill; end
    end

    # Passed to show that AWS Skills should be included.
    #
    # @!attribute [rw] paths
    #   Optionally filter allowed skills with glob syntax, e.g.,
    #   \['core-skills/*'\].
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessSkillAwsSkillsSource AWS API Documentation
    #
    class HarnessSkillAwsSkillsSource < Struct.new(
      :paths)
      SENSITIVE = []
      include Aws::Structure
    end

    # Authentication configuration for accessing a private git repository.
    #
    # @!attribute [rw] credential_arn
    #   The ARN of the credential in AgentCore Identity containing the
    #   password or personal access token.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   Username for authentication. Defaults to 'oauth2' if not
    #   specified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessSkillGitAuth AWS API Documentation
    #
    class HarnessSkillGitAuth < Struct.new(
      :credential_arn,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # A git repository source for a skill.
    #
    # @!attribute [rw] url
    #   The HTTPS URL of the git repository.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   Subdirectory within the repository containing the skill.
    #   @return [String]
    #
    # @!attribute [rw] auth
    #   Authentication configuration for private repositories.
    #   @return [Types::HarnessSkillGitAuth]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessSkillGitSource AWS API Documentation
    #
    class HarnessSkillGitSource < Struct.new(
      :url,
      :path,
      :auth)
      SENSITIVE = []
      include Aws::Structure
    end

    # An S3 source for a skill.
    #
    # @!attribute [rw] uri
    #   The S3 URI pointing to the skill directory (e.g.,
    #   s3://bucket/skills/my-skill/).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessSkillS3Source AWS API Documentation
    #
    class HarnessSkillS3Source < Struct.new(
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Latency metrics for the invocation.
    #
    # @!attribute [rw] latency_ms
    #   The end-to-end latency of the invocation in milliseconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessStreamMetrics AWS API Documentation
    #
    class HarnessStreamMetrics < Struct.new(
      :latency_ms)
      SENSITIVE = []
      include Aws::Structure
    end

    # A content block in the system prompt.
    #
    # @note HarnessSystemContentBlock is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] text
    #   The text content of the system prompt block.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessSystemContentBlock AWS API Documentation
    #
    class HarnessSystemContentBlock < Struct.new(
      :text,
      :unknown)
      SENSITIVE = [:text]
      include Aws::Structure
      include Aws::Structure::Union

      class Text < HarnessSystemContentBlock; end
      class Unknown < HarnessSystemContentBlock; end
    end

    # Token usage counts for the invocation.
    #
    # @!attribute [rw] input_tokens
    #   The number of input tokens consumed.
    #   @return [Integer]
    #
    # @!attribute [rw] output_tokens
    #   The number of output tokens generated.
    #   @return [Integer]
    #
    # @!attribute [rw] total_tokens
    #   The total number of tokens consumed.
    #   @return [Integer]
    #
    # @!attribute [rw] cache_read_input_tokens
    #   The number of input tokens read from cache.
    #   @return [Integer]
    #
    # @!attribute [rw] cache_write_input_tokens
    #   The number of input tokens written to cache.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessTokenUsage AWS API Documentation
    #
    class HarnessTokenUsage < Struct.new(
      :input_tokens,
      :output_tokens,
      :total_tokens,
      :cache_read_input_tokens,
      :cache_write_input_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tool available to the agent loop.
    #
    # @!attribute [rw] type
    #   The type of tool.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Unique name for the tool. If not provided, a name will be inferred
    #   or generated.
    #   @return [String]
    #
    # @!attribute [rw] config
    #   Tool-specific configuration.
    #   @return [Types::HarnessToolConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessTool AWS API Documentation
    #
    class HarnessTool < Struct.new(
      :type,
      :name,
      :config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration union for different tool types.
    #
    # @note HarnessToolConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] remote_mcp
    #   Configuration for remote MCP server.
    #   @return [Types::HarnessRemoteMcpConfig]
    #
    # @!attribute [rw] agent_core_browser
    #   Configuration for AgentCore Browser.
    #   @return [Types::HarnessAgentCoreBrowserConfig]
    #
    # @!attribute [rw] agent_core_gateway
    #   Configuration for AgentCore Gateway.
    #   @return [Types::HarnessAgentCoreGatewayConfig]
    #
    # @!attribute [rw] inline_function
    #   Configuration for an inline function tool.
    #   @return [Types::HarnessInlineFunctionConfig]
    #
    # @!attribute [rw] agent_core_code_interpreter
    #   Configuration for AgentCore Code Interpreter.
    #   @return [Types::HarnessAgentCoreCodeInterpreterConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessToolConfiguration AWS API Documentation
    #
    class HarnessToolConfiguration < Struct.new(
      :remote_mcp,
      :agent_core_browser,
      :agent_core_gateway,
      :inline_function,
      :agent_core_code_interpreter,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class RemoteMcp < HarnessToolConfiguration; end
      class AgentCoreBrowser < HarnessToolConfiguration; end
      class AgentCoreGateway < HarnessToolConfiguration; end
      class InlineFunction < HarnessToolConfiguration; end
      class AgentCoreCodeInterpreter < HarnessToolConfiguration; end
      class Unknown < HarnessToolConfiguration; end
    end

    # The result of a tool execution.
    #
    # @!attribute [rw] tool_use_id
    #   The tool use ID that this result corresponds to.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the tool result.
    #   @return [Array<Types::HarnessToolResultContentBlock>]
    #
    # @!attribute [rw] status
    #   The status of the tool execution.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of tool use that produced this result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessToolResultBlock AWS API Documentation
    #
    class HarnessToolResultBlock < Struct.new(
      :tool_use_id,
      :content,
      :status,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A delta update to a tool result content block.
    #
    # @note HarnessToolResultBlockDelta is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of HarnessToolResultBlockDelta corresponding to the set member.
    #
    # @!attribute [rw] text
    #   A text tool result delta.
    #   @return [String]
    #
    # @!attribute [rw] json
    #   A JSON tool result delta.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessToolResultBlockDelta AWS API Documentation
    #
    class HarnessToolResultBlockDelta < Struct.new(
      :text,
      :json,
      :unknown)
      SENSITIVE = [:text, :json]
      include Aws::Structure
      include Aws::Structure::Union

      class Text < HarnessToolResultBlockDelta; end
      class Json < HarnessToolResultBlockDelta; end
      class Unknown < HarnessToolResultBlockDelta; end
    end

    # Start payload for a tool result content block.
    #
    # @!attribute [rw] tool_use_id
    #   The tool use ID that this result corresponds to.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the tool execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessToolResultBlockStart AWS API Documentation
    #
    class HarnessToolResultBlockStart < Struct.new(
      :tool_use_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A content block within a tool result.
    #
    # @note HarnessToolResultContentBlock is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] text
    #   Text content.
    #   @return [String]
    #
    # @!attribute [rw] json
    #   JSON content.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessToolResultContentBlock AWS API Documentation
    #
    class HarnessToolResultContentBlock < Struct.new(
      :text,
      :json,
      :unknown)
      SENSITIVE = [:text, :json]
      include Aws::Structure
      include Aws::Structure::Union

      class Text < HarnessToolResultContentBlock; end
      class Json < HarnessToolResultContentBlock; end
      class Unknown < HarnessToolResultContentBlock; end
    end

    # Delta payload for a tool result metadata.
    #
    # @!attribute [rw] metadata
    #   The partial JSON-string fragment of the tool result metadata.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessToolResultMetadataBlockDelta AWS API Documentation
    #
    class HarnessToolResultMetadataBlockDelta < Struct.new(
      :metadata)
      SENSITIVE = [:metadata]
      include Aws::Structure
    end

    # A tool use request from the model.
    #
    # @!attribute [rw] name
    #   The name of the tool to call.
    #   @return [String]
    #
    # @!attribute [rw] tool_use_id
    #   The unique ID of this tool use.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The JSON input to pass to the tool.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] type
    #   The type of tool use.
    #   @return [String]
    #
    # @!attribute [rw] server_name
    #   The name of the MCP server providing this tool.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessToolUseBlock AWS API Documentation
    #
    class HarnessToolUseBlock < Struct.new(
      :name,
      :tool_use_id,
      :input,
      :type,
      :server_name)
      SENSITIVE = [:input]
      include Aws::Structure
    end

    # Delta payload for tool use input.
    #
    # @!attribute [rw] input
    #   The partial JSON input for the tool call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessToolUseBlockDelta AWS API Documentation
    #
    class HarnessToolUseBlockDelta < Struct.new(
      :input)
      SENSITIVE = [:input]
      include Aws::Structure
    end

    # Start payload for a tool use content block.
    #
    # @!attribute [rw] tool_use_id
    #   The unique ID of this tool use.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the tool being called.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of tool use.
    #   @return [String]
    #
    # @!attribute [rw] server_name
    #   The name of the MCP server providing this tool.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/HarnessToolUseBlockStart AWS API Documentation
    #
    class HarnessToolUseBlockStart < Struct.new(
      :tool_use_id,
      :name,
      :type,
      :server_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Inline ground truth data containing assertions, expected trajectories,
    # and per-turn expected responses.
    #
    # @!attribute [rw] assertions
    #   Assertions for evaluation, reuses common model
    #   EvaluationContentList.
    #   @return [Array<Types::EvaluationContent>]
    #
    # @!attribute [rw] expected_trajectory
    #   The expected tool call sequence for trajectory evaluation.
    #   @return [Types::EvaluationExpectedTrajectory]
    #
    # @!attribute [rw] turns
    #   A list of per-turn ground truth data, each containing an input
    #   prompt and expected response.
    #   @return [Array<Types::GroundTruthTurn>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InlineGroundTruth AWS API Documentation
    #
    class InlineGroundTruth < Struct.new(
      :assertions,
      :expected_trajectory,
      :turns)
      SENSITIVE = []
      include Aws::Structure
    end

    # A block of input content.
    #
    # @!attribute [rw] path
    #   The path to the input content.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The text input content.
    #   @return [String]
    #
    # @!attribute [rw] blob
    #   The binary input content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InputContentBlock AWS API Documentation
    #
    class InputContentBlock < Struct.new(
      :path,
      :text,
      :blob)
      SENSITIVE = [:blob]
      include Aws::Structure
    end

    # A reference to an insight analysis to run against sessions during
    # batch evaluation. Insights provide deeper analysis beyond individual
    # evaluator scores, including failure detection, user intent clustering,
    # and execution summarization.
    #
    # @!attribute [rw] insight_id
    #   The unique identifier of the insight to run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/Insight AWS API Documentation
    #
    class Insight < Struct.new(
      :insight_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A signal indicating a detected failure within a span.
    #
    # @!attribute [rw] category
    #   The failure category classification for this signal.
    #   @return [String]
    #
    # @!attribute [rw] evidence
    #   The evidence supporting the failure detection.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The confidence score of the failure detection.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InsightsFailureSignal AWS API Documentation
    #
    class InsightsFailureSignal < Struct.new(
      :category,
      :evidence,
      :confidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # The exception that occurs when the service encounters an unexpected
    # internal error. This is a temporary condition that will resolve itself
    # with retries. We recommend implementing exponential backoff retry
    # logic in your application.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by AgentCore.
    # Check your input values and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request for InvokeAgentRuntimeCommand operation.
    #
    # @!attribute [rw] content_type
    #   The MIME type of the input data in the request payload. This tells
    #   the agent runtime how to interpret the payload data. Common values
    #   include application/json for JSON data.
    #   @return [String]
    #
    # @!attribute [rw] accept
    #   The desired MIME type for the response from the agent runtime
    #   command. This tells the agent runtime what format to use for the
    #   response data. Common values include application/json for JSON data.
    #   @return [String]
    #
    # @!attribute [rw] runtime_session_id
    #   The unique identifier of the runtime session in which to execute the
    #   command. This session ID is used to maintain state and context
    #   across multiple command invocations.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] trace_id
    #   The trace identifier for request tracking.
    #   @return [String]
    #
    # @!attribute [rw] trace_parent
    #   The parent trace information for distributed tracing.
    #   @return [String]
    #
    # @!attribute [rw] trace_state
    #   The trace state information for distributed tracing.
    #   @return [String]
    #
    # @!attribute [rw] baggage
    #   Additional context information for distributed tracing.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_arn
    #   The Amazon Resource Name (ARN) of the agent runtime on which to
    #   execute the command. This identifies the specific agent runtime
    #   environment where the command will run.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   The qualifier to use for the agent runtime. This is an endpoint name
    #   that points to a specific version. If not specified, Amazon Bedrock
    #   AgentCore uses the default endpoint of the agent runtime.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The identifier of the Amazon Web Services account for the agent
    #   runtime resource. This parameter is required when you specify an
    #   agent ID instead of the full ARN for `agentRuntimeArn`.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The request body containing the command to execute and optional
    #   configuration parameters such as timeout settings.
    #   @return [Types::InvokeAgentRuntimeCommandRequestBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InvokeAgentRuntimeCommandRequest AWS API Documentation
    #
    class InvokeAgentRuntimeCommandRequest < Struct.new(
      :content_type,
      :accept,
      :runtime_session_id,
      :trace_id,
      :trace_parent,
      :trace_state,
      :baggage,
      :agent_runtime_arn,
      :qualifier,
      :account_id,
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request body structure for the `InvokeAgentRuntimeCommand`
    # operation, containing the command to execute and optional
    # configuration parameters.
    #
    # @!attribute [rw] command
    #   The shell command to execute on the agent runtime. This command is
    #   executed in the runtime environment and its output is streamed back
    #   to the caller.
    #   @return [String]
    #
    # @!attribute [rw] timeout
    #   The maximum duration in seconds to wait for the command to complete.
    #   If the command execution exceeds this timeout, it will be
    #   terminated. Default is 300 seconds. Minimum is 1 second. Maximum is
    #   3600 seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InvokeAgentRuntimeCommandRequestBody AWS API Documentation
    #
    class InvokeAgentRuntimeCommandRequestBody < Struct.new(
      :command,
      :timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response for InvokeAgentRuntimeCommand operation.
    #
    # @!attribute [rw] runtime_session_id
    #   The unique identifier of the runtime session in which the command
    #   was executed.
    #   @return [String]
    #
    # @!attribute [rw] trace_id
    #   The trace identifier for request tracking.
    #   @return [String]
    #
    # @!attribute [rw] trace_parent
    #   The parent trace information for distributed tracing.
    #   @return [String]
    #
    # @!attribute [rw] trace_state
    #   The trace state information for distributed tracing.
    #   @return [String]
    #
    # @!attribute [rw] baggage
    #   Additional context information for distributed tracing.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the response data. This indicates how to interpret
    #   the response data. Common values include application/json for JSON
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The HTTP status code of the response. A status code of 200 indicates
    #   a successful operation. Other status codes indicate various error
    #   conditions.
    #   @return [Integer]
    #
    # @!attribute [rw] stream
    #   The streaming output from the command execution. This stream
    #   contains events that provide real-time updates including standard
    #   output, standard error, and completion status.
    #   @return [Types::InvokeAgentRuntimeCommandStreamOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InvokeAgentRuntimeCommandResponse AWS API Documentation
    #
    class InvokeAgentRuntimeCommandResponse < Struct.new(
      :runtime_session_id,
      :trace_id,
      :trace_parent,
      :trace_state,
      :baggage,
      :content_type,
      :status_code,
      :stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   The MIME type of the input data in the payload. This tells the agent
    #   runtime how to interpret the payload data. Common values include
    #   application/json for JSON data.
    #   @return [String]
    #
    # @!attribute [rw] accept
    #   The desired MIME type for the response from the agent runtime. This
    #   tells the agent runtime what format to use for the response data.
    #   Common values include application/json for JSON data.
    #   @return [String]
    #
    # @!attribute [rw] mcp_session_id
    #   The identifier of the MCP session.
    #   @return [String]
    #
    # @!attribute [rw] runtime_session_id
    #   The identifier of the runtime session.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] mcp_protocol_version
    #   The version of the MCP protocol being used.
    #   @return [String]
    #
    # @!attribute [rw] mcp_method
    #   The MCP method being invoked. For example, `tools/call`,
    #   `resources/read`, or `prompts/get`.
    #   @return [String]
    #
    # @!attribute [rw] mcp_name
    #   The name of the MCP resource, tool, or prompt being accessed. The
    #   value depends on the method:
    #
    #   * `tools/call` – The tool name.
    #
    #   * `resources/read` – The resource URI.
    #
    #   * `prompts/get` – The prompt name.
    #   @return [String]
    #
    # @!attribute [rw] runtime_user_id
    #   The identifier of the runtime user.
    #   @return [String]
    #
    # @!attribute [rw] trace_id
    #   The trace identifier for request tracking.
    #   @return [String]
    #
    # @!attribute [rw] trace_parent
    #   The parent trace information for distributed tracing.
    #   @return [String]
    #
    # @!attribute [rw] trace_state
    #   The trace state information for distributed tracing.
    #   @return [String]
    #
    # @!attribute [rw] baggage
    #   Additional context information for distributed tracing.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_arn
    #   The identifier of the agent runtime to invoke. You can specify
    #   either the full Amazon Web Services Resource Name (ARN) or the agent
    #   ID. If you use the agent ID, you must also provide the `accountId`
    #   query parameter.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   The qualifier to use for the agent runtime. This is an endpoint name
    #   that points to a specific version. If not specified, Amazon Bedrock
    #   AgentCore uses the default endpoint of the agent runtime.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The identifier of the Amazon Web Services account for the agent
    #   runtime resource. This parameter is required when you specify an
    #   agent ID instead of the full ARN for `agentRuntimeArn`.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The input data to send to the agent runtime. The format of this data
    #   depends on the specific agent configuration and must match the
    #   specified content type. For most agents, this is a JSON object
    #   containing the user's request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InvokeAgentRuntimeRequest AWS API Documentation
    #
    class InvokeAgentRuntimeRequest < Struct.new(
      :content_type,
      :accept,
      :mcp_session_id,
      :runtime_session_id,
      :mcp_protocol_version,
      :mcp_method,
      :mcp_name,
      :runtime_user_id,
      :trace_id,
      :trace_parent,
      :trace_state,
      :baggage,
      :agent_runtime_arn,
      :qualifier,
      :account_id,
      :payload)
      SENSITIVE = [:payload]
      include Aws::Structure
    end

    # @!attribute [rw] runtime_session_id
    #   The identifier of the runtime session.
    #   @return [String]
    #
    # @!attribute [rw] mcp_session_id
    #   The identifier of the MCP session.
    #   @return [String]
    #
    # @!attribute [rw] mcp_protocol_version
    #   The version of the MCP protocol being used.
    #   @return [String]
    #
    # @!attribute [rw] trace_id
    #   The trace identifier for request tracking.
    #   @return [String]
    #
    # @!attribute [rw] trace_parent
    #   The parent trace information for distributed tracing.
    #   @return [String]
    #
    # @!attribute [rw] trace_state
    #   The trace state information for distributed tracing.
    #   @return [String]
    #
    # @!attribute [rw] baggage
    #   Additional context information for distributed tracing.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the response data. This indicates how to interpret
    #   the response data. Common values include application/json for JSON
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] response
    #   The response data from the agent runtime. The format of this data
    #   depends on the specific agent configuration and the requested accept
    #   type. For most agents, this is a JSON object containing the agent's
    #   response to the user's request.
    #   @return [IO]
    #
    # @!attribute [rw] status_code
    #   The HTTP status code of the response. A status code of 200 indicates
    #   a successful operation. Other status codes indicate various error
    #   conditions.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InvokeAgentRuntimeResponse AWS API Documentation
    #
    class InvokeAgentRuntimeResponse < Struct.new(
      :runtime_session_id,
      :mcp_session_id,
      :mcp_protocol_version,
      :trace_id,
      :trace_parent,
      :trace_state,
      :baggage,
      :content_type,
      :response,
      :status_code)
      SENSITIVE = [:response]
      include Aws::Structure
    end

    # Request for the InvokeBrowser operation.
    #
    # @!attribute [rw] browser_identifier
    #   The unique identifier of the browser associated with the session.
    #   This must match the identifier used when creating the session with
    #   `StartBrowserSession`.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the browser session on which to perform the
    #   action. This must be an active session created with
    #   `StartBrowserSession`.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The browser action to perform. Exactly one member of the
    #   `BrowserAction` union must be set per request.
    #   @return [Types::BrowserAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InvokeBrowserRequest AWS API Documentation
    #
    class InvokeBrowserRequest < Struct.new(
      :browser_identifier,
      :session_id,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response for the InvokeBrowser operation.
    #
    # @!attribute [rw] result
    #   The result of the browser action. The member set in the result
    #   corresponds to the action that was performed.
    #   @return [Types::BrowserActionResult]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the browser session on which the action was
    #   performed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InvokeBrowserResponse AWS API Documentation
    #
    class InvokeBrowserResponse < Struct.new(
      :result,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_interpreter_identifier
    #   The unique identifier of the code interpreter associated with the
    #   session. This must match the identifier used when creating the
    #   session with `StartCodeInterpreterSession`.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the code interpreter session to use. This
    #   must be an active session created with
    #   `StartCodeInterpreterSession`. If the session has expired or been
    #   stopped, the request will fail.
    #   @return [String]
    #
    # @!attribute [rw] trace_id
    #   The trace identifier for request tracking.
    #   @return [String]
    #
    # @!attribute [rw] trace_parent
    #   The parent trace information for distributed tracing.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the code interpreter to invoke.
    #   @return [String]
    #
    # @!attribute [rw] arguments
    #   The arguments for the code interpreter. This includes the code to
    #   execute and any additional parameters such as the programming
    #   language, whether to clear the execution context, and other
    #   execution options. The structure of this parameter depends on the
    #   specific code interpreter being used.
    #   @return [Types::ToolArguments]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InvokeCodeInterpreterRequest AWS API Documentation
    #
    class InvokeCodeInterpreterRequest < Struct.new(
      :code_interpreter_identifier,
      :session_id,
      :trace_id,
      :trace_parent,
      :name,
      :arguments)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The identifier of the code interpreter session.
    #   @return [String]
    #
    # @!attribute [rw] stream
    #   The stream containing the results of the code execution. This
    #   includes output, errors, and execution status.
    #   @return [Types::CodeInterpreterStreamOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InvokeCodeInterpreterResponse AWS API Documentation
    #
    class InvokeCodeInterpreterResponse < Struct.new(
      :session_id,
      :stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] harness_arn
    #   The ARN of the harness to invoke.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   The endpoint name to invoke. If omitted, the DEFAULT endpoint is
    #   used.
    #   @return [String]
    #
    # @!attribute [rw] runtime_session_id
    #   The session ID for the invocation. Use the same session ID across
    #   requests to continue a conversation.
    #   @return [String]
    #
    # @!attribute [rw] runtime_user_id
    #   An identifier for the end user making the request. This value is
    #   passed through to the runtime container.
    #   @return [String]
    #
    # @!attribute [rw] trace_parent
    #   W3C trace context parent header containing version, trace ID, parent
    #   span ID, and trace flags.
    #   @return [String]
    #
    # @!attribute [rw] trace_state
    #   W3C trace context state header for vendor-specific trace
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] trace_id
    #   Trace ID for maintaining observability through the operation.
    #   @return [String]
    #
    # @!attribute [rw] baggage
    #   W3C Baggage header for user-defined context propagation. Format:
    #   key1=value1,key2=value2
    #   @return [String]
    #
    # @!attribute [rw] messages
    #   The messages to send to the agent.
    #   @return [Array<Types::HarnessMessage>]
    #
    # @!attribute [rw] model
    #   The model configuration to use for this invocation. If specified,
    #   overrides the harness default.
    #   @return [Types::HarnessModelConfiguration]
    #
    # @!attribute [rw] system_prompt
    #   The system prompt to use for this invocation. If specified,
    #   overrides the harness default.
    #   @return [Array<Types::HarnessSystemContentBlock>]
    #
    # @!attribute [rw] tools
    #   The tools available to the agent for this invocation. If specified,
    #   overrides the harness default.
    #   @return [Array<Types::HarnessTool>]
    #
    # @!attribute [rw] skills
    #   The skills available to the agent for this invocation. If specified,
    #   overrides the harness default.
    #   @return [Array<Types::HarnessSkill>]
    #
    # @!attribute [rw] allowed_tools
    #   The tools that the agent is allowed to use for this invocation. If
    #   specified, overrides the harness default.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_iterations
    #   The maximum number of iterations the agent loop can execute. If
    #   specified, overrides the harness default.
    #   @return [Integer]
    #
    # @!attribute [rw] max_tokens
    #   The maximum number of tokens the agent can generate per iteration.
    #   If specified, overrides the harness default.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout_seconds
    #   The maximum duration in seconds for the agent loop execution. If
    #   specified, overrides the harness default.
    #   @return [Integer]
    #
    # @!attribute [rw] actor_id
    #   The actor ID for memory operations. Overrides the actor ID
    #   configured on the harness.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InvokeHarnessRequest AWS API Documentation
    #
    class InvokeHarnessRequest < Struct.new(
      :harness_arn,
      :qualifier,
      :runtime_session_id,
      :runtime_user_id,
      :trace_parent,
      :trace_state,
      :trace_id,
      :baggage,
      :messages,
      :model,
      :system_prompt,
      :tools,
      :skills,
      :allowed_tools,
      :max_iterations,
      :max_tokens,
      :timeout_seconds,
      :actor_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream
    #   The streaming output from the harness invocation.
    #   @return [Types::InvokeHarnessStreamOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InvokeHarnessResponse AWS API Documentation
    #
    class InvokeHarnessResponse < Struct.new(
      :stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # Arguments for a key press action.
    #
    # @!attribute [rw] key
    #   The key name to press (for example, `enter`, `tab`, `escape`).
    #   @return [String]
    #
    # @!attribute [rw] presses
    #   The number of times to press the key. Valid range: 1–100. Defaults
    #   to 1.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/KeyPressArguments AWS API Documentation
    #
    class KeyPressArguments < Struct.new(
      :key,
      :presses)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a key press action.
    #
    # @!attribute [rw] status
    #   The status of the action execution.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The error message. Present only when the action failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/KeyPressResult AWS API Documentation
    #
    class KeyPressResult < Struct.new(
      :status,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Arguments for a key shortcut action.
    #
    # @!attribute [rw] keys
    #   The key combination to press (for example, `["ctrl", "s"]`). Maximum
    #   5 keys.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/KeyShortcutArguments AWS API Documentation
    #
    class KeyShortcutArguments < Struct.new(
      :keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a key shortcut action.
    #
    # @!attribute [rw] status
    #   The status of the action execution.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The error message. Present only when the action failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/KeyShortcutResult AWS API Documentation
    #
    class KeyShortcutResult < Struct.new(
      :status,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Arguments for a key type action.
    #
    # @!attribute [rw] text
    #   The text string to type. Maximum length: 10,000 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/KeyTypeArguments AWS API Documentation
    #
    class KeyTypeArguments < Struct.new(
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a key type action.
    #
    # @!attribute [rw] status
    #   The status of the action execution.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The error message. Present only when the action failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/KeyTypeResult AWS API Documentation
    #
    class KeyTypeResult < Struct.new(
      :status,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Left expression of the event metadata filter.
    #
    # @note LeftExpression is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] metadata_key
    #   Key associated with the metadata in an event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/LeftExpression AWS API Documentation
    #
    class LeftExpression < Struct.new(
      :metadata_key,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MetadataKey < LeftExpression; end
      class Unknown < LeftExpression; end
    end

    # Represents different linked accounts that can be linked to an embedded
    # wallet. Supports email, SMS, JWT, and OAuth2 approaches.
    #
    # @note LinkedAccount is a union - when making an API calls you must set exactly one of the members.
    #
    # @note LinkedAccount is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of LinkedAccount corresponding to the set member.
    #
    # @!attribute [rw] email
    #   Email-based linked account.
    #   @return [Types::LinkedAccountEmail]
    #
    # @!attribute [rw] sms
    #   SMS-based linked account using phone number.
    #   @return [Types::LinkedAccountSms]
    #
    # @!attribute [rw] developer_jwt
    #   Developer JWT linked account with key ID and subject.
    #   @return [Types::LinkedAccountDeveloperJwt]
    #
    # @!attribute [rw] o_auth_2
    #   OAuth2 provider linked account (Google, Apple, X, Telegram, GitHub).
    #   @return [Types::LinkedAccountOAuth2]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/LinkedAccount AWS API Documentation
    #
    class LinkedAccount < Struct.new(
      :email,
      :sms,
      :developer_jwt,
      :o_auth_2,
      :unknown)
      SENSITIVE = [:email, :sms]
      include Aws::Structure
      include Aws::Structure::Union

      class Email < LinkedAccount; end
      class Sms < LinkedAccount; end
      class DeveloperJwt < LinkedAccount; end
      class OAuth2 < LinkedAccount; end
      class Unknown < LinkedAccount; end
    end

    # Authentication method using JWT with key ID and subject claims.
    #
    # @!attribute [rw] kid
    #   The key ID (kid) from the JWT header. Identifies which key was used
    #   to sign the JWT.
    #   @return [String]
    #
    # @!attribute [rw] sub
    #   The subject (sub) claim from the JWT payload. Identifies the
    #   principal that is the subject of the JWT.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/LinkedAccountDeveloperJwt AWS API Documentation
    #
    class LinkedAccountDeveloperJwt < Struct.new(
      :kid,
      :sub)
      SENSITIVE = []
      include Aws::Structure
    end

    # Linked account using an email address.
    #
    # @!attribute [rw] email_address
    #   The email address used for the linked account. Must be a valid email
    #   format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/LinkedAccountEmail AWS API Documentation
    #
    class LinkedAccountEmail < Struct.new(
      :email_address)
      SENSITIVE = [:email_address]
      include Aws::Structure
    end

    # Authentication method using OAuth2 providers. Supports Google, Apple,
    # X, Telegram, and GitHub providers.
    #
    # @note LinkedAccountOAuth2 is a union - when making an API calls you must set exactly one of the members.
    #
    # @note LinkedAccountOAuth2 is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of LinkedAccountOAuth2 corresponding to the set member.
    #
    # @!attribute [rw] google
    #   Google OAuth2 authentication.
    #   @return [Types::OAuth2Authentication]
    #
    # @!attribute [rw] apple
    #   Apple OAuth2 authentication.
    #   @return [Types::OAuth2Authentication]
    #
    # @!attribute [rw] x
    #   X (formerly Twitter) OAuth2 authentication.
    #   @return [Types::OAuth2Authentication]
    #
    # @!attribute [rw] telegram
    #   Telegram OAuth2 authentication.
    #   @return [Types::OAuth2Authentication]
    #
    # @!attribute [rw] github
    #   GitHub OAuth2 authentication.
    #   @return [Types::OAuth2Authentication]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/LinkedAccountOAuth2 AWS API Documentation
    #
    class LinkedAccountOAuth2 < Struct.new(
      :google,
      :apple,
      :x,
      :telegram,
      :github,
      :unknown)
      SENSITIVE = [:google, :apple, :x, :telegram, :github]
      include Aws::Structure
      include Aws::Structure::Union

      class Google < LinkedAccountOAuth2; end
      class Apple < LinkedAccountOAuth2; end
      class X < LinkedAccountOAuth2; end
      class Telegram < LinkedAccountOAuth2; end
      class Github < LinkedAccountOAuth2; end
      class Unknown < LinkedAccountOAuth2; end
    end

    # Linked account using a phone number in E.164 format.
    #
    # @!attribute [rw] phone_number
    #   The phone number in E.164 format (e.g., +1234567890).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/LinkedAccountSms AWS API Documentation
    #
    class LinkedAccountSms < Struct.new(
      :phone_number)
      SENSITIVE = [:phone_number]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListABTestsRequest AWS API Documentation
    #
    class ListABTestsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ab_tests
    #   The list of A/B test summaries.
    #   @return [Array<Types::ABTestSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListABTestsResponse AWS API Documentation
    #
    class ListABTestsResponse < Struct.new(
      :ab_tests,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_id
    #   The identifier of the AgentCore Memory resource for which to list
    #   actors.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. The
    #   default value is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListActorsInput AWS API Documentation
    #
    class ListActorsInput < Struct.new(
      :memory_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] actor_summaries
    #   The list of actor summaries.
    #   @return [Array<Types::ActorSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use in a subsequent request to get the next set of
    #   results. This value is null when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListActorsOutput AWS API Documentation
    #
    class ListActorsOutput < Struct.new(
      :actor_summaries,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListBatchEvaluationsRequest AWS API Documentation
    #
    class ListBatchEvaluationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_evaluations
    #   The list of batch evaluation summaries.
    #   @return [Array<Types::BatchEvaluationSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListBatchEvaluationsResponse AWS API Documentation
    #
    class ListBatchEvaluationsResponse < Struct.new(
      :batch_evaluations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] browser_identifier
    #   The unique identifier of the browser to list sessions for. If
    #   specified, only sessions for this browser are returned. If not
    #   specified, sessions for all browsers are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. The
    #   default value is 10. Valid values range from 1 to 100. To retrieve
    #   the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results. If not specified, Amazon Bedrock AgentCore returns the
    #   first page of results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the browser sessions to list. Valid values include
    #   ACTIVE, STOPPING, and STOPPED. If not specified, sessions with any
    #   status are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListBrowserSessionsRequest AWS API Documentation
    #
    class ListBrowserSessionsRequest < Struct.new(
      :browser_identifier,
      :max_results,
      :next_token,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of browser sessions that match the specified criteria.
    #   @return [Array<Types::BrowserSessionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use in a subsequent `ListBrowserSessions` request to
    #   get the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListBrowserSessionsResponse AWS API Documentation
    #
    class ListBrowserSessionsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_interpreter_identifier
    #   The unique identifier of the code interpreter to list sessions for.
    #   If specified, only sessions for this code interpreter are returned.
    #   If not specified, sessions for all code interpreters are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. The
    #   default value is 10. Valid values range from 1 to 100. To retrieve
    #   the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results. If not specified, Amazon Bedrock AgentCore returns the
    #   first page of results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the code interpreter sessions to list. Valid values
    #   include ACTIVE, STOPPING, and STOPPED. If not specified, sessions
    #   with any status are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListCodeInterpreterSessionsRequest AWS API Documentation
    #
    class ListCodeInterpreterSessionsRequest < Struct.new(
      :code_interpreter_identifier,
      :max_results,
      :next_token,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of code interpreter sessions that match the specified
    #   criteria.
    #   @return [Array<Types::CodeInterpreterSessionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use in a subsequent `ListCodeInterpreterSessions`
    #   request to get the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListCodeInterpreterSessionsResponse AWS API Documentation
    #
    class ListCodeInterpreterSessionsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_id
    #   The identifier of the AgentCore Memory resource for which to list
    #   events.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session for which to list events.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The identifier of the actor for which to list events.
    #   @return [String]
    #
    # @!attribute [rw] include_payloads
    #   Specifies whether to include event payloads in the response. Set to
    #   true to include payloads, or false to exclude them.
    #   @return [Boolean]
    #
    # @!attribute [rw] filter
    #   Filter criteria to apply when listing events.
    #   @return [Types::FilterInput]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. The
    #   default value is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListEventsInput AWS API Documentation
    #
    class ListEventsInput < Struct.new(
      :memory_id,
      :session_id,
      :actor_id,
      :include_payloads,
      :filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   The list of events that match the specified criteria.
    #   @return [Array<Types::Event>]
    #
    # @!attribute [rw] next_token
    #   The token to use in a subsequent request to get the next set of
    #   results. This value is null when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListEventsOutput AWS API Documentation
    #
    class ListEventsOutput < Struct.new(
      :events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_id
    #   The unique identifier of the memory to list extraction jobs for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. The
    #   default value is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   Filter criteria to apply when listing extraction jobs.
    #   @return [Types::ExtractionJobFilterInput]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListMemoryExtractionJobsInput AWS API Documentation
    #
    class ListMemoryExtractionJobsInput < Struct.new(
      :memory_id,
      :max_results,
      :filter,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   List of extraction job metadata matching the specified criteria.
    #   @return [Array<Types::ExtractionJobMetadata>]
    #
    # @!attribute [rw] next_token
    #   Token to retrieve the next page of results, if available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListMemoryExtractionJobsOutput AWS API Documentation
    #
    class ListMemoryExtractionJobsOutput < Struct.new(
      :jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_id
    #   The identifier of the AgentCore Memory resource for which to list
    #   memory records.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace prefix to filter memory records by. Returns all memory
    #   records in namespaces that start with the provided prefix. Either
    #   `namespace` or `namespacePath` is required.
    #   @return [String]
    #
    # @!attribute [rw] namespace_path
    #   Use namespacePath for hierarchical retrievals. Return all memory
    #   records where namespace falls under the same parent hierarchy.
    #   Either `namespace` or `namespacePath` is required.
    #   @return [String]
    #
    # @!attribute [rw] memory_strategy_id
    #   The memory strategy identifier to filter memory records by. If
    #   specified, only memory records with this strategy ID are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. The
    #   default value is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] metadata_filters
    #   A list of metadata filter expressions to scope the returned memory
    #   records.
    #   @return [Array<Types::MemoryMetadataFilterExpression>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListMemoryRecordsInput AWS API Documentation
    #
    class ListMemoryRecordsInput < Struct.new(
      :memory_id,
      :namespace,
      :namespace_path,
      :memory_strategy_id,
      :max_results,
      :next_token,
      :metadata_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_record_summaries
    #   The list of memory record summaries that match the specified
    #   criteria.
    #   @return [Array<Types::MemoryRecordSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use in a subsequent request to get the next set of
    #   results. This value is null when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListMemoryRecordsOutput AWS API Documentation
    #
    class ListMemoryRecordsOutput < Struct.new(
      :memory_record_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for listing payment instruments.
    #
    # @!attribute [rw] user_id
    #   The user ID associated with the payment instruments.
    #   @return [String]
    #
    # @!attribute [rw] agent_name
    #   The agent name associated with this request, used for observability.
    #   @return [String]
    #
    # @!attribute [rw] payment_manager_arn
    #   The ARN of the payment manager that owns the payment instruments.
    #   @return [String]
    #
    # @!attribute [rw] payment_connector_id
    #   The ID of the payment connector to filter by.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Token for pagination to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListPaymentInstrumentsRequest AWS API Documentation
    #
    class ListPaymentInstrumentsRequest < Struct.new(
      :user_id,
      :agent_name,
      :payment_manager_arn,
      :payment_connector_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for listing payment instruments.
    #
    # @!attribute [rw] payment_instruments
    #   List of payment instrument summaries matching the request criteria.
    #   @return [Array<Types::PaymentInstrumentSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for pagination to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListPaymentInstrumentsResponse AWS API Documentation
    #
    class ListPaymentInstrumentsResponse < Struct.new(
      :payment_instruments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for listing payment sessions.
    #
    # @!attribute [rw] user_id
    #   The user ID associated with the payment sessions.
    #   @return [String]
    #
    # @!attribute [rw] agent_name
    #   The agent name associated with this request, used for observability.
    #   @return [String]
    #
    # @!attribute [rw] payment_manager_arn
    #   The ARN of the payment manager that owns the sessions.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Token for pagination to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListPaymentSessionsRequest AWS API Documentation
    #
    class ListPaymentSessionsRequest < Struct.new(
      :user_id,
      :agent_name,
      :payment_manager_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for listing payment sessions.
    #
    # @!attribute [rw] payment_sessions
    #   List of payment session summaries matching the request criteria.
    #   @return [Array<Types::PaymentSessionSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for pagination to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListPaymentSessionsResponse AWS API Documentation
    #
    class ListPaymentSessionsResponse < Struct.new(
      :payment_sessions,
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
    # @!attribute [rw] status_filter
    #   Optional filter to return only recommendations with the specified
    #   status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListRecommendationsRequest AWS API Documentation
    #
    class ListRecommendationsRequest < Struct.new(
      :max_results,
      :next_token,
      :status_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendation_summaries
    #   The list of recommendation summaries.
    #   @return [Array<Types::RecommendationSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListRecommendationsResponse AWS API Documentation
    #
    class ListRecommendationsResponse < Struct.new(
      :recommendation_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_id
    #   The identifier of the AgentCore Memory resource for which to list
    #   sessions.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The identifier of the actor for which to list sessions.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. The
    #   default value is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Filter criteria to apply when listing sessions.
    #   @return [Types::SessionFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListSessionsInput AWS API Documentation
    #
    class ListSessionsInput < Struct.new(
      :memory_id,
      :actor_id,
      :max_results,
      :next_token,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_summaries
    #   The list of session summaries that match the specified criteria.
    #   @return [Array<Types::SessionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use in a subsequent request to get the next set of
    #   results. This value is null when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListSessionsOutput AWS API Documentation
    #
    class ListSessionsOutput < Struct.new(
      :session_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a stream that provides a visual representation
    # of a browser session in Amazon Bedrock AgentCore. This stream enables
    # agents to observe the current state of the browser, including rendered
    # web pages, visual elements, and the results of interactions.
    #
    # @!attribute [rw] stream_endpoint
    #   The endpoint URL for the live view stream. This URL is used to
    #   establish a connection to receive visual updates from the browser
    #   session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/LiveViewStream AWS API Documentation
    #
    class LiveViewStream < Struct.new(
      :stream_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # The MCP (Model Context Protocol) descriptor configuration for a
    # registry record. Contains the server definition and tools definition.
    #
    # @!attribute [rw] server
    #   The MCP server definition that describes the server configuration.
    #   @return [Types::ServerDefinition]
    #
    # @!attribute [rw] tools
    #   The MCP tools definition that describes the available tools.
    #   @return [Types::ToolsDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/McpDescriptor AWS API Documentation
    #
    class McpDescriptor < Struct.new(
      :server,
      :tools)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the content of a memory record.
    #
    # @note MemoryContent is a union - when making an API calls you must set exactly one of the members.
    #
    # @note MemoryContent is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of MemoryContent corresponding to the set member.
    #
    # @!attribute [rw] text
    #   The text content of the memory record.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MemoryContent AWS API Documentation
    #
    class MemoryContent < Struct.new(
      :text,
      :unknown)
      SENSITIVE = [:text]
      include Aws::Structure
      include Aws::Structure::Union

      class Text < MemoryContent; end
      class Unknown < MemoryContent; end
    end

    # Filters to apply to metadata associated with a memory. Specify the
    # metadata key and value in the `left` and `right` fields and use the
    # `operator` field to define the relationship to match.
    #
    # @!attribute [rw] left
    #   The metadata key to evaluate.
    #   @return [Types::MemoryRecordLeftExpression]
    #
    # @!attribute [rw] operator
    #   The relationship between the metadata key and value to match when
    #   applying the metadata filter.
    #   @return [String]
    #
    # @!attribute [rw] right
    #   The value to compare against. Required for all operators except
    #   EXISTS and NOT\_EXISTS.
    #   @return [Types::MemoryRecordRightExpression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MemoryMetadataFilterExpression AWS API Documentation
    #
    class MemoryMetadataFilterExpression < Struct.new(
      :left,
      :operator,
      :right)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a memory record in an AgentCore Memory
    # resource.
    #
    # @!attribute [rw] memory_record_id
    #   The unique identifier of the memory record.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the memory record.
    #   @return [Types::MemoryContent]
    #
    # @!attribute [rw] memory_strategy_id
    #   The identifier of the memory strategy associated with this record.
    #   @return [String]
    #
    # @!attribute [rw] namespaces
    #   The namespaces associated with this memory record. Namespaces help
    #   organize and categorize memory records.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the memory record was created.
    #   @return [Time]
    #
    # @!attribute [rw] metadata
    #   A map of metadata key-value pairs associated with a memory record.
    #   @return [Hash<String,Types::MemoryRecordMetadataValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MemoryRecord AWS API Documentation
    #
    class MemoryRecord < Struct.new(
      :memory_record_id,
      :content,
      :memory_strategy_id,
      :namespaces,
      :created_at,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input structure to create a new memory record.
    #
    # @!attribute [rw] request_identifier
    #   A client-provided identifier for tracking this specific record
    #   creation request.
    #   @return [String]
    #
    # @!attribute [rw] namespaces
    #   A list of namespace identifiers that categorize or group the memory
    #   record.
    #   @return [Array<String>]
    #
    # @!attribute [rw] content
    #   The content to be stored within the memory record.
    #   @return [Types::MemoryContent]
    #
    # @!attribute [rw] timestamp
    #   Time at which the memory record was created.
    #   @return [Time]
    #
    # @!attribute [rw] memory_strategy_id
    #   The ID of the memory strategy that defines how this memory record is
    #   grouped.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Metadata key-value pairs to be stored with the memory record.
    #   @return [Hash<String,Types::MemoryRecordMetadataValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MemoryRecordCreateInput AWS API Documentation
    #
    class MemoryRecordCreateInput < Struct.new(
      :request_identifier,
      :namespaces,
      :content,
      :timestamp,
      :memory_strategy_id,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input structure to delete an existing memory record.
    #
    # @!attribute [rw] memory_record_id
    #   The unique ID of the memory record to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MemoryRecordDeleteInput AWS API Documentation
    #
    class MemoryRecordDeleteInput < Struct.new(
      :memory_record_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The left-hand side of a memory record metadata filter expression.
    #
    # @note MemoryRecordLeftExpression is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] metadata_key
    #   The metadata key to filter on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MemoryRecordLeftExpression AWS API Documentation
    #
    class MemoryRecordLeftExpression < Struct.new(
      :metadata_key,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MetadataKey < MemoryRecordLeftExpression; end
      class Unknown < MemoryRecordLeftExpression; end
    end

    # The value of a memory record metadata entry.
    #
    # @note MemoryRecordMetadataValue is a union - when making an API calls you must set exactly one of the members.
    #
    # @note MemoryRecordMetadataValue is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of MemoryRecordMetadataValue corresponding to the set member.
    #
    # @!attribute [rw] string_value
    #   A string value.
    #   @return [String]
    #
    # @!attribute [rw] string_list_value
    #   A list of string values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] number_value
    #   A numeric value.
    #   @return [Float]
    #
    # @!attribute [rw] date_time_value
    #   A timestamp value in ISO 8601 UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MemoryRecordMetadataValue AWS API Documentation
    #
    class MemoryRecordMetadataValue < Struct.new(
      :string_value,
      :string_list_value,
      :number_value,
      :date_time_value,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class StringValue < MemoryRecordMetadataValue; end
      class StringListValue < MemoryRecordMetadataValue; end
      class NumberValue < MemoryRecordMetadataValue; end
      class DateTimeValue < MemoryRecordMetadataValue; end
      class Unknown < MemoryRecordMetadataValue; end
    end

    # Output information returned after processing a memory record
    # operation.
    #
    # @!attribute [rw] memory_record_id
    #   The unique ID associated to the memory record.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the memory record operation (e.g., SUCCEEDED, FAILED).
    #   @return [String]
    #
    # @!attribute [rw] request_identifier
    #   The client-provided identifier that was used to track this record
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code returned when the memory record operation fails.
    #   @return [Integer]
    #
    # @!attribute [rw] error_message
    #   A human-readable error message describing why the memory record
    #   operation failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MemoryRecordOutput AWS API Documentation
    #
    class MemoryRecordOutput < Struct.new(
      :memory_record_id,
      :status,
      :request_identifier,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The right-hand side of a memory record metadata filter expression.
    #
    # @note MemoryRecordRightExpression is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] metadata_value
    #   The metadata value to compare against.
    #   @return [Types::MemoryRecordMetadataValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MemoryRecordRightExpression AWS API Documentation
    #
    class MemoryRecordRightExpression < Struct.new(
      :metadata_value,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MetadataValue < MemoryRecordRightExpression; end
      class Unknown < MemoryRecordRightExpression; end
    end

    # Contains summary information about a memory record.
    #
    # @!attribute [rw] memory_record_id
    #   The unique identifier of the memory record.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the memory record.
    #   @return [Types::MemoryContent]
    #
    # @!attribute [rw] memory_strategy_id
    #   The identifier of the memory strategy associated with this record.
    #   @return [String]
    #
    # @!attribute [rw] namespaces
    #   The namespaces associated with this memory record.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the memory record was created.
    #   @return [Time]
    #
    # @!attribute [rw] score
    #   The relevance score of the memory record when returned as part of a
    #   search result. Higher values indicate greater relevance to the
    #   search query.
    #   @return [Float]
    #
    # @!attribute [rw] metadata
    #   A map of metadata key-value pairs associated with a memory record.
    #   @return [Hash<String,Types::MemoryRecordMetadataValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MemoryRecordSummary AWS API Documentation
    #
    class MemoryRecordSummary < Struct.new(
      :memory_record_id,
      :content,
      :memory_strategy_id,
      :namespaces,
      :created_at,
      :score,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input structure to update an existing memory record.
    #
    # @!attribute [rw] memory_record_id
    #   The unique ID of the memory record to be updated.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   Time at which the memory record was updated
    #   @return [Time]
    #
    # @!attribute [rw] content
    #   The content to be stored within the memory record.
    #   @return [Types::MemoryContent]
    #
    # @!attribute [rw] namespaces
    #   The updated list of namespace identifiers for categorizing the
    #   memory record.
    #   @return [Array<String>]
    #
    # @!attribute [rw] memory_strategy_id
    #   The updated ID of the memory strategy that defines how this memory
    #   record is grouped.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Metadata key-value pairs to be stored with the memory record.
    #   @return [Hash<String,Types::MemoryRecordMetadataValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MemoryRecordUpdateInput AWS API Documentation
    #
    class MemoryRecordUpdateInput < Struct.new(
      :memory_record_id,
      :timestamp,
      :content,
      :namespaces,
      :memory_strategy_id,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata information associated with this message.
    #
    # @!attribute [rw] event_id
    #   The identifier of the event associated with this message.
    #   @return [String]
    #
    # @!attribute [rw] message_index
    #   The position of this message within that event’s ordered list of
    #   messages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MessageMetadata AWS API Documentation
    #
    class MessageMetadata < Struct.new(
      :event_id,
      :message_index)
      SENSITIVE = []
      include Aws::Structure
    end

    # Value associated with the `eventMetadata` key.
    #
    # @note MetadataValue is a union - when making an API calls you must set exactly one of the members.
    #
    # @note MetadataValue is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of MetadataValue corresponding to the set member.
    #
    # @!attribute [rw] string_value
    #   Value associated with the `eventMetadata` key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MetadataValue AWS API Documentation
    #
    class MetadataValue < Struct.new(
      :string_value,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class StringValue < MetadataValue; end
      class Unknown < MetadataValue; end
    end

    # Arguments for a mouse click action.
    #
    # @!attribute [rw] x
    #   The X coordinate on screen where the click occurs.
    #   @return [Integer]
    #
    # @!attribute [rw] y
    #   The Y coordinate on screen where the click occurs.
    #   @return [Integer]
    #
    # @!attribute [rw] button
    #   The mouse button to use. Defaults to `LEFT`.
    #   @return [String]
    #
    # @!attribute [rw] click_count
    #   The number of clicks to perform. Valid range: 1–10. Defaults to 1.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MouseClickArguments AWS API Documentation
    #
    class MouseClickArguments < Struct.new(
      :x,
      :y,
      :button,
      :click_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a mouse click action.
    #
    # @!attribute [rw] status
    #   The status of the action execution.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The error message. Present only when the action failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MouseClickResult AWS API Documentation
    #
    class MouseClickResult < Struct.new(
      :status,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Arguments for a mouse drag action.
    #
    # @!attribute [rw] end_x
    #   The ending X coordinate for the drag.
    #   @return [Integer]
    #
    # @!attribute [rw] end_y
    #   The ending Y coordinate for the drag.
    #   @return [Integer]
    #
    # @!attribute [rw] start_x
    #   The starting X coordinate for the drag.
    #   @return [Integer]
    #
    # @!attribute [rw] start_y
    #   The starting Y coordinate for the drag.
    #   @return [Integer]
    #
    # @!attribute [rw] button
    #   The mouse button to use for the drag. Defaults to `LEFT`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MouseDragArguments AWS API Documentation
    #
    class MouseDragArguments < Struct.new(
      :end_x,
      :end_y,
      :start_x,
      :start_y,
      :button)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a mouse drag action.
    #
    # @!attribute [rw] status
    #   The status of the action execution.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The error message. Present only when the action failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MouseDragResult AWS API Documentation
    #
    class MouseDragResult < Struct.new(
      :status,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Arguments for a mouse move action.
    #
    # @!attribute [rw] x
    #   The target X coordinate on screen.
    #   @return [Integer]
    #
    # @!attribute [rw] y
    #   The target Y coordinate on screen.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MouseMoveArguments AWS API Documentation
    #
    class MouseMoveArguments < Struct.new(
      :x,
      :y)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a mouse move action.
    #
    # @!attribute [rw] status
    #   The status of the action execution.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The error message. Present only when the action failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MouseMoveResult AWS API Documentation
    #
    class MouseMoveResult < Struct.new(
      :status,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Arguments for a mouse scroll action.
    #
    # @!attribute [rw] x
    #   The X coordinate on screen where the scroll occurs.
    #   @return [Integer]
    #
    # @!attribute [rw] y
    #   The Y coordinate on screen where the scroll occurs.
    #   @return [Integer]
    #
    # @!attribute [rw] delta_x
    #   The horizontal scroll delta. Valid range: -1000 to 1000.
    #   @return [Integer]
    #
    # @!attribute [rw] delta_y
    #   The vertical scroll delta. Valid range: -1000 to 1000. Negative
    #   values scroll down.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MouseScrollArguments AWS API Documentation
    #
    class MouseScrollArguments < Struct.new(
      :x,
      :y,
      :delta_x,
      :delta_y)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a mouse scroll action.
    #
    # @!attribute [rw] status
    #   The status of the action execution.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The error message. Present only when the action failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MouseScrollResult AWS API Documentation
    #
    class MouseScrollResult < Struct.new(
      :status,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the payment challenge from a 402 Payment Required response.
    # Forward the raw `WWW-Authenticate: Payment` header value verbatim. In
    # response, you receive a payment credential that satisfies the
    # challenge. Provide exactly one challenge per request.
    #
    # @!attribute [rw] version
    #   The MPP protocol version, for example "1" or "2".
    #   @return [String]
    #
    # @!attribute [rw] www_authenticate_headers
    #   The raw `WWW-Authenticate: Payment` header value from the 402
    #   response, passed verbatim. Provide exactly one entry. The service
    #   uses this value to generate the payment credential.
    #   @return [Array<String>]
    #
    # @!attribute [rw] buyer_pays_gas_fees
    #   Authorizes the service to sign a payment whose blockchain network
    #   (gas) fees are charged to your wallet, on top of the payment amount.
    #
    #   The challenge indicates who sponsors the network fees. When the
    #   challenge does not sponsor them, the service signs the payment only
    #   if this field is `true`. Otherwise it returns a validation error, so
    #   you can decide whether to pay the fees or obtain a challenge that
    #   sponsors them.
    #
    #   Optional. When omitted or `false`, you decline to pay network fees.
    #   This field has no effect on challenges that already sponsor the
    #   fees.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MppPaymentInput AWS API Documentation
    #
    class MppPaymentInput < Struct.new(
      :version,
      :www_authenticate_headers,
      :buyer_pays_gas_fees)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the payment credential, ready to retry the request.
    #
    # @!attribute [rw] version
    #   The MPP protocol version, for example "1" or "2".
    #   @return [String]
    #
    # @!attribute [rw] selected_payment_id
    #   The id of the challenge that was paid, echoed from the input
    #   challenge so you can correlate the result without decoding the
    #   credential.
    #   @return [String]
    #
    # @!attribute [rw] payment_credential
    #   Ready-to-send value for the `Authorization` header, in the form
    #   "Payment &lt;base64url-token&gt;". Attach this header and retry
    #   the original request. To inspect the full credential,
    #   base64url-decode the token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MppPaymentOutput AWS API Documentation
    #
    class MppPaymentOutput < Struct.new(
      :version,
      :selected_payment_id,
      :payment_credential)
      SENSITIVE = [:payment_credential]
      include Aws::Structure
    end

    # OAuth2 authentication information for third-party providers.
    #
    # @!attribute [rw] sub
    #   The subject (sub) claim from the OAuth2 provider. Uniquely
    #   identifies the user at the provider.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address from the OAuth2 provider.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The user's name from the OAuth2 provider.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username from the OAuth2 provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/OAuth2Authentication AWS API Documentation
    #
    class OAuth2Authentication < Struct.new(
      :sub,
      :email_address,
      :name,
      :username)
      SENSITIVE = [:email_address]
      include Aws::Structure
    end

    # Configuration for an OAuth 2.0 credential provider used to
    # authenticate tool calls.
    #
    # @!attribute [rw] provider_arn
    #   The ARN of the OAuth 2.0 credential provider in AgentCore Identity.
    #   @return [String]
    #
    # @!attribute [rw] scopes
    #   The OAuth 2.0 scopes to request when obtaining an access token.
    #   @return [Array<String>]
    #
    # @!attribute [rw] custom_parameters
    #   Additional custom parameters to include in the OAuth 2.0 token
    #   request.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] grant_type
    #   The OAuth 2.0 grant type to use for authentication.
    #   @return [String]
    #
    # @!attribute [rw] default_return_url
    #   The default return URL for the OAuth 2.0 authorization flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/OAuthCredentialProvider AWS API Documentation
    #
    class OAuthCredentialProvider < Struct.new(
      :provider_arn,
      :scopes,
      :custom_parameters,
      :grant_type,
      :default_return_url)
      SENSITIVE = [:custom_parameters]
      include Aws::Structure
    end

    # A reference to an existing online evaluation configuration to use as
    # the data source for batch evaluation.
    #
    # @!attribute [rw] online_evaluation_config_arn
    #   The Amazon Resource Name (ARN) of the online evaluation
    #   configuration to use as the session source.
    #   @return [String]
    #
    # @!attribute [rw] time_range
    #   Optional session filter configuration to narrow down which sessions
    #   from the online evaluation configuration to include.
    #   @return [Types::SessionFilterConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/OnlineEvaluationConfigSource AWS API Documentation
    #
    class OnlineEvaluationConfigSource < Struct.new(
      :online_evaluation_config_arn,
      :time_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration for reusing agent traces from an online
    # evaluation configuration for recommendation analysis. Because online
    # evaluation is a continuous stream, a time range specifies which
    # evaluated sessions the recommendation includes.
    #
    # @!attribute [rw] online_evaluation_config_arn
    #   The ARN of the online evaluation configuration to reuse sessions
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the time range. Only sessions evaluated at or
    #   after this timestamp are included.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the time range. Only sessions evaluated before this
    #   timestamp are included.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/OnlineEvaluationTraceConfig AWS API Documentation
    #
    class OnlineEvaluationTraceConfig < Struct.new(
      :online_evaluation_config_arn,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output destination configuration.
    #
    # @note OutputConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of OutputConfig corresponding to the set member.
    #
    # @!attribute [rw] cloud_watch_config
    #   The CloudWatch Logs configuration for writing evaluation results.
    #   @return [Types::CloudWatchOutputConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/OutputConfig AWS API Documentation
    #
    class OutputConfig < Struct.new(
      :cloud_watch_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CloudWatchConfig < OutputConfig; end
      class Unknown < OutputConfig; end
    end

    # Contains the payload content for an event.
    #
    # @note PayloadType is a union - when making an API calls you must set exactly one of the members.
    #
    # @note PayloadType is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PayloadType corresponding to the set member.
    #
    # @!attribute [rw] conversational
    #   The conversational content of the payload.
    #   @return [Types::Conversational]
    #
    # @!attribute [rw] blob
    #   The binary content of the payload.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/PayloadType AWS API Documentation
    #
    class PayloadType < Struct.new(
      :conversational,
      :blob,
      :unknown)
      SENSITIVE = [:blob]
      include Aws::Structure
      include Aws::Structure::Union

      class Conversational < PayloadType; end
      class Blob < PayloadType; end
      class Unknown < PayloadType; end
    end

    # The payment input details, which vary by payment type.
    #
    # @note PaymentInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] crypto_x402
    #   Input for a crypto X402 payment.
    #   @return [Types::CryptoX402PaymentInput]
    #
    # @!attribute [rw] mpp
    #   Contains the payment challenge from a 402 Payment Required response.
    #   Forward the raw `WWW-Authenticate: Payment` header value verbatim.
    #   In response, you receive a payment credential that satisfies the
    #   challenge. Provide exactly one challenge per request.
    #   @return [Types::MppPaymentInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/PaymentInput AWS API Documentation
    #
    class PaymentInput < Struct.new(
      :crypto_x402,
      :mpp,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CryptoX402 < PaymentInput; end
      class Mpp < PaymentInput; end
      class Unknown < PaymentInput; end
    end

    # Represents a payment instrument.
    #
    # @!attribute [rw] payment_instrument_id
    #   The unique identifier for this payment instrument.
    #   @return [String]
    #
    # @!attribute [rw] payment_manager_arn
    #   The ARN of the payment manager that owns this payment instrument.
    #   @return [String]
    #
    # @!attribute [rw] payment_connector_id
    #   The ID of the payment connector associated with this instrument.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID associated with this payment instrument.
    #   @return [String]
    #
    # @!attribute [rw] payment_instrument_type
    #   The type of payment instrument (e.g., EMBEDDED\_CRYPTO\_WALLET).
    #   @return [String]
    #
    # @!attribute [rw] payment_instrument_details
    #   The details specific to the payment instrument type.
    #   @return [Types::PaymentInstrumentDetails]
    #
    # @!attribute [rw] created_at
    #   The timestamp when this payment instrument was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of this payment instrument.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when this payment instrument was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/PaymentInstrument AWS API Documentation
    #
    class PaymentInstrument < Struct.new(
      :payment_instrument_id,
      :payment_manager_arn,
      :payment_connector_id,
      :user_id,
      :payment_instrument_type,
      :payment_instrument_details,
      :created_at,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details specific to the instrument type.
    #
    # @note PaymentInstrumentDetails is a union - when making an API calls you must set exactly one of the members.
    #
    # @note PaymentInstrumentDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PaymentInstrumentDetails corresponding to the set member.
    #
    # @!attribute [rw] embedded_crypto_wallet
    #   Embedded crypto wallet managed directly by end user.
    #   @return [Types::EmbeddedCryptoWallet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/PaymentInstrumentDetails AWS API Documentation
    #
    class PaymentInstrumentDetails < Struct.new(
      :embedded_crypto_wallet,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class EmbeddedCryptoWallet < PaymentInstrumentDetails; end
      class Unknown < PaymentInstrumentDetails; end
    end

    # Summary of a payment instrument for list operations.
    #
    # @!attribute [rw] payment_instrument_id
    #   The unique identifier for this payment instrument.
    #   @return [String]
    #
    # @!attribute [rw] payment_manager_arn
    #   The ARN of the payment manager that owns this payment instrument.
    #   @return [String]
    #
    # @!attribute [rw] payment_connector_id
    #   The ID of the payment connector associated with this instrument.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID associated with this payment instrument.
    #   @return [String]
    #
    # @!attribute [rw] payment_instrument_type
    #   The type of payment instrument (e.g., EMBEDDED\_CRYPTO\_WALLET).
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of this payment instrument.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when this payment instrument was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when this payment instrument was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/PaymentInstrumentSummary AWS API Documentation
    #
    class PaymentInstrumentSummary < Struct.new(
      :payment_instrument_id,
      :payment_manager_arn,
      :payment_connector_id,
      :user_id,
      :payment_instrument_type,
      :status,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The payment output details, which vary by payment type.
    #
    # @note PaymentOutput is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PaymentOutput corresponding to the set member.
    #
    # @!attribute [rw] crypto_x402
    #   Output from a crypto X402 payment.
    #   @return [Types::CryptoX402PaymentOutput]
    #
    # @!attribute [rw] mpp
    #   Contains the payment credential, ready to retry the request.
    #   @return [Types::MppPaymentOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/PaymentOutput AWS API Documentation
    #
    class PaymentOutput < Struct.new(
      :crypto_x402,
      :mpp,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CryptoX402 < PaymentOutput; end
      class Mpp < PaymentOutput; end
      class Unknown < PaymentOutput; end
    end

    # A payment session for managing payment transactions.
    #
    # @!attribute [rw] payment_session_id
    #   The unique identifier of the payment session.
    #   @return [String]
    #
    # @!attribute [rw] payment_manager_arn
    #   The ARN of the payment manager that owns this session.
    #   @return [String]
    #
    # @!attribute [rw] limits
    #   The spending limits for the payment session.
    #   @return [Types::SessionLimits]
    #
    # @!attribute [rw] user_id
    #   The user ID associated with this session.
    #   @return [String]
    #
    # @!attribute [rw] expiry_time_in_minutes
    #   The session expiry time in minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the session was created.
    #   @return [Time]
    #
    # @!attribute [rw] available_limits
    #   The current available spending limits.
    #   @return [Types::AvailableLimits]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the session was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/PaymentSession AWS API Documentation
    #
    class PaymentSession < Struct.new(
      :payment_session_id,
      :payment_manager_arn,
      :limits,
      :user_id,
      :expiry_time_in_minutes,
      :created_at,
      :available_limits,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a payment session.
    #
    # @!attribute [rw] payment_session_id
    #   The unique identifier of the payment session.
    #   @return [String]
    #
    # @!attribute [rw] payment_manager_arn
    #   The ARN of the payment manager that owns this session.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID associated with this session.
    #   @return [String]
    #
    # @!attribute [rw] expiry_time_in_minutes
    #   The session expiry time in minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the session was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the session was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/PaymentSessionSummary AWS API Documentation
    #
    class PaymentSessionSummary < Struct.new(
      :payment_session_id,
      :payment_manager_arn,
      :user_id,
      :expiry_time_in_minutes,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Vendor-specific token request configuration.
    #
    # @note PaymentTokenRequestInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] coinbase_cdp_token_request
    #   The Coinbase CDP token request.
    #   @return [Types::CoinbaseCdpTokenRequestInput]
    #
    # @!attribute [rw] stripe_privy_token_request
    #   The Stripe Privy token request.
    #   @return [Types::StripePrivyTokenRequestInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/PaymentTokenRequestInput AWS API Documentation
    #
    class PaymentTokenRequestInput < Struct.new(
      :coinbase_cdp_token_request,
      :stripe_privy_token_request,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CoinbaseCdpTokenRequest < PaymentTokenRequestInput; end
      class StripePrivyTokenRequest < PaymentTokenRequestInput; end
      class Unknown < PaymentTokenRequestInput; end
    end

    # Vendor-specific token response configuration.
    #
    # @note PaymentTokenResponseOutput is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PaymentTokenResponseOutput corresponding to the set member.
    #
    # @!attribute [rw] coinbase_cdp_token_response
    #   The Coinbase CDP token response.
    #   @return [Types::CoinbaseCdpTokenResponseOutput]
    #
    # @!attribute [rw] stripe_privy_token_response
    #   The Stripe Privy token response.
    #   @return [Types::StripePrivyTokenResponseOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/PaymentTokenResponseOutput AWS API Documentation
    #
    class PaymentTokenResponseOutput < Struct.new(
      :coinbase_cdp_token_response,
      :stripe_privy_token_response,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CoinbaseCdpTokenResponse < PaymentTokenResponseOutput; end
      class StripePrivyTokenResponse < PaymentTokenResponseOutput; end
      class Unknown < PaymentTokenResponseOutput; end
    end

    # An online evaluation configuration associated with a specific A/B test
    # variant.
    #
    # @!attribute [rw] name
    #   The name of the variant this evaluation configuration applies to.
    #   @return [String]
    #
    # @!attribute [rw] online_evaluation_config_arn
    #   The Amazon Resource Name (ARN) of the online evaluation
    #   configuration for this variant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/PerVariantOnlineEvaluationConfig AWS API Documentation
    #
    class PerVariantOnlineEvaluationConfig < Struct.new(
      :name,
      :online_evaluation_config_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for processing a payment.
    #
    # @!attribute [rw] user_id
    #   The user ID associated with this payment.
    #   @return [String]
    #
    # @!attribute [rw] agent_name
    #   The agent name associated with this request, used for observability.
    #   @return [String]
    #
    # @!attribute [rw] payment_manager_arn
    #   The ARN of the payment manager.
    #   @return [String]
    #
    # @!attribute [rw] payment_session_id
    #   The ID of the payment session.
    #   @return [String]
    #
    # @!attribute [rw] payment_instrument_id
    #   The ID of the payment instrument to use.
    #   @return [String]
    #
    # @!attribute [rw] payment_type
    #   The type of payment to process.
    #   @return [String]
    #
    # @!attribute [rw] payment_input
    #   The payment input details specific to the payment type.
    #   @return [Types::PaymentInput]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ProcessPaymentRequest AWS API Documentation
    #
    class ProcessPaymentRequest < Struct.new(
      :user_id,
      :agent_name,
      :payment_manager_arn,
      :payment_session_id,
      :payment_instrument_id,
      :payment_type,
      :payment_input,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for processing a payment.
    #
    # @!attribute [rw] process_payment_id
    #   The unique identifier of the processed payment.
    #   @return [String]
    #
    # @!attribute [rw] payment_manager_arn
    #   The ARN of the payment manager.
    #   @return [String]
    #
    # @!attribute [rw] payment_session_id
    #   The ID of the payment session used.
    #   @return [String]
    #
    # @!attribute [rw] payment_instrument_id
    #   The ID of the payment instrument used.
    #   @return [String]
    #
    # @!attribute [rw] payment_type
    #   The type of payment processed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the payment.
    #   @return [String]
    #
    # @!attribute [rw] payment_output
    #   The payment output details specific to the payment type.
    #   @return [Types::PaymentOutput]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the payment was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the payment was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ProcessPaymentResponse AWS API Documentation
    #
    class ProcessPaymentResponse < Struct.new(
      :process_payment_id,
      :payment_manager_arn,
      :payment_session_id,
      :payment_instrument_id,
      :payment_type,
      :status,
      :payment_output,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Union type representing different proxy configurations. Currently
    # supports external customer-managed proxies.
    #
    # @note Proxy is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Proxy is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Proxy corresponding to the set member.
    #
    # @!attribute [rw] external_proxy
    #   Configuration for an external customer-managed proxy server.
    #   @return [Types::ExternalProxy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/Proxy AWS API Documentation
    #
    class Proxy < Struct.new(
      :external_proxy,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ExternalProxy < Proxy; end
      class Unknown < Proxy; end
    end

    # Configuration for domains that should bypass all proxies and connect
    # directly to the internet. These bypass rules take precedence over all
    # proxy routing rules.
    #
    # @!attribute [rw] domain_patterns
    #   Array of domain patterns that should bypass the proxy. Supports
    #   `.amazonaws.com` for subdomain matching or `amazonaws.com` for exact
    #   domain matching. Requests to these domains connect directly without
    #   using any proxy. Maximum 253 characters per pattern.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ProxyBypass AWS API Documentation
    #
    class ProxyBypass < Struct.new(
      :domain_patterns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for routing browser traffic through customer-managed
    # proxy servers. Supports 1-5 proxy servers for domain-based routing and
    # proxy bypass rules.
    #
    # @!attribute [rw] proxies
    #   An array of 1-5 proxy server configurations for domain-based
    #   routing. Each proxy can specify which domains it handles via
    #   `domainPatterns`, enabling flexible routing of different traffic
    #   through different proxies based on destination domain.
    #   @return [Array<Types::Proxy>]
    #
    # @!attribute [rw] bypass
    #   Optional configuration for domains that should bypass all proxies
    #   and connect directly to their destination, like the internet. Takes
    #   precedence over all proxy routing rules.
    #   @return [Types::ProxyBypass]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ProxyConfiguration AWS API Documentation
    #
    class ProxyConfiguration < Struct.new(
      :proxies,
      :bypass)
      SENSITIVE = []
      include Aws::Structure
    end

    # Union type representing different proxy authentication methods.
    # Currently supports HTTP Basic Authentication (username and password).
    #
    # @note ProxyCredentials is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ProxyCredentials is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ProxyCredentials corresponding to the set member.
    #
    # @!attribute [rw] basic_auth
    #   HTTP Basic Authentication credentials (username and password) stored
    #   in Amazon Web Services Secrets Manager.
    #   @return [Types::BasicAuth]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ProxyCredentials AWS API Documentation
    #
    class ProxyCredentials < Struct.new(
      :basic_auth,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class BasicAuth < ProxyCredentials; end
      class Unknown < ProxyCredentials; end
    end

    # The configuration for a recommendation, varying by recommendation
    # type.
    #
    # @note RecommendationConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RecommendationConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RecommendationConfig corresponding to the set member.
    #
    # @!attribute [rw] system_prompt_recommendation_config
    #   The configuration for a system prompt recommendation.
    #   @return [Types::SystemPromptRecommendationConfig]
    #
    # @!attribute [rw] tool_description_recommendation_config
    #   The configuration for a tool description recommendation.
    #   @return [Types::ToolDescriptionRecommendationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/RecommendationConfig AWS API Documentation
    #
    class RecommendationConfig < Struct.new(
      :system_prompt_recommendation_config,
      :tool_description_recommendation_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SystemPromptRecommendationConfig < RecommendationConfig; end
      class ToolDescriptionRecommendationConfig < RecommendationConfig; end
      class Unknown < RecommendationConfig; end
    end

    # The evaluation configuration for assessing recommendation quality.
    #
    # @!attribute [rw] evaluators
    #   The list of evaluators to use for assessing recommendation quality.
    #   @return [Array<Types::RecommendationEvaluatorReference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/RecommendationEvaluationConfig AWS API Documentation
    #
    class RecommendationEvaluationConfig < Struct.new(
      :evaluators)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reference to an evaluator used for recommendation assessment.
    #
    # @!attribute [rw] evaluator_arn
    #   The Amazon Resource Name (ARN) of the evaluator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/RecommendationEvaluatorReference AWS API Documentation
    #
    class RecommendationEvaluatorReference < Struct.new(
      :evaluator_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a recommendation, containing the optimized output.
    #
    # @note RecommendationResult is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RecommendationResult corresponding to the set member.
    #
    # @!attribute [rw] system_prompt_recommendation_result
    #   The result of a system prompt recommendation.
    #   @return [Types::SystemPromptRecommendationResult]
    #
    # @!attribute [rw] tool_description_recommendation_result
    #   The result of a tool description recommendation.
    #   @return [Types::ToolDescriptionRecommendationResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/RecommendationResult AWS API Documentation
    #
    class RecommendationResult < Struct.new(
      :system_prompt_recommendation_result,
      :tool_description_recommendation_result,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SystemPromptRecommendationResult < RecommendationResult; end
      class ToolDescriptionRecommendationResult < RecommendationResult; end
      class Unknown < RecommendationResult; end
    end

    # A configuration bundle reference in a recommendation result.
    #
    # @!attribute [rw] bundle_arn
    #   The Amazon Resource Name (ARN) of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version identifier of the configuration bundle containing the
    #   recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/RecommendationResultConfigurationBundle AWS API Documentation
    #
    class RecommendationResultConfigurationBundle < Struct.new(
      :bundle_arn,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a recommendation.
    #
    # @!attribute [rw] recommendation_id
    #   The unique identifier of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_arn
    #   The Amazon Resource Name (ARN) of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of recommendation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the recommendation was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the recommendation was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/RecommendationSummary AWS API Documentation
    #
    class RecommendationSummary < Struct.new(
      :recommendation_id,
      :recommendation_arn,
      :name,
      :description,
      :type,
      :status,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a registry record.
    #
    # @!attribute [rw] registry_arn
    #   The Amazon Resource Name (ARN) of the registry that this record
    #   belongs to.
    #   @return [String]
    #
    # @!attribute [rw] record_arn
    #   The Amazon Resource Name (ARN) of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   The unique identifier of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] descriptor_type
    #   The type of descriptor associated with this registry record.
    #   @return [String]
    #
    # @!attribute [rw] descriptors
    #   The descriptor configurations for this registry record.
    #   @return [Types::Descriptors]
    #
    # @!attribute [rw] version
    #   The version of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the registry record was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the registry record was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/RegistryRecordSummary AWS API Documentation
    #
    class RegistryRecordSummary < Struct.new(
      :registry_arn,
      :record_arn,
      :record_id,
      :name,
      :description,
      :descriptor_type,
      :descriptors,
      :version,
      :status,
      :created_at,
      :updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Contains information about resource content.
    #
    # @!attribute [rw] type
    #   The type of resource content.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The URI of the resource content.
    #   @return [String]
    #
    # @!attribute [rw] mime_type
    #   The MIME type of the resource content.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The text resource content.
    #   @return [String]
    #
    # @!attribute [rw] blob
    #   The binary resource content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ResourceContent AWS API Documentation
    #
    class ResourceContent < Struct.new(
      :type,
      :uri,
      :mime_type,
      :text,
      :blob)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location of the browser extension.
    #
    # @note ResourceLocation is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ResourceLocation is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ResourceLocation corresponding to the set member.
    #
    # @!attribute [rw] s3
    #   The Amazon S3 location of the resource. Use this when the resource
    #   is stored in an Amazon S3 bucket.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ResourceLocation AWS API Documentation
    #
    class ResourceLocation < Struct.new(
      :s3,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < ResourceLocation; end
      class Unknown < ResourceLocation; end
    end

    # The exception that occurs when the specified resource does not exist.
    # This can happen when using an invalid identifier or when trying to
    # access a resource that has been deleted.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure representing a response chunk that contains exactly one of
    # the possible event types: `contentStart`, `contentDelta`, or
    # `contentStop`.
    #
    # @!attribute [rw] content_start
    #   An event indicating the start of content streaming from the command
    #   execution. This is the first chunk received.
    #   @return [Types::ContentStartEvent]
    #
    # @!attribute [rw] content_delta
    #   An event containing incremental output (stdout or stderr) from the
    #   command execution. These are the middle chunks.
    #   @return [Types::ContentDeltaEvent]
    #
    # @!attribute [rw] content_stop
    #   An event indicating the completion of the command execution,
    #   including the exit code and final status. This is the last chunk
    #   received.
    #   @return [Types::ContentStopEvent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ResponseChunk AWS API Documentation
    #
    class ResponseChunk < Struct.new(
      :content_start,
      :content_delta,
      :content_stop,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_id
    #   The identifier of the AgentCore Memory resource from which to
    #   retrieve memory records.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace prefix to filter memory records by. Searches for
    #   memory records in namespaces that start with the provided prefix.
    #   Either `namespace` or `namespacePath` is required.
    #   @return [String]
    #
    # @!attribute [rw] namespace_path
    #   Use namespacePath for hierarchical retrievals. Return all memory
    #   records where namespace falls under the same parent hierarchy.
    #   Either `namespace` or `namespacePath` is required.
    #   @return [String]
    #
    # @!attribute [rw] search_criteria
    #   The search criteria to use for finding relevant memory records. This
    #   includes the search query, memory strategy ID, and other search
    #   parameters.
    #   @return [Types::SearchCriteria]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. The
    #   default value is 20.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/RetrieveMemoryRecordsInput AWS API Documentation
    #
    class RetrieveMemoryRecordsInput < Struct.new(
      :memory_id,
      :namespace,
      :namespace_path,
      :search_criteria,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_record_summaries
    #   The list of memory record summaries that match the search criteria,
    #   ordered by relevance.
    #   @return [Array<Types::MemoryRecordSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use in a subsequent request to get the next set of
    #   results. This value is null when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/RetrieveMemoryRecordsOutput AWS API Documentation
    #
    class RetrieveMemoryRecordsOutput < Struct.new(
      :memory_record_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The exception that occurs when there is a retryable conflict
    # performing an operation. This is a temporary condition that may
    # resolve itself with retries. We recommend implementing exponential
    # backoff retry logic in your application.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/RetryableConflictException AWS API Documentation
    #
    class RetryableConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Right expression of the `eventMetadata`filter.
    #
    # @note RightExpression is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] metadata_value
    #   Value associated with the key in `eventMetadata`.
    #   @return [Types::MetadataValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/RightExpression AWS API Documentation
    #
    class RightExpression < Struct.new(
      :metadata_value,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MetadataValue < RightExpression; end
      class Unknown < RightExpression; end
    end

    # A cluster of similar root causes identified within a failure
    # subcategory.
    #
    # @!attribute [rw] cluster_id
    #   The unique identifier of the root cause cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the root cause cluster.
    #   @return [String]
    #
    # @!attribute [rw] root_cause
    #   The root cause explanation for this cluster of failures.
    #   @return [String]
    #
    # @!attribute [rw] recommendation
    #   The recommended fix for this root cause.
    #   @return [String]
    #
    # @!attribute [rw] affected_session_count
    #   The number of sessions affected by this root cause.
    #   @return [Integer]
    #
    # @!attribute [rw] affected_sessions
    #   The list of sessions affected by this root cause.
    #   @return [Array<Types::AffectedSession>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/RootCauseCluster AWS API Documentation
    #
    class RootCauseCluster < Struct.new(
      :cluster_id,
      :name,
      :root_cause,
      :recommendation,
      :affected_session_count,
      :affected_sessions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The exception that occurs when there is an error in the runtime
    # client. This can happen due to network issues, invalid configuration,
    # or other client-side problems. Check the error message for specific
    # details about the error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/RuntimeClientError AWS API Documentation
    #
    class RuntimeClientError < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for mounting an Amazon Simple Storage Service
    # (Amazon S3) Files access point that you own into a session.
    #
    # @!attribute [rw] access_point_arn
    #   The Amazon Resource Name (ARN) of the Amazon Simple Storage Service
    #   (Amazon S3) Files access point to mount.
    #   @return [String]
    #
    # @!attribute [rw] mount_path
    #   The absolute path within the session at which the access point is
    #   mounted, for example `/mnt/s3data`. Each mount path must be unique
    #   across all file system configurations in the session.
    #   @return [String]
    #
    # @!attribute [rw] file_system_arn
    #   The Amazon Resource Name (ARN) of the Amazon Simple Storage Service
    #   (Amazon S3) Files file system that owns the access point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/S3FilesConfiguration AWS API Documentation
    #
    class S3FilesConfiguration < Struct.new(
      :access_point_arn,
      :mount_path,
      :file_system_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 location configuration of a resource.
    #
    # @!attribute [rw] bucket
    #   The name of the Amazon S3 bucket where the resource is stored.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The name of the Amazon S3 prefix/key where the resource is stored.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The name of the Amazon S3 version ID where the resource is stored
    #   (Optional).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :bucket,
      :prefix,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trace_id
    #   The trace identifier for request tracking.
    #   @return [String]
    #
    # @!attribute [rw] trace_parent
    #   The parent trace information for distributed tracing.
    #   @return [String]
    #
    # @!attribute [rw] profile_identifier
    #   The unique identifier for the browser profile. This identifier is
    #   used to reference the profile when starting new browser sessions.
    #   The identifier must follow the pattern of an alphanumeric name (up
    #   to 48 characters) followed by a hyphen and a 10-character
    #   alphanumeric suffix.
    #   @return [String]
    #
    # @!attribute [rw] browser_identifier
    #   The unique identifier of the browser associated with the session
    #   from which to save the profile.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the browser session from which to save the
    #   profile. The session must be active when saving the profile.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock AgentCore ignores the request, but does not
    #   return an error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/SaveBrowserSessionProfileRequest AWS API Documentation
    #
    class SaveBrowserSessionProfileRequest < Struct.new(
      :trace_id,
      :trace_parent,
      :profile_identifier,
      :browser_identifier,
      :session_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_identifier
    #   The unique identifier of the saved browser profile.
    #   @return [String]
    #
    # @!attribute [rw] browser_identifier
    #   The unique identifier of the browser associated with the session
    #   from which the profile was saved.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the browser session from which the profile
    #   was saved.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the browser profile was last updated. This value
    #   is in ISO 8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/SaveBrowserSessionProfileResponse AWS API Documentation
    #
    class SaveBrowserSessionProfileResponse < Struct.new(
      :profile_identifier,
      :browser_identifier,
      :session_id,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Arguments for a screenshot action.
    #
    # @!attribute [rw] format
    #   The image format for the screenshot. Defaults to `PNG`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ScreenshotArguments AWS API Documentation
    #
    class ScreenshotArguments < Struct.new(
      :format)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a screenshot action.
    #
    # @!attribute [rw] status
    #   The status of the action execution.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The error message. Present only when the action failed.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The base64-encoded image data. Present only when the action
    #   succeeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ScreenshotResult AWS API Documentation
    #
    class ScreenshotResult < Struct.new(
      :status,
      :error,
      :data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains search criteria for retrieving memory records.
    #
    # @!attribute [rw] search_query
    #   The search query to use for finding relevant memory records.
    #   @return [String]
    #
    # @!attribute [rw] memory_strategy_id
    #   The memory strategy identifier to filter memory records by.
    #   @return [String]
    #
    # @!attribute [rw] top_k
    #   The maximum number of top-scoring memory records to return. This
    #   value is used for semantic search ranking.
    #   @return [Integer]
    #
    # @!attribute [rw] metadata_filters
    #   Filters to apply to metadata associated with a memory.
    #   @return [Array<Types::MemoryMetadataFilterExpression>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/SearchCriteria AWS API Documentation
    #
    class SearchCriteria < Struct.new(
      :search_query,
      :memory_strategy_id,
      :top_k,
      :metadata_filters)
      SENSITIVE = [:search_query]
      include Aws::Structure
    end

    # @!attribute [rw] search_query
    #   The search query to find matching registry records.
    #   @return [String]
    #
    # @!attribute [rw] registry_ids
    #   The list of registry identifiers to search within. Currently, you
    #   can specify exactly one registry identifier. You can provide either
    #   the full Amazon Web Services Resource Name (ARN) or the 12-character
    #   alphanumeric registry ID.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to return in a single call. Valid
    #   values are 1 through 20. The default value is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   A metadata filter expression to narrow search results. Uses
    #   structured JSON operators including field-level operators (`$eq`,
    #   `$ne`, `$in`) and logical operators (`$and`, `$or`) on filterable
    #   fields (`name`, `descriptorType`, `version`). For example, to filter
    #   by descriptor type: `{"descriptorType": {"$eq": "MCP"}}`. To combine
    #   filters: `{"$and": [{"descriptorType": {"$eq": "MCP"}}, {"name":
    #   {"$eq": "my-tool"}}]}`.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/SearchRegistryRecordsRequest AWS API Documentation
    #
    class SearchRegistryRecordsRequest < Struct.new(
      :search_query,
      :registry_ids,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_records
    #   The list of registry records that match the search query, ordered by
    #   relevance.
    #   @return [Array<Types::RegistryRecordSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/SearchRegistryRecordsResponse AWS API Documentation
    #
    class SearchRegistryRecordsResponse < Struct.new(
      :registry_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Web Services Secrets Manager location configuration.
    #
    # @!attribute [rw] secret_arn
    #   The ARN of the Amazon Web Services Secrets Manager secret containing
    #   the certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/SecretsManagerLocation AWS API Documentation
    #
    class SecretsManagerLocation < Struct.new(
      :secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The MCP server definition with a schema version and inline content.
    # The `schemaVersion` identifies the version of the MCP server
    # configuration schema.
    #
    # @!attribute [rw] schema_version
    #   The schema version of the MCP server configuration. The schema
    #   version identifies the format of the server definition content.
    #   @return [String]
    #
    # @!attribute [rw] inline_content
    #   The inline content of the server definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ServerDefinition AWS API Documentation
    #
    class ServerDefinition < Struct.new(
      :schema_version,
      :inline_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service encountered an internal error. Try your request again
    # later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ServiceException AWS API Documentation
    #
    class ServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The exception that occurs when the request would cause a service quota
    # to be exceeded. Review your service quotas and either reduce your
    # request rate or request a quota increase.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains filter criteria for listing sessions.
    #
    # @!attribute [rw] event_filter
    #   The event filter condition to apply. Use this to filter sessions
    #   based on event presence.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/SessionFilter AWS API Documentation
    #
    class SessionFilter < Struct.new(
      :event_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # A time range filter for selecting sessions. Specifies the start and
    # end times to narrow down which sessions are included.
    #
    # @!attribute [rw] start_time
    #   The start time of the time range. Only sessions with activity at or
    #   after this timestamp are included.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the time range. Only sessions with activity before
    #   this timestamp are included.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/SessionFilterConfig AWS API Documentation
    #
    class SessionFilterConfig < Struct.new(
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The spending limits configuration for a payment session.
    #
    # @!attribute [rw] max_spend_amount
    #   The maximum amount that can be spent in the session.
    #   @return [Types::Amount]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/SessionLimits AWS API Documentation
    #
    class SessionLimits < Struct.new(
      :max_spend_amount)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a specific session in a batch evaluation, including
    # ground truth data and test scenario identifiers.
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session this metadata applies to.
    #   @return [String]
    #
    # @!attribute [rw] test_scenario_id
    #   An optional test scenario identifier for categorizing and tracking
    #   evaluation results.
    #   @return [String]
    #
    # @!attribute [rw] ground_truth
    #   The ground truth data for this session, including expected responses
    #   and assertions.
    #   @return [Types::GroundTruthSource]
    #
    # @!attribute [rw] metadata
    #   Additional key-value metadata associated with this session.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/SessionMetadataShape AWS API Documentation
    #
    class SessionMetadataShape < Struct.new(
      :session_id,
      :test_scenario_id,
      :ground_truth,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a session in an AgentCore Memory
    # resource.
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The identifier of the actor associated with the session.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the session was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/SessionSummary AWS API Documentation
    #
    class SessionSummary < Struct.new(
      :session_id,
      :actor_id,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structured skill definition with a schema version and inline
    # content.
    #
    # @!attribute [rw] schema_version
    #   The schema version of the skill definition. If you don't specify a
    #   version, the service detects it automatically.
    #   @return [String]
    #
    # @!attribute [rw] inline_content
    #   The inline content of the skill definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/SkillDefinition AWS API Documentation
    #
    class SkillDefinition < Struct.new(
      :schema_version,
      :inline_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # The skill markdown definition for agent skills descriptors.
    #
    # @!attribute [rw] inline_content
    #   The inline markdown content of the skill definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/SkillMdDefinition AWS API Documentation
    #
    class SkillMdDefinition < Struct.new(
      :inline_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # The contextual information that uniquely identifies a span within the
    # distributed tracing system. Contains session, trace, and span
    # identifiers used to correlate evaluation results with specific agent
    # execution points.
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session containing this span. Sessions
    #   represent complete conversation flows and are detected using
    #   configurable `SessionTimeoutMinutes` (default 15 minutes).
    #   @return [String]
    #
    # @!attribute [rw] trace_id
    #   The unique identifier of the trace containing this span. Traces
    #   represent individual request-response interactions within a session
    #   and group related spans together.
    #   @return [String]
    #
    # @!attribute [rw] span_id
    #   The unique identifier of the specific span being referenced. Spans
    #   represent individual operations like tool calls, model invocations,
    #   or other discrete actions within the agent's execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/SpanContext AWS API Documentation
    #
    class SpanContext < Struct.new(
      :session_id,
      :trace_id,
      :span_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_evaluation_name
    #   The name of the batch evaluation. Must be unique within your
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] evaluators
    #   The list of evaluators to apply during the batch evaluation. Can
    #   include both built-in evaluators and custom evaluators. Maximum of
    #   10 evaluators.
    #   @return [Array<Types::Evaluator>]
    #
    # @!attribute [rw] insights
    #   The list of insight analyses to run against sessions during the
    #   batch evaluation. Maximum of 10 insights.
    #   @return [Array<Types::Insight>]
    #
    # @!attribute [rw] data_source_config
    #   The data source configuration that specifies where to pull agent
    #   session traces from for evaluation.
    #   @return [Types::DataSourceConfig]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, the service ignores the request, but does not return an
    #   error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_metadata
    #   Optional metadata for the evaluation, including session-specific
    #   ground truth data and test scenario identifiers.
    #   @return [Types::EvaluationMetadata]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values to associate with the batch evaluation.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the KMS key used to encrypt evaluation data. If provided,
    #   customer data is encrypted at rest with the specified key.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the batch evaluation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StartBatchEvaluationRequest AWS API Documentation
    #
    class StartBatchEvaluationRequest < Struct.new(
      :batch_evaluation_name,
      :evaluators,
      :insights,
      :data_source_config,
      :client_token,
      :evaluation_metadata,
      :tags,
      :kms_key_arn,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_evaluation_id
    #   The unique identifier of the created batch evaluation.
    #   @return [String]
    #
    # @!attribute [rw] batch_evaluation_arn
    #   The Amazon Resource Name (ARN) of the created batch evaluation.
    #   @return [String]
    #
    # @!attribute [rw] batch_evaluation_name
    #   The name of the batch evaluation.
    #   @return [String]
    #
    # @!attribute [rw] evaluators
    #   The list of evaluators applied during the batch evaluation.
    #   @return [Array<Types::Evaluator>]
    #
    # @!attribute [rw] insights
    #   The list of insight analyses applied during the batch evaluation.
    #   @return [Array<Types::Insight>]
    #
    # @!attribute [rw] status
    #   The status of the batch evaluation.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the batch evaluation was created.
    #   @return [Time]
    #
    # @!attribute [rw] output_config
    #   The output configuration specifying where evaluation results are
    #   written.
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] tags
    #   The tags associated with the batch evaluation.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the KMS key used to encrypt evaluation data.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the batch evaluation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StartBatchEvaluationResponse AWS API Documentation
    #
    class StartBatchEvaluationResponse < Struct.new(
      :batch_evaluation_id,
      :batch_evaluation_arn,
      :batch_evaluation_name,
      :evaluators,
      :insights,
      :status,
      :created_at,
      :output_config,
      :tags,
      :kms_key_arn,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trace_id
    #   The trace identifier for request tracking.
    #   @return [String]
    #
    # @!attribute [rw] trace_parent
    #   The parent trace information for distributed tracing.
    #   @return [String]
    #
    # @!attribute [rw] browser_identifier
    #   The unique identifier of the browser to use for this session. This
    #   identifier specifies which browser environment to initialize for the
    #   session.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the browser session. This name helps you identify and
    #   manage the session. The name does not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] session_timeout_seconds
    #   The duration in seconds (time-to-live) after which the session
    #   automatically terminates, regardless of ongoing activity. Defaults
    #   to 3600 seconds (1 hour). Recommended minimum: 60 seconds. Maximum
    #   allowed: 28,800 seconds (8 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] view_port
    #   The dimensions of the browser viewport for this session. This
    #   determines the visible area of the web content and affects how web
    #   pages are rendered. If not specified, Amazon Bedrock AgentCore uses
    #   a default viewport size.
    #   @return [Types::ViewPort]
    #
    # @!attribute [rw] extensions
    #   A list of browser extensions to load into the browser session.
    #   @return [Array<Types::BrowserExtension>]
    #
    # @!attribute [rw] profile_configuration
    #   The browser profile configuration to use for this session. A browser
    #   profile contains persistent data such as cookies and local storage
    #   that can be reused across multiple browser sessions. If specified,
    #   the session initializes with the profile's stored data, enabling
    #   continuity for tasks that require authentication or personalized
    #   settings.
    #   @return [Types::BrowserProfileConfiguration]
    #
    # @!attribute [rw] proxy_configuration
    #   Optional proxy configuration for routing browser traffic through
    #   customer-specified proxy servers. When provided, enables HTTP Basic
    #   authentication via Amazon Web Services Secrets Manager and
    #   domain-based routing rules. Requires `secretsmanager:GetSecretValue`
    #   IAM permission for the specified secret ARNs.
    #   @return [Types::ProxyConfiguration]
    #
    # @!attribute [rw] enterprise_policies
    #   A list of files containing enterprise policies for the browser.
    #   @return [Array<Types::BrowserEnterprisePolicy>]
    #
    # @!attribute [rw] certificates
    #   A list of certificates to install in the browser session.
    #   @return [Array<Types::Certificate>]
    #
    # @!attribute [rw] filesystem_configurations
    #   The file system configurations to mount into the browser session.
    #   Use these configurations to mount your own Amazon Simple Storage
    #   Service (Amazon S3) Files or Amazon Elastic File System (Amazon EFS)
    #   access points. Your session can then read and write your data. If
    #   you don't specify this field, no additional file systems are
    #   mounted.
    #   @return [Array<Types::ToolsFileSystemConfiguration>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock AgentCore ignores the request, but does not
    #   return an error. This parameter helps prevent the creation of
    #   duplicate sessions if there are temporary network issues.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StartBrowserSessionRequest AWS API Documentation
    #
    class StartBrowserSessionRequest < Struct.new(
      :trace_id,
      :trace_parent,
      :browser_identifier,
      :name,
      :session_timeout_seconds,
      :view_port,
      :extensions,
      :profile_configuration,
      :proxy_configuration,
      :enterprise_policies,
      :certificates,
      :filesystem_configurations,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] browser_identifier
    #   The identifier of the browser.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the created browser session.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the browser session was created.
    #   @return [Time]
    #
    # @!attribute [rw] streams
    #   The streams associated with this browser session. These include the
    #   automation stream and live view stream.
    #   @return [Types::BrowserSessionStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StartBrowserSessionResponse AWS API Documentation
    #
    class StartBrowserSessionResponse < Struct.new(
      :browser_identifier,
      :session_id,
      :created_at,
      :streams)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trace_id
    #   The trace identifier for request tracking.
    #   @return [String]
    #
    # @!attribute [rw] trace_parent
    #   The parent trace information for distributed tracing.
    #   @return [String]
    #
    # @!attribute [rw] code_interpreter_identifier
    #   The unique identifier of the code interpreter to use for this
    #   session. This identifier specifies which code interpreter
    #   environment to initialize for the session.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the code interpreter session. This name helps you
    #   identify and manage the session. The name does not need to be
    #   unique.
    #   @return [String]
    #
    # @!attribute [rw] session_timeout_seconds
    #   The duration in seconds (time-to-live) after which the session
    #   automatically terminates, regardless of ongoing activity. Defaults
    #   to 900 seconds (15 minutes). Recommended minimum: 60 seconds.
    #   Maximum allowed: 28,800 seconds (8 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] certificates
    #   A list of certificates to install in the code interpreter session.
    #   @return [Array<Types::Certificate>]
    #
    # @!attribute [rw] filesystem_configurations
    #   The file system configurations to mount into the code interpreter
    #   session. Use these configurations to mount your own Amazon Simple
    #   Storage Service (Amazon S3) Files or Amazon Elastic File System
    #   (Amazon EFS) access points. Your session can then read and write
    #   your data. If you don't specify this field, no additional file
    #   systems are mounted.
    #   @return [Array<Types::ToolsFileSystemConfiguration>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock AgentCore ignores the request, but does not
    #   return an error. This parameter helps prevent the creation of
    #   duplicate sessions if there are temporary network issues.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StartCodeInterpreterSessionRequest AWS API Documentation
    #
    class StartCodeInterpreterSessionRequest < Struct.new(
      :trace_id,
      :trace_parent,
      :code_interpreter_identifier,
      :name,
      :session_timeout_seconds,
      :certificates,
      :filesystem_configurations,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_interpreter_identifier
    #   The identifier of the code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the created code interpreter session.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the code interpreter session was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StartCodeInterpreterSessionResponse AWS API Documentation
    #
    class StartCodeInterpreterSessionResponse < Struct.new(
      :code_interpreter_identifier,
      :session_id,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_id
    #   The unique identifier of the memory for which to start extraction
    #   jobs.
    #   @return [String]
    #
    # @!attribute [rw] extraction_job
    #   Extraction job to start in this operation.
    #   @return [Types::ExtractionJob]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotent processing
    #   of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StartMemoryExtractionJobInput AWS API Documentation
    #
    class StartMemoryExtractionJobInput < Struct.new(
      :memory_id,
      :extraction_job,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   Extraction Job ID that was attempted to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StartMemoryExtractionJobOutput AWS API Documentation
    #
    class StartMemoryExtractionJobOutput < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the recommendation. Must be unique within your account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of recommendation to generate. Valid values are
    #   `SYSTEM_PROMPT_RECOMMENDATION` for system prompt optimization or
    #   `TOOL_DESCRIPTION_RECOMMENDATION` for tool description optimization.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_config
    #   The configuration for the recommendation, including the input to
    #   optimize, agent traces to analyze, and evaluation settings.
    #   @return [Types::RecommendationConfig]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the KMS key used to encrypt recommendation data. If
    #   provided, customer data is encrypted at rest with the specified key.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, the service ignores the request, but does not return an
    #   error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values to associate with the recommendation.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StartRecommendationRequest AWS API Documentation
    #
    class StartRecommendationRequest < Struct.new(
      :name,
      :description,
      :type,
      :recommendation_config,
      :kms_key_arn,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendation_id
    #   The unique identifier of the created recommendation.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_arn
    #   The Amazon Resource Name (ARN) of the created recommendation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of recommendation.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_config
    #   The configuration for the recommendation.
    #   @return [Types::RecommendationConfig]
    #
    # @!attribute [rw] status
    #   The status of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the recommendation was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the recommendation was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StartRecommendationResponse AWS API Documentation
    #
    class StartRecommendationResponse < Struct.new(
      :recommendation_id,
      :recommendation_arn,
      :name,
      :description,
      :type,
      :recommendation_config,
      :status,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_evaluation_id
    #   The unique identifier of the batch evaluation to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StopBatchEvaluationRequest AWS API Documentation
    #
    class StopBatchEvaluationRequest < Struct.new(
      :batch_evaluation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_evaluation_id
    #   The unique identifier of the stopped batch evaluation.
    #   @return [String]
    #
    # @!attribute [rw] batch_evaluation_arn
    #   The Amazon Resource Name (ARN) of the stopped batch evaluation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the batch evaluation after the stop request.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the batch evaluation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StopBatchEvaluationResponse AWS API Documentation
    #
    class StopBatchEvaluationResponse < Struct.new(
      :batch_evaluation_id,
      :batch_evaluation_arn,
      :status,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trace_id
    #   The trace identifier for request tracking.
    #   @return [String]
    #
    # @!attribute [rw] trace_parent
    #   The parent trace information for distributed tracing.
    #   @return [String]
    #
    # @!attribute [rw] browser_identifier
    #   The unique identifier of the browser associated with the session.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the browser session to stop.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock AgentCore ignores the request, but does not
    #   return an error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StopBrowserSessionRequest AWS API Documentation
    #
    class StopBrowserSessionRequest < Struct.new(
      :trace_id,
      :trace_parent,
      :browser_identifier,
      :session_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] browser_identifier
    #   The identifier of the browser.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the browser session.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The time at which the browser session was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StopBrowserSessionResponse AWS API Documentation
    #
    class StopBrowserSessionResponse < Struct.new(
      :browser_identifier,
      :session_id,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trace_id
    #   The trace identifier for request tracking.
    #   @return [String]
    #
    # @!attribute [rw] trace_parent
    #   The parent trace information for distributed tracing.
    #   @return [String]
    #
    # @!attribute [rw] code_interpreter_identifier
    #   The unique identifier of the code interpreter associated with the
    #   session.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the code interpreter session to stop.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock AgentCore ignores the request, but does not
    #   return an error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StopCodeInterpreterSessionRequest AWS API Documentation
    #
    class StopCodeInterpreterSessionRequest < Struct.new(
      :trace_id,
      :trace_parent,
      :code_interpreter_identifier,
      :session_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_interpreter_identifier
    #   The identifier of the code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the code interpreter session.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the code interpreter session was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StopCodeInterpreterSessionResponse AWS API Documentation
    #
    class StopCodeInterpreterSessionResponse < Struct.new(
      :code_interpreter_identifier,
      :session_id,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] runtime_session_id
    #   The ID of the session that you want to stop.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_arn
    #   The ARN of the agent that contains the session that you want to
    #   stop.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   Optional qualifier to specify an agent alias, such as `prod`code&gt;
    #   or `dev`. If you don't provide a value, the DEFAULT alias is used.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Idempotent token used to identify the request. If you use the same
    #   token with multiple requests, the same response is returned. Use
    #   ClientToken to prevent the same request from being processed more
    #   than once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StopRuntimeSessionRequest AWS API Documentation
    #
    class StopRuntimeSessionRequest < Struct.new(
      :runtime_session_id,
      :agent_runtime_arn,
      :qualifier,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] runtime_session_id
    #   The ID of the session that you requested to stop.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code of the request to stop the session.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StopRuntimeSessionResponse AWS API Documentation
    #
    class StopRuntimeSessionResponse < Struct.new(
      :runtime_session_id,
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an update to a stream.
    #
    # @note StreamUpdate is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] automation_stream_update
    #   The update to an automation stream.
    #   @return [Types::AutomationStreamUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StreamUpdate AWS API Documentation
    #
    class StreamUpdate < Struct.new(
      :automation_stream_update,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AutomationStreamUpdate < StreamUpdate; end
      class Unknown < StreamUpdate; end
    end

    # Stripe Privy token request parameters.
    #
    # @!attribute [rw] request_host
    #   The host for the Privy API request. Defaults to "api.privy.io".
    #   @return [String]
    #
    # @!attribute [rw] request_path
    #   The path of the Stripe Privy API request.
    #   @return [String]
    #
    # @!attribute [rw] request_body
    #   Request body JSON for the Privy API call.
    #   @return [String]
    #
    # @!attribute [rw] include_authorization_signature
    #   Set to true to generate privy-authorization-signature.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StripePrivyTokenRequestInput AWS API Documentation
    #
    class StripePrivyTokenRequestInput < Struct.new(
      :request_host,
      :request_path,
      :request_body,
      :include_authorization_signature)
      SENSITIVE = [:request_body]
      include Aws::Structure
    end

    # Stripe Privy token response containing appId, basicAuthToken, and
    # optionally authorizationSignature.
    #
    # @!attribute [rw] authorization_signature
    #   Base64-encoded ECDSA P-256 authorization signature (only present
    #   when includeAuthorizationSignature is true).
    #   @return [String]
    #
    # @!attribute [rw] request_expiry
    #   Unix timestamp in milliseconds when the authorization signature
    #   expires.
    #   @return [Integer]
    #
    # @!attribute [rw] app_id
    #   The Privy app ID for the privy-app-id header.
    #   @return [String]
    #
    # @!attribute [rw] basic_auth_token
    #   Base64-encoded Basic Auth token (appId:appSecret) for the
    #   Authorization header.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StripePrivyTokenResponseOutput AWS API Documentation
    #
    class StripePrivyTokenResponseOutput < Struct.new(
      :authorization_signature,
      :request_expiry,
      :app_id,
      :basic_auth_token)
      SENSITIVE = [:authorization_signature, :basic_auth_token]
      include Aws::Structure
    end

    # Returned when you attempt a wallet operation against a Coinbase
    # Marketplace connector whose account does not hold an active
    # Marketplace subscription and is not within the legacy exception
    # period. Subscribe to the Marketplace listing before you retry the
    # operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] subscription_url
    #   The URL to the Marketplace listing where you can subscribe.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   The name of the product that requires a Marketplace subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/SubscriptionRequiredException AWS API Documentation
    #
    class SubscriptionRequiredException < Struct.new(
      :message,
      :subscription_url,
      :product_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The system prompt input, either as inline text or from a configuration
    # bundle.
    #
    # @note SystemPromptConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note SystemPromptConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SystemPromptConfig corresponding to the set member.
    #
    # @!attribute [rw] text
    #   The system prompt text provided inline.
    #   @return [String]
    #
    # @!attribute [rw] configuration_bundle
    #   The system prompt sourced from a configuration bundle version.
    #   @return [Types::SystemPromptConfigurationBundle]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/SystemPromptConfig AWS API Documentation
    #
    class SystemPromptConfig < Struct.new(
      :text,
      :configuration_bundle,
      :unknown)
      SENSITIVE = [:text]
      include Aws::Structure
      include Aws::Structure::Union

      class Text < SystemPromptConfig; end
      class ConfigurationBundle < SystemPromptConfig; end
      class Unknown < SystemPromptConfig; end
    end

    # A system prompt sourced from a configuration bundle version.
    #
    # @!attribute [rw] bundle_arn
    #   The Amazon Resource Name (ARN) of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version identifier of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] system_prompt_json_path
    #   The JSON path within the configuration bundle that contains the
    #   system prompt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/SystemPromptConfigurationBundle AWS API Documentation
    #
    class SystemPromptConfigurationBundle < Struct.new(
      :bundle_arn,
      :version_id,
      :system_prompt_json_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for generating system prompt optimization
    # recommendations.
    #
    # @!attribute [rw] system_prompt
    #   The current system prompt to optimize.
    #   @return [Types::SystemPromptConfig]
    #
    # @!attribute [rw] agent_traces
    #   The agent traces to analyze for generating recommendations.
    #   @return [Types::AgentTracesConfig]
    #
    # @!attribute [rw] evaluation_config
    #   The evaluation configuration specifying which evaluator to use for
    #   assessing recommendation quality.
    #   @return [Types::RecommendationEvaluationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/SystemPromptRecommendationConfig AWS API Documentation
    #
    class SystemPromptRecommendationConfig < Struct.new(
      :system_prompt,
      :agent_traces,
      :evaluation_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a system prompt recommendation, containing the optimized
    # prompt.
    #
    # @!attribute [rw] recommended_system_prompt
    #   The optimized system prompt text generated by the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] configuration_bundle
    #   The configuration bundle containing the recommended system prompt,
    #   if the input was sourced from a configuration bundle.
    #   @return [Types::RecommendationResultConfigurationBundle]
    #
    # @!attribute [rw] explanation
    #   An explanation of why the recommendation was generated and what
    #   patterns were identified in the agent traces.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code if the recommendation failed.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message if the recommendation failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/SystemPromptRecommendationResult AWS API Documentation
    #
    class SystemPromptRecommendationResult < Struct.new(
      :recommended_system_prompt,
      :configuration_bundle,
      :explanation,
      :error_code,
      :error_message)
      SENSITIVE = [:recommended_system_prompt]
      include Aws::Structure
    end

    # A reference to a gateway target.
    #
    # @!attribute [rw] name
    #   The name of the gateway target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/TargetRef AWS API Documentation
    #
    class TargetRef < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling. Reduce the frequency
    # of requests and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ThrottledException AWS API Documentation
    #
    class ThrottledException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The exception that occurs when the request was denied due to request
    # throttling. This happens when you exceed the allowed request rate for
    # an operation. Reduce the frequency of requests or implement
    # exponential backoff retry logic in your application.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single token balance entry.
    #
    # @!attribute [rw] amount
    #   Raw balance in the smallest denomination (e.g., USDC base units
    #   where 1 USDC = 1000000).
    #   @return [String]
    #
    # @!attribute [rw] decimals
    #   Number of decimal places for the token (e.g., 6 for USDC).
    #   @return [Integer]
    #
    # @!attribute [rw] token
    #   The supported token for this balance.
    #   @return [String]
    #
    # @!attribute [rw] network
    #   The blockchain network family (ETHEREUM or SOLANA).
    #   @return [String]
    #
    # @!attribute [rw] chain
    #   The specific blockchain chain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/TokenBalance AWS API Documentation
    #
    class TokenBalance < Struct.new(
      :amount,
      :decimals,
      :token,
      :network,
      :chain)
      SENSITIVE = []
      include Aws::Structure
    end

    # The token consumption statistics for language model operations during
    # evaluation. Provides detailed breakdown of input, output, and total
    # tokens used for cost tracking and performance monitoring.
    #
    # @!attribute [rw] input_tokens
    #   The number of tokens consumed for input processing during the
    #   evaluation. Includes tokens from the evaluation prompt, agent
    #   traces, and any additional context provided to the evaluator model.
    #   @return [Integer]
    #
    # @!attribute [rw] output_tokens
    #   The number of tokens generated by the evaluator model in its
    #   response. Includes tokens for the score, explanation, and any
    #   additional output produced during the evaluation process.
    #   @return [Integer]
    #
    # @!attribute [rw] total_tokens
    #   The total number of tokens consumed during the evaluation,
    #   calculated as the sum of input and output tokens. Used for cost
    #   calculation and rate limiting within the service limits.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/TokenUsage AWS API Documentation
    #
    class TokenUsage < Struct.new(
      :input_tokens,
      :output_tokens,
      :total_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # The collection of arguments that specify the operation to perform and
    # its parameters when invoking a tool in Amazon Bedrock AgentCore.
    # Different tools require different arguments, and this structure
    # provides a flexible way to pass the appropriate arguments to each tool
    # type.
    #
    # @!attribute [rw] code
    #   The code to execute in a code interpreter session. This is the
    #   source code in the specified programming language that will be
    #   executed by the code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The programming language of the code to execute. This tells the code
    #   interpreter which language runtime to use for execution.
    #   @return [String]
    #
    # @!attribute [rw] clear_context
    #   Whether to clear the context for the tool.
    #   @return [Boolean]
    #
    # @!attribute [rw] command
    #   The command to execute with the tool.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path for the tool operation.
    #   @return [String]
    #
    # @!attribute [rw] paths
    #   The paths for the tool operation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] content
    #   The content for the tool operation.
    #   @return [Array<Types::InputContentBlock>]
    #
    # @!attribute [rw] directory_path
    #   The directory path for the tool operation.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The identifier of the task for the tool operation.
    #   @return [String]
    #
    # @!attribute [rw] runtime
    #   The runtime environment to use for code execution. If not specified,
    #   defaults to `deno` for JavaScript and TypeScript.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ToolArguments AWS API Documentation
    #
    class ToolArguments < Struct.new(
      :code,
      :language,
      :clear_context,
      :command,
      :path,
      :paths,
      :content,
      :directory_path,
      :task_id,
      :runtime)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tool description content.
    #
    # @note ToolDescriptionConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ToolDescriptionConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ToolDescriptionConfig corresponding to the set member.
    #
    # @!attribute [rw] text
    #   The tool description as inline text.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ToolDescriptionConfig AWS API Documentation
    #
    class ToolDescriptionConfig < Struct.new(
      :text,
      :unknown)
      SENSITIVE = [:text]
      include Aws::Structure
      include Aws::Structure::Union

      class Text < ToolDescriptionConfig; end
      class Unknown < ToolDescriptionConfig; end
    end

    # Tool descriptions sourced from a configuration bundle version.
    #
    # @!attribute [rw] bundle_arn
    #   The Amazon Resource Name (ARN) of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version identifier of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] tools
    #   The list of tool entries mapping tool names to their JSON paths
    #   within the bundle.
    #   @return [Array<Types::ConfigurationBundleToolEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ToolDescriptionConfigurationBundle AWS API Documentation
    #
    class ToolDescriptionConfigurationBundle < Struct.new(
      :bundle_arn,
      :version_id,
      :tools)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tool description input containing the tool name and its current
    # description.
    #
    # @!attribute [rw] tool_name
    #   The name of the tool.
    #   @return [String]
    #
    # @!attribute [rw] tool_description
    #   The current description of the tool to optimize.
    #   @return [Types::ToolDescriptionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ToolDescriptionInput AWS API Documentation
    #
    class ToolDescriptionInput < Struct.new(
      :tool_name,
      :tool_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for a single tool description recommendation.
    #
    # @!attribute [rw] tool_name
    #   The name of the tool.
    #   @return [String]
    #
    # @!attribute [rw] recommended_tool_description
    #   The optimized tool description text generated by the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] explanation
    #   An explanation of why the recommendation was generated for this tool
    #   and what patterns were identified in the agent traces.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ToolDescriptionOutput AWS API Documentation
    #
    class ToolDescriptionOutput < Struct.new(
      :tool_name,
      :recommended_tool_description,
      :explanation)
      SENSITIVE = [:recommended_tool_description]
      include Aws::Structure
    end

    # Configuration for generating tool description optimization
    # recommendations.
    #
    # @!attribute [rw] tool_description
    #   The current tool descriptions to optimize.
    #   @return [Types::ToolDescriptionSource]
    #
    # @!attribute [rw] agent_traces
    #   The agent traces to analyze for generating tool description
    #   recommendations.
    #   @return [Types::AgentTracesConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ToolDescriptionRecommendationConfig AWS API Documentation
    #
    class ToolDescriptionRecommendationConfig < Struct.new(
      :tool_description,
      :agent_traces)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a tool description recommendation, containing optimized
    # descriptions.
    #
    # @!attribute [rw] tools
    #   The list of tools with their recommended descriptions.
    #   @return [Array<Types::ToolDescriptionOutput>]
    #
    # @!attribute [rw] configuration_bundle
    #   The configuration bundle containing the recommended tool
    #   descriptions, if the input was sourced from a configuration bundle.
    #   @return [Types::RecommendationResultConfigurationBundle]
    #
    # @!attribute [rw] error_code
    #   The error code if the recommendation failed.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message if the recommendation failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ToolDescriptionRecommendationResult AWS API Documentation
    #
    class ToolDescriptionRecommendationResult < Struct.new(
      :tools,
      :configuration_bundle,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source of tool descriptions, either inline text or from a
    # configuration bundle.
    #
    # @note ToolDescriptionSource is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ToolDescriptionSource is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ToolDescriptionSource corresponding to the set member.
    #
    # @!attribute [rw] tool_description_text
    #   Tool descriptions provided as inline text.
    #   @return [Types::ToolDescriptionTextInput]
    #
    # @!attribute [rw] configuration_bundle
    #   Tool descriptions sourced from a configuration bundle version.
    #   @return [Types::ToolDescriptionConfigurationBundle]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ToolDescriptionSource AWS API Documentation
    #
    class ToolDescriptionSource < Struct.new(
      :tool_description_text,
      :configuration_bundle,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ToolDescriptionText < ToolDescriptionSource; end
      class ConfigurationBundle < ToolDescriptionSource; end
      class Unknown < ToolDescriptionSource; end
    end

    # Inline tool description input containing a list of tools.
    #
    # @!attribute [rw] tools
    #   The list of tool descriptions to optimize.
    #   @return [Array<Types::ToolDescriptionInput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ToolDescriptionTextInput AWS API Documentation
    #
    class ToolDescriptionTextInput < Struct.new(
      :tools)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains structured content from a tool result.
    #
    # @!attribute [rw] task_id
    #   The identifier of the task that produced the result.
    #   @return [String]
    #
    # @!attribute [rw] task_status
    #   The status of the task that produced the result.
    #   @return [String]
    #
    # @!attribute [rw] stdout
    #   The standard output from the tool execution.
    #   @return [String]
    #
    # @!attribute [rw] stderr
    #   The standard error output from the tool execution.
    #   @return [String]
    #
    # @!attribute [rw] exit_code
    #   The exit code from the tool execution.
    #   @return [Integer]
    #
    # @!attribute [rw] execution_time
    #   The execution time of the tool operation in milliseconds.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ToolResultStructuredContent AWS API Documentation
    #
    class ToolResultStructuredContent < Struct.new(
      :task_id,
      :task_status,
      :stdout,
      :stderr,
      :exit_code,
      :execution_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The MCP tools definition with a protocol version and inline content.
    # The `protocolVersion` identifies the MCP protocol version that the
    # tools conform to. This differs from `schemaVersion` in the server
    # definition, which identifies the server configuration schema format.
    #
    # @!attribute [rw] protocol_version
    #   The MCP protocol version that the tools conform to. This differs
    #   from the `schemaVersion` field in the server definition, which
    #   identifies the server configuration schema format.
    #   @return [String]
    #
    # @!attribute [rw] inline_content
    #   The inline content of the tools definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ToolsDefinition AWS API Documentation
    #
    class ToolsDefinition < Struct.new(
      :protocol_version,
      :inline_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a file system to mount into the session by providing exactly
    # one of the following:
    #
    # * `s3FilesConfiguration` - Mounts an Amazon Simple Storage Service
    #   (Amazon S3) Files access point.
    #
    # * `efsConfiguration` - Mounts an Amazon Elastic File System (Amazon
    #   EFS) access point.
    #
    # @note ToolsFileSystemConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ToolsFileSystemConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ToolsFileSystemConfiguration corresponding to the set member.
    #
    # @!attribute [rw] s3_files_configuration
    #   The configuration for mounting your own Amazon Simple Storage
    #   Service (Amazon S3) Files access point into the session.
    #   @return [Types::S3FilesConfiguration]
    #
    # @!attribute [rw] efs_configuration
    #   The configuration for mounting your own Amazon Elastic File System
    #   (Amazon EFS) access point into the session.
    #   @return [Types::EfsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ToolsFileSystemConfiguration AWS API Documentation
    #
    class ToolsFileSystemConfiguration < Struct.new(
      :s3_files_configuration,
      :efs_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3FilesConfiguration < ToolsFileSystemConfiguration; end
      class EfsConfiguration < ToolsFileSystemConfiguration; end
      class Unknown < ToolsFileSystemConfiguration; end
    end

    # This exception is thrown when the JWT bearer token is invalid or not
    # found for OAuth bearer token based access
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/Unit AWS API Documentation
    #
    class Unit < Aws::EmptyStructure; end

    # @!attribute [rw] ab_test_id
    #   The unique identifier of the A/B test to update.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, the service ignores the request, but does not return an
    #   error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name of the A/B test.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the A/B test.
    #   @return [String]
    #
    # @!attribute [rw] variants
    #   The updated list of variants.
    #   @return [Array<Types::Variant>]
    #
    # @!attribute [rw] gateway_filter
    #   The updated gateway filter.
    #   @return [Types::GatewayFilter]
    #
    # @!attribute [rw] evaluation_config
    #   The updated evaluation configuration.
    #   @return [Types::ABTestEvaluationConfig]
    #
    # @!attribute [rw] role_arn
    #   The updated IAM role ARN.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   The updated execution status to enable or disable the A/B test.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/UpdateABTestRequest AWS API Documentation
    #
    class UpdateABTestRequest < Struct.new(
      :ab_test_id,
      :client_token,
      :name,
      :description,
      :variants,
      :gateway_filter,
      :evaluation_config,
      :role_arn,
      :execution_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ab_test_id
    #   The unique identifier of the updated A/B test.
    #   @return [String]
    #
    # @!attribute [rw] ab_test_arn
    #   The Amazon Resource Name (ARN) of the updated A/B test.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the A/B test.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   The execution status of the A/B test.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the A/B test was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/UpdateABTestResponse AWS API Documentation
    #
    class UpdateABTestResponse < Struct.new(
      :ab_test_id,
      :ab_test_arn,
      :status,
      :execution_status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] browser_identifier
    #   The identifier of the browser.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the browser session.
    #   @return [String]
    #
    # @!attribute [rw] stream_update
    #   The update to apply to the browser stream.
    #   @return [Types::StreamUpdate]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/UpdateBrowserStreamRequest AWS API Documentation
    #
    class UpdateBrowserStreamRequest < Struct.new(
      :browser_identifier,
      :session_id,
      :stream_update,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] browser_identifier
    #   The identifier of the browser.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the browser session.
    #   @return [String]
    #
    # @!attribute [rw] streams
    #   The collection of streams associated with a browser session in
    #   Amazon Bedrock AgentCore. These streams provide different ways to
    #   interact with and observe the browser session, including
    #   programmatic control and visual representation of the browser
    #   content.
    #   @return [Types::BrowserSessionStream]
    #
    # @!attribute [rw] updated_at
    #   The time at which the browser stream was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/UpdateBrowserStreamResponse AWS API Documentation
    #
    class UpdateBrowserStreamResponse < Struct.new(
      :browser_identifier,
      :session_id,
      :streams,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The OAuth2.0 token or user ID that was used to generate the workload
    # access token used for initiating the user authorization flow to
    # retrieve OAuth2.0 tokens.
    #
    # @note UserIdentifier is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] user_token
    #   The OAuth2.0 token issued by the user’s identity provider that was
    #   used to generate the workload access token
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The ID of the user for whom you have retrieved a workload access
    #   token for
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/UserIdentifier AWS API Documentation
    #
    class UserIdentifier < Struct.new(
      :user_token,
      :user_id,
      :unknown)
      SENSITIVE = [:user_token]
      include Aws::Structure
      include Aws::Structure::Union

      class UserToken < UserIdentifier; end
      class UserId < UserIdentifier; end
      class Unknown < UserIdentifier; end
    end

    # A session associated with a user intent cluster.
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session.
    #   @return [String]
    #
    # @!attribute [rw] user_messages
    #   The user messages from this session that contributed to the intent
    #   cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/UserIntentAffectedSession AWS API Documentation
    #
    class UserIntentAffectedSession < Struct.new(
      :session_id,
      :user_messages)
      SENSITIVE = []
      include Aws::Structure
    end

    # A cluster of similar user intents identified across sessions.
    #
    # @!attribute [rw] cluster_id
    #   The unique identifier of the user intent cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the user intent cluster.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the user intent pattern.
    #   @return [String]
    #
    # @!attribute [rw] affected_session_count
    #   The number of sessions with this user intent.
    #   @return [Integer]
    #
    # @!attribute [rw] affected_sessions
    #   The list of sessions with this user intent.
    #   @return [Array<Types::UserIntentAffectedSession>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/UserIntentCluster AWS API Documentation
    #
    class UserIntentCluster < Struct.new(
      :cluster_id,
      :name,
      :description,
      :affected_session_count,
      :affected_sessions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user intent clustering result containing grouped user intents
    # identified across evaluated sessions.
    #
    # @!attribute [rw] user_intents
    #   The list of user intent clusters identified across analyzed
    #   sessions.
    #   @return [Array<Types::UserIntentCluster>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/UserIntentClusteringResultContent AWS API Documentation
    #
    class UserIntentClusteringResultContent < Struct.new(
      :user_intents)
      SENSITIVE = []
      include Aws::Structure
    end

    # The exception that occurs when the input fails to satisfy the
    # constraints specified by the service. Check the error message for
    # details about which input parameter is invalid and correct your
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stores information about a field passed inside a request that resulted
    # in an exception.
    #
    # @!attribute [rw] name
    #   The name of the field.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message describing why this field failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A variant in an A/B test, representing either the control (C) or
    # treatment (T1) configuration.
    #
    # @!attribute [rw] name
    #   The name of the variant. Must be `C` for control or `T1` for
    #   treatment.
    #   @return [String]
    #
    # @!attribute [rw] weight
    #   The percentage of traffic to route to this variant. Weights across
    #   all variants must sum to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] variant_configuration
    #   The configuration for this variant, including the configuration
    #   bundle or target reference.
    #   @return [Types::VariantConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/Variant AWS API Documentation
    #
    class Variant < Struct.new(
      :name,
      :weight,
      :variant_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for an A/B test variant.
    #
    # @!attribute [rw] configuration_bundle
    #   A reference to a configuration bundle version to use for this
    #   variant.
    #   @return [Types::ConfigurationBundleRef]
    #
    # @!attribute [rw] target
    #   A reference to a gateway target to route traffic to for this
    #   variant.
    #   @return [Types::TargetRef]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/VariantConfiguration AWS API Documentation
    #
    class VariantConfiguration < Struct.new(
      :configuration_bundle,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # Statistical results for a treatment variant compared against the
    # control.
    #
    # @!attribute [rw] variant_name
    #   The name of the treatment variant.
    #   @return [String]
    #
    # @!attribute [rw] sample_size
    #   The number of sessions evaluated for this variant.
    #   @return [Integer]
    #
    # @!attribute [rw] mean
    #   The mean evaluation score for this variant.
    #   @return [Float]
    #
    # @!attribute [rw] absolute_change
    #   The absolute change in mean score compared to the control variant.
    #   @return [Float]
    #
    # @!attribute [rw] percent_change
    #   The percentage change in mean score compared to the control variant.
    #   @return [Float]
    #
    # @!attribute [rw] p_value
    #   The p-value indicating the statistical significance of the observed
    #   difference.
    #   @return [Float]
    #
    # @!attribute [rw] confidence_interval
    #   The confidence interval for the observed difference.
    #   @return [Types::ConfidenceInterval]
    #
    # @!attribute [rw] is_significant
    #   Whether the observed difference is statistically significant.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/VariantResult AWS API Documentation
    #
    class VariantResult < Struct.new(
      :variant_name,
      :sample_size,
      :mean,
      :absolute_change,
      :percent_change,
      :p_value,
      :confidence_interval,
      :is_significant)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration that defines the dimensions of a browser viewport in
    # a browser session. The viewport determines the visible area of web
    # content and affects how web pages are rendered and displayed. Proper
    # viewport configuration ensures that web content is displayed correctly
    # for the agent's browsing tasks.
    #
    # @!attribute [rw] width
    #   The width of the viewport in pixels. This value determines the
    #   horizontal dimension of the visible area. Valid values range from
    #   800 to 1920 pixels.
    #   @return [Integer]
    #
    # @!attribute [rw] height
    #   The height of the viewport in pixels. This value determines the
    #   vertical dimension of the visible area. Valid values range from 600
    #   to 1080 pixels.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ViewPort AWS API Documentation
    #
    class ViewPort < Struct.new(
      :width,
      :height)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains output from a code interpreter stream.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CodeInterpreterStreamOutput AWS API Documentation
    #
    class CodeInterpreterStreamOutput < Enumerator

      def event_types
        [
          :result,
          :access_denied_exception,
          :conflict_exception,
          :internal_server_exception,
          :resource_not_found_exception,
          :service_quota_exceeded_exception,
          :throttling_exception,
          :validation_exception
        ]
      end

    end

    # The streaming output union for the `InvokeAgentRuntimeCommand`
    # operation. This union delivers typed events: `contentStart` (first),
    # `contentDelta` (middle), and `contentStop` (last).
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InvokeAgentRuntimeCommandStreamOutput AWS API Documentation
    #
    class InvokeAgentRuntimeCommandStreamOutput < Enumerator

      def event_types
        [
          :chunk,
          :access_denied_exception,
          :internal_server_exception,
          :resource_not_found_exception,
          :service_quota_exceeded_exception,
          :throttling_exception,
          :validation_exception,
          :runtime_client_error
        ]
      end

    end

    # The streaming events returned by a harness invocation.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InvokeHarnessStreamOutput AWS API Documentation
    #
    class InvokeHarnessStreamOutput < Enumerator

      def event_types
        [
          :message_start,
          :content_block_start,
          :content_block_delta,
          :content_block_stop,
          :message_stop,
          :metadata,
          :internal_server_exception,
          :validation_exception,
          :runtime_client_error
        ]
      end

    end

  end
end


# frozen_string_literal: true

# This is generated code!

module Aws::BedrockAgentCore
  # This module contains the types returned by client operations.
  module Types

    # <p> The A2A (Agent-to-Agent) descriptor configuration for a registry record.</p>
    # @!attribute agent_card
    #   <p> The agent card definition that describes the agent's capabilities and interface.</p>
    #   @return [Types::AgentCardDefinition]
    class A2aDescriptor < Struct.new(
      nil,
      :agent_card,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The evaluation configuration for an A/B test, specifying which online evaluation configurations to use for measuring variant performance.</p>
    # @!attribute online_evaluation_config_arn
    #   <p>The Amazon Resource Name (ARN) of a single online evaluation configuration to use for both variants.</p>
    #   @return [String]
    # @!attribute per_variant_online_evaluation_config
    #   <p>Per-variant online evaluation configurations, allowing different evaluation settings for each variant.</p>
    #   @return [Array<Types::PerVariantOnlineEvaluationConfig>]
    class ABTestEvaluationConfig < Struct.new(
      :online_evaluation_config_arn,
      :per_variant_online_evaluation_config,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class OnlineEvaluationConfigArn < ABTestEvaluationConfig; end
      class PerVariantOnlineEvaluationConfig < ABTestEvaluationConfig; end
      class Unknown < ABTestEvaluationConfig; end
    end

    # <p>The statistical results of an A/B test.</p>
    # @!attribute analysis_timestamp
    #   <p>The timestamp when the analysis was performed.</p>
    #   @return [Time]
    # @!attribute evaluator_metrics
    #   <p>The per-evaluator metrics comparing control and treatment variants.</p>
    #   @return [Array<Types::EvaluatorMetric>]
    class ABTestResults < Struct.new(
      nil,
      :analysis_timestamp,
      :evaluator_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about an A/B test.</p>
    # @!attribute ab_test_id
    #   <p>The unique identifier of the A/B test.</p>
    #   @return [String]
    # @!attribute ab_test_arn
    #   <p>The Amazon Resource Name (ARN) of the A/B test.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the A/B test.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the A/B test.</p>
    #   @return [String]
    # @!attribute execution_status
    #   <p>The execution status of the A/B test.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the A/B test.</p>
    #   @return [String]
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway used for traffic splitting.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the A/B test was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the A/B test was last updated.</p>
    #   @return [Time]
    class ABTestSummary < Struct.new(
      nil,
      :ab_test_id,
      :ab_test_arn,
      :name,
      :status,
      :execution_status,
      :description,
      :gateway_arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The exception that occurs when you do not have sufficient permissions to perform an action. Verify that your IAM policy includes the necessary permissions for the operation you are trying to perform.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about an actor in an AgentCore Memory resource.</p>
    # @!attribute actor_id
    #   <p>The unique identifier of the actor.</p>
    #   @return [String]
    class ActorSummary < Struct.new(
      nil,
      :actor_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A session affected by a detected failure pattern, including root cause details.</p>
    # @!attribute session_id
    #   <p>The unique identifier of the affected session.</p>
    #   @return [String]
    # @!attribute explanation
    #   <p>An explanation of how the failure manifested in this session.</p>
    #   @return [String]
    # @!attribute fix_type
    #   <p>The type of fix recommended for this failure.</p>
    #   @return [String]
    # @!attribute recommendation
    #   <p>The specific fix recommendation for this session.</p>
    #   @return [String]
    # @!attribute failure_spans
    #   <p>The list of spans where failures were detected in this session.</p>
    #   @return [Array<Types::FailureSpanDetail>]
    class AffectedSession < Struct.new(
      nil,
      :session_id,
      :explanation,
      :fix_type,
      :recommendation,
      :failure_spans,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The agent card definition for A2A descriptors, including the schema version and inline content that describes the agent's capabilities.</p>
    # @!attribute schema_version
    #   <p> The schema version of the agent card definition.</p>
    #   @return [String]
    # @!attribute inline_content
    #   <p> The inline content of the agent card definition.</p>
    #   @return [String]
    class AgentCardDefinition < Struct.new(
      nil,
      :schema_version,
      :inline_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The agent skills descriptor configuration for a registry record.</p>
    # @!attribute skill_md
    #   <p> The skill description in markdown format.</p>
    #   @return [Types::SkillMdDefinition]
    # @!attribute skill_definition
    #   <p> The structured skill definition with a schema version and content.</p>
    #   @return [Types::SkillDefinition]
    class AgentSkillsDescriptor < Struct.new(
      nil,
      :skill_md,
      :skill_definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration specifying where to read agent traces from for recommendation analysis.</p>
    # @!attribute session_spans
    #   <p>Agent traces provided as inline session spans in OpenTelemetry format.</p>
    #   @return [Array<JSON>]
    # @!attribute cloudwatch_logs
    #   <p>Agent traces read from CloudWatch Logs.</p>
    #   @return [Types::CloudWatchLogsTraceConfig]
    # @!attribute batch_evaluation
    #   <p>Use a completed batch evaluation as the source of agent traces.</p>
    #   @return [Types::BatchEvaluationTraceConfig]
    # @!attribute online_evaluation
    #   <p>Agent traces from an online evaluation configuration over a specified time range.</p>
    #   @return [Types::OnlineEvaluationTraceConfig]
    class AgentTracesConfig < Struct.new(
      :session_spans,
      :cloudwatch_logs,
      :batch_evaluation,
      :online_evaluation,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SessionSpans < AgentTracesConfig; end
      class CloudwatchLogs < AgentTracesConfig; end
      class BatchEvaluation < AgentTracesConfig; end
      class OnlineEvaluation < AgentTracesConfig; end
      class Unknown < AgentTracesConfig; end
    end

    # <p>Represents a monetary amount with a currency.</p>
    # @!attribute value
    #   <p>The numeric value of the amount.</p>
    #   @return [String]
    # @!attribute currency
    #   <p>The currency code for the amount.</p>
    #   @return [String]
    class Amount < Struct.new(
      nil,
      :value,
      :currency,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a stream that enables programmatic control of a browser session in Amazon Bedrock AgentCore. This stream provides a bidirectional communication channel for sending commands to the browser and receiving responses, allowing agents to automate web interactions such as navigation, form filling, and element clicking.</p>
    # @!attribute stream_endpoint
    #   <p>The endpoint URL for the automation stream. This URL is used to establish a WebSocket connection to the stream for sending commands and receiving responses.</p>
    #   @return [String]
    # @!attribute stream_status
    #   <p>The current status of the automation stream. This indicates whether the stream is available for use. Possible values include ACTIVE, CONNECTING, and DISCONNECTED.</p>
    #   @return [String]
    class AutomationStream < Struct.new(
      nil,
      :stream_endpoint,
      :stream_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an update to an automation stream.</p>
    # @!attribute stream_status
    #   <p>The status of the automation stream.</p>
    #   @return [String]
    class AutomationStreamUpdate < Struct.new(
      nil,
      :stream_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The available spending limits for a payment session.</p>
    # @!attribute available_spend_amount
    #   <p>The remaining available amount that can be spent.</p>
    #   @return [Types::Amount]
    # @!attribute updated_at
    #   <p>The timestamp when the available limits were last updated.</p>
    #   @return [Time]
    class AvailableLimits < Struct.new(
      nil,
      :available_spend_amount,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for HTTP Basic Authentication using credentials stored in Amazon Web Services Secrets Manager. The secret must contain a JSON object with <code>username</code> and <code>password</code> string fields. Username allows alphanumeric characters and <code>@._+=-</code> symbols (pattern: <code>^[a-zA-Z0-9@._+=\-]+$</code>). Password allows alphanumeric characters and <code>@._+=-!#$%&amp;*</code> symbols (pattern: <code>^[a-zA-Z0-9@._+=\-!#$%&amp;*]+$</code>). Both fields have a maximum length of 256 characters.</p>
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services Secrets Manager secret containing proxy credentials. The secret must be a JSON object with <code>username</code> and <code>password</code> string fields that meet validation requirements. The caller must have <code>secretsmanager:GetSecretValue</code> permission for this ARN. Example secret format: <code>{"username": "proxy_user", "password": "secure_password"}</code> </p>
    #   @return [String]
    class BasicAuth < Struct.new(
      nil,
      :secret_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The unique ID of the memory resource where records will be created.</p>
    #   @return [String]
    # @!attribute records
    #   <p>A list of memory record creation inputs to be processed in the batch operation.</p>
    #   @return [Array<Types::MemoryRecordCreateInput>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotent processing of the batch request.</p>
    #   @return [String]
    # @!attribute record_expiry_specification
    #   <p>The record expiry (long-term memory time-to-live) applied to every record created by this request. Set <code>recordExpiryDurationDays</code> to the number of days after which the records expire. Only the expiry provided here is applied; the records' strategy association has no effect on their expiry. If you do not provide this value, the records do not expire. The <code>REMOVE</code> action does not apply when creating records.</p>
    #   @return [Types::RecordExpirySpecification]
    class BatchCreateMemoryRecordsInput < Struct.new(
      nil,
      :memory_id,
      :records,
      :client_token,
      :record_expiry_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute successful_records
    #   <p>A list of memory records that were successfully created during the batch operation.</p>
    #   @return [Array<Types::MemoryRecordOutput>]
    # @!attribute failed_records
    #   <p>A list of memory records that failed to be created, including error details for each failure.</p>
    #   @return [Array<Types::MemoryRecordOutput>]
    class BatchCreateMemoryRecordsOutput < Struct.new(
      nil,
      :successful_records,
      :failed_records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The unique ID of the memory resource where records will be deleted.</p>
    #   @return [String]
    # @!attribute records
    #   <p>A list of memory record deletion inputs to be processed in the batch operation.</p>
    #   @return [Array<Types::MemoryRecordDeleteInput>]
    class BatchDeleteMemoryRecordsInput < Struct.new(
      nil,
      :memory_id,
      :records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute successful_records
    #   <p>A list of memory records that were successfully deleted during the batch operation.</p>
    #   @return [Array<Types::MemoryRecordOutput>]
    # @!attribute failed_records
    #   <p>A list of memory records that failed to be deleted, including error details for each failure.</p>
    #   @return [Array<Types::MemoryRecordOutput>]
    class BatchDeleteMemoryRecordsOutput < Struct.new(
      nil,
      :successful_records,
      :failed_records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary representation for list responses.</p>
    # @!attribute batch_evaluation_id
    #   <p>The unique identifier of the batch evaluation.</p>
    #   @return [String]
    # @!attribute batch_evaluation_arn
    #   <p>The Amazon Resource Name (ARN) of the batch evaluation.</p>
    #   @return [String]
    # @!attribute batch_evaluation_name
    #   <p>The name of the batch evaluation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the batch evaluation.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the batch evaluation was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the batch evaluation.</p>
    #   @return [String]
    # @!attribute evaluators
    #   <p>The list of evaluators applied during the batch evaluation.</p>
    #   @return [Array<Types::Evaluator>]
    # @!attribute insights
    #   <p>The list of insight analyses applied during the batch evaluation.</p>
    #   @return [Array<Types::Insight>]
    # @!attribute evaluation_results
    #   <p>The aggregated evaluation results.</p>
    #   @return [Types::EvaluationJobResults]
    # @!attribute error_details
    #   <p>The error details if the batch evaluation encountered failures.</p>
    #   @return [Array<String>]
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key used to encrypt evaluation data.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the batch evaluation was last updated.</p>
    #   @return [Time]
    class BatchEvaluationSummary < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for using a batch evaluation as the source of agent traces for recommendations.</p>
    # @!attribute batch_evaluation_arn
    #   <p>The ARN of the completed batch evaluation to use as the trace source.</p>
    #   @return [String]
    class BatchEvaluationTraceConfig < Struct.new(
      nil,
      :batch_evaluation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The unique ID of the memory resource where records will be updated.</p>
    #   @return [String]
    # @!attribute records
    #   <p>A list of memory record update inputs to be processed in the batch operation.</p>
    #   @return [Array<Types::MemoryRecordUpdateInput>]
    # @!attribute record_expiry_specification
    #   <p>The record expiry (long-term memory time-to-live) applied to every record updated by this request. Set <code>recordExpiryDurationDays</code> to configure or overwrite the number of days after which the records expire, or set <code>action</code> to <code>REMOVE</code> to clear a previously configured expiry so that the records no longer expire.</p> <p>When you do not provide this value, the service determines each record's expiry from its current state:</p> <ul> <li> <p>If the record already has an expiry configured, the service resets and reapplies the expiry based on the last applied <code>recordExpiryDurationDays</code>.</p> </li> <li> <p>If the record does not have an expiry configured, no expiry is applied and the record remains non-expiring. This is the outcome regardless of whether the record's strategy configures an expiry.</p> </li> </ul> <p>Providing an explicit <code>recordExpiryDurationDays</code> always takes precedence: it overwrites an existing expiry, or sets one on a record that previously had none.</p>
    #   @return [Types::RecordExpirySpecification]
    class BatchUpdateMemoryRecordsInput < Struct.new(
      nil,
      :memory_id,
      :records,
      :record_expiry_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute successful_records
    #   <p>A list of memory records that were successfully updated during the batch operation.</p>
    #   @return [Array<Types::MemoryRecordOutput>]
    # @!attribute failed_records
    #   <p>A list of memory records that failed to be updated, including error details for each failure.</p>
    #   @return [Array<Types::MemoryRecordOutput>]
    class BatchUpdateMemoryRecordsOutput < Struct.new(
      nil,
      :successful_records,
      :failed_records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a branch in an AgentCore Memory resource. Branches allow for organizing events into different conversation threads or paths.</p>
    # @!attribute root_event_id
    #   <p>The identifier of the root event for this branch.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the branch.</p>
    #   @return [String]
    class Branch < Struct.new(
      nil,
      :root_event_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains filter criteria for branches when listing events.</p>
    # @!attribute name
    #   <p>The name of the branch to filter by.</p>
    #   @return [String]
    # @!attribute include_parent_branches
    #   <p>Specifies whether to include parent branches in the results. Set to true to include parent branches, or false to exclude them.</p>
    #   @return [Boolean]
    class BranchFilter < Struct.new(
      nil,
      :name,
      :include_parent_branches,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:include_parent_branches] = true unless options.key?(:include_parent_branches)
        super
      end
    end

    # <p>The browser action to perform. Exactly one member must be set per request.</p>
    # @!attribute mouse_click
    #   <p>Click at the specified coordinates.</p>
    #   @return [Types::MouseClickArguments]
    # @!attribute mouse_move
    #   <p>Move the cursor to the specified coordinates.</p>
    #   @return [Types::MouseMoveArguments]
    # @!attribute mouse_drag
    #   <p>Drag from a start position to an end position.</p>
    #   @return [Types::MouseDragArguments]
    # @!attribute mouse_scroll
    #   <p>Scroll at the specified position.</p>
    #   @return [Types::MouseScrollArguments]
    # @!attribute key_type
    #   <p>Type a string of text.</p>
    #   @return [Types::KeyTypeArguments]
    # @!attribute key_press
    #   <p>Press a key one or more times.</p>
    #   @return [Types::KeyPressArguments]
    # @!attribute key_shortcut
    #   <p>Press a key combination.</p>
    #   @return [Types::KeyShortcutArguments]
    # @!attribute screenshot
    #   <p>Capture a full-screen screenshot.</p>
    #   @return [Types::ScreenshotArguments]
    class BrowserAction < Struct.new(
      :mouse_click,
      :mouse_move,
      :mouse_drag,
      :mouse_scroll,
      :key_type,
      :key_press,
      :key_shortcut,
      :screenshot,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

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

    # <p>The result of a browser action execution. Exactly one member is set, matching the action that was performed.</p>
    # @!attribute mouse_click
    #   <p>The result of a mouse click action.</p>
    #   @return [Types::MouseClickResult]
    # @!attribute mouse_move
    #   <p>The result of a mouse move action.</p>
    #   @return [Types::MouseMoveResult]
    # @!attribute mouse_drag
    #   <p>The result of a mouse drag action.</p>
    #   @return [Types::MouseDragResult]
    # @!attribute mouse_scroll
    #   <p>The result of a mouse scroll action.</p>
    #   @return [Types::MouseScrollResult]
    # @!attribute key_type
    #   <p>The result of a key type action.</p>
    #   @return [Types::KeyTypeResult]
    # @!attribute key_press
    #   <p>The result of a key press action.</p>
    #   @return [Types::KeyPressResult]
    # @!attribute key_shortcut
    #   <p>The result of a key shortcut action.</p>
    #   @return [Types::KeyShortcutResult]
    # @!attribute screenshot
    #   <p>The result of a screenshot action.</p>
    #   @return [Types::ScreenshotResult]
    class BrowserActionResult < Struct.new(
      :mouse_click,
      :mouse_move,
      :mouse_drag,
      :mouse_scroll,
      :key_type,
      :key_press,
      :key_shortcut,
      :screenshot,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

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

    # <p>Browser enterprise policy configuration.</p>
    # @!attribute location
    #   <p>The location of the enterprise policy file.</p>
    #   @return [Types::ResourceLocation]
    # @!attribute type
    #   <p>The enterprise policy type. See BrowserEnterprisePolicyType.</p>
    #   @return [String]
    class BrowserEnterprisePolicy < Struct.new(
      nil,
      :location,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Browser extension configuration.</p>
    # @!attribute location
    #   <p>The location where the browser extension files are stored. This specifies the source from which the extension will be loaded and installed.</p>
    #   @return [Types::ResourceLocation]
    class BrowserExtension < Struct.new(
      nil,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a browser profile in Amazon Bedrock AgentCore. A browser profile contains persistent browser data such as cookies and local storage that can be saved from one browser session and reused in subsequent sessions. Browser profiles enable continuity for tasks that require authentication, maintain user preferences, or depend on previously stored browser state.</p>
    # @!attribute profile_identifier
    #   <p>The unique identifier of the browser profile. This identifier is used to reference the profile when starting new browser sessions or saving session data to the profile.</p>
    #   @return [String]
    class BrowserProfileConfiguration < Struct.new(
      nil,
      :profile_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The collection of streams associated with a browser session in Amazon Bedrock AgentCore. These streams provide different ways to interact with and observe the browser session, including programmatic control and visual representation of the browser content.</p>
    # @!attribute automation_stream
    #   <p>The stream that enables programmatic control of the browser. This stream allows agents to perform actions such as navigating to URLs, clicking elements, and filling forms.</p>
    #   @return [Types::AutomationStream]
    # @!attribute live_view_stream
    #   <p>The stream that provides a visual representation of the browser content. This stream allows agents to observe the current state of the browser, including rendered web pages and visual elements.</p>
    #   @return [Types::LiveViewStream]
    class BrowserSessionStream < Struct.new(
      nil,
      :automation_stream,
      :live_view_stream,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A condensed representation of a browser session in Amazon Bedrock AgentCore. This structure contains key information about a browser session, including identifiers, status, and timestamps, without the full details of the session configuration and streams.</p>
    # @!attribute browser_identifier
    #   <p>The unique identifier of the browser associated with the session. This identifier specifies which browser environment is used for the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the browser session. This identifier is used in operations that interact with the session.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the browser session. This name helps identify and manage the session.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the browser session. Possible values include ACTIVE, STOPPING, and STOPPED.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the browser session was created. This value is in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp when the browser session was last updated. This value is in ISO 8601 format.</p>
    #   @return [Time]
    class BrowserSessionSummary < Struct.new(
      nil,
      :browser_identifier,
      :session_id,
      :name,
      :status,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A certificate to install in the browser or code interpreter session.</p>
    # @!attribute location
    #   <p>The location of the certificate.</p>
    #   @return [Types::CertificateLocation]
    class Certificate < Struct.new(
      nil,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The location from which to retrieve a certificate.</p>
    # @!attribute secrets_manager
    #   <p>The Amazon Web Services Secrets Manager location of the certificate.</p>
    #   @return [Types::SecretsManagerLocation]
    class CertificateLocation < Struct.new(
      :secrets_manager,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SecretsManager < CertificateLocation; end
      class Unknown < CertificateLocation; end
    end

    # <p>Filter configuration for narrowing down CloudWatch Logs sessions for evaluation.</p>
    # @!attribute session_ids
    #   <p>A list of specific session IDs to evaluate. If specified, only these sessions are included in the evaluation.</p>
    #   @return [Array<String>]
    # @!attribute time_range
    #   <p>The time range filter for selecting sessions to evaluate.</p>
    #   @return [Types::SessionFilterConfig]
    # @!attribute session_trace_ids
    #   <p>A list of session and trace ID pairs that restrict evaluation to specific traces within a session. If specified, only the listed traces are evaluated instead of the entire session.</p>
    #   @return [Array<Types::SessionTraceIds>]
    class CloudWatchFilterConfig < Struct.new(
      nil,
      :session_ids,
      :time_range,
      :session_trace_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for narrowing down agent traces from CloudWatch Logs based on key-value comparisons.</p>
    # @!attribute key
    #   <p>The key or field name to filter on within the agent trace data.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>The comparison operator to use for filtering.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value to compare against using the specified operator.</p>
    #   @return [Types::FilterValue]
    class CloudWatchLogsFilter < Struct.new(
      nil,
      :key,
      :operator,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rule configuration for filtering agent traces from CloudWatch Logs.</p>
    # @!attribute filters
    #   <p>The list of filters to apply when reading agent traces.</p>
    #   @return [Array<Types::CloudWatchLogsFilter>]
    class CloudWatchLogsRule < Struct.new(
      nil,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for reading agent traces from CloudWatch Logs.</p>
    # @!attribute service_names
    #   <p>The list of agent service names to filter traces within the specified log groups.</p>
    #   @return [Array<String>]
    # @!attribute log_group_names
    #   <p>The list of CloudWatch log group names to read agent traces from. Maximum of 10 log groups.</p>
    #   @return [Array<String>]
    # @!attribute log_group_name_prefixes
    #   <p>The list of CloudWatch log group name prefixes to read agent traces from. Specify this instead of <code>logGroupNames</code> to match log groups by prefix. Maximum of 5 prefixes. Specify either <code>logGroupNames</code> or <code>logGroupNamePrefixes</code>, not both. One of the two is required.</p>
    #   @return [Array<String>]
    # @!attribute filter_config
    #   <p>Optional filter configuration to narrow down which sessions to evaluate.</p>
    #   @return [Types::CloudWatchFilterConfig]
    class CloudWatchLogsSource < Struct.new(
      nil,
      :service_names,
      :log_group_names,
      :log_group_name_prefixes,
      :filter_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:log_group_names] = [] unless options.key?(:log_group_names)
        super
      end
    end

    # <p>Configuration for reading agent traces from CloudWatch Logs for recommendation analysis.</p>
    # @!attribute log_group_arns
    #   <p>The list of CloudWatch log group ARNs to read agent traces from.</p>
    #   @return [Array<String>]
    # @!attribute service_names
    #   <p>The list of service names to filter traces within the specified log groups.</p>
    #   @return [Array<String>]
    # @!attribute start_time
    #   <p>The start time of the time range to read traces from.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the time range to read traces from.</p>
    #   @return [Time]
    # @!attribute rule
    #   <p>Optional rule configuration for filtering traces.</p>
    #   @return [Types::CloudWatchLogsRule]
    class CloudWatchLogsTraceConfig < Struct.new(
      nil,
      :log_group_arns,
      :service_names,
      :start_time,
      :end_time,
      :rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>CloudWatch Logs destination for batch evaluation results.</p>
    # @!attribute log_group_name
    #   <p>The name of the CloudWatch log group where evaluation results will be written. This value doesn't apply when <code>resultDestination</code> is <code>SOURCE_LOG_GROUP</code>, because results are written back to the trace source log group. The name can't be under the service-reserved <code>/aws/bedrock-agentcore/evaluations/</code> namespace, apart from the service-managed default group.</p>
    #   @return [String]
    # @!attribute log_stream_name
    #   <p>The name of the CloudWatch log stream where evaluation results will be written.</p>
    #   @return [String]
    # @!attribute metrics_namespace
    #   <p>The CloudWatch metrics namespace where evaluation result metrics are published. If you omit this value, the service publishes metrics to <code>Bedrock-AgentCore/Evaluations</code>. This value can't begin with <code>AWS/</code>.</p>
    #   @return [String]
    # @!attribute result_destination
    #   <p>The destination where evaluation results are written. Valid values:</p> <ul> <li> <p> <code>DEDICATED_LOG_GROUP</code> (default) – Writes results to a dedicated result log group.</p> </li> <li> <p> <code>SOURCE_LOG_GROUP</code> – Writes results back to the log group that the agent traces were read from. If you use this value, don't specify <code>logGroupName</code>.</p> </li> </ul>
    #   @return [String]
    class CloudWatchOutputConfig < Struct.new(
      nil,
      :log_group_name,
      :log_stream_name,
      :metrics_namespace,
      :result_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:log_group_name] = '' unless options.key?(:log_group_name)
        options[:log_stream_name] = '' unless options.key?(:log_stream_name)
        options[:result_destination] = 'DEDICATED_LOG_GROUP' unless options.key?(:result_destination)
        super
      end
    end

    # <p>The output produced by executing code in a code interpreter session in Amazon Bedrock AgentCore. This structure contains the results of code execution, including textual output, structured data, and error information. Agents use these results to generate responses that incorporate computation, data analysis, and visualization.</p>
    # @!attribute content
    #   <p>The textual content of the execution result. This includes standard output from the code execution, such as print statements, console output, and text representations of results.</p>
    #   @return [Array<Types::ContentBlock>]
    # @!attribute structured_content
    #   <p>The structured content of the execution result. This includes additional metadata about the execution, such as execution time, memory usage, and structured representations of output data. The format depends on the specific code interpreter and execution context.</p>
    #   @return [Types::ToolResultStructuredContent]
    # @!attribute is_error
    #   <p>Indicates whether the result represents an error. If true, the content contains error messages or exception information. If false, the content contains successful execution results.</p>
    #   @return [Boolean]
    class CodeInterpreterResult < Struct.new(
      nil,
      :content,
      :structured_content,
      :is_error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A condensed representation of a code interpreter session in Amazon Bedrock AgentCore. This structure contains key information about a code interpreter session, including identifiers, status, and timestamps, without the full details of the session configuration.</p>
    # @!attribute code_interpreter_identifier
    #   <p>The unique identifier of the code interpreter associated with the session. This identifier specifies which code interpreter environment is used for the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the code interpreter session. This identifier is used in operations that interact with the session.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the code interpreter session. This name helps identify and manage the session.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the code interpreter session. Possible values include ACTIVE, STOPPING, and STOPPED.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the code interpreter session was created. This value is in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp when the code interpreter session was last updated. This value is in ISO 8601 format.</p>
    #   @return [Time]
    class CodeInterpreterSessionSummary < Struct.new(
      nil,
      :code_interpreter_identifier,
      :session_id,
      :name,
      :status,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains output from a code interpreter stream.</p>
    # @!attribute result
    #   <p>The output produced by executing code in a code interpreter session in Amazon Bedrock AgentCore. This structure contains the results of code execution, including textual output, structured data, and error information. Agents use these results to generate responses that incorporate computation, data analysis, and visualization.</p>
    #   @return [Types::CodeInterpreterResult]
    # @!attribute access_denied_exception
    #   <p>The exception that occurs when you do not have sufficient permissions to perform an action. Verify that your IAM policy includes the necessary permissions for the operation you are trying to perform.</p>
    #   @return [Types::AccessDeniedException]
    # @!attribute conflict_exception
    #   <p>The exception that occurs when the request conflicts with the current state of the resource. This can happen when trying to modify a resource that is currently being modified by another request, or when trying to create a resource that already exists.</p>
    #   @return [Types::ConflictException]
    # @!attribute internal_server_exception
    #   <p>The exception that occurs when the service encounters an unexpected internal error. This is a temporary condition that will resolve itself with retries. We recommend implementing exponential backoff retry logic in your application.</p>
    #   @return [Types::InternalServerException]
    # @!attribute resource_not_found_exception
    #   <p>The exception that occurs when the specified resource does not exist. This can happen when using an invalid identifier or when trying to access a resource that has been deleted.</p>
    #   @return [Types::ResourceNotFoundException]
    # @!attribute service_quota_exceeded_exception
    #   <p>The exception that occurs when the request would cause a service quota to be exceeded. Review your service quotas and either reduce your request rate or request a quota increase.</p>
    #   @return [Types::ServiceQuotaExceededException]
    # @!attribute throttling_exception
    #   <p>The exception that occurs when the request was denied due to request throttling. This happens when you exceed the allowed request rate for an operation. Reduce the frequency of requests or implement exponential backoff retry logic in your application.</p>
    #   @return [Types::ThrottlingException]
    # @!attribute validation_exception
    #   <p>The exception that occurs when the input fails to satisfy the constraints specified by the service. Check the error message for details about which input parameter is invalid and correct your request.</p>
    #   @return [Types::ValidationException]
    class CodeInterpreterStreamOutput < Struct.new(
      :result,
      :access_denied_exception,
      :conflict_exception,
      :internal_server_exception,
      :resource_not_found_exception,
      :service_quota_exceeded_exception,
      :throttling_exception,
      :validation_exception,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Result < CodeInterpreterStreamOutput; end
      class AccessDeniedException < CodeInterpreterStreamOutput; end
      class ConflictException < CodeInterpreterStreamOutput; end
      class InternalServerException < CodeInterpreterStreamOutput; end
      class ResourceNotFoundException < CodeInterpreterStreamOutput; end
      class ServiceQuotaExceededException < CodeInterpreterStreamOutput; end
      class ThrottlingException < CodeInterpreterStreamOutput; end
      class ValidationException < CodeInterpreterStreamOutput; end
      class Unknown < CodeInterpreterStreamOutput; end
    end

    # <p>Coinbase CDP token request parameters.</p>
    # @!attribute request_method
    #   <p>The HTTP method for the payment API request.</p>
    #   @return [String]
    # @!attribute request_host
    #   <p>The host for the payment API request. Defaults to "api.cdp.coinbase.com".</p>
    #   @return [String]
    # @!attribute request_path
    #   <p>The path of the payment API request.</p>
    #   @return [String]
    # @!attribute include_wallet_auth_token
    #   <p>Set to true for wallet write operations (requires walletSecret configured).</p>
    #   @return [Boolean]
    # @!attribute request_body
    #   <p>Request body JSON — used to generate wallet auth JWT.</p>
    #   @return [String]
    class CoinbaseCdpTokenRequestInput < Struct.new(
      nil,
      :request_method,
      :request_host,
      :request_path,
      :include_wallet_auth_token,
      :request_body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:include_wallet_auth_token] = false unless options.key?(:include_wallet_auth_token)
        super
      end
    end

    # <p>Coinbase CDP token response.</p>
    # @!attribute bearer_token
    #   <p>Bearer Token for Authorization header.</p>
    #   @return [String]
    # @!attribute wallet_auth_token
    #   <p>Wallet Auth Token for X-Wallet-Auth header.</p>
    #   @return [String]
    class CoinbaseCdpTokenResponseOutput < Struct.new(
      nil,
      :bearer_token,
      :wallet_auth_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_identifier
    #   <p>The OAuth2.0 token or user ID that was used to generate the workload access token used for initiating the user authorization flow to retrieve OAuth2.0 tokens.</p>
    #   @return [Types::UserIdentifier]
    # @!attribute session_uri
    #   <p>Unique identifier for the user's authentication session for retrieving OAuth2 tokens. This ID tracks the authorization flow state across multiple requests and responses during the OAuth2 authentication process.</p>
    #   @return [String]
    class CompleteResourceTokenAuthRequest < Struct.new(
      nil,
      :user_identifier,
      :session_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CompleteResourceTokenAuthResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A confidence interval for a statistical measurement.</p>
    # @!attribute lower
    #   <p>The lower bound of the confidence interval.</p>
    #   @return [Float]
    # @!attribute upper
    #   <p>The upper bound of the confidence interval.</p>
    #   @return [Float]
    class ConfidenceInterval < Struct.new(
      nil,
      :lower,
      :upper,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reference to a specific version of a configuration bundle.</p>
    # @!attribute bundle_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration bundle.</p>
    #   @return [String]
    # @!attribute bundle_version
    #   <p>The version of the configuration bundle.</p>
    #   @return [String]
    class ConfigurationBundleRef < Struct.new(
      nil,
      :bundle_arn,
      :bundle_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Maps a tool name to its JSON path within a configuration bundle.</p>
    # @!attribute tool_name
    #   <p>The name of the tool.</p>
    #   @return [String]
    # @!attribute tool_description_json_path
    #   <p>The JSON path within the configuration bundle's components that contains the tool description.</p>
    #   @return [String]
    class ConfigurationBundleToolEntry < Struct.new(
      nil,
      :tool_name,
      :tool_description_json_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The exception that occurs when the request conflicts with the current state of the resource. This can happen when trying to modify a resource that is currently being modified by another request, or when trying to create a resource that already exists.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the content of a memory item.</p>
    # @!attribute text
    #   <p>The text content of the memory item.</p>
    #   @return [String]
    class Content < Struct.new(
      :text,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < Content; end
      class Unknown < Content; end
    end

    # <p>A block of content in a response.</p>
    # @!attribute type
    #   <p>The type of content in the block.</p>
    #   @return [String]
    # @!attribute text
    #   <p>The text content of the block.</p>
    #   @return [String]
    # @!attribute data
    #   <p>The binary data content of the block.</p>
    #   @return [String]
    # @!attribute mime_type
    #   <p>The MIME type of the content.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>The URI of the content.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the content block.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the content block.</p>
    #   @return [String]
    # @!attribute size
    #   <p>The size of the content in bytes.</p>
    #   @return [Integer]
    # @!attribute resource
    #   <p>The resource associated with the content block.</p>
    #   @return [Types::ResourceContent]
    class ContentBlock < Struct.new(
      nil,
      :type,
      :text,
      :data,
      :mime_type,
      :uri,
      :name,
      :description,
      :size,
      :resource,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An event that contains incremental output from a command execution. This event streams standard output and standard error content as it becomes available during command execution.</p>
    # @!attribute stdout
    #   <p>The standard output content from the command execution. This field contains the incremental output written to stdout by the executing command.</p>
    #   @return [String]
    # @!attribute stderr
    #   <p>The standard error content from the command execution. This field contains the incremental output written to stderr by the executing command.</p>
    #   @return [String]
    class ContentDeltaEvent < Struct.new(
      nil,
      :stdout,
      :stderr,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source of the content to ingest. Only inline content is supported.</p>
    # @!attribute inline
    #   <p>The content included directly in the request.</p>
    #   @return [Types::InlineMemoryContent]
    class ContentSource < Struct.new(
      :inline,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Inline < ContentSource; end
      class Unknown < ContentSource; end
    end

    # <p>An event that signals the start of content streaming from a command execution. This event is sent when the command begins producing output.</p>
    class ContentStartEvent < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An event that signals the completion of a command execution. This event contains the final status and exit code of the executed command.</p>
    # @!attribute exit_code
    #   <p>The exit code returned by the executed command. An exit code of 0 indicates successful execution, -1 indicates a platform error, and values greater than 0 indicate command-specific errors.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The final status of the command execution. Valid values are <code>COMPLETED</code> for successful completion or <code>TIMED_OUT</code> if the command exceeded the specified timeout.</p>
    #   @return [String]
    class ContentStopEvent < Struct.new(
      nil,
      :exit_code,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The contextual information associated with an evaluation, including span context details that identify the specific traces and sessions being evaluated within the agent's execution flow. </p>
    # @!attribute span_context
    #   <p> The span context information that uniquely identifies the trace and span being evaluated, including session ID, trace ID, and span ID for precise targeting within the agent's execution flow. </p>
    #   @return [Types::SpanContext]
    class Context < Struct.new(
      :span_context,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SpanContext < Context; end
      class Unknown < Context; end
    end

    # <p>Statistics for the control variant in an A/B test.</p>
    # @!attribute variant_name
    #   <p>The name of the control variant.</p>
    #   @return [String]
    # @!attribute sample_size
    #   <p>The number of sessions evaluated for the control variant.</p>
    #   @return [Integer]
    # @!attribute mean
    #   <p>The mean evaluation score for the control variant.</p>
    #   @return [Float]
    class ControlStats < Struct.new(
      nil,
      :variant_name,
      :sample_size,
      :mean,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains conversational content for an event payload.</p>
    # @!attribute content
    #   <p>The content of the conversation message.</p>
    #   @return [Types::Content]
    # @!attribute role
    #   <p>The role of the participant in the conversation (for example, "user" or "assistant").</p>
    #   @return [String]
    class Conversational < Struct.new(
      nil,
      :content,
      :role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the A/B test. Must be unique within your account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the A/B test.</p>
    #   @return [String]
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway to use for traffic splitting.</p>
    #   @return [String]
    # @!attribute variants
    #   <p>The list of variants for the A/B test. Must contain exactly two variants: a control (C) and a treatment (T1), each with a configuration bundle or target reference and a traffic weight.</p>
    #   @return [Array<Types::Variant>]
    # @!attribute gateway_filter
    #   <p>Optional filter to restrict which gateway target paths are included in the A/B test.</p>
    #   @return [Types::GatewayFilter]
    # @!attribute evaluation_config
    #   <p>The evaluation configuration specifying which online evaluation configurations to use for measuring variant performance.</p>
    #   @return [Types::ABTestEvaluationConfig]
    # @!attribute role_arn
    #   <p>The IAM role ARN that grants permissions for the A/B test to access gateway and evaluation resources.</p>
    #   @return [String]
    # @!attribute enable_on_create
    #   <p>Whether to enable the A/B test immediately upon creation. If true, traffic splitting begins automatically.</p>
    #   @return [Boolean]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, the service ignores the request, but does not return an error.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tag keys and values to associate with the A/B test.</p>
    #   @return [Hash<String, String>]
    class CreateABTestRequest < Struct.new(
      nil,
      :name,
      :description,
      :gateway_arn,
      :variants,
      :gateway_filter,
      :evaluation_config,
      :role_arn,
      :enable_on_create,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ab_test_id
    #   <p>The unique identifier of the created A/B test.</p>
    #   @return [String]
    # @!attribute ab_test_arn
    #   <p>The Amazon Resource Name (ARN) of the created A/B test.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the A/B test.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the A/B test.</p>
    #   @return [String]
    # @!attribute execution_status
    #   <p>The execution status indicating whether the A/B test is currently running.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the A/B test was created.</p>
    #   @return [Time]
    class CreateABTestResponse < Struct.new(
      nil,
      :ab_test_id,
      :ab_test_arn,
      :name,
      :status,
      :execution_status,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The identifier of the AgentCore Memory resource in which to create the event.</p>
    #   @return [String]
    # @!attribute actor_id
    #   <p>The identifier of the actor associated with this event. An actor represents an entity that participates in sessions and generates events.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the session in which this event occurs. A session represents a sequence of related events.</p>
    #   @return [String]
    # @!attribute event_timestamp
    #   <p>The timestamp when the event occurred. If not specified, the current time is used.</p>
    #   @return [Time]
    # @!attribute payload
    #   <p>The content payload of the event. This can include conversational data, JSON data, or binary content.</p>
    #   @return [Array<Types::PayloadType>]
    # @!attribute branch
    #   <p>The branch information for this event. Branches allow for organizing events into different conversation threads or paths.</p>
    #   @return [Types::Branch]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, AgentCore ignores the request, but does not return an error.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The key-value metadata to attach to the event.</p>
    #   @return [Hash<String, Types::MetadataValue>]
    # @!attribute extraction_mode
    #   <p>Controls long-term memory extraction for this event. When set to <code>SKIP</code>, the event is stored in short-term memory but is excluded from long-term memory extraction. If not specified, the event is processed for extraction as usual.</p>
    #   @return [String]
    # @!attribute extraction_config
    #   <p>The extraction configuration for long-term memory records. Use this parameter to specify namespace variable keys and their values for namespace substitution during extraction.</p>
    #   @return [Types::ExtractionConfig]
    class CreateEventInput < Struct.new(
      nil,
      :memory_id,
      :actor_id,
      :session_id,
      :event_timestamp,
      :payload,
      :branch,
      :client_token,
      :metadata,
      :extraction_mode,
      :extraction_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event
    #   <p>The event that was created.</p>
    #   @return [Types::Event]
    class CreateEventOutput < Struct.new(
      nil,
      :event,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for creating a payment instrument.</p>
    # @!attribute user_id
    #   <p>The user ID associated with this payment instrument.</p>
    #   @return [String]
    # @!attribute agent_name
    #   <p>The agent name associated with this request, used for observability.</p>
    #   @return [String]
    # @!attribute payment_manager_arn
    #   <p>The ARN of the payment manager that owns this payment instrument.</p>
    #   @return [String]
    # @!attribute payment_connector_id
    #   <p>The ID of the payment connector to use for this instrument.</p>
    #   @return [String]
    # @!attribute payment_instrument_type
    #   <p>The type of payment instrument being created.</p>
    #   @return [String]
    # @!attribute payment_instrument_details
    #   <p>The details of the payment instrument.</p>
    #   @return [Types::PaymentInstrumentDetails]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    class CreatePaymentInstrumentRequest < Struct.new(
      nil,
      :user_id,
      :agent_name,
      :payment_manager_arn,
      :payment_connector_id,
      :payment_instrument_type,
      :payment_instrument_details,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for creating a payment instrument.</p>
    # @!attribute payment_instrument
    #   <p>The created payment instrument.</p>
    #   @return [Types::PaymentInstrument]
    class CreatePaymentInstrumentResponse < Struct.new(
      nil,
      :payment_instrument,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for creating a payment session.</p>
    # @!attribute user_id
    #   <p>The user ID associated with this payment session.</p>
    #   @return [String]
    # @!attribute agent_name
    #   <p>The agent name associated with this request, used for observability.</p>
    #   @return [String]
    # @!attribute payment_manager_arn
    #   <p>The ARN of the payment manager that owns this session.</p>
    #   @return [String]
    # @!attribute limits
    #   <p>The spending limits for this payment session.</p>
    #   @return [Types::SessionLimits]
    # @!attribute expiry_time_in_minutes
    #   <p>The session expiry time in minutes. Must be between 15 and 480 minutes.</p>
    #   @return [Integer]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    class CreatePaymentSessionRequest < Struct.new(
      nil,
      :user_id,
      :agent_name,
      :payment_manager_arn,
      :limits,
      :expiry_time_in_minutes,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for creating a payment session.</p>
    # @!attribute payment_session
    #   <p>The created payment session.</p>
    #   @return [Types::PaymentSession]
    class CreatePaymentSessionResponse < Struct.new(
      nil,
      :payment_session,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for a crypto X402 payment.</p>
    # @!attribute version
    #   <p>The version of the X402 protocol.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>The X402 payment payload.</p>
    #   @return [JSON]
    # @!attribute permit2_allowance_limit
    #   <p>The maximum on-chain Permit2 allowance to grant before signing the payment authorization, in the asset's smallest denomination. This field is valid only for the <code>upto</code> (metered) scheme; supplying it for the <code>exact</code> scheme returns a validation error.</p> <p>When set, the service approves an ERC-20 allowance for this amount before processing the payment. The approval sets, rather than adds to, the wallet's allowance. Set this field only when the wallet needs approving, for example on its first <code>upto</code> payment, to avoid a redundant on-chain transaction. Omit the field to skip allowance handling. This is the default, and the only behavior for the <code>exact</code> scheme.</p>
    #   @return [String]
    class CryptoX402PaymentInput < Struct.new(
      nil,
      :version,
      :payload,
      :permit2_allowance_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output from a crypto X402 payment.</p>
    # @!attribute version
    #   <p>The version of the X402 protocol.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>The X402 payment response payload.</p>
    #   @return [JSON]
    class CryptoX402PaymentOutput < Struct.new(
      nil,
      :version,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A custom descriptor configuration for a registry record.</p>
    # @!attribute inline_content
    #   <p> The inline content of the custom descriptor.</p>
    #   @return [String]
    class CustomDescriptor < Struct.new(
      nil,
      :inline_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for the data source used in evaluation.</p>
    # @!attribute cloud_watch_logs
    #   <p>Configuration for pulling agent session traces from CloudWatch Logs.</p>
    #   @return [Types::CloudWatchLogsSource]
    # @!attribute online_evaluation_config_source
    #   Reference an existing OnlineEvaluationConfig as session source
    #   @return [Types::OnlineEvaluationConfigSource]
    class DataSourceConfig < Struct.new(
      :cloud_watch_logs,
      :online_evaluation_config_source,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CloudWatchLogs < DataSourceConfig; end
      class OnlineEvaluationConfigSource < DataSourceConfig; end
      class Unknown < DataSourceConfig; end
    end

    # @!attribute ab_test_id
    #   <p>The unique identifier of the A/B test to delete.</p>
    #   @return [String]
    class DeleteABTestRequest < Struct.new(
      nil,
      :ab_test_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ab_test_id
    #   <p>The unique identifier of the deleted A/B test.</p>
    #   @return [String]
    # @!attribute ab_test_arn
    #   <p>The Amazon Resource Name (ARN) of the deleted A/B test.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the A/B test deletion operation.</p>
    #   @return [String]
    class DeleteABTestResponse < Struct.new(
      nil,
      :ab_test_id,
      :ab_test_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_evaluation_id
    #   <p>The unique identifier of the batch evaluation to delete.</p>
    #   @return [String]
    class DeleteBatchEvaluationRequest < Struct.new(
      nil,
      :batch_evaluation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_evaluation_id
    #   <p>The unique identifier of the deleted batch evaluation.</p>
    #   @return [String]
    # @!attribute batch_evaluation_arn
    #   <p>The Amazon Resource Name (ARN) of the deleted batch evaluation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the batch evaluation deletion operation.</p>
    #   @return [String]
    class DeleteBatchEvaluationResponse < Struct.new(
      nil,
      :batch_evaluation_id,
      :batch_evaluation_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_provider_id
    #   <p>The unique identifier of the capacity provider associated with the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the capacity provider session to delete.</p>
    #   @return [String]
    class DeleteCapacityProviderSessionRequest < Struct.new(
      nil,
      :capacity_provider_id,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the capacity provider associated with the deleted session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the deleted capacity provider session.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the capacity provider session. When the status is <code>Deleting</code>, the session is being deleted and is not available. When the status is <code>Deleted</code>, the session is no longer available.</p>
    #   @return [String]
    class DeleteCapacityProviderSessionResponse < Struct.new(
      nil,
      :capacity_provider_arn,
      :session_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The identifier of the AgentCore Memory resource from which to delete the event.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the session containing the event to delete.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The identifier of the event to delete.</p>
    #   @return [String]
    # @!attribute actor_id
    #   <p>The identifier of the actor associated with the event to delete.</p>
    #   @return [String]
    class DeleteEventInput < Struct.new(
      nil,
      :memory_id,
      :session_id,
      :event_id,
      :actor_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_id
    #   <p>The identifier of the event that was deleted.</p>
    #   @return [String]
    class DeleteEventOutput < Struct.new(
      nil,
      :event_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The identifier of the AgentCore Memory resource from which to delete the memory record.</p>
    #   @return [String]
    # @!attribute memory_record_id
    #   <p>The identifier of the memory record to delete.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the memory record to delete. This value is used for IAM condition key authorization.</p>
    #   @return [String]
    class DeleteMemoryRecordInput < Struct.new(
      nil,
      :memory_id,
      :memory_record_id,
      :namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_record_id
    #   <p>The identifier of the memory record that was deleted.</p>
    #   @return [String]
    class DeleteMemoryRecordOutput < Struct.new(
      nil,
      :memory_record_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for deleting a payment instrument.</p>
    # @!attribute user_id
    #   <p>The user ID making the delete request. Must match the instrument's userId.</p>
    #   @return [String]
    # @!attribute payment_manager_arn
    #   <p>The payment manager ARN. Must match the instrument's paymentManagerArn.</p>
    #   @return [String]
    # @!attribute payment_connector_id
    #   <p>The payment connector ID. Must match the instrument's paymentConnectorId.</p>
    #   @return [String]
    # @!attribute payment_instrument_id
    #   <p>The payment instrument ID to delete.</p>
    #   @return [String]
    class DeletePaymentInstrumentRequest < Struct.new(
      nil,
      :user_id,
      :payment_manager_arn,
      :payment_connector_id,
      :payment_instrument_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for deleting a payment instrument.</p>
    # @!attribute status
    #   <p>The status of the instrument after deletion. Always DELETED for successful soft delete.</p>
    #   @return [String]
    class DeletePaymentInstrumentResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for deleting a payment session.</p>
    # @!attribute user_id
    #   <p>The user ID making the delete request. Must match the session's userId.</p>
    #   @return [String]
    # @!attribute payment_manager_arn
    #   <p>The payment manager ARN. Must match the session's paymentManagerArn.</p>
    #   @return [String]
    # @!attribute payment_session_id
    #   <p>The payment session ID to delete.</p>
    #   @return [String]
    class DeletePaymentSessionRequest < Struct.new(
      nil,
      :user_id,
      :payment_manager_arn,
      :payment_session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for deleting a payment session.</p>
    # @!attribute status
    #   <p>The status of the deletion. Always DELETED for successful hard delete.</p>
    #   @return [String]
    class DeletePaymentSessionResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommendation_id
    #   <p>The unique identifier of the recommendation to delete.</p>
    #   @return [String]
    class DeleteRecommendationRequest < Struct.new(
      nil,
      :recommendation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommendation_id
    #   <p>The unique identifier of the deleted recommendation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the recommendation deletion operation.</p>
    #   @return [String]
    class DeleteRecommendationResponse < Struct.new(
      nil,
      :recommendation_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Contains the descriptor configuration for a registry record. Only the field that matches the record's <code>descriptorType</code> is populated.</p>
    # @!attribute mcp
    #   <p> The MCP (Model Context Protocol) descriptor configuration. Populated when the record's <code>descriptorType</code> is <code>MCP</code>.</p>
    #   @return [Types::McpDescriptor]
    # @!attribute a2a
    #   <p> The A2A (Agent-to-Agent) descriptor configuration. Populated when the record's <code>descriptorType</code> is <code>A2A</code>.</p>
    #   @return [Types::A2aDescriptor]
    # @!attribute custom
    #   <p> The custom descriptor configuration. Populated when the record's <code>descriptorType</code> is <code>CUSTOM</code>.</p>
    #   @return [Types::CustomDescriptor]
    # @!attribute agent_skills
    #   <p> The agent skills descriptor configuration. Populated when the record's <code>descriptorType</code> is <code>AGENT_SKILLS</code>.</p>
    #   @return [Types::AgentSkillsDescriptor]
    class Descriptors < Struct.new(
      nil,
      :mcp,
      :a2a,
      :custom,
      :agent_skills,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> An exception thrown when attempting to create a resource with an identifier that already exists.</p>
    # @!attribute message
    #   @return [String]
    class DuplicateIdException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for mounting an Amazon Elastic File System (Amazon EFS) access point that you own into a session.</p>
    # @!attribute access_point_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Elastic File System (Amazon EFS) access point to mount.</p>
    #   @return [String]
    # @!attribute mount_path
    #   <p>The absolute path within the session at which the access point is mounted, for example <code>/mnt/efs</code>. Each mount path must be unique across all file system configurations in the session.</p>
    #   @return [String]
    # @!attribute file_system_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Elastic File System (Amazon EFS) file system that owns the access point.</p>
    #   @return [String]
    class EfsConfiguration < Struct.new(
      nil,
      :access_point_arn,
      :mount_path,
      :file_system_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Embedded crypto wallet instrument details.</p>
    # @!attribute network
    #   <p>The blockchain network for this embedded crypto wallet. Supported networks: ETHEREUM, SOLANA.</p>
    #   @return [String]
    # @!attribute linked_accounts
    #   <p>List of linked accounts linked to this wallet. Each represents a way the end user can authenticate to this wallet.</p>
    #   @return [Array<Types::LinkedAccount>]
    # @!attribute wallet_address
    #   <p>The wallet address on the specified blockchain network.</p>
    #   @return [String]
    # @!attribute redirect_url
    #   <p>URL for the end user to complete a provider-specific action such as wallet linking or onboarding.</p>
    #   @return [String]
    class EmbeddedCryptoWallet < Struct.new(
      nil,
      :network,
      :linked_accounts,
      :wallet_address,
      :redirect_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluator_id
    #   <p> The unique identifier of the evaluator to use for scoring. Can be a built-in evaluator (e.g., <code>Builtin.Helpfulness</code>, <code>Builtin.Correctness</code>) or a custom evaluator Id created through the control plane API. </p>
    #   @return [String]
    # @!attribute evaluation_input
    #   <p> The input data containing agent session spans to be evaluated. Includes a list of spans in OpenTelemetry format from supported frameworks like Strands (AgentCore Runtime) or LangGraph with OpenInference instrumentation. </p>
    #   @return [Types::EvaluationInput]
    # @!attribute evaluation_target
    #   <p> The specific trace or span IDs to evaluate within the provided input. Allows targeting evaluation at different levels: individual tool calls, single request-response interactions (traces), or entire conversation sessions. </p>
    #   @return [Types::EvaluationTarget]
    # @!attribute evaluation_reference_inputs
    #   <p> Ground truth data to compare against agent responses during evaluation. Allows to provide expected responses, assertions, and expected tool trajectories at different evaluation levels. Session-level reference inputs apply to the entire conversation, while trace-level reference inputs target specific request-response interactions identified by trace ID. </p>
    #   @return [Array<Types::EvaluationReferenceInput>]
    class EvaluateRequest < Struct.new(
      nil,
      :evaluator_id,
      :evaluation_input,
      :evaluation_target,
      :evaluation_reference_inputs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluation_results
    #   <p> The detailed evaluation results containing scores, explanations, and metadata. Includes the evaluator information, numerical or categorical ratings based on the evaluator's rating scale, and token usage statistics for the evaluation process. </p>
    #   @return [Array<Types::EvaluationResultContent>]
    class EvaluateResponse < Struct.new(
      nil,
      :evaluation_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A content block for ground truth data in evaluation reference inputs. Supports text content for expected responses and assertions. </p>
    # @!attribute text
    #   <p> The text content of the ground truth data. Used for expected response text and assertion statements. </p>
    #   @return [String]
    class EvaluationContent < Struct.new(
      :text,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < EvaluationContent; end
      class Unknown < EvaluationContent; end
    end

    # <p> The expected tool call trajectory for trajectory-based evaluation. </p>
    # @!attribute tool_names
    #   <p> The list of tool names representing the expected tool call sequence. </p>
    #   @return [Array<String>]
    class EvaluationExpectedTrajectory < Struct.new(
      nil,
      :tool_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The input data structure containing agent session spans in OpenTelemetry format. Supports traces from frameworks like Strands (AgentCore Runtime) and LangGraph with OpenInference instrumentation for comprehensive evaluation. </p>
    # @!attribute session_spans
    #   <p> The collection of spans representing agent execution traces within a session. Each span contains detailed information about tool calls, model interactions, and other agent activities that can be evaluated for quality and performance. </p>
    #   @return [Array<JSON>]
    class EvaluationInput < Struct.new(
      :session_spans,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SessionSpans < EvaluationInput; end
      class Unknown < EvaluationInput; end
    end

    # <p>Aggregated results from a batch evaluation, including session completion counts and evaluator score summaries.</p>
    # @!attribute number_of_sessions_completed
    #   <p>The number of sessions that have been successfully evaluated.</p>
    #   @return [Integer]
    # @!attribute number_of_sessions_in_progress
    #   <p>The number of sessions currently being evaluated.</p>
    #   @return [Integer]
    # @!attribute number_of_sessions_failed
    #   <p>The number of sessions that failed evaluation.</p>
    #   @return [Integer]
    # @!attribute total_number_of_sessions
    #   <p>The total number of sessions included in the batch evaluation.</p>
    #   @return [Integer]
    # @!attribute number_of_sessions_ignored
    #   <p>The number of sessions that were ignored during evaluation.</p>
    #   @return [Integer]
    # @!attribute evaluator_summaries
    #   <p>A list of per-evaluator summary statistics.</p>
    #   @return [Array<Types::EvaluatorSummary>]
    class EvaluationJobResults < Struct.new(
      nil,
      :number_of_sessions_completed,
      :number_of_sessions_in_progress,
      :number_of_sessions_failed,
      :total_number_of_sessions,
      :number_of_sessions_ignored,
      :evaluator_summaries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for the evaluation, including session-specific ground truth data.</p>
    # @!attribute session_metadata
    #   <p>A list of session metadata entries containing ground truth data and test scenario identifiers for specific sessions.</p>
    #   @return [Array<Types::SessionMetadataShape>]
    class EvaluationMetadata < Struct.new(
      :session_metadata,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SessionMetadata < EvaluationMetadata; end
      class Unknown < EvaluationMetadata; end
    end

    # <p> A reference input containing ground truth data for evaluation, scoped to a specific context level (session or trace) through its span context. </p>
    # @!attribute context
    #   <p> The span context that identifies which session or trace this reference input applies to, used for correlating ground truth with agent output. </p>
    #   @return [Types::Context]
    # @!attribute expected_response
    #   <p> The expected response for trace-level evaluation. Built-in evaluators that support this field compare the agent's actual response against this value for assessment. Custom evaluators can access it through the <code>{expected_response}</code> placeholder in their instructions. </p>
    #   @return [Types::EvaluationContent]
    # @!attribute assertions
    #   <p> A list of assertion statements for session-level evaluation. Each assertion describes an expected behavior or outcome the agent should demonstrate during the session. </p>
    #   @return [Array<Types::EvaluationContent>]
    # @!attribute expected_trajectory
    #   <p> The expected tool call sequence for session-level trajectory evaluation. Contains a list of tool names representing the tools the agent is expected to invoke. </p>
    #   @return [Types::EvaluationExpectedTrajectory]
    class EvaluationReferenceInput < Struct.new(
      nil,
      :context,
      :expected_response,
      :assertions,
      :expected_trajectory,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The comprehensive result of an evaluation containing the score, explanation, evaluator metadata, and execution details. Provides both quantitative ratings and qualitative insights about agent performance. </p>
    # @!attribute evaluator_arn
    #   <p> The Amazon Resource Name (ARN) of the evaluator used to generate this result. For custom evaluators, this is the full ARN; for built-in evaluators, this follows the pattern <code>Builtin.{EvaluatorName}</code>. </p>
    #   @return [String]
    # @!attribute evaluator_id
    #   <p> The unique identifier of the evaluator that produced this result. This matches the <code>evaluatorId</code> provided in the evaluation request and can be used to identify which evaluator generated specific results. </p>
    #   @return [String]
    # @!attribute evaluator_name
    #   <p> The human-readable name of the evaluator used for this evaluation. For built-in evaluators, this is the descriptive name (e.g., "Helpfulness", "Correctness"); for custom evaluators, this is the user-defined name. </p>
    #   @return [String]
    # @!attribute explanation
    #   <p> The detailed explanation provided by the evaluator describing the reasoning behind the assigned score. This qualitative feedback helps understand why specific ratings were given and provides actionable insights for improvement. </p>
    #   @return [String]
    # @!attribute context
    #   <p> The contextual information associated with this evaluation result, including span context details that identify the specific traces and sessions that were evaluated. </p>
    #   @return [Types::Context]
    # @!attribute value
    #   <p> The numerical score assigned by the evaluator according to its configured rating scale. For numerical scales, this is a decimal value within the defined range. This field is not allowed for categorical scales. </p>
    #   @return [Float]
    # @!attribute label
    #   <p> The categorical label assigned by the evaluator when using a categorical rating scale. This provides a human-readable description of the evaluation result (e.g., "Excellent", "Good", "Poor") corresponding to the numerical value. For numerical scales, this field is optional and provides a natural language explanation of what the value means (e.g., value 0.5 = "Somewhat Helpful"). </p>
    #   @return [String]
    # @!attribute token_usage
    #   <p> The token consumption statistics for this evaluation, including input tokens, output tokens, and total tokens used by the underlying language model during the evaluation process. </p>
    #   @return [Types::TokenUsage]
    # @!attribute error_message
    #   <p> The error message describing what went wrong if the evaluation failed. Provides detailed information about evaluation failures to help diagnose and resolve issues with evaluator configuration or input data. </p>
    #   @return [String]
    # @!attribute error_code
    #   <p> The error code indicating the type of failure that occurred during evaluation. Used to programmatically identify and handle different categories of evaluation errors. </p>
    #   @return [String]
    # @!attribute ignored_reference_input_fields
    #   <p> The list of reference input field names that were provided but not used by the evaluator. Helps identify which ground truth data was not consumed during evaluation. </p>
    #   @return [Array<String>]
    class EvaluationResultContent < Struct.new(
      nil,
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
      :ignored_reference_input_fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The specification of which trace or span IDs to evaluate within the provided input data. Allows precise targeting of evaluation at different levels: tool calls, traces, or sessions. </p>
    # @!attribute span_ids
    #   <p> The list of specific span IDs to evaluate within the provided traces. Used to target evaluation at individual tool calls or specific operations within the agent's execution flow. </p>
    #   @return [Array<String>]
    # @!attribute trace_ids
    #   <p> The list of trace IDs to evaluate, representing complete request-response interactions. Used to evaluate entire conversation turns or specific agent interactions within a session. </p>
    #   @return [Array<String>]
    class EvaluationTarget < Struct.new(
      :span_ids,
      :trace_ids,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SpanIds < EvaluationTarget; end
      class TraceIds < EvaluationTarget; end
      class Unknown < EvaluationTarget; end
    end

    # <p>An evaluator to run against sessions during batch evaluation.</p>
    # @!attribute evaluator_id
    #   <p>The unique identifier of the evaluator. Can reference built-in evaluators (e.g., <code>Builtin.Helpfulness</code>) or custom evaluators.</p>
    #   @return [String]
    class Evaluator < Struct.new(
      nil,
      :evaluator_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Statistical metrics for a single evaluator comparing control and treatment variants.</p>
    # @!attribute evaluator_arn
    #   <p>The Amazon Resource Name (ARN) of the evaluator.</p>
    #   @return [String]
    # @!attribute control_stats
    #   <p>The statistics for the control variant.</p>
    #   @return [Types::ControlStats]
    # @!attribute variant_results
    #   <p>The results for each treatment variant compared against the control.</p>
    #   @return [Array<Types::VariantResult>]
    class EvaluatorMetric < Struct.new(
      nil,
      :evaluator_arn,
      :control_stats,
      :variant_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Aggregated statistics for an evaluator.</p>
    # @!attribute average_score
    #   <p>The average score across all evaluated sessions for this evaluator.</p>
    #   @return [Float]
    class EvaluatorStatistics < Struct.new(
      nil,
      :average_score,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary statistics for a single evaluator within a batch evaluation.</p>
    # @!attribute evaluator_id
    #   <p>The unique identifier of the evaluator.</p>
    #   @return [String]
    # @!attribute statistics
    #   <p>The aggregated statistics for this evaluator.</p>
    #   @return [Types::EvaluatorStatistics]
    # @!attribute total_evaluated
    #   <p>The total number of sessions evaluated by this evaluator.</p>
    #   @return [Integer]
    # @!attribute total_failed
    #   <p>The total number of sessions that failed evaluation by this evaluator.</p>
    #   @return [Integer]
    class EvaluatorSummary < Struct.new(
      nil,
      :evaluator_id,
      :statistics,
      :total_evaluated,
      :total_failed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an event in an AgentCore Memory resource.</p>
    # @!attribute memory_id
    #   <p>The identifier of the AgentCore Memory resource containing the event.</p>
    #   @return [String]
    # @!attribute actor_id
    #   <p>The identifier of the actor associated with the event.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the session containing the event.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The unique identifier of the event.</p>
    #   @return [String]
    # @!attribute event_timestamp
    #   <p>The timestamp when the event occurred.</p>
    #   @return [Time]
    # @!attribute payload
    #   <p>The content payload of the event.</p>
    #   @return [Array<Types::PayloadType>]
    # @!attribute branch
    #   <p>The branch information for the event.</p>
    #   @return [Types::Branch]
    # @!attribute metadata
    #   <p>Metadata associated with an event.</p>
    #   @return [Hash<String, Types::MetadataValue>]
    class Event < Struct.new(
      nil,
      :memory_id,
      :actor_id,
      :session_id,
      :event_id,
      :event_timestamp,
      :payload,
      :branch,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filter expression for retrieving events based on metadata associated with an event.</p>
    # @!attribute left
    #   <p>Left operand of the event metadata filter expression.</p>
    #   @return [Types::LeftExpression]
    # @!attribute operator
    #   <p>Operator applied to the event metadata filter expression.</p>
    #   @return [String]
    # @!attribute right
    #   <p>Right operand of the event metadata filter expression.</p>
    #   @return [Types::RightExpression]
    class EventMetadataFilterExpression < Struct.new(
      nil,
      :left,
      :operator,
      :right,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A session associated with an execution summary cluster.</p>
    # @!attribute session_id
    #   <p>The unique identifier of the session.</p>
    #   @return [String]
    # @!attribute approach_taken
    #   <p>The approach taken by the agent during this session.</p>
    #   @return [String]
    # @!attribute final_outcome
    #   <p>The final outcome of the session.</p>
    #   @return [String]
    class ExecutionSummaryAffectedSession < Struct.new(
      nil,
      :session_id,
      :approach_taken,
      :final_outcome,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A cluster of similar execution patterns identified across sessions.</p>
    # @!attribute cluster_id
    #   <p>The unique identifier of the execution summary cluster.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The name of the execution pattern cluster.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the execution pattern.</p>
    #   @return [String]
    # @!attribute affected_session_count
    #   <p>The number of sessions with this execution pattern.</p>
    #   @return [Integer]
    # @!attribute affected_sessions
    #   <p>The list of sessions with this execution pattern.</p>
    #   @return [Array<Types::ExecutionSummaryAffectedSession>]
    class ExecutionSummaryCluster < Struct.new(
      nil,
      :cluster_id,
      :name,
      :description,
      :affected_session_count,
      :affected_sessions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The execution summary clustering result containing grouped execution patterns identified across evaluated sessions.</p>
    # @!attribute execution_summaries
    #   <p>The list of execution summary clusters identified across analyzed sessions.</p>
    #   @return [Array<Types::ExecutionSummaryCluster>]
    class ExecutionSummaryClusteringResultContent < Struct.new(
      nil,
      :execution_summaries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for a customer-managed external proxy server. Includes server location, optional domain-based routing patterns, and authentication credentials.</p>
    # @!attribute server
    #   <p>The hostname of the proxy server. Must be a valid DNS hostname (maximum 253 characters).</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number of the proxy server. Valid range: 1-65535.</p>
    #   @return [Integer]
    # @!attribute domain_patterns
    #   <p>Optional array of domain patterns that should route through this specific proxy. Supports <code>.example.com</code> for subdomain matching (matches any subdomain of example.com) or <code>example.com</code> for exact domain matching. If omitted, this proxy acts as a catch-all for domains not matched by other proxies. Maximum 100 patterns per proxy, each up to 253 characters.</p>
    #   @return [Array<String>]
    # @!attribute credentials
    #   <p>Optional authentication credentials for the proxy server. If omitted, the proxy is accessed without authentication (useful for IP-allowlisted proxies).</p>
    #   @return [Types::ProxyCredentials]
    class ExternalProxy < Struct.new(
      nil,
      :server,
      :port,
      :domain_patterns,
      :credentials,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for extraction behavior. Use this structure to specify namespace variable keys and their values for namespace substitution during long-term memory extraction.</p>
    # @!attribute namespace_variables
    #   <p>A map of <code>namespaceKeys</code> to their values. The service substitutes these values into <code>namespaceTemplates</code> during long-term memory extraction to control namespace hierarchy.</p>
    #   @return [Hash<String, String>]
    class ExtractionConfig < Struct.new(
      nil,
      :namespace_variables,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the metadata of a memory extraction job such as the message identifiers that compose this job.</p>
    # @!attribute job_id
    #   <p>The unique identifier of the extraction job.</p>
    #   @return [String]
    class ExtractionJob < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filters for querying memory extraction jobs based on various criteria.</p>
    # @!attribute strategy_id
    #   <p>The memory strategy identifier to filter extraction jobs by. If specified, only extraction jobs with this strategy ID are returned.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the session. If specified, only extraction jobs with this session ID are returned.</p>
    #   @return [String]
    # @!attribute actor_id
    #   <p>The identifier of the actor. If specified, only extraction jobs with this actor ID are returned.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the extraction job. If specified, only extraction jobs with this status are returned.</p>
    #   @return [String]
    class ExtractionJobFilterInput < Struct.new(
      nil,
      :strategy_id,
      :session_id,
      :actor_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The list of messages that compose this extraction job.</p>
    # @!attribute messages_list
    #   <p>The list of messages that compose this extraction job.</p>
    #   @return [Array<Types::MessageMetadata>]
    class ExtractionJobMessages < Struct.new(
      :messages_list,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class MessagesList < ExtractionJobMessages; end
      class Unknown < ExtractionJobMessages; end
    end

    # <p>Metadata information associated with this extraction job.</p>
    # @!attribute job_id
    #   <p>The unique identifier for the extraction job.</p>
    #   @return [String]
    # @!attribute messages
    #   <p>The messages associated with the extraction job.</p>
    #   @return [Types::ExtractionJobMessages]
    # @!attribute status
    #   <p>The current status of the extraction job.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The cause of failure, if the job did not complete successfully.</p>
    #   @return [String]
    # @!attribute strategy_id
    #   <p>The identifier of the memory strategy for this extraction job.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the session for this extraction job.</p>
    #   @return [String]
    # @!attribute actor_id
    #   <p>The identifier of the actor for this extraction job.</p>
    #   @return [String]
    class ExtractionJobMetadata < Struct.new(
      nil,
      :job_id,
      :messages,
      :status,
      :failure_reason,
      :strategy_id,
      :session_id,
      :actor_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The failure analysis clustering result containing categorized failure clusters with root causes and remediation recommendations.</p>
    # @!attribute failures
    #   <p>The list of failure category clusters identified across analyzed sessions.</p>
    #   @return [Array<Types::FailureCategoryCluster>]
    class FailureAnalysisResultContent < Struct.new(
      nil,
      :failures,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A top-level failure category identified by clustering similar failure patterns across sessions.</p>
    # @!attribute cluster_id
    #   <p>The unique identifier of the failure category cluster.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The name of the failure category.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the failure category pattern.</p>
    #   @return [String]
    # @!attribute affected_session_count
    #   <p>The number of sessions affected by this failure category.</p>
    #   @return [Integer]
    # @!attribute sub_categories
    #   <p>The list of failure subcategories within this category.</p>
    #   @return [Array<Types::FailureSubCategoryCluster>]
    class FailureCategoryCluster < Struct.new(
      nil,
      :cluster_id,
      :name,
      :description,
      :affected_session_count,
      :sub_categories,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a specific span where a failure was detected.</p>
    # @!attribute span_id
    #   <p>The unique identifier of the span where the failure occurred.</p>
    #   @return [String]
    # @!attribute trace_id
    #   <p>The trace identifier associated with the failure span.</p>
    #   @return [String]
    # @!attribute signals
    #   <p>The failure signals detected in this span.</p>
    #   @return [Array<Types::InsightsFailureSignal>]
    class FailureSpanDetail < Struct.new(
      nil,
      :span_id,
      :trace_id,
      :signals,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A subcategory of failures within a top-level failure category.</p>
    # @!attribute cluster_id
    #   <p>The unique identifier of the failure subcategory cluster.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The name of the failure subcategory.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the failure subcategory pattern.</p>
    #   @return [String]
    # @!attribute affected_session_count
    #   <p>The number of sessions affected by this failure subcategory.</p>
    #   @return [Integer]
    # @!attribute root_causes
    #   <p>The list of root cause clusters identified within this subcategory.</p>
    #   @return [Array<Types::RootCauseCluster>]
    class FailureSubCategoryCluster < Struct.new(
      nil,
      :cluster_id,
      :name,
      :description,
      :affected_session_count,
      :root_causes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains filter criteria for listing events.</p>
    # @!attribute branch
    #   <p>The branch filter criteria to apply when listing events.</p>
    #   @return [Types::BranchFilter]
    # @!attribute event_metadata
    #   <p>Event metadata filter criteria to apply when retrieving events.</p>
    #   @return [Array<Types::EventMetadataFilterExpression>]
    class FilterInput < Struct.new(
      nil,
      :branch,
      :event_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A value used in filter comparisons, supporting different data types.</p>
    # @!attribute string_value
    #   <p>A string value for text-based filtering.</p>
    #   @return [String]
    # @!attribute double_value
    #   <p>A numeric value for numerical filtering and comparisons.</p>
    #   @return [Float]
    # @!attribute boolean_value
    #   <p>A boolean value for true/false filtering conditions.</p>
    #   @return [Boolean]
    class FilterValue < Struct.new(
      :string_value,
      :double_value,
      :boolean_value,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class StringValue < FilterValue; end
      class DoubleValue < FilterValue; end
      class BooleanValue < FilterValue; end
      class Unknown < FilterValue; end
    end

    # <p>A filter to restrict which gateway target paths are included in the A/B test.</p>
    # @!attribute target_paths
    #   <p>A list of target path patterns to include in the A/B test.</p>
    #   @return [Array<String>]
    class GatewayFilter < Struct.new(
      nil,
      :target_paths,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ab_test_id
    #   <p>The unique identifier of the A/B test to retrieve.</p>
    #   @return [String]
    class GetABTestRequest < Struct.new(
      nil,
      :ab_test_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ab_test_id
    #   <p>The unique identifier of the A/B test.</p>
    #   @return [String]
    # @!attribute ab_test_arn
    #   <p>The Amazon Resource Name (ARN) of the A/B test.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the A/B test.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the A/B test.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the A/B test.</p>
    #   @return [String]
    # @!attribute execution_status
    #   <p>The execution status indicating whether the A/B test is currently running.</p>
    #   @return [String]
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway used for traffic splitting.</p>
    #   @return [String]
    # @!attribute variants
    #   <p>The list of variants in the A/B test.</p>
    #   @return [Array<Types::Variant>]
    # @!attribute gateway_filter
    #   <p>The gateway filter restricting which target paths are included.</p>
    #   @return [Types::GatewayFilter]
    # @!attribute evaluation_config
    #   <p>The evaluation configuration for measuring variant performance.</p>
    #   @return [Types::ABTestEvaluationConfig]
    # @!attribute role_arn
    #   <p>The IAM role ARN used by the A/B test.</p>
    #   @return [String]
    # @!attribute current_run_id
    #   <p>The identifier of the current run of the A/B test.</p>
    #   @return [String]
    # @!attribute error_details
    #   <p>The error details if the A/B test encountered failures.</p>
    #   @return [Array<String>]
    # @!attribute started_at
    #   <p>The timestamp when the A/B test was started.</p>
    #   @return [Time]
    # @!attribute stopped_at
    #   <p>The timestamp when the A/B test was stopped.</p>
    #   @return [Time]
    # @!attribute max_duration_expires_at
    #   <p>The timestamp when the A/B test will automatically expire.</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>The timestamp when the A/B test was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the A/B test was last updated.</p>
    #   @return [Time]
    # @!attribute results
    #   <p>The statistical results of the A/B test, including per-evaluator metrics and significance analysis.</p>
    #   @return [Types::ABTestResults]
    class GetABTestResponse < Struct.new(
      nil,
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
      :results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute runtime_session_id
    #   <p>The session ID that the AgentCore Runtime agent is using. </p>
    #   @return [String]
    # @!attribute agent_runtime_arn
    #   <p>The ARN of the AgentCore Runtime agent for which you want to get the A2A agent card.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>Optional qualifier to specify an agent alias, such as <code>prod</code>code&gt; or <code>dev</code>. If you don't provide a value, the DEFAULT alias is used. </p>
    #   @return [String]
    class GetAgentCardRequest < Struct.new(
      nil,
      :runtime_session_id,
      :agent_runtime_arn,
      :qualifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute runtime_session_id
    #   <p>The ID of the session associated with the AgentCore Runtime agent.</p>
    #   @return [String]
    # @!attribute agent_card
    #   <p>An agent card document that contains metadata and capabilities for an AgentCore Runtime agent.</p>
    #   @return [JSON]
    # @!attribute status_code
    #   <p>The status code of the request.</p>
    #   @return [Integer]
    class GetAgentCardResponse < Struct.new(
      nil,
      :runtime_session_id,
      :agent_card,
      :status_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_evaluation_id
    #   <p>The unique identifier of the batch evaluation to retrieve.</p>
    #   @return [String]
    class GetBatchEvaluationRequest < Struct.new(
      nil,
      :batch_evaluation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_evaluation_id
    #   <p>The unique identifier of the batch evaluation.</p>
    #   @return [String]
    # @!attribute batch_evaluation_arn
    #   <p>The Amazon Resource Name (ARN) of the batch evaluation.</p>
    #   @return [String]
    # @!attribute batch_evaluation_name
    #   <p>The name of the batch evaluation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the batch evaluation.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the batch evaluation was created.</p>
    #   @return [Time]
    # @!attribute evaluators
    #   <p>The list of evaluators applied during the batch evaluation.</p>
    #   @return [Array<Types::Evaluator>]
    # @!attribute insights
    #   <p>The list of insight analyses applied during the batch evaluation.</p>
    #   @return [Array<Types::Insight>]
    # @!attribute data_source_config
    #   <p>The data source configuration specifying where agent traces are pulled from.</p>
    #   @return [Types::DataSourceConfig]
    # @!attribute output_config
    #   <p>The output configuration specifying where evaluation results are written.</p>
    #   @return [Types::OutputConfig]
    # @!attribute evaluation_results
    #   <p>The aggregated evaluation results, including session completion counts and evaluator score summaries.</p>
    #   @return [Types::EvaluationJobResults]
    # @!attribute failure_analysis_result
    #   <p>The failure analysis results from insights, containing categorized failure clusters with root causes and recommendations.</p>
    #   @return [Types::FailureAnalysisResultContent]
    # @!attribute user_intent_result
    #   <p>The user intent clustering results from insights, containing grouped user intents across evaluated sessions.</p>
    #   @return [Types::UserIntentClusteringResultContent]
    # @!attribute execution_summary_result
    #   <p>The execution summary clustering results from insights, containing grouped execution patterns across evaluated sessions.</p>
    #   @return [Types::ExecutionSummaryClusteringResultContent]
    # @!attribute error_details
    #   <p>The error details if the batch evaluation encountered failures.</p>
    #   @return [Array<String>]
    # @!attribute description
    #   <p>The description of the batch evaluation.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the batch evaluation was last updated.</p>
    #   @return [Time]
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key used to encrypt evaluation data.</p>
    #   @return [String]
    class GetBatchEvaluationResponse < Struct.new(
      nil,
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
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute browser_identifier
    #   <p>The unique identifier of the browser associated with the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the browser session to retrieve.</p>
    #   @return [String]
    class GetBrowserSessionRequest < Struct.new(
      nil,
      :browser_identifier,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute browser_identifier
    #   <p>The identifier of the browser.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the browser session.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the browser session.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the browser session was created.</p>
    #   @return [Time]
    # @!attribute view_port
    #   <p>The configuration that defines the dimensions of a browser viewport in a browser session. The viewport determines the visible area of web content and affects how web pages are rendered and displayed. Proper viewport configuration ensures that web content is displayed correctly for the agent's browsing tasks.</p>
    #   @return [Types::ViewPort]
    # @!attribute extensions
    #   <p>The list of browser extensions that are configured in the browser session.</p>
    #   @return [Array<Types::BrowserExtension>]
    # @!attribute enterprise_policies
    #   <p>A list of files containing enterprise policies for the browser session.</p>
    #   @return [Array<Types::BrowserEnterprisePolicy>]
    # @!attribute profile_configuration
    #   <p>The browser profile configuration associated with this session. Contains the profile identifier that links to persistent browser data such as cookies and local storage.</p>
    #   @return [Types::BrowserProfileConfiguration]
    # @!attribute session_timeout_seconds
    #   <p>The timeout period for the browser session in seconds.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The current status of the browser session. Possible values include ACTIVE, STOPPING, and STOPPED.</p>
    #   @return [String]
    # @!attribute streams
    #   <p>The streams associated with this browser session. These include the automation stream and live view stream.</p>
    #   @return [Types::BrowserSessionStream]
    # @!attribute proxy_configuration
    #   <p>The active proxy configuration for this browser session. This field is only present if proxy configuration was provided when the session was started using <code>StartBrowserSession</code>. The configuration includes proxy servers, domain bypass rules and the proxy authentication credentials.</p>
    #   @return [Types::ProxyConfiguration]
    # @!attribute certificates
    #   <p>The list of certificates installed in the browser session.</p>
    #   @return [Array<Types::Certificate>]
    # @!attribute filesystem_configurations
    #   <p>The file system configurations for the browser session. Each entry describes an access point and its mount path.</p>
    #   @return [Array<Types::ToolsFileSystemConfiguration>]
    # @!attribute session_replay_artifact
    #   <p>The artifact containing the session replay information.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The time at which the browser session was last updated.</p>
    #   @return [Time]
    class GetBrowserSessionResponse < Struct.new(
      nil,
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
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_interpreter_identifier
    #   <p>The unique identifier of the code interpreter associated with the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the code interpreter session to retrieve.</p>
    #   @return [String]
    class GetCodeInterpreterSessionRequest < Struct.new(
      nil,
      :code_interpreter_identifier,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_interpreter_identifier
    #   <p>The identifier of the code interpreter.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the code interpreter session.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the code interpreter session.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the code interpreter session was created.</p>
    #   @return [Time]
    # @!attribute session_timeout_seconds
    #   <p>The timeout period for the code interpreter session in seconds.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The current status of the code interpreter session. Possible values include ACTIVE, STOPPING, and STOPPED.</p>
    #   @return [String]
    # @!attribute certificates
    #   <p>The list of certificates installed in the code interpreter session.</p>
    #   @return [Array<Types::Certificate>]
    # @!attribute filesystem_configurations
    #   <p>The file system configurations for the code interpreter session. Each entry describes an access point and its mount path.</p>
    #   @return [Array<Types::ToolsFileSystemConfiguration>]
    class GetCodeInterpreterSessionResponse < Struct.new(
      nil,
      :code_interpreter_identifier,
      :session_id,
      :name,
      :created_at,
      :session_timeout_seconds,
      :status,
      :certificates,
      :filesystem_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The identifier of the AgentCore Memory resource containing the event.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the session containing the event.</p>
    #   @return [String]
    # @!attribute actor_id
    #   <p>The identifier of the actor associated with the event.</p>
    #   @return [String]
    # @!attribute event_id
    #   <p>The identifier of the event to retrieve.</p>
    #   @return [String]
    class GetEventInput < Struct.new(
      nil,
      :memory_id,
      :session_id,
      :actor_id,
      :event_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event
    #   <p>The requested event information.</p>
    #   @return [Types::Event]
    class GetEventOutput < Struct.new(
      nil,
      :event,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The identifier of the AgentCore Memory resource containing the memory record.</p>
    #   @return [String]
    # @!attribute memory_record_id
    #   <p>The identifier of the memory record to retrieve.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the memory record to retrieve. This value is used for IAM condition key authorization.</p>
    #   @return [String]
    class GetMemoryRecordInput < Struct.new(
      nil,
      :memory_id,
      :memory_record_id,
      :namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_record
    #   <p>The requested memory record.</p>
    #   @return [Types::MemoryRecord]
    class GetMemoryRecordOutput < Struct.new(
      nil,
      :memory_record,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for getting payment instrument balance.</p>
    # @!attribute user_id
    #   <p>The user ID associated with this payment instrument.</p>
    #   @return [String]
    # @!attribute agent_name
    #   <p>The agent name associated with this request, used for observability.</p>
    #   @return [String]
    # @!attribute payment_manager_arn
    #   <p>The ARN of the payment manager that owns this payment instrument.</p>
    #   @return [String]
    # @!attribute payment_connector_id
    #   <p>The ID of the payment connector associated with this instrument.</p>
    #   @return [String]
    # @!attribute payment_instrument_id
    #   <p>The ID of the payment instrument to query balance for.</p>
    #   @return [String]
    # @!attribute chain
    #   <p>The specific blockchain chain to query balance on. Required because balances are chain-specific.</p>
    #   @return [String]
    # @!attribute token
    #   <p>The token to query balance for. Only tokens supported for X402 payments are returned.</p>
    #   @return [String]
    class GetPaymentInstrumentBalanceRequest < Struct.new(
      nil,
      :user_id,
      :agent_name,
      :payment_manager_arn,
      :payment_connector_id,
      :payment_instrument_id,
      :chain,
      :token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for getting payment instrument balance.</p>
    # @!attribute payment_instrument_id
    #   <p>The ID of the payment instrument.</p>
    #   @return [String]
    # @!attribute token_balance
    #   <p>The balance of the supported token on the requested chain.</p>
    #   @return [Types::TokenBalance]
    class GetPaymentInstrumentBalanceResponse < Struct.new(
      nil,
      :payment_instrument_id,
      :token_balance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for getting a payment instrument.</p>
    # @!attribute user_id
    #   <p>The user ID associated with this payment instrument.</p>
    #   @return [String]
    # @!attribute agent_name
    #   <p>The agent name associated with this request, used for observability.</p>
    #   @return [String]
    # @!attribute payment_manager_arn
    #   <p>The ARN of the payment manager that owns this payment instrument.</p>
    #   @return [String]
    # @!attribute payment_connector_id
    #   <p>The ID of the payment connector.</p>
    #   @return [String]
    # @!attribute payment_instrument_id
    #   <p>The ID of the payment instrument to retrieve.</p>
    #   @return [String]
    class GetPaymentInstrumentRequest < Struct.new(
      nil,
      :user_id,
      :agent_name,
      :payment_manager_arn,
      :payment_connector_id,
      :payment_instrument_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for getting a payment instrument.</p>
    # @!attribute payment_instrument
    #   <p>The payment instrument details.</p>
    #   @return [Types::PaymentInstrument]
    class GetPaymentInstrumentResponse < Struct.new(
      nil,
      :payment_instrument,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for getting a payment session.</p>
    # @!attribute user_id
    #   <p>The user ID associated with this payment session.</p>
    #   @return [String]
    # @!attribute agent_name
    #   <p>The agent name associated with this request, used for observability.</p>
    #   @return [String]
    # @!attribute payment_manager_arn
    #   <p>The ARN of the payment manager that owns this session.</p>
    #   @return [String]
    # @!attribute payment_session_id
    #   <p>The ID of the payment session to retrieve.</p>
    #   @return [String]
    class GetPaymentSessionRequest < Struct.new(
      nil,
      :user_id,
      :agent_name,
      :payment_manager_arn,
      :payment_session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for getting a payment session.</p>
    # @!attribute payment_session
    #   <p>The payment session details.</p>
    #   @return [Types::PaymentSession]
    class GetPaymentSessionResponse < Struct.new(
      nil,
      :payment_session,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommendation_id
    #   <p>The unique identifier of the recommendation to retrieve.</p>
    #   @return [String]
    class GetRecommendationRequest < Struct.new(
      nil,
      :recommendation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommendation_id
    #   <p>The unique identifier of the recommendation.</p>
    #   @return [String]
    # @!attribute recommendation_arn
    #   <p>The Amazon Resource Name (ARN) of the recommendation.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the recommendation.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the recommendation.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of recommendation.</p>
    #   @return [String]
    # @!attribute recommendation_config
    #   <p>The configuration for the recommendation.</p>
    #   @return [Types::RecommendationConfig]
    # @!attribute status
    #   <p>The current status of the recommendation.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the recommendation was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the recommendation was last updated.</p>
    #   @return [Time]
    # @!attribute recommendation_result
    #   <p>The result of the recommendation, containing the optimized system prompt or tool descriptions. Only present when the recommendation status is <code>COMPLETED</code>.</p>
    #   @return [Types::RecommendationResult]
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key used to encrypt recommendation data.</p>
    #   @return [String]
    class GetRecommendationResponse < Struct.new(
      nil,
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
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workload_identity_token
    #   <p>The identity token of the workload from which you want to retrieve the API key.</p>
    #   @return [String]
    # @!attribute resource_credential_provider_name
    #   <p>The credential provider name for the resource from which you are retrieving the API key.</p>
    #   @return [String]
    class GetResourceApiKeyRequest < Struct.new(
      nil,
      :workload_identity_token,
      :resource_credential_provider_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_key
    #   <p>The API key associated with the resource requested.</p>
    #   @return [String]
    class GetResourceApiKeyResponse < Struct.new(
      nil,
      :api_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workload_identity_token
    #   <p>The identity token of the workload from which you want to retrieve the OAuth2 token.</p>
    #   @return [String]
    # @!attribute resource_credential_provider_name
    #   <p>The name of the resource's credential provider.</p>
    #   @return [String]
    # @!attribute scopes
    #   <p>The OAuth scopes being requested.</p>
    #   @return [Array<String>]
    # @!attribute oauth2_flow
    #   <p>The type of flow to be performed.</p>
    #   @return [String]
    # @!attribute session_uri
    #   <p>Unique identifier for the user's authentication session for retrieving OAuth2 tokens. This ID tracks the authorization flow state across multiple requests and responses during the OAuth2 authentication process.</p>
    #   @return [String]
    # @!attribute resource_oauth2_return_url
    #   <p>The callback URL to redirect to after the OAuth 2.0 token retrieval is complete. This URL must be one of the provided URLs configured for the workload identity.</p>
    #   @return [String]
    # @!attribute force_authentication
    #   <p>Indicates whether to always initiate a new three-legged OAuth (3LO) flow, regardless of any existing session.</p>
    #   @return [Boolean]
    # @!attribute custom_parameters
    #   <p>A map of custom parameters to include in the authorization request to the resource credential provider. These parameters are in addition to the standard OAuth 2.0 flow parameters, and will not override them.</p>
    #   @return [Hash<String, String>]
    # @!attribute custom_state
    #   <p>An opaque string that will be sent back to the callback URL provided in resourceOauth2ReturnUrl. This state should be used to protect the callback URL of your application against CSRF attacks by ensuring the response corresponds to the original request.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>The resources to include in the token request. These are used to specify the target resources for which the OAuth2 token is being requested.</p>
    #   @return [Array<String>]
    # @!attribute audiences
    #   <p>The audiences to include in the token request. These are used to specify the intended recipients of the OAuth2 token.</p>
    #   @return [Array<String>]
    class GetResourceOauth2TokenRequest < Struct.new(
      nil,
      :workload_identity_token,
      :resource_credential_provider_name,
      :scopes,
      :oauth2_flow,
      :session_uri,
      :resource_oauth2_return_url,
      :force_authentication,
      :custom_parameters,
      :custom_state,
      :resources,
      :audiences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authorization_url
    #   <p>The URL to initiate the authorization process, provided when the access token requires user authorization.</p>
    #   @return [String]
    # @!attribute access_token
    #   <p>The OAuth 2.0 access token to use.</p>
    #   @return [String]
    # @!attribute session_uri
    #   <p>Unique identifier for the user's authorization session for retrieving OAuth2 tokens. This matches the sessionId from the request and can be used to track the session state.</p>
    #   @return [String]
    # @!attribute session_status
    #   <p>Status indicating whether the user's authorization session is in progress or has failed. This helps determine the next steps in the OAuth2 authentication flow.</p>
    #   @return [String]
    class GetResourceOauth2TokenResponse < Struct.new(
      nil,
      :authorization_url,
      :access_token,
      :session_uri,
      :session_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workload_identity_token
    #   <p>Workload access token for authorization.</p>
    #   @return [String]
    # @!attribute resource_credential_provider_name
    #   <p>Name of the payment credential provider to use.</p>
    #   @return [String]
    # @!attribute payment_token_request
    #   <p>Vendor-specific token request input. Contains all request parameters in a type-safe, vendor-specific structure.</p>
    #   @return [Types::PaymentTokenRequestInput]
    class GetResourcePaymentTokenRequest < Struct.new(
      nil,
      :workload_identity_token,
      :resource_credential_provider_name,
      :payment_token_request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_token_response
    #   <p>Vendor-specific token response output. Contains all response data in a type-safe, vendor-specific structure.</p>
    #   @return [Types::PaymentTokenResponseOutput]
    class GetResourcePaymentTokenResponse < Struct.new(
      nil,
      :payment_token_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workload_name
    #   <p>The unique identifier for the registered workload.</p>
    #   @return [String]
    # @!attribute user_token
    #   <p>The OAuth 2.0 token issued by the user's identity provider.</p>
    #   @return [String]
    class GetWorkloadAccessTokenForJWTRequest < Struct.new(
      nil,
      :workload_name,
      :user_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workload_access_token
    #   <p>An opaque token representing the identity of both the workload and the user.</p>
    #   @return [String]
    class GetWorkloadAccessTokenForJWTResponse < Struct.new(
      nil,
      :workload_access_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workload_name
    #   <p>The name of the workload from which you want to retrieve the access token.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The ID of the user for whom you are retrieving the access token.</p>
    #   @return [String]
    class GetWorkloadAccessTokenForUserIdRequest < Struct.new(
      nil,
      :workload_name,
      :user_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workload_access_token
    #   <p>The access token for the specified workload.</p>
    #   @return [String]
    class GetWorkloadAccessTokenForUserIdResponse < Struct.new(
      nil,
      :workload_access_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workload_name
    #   <p>The unique identifier for the registered workload.</p>
    #   @return [String]
    class GetWorkloadAccessTokenRequest < Struct.new(
      nil,
      :workload_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workload_access_token
    #   <p>An opaque token representing the identity of both the workload and the user.</p>
    #   @return [String]
    class GetWorkloadAccessTokenResponse < Struct.new(
      nil,
      :workload_access_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Where to pull ground truth from.</p>
    # @!attribute inline
    #   <p>Inline ground truth data provided directly in the request.</p>
    #   @return [Types::InlineGroundTruth]
    class GroundTruthSource < Struct.new(
      :inline,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Inline < GroundTruthSource; end
      class Unknown < GroundTruthSource; end
    end

    # <p>Ground truth data for a single conversation turn.</p>
    # @!attribute input
    #   <p>The input for this conversation turn.</p>
    #   @return [Types::GroundTruthTurnInput]
    # @!attribute expected_response
    #   <p>The expected response for this conversation turn.</p>
    #   @return [Types::EvaluationContent]
    class GroundTruthTurn < Struct.new(
      nil,
      :input,
      :expected_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for a ground truth conversation turn.</p>
    # @!attribute prompt
    #   <p>The text prompt for this conversation turn.</p>
    #   @return [String]
    class GroundTruthTurnInput < Struct.new(
      :prompt,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Prompt < GroundTruthTurnInput; end
      class Unknown < GroundTruthTurnInput; end
    end

    # <p>Configuration for AgentCore Browser.</p>
    # @!attribute browser_arn
    #   <p>If not populated, the built-in Browser ARN is used.</p>
    #   @return [String]
    class HarnessAgentCoreBrowserConfig < Struct.new(
      nil,
      :browser_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for AgentCore Code Interpreter.</p>
    # @!attribute code_interpreter_arn
    #   <p>If not populated, the built-in Code Interpreter ARN is used.</p>
    #   @return [String]
    class HarnessAgentCoreCodeInterpreterConfig < Struct.new(
      nil,
      :code_interpreter_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for AgentCore Gateway.</p>
    # @!attribute gateway_arn
    #   <p>The ARN of the desired AgentCore Gateway.</p>
    #   @return [String]
    # @!attribute outbound_auth
    #   <p>How harness authenticates to this Gateway. Defaults to AWS_IAM (SigV4) if omitted.</p>
    #   @return [Types::HarnessGatewayOutboundAuth]
    class HarnessAgentCoreGatewayConfig < Struct.new(
      nil,
      :gateway_arn,
      :outbound_auth,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for an Amazon Bedrock model provider.</p>
    # @!attribute model_id
    #   <p>The Bedrock model ID.</p>
    #   @return [String]
    # @!attribute max_tokens
    #   <p>The maximum number of tokens to allow in the generated response per iteration.</p>
    #   @return [Integer]
    # @!attribute temperature
    #   <p>The temperature to set when calling the model.</p>
    #   @return [Float]
    # @!attribute top_p
    #   <p>The topP set when calling the model.</p>
    #   @return [Float]
    # @!attribute api_format
    #   <p>The API format to use when calling the Bedrock provider.</p>
    #   @return [String]
    # @!attribute additional_params
    #   <p>Provider-specific parameters passed through to the model provider unchanged.</p>
    #   @return [JSON]
    class HarnessBedrockModelConfig < Struct.new(
      nil,
      :model_id,
      :max_tokens,
      :temperature,
      :top_p,
      :api_format,
      :additional_params,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A content block within a message.</p>
    # @!attribute text
    #   <p>Text content.</p>
    #   @return [String]
    # @!attribute tool_use
    #   <p>A tool use request from the model.</p>
    #   @return [Types::HarnessToolUseBlock]
    # @!attribute tool_result
    #   <p>A tool execution result.</p>
    #   @return [Types::HarnessToolResultBlock]
    # @!attribute reasoning_content
    #   <p>Model reasoning content.</p>
    #   @return [Types::HarnessReasoningContentBlock]
    class HarnessContentBlock < Struct.new(
      :text,
      :tool_use,
      :tool_result,
      :reasoning_content,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < HarnessContentBlock; end
      class ToolUse < HarnessContentBlock; end
      class ToolResult < HarnessContentBlock; end
      class ReasoningContent < HarnessContentBlock; end
      class Unknown < HarnessContentBlock; end
    end

    # <p>A delta update to a content block.</p>
    # @!attribute text
    #   <p>A text delta.</p>
    #   @return [String]
    # @!attribute tool_use
    #   <p>A tool use input delta.</p>
    #   @return [Types::HarnessToolUseBlockDelta]
    # @!attribute tool_result
    #   <p>A tool result delta.</p>
    #   @return [Array<Types::HarnessToolResultBlockDelta>]
    # @!attribute reasoning_content
    #   <p>A reasoning content delta.</p>
    #   @return [Types::HarnessReasoningContentBlockDelta]
    # @!attribute tool_result_metadata
    #   <p>A tool result metadata delta.</p>
    #   @return [Types::HarnessToolResultMetadataBlockDelta]
    class HarnessContentBlockDelta < Struct.new(
      :text,
      :tool_use,
      :tool_result,
      :reasoning_content,
      :tool_result_metadata,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < HarnessContentBlockDelta; end
      class ToolUse < HarnessContentBlockDelta; end
      class ToolResult < HarnessContentBlockDelta; end
      class ReasoningContent < HarnessContentBlockDelta; end
      class ToolResultMetadata < HarnessContentBlockDelta; end
      class Unknown < HarnessContentBlockDelta; end
    end

    # <p>Event containing a delta update to a content block.</p>
    # @!attribute content_block_index
    #   <p>The index of the content block being updated.</p>
    #   @return [Integer]
    # @!attribute delta
    #   <p>The delta payload.</p>
    #   @return [Types::HarnessContentBlockDelta]
    class HarnessContentBlockDeltaEvent < Struct.new(
      nil,
      :content_block_index,
      :delta,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The start payload for a content block.</p>
    # @!attribute tool_use
    #   <p>Start of a tool use content block.</p>
    #   @return [Types::HarnessToolUseBlockStart]
    # @!attribute tool_result
    #   <p>Start of a tool result content block.</p>
    #   @return [Types::HarnessToolResultBlockStart]
    class HarnessContentBlockStart < Struct.new(
      :tool_use,
      :tool_result,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ToolUse < HarnessContentBlockStart; end
      class ToolResult < HarnessContentBlockStart; end
      class Unknown < HarnessContentBlockStart; end
    end

    # <p>Event indicating the start of a content block.</p>
    # @!attribute content_block_index
    #   <p>The index of the content block within the message.</p>
    #   @return [Integer]
    # @!attribute start
    #   <p>The content block start payload.</p>
    #   @return [Types::HarnessContentBlockStart]
    class HarnessContentBlockStartEvent < Struct.new(
      nil,
      :content_block_index,
      :start,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Event indicating the end of a content block.</p>
    # @!attribute content_block_index
    #   <p>The index of the content block that ended.</p>
    #   @return [Integer]
    class HarnessContentBlockStopEvent < Struct.new(
      nil,
      :content_block_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Authentication method for calling a Gateway.</p>
    # @!attribute aws_iam
    #   <p>SigV4-sign requests using the agent's execution role.</p>
    #   @return [Smithy::Schema::EmptyStructure]
    # @!attribute none
    #   <p>No authentication.</p>
    #   @return [Smithy::Schema::EmptyStructure]
    # @!attribute oauth
    #   <p>OAuth 2.0 authentication via AgentCore Identity.</p>
    #   @return [Types::OAuthCredentialProvider]
    class HarnessGatewayOutboundAuth < Struct.new(
      :aws_iam,
      :none,
      :oauth,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AwsIam < HarnessGatewayOutboundAuth; end
      class None < HarnessGatewayOutboundAuth; end
      class Oauth < HarnessGatewayOutboundAuth; end
      class Unknown < HarnessGatewayOutboundAuth; end
    end

    # <p>Configuration for a Google Gemini model provider. Requires an API key stored in AgentCore Identity.</p>
    # @!attribute model_id
    #   <p>The Gemini model ID.</p>
    #   @return [String]
    # @!attribute api_key_arn
    #   <p>The ARN of your Gemini API key on AgentCore Identity.</p>
    #   @return [String]
    # @!attribute max_tokens
    #   <p>The maximum number of tokens to allow in the generated response per iteration.</p>
    #   @return [Integer]
    # @!attribute temperature
    #   <p>The temperature to set when calling the model.</p>
    #   @return [Float]
    # @!attribute top_p
    #   <p>The topP set when calling the model.</p>
    #   @return [Float]
    # @!attribute top_k
    #   <p>The topK set when calling the model.</p>
    #   @return [Integer]
    # @!attribute additional_params
    #   <p>Provider-specific parameters passed through to the Gemini model provider unchanged.</p>
    #   @return [JSON]
    class HarnessGeminiModelConfig < Struct.new(
      nil,
      :model_id,
      :api_key_arn,
      :max_tokens,
      :temperature,
      :top_p,
      :top_k,
      :additional_params,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A lifecycle hook event emitted in the invocation stream for visibility into hook decisions.</p>
    # @!attribute hook_event_id
    #   <p>The unique identifier for this hook event.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the hook that ran.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of lifecycle hook event.</p>
    #   @return [String]
    # @!attribute decision
    #   <p>The decision applied to the hook event. This field is present only for blocking Lambda targets.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The optional reason for the applied decision.</p>
    #   @return [String]
    class HarnessHookEvent < Struct.new(
      nil,
      :hook_event_id,
      :name,
      :type,
      :decision,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for an inline function tool. When the agent calls this tool, the tool call is returned to the caller for external execution.</p>
    # @!attribute description
    #   <p>Description of what the tool does, provided to the model.</p>
    #   @return [String]
    # @!attribute input_schema
    #   <p>JSON Schema describing the tool's input parameters.</p>
    #   @return [JSON]
    class HarnessInlineFunctionConfig < Struct.new(
      nil,
      :description,
      :input_schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for a LiteLLM model provider, enabling connection to third-party model providers.</p>
    # @!attribute model_id
    #   <p>The LiteLLM model identifier (e.g., "anthropic/claude-3-sonnet").</p>
    #   @return [String]
    # @!attribute api_key_arn
    #   <p>The ARN of the API key in AgentCore Identity for authenticating with the model provider.</p>
    #   @return [String]
    # @!attribute api_base
    #   <p>The base URL for the model provider's API endpoint.</p>
    #   @return [String]
    # @!attribute max_tokens
    #   <p>The maximum number of tokens to allow in the generated response per iteration.</p>
    #   @return [Integer]
    # @!attribute temperature
    #   <p>The temperature to set when calling the model.</p>
    #   @return [Float]
    # @!attribute top_p
    #   <p>The topP set when calling the model.</p>
    #   @return [Float]
    # @!attribute additional_params
    #   <p>Provider-specific parameters passed through to the model provider unchanged.</p>
    #   @return [JSON]
    class HarnessLiteLlmModelConfig < Struct.new(
      nil,
      :model_id,
      :api_key_arn,
      :api_base,
      :max_tokens,
      :temperature,
      :top_p,
      :additional_params,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A message in the conversation.</p>
    # @!attribute role
    #   <p>The role of the message sender.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content blocks of the message.</p>
    #   @return [Array<Types::HarnessContentBlock>]
    class HarnessMessage < Struct.new(
      nil,
      :role,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Event indicating the start of a message.</p>
    # @!attribute role
    #   <p>The role of the message sender.</p>
    #   @return [String]
    class HarnessMessageStartEvent < Struct.new(
      nil,
      :role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Event indicating the end of a message.</p>
    # @!attribute stop_reason
    #   <p>The reason the agent stopped generating.</p>
    #   @return [String]
    class HarnessMessageStopEvent < Struct.new(
      nil,
      :stop_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Token usage and latency metrics for the invocation.</p>
    # @!attribute usage
    #   <p>Token usage counts.</p>
    #   @return [Types::HarnessTokenUsage]
    # @!attribute metrics
    #   <p>Latency metrics.</p>
    #   @return [Types::HarnessStreamMetrics]
    class HarnessMetadataEvent < Struct.new(
      nil,
      :usage,
      :metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specification of which model to use.</p>
    # @!attribute bedrock_model_config
    #   <p>Configuration for an Amazon Bedrock model.</p>
    #   @return [Types::HarnessBedrockModelConfig]
    # @!attribute open_ai_model_config
    #   <p>Configuration for an OpenAI model.</p>
    #   @return [Types::HarnessOpenAiModelConfig]
    # @!attribute gemini_model_config
    #   <p>Configuration for a Google Gemini model.</p>
    #   @return [Types::HarnessGeminiModelConfig]
    # @!attribute lite_llm_model_config
    #   <p>The LiteLLM model configuration for connecting to third-party model providers.</p>
    #   @return [Types::HarnessLiteLlmModelConfig]
    class HarnessModelConfiguration < Struct.new(
      :bedrock_model_config,
      :open_ai_model_config,
      :gemini_model_config,
      :lite_llm_model_config,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class BedrockModelConfig < HarnessModelConfiguration; end
      class OpenAiModelConfig < HarnessModelConfiguration; end
      class GeminiModelConfig < HarnessModelConfiguration; end
      class LiteLlmModelConfig < HarnessModelConfiguration; end
      class Unknown < HarnessModelConfiguration; end
    end

    # <p>Configuration for an OpenAI model provider. Requires an API key stored in AgentCore Identity.</p>
    # @!attribute model_id
    #   <p>The OpenAI model ID.</p>
    #   @return [String]
    # @!attribute api_key_arn
    #   <p>The ARN of your OpenAI API key on AgentCore Identity.</p>
    #   @return [String]
    # @!attribute api_base
    #   <p>Optional custom endpoint URL for an OpenAI-compatible endpoint.</p>
    #   @return [String]
    # @!attribute max_tokens
    #   <p>The maximum number of tokens to allow in the generated response per iteration.</p>
    #   @return [Integer]
    # @!attribute temperature
    #   <p>The temperature to set when calling the model.</p>
    #   @return [Float]
    # @!attribute top_p
    #   <p>The topP set when calling the model.</p>
    #   @return [Float]
    # @!attribute api_format
    #   <p>The API format to use when calling the OpenAI provider.</p>
    #   @return [String]
    # @!attribute additional_params
    #   <p>Provider-specific parameters passed through to the model provider unchanged.</p>
    #   @return [JSON]
    class HarnessOpenAiModelConfig < Struct.new(
      nil,
      :model_id,
      :api_key_arn,
      :api_base,
      :max_tokens,
      :temperature,
      :top_p,
      :api_format,
      :additional_params,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Reasoning content from the model.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute reasoning_text
    #   <p>The reasoning text.</p>
    #   @return [Types::HarnessReasoningTextBlock]
    # @!attribute redacted_content
    #   <p>Redacted reasoning content.</p>
    #   @return [String]
    class HarnessReasoningContentBlock < Struct.new(
      :reasoning_text,
      :redacted_content,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ReasoningText < HarnessReasoningContentBlock; end
      class RedactedContent < HarnessReasoningContentBlock; end
      class Unknown < HarnessReasoningContentBlock; end
    end

    # <p>A delta update to a reasoning content block.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute text
    #   <p>Reasoning text delta.</p>
    #   @return [String]
    # @!attribute redacted_content
    #   <p>Redacted reasoning content.</p>
    #   @return [String]
    # @!attribute signature
    #   <p>Signature for the reasoning content.</p>
    #   @return [String]
    class HarnessReasoningContentBlockDelta < Struct.new(
      :text,
      :redacted_content,
      :signature,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < HarnessReasoningContentBlockDelta; end
      class RedactedContent < HarnessReasoningContentBlockDelta; end
      class Signature < HarnessReasoningContentBlockDelta; end
      class Unknown < HarnessReasoningContentBlockDelta; end
    end

    # <p>A block of reasoning text from the model.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute text
    #   <p>The reasoning text.</p>
    #   @return [String]
    # @!attribute signature
    #   <p>Signature for verifying the reasoning content.</p>
    #   @return [String]
    class HarnessReasoningTextBlock < Struct.new(
      nil,
      :text,
      :signature,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for connecting to a remote MCP server.</p>
    # @!attribute url
    #   <p>URL of the MCP endpoint.</p>
    #   @return [String]
    # @!attribute headers
    #   <p>Custom headers to include when connecting to the remote MCP server.</p>
    #   @return [Hash<String, String>]
    class HarnessRemoteMcpConfig < Struct.new(
      nil,
      :url,
      :headers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A skill available to the agent.</p>
    # @!attribute path
    #   <p>The filesystem path to the skill definition.</p>
    #   @return [String]
    # @!attribute s3
    #   <p>An S3 source containing the skill.</p>
    #   @return [Types::HarnessSkillS3Source]
    # @!attribute git
    #   <p>A git repository containing the skill.</p>
    #   @return [Types::HarnessSkillGitSource]
    # @!attribute aws_skills
    #   <p>Amazon Web Services Skills baked into the Harness's underlying Runtime.</p>
    #   @return [Types::HarnessSkillAwsSkillsSource]
    class HarnessSkill < Struct.new(
      :path,
      :s3,
      :git,
      :aws_skills,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Path < HarnessSkill; end
      class S3 < HarnessSkill; end
      class Git < HarnessSkill; end
      class AwsSkills < HarnessSkill; end
      class Unknown < HarnessSkill; end
    end

    # <p>Passed to show that Amazon Web Services Skills should be included.</p>
    # @!attribute paths
    #   <p>Optionally filter allowed skills with glob syntax, e.g., ['core-skills/*'].</p>
    #   @return [Array<String>]
    class HarnessSkillAwsSkillsSource < Struct.new(
      nil,
      :paths,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Authentication configuration for accessing a private git repository.</p>
    # @!attribute credential_arn
    #   <p>The ARN of the credential in AgentCore Identity containing the password or personal access token.</p>
    #   @return [String]
    # @!attribute username
    #   <p>Username for authentication. Defaults to 'oauth2' if not specified.</p>
    #   @return [String]
    class HarnessSkillGitAuth < Struct.new(
      nil,
      :credential_arn,
      :username,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A git repository source for a skill.</p>
    # @!attribute url
    #   <p>The HTTPS URL of the git repository.</p>
    #   @return [String]
    # @!attribute path
    #   <p>Subdirectory within the repository containing the skill.</p>
    #   @return [String]
    # @!attribute auth
    #   <p>Authentication configuration for private repositories.</p>
    #   @return [Types::HarnessSkillGitAuth]
    class HarnessSkillGitSource < Struct.new(
      nil,
      :url,
      :path,
      :auth,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An S3 source for a skill.</p>
    # @!attribute uri
    #   <p>The S3 URI pointing to the skill directory (e.g., s3://bucket/skills/my-skill/).</p>
    #   @return [String]
    class HarnessSkillS3Source < Struct.new(
      nil,
      :uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Latency metrics for the invocation.</p>
    # @!attribute latency_ms
    #   <p>The end-to-end latency of the invocation in milliseconds.</p>
    #   @return [Integer]
    class HarnessStreamMetrics < Struct.new(
      nil,
      :latency_ms,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A content block in the system prompt.</p>
    # @!attribute text
    #   <p>The text content of the system prompt block.</p>
    #   @return [String]
    class HarnessSystemContentBlock < Struct.new(
      :text,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < HarnessSystemContentBlock; end
      class Unknown < HarnessSystemContentBlock; end
    end

    # <p>Token usage counts for the invocation.</p>
    # @!attribute input_tokens
    #   <p>The number of input tokens consumed.</p>
    #   @return [Integer]
    # @!attribute output_tokens
    #   <p>The number of output tokens generated.</p>
    #   @return [Integer]
    # @!attribute total_tokens
    #   <p>The total number of tokens consumed.</p>
    #   @return [Integer]
    # @!attribute cache_read_input_tokens
    #   <p>The number of input tokens read from cache.</p>
    #   @return [Integer]
    # @!attribute cache_write_input_tokens
    #   <p>The number of input tokens written to cache.</p>
    #   @return [Integer]
    class HarnessTokenUsage < Struct.new(
      nil,
      :input_tokens,
      :output_tokens,
      :total_tokens,
      :cache_read_input_tokens,
      :cache_write_input_tokens,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A tool available to the agent loop.</p>
    # @!attribute type
    #   <p>The type of tool.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Unique name for the tool. If not provided, a name will be inferred or generated.</p>
    #   @return [String]
    # @!attribute config
    #   <p>Tool-specific configuration.</p>
    #   @return [Types::HarnessToolConfiguration]
    class HarnessTool < Struct.new(
      nil,
      :type,
      :name,
      :config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration union for different tool types.</p>
    # @!attribute remote_mcp
    #   <p>Configuration for remote MCP server.</p>
    #   @return [Types::HarnessRemoteMcpConfig]
    # @!attribute agent_core_browser
    #   <p>Configuration for AgentCore Browser.</p>
    #   @return [Types::HarnessAgentCoreBrowserConfig]
    # @!attribute agent_core_gateway
    #   <p>Configuration for AgentCore Gateway.</p>
    #   @return [Types::HarnessAgentCoreGatewayConfig]
    # @!attribute inline_function
    #   <p>Configuration for an inline function tool.</p>
    #   @return [Types::HarnessInlineFunctionConfig]
    # @!attribute agent_core_code_interpreter
    #   <p>Configuration for AgentCore Code Interpreter.</p>
    #   @return [Types::HarnessAgentCoreCodeInterpreterConfig]
    class HarnessToolConfiguration < Struct.new(
      :remote_mcp,
      :agent_core_browser,
      :agent_core_gateway,
      :inline_function,
      :agent_core_code_interpreter,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class RemoteMcp < HarnessToolConfiguration; end
      class AgentCoreBrowser < HarnessToolConfiguration; end
      class AgentCoreGateway < HarnessToolConfiguration; end
      class InlineFunction < HarnessToolConfiguration; end
      class AgentCoreCodeInterpreter < HarnessToolConfiguration; end
      class Unknown < HarnessToolConfiguration; end
    end

    # <p>The result of a tool execution.</p>
    # @!attribute tool_use_id
    #   <p>The tool use ID that this result corresponds to.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the tool result.</p>
    #   @return [Array<Types::HarnessToolResultContentBlock>]
    # @!attribute status
    #   <p>The status of the tool execution.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of tool use that produced this result.</p>
    #   @return [String]
    class HarnessToolResultBlock < Struct.new(
      nil,
      :tool_use_id,
      :content,
      :status,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A delta update to a tool result content block.</p>
    # @!attribute text
    #   <p>A text tool result delta.</p>
    #   @return [String]
    # @!attribute json
    #   <p>A JSON tool result delta.</p>
    #   @return [JSON]
    class HarnessToolResultBlockDelta < Struct.new(
      :text,
      :json,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < HarnessToolResultBlockDelta; end
      class Json < HarnessToolResultBlockDelta; end
      class Unknown < HarnessToolResultBlockDelta; end
    end

    # <p>Start payload for a tool result content block.</p>
    # @!attribute tool_use_id
    #   <p>The tool use ID that this result corresponds to.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the tool execution.</p>
    #   @return [String]
    class HarnessToolResultBlockStart < Struct.new(
      nil,
      :tool_use_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A content block within a tool result.</p>
    # @!attribute text
    #   <p>Text content.</p>
    #   @return [String]
    # @!attribute json
    #   <p>JSON content.</p>
    #   @return [JSON]
    class HarnessToolResultContentBlock < Struct.new(
      :text,
      :json,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < HarnessToolResultContentBlock; end
      class Json < HarnessToolResultContentBlock; end
      class Unknown < HarnessToolResultContentBlock; end
    end

    # <p>Delta payload for a tool result metadata.</p>
    # @!attribute metadata
    #   <p>The partial JSON-string fragment of the tool result metadata.</p>
    #   @return [String]
    class HarnessToolResultMetadataBlockDelta < Struct.new(
      nil,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A tool use request from the model.</p>
    # @!attribute name
    #   <p>The name of the tool to call.</p>
    #   @return [String]
    # @!attribute tool_use_id
    #   <p>The unique ID of this tool use.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The JSON input to pass to the tool.</p>
    #   @return [JSON]
    # @!attribute type
    #   <p>The type of tool use.</p>
    #   @return [String]
    # @!attribute server_name
    #   <p>The name of the MCP server providing this tool.</p>
    #   @return [String]
    class HarnessToolUseBlock < Struct.new(
      nil,
      :name,
      :tool_use_id,
      :input,
      :type,
      :server_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Delta payload for tool use input.</p>
    # @!attribute input
    #   <p>The partial JSON input for the tool call.</p>
    #   @return [String]
    class HarnessToolUseBlockDelta < Struct.new(
      nil,
      :input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Start payload for a tool use content block.</p>
    # @!attribute tool_use_id
    #   <p>The unique ID of this tool use.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the tool being called.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of tool use.</p>
    #   @return [String]
    # @!attribute server_name
    #   <p>The name of the MCP server providing this tool.</p>
    #   @return [String]
    class HarnessToolUseBlockStart < Struct.new(
      nil,
      :tool_use_id,
      :name,
      :type,
      :server_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The identifier of the AgentCore Memory resource to ingest content into.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The content to ingest. Only inline content is supported.</p>
    #   @return [Types::ContentSource]
    # @!attribute content_timestamp
    #   <p>The timestamp of when the content occurred.</p>
    #   @return [Time]
    # @!attribute actor_id
    #   <p>The identifier of the actor associated with this content. An actor represents an entity that participates in sessions and generates content.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the session that the content belongs to. If not provided, a session identifier is generated and returned in the response.</p>
    #   @return [String]
    # @!attribute extraction_config
    #   <p>The extraction configuration for long-term memory records. Use this parameter to specify namespace variable keys and their values for namespace substitution during extraction.</p>
    #   @return [Types::ExtractionConfig]
    # @!attribute metadata
    #   <p>The key-value metadata to attach to the content.</p>
    #   @return [Hash<String, Types::MetadataValue>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, AgentCore ignores the request, but does not return an error.</p>
    #   @return [String]
    class IngestDataInput < Struct.new(
      nil,
      :memory_id,
      :source,
      :content_timestamp,
      :actor_id,
      :session_id,
      :extraction_config,
      :metadata,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The identifier of the session that the service ingested the content into. This value echoes the session identifier from the request, or the identifier that the service generated when you did not provide one.</p>
    #   @return [String]
    class IngestDataOutput < Struct.new(
      nil,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single content payload item to ingest. A payload item contains either conversational or JSON content.</p>
    # @!attribute conversational
    #   <p>The conversational content for this payload item.</p>
    #   @return [Types::Conversational]
    # @!attribute json
    #   <p>The JSON content for this payload item.</p>
    #   @return [Types::MemoryJsonData]
    class IngestPayloadType < Struct.new(
      :conversational,
      :json,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Conversational < IngestPayloadType; end
      class Json < IngestPayloadType; end
      class Unknown < IngestPayloadType; end
    end

    # <p>Inline ground truth data containing assertions, expected trajectories, and per-turn expected responses.</p>
    # @!attribute assertions
    #   <p>Assertions for evaluation, reuses common model EvaluationContentList.</p>
    #   @return [Array<Types::EvaluationContent>]
    # @!attribute expected_trajectory
    #   <p>The expected tool call sequence for trajectory evaluation.</p>
    #   @return [Types::EvaluationExpectedTrajectory]
    # @!attribute turns
    #   <p>A list of per-turn ground truth data, each containing an input prompt and expected response.</p>
    #   @return [Array<Types::GroundTruthTurn>]
    class InlineGroundTruth < Struct.new(
      nil,
      :assertions,
      :expected_trajectory,
      :turns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The content included directly in the request as one or more payload items.</p>
    # @!attribute payload
    #   <p>The list of content payload items to ingest.</p>
    #   @return [Array<Types::IngestPayloadType>]
    class InlineMemoryContent < Struct.new(
      nil,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A block of input content.</p>
    # @!attribute path
    #   <p>The path to the input content.</p>
    #   @return [String]
    # @!attribute text
    #   <p>The text input content.</p>
    #   @return [String]
    # @!attribute blob
    #   <p>The binary input content.</p>
    #   @return [String]
    class InputContentBlock < Struct.new(
      nil,
      :path,
      :text,
      :blob,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reference to an insight analysis to run against sessions during batch evaluation. Insights provide deeper analysis beyond individual evaluator scores, including failure detection, user intent clustering, and execution summarization.</p>
    # @!attribute insight_id
    #   <p>The unique identifier of the insight to run.</p>
    #   @return [String]
    class Insight < Struct.new(
      nil,
      :insight_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A signal indicating a detected failure within a span.</p>
    # @!attribute category
    #   <p>The failure category classification for this signal.</p>
    #   @return [String]
    # @!attribute evidence
    #   <p>The evidence supporting the failure detection.</p>
    #   @return [String]
    # @!attribute confidence
    #   <p>The confidence score of the failure detection.</p>
    #   @return [Float]
    class InsightsFailureSignal < Struct.new(
      nil,
      :category,
      :evidence,
      :confidence,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The exception that occurs when the service encounters an unexpected internal error. This is a temporary condition that will resolve itself with retries. We recommend implementing exponential backoff retry logic in your application.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by AgentCore. Check your input values and try again.</p>
    # @!attribute message
    #   @return [String]
    class InvalidInputException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request for InvokeAgentRuntimeCommand operation.</p>
    # @!attribute content_type
    #   <p>The MIME type of the input data in the request payload. This tells the agent runtime how to interpret the payload data. Common values include application/json for JSON data.</p>
    #   @return [String]
    # @!attribute accept
    #   <p>The desired MIME type for the response from the agent runtime command. This tells the agent runtime what format to use for the response data. Common values include application/json for JSON data.</p>
    #   @return [String]
    # @!attribute runtime_session_id
    #   <p>The unique identifier of the runtime session in which to execute the command. This session ID is used to maintain state and context across multiple command invocations.</p>
    #   @return [String]
    # @!attribute trace_id
    #   <p>The trace identifier for request tracking.</p>
    #   @return [String]
    # @!attribute trace_parent
    #   <p>The parent trace information for distributed tracing.</p>
    #   @return [String]
    # @!attribute trace_state
    #   <p>The trace state information for distributed tracing.</p>
    #   @return [String]
    # @!attribute baggage
    #   <p>Additional context information for distributed tracing.</p>
    #   @return [String]
    # @!attribute agent_runtime_arn
    #   <p>The Amazon Resource Name (ARN) of the agent runtime on which to execute the command. This identifies the specific agent runtime environment where the command will run.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>The qualifier to use for the agent runtime. This is an endpoint name that points to a specific version. If not specified, Amazon Bedrock AgentCore uses the default endpoint of the agent runtime.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The identifier of the Amazon Web Services account for the agent runtime resource. This parameter is required when you specify an agent ID instead of the full ARN for <code>agentRuntimeArn</code>.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The request body containing the command to execute and optional configuration parameters such as timeout settings.</p>
    #   @return [Types::InvokeAgentRuntimeCommandRequestBody]
    class InvokeAgentRuntimeCommandRequest < Struct.new(
      nil,
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
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request body structure for the <code>InvokeAgentRuntimeCommand</code> operation, containing the command to execute and optional configuration parameters.</p>
    # @!attribute command
    #   <p>The shell command to execute on the agent runtime. This command is executed in the runtime environment and its output is streamed back to the caller.</p>
    #   @return [String]
    # @!attribute timeout
    #   <p>The maximum duration in seconds to wait for the command to complete. If the command execution exceeds this timeout, it will be terminated. Default is 300 seconds. Minimum is 1 second. Maximum is 3600 seconds.</p>
    #   @return [Integer]
    class InvokeAgentRuntimeCommandRequestBody < Struct.new(
      nil,
      :command,
      :timeout,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response for InvokeAgentRuntimeCommand operation.</p>
    # @!attribute runtime_session_id
    #   <p>The unique identifier of the runtime session in which the command was executed.</p>
    #   @return [String]
    # @!attribute trace_id
    #   <p>The trace identifier for request tracking.</p>
    #   @return [String]
    # @!attribute trace_parent
    #   <p>The parent trace information for distributed tracing.</p>
    #   @return [String]
    # @!attribute trace_state
    #   <p>The trace state information for distributed tracing.</p>
    #   @return [String]
    # @!attribute baggage
    #   <p>Additional context information for distributed tracing.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The MIME type of the response data. This indicates how to interpret the response data. Common values include application/json for JSON data.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>The HTTP status code of the response. A status code of 200 indicates a successful operation. Other status codes indicate various error conditions.</p>
    #   @return [Integer]
    # @!attribute stream
    #   <p>The streaming output from the command execution. This stream contains events that provide real-time updates including standard output, standard error, and completion status.</p>
    #   @return [Types::InvokeAgentRuntimeCommandStreamOutput]
    class InvokeAgentRuntimeCommandResponse < Struct.new(
      nil,
      :runtime_session_id,
      :trace_id,
      :trace_parent,
      :trace_state,
      :baggage,
      :content_type,
      :status_code,
      :stream,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The streaming output union for the <code>InvokeAgentRuntimeCommand</code> operation. This union delivers typed events: <code>contentStart</code> (first), <code>contentDelta</code> (middle), and <code>contentStop</code> (last).</p>
    # @!attribute chunk
    #   <p>A response chunk containing command execution events such as content start, content delta, or content stop events.</p>
    #   @return [Types::ResponseChunk]
    # @!attribute access_denied_exception
    #   <p>Exception events for error streaming.</p>
    #   @return [Types::AccessDeniedException]
    # @!attribute internal_server_exception
    #   <p>The exception that occurs when the service encounters an unexpected internal error. This is a temporary condition that will resolve itself with retries. We recommend implementing exponential backoff retry logic in your application.</p>
    #   @return [Types::InternalServerException]
    # @!attribute resource_not_found_exception
    #   <p>The exception that occurs when the specified resource does not exist. This can happen when using an invalid identifier or when trying to access a resource that has been deleted.</p>
    #   @return [Types::ResourceNotFoundException]
    # @!attribute service_quota_exceeded_exception
    #   <p>The exception that occurs when the request would cause a service quota to be exceeded. Review your service quotas and either reduce your request rate or request a quota increase.</p>
    #   @return [Types::ServiceQuotaExceededException]
    # @!attribute throttling_exception
    #   <p>The exception that occurs when the request was denied due to request throttling. This happens when you exceed the allowed request rate for an operation. Reduce the frequency of requests or implement exponential backoff retry logic in your application.</p>
    #   @return [Types::ThrottlingException]
    # @!attribute validation_exception
    #   <p>The exception that occurs when the input fails to satisfy the constraints specified by the service. Check the error message for details about which input parameter is invalid and correct your request.</p>
    #   @return [Types::ValidationException]
    # @!attribute runtime_client_error
    #   <p>The exception that occurs when there is an error in the runtime client. This can happen due to network issues, invalid configuration, or other client-side problems. Check the error message for specific details about the error.</p>
    #   @return [Types::RuntimeClientError]
    class InvokeAgentRuntimeCommandStreamOutput < Struct.new(
      :chunk,
      :access_denied_exception,
      :internal_server_exception,
      :resource_not_found_exception,
      :service_quota_exceeded_exception,
      :throttling_exception,
      :validation_exception,
      :runtime_client_error,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Chunk < InvokeAgentRuntimeCommandStreamOutput; end
      class AccessDeniedException < InvokeAgentRuntimeCommandStreamOutput; end
      class InternalServerException < InvokeAgentRuntimeCommandStreamOutput; end
      class ResourceNotFoundException < InvokeAgentRuntimeCommandStreamOutput; end
      class ServiceQuotaExceededException < InvokeAgentRuntimeCommandStreamOutput; end
      class ThrottlingException < InvokeAgentRuntimeCommandStreamOutput; end
      class ValidationException < InvokeAgentRuntimeCommandStreamOutput; end
      class RuntimeClientError < InvokeAgentRuntimeCommandStreamOutput; end
      class Unknown < InvokeAgentRuntimeCommandStreamOutput; end
    end

    # @!attribute content_type
    #   <p>The MIME type of the input data in the payload. This tells the agent runtime how to interpret the payload data. Common values include application/json for JSON data.</p>
    #   @return [String]
    # @!attribute accept
    #   <p>The desired MIME type for the response from the agent runtime. This tells the agent runtime what format to use for the response data. Common values include application/json for JSON data.</p>
    #   @return [String]
    # @!attribute mcp_session_id
    #   <p>The identifier of the MCP session.</p>
    #   @return [String]
    # @!attribute runtime_session_id
    #   <p>The identifier of the runtime session.</p>
    #   @return [String]
    # @!attribute mcp_protocol_version
    #   <p>The version of the MCP protocol being used.</p>
    #   @return [String]
    # @!attribute mcp_method
    #   <p>The MCP method being invoked. For example, <code>tools/call</code>, <code>resources/read</code>, or <code>prompts/get</code>.</p>
    #   @return [String]
    # @!attribute mcp_name
    #   <p>The name of the MCP resource, tool, or prompt being accessed. The value depends on the method:</p> <ul> <li> <p> <code>tools/call</code> – The tool name.</p> </li> <li> <p> <code>resources/read</code> – The resource URI.</p> </li> <li> <p> <code>prompts/get</code> – The prompt name.</p> </li> </ul>
    #   @return [String]
    # @!attribute runtime_user_id
    #   <p>The identifier of the runtime user.</p>
    #   @return [String]
    # @!attribute trace_id
    #   <p>The trace identifier for request tracking.</p>
    #   @return [String]
    # @!attribute trace_parent
    #   <p>The parent trace information for distributed tracing.</p>
    #   @return [String]
    # @!attribute trace_state
    #   <p>The trace state information for distributed tracing.</p>
    #   @return [String]
    # @!attribute baggage
    #   <p>Additional context information for distributed tracing.</p>
    #   @return [String]
    # @!attribute agent_runtime_arn
    #   <p>The identifier of the agent runtime to invoke. You can specify either the full Amazon Web Services Resource Name (ARN) or the agent ID. If you use the agent ID, you must also provide the <code>accountId</code> query parameter.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>The qualifier to use for the agent runtime. This is an endpoint name that points to a specific version. If not specified, Amazon Bedrock AgentCore uses the default endpoint of the agent runtime.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The identifier of the Amazon Web Services account for the agent runtime resource. This parameter is required when you specify an agent ID instead of the full ARN for <code>agentRuntimeArn</code>.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>The input data to send to the agent runtime. The format of this data depends on the specific agent configuration and must match the specified content type. For most agents, this is a JSON object containing the user's request.</p>
    #   @return [String]
    class InvokeAgentRuntimeRequest < Struct.new(
      nil,
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
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute runtime_session_id
    #   <p>The identifier of the runtime session.</p>
    #   @return [String]
    # @!attribute mcp_session_id
    #   <p>The identifier of the MCP session.</p>
    #   @return [String]
    # @!attribute mcp_protocol_version
    #   <p>The version of the MCP protocol being used.</p>
    #   @return [String]
    # @!attribute trace_id
    #   <p>The trace identifier for request tracking.</p>
    #   @return [String]
    # @!attribute trace_parent
    #   <p>The parent trace information for distributed tracing.</p>
    #   @return [String]
    # @!attribute trace_state
    #   <p>The trace state information for distributed tracing.</p>
    #   @return [String]
    # @!attribute baggage
    #   <p>Additional context information for distributed tracing.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The MIME type of the response data. This indicates how to interpret the response data. Common values include application/json for JSON data.</p>
    #   @return [String]
    # @!attribute response
    #   <p>The response data from the agent runtime. The format of this data depends on the specific agent configuration and the requested accept type. For most agents, this is a JSON object containing the agent's response to the user's request.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>The HTTP status code of the response. A status code of 200 indicates a successful operation. Other status codes indicate various error conditions.</p>
    #   @return [Integer]
    class InvokeAgentRuntimeResponse < Struct.new(
      nil,
      :runtime_session_id,
      :mcp_session_id,
      :mcp_protocol_version,
      :trace_id,
      :trace_parent,
      :trace_state,
      :baggage,
      :content_type,
      :response,
      :status_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:response] = Base64.strict_decode64('') unless options.key?(:response)
        super
      end
    end

    # <p>Request for the InvokeBrowser operation.</p>
    # @!attribute browser_identifier
    #   <p>The unique identifier of the browser associated with the session. This must match the identifier used when creating the session with <code>StartBrowserSession</code>.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the browser session on which to perform the action. This must be an active session created with <code>StartBrowserSession</code>.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The browser action to perform. Exactly one member of the <code>BrowserAction</code> union must be set per request.</p>
    #   @return [Types::BrowserAction]
    class InvokeBrowserRequest < Struct.new(
      nil,
      :browser_identifier,
      :session_id,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response for the InvokeBrowser operation.</p>
    # @!attribute result
    #   <p>The result of the browser action. The member set in the result corresponds to the action that was performed.</p>
    #   @return [Types::BrowserActionResult]
    # @!attribute session_id
    #   <p>The unique identifier of the browser session on which the action was performed.</p>
    #   @return [String]
    class InvokeBrowserResponse < Struct.new(
      nil,
      :result,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_interpreter_identifier
    #   <p>The unique identifier of the code interpreter associated with the session. This must match the identifier used when creating the session with <code>StartCodeInterpreterSession</code>.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the code interpreter session to use. This must be an active session created with <code>StartCodeInterpreterSession</code>. If the session has expired or been stopped, the request will fail.</p>
    #   @return [String]
    # @!attribute trace_id
    #   <p>The trace identifier for request tracking.</p>
    #   @return [String]
    # @!attribute trace_parent
    #   <p>The parent trace information for distributed tracing.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the code interpreter to invoke.</p>
    #   @return [String]
    # @!attribute arguments
    #   <p>The arguments for the code interpreter. This includes the code to execute and any additional parameters such as the programming language, whether to clear the execution context, and other execution options. The structure of this parameter depends on the specific code interpreter being used.</p>
    #   @return [Types::ToolArguments]
    class InvokeCodeInterpreterRequest < Struct.new(
      nil,
      :code_interpreter_identifier,
      :session_id,
      :trace_id,
      :trace_parent,
      :name,
      :arguments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The identifier of the code interpreter session.</p>
    #   @return [String]
    # @!attribute stream
    #   <p>The stream containing the results of the code execution. This includes output, errors, and execution status.</p>
    #   @return [Types::CodeInterpreterStreamOutput]
    class InvokeCodeInterpreterResponse < Struct.new(
      nil,
      :session_id,
      :stream,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute harness_arn
    #   <p>The ARN of the harness to invoke.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>The endpoint name to invoke. If omitted, the DEFAULT endpoint is used.</p>
    #   @return [String]
    # @!attribute runtime_session_id
    #   <p>The session ID for the invocation. Use the same session ID across requests to continue a conversation.</p>
    #   @return [String]
    # @!attribute runtime_user_id
    #   <p>An identifier for the end user making the request. This value is passed through to the runtime container.</p>
    #   @return [String]
    # @!attribute trace_parent
    #   <p>W3C trace context parent header containing version, trace ID, parent span ID, and trace flags.</p>
    #   @return [String]
    # @!attribute trace_state
    #   <p>W3C trace context state header for vendor-specific trace information.</p>
    #   @return [String]
    # @!attribute trace_id
    #   <p>Trace ID for maintaining observability through the operation.</p>
    #   @return [String]
    # @!attribute baggage
    #   <p>W3C Baggage header for user-defined context propagation. Format: key1=value1,key2=value2</p>
    #   @return [String]
    # @!attribute messages
    #   <p>The messages to send to the agent.</p>
    #   @return [Array<Types::HarnessMessage>]
    # @!attribute model
    #   <p>The model configuration to use for this invocation. If specified, overrides the harness default.</p>
    #   @return [Types::HarnessModelConfiguration]
    # @!attribute system_prompt
    #   <p>The system prompt to use for this invocation. If specified, overrides the harness default.</p>
    #   @return [Array<Types::HarnessSystemContentBlock>]
    # @!attribute tools
    #   <p>The tools available to the agent for this invocation. If specified, overrides the harness default.</p>
    #   @return [Array<Types::HarnessTool>]
    # @!attribute skills
    #   <p>The skills available to the agent for this invocation. If specified, overrides the harness default.</p>
    #   @return [Array<Types::HarnessSkill>]
    # @!attribute allowed_tools
    #   <p>The tools that the agent is allowed to use for this invocation. If specified, overrides the harness default.</p>
    #   @return [Array<String>]
    # @!attribute max_iterations
    #   <p>The maximum number of iterations the agent loop can execute. If specified, overrides the harness default.</p>
    #   @return [Integer]
    # @!attribute max_tokens
    #   <p>The maximum number of tokens the agent can generate per iteration. If specified, overrides the harness default.</p>
    #   @return [Integer]
    # @!attribute timeout_seconds
    #   <p>The maximum duration in seconds for the agent loop execution. If specified, overrides the harness default.</p>
    #   @return [Integer]
    # @!attribute actor_id
    #   <p>The actor ID for memory operations. Overrides the actor ID configured on the harness.</p>
    #   @return [String]
    class InvokeHarnessRequest < Struct.new(
      nil,
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
      :actor_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stream
    #   <p>The streaming output from the harness invocation.</p>
    #   @return [Types::InvokeHarnessStreamOutput]
    class InvokeHarnessResponse < Struct.new(
      nil,
      :stream,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The streaming events returned by a harness invocation.</p>
    # @!attribute message_start
    #   <p>Indicates the start of a new message from the agent.</p>
    #   @return [Types::HarnessMessageStartEvent]
    # @!attribute content_block_start
    #   <p>Indicates the start of a new content block.</p>
    #   @return [Types::HarnessContentBlockStartEvent]
    # @!attribute content_block_delta
    #   <p>A delta update to the current content block.</p>
    #   @return [Types::HarnessContentBlockDeltaEvent]
    # @!attribute content_block_stop
    #   <p>Indicates the end of the current content block.</p>
    #   @return [Types::HarnessContentBlockStopEvent]
    # @!attribute message_stop
    #   <p>Indicates the end of the current message.</p>
    #   @return [Types::HarnessMessageStopEvent]
    # @!attribute metadata
    #   <p>Token usage and latency metrics for the invocation.</p>
    #   @return [Types::HarnessMetadataEvent]
    # @!attribute internal_server_exception
    #   <p>The exception that occurs when the service encounters an unexpected internal error. This is a temporary condition that will resolve itself with retries. We recommend implementing exponential backoff retry logic in your application.</p>
    #   @return [Types::InternalServerException]
    # @!attribute validation_exception
    #   <p>The exception that occurs when the input fails to satisfy the constraints specified by the service. Check the error message for details about which input parameter is invalid and correct your request.</p>
    #   @return [Types::ValidationException]
    # @!attribute runtime_client_error
    #   <p>An error returned by the runtime container during agent execution.</p>
    #   @return [Types::RuntimeClientError]
    # @!attribute hook_event
    #   <p>A lifecycle hook event emitted when a configured hook runs.</p>
    #   @return [Types::HarnessHookEvent]
    class InvokeHarnessStreamOutput < Struct.new(
      :message_start,
      :content_block_start,
      :content_block_delta,
      :content_block_stop,
      :message_stop,
      :metadata,
      :internal_server_exception,
      :validation_exception,
      :runtime_client_error,
      :hook_event,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class MessageStart < InvokeHarnessStreamOutput; end
      class ContentBlockStart < InvokeHarnessStreamOutput; end
      class ContentBlockDelta < InvokeHarnessStreamOutput; end
      class ContentBlockStop < InvokeHarnessStreamOutput; end
      class MessageStop < InvokeHarnessStreamOutput; end
      class Metadata < InvokeHarnessStreamOutput; end
      class InternalServerException < InvokeHarnessStreamOutput; end
      class ValidationException < InvokeHarnessStreamOutput; end
      class RuntimeClientError < InvokeHarnessStreamOutput; end
      class HookEvent < InvokeHarnessStreamOutput; end
      class Unknown < InvokeHarnessStreamOutput; end
    end

    # <p>Arguments for a key press action.</p>
    # @!attribute key
    #   <p>The key name to press (for example, <code>enter</code>, <code>tab</code>, <code>escape</code>).</p>
    #   @return [String]
    # @!attribute presses
    #   <p>The number of times to press the key. Valid range: 1–100. Defaults to 1.</p>
    #   @return [Integer]
    class KeyPressArguments < Struct.new(
      nil,
      :key,
      :presses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a key press action.</p>
    # @!attribute status
    #   <p>The status of the action execution.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error message. Present only when the action failed.</p>
    #   @return [String]
    class KeyPressResult < Struct.new(
      nil,
      :status,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Arguments for a key shortcut action.</p>
    # @!attribute keys
    #   <p>The key combination to press (for example, <code>["ctrl", "s"]</code>). Maximum 5 keys.</p>
    #   @return [Array<String>]
    class KeyShortcutArguments < Struct.new(
      nil,
      :keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a key shortcut action.</p>
    # @!attribute status
    #   <p>The status of the action execution.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error message. Present only when the action failed.</p>
    #   @return [String]
    class KeyShortcutResult < Struct.new(
      nil,
      :status,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Arguments for a key type action.</p>
    # @!attribute text
    #   <p>The text string to type. Maximum length: 10,000 characters.</p>
    #   @return [String]
    class KeyTypeArguments < Struct.new(
      nil,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a key type action.</p>
    # @!attribute status
    #   <p>The status of the action execution.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error message. Present only when the action failed.</p>
    #   @return [String]
    class KeyTypeResult < Struct.new(
      nil,
      :status,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Left expression of the event metadata filter.</p>
    # @!attribute metadata_key
    #   <p>Key associated with the metadata in an event.</p>
    #   @return [String]
    class LeftExpression < Struct.new(
      :metadata_key,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class MetadataKey < LeftExpression; end
      class Unknown < LeftExpression; end
    end

    # <p>Represents different linked accounts that can be linked to an embedded wallet. Supports email, SMS, JWT, and OAuth2 approaches.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute email
    #   <p>Email-based linked account.</p>
    #   @return [Types::LinkedAccountEmail]
    # @!attribute sms
    #   <p>SMS-based linked account using phone number.</p>
    #   @return [Types::LinkedAccountSms]
    # @!attribute developer_jwt
    #   <p>Developer JWT linked account with key ID and subject.</p>
    #   @return [Types::LinkedAccountDeveloperJwt]
    # @!attribute o_auth2
    #   <p>OAuth2 provider linked account (Google, Apple, X, Telegram, GitHub).</p>
    #   @return [Types::LinkedAccountOAuth2]
    class LinkedAccount < Struct.new(
      :email,
      :sms,
      :developer_jwt,
      :o_auth2,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Email < LinkedAccount; end
      class Sms < LinkedAccount; end
      class DeveloperJwt < LinkedAccount; end
      class OAuth2 < LinkedAccount; end
      class Unknown < LinkedAccount; end
    end

    # <p>Authentication method using JWT with key ID and subject claims.</p>
    # @!attribute kid
    #   <p>The key ID (kid) from the JWT header. Identifies which key was used to sign the JWT.</p>
    #   @return [String]
    # @!attribute sub
    #   <p>The subject (sub) claim from the JWT payload. Identifies the principal that is the subject of the JWT.</p>
    #   @return [String]
    class LinkedAccountDeveloperJwt < Struct.new(
      nil,
      :kid,
      :sub,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Linked account using an email address.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute email_address
    #   <p>The email address used for the linked account. Must be a valid email format.</p>
    #   @return [String]
    class LinkedAccountEmail < Struct.new(
      nil,
      :email_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Authentication method using OAuth2 providers. Supports Google, Apple, X, Telegram, and GitHub providers.</p>
    # @!attribute google
    #   <p>Google OAuth2 authentication.</p>
    #   @return [Types::OAuth2Authentication]
    # @!attribute apple
    #   <p>Apple OAuth2 authentication.</p>
    #   @return [Types::OAuth2Authentication]
    # @!attribute x
    #   <p>X (formerly Twitter) OAuth2 authentication.</p>
    #   @return [Types::OAuth2Authentication]
    # @!attribute telegram
    #   <p>Telegram OAuth2 authentication.</p>
    #   @return [Types::OAuth2Authentication]
    # @!attribute github
    #   <p>GitHub OAuth2 authentication.</p>
    #   @return [Types::OAuth2Authentication]
    class LinkedAccountOAuth2 < Struct.new(
      :google,
      :apple,
      :x,
      :telegram,
      :github,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Google < LinkedAccountOAuth2; end
      class Apple < LinkedAccountOAuth2; end
      class X < LinkedAccountOAuth2; end
      class Telegram < LinkedAccountOAuth2; end
      class Github < LinkedAccountOAuth2; end
      class Unknown < LinkedAccountOAuth2; end
    end

    # <p>Linked account using a phone number in E.164 format.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute phone_number
    #   <p>The phone number in E.164 format (e.g., +1234567890).</p>
    #   @return [String]
    class LinkedAccountSms < Struct.new(
      nil,
      :phone_number,
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
    class ListABTestsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ab_tests
    #   <p>The list of A/B test summaries.</p>
    #   @return [Array<Types::ABTestSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListABTestsResponse < Struct.new(
      nil,
      :ab_tests,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The identifier of the AgentCore Memory resource for which to list actors.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 20.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListActorsInput < Struct.new(
      nil,
      :memory_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute actor_summaries
    #   <p>The list of actor summaries.</p>
    #   @return [Array<Types::ActorSummary>]
    # @!attribute next_token
    #   <p>The token to use in a subsequent request to get the next set of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    class ListActorsOutput < Struct.new(
      nil,
      :actor_summaries,
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
    class ListBatchEvaluationsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_evaluations
    #   <p>The list of batch evaluation summaries.</p>
    #   @return [Array<Types::BatchEvaluationSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListBatchEvaluationsResponse < Struct.new(
      nil,
      :batch_evaluations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute browser_identifier
    #   <p>The unique identifier of the browser to list sessions for. If specified, only sessions for this browser are returned. If not specified, sessions for all browsers are returned.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 10. Valid values range from 1 to 100. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. If not specified, Amazon Bedrock AgentCore returns the first page of results.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the browser sessions to list. Valid values include ACTIVE, STOPPING, and STOPPED. If not specified, sessions with any status are returned.</p>
    #   @return [String]
    class ListBrowserSessionsRequest < Struct.new(
      nil,
      :browser_identifier,
      :max_results,
      :next_token,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of browser sessions that match the specified criteria.</p>
    #   @return [Array<Types::BrowserSessionSummary>]
    # @!attribute next_token
    #   <p>The token to use in a subsequent <code>ListBrowserSessions</code> request to get the next set of results.</p>
    #   @return [String]
    class ListBrowserSessionsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_interpreter_identifier
    #   <p>The unique identifier of the code interpreter to list sessions for. If specified, only sessions for this code interpreter are returned. If not specified, sessions for all code interpreters are returned.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 10. Valid values range from 1 to 100. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. If not specified, Amazon Bedrock AgentCore returns the first page of results.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the code interpreter sessions to list. Valid values include ACTIVE, STOPPING, and STOPPED. If not specified, sessions with any status are returned.</p>
    #   @return [String]
    class ListCodeInterpreterSessionsRequest < Struct.new(
      nil,
      :code_interpreter_identifier,
      :max_results,
      :next_token,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of code interpreter sessions that match the specified criteria.</p>
    #   @return [Array<Types::CodeInterpreterSessionSummary>]
    # @!attribute next_token
    #   <p>The token to use in a subsequent <code>ListCodeInterpreterSessions</code> request to get the next set of results.</p>
    #   @return [String]
    class ListCodeInterpreterSessionsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The identifier of the AgentCore Memory resource for which to list events.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the session for which to list events.</p>
    #   @return [String]
    # @!attribute actor_id
    #   <p>The identifier of the actor for which to list events.</p>
    #   @return [String]
    # @!attribute include_payloads
    #   <p>Specifies whether to include event payloads in the response. Set to true to include payloads, or false to exclude them.</p>
    #   @return [Boolean]
    # @!attribute filter
    #   <p>Filter criteria to apply when listing events.</p>
    #   @return [Types::FilterInput]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 20.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListEventsInput < Struct.new(
      nil,
      :memory_id,
      :session_id,
      :actor_id,
      :include_payloads,
      :filter,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute events
    #   <p>The list of events that match the specified criteria.</p>
    #   @return [Array<Types::Event>]
    # @!attribute next_token
    #   <p>The token to use in a subsequent request to get the next set of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    class ListEventsOutput < Struct.new(
      nil,
      :events,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The unique identifier of the memory to list extraction jobs for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 20.</p>
    #   @return [Integer]
    # @!attribute filter
    #   <p>Filter criteria to apply when listing extraction jobs.</p>
    #   @return [Types::ExtractionJobFilterInput]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListMemoryExtractionJobsInput < Struct.new(
      nil,
      :memory_id,
      :max_results,
      :filter,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute jobs
    #   <p>List of extraction job metadata matching the specified criteria.</p>
    #   @return [Array<Types::ExtractionJobMetadata>]
    # @!attribute next_token
    #   <p>Token to retrieve the next page of results, if available.</p>
    #   @return [String]
    class ListMemoryExtractionJobsOutput < Struct.new(
      nil,
      :jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The identifier of the AgentCore Memory resource for which to list memory records.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace prefix to filter memory records by. Returns all memory records in namespaces that start with the provided prefix. Either <code>namespace</code> or <code>namespacePath</code> is required.</p>
    #   @return [String]
    # @!attribute namespace_path
    #   <p>Use namespacePath for hierarchical retrievals. Return all memory records where namespace falls under the same parent hierarchy. Either <code>namespace</code> or <code>namespacePath</code> is required.</p>
    #   @return [String]
    # @!attribute memory_strategy_id
    #   <p>The memory strategy identifier to filter memory records by. If specified, only memory records with this strategy ID are returned.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 20.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute metadata_filters
    #   <p>A list of metadata filter expressions to scope the returned memory records.</p>
    #   @return [Array<Types::MemoryMetadataFilterExpression>]
    class ListMemoryRecordsInput < Struct.new(
      nil,
      :memory_id,
      :namespace,
      :namespace_path,
      :memory_strategy_id,
      :max_results,
      :next_token,
      :metadata_filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_record_summaries
    #   <p>The list of memory record summaries that match the specified criteria.</p>
    #   @return [Array<Types::MemoryRecordSummary>]
    # @!attribute next_token
    #   <p>The token to use in a subsequent request to get the next set of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    class ListMemoryRecordsOutput < Struct.new(
      nil,
      :memory_record_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for listing payment instruments.</p>
    # @!attribute user_id
    #   <p>The user ID associated with the payment instruments.</p>
    #   @return [String]
    # @!attribute agent_name
    #   <p>The agent name associated with this request, used for observability.</p>
    #   @return [String]
    # @!attribute payment_manager_arn
    #   <p>The ARN of the payment manager that owns the payment instruments.</p>
    #   @return [String]
    # @!attribute payment_connector_id
    #   <p>The ID of the payment connector to filter by.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Token for pagination to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return in a single response.</p>
    #   @return [Integer]
    class ListPaymentInstrumentsRequest < Struct.new(
      nil,
      :user_id,
      :agent_name,
      :payment_manager_arn,
      :payment_connector_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for listing payment instruments.</p>
    # @!attribute payment_instruments
    #   <p>List of payment instrument summaries matching the request criteria.</p>
    #   @return [Array<Types::PaymentInstrumentSummary>]
    # @!attribute next_token
    #   <p>Token for pagination to retrieve the next set of results.</p>
    #   @return [String]
    class ListPaymentInstrumentsResponse < Struct.new(
      nil,
      :payment_instruments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for listing payment sessions.</p>
    # @!attribute user_id
    #   <p>The user ID associated with the payment sessions.</p>
    #   @return [String]
    # @!attribute agent_name
    #   <p>The agent name associated with this request, used for observability.</p>
    #   @return [String]
    # @!attribute payment_manager_arn
    #   <p>The ARN of the payment manager that owns the sessions.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Token for pagination to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return in a single response.</p>
    #   @return [Integer]
    class ListPaymentSessionsRequest < Struct.new(
      nil,
      :user_id,
      :agent_name,
      :payment_manager_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for listing payment sessions.</p>
    # @!attribute payment_sessions
    #   <p>List of payment session summaries matching the request criteria.</p>
    #   @return [Array<Types::PaymentSessionSummary>]
    # @!attribute next_token
    #   <p>Token for pagination to retrieve the next set of results.</p>
    #   @return [String]
    class ListPaymentSessionsResponse < Struct.new(
      nil,
      :payment_sessions,
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
    # @!attribute status_filter
    #   <p>Optional filter to return only recommendations with the specified status.</p>
    #   @return [String]
    class ListRecommendationsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :status_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommendation_summaries
    #   <p>The list of recommendation summaries.</p>
    #   @return [Array<Types::RecommendationSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListRecommendationsResponse < Struct.new(
      nil,
      :recommendation_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The identifier of the AgentCore Memory resource for which to list sessions.</p>
    #   @return [String]
    # @!attribute actor_id
    #   <p>The identifier of the actor for which to list sessions. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 20.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Filter criteria to apply when listing sessions.</p>
    #   @return [Types::SessionFilter]
    class ListSessionsInput < Struct.new(
      nil,
      :memory_id,
      :actor_id,
      :max_results,
      :next_token,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_summaries
    #   <p>The list of session summaries that match the specified criteria.</p>
    #   @return [Array<Types::SessionSummary>]
    # @!attribute next_token
    #   <p>The token to use in a subsequent request to get the next set of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    class ListSessionsOutput < Struct.new(
      nil,
      :session_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a stream that provides a visual representation of a browser session in Amazon Bedrock AgentCore. This stream enables agents to observe the current state of the browser, including rendered web pages, visual elements, and the results of interactions.</p>
    # @!attribute stream_endpoint
    #   <p>The endpoint URL for the live view stream. This URL is used to establish a connection to receive visual updates from the browser session.</p>
    #   @return [String]
    class LiveViewStream < Struct.new(
      nil,
      :stream_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The MCP (Model Context Protocol) descriptor configuration for a registry record. Contains the server definition and tools definition.</p>
    # @!attribute server
    #   <p> The MCP server definition that describes the server configuration.</p>
    #   @return [Types::ServerDefinition]
    # @!attribute tools
    #   <p> The MCP tools definition that describes the available tools.</p>
    #   @return [Types::ToolsDefinition]
    class McpDescriptor < Struct.new(
      nil,
      :server,
      :tools,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the content of a memory record.</p>
    # @!attribute text
    #   <p>The text content of the memory record.</p>
    #   @return [String]
    class MemoryContent < Struct.new(
      :text,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < MemoryContent; end
      class Unknown < MemoryContent; end
    end

    # <p>Contains non-conversational, JSON-formatted content for an event payload. JSON payloads are extracted into long-term memory.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute content
    #   <p>The JSON content of the payload. Accepts any JSON value, including objects, arrays, strings, numbers, booleans, and null. The maximum size is 100 KB.</p>
    #   @return [JSON]
    class MemoryJsonData < Struct.new(
      nil,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filters to apply to metadata associated with a memory. Specify the metadata key and value in the <code>left</code> and <code>right</code> fields and use the <code>operator</code> field to define the relationship to match.</p>
    # @!attribute left
    #   <p>The metadata key to evaluate.</p>
    #   @return [Types::MemoryRecordLeftExpression]
    # @!attribute operator
    #   <p>The relationship between the metadata key and value to match when applying the metadata filter.</p>
    #   @return [String]
    # @!attribute right
    #   <p>The value to compare against. Required for all operators except EXISTS and NOT_EXISTS.</p>
    #   @return [Types::MemoryRecordRightExpression]
    class MemoryMetadataFilterExpression < Struct.new(
      nil,
      :left,
      :operator,
      :right,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a memory record in an AgentCore Memory resource.</p>
    # @!attribute memory_record_id
    #   <p>The unique identifier of the memory record.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the memory record.</p>
    #   @return [Types::MemoryContent]
    # @!attribute memory_strategy_id
    #   <p>The identifier of the memory strategy associated with this record.</p>
    #   @return [String]
    # @!attribute namespaces
    #   <p>The namespaces associated with this memory record. Namespaces help organize and categorize memory records.</p>
    #   @return [Array<String>]
    # @!attribute created_at
    #   <p>The timestamp when the memory record was created.</p>
    #   @return [Time]
    # @!attribute timestamp
    #   <p>The timestamp based on which the memory record was ingested. This reflects the time of the source content that the record was derived from, which can differ from <code>createdAt</code>, the time the record itself was written.</p>
    #   @return [Time]
    # @!attribute metadata
    #   <p>A map of metadata key-value pairs associated with a memory record.</p>
    #   @return [Hash<String, Types::MemoryRecordMetadataValue>]
    # @!attribute expires_at
    #   <p>The timestamp at which the memory record expires and becomes eligible for deletion. This value is set when a record expiry (long-term memory time-to-live) applies to the record, either from the strategy the record belongs to or from a record expiry provided on the batch request that created or updated it. If the record has no expiry configured, this value is not present and the record does not expire.</p>
    #   @return [Time]
    class MemoryRecord < Struct.new(
      nil,
      :memory_record_id,
      :content,
      :memory_strategy_id,
      :namespaces,
      :created_at,
      :timestamp,
      :metadata,
      :expires_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input structure to create a new memory record.</p>
    # @!attribute request_identifier
    #   <p>A client-provided identifier for tracking this specific record creation request.</p>
    #   @return [String]
    # @!attribute namespaces
    #   <p>A list of namespace identifiers that categorize or group the memory record.</p>
    #   @return [Array<String>]
    # @!attribute content
    #   <p>The content to be stored within the memory record.</p>
    #   @return [Types::MemoryContent]
    # @!attribute timestamp
    #   <p>Time at which the memory record was created.</p>
    #   @return [Time]
    # @!attribute memory_strategy_id
    #   <p>The ID of the memory strategy that defines how this memory record is grouped.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>Metadata key-value pairs to be stored with the memory record.</p>
    #   @return [Hash<String, Types::MemoryRecordMetadataValue>]
    class MemoryRecordCreateInput < Struct.new(
      nil,
      :request_identifier,
      :namespaces,
      :content,
      :timestamp,
      :memory_strategy_id,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input structure to delete an existing memory record.</p>
    # @!attribute memory_record_id
    #   <p>The unique ID of the memory record to be deleted.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the memory record being deleted. This value is used for IAM condition key authorization.</p>
    #   @return [String]
    class MemoryRecordDeleteInput < Struct.new(
      nil,
      :memory_record_id,
      :namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The left-hand side of a memory record metadata filter expression.</p>
    # @!attribute metadata_key
    #   <p>The metadata key to filter on.</p>
    #   @return [String]
    class MemoryRecordLeftExpression < Struct.new(
      :metadata_key,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class MetadataKey < MemoryRecordLeftExpression; end
      class Unknown < MemoryRecordLeftExpression; end
    end

    # <p>The value of a memory record metadata entry.</p>
    # @!attribute string_value
    #   <p>A string value.</p>
    #   @return [String]
    # @!attribute string_list_value
    #   <p>A list of string values.</p>
    #   @return [Array<String>]
    # @!attribute number_value
    #   <p>A numeric value.</p>
    #   @return [Float]
    # @!attribute date_time_value
    #   <p>A timestamp value in ISO 8601 UTC format.</p>
    #   @return [Time]
    class MemoryRecordMetadataValue < Struct.new(
      :string_value,
      :string_list_value,
      :number_value,
      :date_time_value,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class StringValue < MemoryRecordMetadataValue; end
      class StringListValue < MemoryRecordMetadataValue; end
      class NumberValue < MemoryRecordMetadataValue; end
      class DateTimeValue < MemoryRecordMetadataValue; end
      class Unknown < MemoryRecordMetadataValue; end
    end

    # <p>Output information returned after processing a memory record operation.</p>
    # @!attribute memory_record_id
    #   <p>The unique ID associated to the memory record.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the memory record operation (e.g., SUCCEEDED, FAILED).</p>
    #   @return [String]
    # @!attribute request_identifier
    #   <p>The client-provided identifier that was used to track this record operation.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code returned when the memory record operation fails.</p>
    #   @return [Integer]
    # @!attribute error_message
    #   <p>A human-readable error message describing why the memory record operation failed.</p>
    #   @return [String]
    class MemoryRecordOutput < Struct.new(
      nil,
      :memory_record_id,
      :status,
      :request_identifier,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The right-hand side of a memory record metadata filter expression.</p>
    # @!attribute metadata_value
    #   <p>The metadata value to compare against.</p>
    #   @return [Types::MemoryRecordMetadataValue]
    class MemoryRecordRightExpression < Struct.new(
      :metadata_value,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class MetadataValue < MemoryRecordRightExpression; end
      class Unknown < MemoryRecordRightExpression; end
    end

    # <p>Contains summary information about a memory record.</p>
    # @!attribute memory_record_id
    #   <p>The unique identifier of the memory record.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the memory record.</p>
    #   @return [Types::MemoryContent]
    # @!attribute memory_strategy_id
    #   <p>The identifier of the memory strategy associated with this record.</p>
    #   @return [String]
    # @!attribute namespaces
    #   <p>The namespaces associated with this memory record.</p>
    #   @return [Array<String>]
    # @!attribute created_at
    #   <p>The timestamp when the memory record was created.</p>
    #   @return [Time]
    # @!attribute score
    #   <p>The relevance score of the memory record when returned as part of a search result. Higher values indicate greater relevance to the search query.</p>
    #   @return [Float]
    # @!attribute timestamp
    #   <p>The timestamp based on which the memory record was ingested. This reflects the time of the source content that the record was derived from, which can differ from <code>createdAt</code>, the time the record itself was written.</p>
    #   @return [Time]
    # @!attribute metadata
    #   <p>A map of metadata key-value pairs associated with a memory record.</p>
    #   @return [Hash<String, Types::MemoryRecordMetadataValue>]
    class MemoryRecordSummary < Struct.new(
      nil,
      :memory_record_id,
      :content,
      :memory_strategy_id,
      :namespaces,
      :created_at,
      :score,
      :timestamp,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input structure to update an existing memory record.</p>
    # @!attribute memory_record_id
    #   <p>The unique ID of the memory record to be updated.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>Time at which the memory record was updated</p>
    #   @return [Time]
    # @!attribute content
    #   <p>The content to be stored within the memory record.</p>
    #   @return [Types::MemoryContent]
    # @!attribute namespaces
    #   <p>The updated list of namespace identifiers for categorizing the memory record.</p>
    #   @return [Array<String>]
    # @!attribute source_namespaces
    #   <p>The namespaces of the source memory record being updated. This value is used for IAM condition key authorization.</p>
    #   @return [Array<String>]
    # @!attribute memory_strategy_id
    #   <p>The updated ID of the memory strategy that defines how this memory record is grouped.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>Metadata key-value pairs to be stored with the memory record.</p>
    #   @return [Hash<String, Types::MemoryRecordMetadataValue>]
    class MemoryRecordUpdateInput < Struct.new(
      nil,
      :memory_record_id,
      :timestamp,
      :content,
      :namespaces,
      :source_namespaces,
      :memory_strategy_id,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata information associated with this message.</p>
    # @!attribute event_id
    #   <p>The identifier of the event associated with this message.</p>
    #   @return [String]
    # @!attribute message_index
    #   <p>The position of this message within that event’s ordered list of messages.</p>
    #   @return [Integer]
    class MessageMetadata < Struct.new(
      nil,
      :event_id,
      :message_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Value associated with the <code>eventMetadata</code> key.</p>
    # @!attribute string_value
    #   <p>Value associated with the <code>eventMetadata</code> key.</p>
    #   @return [String]
    class MetadataValue < Struct.new(
      :string_value,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class StringValue < MetadataValue; end
      class Unknown < MetadataValue; end
    end

    # <p>Arguments for a mouse click action.</p>
    # @!attribute x
    #   <p>The X coordinate on screen where the click occurs.</p>
    #   @return [Integer]
    # @!attribute y
    #   <p>The Y coordinate on screen where the click occurs.</p>
    #   @return [Integer]
    # @!attribute button
    #   <p>The mouse button to use. Defaults to <code>LEFT</code>.</p>
    #   @return [String]
    # @!attribute click_count
    #   <p>The number of clicks to perform. Valid range: 1–10. Defaults to 1.</p>
    #   @return [Integer]
    class MouseClickArguments < Struct.new(
      nil,
      :x,
      :y,
      :button,
      :click_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a mouse click action.</p>
    # @!attribute status
    #   <p>The status of the action execution.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error message. Present only when the action failed.</p>
    #   @return [String]
    class MouseClickResult < Struct.new(
      nil,
      :status,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Arguments for a mouse drag action.</p>
    # @!attribute end_x
    #   <p>The ending X coordinate for the drag.</p>
    #   @return [Integer]
    # @!attribute end_y
    #   <p>The ending Y coordinate for the drag.</p>
    #   @return [Integer]
    # @!attribute start_x
    #   <p>The starting X coordinate for the drag.</p>
    #   @return [Integer]
    # @!attribute start_y
    #   <p>The starting Y coordinate for the drag.</p>
    #   @return [Integer]
    # @!attribute button
    #   <p>The mouse button to use for the drag. Defaults to <code>LEFT</code>.</p>
    #   @return [String]
    class MouseDragArguments < Struct.new(
      nil,
      :end_x,
      :end_y,
      :start_x,
      :start_y,
      :button,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a mouse drag action.</p>
    # @!attribute status
    #   <p>The status of the action execution.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error message. Present only when the action failed.</p>
    #   @return [String]
    class MouseDragResult < Struct.new(
      nil,
      :status,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Arguments for a mouse move action.</p>
    # @!attribute x
    #   <p>The target X coordinate on screen.</p>
    #   @return [Integer]
    # @!attribute y
    #   <p>The target Y coordinate on screen.</p>
    #   @return [Integer]
    class MouseMoveArguments < Struct.new(
      nil,
      :x,
      :y,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a mouse move action.</p>
    # @!attribute status
    #   <p>The status of the action execution.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error message. Present only when the action failed.</p>
    #   @return [String]
    class MouseMoveResult < Struct.new(
      nil,
      :status,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Arguments for a mouse scroll action.</p>
    # @!attribute x
    #   <p>The X coordinate on screen where the scroll occurs.</p>
    #   @return [Integer]
    # @!attribute y
    #   <p>The Y coordinate on screen where the scroll occurs.</p>
    #   @return [Integer]
    # @!attribute delta_x
    #   <p>The horizontal scroll delta. Valid range: -1000 to 1000.</p>
    #   @return [Integer]
    # @!attribute delta_y
    #   <p>The vertical scroll delta. Valid range: -1000 to 1000. Negative values scroll down.</p>
    #   @return [Integer]
    class MouseScrollArguments < Struct.new(
      nil,
      :x,
      :y,
      :delta_x,
      :delta_y,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a mouse scroll action.</p>
    # @!attribute status
    #   <p>The status of the action execution.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error message. Present only when the action failed.</p>
    #   @return [String]
    class MouseScrollResult < Struct.new(
      nil,
      :status,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the payment challenge from a 402 Payment Required response. Forward the raw <code>WWW-Authenticate: Payment</code> header value verbatim. In response, you receive a payment credential that satisfies the challenge. Provide exactly one challenge per request.</p>
    # @!attribute version
    #   <p>The MPP protocol version, for example "1" or "2".</p>
    #   @return [String]
    # @!attribute www_authenticate_headers
    #   <p>The raw <code>WWW-Authenticate: Payment</code> header value from the 402 response, passed verbatim. Provide exactly one entry. The service uses this value to generate the payment credential.</p>
    #   @return [Array<String>]
    # @!attribute buyer_pays_gas_fees
    #   <p>Authorizes the service to sign a payment whose blockchain network (gas) fees are charged to your wallet, on top of the payment amount.</p> <p>The challenge indicates who sponsors the network fees. When the challenge does not sponsor them, the service signs the payment only if this field is <code>true</code>. Otherwise it returns a validation error, so you can decide whether to pay the fees or obtain a challenge that sponsors them.</p> <p>Optional. When omitted or <code>false</code>, you decline to pay network fees. This field has no effect on challenges that already sponsor the fees.</p>
    #   @return [Boolean]
    class MppPaymentInput < Struct.new(
      nil,
      :version,
      :www_authenticate_headers,
      :buyer_pays_gas_fees,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the payment credential, ready to retry the request.</p>
    # @!attribute version
    #   <p>The MPP protocol version, for example "1" or "2".</p>
    #   @return [String]
    # @!attribute selected_payment_id
    #   <p>The id of the challenge that was paid, echoed from the input challenge so you can correlate the result without decoding the credential.</p>
    #   @return [String]
    # @!attribute payment_credential
    #   <p>Ready-to-send value for the <code>Authorization</code> header, in the form "Payment &lt;base64url-token&gt;". Attach this header and retry the original request. To inspect the full credential, base64url-decode the token.</p>
    #   @return [String]
    class MppPaymentOutput < Struct.new(
      nil,
      :version,
      :selected_payment_id,
      :payment_credential,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>OAuth2 authentication information for third-party providers.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute sub
    #   <p>The subject (sub) claim from the OAuth2 provider. Uniquely identifies the user at the provider.</p>
    #   @return [String]
    # @!attribute email_address
    #   <p>The email address from the OAuth2 provider.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The user's name from the OAuth2 provider.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username from the OAuth2 provider.</p>
    #   @return [String]
    class OAuth2Authentication < Struct.new(
      nil,
      :sub,
      :email_address,
      :name,
      :username,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for an OAuth 2.0 credential provider used to authenticate tool calls.</p>
    # @!attribute provider_arn
    #   <p>The ARN of the OAuth 2.0 credential provider in AgentCore Identity.</p>
    #   @return [String]
    # @!attribute scopes
    #   <p>The OAuth 2.0 scopes to request when obtaining an access token.</p>
    #   @return [Array<String>]
    # @!attribute custom_parameters
    #   <p>Additional custom parameters to include in the OAuth 2.0 token request.</p>
    #   @return [Hash<String, String>]
    # @!attribute grant_type
    #   <p>The OAuth 2.0 grant type to use for authentication.</p>
    #   @return [String]
    # @!attribute default_return_url
    #   <p>The default return URL for the OAuth 2.0 authorization flow.</p>
    #   @return [String]
    class OAuthCredentialProvider < Struct.new(
      nil,
      :provider_arn,
      :scopes,
      :custom_parameters,
      :grant_type,
      :default_return_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:grant_type] = 'CLIENT_CREDENTIALS' unless options.key?(:grant_type)
        super
      end
    end

    # <p>A reference to an existing online evaluation configuration to use as the data source for batch evaluation.</p>
    # @!attribute online_evaluation_config_arn
    #   <p>The Amazon Resource Name (ARN) of the online evaluation configuration to use as the session source.</p>
    #   @return [String]
    # @!attribute time_range
    #   <p>Optional session filter configuration to narrow down which sessions from the online evaluation configuration to include.</p>
    #   @return [Types::SessionFilterConfig]
    class OnlineEvaluationConfigSource < Struct.new(
      nil,
      :online_evaluation_config_arn,
      :time_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration for reusing agent traces from an online evaluation configuration for recommendation analysis. Because online evaluation is a continuous stream, a time range specifies which evaluated sessions the recommendation includes.</p>
    # @!attribute online_evaluation_config_arn
    #   <p>The ARN of the online evaluation configuration to reuse sessions from.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time of the time range. Only sessions evaluated at or after this timestamp are included.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the time range. Only sessions evaluated before this timestamp are included.</p>
    #   @return [Time]
    class OnlineEvaluationTraceConfig < Struct.new(
      nil,
      :online_evaluation_config_arn,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output destination configuration.</p>
    # @!attribute cloud_watch_config
    #   <p>The CloudWatch Logs configuration for writing evaluation results.</p>
    #   @return [Types::CloudWatchOutputConfig]
    class OutputConfig < Struct.new(
      :cloud_watch_config,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CloudWatchConfig < OutputConfig; end
      class Unknown < OutputConfig; end
    end

    # <p>Contains the payload content for an event.</p>
    # @!attribute conversational
    #   <p>The conversational content of the payload.</p>
    #   @return [Types::Conversational]
    # @!attribute blob
    #   <p>The binary content of the payload.</p>
    #   @return [JSON]
    # @!attribute json
    #   <p>The JSON content of the payload. Use this type to store non-conversational, JSON-formatted data, such as behavioral events, activity logs, or system events.</p>
    #   @return [Types::MemoryJsonData]
    class PayloadType < Struct.new(
      :conversational,
      :blob,
      :json,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Conversational < PayloadType; end
      class Blob < PayloadType; end
      class Json < PayloadType; end
      class Unknown < PayloadType; end
    end

    # <p>The payment input details, which vary by payment type.</p>
    # @!attribute crypto_x402
    #   <p>Input for a crypto X402 payment.</p>
    #   @return [Types::CryptoX402PaymentInput]
    # @!attribute mpp
    #   <p>Contains the payment challenge from a 402 Payment Required response. Forward the raw <code>WWW-Authenticate: Payment</code> header value verbatim. In response, you receive a payment credential that satisfies the challenge. Provide exactly one challenge per request.</p>
    #   @return [Types::MppPaymentInput]
    class PaymentInput < Struct.new(
      :crypto_x402,
      :mpp,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CryptoX402 < PaymentInput; end
      class Mpp < PaymentInput; end
      class Unknown < PaymentInput; end
    end

    # <p>Represents a payment instrument.</p>
    # @!attribute payment_instrument_id
    #   <p>The unique identifier for this payment instrument.</p>
    #   @return [String]
    # @!attribute payment_manager_arn
    #   <p>The ARN of the payment manager that owns this payment instrument.</p>
    #   @return [String]
    # @!attribute payment_connector_id
    #   <p>The ID of the payment connector associated with this instrument.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user ID associated with this payment instrument.</p>
    #   @return [String]
    # @!attribute payment_instrument_type
    #   <p>The type of payment instrument (e.g., EMBEDDED_CRYPTO_WALLET).</p>
    #   @return [String]
    # @!attribute payment_instrument_details
    #   <p>The details specific to the payment instrument type.</p>
    #   @return [Types::PaymentInstrumentDetails]
    # @!attribute created_at
    #   <p>The timestamp when this payment instrument was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of this payment instrument.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when this payment instrument was last updated.</p>
    #   @return [Time]
    class PaymentInstrument < Struct.new(
      nil,
      :payment_instrument_id,
      :payment_manager_arn,
      :payment_connector_id,
      :user_id,
      :payment_instrument_type,
      :payment_instrument_details,
      :created_at,
      :status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details specific to the instrument type.</p>
    # @!attribute embedded_crypto_wallet
    #   <p>Embedded crypto wallet managed directly by end user.</p>
    #   @return [Types::EmbeddedCryptoWallet]
    class PaymentInstrumentDetails < Struct.new(
      :embedded_crypto_wallet,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class EmbeddedCryptoWallet < PaymentInstrumentDetails; end
      class Unknown < PaymentInstrumentDetails; end
    end

    # <p>Summary of a payment instrument for list operations.</p>
    # @!attribute payment_instrument_id
    #   <p>The unique identifier for this payment instrument.</p>
    #   @return [String]
    # @!attribute payment_manager_arn
    #   <p>The ARN of the payment manager that owns this payment instrument.</p>
    #   @return [String]
    # @!attribute payment_connector_id
    #   <p>The ID of the payment connector associated with this instrument.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user ID associated with this payment instrument.</p>
    #   @return [String]
    # @!attribute payment_instrument_type
    #   <p>The type of payment instrument (e.g., EMBEDDED_CRYPTO_WALLET).</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of this payment instrument.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when this payment instrument was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when this payment instrument was last updated.</p>
    #   @return [Time]
    class PaymentInstrumentSummary < Struct.new(
      nil,
      :payment_instrument_id,
      :payment_manager_arn,
      :payment_connector_id,
      :user_id,
      :payment_instrument_type,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The payment output details, which vary by payment type.</p>
    # @!attribute crypto_x402
    #   <p>Output from a crypto X402 payment.</p>
    #   @return [Types::CryptoX402PaymentOutput]
    # @!attribute mpp
    #   <p>Contains the payment credential, ready to retry the request.</p>
    #   @return [Types::MppPaymentOutput]
    class PaymentOutput < Struct.new(
      :crypto_x402,
      :mpp,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CryptoX402 < PaymentOutput; end
      class Mpp < PaymentOutput; end
      class Unknown < PaymentOutput; end
    end

    # <p>A payment session for managing payment transactions.</p>
    # @!attribute payment_session_id
    #   <p>The unique identifier of the payment session.</p>
    #   @return [String]
    # @!attribute payment_manager_arn
    #   <p>The ARN of the payment manager that owns this session.</p>
    #   @return [String]
    # @!attribute limits
    #   <p>The spending limits for the payment session.</p>
    #   @return [Types::SessionLimits]
    # @!attribute user_id
    #   <p>The user ID associated with this session.</p>
    #   @return [String]
    # @!attribute expiry_time_in_minutes
    #   <p>The session expiry time in minutes.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The timestamp when the session was created.</p>
    #   @return [Time]
    # @!attribute available_limits
    #   <p>The current available spending limits.</p>
    #   @return [Types::AvailableLimits]
    # @!attribute updated_at
    #   <p>The timestamp when the session was last updated.</p>
    #   @return [Time]
    class PaymentSession < Struct.new(
      nil,
      :payment_session_id,
      :payment_manager_arn,
      :limits,
      :user_id,
      :expiry_time_in_minutes,
      :created_at,
      :available_limits,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a payment session.</p>
    # @!attribute payment_session_id
    #   <p>The unique identifier of the payment session.</p>
    #   @return [String]
    # @!attribute payment_manager_arn
    #   <p>The ARN of the payment manager that owns this session.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user ID associated with this session.</p>
    #   @return [String]
    # @!attribute expiry_time_in_minutes
    #   <p>The session expiry time in minutes.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The timestamp when the session was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the session was last updated.</p>
    #   @return [Time]
    class PaymentSessionSummary < Struct.new(
      nil,
      :payment_session_id,
      :payment_manager_arn,
      :user_id,
      :expiry_time_in_minutes,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Vendor-specific token request configuration.</p>
    # @!attribute coinbase_cdp_token_request
    #   <p>The Coinbase CDP token request.</p>
    #   @return [Types::CoinbaseCdpTokenRequestInput]
    # @!attribute stripe_privy_token_request
    #   <p>The Stripe Privy token request.</p>
    #   @return [Types::StripePrivyTokenRequestInput]
    class PaymentTokenRequestInput < Struct.new(
      :coinbase_cdp_token_request,
      :stripe_privy_token_request,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CoinbaseCdpTokenRequest < PaymentTokenRequestInput; end
      class StripePrivyTokenRequest < PaymentTokenRequestInput; end
      class Unknown < PaymentTokenRequestInput; end
    end

    # <p>Vendor-specific token response configuration.</p>
    # @!attribute coinbase_cdp_token_response
    #   <p>The Coinbase CDP token response.</p>
    #   @return [Types::CoinbaseCdpTokenResponseOutput]
    # @!attribute stripe_privy_token_response
    #   <p>The Stripe Privy token response.</p>
    #   @return [Types::StripePrivyTokenResponseOutput]
    class PaymentTokenResponseOutput < Struct.new(
      :coinbase_cdp_token_response,
      :stripe_privy_token_response,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CoinbaseCdpTokenResponse < PaymentTokenResponseOutput; end
      class StripePrivyTokenResponse < PaymentTokenResponseOutput; end
      class Unknown < PaymentTokenResponseOutput; end
    end

    # <p>An online evaluation configuration associated with a specific A/B test variant.</p>
    # @!attribute name
    #   <p>The name of the variant this evaluation configuration applies to.</p>
    #   @return [String]
    # @!attribute online_evaluation_config_arn
    #   <p>The Amazon Resource Name (ARN) of the online evaluation configuration for this variant.</p>
    #   @return [String]
    class PerVariantOnlineEvaluationConfig < Struct.new(
      nil,
      :name,
      :online_evaluation_config_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for processing a payment.</p>
    # @!attribute user_id
    #   <p>The user ID associated with this payment.</p>
    #   @return [String]
    # @!attribute agent_name
    #   <p>The agent name associated with this request, used for observability.</p>
    #   @return [String]
    # @!attribute payment_manager_arn
    #   <p>The ARN of the payment manager.</p>
    #   @return [String]
    # @!attribute payment_session_id
    #   <p>The ID of the payment session.</p>
    #   @return [String]
    # @!attribute payment_instrument_id
    #   <p>The ID of the payment instrument to use.</p>
    #   @return [String]
    # @!attribute payment_type
    #   <p>The type of payment to process.</p>
    #   @return [String]
    # @!attribute payment_input
    #   <p>The payment input details specific to the payment type.</p>
    #   @return [Types::PaymentInput]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    class ProcessPaymentRequest < Struct.new(
      nil,
      :user_id,
      :agent_name,
      :payment_manager_arn,
      :payment_session_id,
      :payment_instrument_id,
      :payment_type,
      :payment_input,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for processing a payment.</p>
    # @!attribute process_payment_id
    #   <p>The unique identifier of the processed payment.</p>
    #   @return [String]
    # @!attribute payment_manager_arn
    #   <p>The ARN of the payment manager.</p>
    #   @return [String]
    # @!attribute payment_session_id
    #   <p>The ID of the payment session used.</p>
    #   @return [String]
    # @!attribute payment_instrument_id
    #   <p>The ID of the payment instrument used.</p>
    #   @return [String]
    # @!attribute payment_type
    #   <p>The type of payment processed.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the payment.</p>
    #   @return [String]
    # @!attribute payment_output
    #   <p>The payment output details specific to the payment type.</p>
    #   @return [Types::PaymentOutput]
    # @!attribute created_at
    #   <p>The timestamp when the payment was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the payment was last updated.</p>
    #   @return [Time]
    class ProcessPaymentResponse < Struct.new(
      nil,
      :process_payment_id,
      :payment_manager_arn,
      :payment_session_id,
      :payment_instrument_id,
      :payment_type,
      :status,
      :payment_output,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Union type representing different proxy configurations. Currently supports external customer-managed proxies.</p>
    # @!attribute external_proxy
    #   <p>Configuration for an external customer-managed proxy server.</p>
    #   @return [Types::ExternalProxy]
    class Proxy < Struct.new(
      :external_proxy,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ExternalProxy < Proxy; end
      class Unknown < Proxy; end
    end

    # <p>Configuration for domains that should bypass all proxies and connect directly to the internet. These bypass rules take precedence over all proxy routing rules.</p>
    # @!attribute domain_patterns
    #   <p>Array of domain patterns that should bypass the proxy. Supports <code>.amazonaws.com</code> for subdomain matching or <code>amazonaws.com</code> for exact domain matching. Requests to these domains connect directly without using any proxy. Maximum 253 characters per pattern.</p>
    #   @return [Array<String>]
    class ProxyBypass < Struct.new(
      nil,
      :domain_patterns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for routing browser traffic through customer-managed proxy servers. Supports 1-5 proxy servers for domain-based routing and proxy bypass rules.</p>
    # @!attribute proxies
    #   <p>An array of 1-5 proxy server configurations for domain-based routing. Each proxy can specify which domains it handles via <code>domainPatterns</code>, enabling flexible routing of different traffic through different proxies based on destination domain.</p>
    #   @return [Array<Types::Proxy>]
    # @!attribute bypass
    #   <p>Optional configuration for domains that should bypass all proxies and connect directly to their destination, like the internet. Takes precedence over all proxy routing rules.</p>
    #   @return [Types::ProxyBypass]
    class ProxyConfiguration < Struct.new(
      nil,
      :proxies,
      :bypass,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Union type representing different proxy authentication methods. Currently supports HTTP Basic Authentication (username and password).</p>
    # @!attribute basic_auth
    #   <p>HTTP Basic Authentication credentials (username and password) stored in Amazon Web Services Secrets Manager.</p>
    #   @return [Types::BasicAuth]
    class ProxyCredentials < Struct.new(
      :basic_auth,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class BasicAuth < ProxyCredentials; end
      class Unknown < ProxyCredentials; end
    end

    # <p>The configuration for a recommendation, varying by recommendation type.</p>
    # @!attribute system_prompt_recommendation_config
    #   <p>The configuration for a system prompt recommendation.</p>
    #   @return [Types::SystemPromptRecommendationConfig]
    # @!attribute tool_description_recommendation_config
    #   <p>The configuration for a tool description recommendation.</p>
    #   @return [Types::ToolDescriptionRecommendationConfig]
    class RecommendationConfig < Struct.new(
      :system_prompt_recommendation_config,
      :tool_description_recommendation_config,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SystemPromptRecommendationConfig < RecommendationConfig; end
      class ToolDescriptionRecommendationConfig < RecommendationConfig; end
      class Unknown < RecommendationConfig; end
    end

    # <p>The evaluation configuration for assessing recommendation quality.</p>
    # @!attribute evaluators
    #   <p>The list of evaluators to use for assessing recommendation quality.</p>
    #   @return [Array<Types::RecommendationEvaluatorReference>]
    class RecommendationEvaluationConfig < Struct.new(
      nil,
      :evaluators,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reference to an evaluator used for recommendation assessment.</p>
    # @!attribute evaluator_arn
    #   <p>The Amazon Resource Name (ARN) of the evaluator.</p>
    #   @return [String]
    class RecommendationEvaluatorReference < Struct.new(
      nil,
      :evaluator_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a recommendation, containing the optimized output.</p>
    # @!attribute system_prompt_recommendation_result
    #   <p>The result of a system prompt recommendation.</p>
    #   @return [Types::SystemPromptRecommendationResult]
    # @!attribute tool_description_recommendation_result
    #   <p>The result of a tool description recommendation.</p>
    #   @return [Types::ToolDescriptionRecommendationResult]
    class RecommendationResult < Struct.new(
      :system_prompt_recommendation_result,
      :tool_description_recommendation_result,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SystemPromptRecommendationResult < RecommendationResult; end
      class ToolDescriptionRecommendationResult < RecommendationResult; end
      class Unknown < RecommendationResult; end
    end

    # <p>A configuration bundle reference in a recommendation result.</p>
    # @!attribute bundle_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration bundle.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version identifier of the configuration bundle containing the recommendation.</p>
    #   @return [String]
    class RecommendationResultConfigurationBundle < Struct.new(
      nil,
      :bundle_arn,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a recommendation.</p>
    # @!attribute recommendation_id
    #   <p>The unique identifier of the recommendation.</p>
    #   @return [String]
    # @!attribute recommendation_arn
    #   <p>The Amazon Resource Name (ARN) of the recommendation.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the recommendation.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the recommendation.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of recommendation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the recommendation.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the recommendation was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the recommendation was last updated.</p>
    #   @return [Time]
    class RecommendationSummary < Struct.new(
      nil,
      :recommendation_id,
      :recommendation_arn,
      :name,
      :description,
      :type,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the record expiry (long-term memory time-to-live) applied to the records in a batch request. Provide exactly one of <code>recordExpiryDurationDays</code> or <code>action</code>. Set <code>recordExpiryDurationDays</code> to configure or update the expiry, or set <code>action</code> to <code>REMOVE</code> to remove a previously configured expiry.</p>
    # @!attribute record_expiry_duration_days
    #   <p>The duration, in days, after which the records in this request expire. The minimum is 31 days.</p>
    #   @return [Integer]
    # @!attribute action
    #   <p>The action to apply to the existing record expiry configuration. Set to <code>REMOVE</code> to remove a previously configured expiry so that the records no longer expire. This value does not apply when creating records.</p>
    #   @return [String]
    class RecordExpirySpecification < Struct.new(
      :record_expiry_duration_days,
      :action,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class RecordExpiryDurationDays < RecordExpirySpecification; end
      class Action < RecordExpirySpecification; end
      class Unknown < RecordExpirySpecification; end
    end

    # <p> Summary information about a registry record.</p>
    # @!attribute registry_arn
    #   <p> The Amazon Resource Name (ARN) of the registry that this record belongs to.</p>
    #   @return [String]
    # @!attribute record_arn
    #   <p> The Amazon Resource Name (ARN) of the registry record.</p>
    #   @return [String]
    # @!attribute record_id
    #   <p> The unique identifier of the registry record.</p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the registry record.</p>
    #   @return [String]
    # @!attribute description
    #   <p> A description of the registry record.</p>
    #   @return [String]
    # @!attribute descriptor_type
    #   <p> The type of descriptor associated with this registry record.</p>
    #   @return [String]
    # @!attribute descriptors
    #   <p> The descriptor configurations for this registry record.</p>
    #   @return [Types::Descriptors]
    # @!attribute version
    #   <p> The version of the registry record.</p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the registry record.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The date and time when the registry record was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p> The date and time when the registry record was last updated.</p>
    #   @return [Time]
    class RegistryRecordSummary < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about resource content.</p>
    # @!attribute type
    #   <p>The type of resource content.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>The URI of the resource content.</p>
    #   @return [String]
    # @!attribute mime_type
    #   <p>The MIME type of the resource content.</p>
    #   @return [String]
    # @!attribute text
    #   <p>The text resource content.</p>
    #   @return [String]
    # @!attribute blob
    #   <p>The binary resource content.</p>
    #   @return [String]
    class ResourceContent < Struct.new(
      nil,
      :type,
      :uri,
      :mime_type,
      :text,
      :blob,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The location of the browser extension.</p>
    # @!attribute s3
    #   <p>The Amazon S3 location of the resource. Use this when the resource is stored in an Amazon S3 bucket.</p>
    #   @return [Types::S3Location]
    class ResourceLocation < Struct.new(
      :s3,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3 < ResourceLocation; end
      class Unknown < ResourceLocation; end
    end

    # <p>The exception that occurs when the specified resource does not exist. This can happen when using an invalid identifier or when trying to access a resource that has been deleted.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure representing a response chunk that contains exactly one of the possible event types: <code>contentStart</code>, <code>contentDelta</code>, or <code>contentStop</code>.</p>
    # @!attribute content_start
    #   <p>An event indicating the start of content streaming from the command execution. This is the first chunk received.</p>
    #   @return [Types::ContentStartEvent]
    # @!attribute content_delta
    #   <p>An event containing incremental output (stdout or stderr) from the command execution. These are the middle chunks.</p>
    #   @return [Types::ContentDeltaEvent]
    # @!attribute content_stop
    #   <p>An event indicating the completion of the command execution, including the exit code and final status. This is the last chunk received.</p>
    #   @return [Types::ContentStopEvent]
    class ResponseChunk < Struct.new(
      nil,
      :content_start,
      :content_delta,
      :content_stop,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The identifier of the AgentCore Memory resource from which to retrieve memory records.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace prefix to filter memory records by. Searches for memory records in namespaces that start with the provided prefix. Either <code>namespace</code> or <code>namespacePath</code> is required.</p>
    #   @return [String]
    # @!attribute namespace_path
    #   <p>Use namespacePath for hierarchical retrievals. Return all memory records where namespace falls under the same parent hierarchy. Either <code>namespace</code> or <code>namespacePath</code> is required.</p>
    #   @return [String]
    # @!attribute search_criteria
    #   <p>The search criteria to use for finding relevant memory records. This includes the search query, memory strategy ID, and other search parameters.</p>
    #   @return [Types::SearchCriteria]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 20.</p>
    #   @return [Integer]
    class RetrieveMemoryRecordsInput < Struct.new(
      nil,
      :memory_id,
      :namespace,
      :namespace_path,
      :search_criteria,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_record_summaries
    #   <p>The list of memory record summaries that match the search criteria, ordered by relevance.</p>
    #   @return [Array<Types::MemoryRecordSummary>]
    # @!attribute next_token
    #   <p>The token to use in a subsequent request to get the next set of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    class RetrieveMemoryRecordsOutput < Struct.new(
      nil,
      :memory_record_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The exception that occurs when there is a retryable conflict performing an operation. This is a temporary condition that may resolve itself with retries. We recommend implementing exponential backoff retry logic in your application.</p>
    # @!attribute message
    #   @return [String]
    class RetryableConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Right expression of the <code>eventMetadata</code>filter.</p>
    # @!attribute metadata_value
    #   <p>Value associated with the key in <code>eventMetadata</code>.</p>
    #   @return [Types::MetadataValue]
    class RightExpression < Struct.new(
      :metadata_value,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class MetadataValue < RightExpression; end
      class Unknown < RightExpression; end
    end

    # <p>A cluster of similar root causes identified within a failure subcategory.</p>
    # @!attribute cluster_id
    #   <p>The unique identifier of the root cause cluster.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The name of the root cause cluster.</p>
    #   @return [String]
    # @!attribute root_cause
    #   <p>The root cause explanation for this cluster of failures.</p>
    #   @return [String]
    # @!attribute recommendation
    #   <p>The recommended fix for this root cause.</p>
    #   @return [String]
    # @!attribute affected_session_count
    #   <p>The number of sessions affected by this root cause.</p>
    #   @return [Integer]
    # @!attribute affected_sessions
    #   <p>The list of sessions affected by this root cause.</p>
    #   @return [Array<Types::AffectedSession>]
    class RootCauseCluster < Struct.new(
      nil,
      :cluster_id,
      :name,
      :root_cause,
      :recommendation,
      :affected_session_count,
      :affected_sessions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The exception that occurs when there is an error in the runtime client. This can happen due to network issues, invalid configuration, or other client-side problems. Check the error message for specific details about the error.</p>
    # @!attribute message
    #   @return [String]
    class RuntimeClientError < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for mounting an Amazon Simple Storage Service (Amazon S3) Files access point that you own into a session.</p>
    # @!attribute access_point_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Simple Storage Service (Amazon S3) Files access point to mount.</p>
    #   @return [String]
    # @!attribute mount_path
    #   <p>The absolute path within the session at which the access point is mounted, for example <code>/mnt/s3data</code>. Each mount path must be unique across all file system configurations in the session.</p>
    #   @return [String]
    # @!attribute file_system_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Simple Storage Service (Amazon S3) Files file system that owns the access point.</p>
    #   @return [String]
    class S3FilesConfiguration < Struct.new(
      nil,
      :access_point_arn,
      :mount_path,
      :file_system_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon S3 location configuration of a resource.</p>
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket where the resource is stored.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The name of the Amazon S3 prefix/key where the resource is stored.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The name of the Amazon S3 version ID where the resource is stored (Optional).</p>
    #   @return [String]
    class S3Location < Struct.new(
      nil,
      :bucket,
      :prefix,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute trace_id
    #   <p>The trace identifier for request tracking.</p>
    #   @return [String]
    # @!attribute trace_parent
    #   <p>The parent trace information for distributed tracing.</p>
    #   @return [String]
    # @!attribute profile_identifier
    #   <p>The unique identifier for the browser profile. This identifier is used to reference the profile when starting new browser sessions. The identifier must follow the pattern of an alphanumeric name (up to 48 characters) followed by a hyphen and a 10-character alphanumeric suffix.</p>
    #   @return [String]
    # @!attribute browser_identifier
    #   <p>The unique identifier of the browser associated with the session from which to save the profile.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the browser session from which to save the profile. The session must be active when saving the profile.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock AgentCore ignores the request, but does not return an error.</p>
    #   @return [String]
    class SaveBrowserSessionProfileRequest < Struct.new(
      nil,
      :trace_id,
      :trace_parent,
      :profile_identifier,
      :browser_identifier,
      :session_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_identifier
    #   <p>The unique identifier of the saved browser profile.</p>
    #   @return [String]
    # @!attribute browser_identifier
    #   <p>The unique identifier of the browser associated with the session from which the profile was saved.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the browser session from which the profile was saved.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The timestamp when the browser profile was last updated. This value is in ISO 8601 format.</p>
    #   @return [Time]
    class SaveBrowserSessionProfileResponse < Struct.new(
      nil,
      :profile_identifier,
      :browser_identifier,
      :session_id,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Arguments for a screenshot action.</p>
    # @!attribute format
    #   <p>The image format for the screenshot. Defaults to <code>PNG</code>.</p>
    #   @return [String]
    class ScreenshotArguments < Struct.new(
      nil,
      :format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a screenshot action.</p>
    # @!attribute status
    #   <p>The status of the action execution.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error message. Present only when the action failed.</p>
    #   @return [String]
    # @!attribute data
    #   <p>The base64-encoded image data. Present only when the action succeeded.</p>
    #   @return [String]
    class ScreenshotResult < Struct.new(
      nil,
      :status,
      :error,
      :data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains search criteria for retrieving memory records.</p>
    # @!attribute search_query
    #   <p>The search query to use for finding relevant memory records.</p>
    #   @return [String]
    # @!attribute memory_strategy_id
    #   <p>The memory strategy identifier to filter memory records by.</p>
    #   @return [String]
    # @!attribute top_k
    #   <p>The maximum number of top-scoring memory records to return. This value is used for semantic search ranking.</p>
    #   @return [Integer]
    # @!attribute metadata_filters
    #   <p>Filters to apply to metadata associated with a memory.</p>
    #   @return [Array<Types::MemoryMetadataFilterExpression>]
    class SearchCriteria < Struct.new(
      nil,
      :search_query,
      :memory_strategy_id,
      :top_k,
      :metadata_filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:top_k] = 10 unless options.key?(:top_k)
        super
      end
    end

    # @!attribute search_query
    #   <p> The search query to find matching registry records.</p>
    #   @return [String]
    # @!attribute registry_ids
    #   <p> The list of registry identifiers to search within. Currently, you can specify exactly one registry identifier. You can provide either the full Amazon Web Services Resource Name (ARN) or the 12-character alphanumeric registry ID.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p> The maximum number of records to return in a single call. Valid values are 1 through 20. The default value is 10.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p> A metadata filter expression to narrow search results. Uses structured JSON operators including field-level operators (<code>$eq</code>, <code>$ne</code>, <code>$in</code>) and logical operators (<code>$and</code>, <code>$or</code>) on filterable fields (<code>name</code>, <code>descriptorType</code>, <code>version</code>). For example, to filter by descriptor type: <code>{"descriptorType": {"$eq": "MCP"}}</code>. To combine filters: <code>{"$and": [{"descriptorType": {"$eq": "MCP"}}, {"name": {"$eq": "my-tool"}}]}</code>.</p>
    #   @return [JSON]
    class SearchRegistryRecordsRequest < Struct.new(
      nil,
      :search_query,
      :registry_ids,
      :max_results,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_records
    #   <p> The list of registry records that match the search query, ordered by relevance.</p>
    #   @return [Array<Types::RegistryRecordSummary>]
    class SearchRegistryRecordsResponse < Struct.new(
      nil,
      :registry_records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Web Services Secrets Manager location configuration.</p>
    # @!attribute secret_arn
    #   <p>The ARN of the Amazon Web Services Secrets Manager secret containing the certificate.</p>
    #   @return [String]
    class SecretsManagerLocation < Struct.new(
      nil,
      :secret_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The MCP server definition with a schema version and inline content. The <code>schemaVersion</code> identifies the version of the MCP server configuration schema.</p>
    # @!attribute schema_version
    #   <p> The schema version of the MCP server configuration. The schema version identifies the format of the server definition content.</p>
    #   @return [String]
    # @!attribute inline_content
    #   <p> The inline content of the server definition.</p>
    #   @return [String]
    class ServerDefinition < Struct.new(
      nil,
      :schema_version,
      :inline_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service encountered an internal error. Try your request again later.</p>
    # @!attribute message
    #   @return [String]
    class ServiceException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The exception that occurs when the request would cause a service quota to be exceeded. Review your service quotas and either reduce your request rate or request a quota increase.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains filter criteria for listing sessions.</p>
    # @!attribute event_filter
    #   <p>The event filter condition to apply. Use this to filter sessions based on event presence.</p>
    #   @return [String]
    class SessionFilter < Struct.new(
      nil,
      :event_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A time range filter for selecting sessions. Specifies the start and end times to narrow down which sessions are included.</p>
    # @!attribute start_time
    #   <p>The start time of the time range. Only sessions with activity at or after this timestamp are included.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the time range. Only sessions with activity before this timestamp are included.</p>
    #   @return [Time]
    class SessionFilterConfig < Struct.new(
      nil,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The spending limits configuration for a payment session.</p>
    # @!attribute max_spend_amount
    #   <p>The maximum amount that can be spent in the session.</p>
    #   @return [Types::Amount]
    class SessionLimits < Struct.new(
      nil,
      :max_spend_amount,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a specific session in a batch evaluation, including ground truth data and test scenario identifiers.</p>
    # @!attribute session_id
    #   <p>The unique identifier of the session this metadata applies to.</p>
    #   @return [String]
    # @!attribute test_scenario_id
    #   <p>An optional test scenario identifier for categorizing and tracking evaluation results.</p>
    #   @return [String]
    # @!attribute ground_truth
    #   <p>The ground truth data for this session, including expected responses and assertions.</p>
    #   @return [Types::GroundTruthSource]
    # @!attribute metadata
    #   <p>Additional key-value metadata associated with this session.</p>
    #   @return [Hash<String, String>]
    class SessionMetadataShape < Struct.new(
      nil,
      :session_id,
      :test_scenario_id,
      :ground_truth,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a session in an AgentCore Memory resource.</p>
    # @!attribute session_id
    #   <p>The unique identifier of the session.</p>
    #   @return [String]
    # @!attribute actor_id
    #   <p>The identifier of the actor associated with the session.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the session was created.</p>
    #   @return [Time]
    class SessionSummary < Struct.new(
      nil,
      :session_id,
      :actor_id,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A pairing of a session with the specific trace IDs to evaluate within that session. Use this to evaluate individual traces rather than an entire session.</p>
    # @!attribute session_id
    #   <p>The unique identifier of the session that contains the traces to evaluate.</p>
    #   @return [String]
    # @!attribute trace_ids
    #   <p>The list of trace IDs within the session to evaluate.</p>
    #   @return [Array<String>]
    class SessionTraceIds < Struct.new(
      nil,
      :session_id,
      :trace_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The structured skill definition with a schema version and inline content.</p>
    # @!attribute schema_version
    #   <p> The schema version of the skill definition. If you don't specify a version, the service detects it automatically.</p>
    #   @return [String]
    # @!attribute inline_content
    #   <p> The inline content of the skill definition.</p>
    #   @return [String]
    class SkillDefinition < Struct.new(
      nil,
      :schema_version,
      :inline_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The skill markdown definition for agent skills descriptors.</p>
    # @!attribute inline_content
    #   <p> The inline markdown content of the skill definition.</p>
    #   @return [String]
    class SkillMdDefinition < Struct.new(
      nil,
      :inline_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The contextual information that uniquely identifies a span within the distributed tracing system. Contains session, trace, and span identifiers used to correlate evaluation results with specific agent execution points. </p>
    # @!attribute session_id
    #   <p> The unique identifier of the session containing this span. Sessions represent complete conversation flows and are detected using configurable <code>SessionTimeoutMinutes</code> (default 15 minutes). </p>
    #   @return [String]
    # @!attribute trace_id
    #   <p> The unique identifier of the trace containing this span. Traces represent individual request-response interactions within a session and group related spans together. </p>
    #   @return [String]
    # @!attribute span_id
    #   <p> The unique identifier of the specific span being referenced. Spans represent individual operations like tool calls, model invocations, or other discrete actions within the agent's execution. </p>
    #   @return [String]
    class SpanContext < Struct.new(
      nil,
      :session_id,
      :trace_id,
      :span_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_evaluation_name
    #   <p>The name of the batch evaluation. Must be unique within your account.</p>
    #   @return [String]
    # @!attribute evaluators
    #   <p>The list of evaluators to apply during the batch evaluation. Can include both built-in evaluators and custom evaluators. Maximum of 10 evaluators.</p>
    #   @return [Array<Types::Evaluator>]
    # @!attribute insights
    #   <p>The list of insight analyses to run against sessions during the batch evaluation. Maximum of 10 insights.</p>
    #   @return [Array<Types::Insight>]
    # @!attribute data_source_config
    #   <p>The data source configuration that specifies where to pull agent session traces from for evaluation.</p>
    #   @return [Types::DataSourceConfig]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, the service ignores the request, but does not return an error.</p>
    #   @return [String]
    # @!attribute evaluation_metadata
    #   <p>Optional metadata for the evaluation, including session-specific ground truth data and test scenario identifiers.</p>
    #   @return [Types::EvaluationMetadata]
    # @!attribute tags
    #   <p>A map of tag keys and values to associate with the batch evaluation.</p>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key used to encrypt evaluation data. If provided, customer data is encrypted at rest with the specified key.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the batch evaluation.</p>
    #   @return [String]
    # @!attribute output_config
    #   <p>Output destination configuration.</p>
    #   @return [Types::OutputConfig]
    class StartBatchEvaluationRequest < Struct.new(
      nil,
      :batch_evaluation_name,
      :evaluators,
      :insights,
      :data_source_config,
      :client_token,
      :evaluation_metadata,
      :tags,
      :kms_key_arn,
      :description,
      :output_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_evaluation_id
    #   <p>The unique identifier of the created batch evaluation.</p>
    #   @return [String]
    # @!attribute batch_evaluation_arn
    #   <p>The Amazon Resource Name (ARN) of the created batch evaluation.</p>
    #   @return [String]
    # @!attribute batch_evaluation_name
    #   <p>The name of the batch evaluation.</p>
    #   @return [String]
    # @!attribute evaluators
    #   <p>The list of evaluators applied during the batch evaluation.</p>
    #   @return [Array<Types::Evaluator>]
    # @!attribute insights
    #   <p>The list of insight analyses applied during the batch evaluation.</p>
    #   @return [Array<Types::Insight>]
    # @!attribute status
    #   <p>The status of the batch evaluation.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the batch evaluation was created.</p>
    #   @return [Time]
    # @!attribute output_config
    #   <p>The output configuration specifying where evaluation results are written.</p>
    #   @return [Types::OutputConfig]
    # @!attribute tags
    #   <p>The tags associated with the batch evaluation.</p>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key used to encrypt evaluation data.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the batch evaluation.</p>
    #   @return [String]
    class StartBatchEvaluationResponse < Struct.new(
      nil,
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
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute trace_id
    #   <p>The trace identifier for request tracking.</p>
    #   @return [String]
    # @!attribute trace_parent
    #   <p>The parent trace information for distributed tracing.</p>
    #   @return [String]
    # @!attribute browser_identifier
    #   <p>The unique identifier of the browser to use for this session. This identifier specifies which browser environment to initialize for the session.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the browser session. This name helps you identify and manage the session. The name does not need to be unique.</p>
    #   @return [String]
    # @!attribute session_timeout_seconds
    #   <p>The duration in seconds (time-to-live) after which the session automatically terminates, regardless of ongoing activity. Defaults to 3600 seconds (1 hour). Recommended minimum: 60 seconds. Maximum allowed: 28,800 seconds (8 hours).</p>
    #   @return [Integer]
    # @!attribute view_port
    #   <p>The dimensions of the browser viewport for this session. This determines the visible area of the web content and affects how web pages are rendered. If not specified, Amazon Bedrock AgentCore uses a default viewport size.</p>
    #   @return [Types::ViewPort]
    # @!attribute extensions
    #   <p>A list of browser extensions to load into the browser session.</p>
    #   @return [Array<Types::BrowserExtension>]
    # @!attribute profile_configuration
    #   <p>The browser profile configuration to use for this session. A browser profile contains persistent data such as cookies and local storage that can be reused across multiple browser sessions. If specified, the session initializes with the profile's stored data, enabling continuity for tasks that require authentication or personalized settings.</p>
    #   @return [Types::BrowserProfileConfiguration]
    # @!attribute proxy_configuration
    #   <p>Optional proxy configuration for routing browser traffic through customer-specified proxy servers. When provided, enables HTTP Basic authentication via Amazon Web Services Secrets Manager and domain-based routing rules. Requires <code>secretsmanager:GetSecretValue</code> IAM permission for the specified secret ARNs.</p>
    #   @return [Types::ProxyConfiguration]
    # @!attribute enterprise_policies
    #   <p>A list of files containing enterprise policies for the browser.</p>
    #   @return [Array<Types::BrowserEnterprisePolicy>]
    # @!attribute certificates
    #   <p>A list of certificates to install in the browser session.</p>
    #   @return [Array<Types::Certificate>]
    # @!attribute filesystem_configurations
    #   <p>The file system configurations to mount into the browser session. Use these configurations to mount your own Amazon Simple Storage Service (Amazon S3) Files or Amazon Elastic File System (Amazon EFS) access points. Your session can then read and write your data. If you don't specify this field, no additional file systems are mounted.</p>
    #   @return [Array<Types::ToolsFileSystemConfiguration>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock AgentCore ignores the request, but does not return an error. This parameter helps prevent the creation of duplicate sessions if there are temporary network issues.</p>
    #   @return [String]
    class StartBrowserSessionRequest < Struct.new(
      nil,
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
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute browser_identifier
    #   <p>The identifier of the browser.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the created browser session.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the browser session was created.</p>
    #   @return [Time]
    # @!attribute streams
    #   <p>The streams associated with this browser session. These include the automation stream and live view stream.</p>
    #   @return [Types::BrowserSessionStream]
    class StartBrowserSessionResponse < Struct.new(
      nil,
      :browser_identifier,
      :session_id,
      :created_at,
      :streams,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute trace_id
    #   <p>The trace identifier for request tracking.</p>
    #   @return [String]
    # @!attribute trace_parent
    #   <p>The parent trace information for distributed tracing.</p>
    #   @return [String]
    # @!attribute code_interpreter_identifier
    #   <p>The unique identifier of the code interpreter to use for this session. This identifier specifies which code interpreter environment to initialize for the session.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the code interpreter session. This name helps you identify and manage the session. The name does not need to be unique.</p>
    #   @return [String]
    # @!attribute session_timeout_seconds
    #   <p>The duration in seconds (time-to-live) after which the session automatically terminates, regardless of ongoing activity. Defaults to 900 seconds (15 minutes). Recommended minimum: 60 seconds. Maximum allowed: 28,800 seconds (8 hours).</p>
    #   @return [Integer]
    # @!attribute certificates
    #   <p>A list of certificates to install in the code interpreter session.</p>
    #   @return [Array<Types::Certificate>]
    # @!attribute filesystem_configurations
    #   <p>The file system configurations to mount into the code interpreter session. Use these configurations to mount your own Amazon Simple Storage Service (Amazon S3) Files or Amazon Elastic File System (Amazon EFS) access points. Your session can then read and write your data. If you don't specify this field, no additional file systems are mounted.</p>
    #   @return [Array<Types::ToolsFileSystemConfiguration>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock AgentCore ignores the request, but does not return an error. This parameter helps prevent the creation of duplicate sessions if there are temporary network issues.</p>
    #   @return [String]
    class StartCodeInterpreterSessionRequest < Struct.new(
      nil,
      :trace_id,
      :trace_parent,
      :code_interpreter_identifier,
      :name,
      :session_timeout_seconds,
      :certificates,
      :filesystem_configurations,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_interpreter_identifier
    #   <p>The identifier of the code interpreter.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the created code interpreter session.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the code interpreter session was created.</p>
    #   @return [Time]
    class StartCodeInterpreterSessionResponse < Struct.new(
      nil,
      :code_interpreter_identifier,
      :session_id,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The unique identifier of the memory for which to start extraction jobs.</p>
    #   @return [String]
    # @!attribute extraction_job
    #   <p>Extraction job to start in this operation.</p>
    #   @return [Types::ExtractionJob]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotent processing of the request.</p>
    #   @return [String]
    class StartMemoryExtractionJobInput < Struct.new(
      nil,
      :memory_id,
      :extraction_job,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>Extraction Job ID that was attempted to start.</p>
    #   @return [String]
    class StartMemoryExtractionJobOutput < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the recommendation. Must be unique within your account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the recommendation.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of recommendation to generate. Valid values are <code>SYSTEM_PROMPT_RECOMMENDATION</code> for system prompt optimization or <code>TOOL_DESCRIPTION_RECOMMENDATION</code> for tool description optimization.</p>
    #   @return [String]
    # @!attribute recommendation_config
    #   <p>The configuration for the recommendation, including the input to optimize, agent traces to analyze, and evaluation settings.</p>
    #   @return [Types::RecommendationConfig]
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key used to encrypt recommendation data. If provided, customer data is encrypted at rest with the specified key.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, the service ignores the request, but does not return an error.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tag keys and values to associate with the recommendation.</p>
    #   @return [Hash<String, String>]
    class StartRecommendationRequest < Struct.new(
      nil,
      :name,
      :description,
      :type,
      :recommendation_config,
      :kms_key_arn,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommendation_id
    #   <p>The unique identifier of the created recommendation.</p>
    #   @return [String]
    # @!attribute recommendation_arn
    #   <p>The Amazon Resource Name (ARN) of the created recommendation.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the recommendation.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the recommendation.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of recommendation.</p>
    #   @return [String]
    # @!attribute recommendation_config
    #   <p>The configuration for the recommendation.</p>
    #   @return [Types::RecommendationConfig]
    # @!attribute status
    #   <p>The status of the recommendation.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the recommendation was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the recommendation was last updated.</p>
    #   @return [Time]
    class StartRecommendationResponse < Struct.new(
      nil,
      :recommendation_id,
      :recommendation_arn,
      :name,
      :description,
      :type,
      :recommendation_config,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_evaluation_id
    #   <p>The unique identifier of the batch evaluation to stop.</p>
    #   @return [String]
    class StopBatchEvaluationRequest < Struct.new(
      nil,
      :batch_evaluation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_evaluation_id
    #   <p>The unique identifier of the stopped batch evaluation.</p>
    #   @return [String]
    # @!attribute batch_evaluation_arn
    #   <p>The Amazon Resource Name (ARN) of the stopped batch evaluation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the batch evaluation after the stop request.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the batch evaluation.</p>
    #   @return [String]
    class StopBatchEvaluationResponse < Struct.new(
      nil,
      :batch_evaluation_id,
      :batch_evaluation_arn,
      :status,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute trace_id
    #   <p>The trace identifier for request tracking.</p>
    #   @return [String]
    # @!attribute trace_parent
    #   <p>The parent trace information for distributed tracing.</p>
    #   @return [String]
    # @!attribute browser_identifier
    #   <p>The unique identifier of the browser associated with the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the browser session to stop.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock AgentCore ignores the request, but does not return an error.</p>
    #   @return [String]
    class StopBrowserSessionRequest < Struct.new(
      nil,
      :trace_id,
      :trace_parent,
      :browser_identifier,
      :session_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute browser_identifier
    #   <p>The identifier of the browser.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the browser session.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The time at which the browser session was last updated.</p>
    #   @return [Time]
    class StopBrowserSessionResponse < Struct.new(
      nil,
      :browser_identifier,
      :session_id,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute trace_id
    #   <p>The trace identifier for request tracking.</p>
    #   @return [String]
    # @!attribute trace_parent
    #   <p>The parent trace information for distributed tracing.</p>
    #   @return [String]
    # @!attribute code_interpreter_identifier
    #   <p>The unique identifier of the code interpreter associated with the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the code interpreter session to stop.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock AgentCore ignores the request, but does not return an error.</p>
    #   @return [String]
    class StopCodeInterpreterSessionRequest < Struct.new(
      nil,
      :trace_id,
      :trace_parent,
      :code_interpreter_identifier,
      :session_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_interpreter_identifier
    #   <p>The identifier of the code interpreter.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the code interpreter session.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The timestamp when the code interpreter session was last updated.</p>
    #   @return [Time]
    class StopCodeInterpreterSessionResponse < Struct.new(
      nil,
      :code_interpreter_identifier,
      :session_id,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute runtime_session_id
    #   <p>The ID of the session that you want to stop.</p>
    #   @return [String]
    # @!attribute agent_runtime_arn
    #   <p>The ARN of the agent that contains the session that you want to stop.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>Optional qualifier to specify an agent alias, such as <code>prod</code>code&gt; or <code>dev</code>. If you don't provide a value, the DEFAULT alias is used. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Idempotent token used to identify the request. If you use the same token with multiple requests, the same response is returned. Use ClientToken to prevent the same request from being processed more than once.</p>
    #   @return [String]
    class StopRuntimeSessionRequest < Struct.new(
      nil,
      :runtime_session_id,
      :agent_runtime_arn,
      :qualifier,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute runtime_session_id
    #   <p>The ID of the session that you requested to stop.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>The status code of the request to stop the session.</p>
    #   @return [Integer]
    class StopRuntimeSessionResponse < Struct.new(
      nil,
      :runtime_session_id,
      :status_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an update to a stream.</p>
    # @!attribute automation_stream_update
    #   <p>The update to an automation stream.</p>
    #   @return [Types::AutomationStreamUpdate]
    class StreamUpdate < Struct.new(
      :automation_stream_update,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AutomationStreamUpdate < StreamUpdate; end
      class Unknown < StreamUpdate; end
    end

    # <p>Stripe Privy token request parameters.</p>
    # @!attribute request_host
    #   <p>The host for the Privy API request. Defaults to "api.privy.io".</p>
    #   @return [String]
    # @!attribute request_path
    #   <p>The path of the Stripe Privy API request.</p>
    #   @return [String]
    # @!attribute request_body
    #   <p>Request body JSON for the Privy API call.</p>
    #   @return [String]
    # @!attribute include_authorization_signature
    #   <p>Set to true to generate privy-authorization-signature.</p>
    #   @return [Boolean]
    class StripePrivyTokenRequestInput < Struct.new(
      nil,
      :request_host,
      :request_path,
      :request_body,
      :include_authorization_signature,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:include_authorization_signature] = false unless options.key?(:include_authorization_signature)
        super
      end
    end

    # <p>Stripe Privy token response containing appId, basicAuthToken, and optionally authorizationSignature.</p>
    # @!attribute authorization_signature
    #   <p>Base64-encoded ECDSA P-256 authorization signature (only present when includeAuthorizationSignature is true).</p>
    #   @return [String]
    # @!attribute request_expiry
    #   <p>Unix timestamp in milliseconds when the authorization signature expires.</p>
    #   @return [Integer]
    # @!attribute app_id
    #   <p>The Privy app ID for the privy-app-id header.</p>
    #   @return [String]
    # @!attribute basic_auth_token
    #   <p>Base64-encoded Basic Auth token (appId:appSecret) for the Authorization header.</p>
    #   @return [String]
    class StripePrivyTokenResponseOutput < Struct.new(
      nil,
      :authorization_signature,
      :request_expiry,
      :app_id,
      :basic_auth_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returned when you attempt a wallet operation against a Coinbase Marketplace connector whose account does not hold an active Marketplace subscription and is not within the legacy exception period. Subscribe to the Marketplace listing before you retry the operation.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute subscription_url
    #   <p>The URL to the Marketplace listing where you can subscribe.</p>
    #   @return [String]
    # @!attribute product_name
    #   <p>The name of the product that requires a Marketplace subscription.</p>
    #   @return [String]
    class SubscriptionRequiredException < Struct.new(
      nil,
      :message,
      :subscription_url,
      :product_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The system prompt input, either as inline text or from a configuration bundle.</p>
    # @!attribute text
    #   <p>The system prompt text provided inline.</p>
    #   @return [String]
    # @!attribute configuration_bundle
    #   <p>The system prompt sourced from a configuration bundle version.</p>
    #   @return [Types::SystemPromptConfigurationBundle]
    class SystemPromptConfig < Struct.new(
      :text,
      :configuration_bundle,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < SystemPromptConfig; end
      class ConfigurationBundle < SystemPromptConfig; end
      class Unknown < SystemPromptConfig; end
    end

    # <p>A system prompt sourced from a configuration bundle version.</p>
    # @!attribute bundle_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration bundle.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version identifier of the configuration bundle.</p>
    #   @return [String]
    # @!attribute system_prompt_json_path
    #   <p>The JSON path within the configuration bundle that contains the system prompt.</p>
    #   @return [String]
    class SystemPromptConfigurationBundle < Struct.new(
      nil,
      :bundle_arn,
      :version_id,
      :system_prompt_json_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for generating system prompt optimization recommendations.</p>
    # @!attribute system_prompt
    #   <p>The current system prompt to optimize.</p>
    #   @return [Types::SystemPromptConfig]
    # @!attribute agent_traces
    #   <p>The agent traces to analyze for generating recommendations.</p>
    #   @return [Types::AgentTracesConfig]
    # @!attribute evaluation_config
    #   <p>The evaluation configuration specifying which evaluator to use for assessing recommendation quality.</p>
    #   @return [Types::RecommendationEvaluationConfig]
    class SystemPromptRecommendationConfig < Struct.new(
      nil,
      :system_prompt,
      :agent_traces,
      :evaluation_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a system prompt recommendation, containing the optimized prompt.</p>
    # @!attribute recommended_system_prompt
    #   <p>The optimized system prompt text generated by the recommendation.</p>
    #   @return [String]
    # @!attribute configuration_bundle
    #   <p>The configuration bundle containing the recommended system prompt, if the input was sourced from a configuration bundle.</p>
    #   @return [Types::RecommendationResultConfigurationBundle]
    # @!attribute explanation
    #   <p>An explanation of why the recommendation was generated and what patterns were identified in the agent traces.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code if the recommendation failed.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message if the recommendation failed.</p>
    #   @return [String]
    class SystemPromptRecommendationResult < Struct.new(
      nil,
      :recommended_system_prompt,
      :configuration_bundle,
      :explanation,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reference to a gateway target.</p>
    # @!attribute name
    #   <p>The name of the gateway target.</p>
    #   @return [String]
    class TargetRef < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling. Reduce the frequency of requests and try again.</p>
    # @!attribute message
    #   @return [String]
    class ThrottledException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The exception that occurs when the request was denied due to request throttling. This happens when you exceed the allowed request rate for an operation. Reduce the frequency of requests or implement exponential backoff retry logic in your application.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single token balance entry.</p>
    # @!attribute amount
    #   <p>Raw balance in the smallest denomination (e.g., USDC base units where 1 USDC = 1000000).</p>
    #   @return [String]
    # @!attribute decimals
    #   <p>Number of decimal places for the token (e.g., 6 for USDC).</p>
    #   @return [Integer]
    # @!attribute token
    #   <p>The supported token for this balance.</p>
    #   @return [String]
    # @!attribute network
    #   <p>The blockchain network family (ETHEREUM or SOLANA).</p>
    #   @return [String]
    # @!attribute chain
    #   <p>The specific blockchain chain.</p>
    #   @return [String]
    class TokenBalance < Struct.new(
      nil,
      :amount,
      :decimals,
      :token,
      :network,
      :chain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The token consumption statistics for language model operations during evaluation. Provides detailed breakdown of input, output, and total tokens used for cost tracking and performance monitoring. </p>
    # @!attribute input_tokens
    #   <p> The number of tokens consumed for input processing during the evaluation. Includes tokens from the evaluation prompt, agent traces, and any additional context provided to the evaluator model. </p>
    #   @return [Integer]
    # @!attribute output_tokens
    #   <p> The number of tokens generated by the evaluator model in its response. Includes tokens for the score, explanation, and any additional output produced during the evaluation process. </p>
    #   @return [Integer]
    # @!attribute total_tokens
    #   <p> The total number of tokens consumed during the evaluation, calculated as the sum of input and output tokens. Used for cost calculation and rate limiting within the service limits. </p>
    #   @return [Integer]
    class TokenUsage < Struct.new(
      nil,
      :input_tokens,
      :output_tokens,
      :total_tokens,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The collection of arguments that specify the operation to perform and its parameters when invoking a tool in Amazon Bedrock AgentCore. Different tools require different arguments, and this structure provides a flexible way to pass the appropriate arguments to each tool type.</p>
    # @!attribute code
    #   <p>The code to execute in a code interpreter session. This is the source code in the specified programming language that will be executed by the code interpreter.</p>
    #   @return [String]
    # @!attribute language
    #   <p>The programming language of the code to execute. This tells the code interpreter which language runtime to use for execution.</p>
    #   @return [String]
    # @!attribute clear_context
    #   <p>Whether to clear the context for the tool.</p>
    #   @return [Boolean]
    # @!attribute command
    #   <p>The command to execute with the tool.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The path for the tool operation.</p>
    #   @return [String]
    # @!attribute paths
    #   <p>The paths for the tool operation.</p>
    #   @return [Array<String>]
    # @!attribute content
    #   <p>The content for the tool operation.</p>
    #   @return [Array<Types::InputContentBlock>]
    # @!attribute directory_path
    #   <p>The directory path for the tool operation.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The identifier of the task for the tool operation.</p>
    #   @return [String]
    # @!attribute runtime
    #   <p>The runtime environment to use for code execution. If not specified, defaults to <code>deno</code> for JavaScript and TypeScript.</p>
    #   @return [String]
    class ToolArguments < Struct.new(
      nil,
      :code,
      :language,
      :clear_context,
      :command,
      :path,
      :paths,
      :content,
      :directory_path,
      :task_id,
      :runtime,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The tool description content.</p>
    # @!attribute text
    #   <p>The tool description as inline text.</p>
    #   @return [String]
    class ToolDescriptionConfig < Struct.new(
      :text,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < ToolDescriptionConfig; end
      class Unknown < ToolDescriptionConfig; end
    end

    # <p>Tool descriptions sourced from a configuration bundle version.</p>
    # @!attribute bundle_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration bundle.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version identifier of the configuration bundle.</p>
    #   @return [String]
    # @!attribute tools
    #   <p>The list of tool entries mapping tool names to their JSON paths within the bundle.</p>
    #   @return [Array<Types::ConfigurationBundleToolEntry>]
    class ToolDescriptionConfigurationBundle < Struct.new(
      nil,
      :bundle_arn,
      :version_id,
      :tools,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A tool description input containing the tool name and its current description.</p>
    # @!attribute tool_name
    #   <p>The name of the tool.</p>
    #   @return [String]
    # @!attribute tool_description
    #   <p>The current description of the tool to optimize.</p>
    #   @return [Types::ToolDescriptionConfig]
    class ToolDescriptionInput < Struct.new(
      nil,
      :tool_name,
      :tool_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for a single tool description recommendation.</p>
    # @!attribute tool_name
    #   <p>The name of the tool.</p>
    #   @return [String]
    # @!attribute recommended_tool_description
    #   <p>The optimized tool description text generated by the recommendation.</p>
    #   @return [String]
    # @!attribute explanation
    #   <p>An explanation of why the recommendation was generated for this tool and what patterns were identified in the agent traces.</p>
    #   @return [String]
    class ToolDescriptionOutput < Struct.new(
      nil,
      :tool_name,
      :recommended_tool_description,
      :explanation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for generating tool description optimization recommendations.</p>
    # @!attribute tool_description
    #   <p>The current tool descriptions to optimize.</p>
    #   @return [Types::ToolDescriptionSource]
    # @!attribute agent_traces
    #   <p>The agent traces to analyze for generating tool description recommendations.</p>
    #   @return [Types::AgentTracesConfig]
    class ToolDescriptionRecommendationConfig < Struct.new(
      nil,
      :tool_description,
      :agent_traces,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a tool description recommendation, containing optimized descriptions.</p>
    # @!attribute tools
    #   <p>The list of tools with their recommended descriptions.</p>
    #   @return [Array<Types::ToolDescriptionOutput>]
    # @!attribute configuration_bundle
    #   <p>The configuration bundle containing the recommended tool descriptions, if the input was sourced from a configuration bundle.</p>
    #   @return [Types::RecommendationResultConfigurationBundle]
    # @!attribute error_code
    #   <p>The error code if the recommendation failed.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message if the recommendation failed.</p>
    #   @return [String]
    class ToolDescriptionRecommendationResult < Struct.new(
      nil,
      :tools,
      :configuration_bundle,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source of tool descriptions, either inline text or from a configuration bundle.</p>
    # @!attribute tool_description_text
    #   <p>Tool descriptions provided as inline text.</p>
    #   @return [Types::ToolDescriptionTextInput]
    # @!attribute configuration_bundle
    #   <p>Tool descriptions sourced from a configuration bundle version.</p>
    #   @return [Types::ToolDescriptionConfigurationBundle]
    class ToolDescriptionSource < Struct.new(
      :tool_description_text,
      :configuration_bundle,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ToolDescriptionText < ToolDescriptionSource; end
      class ConfigurationBundle < ToolDescriptionSource; end
      class Unknown < ToolDescriptionSource; end
    end

    # <p>Inline tool description input containing a list of tools.</p>
    # @!attribute tools
    #   <p>The list of tool descriptions to optimize.</p>
    #   @return [Array<Types::ToolDescriptionInput>]
    class ToolDescriptionTextInput < Struct.new(
      nil,
      :tools,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains structured content from a tool result.</p>
    # @!attribute task_id
    #   <p>The identifier of the task that produced the result.</p>
    #   @return [String]
    # @!attribute task_status
    #   <p>The status of the task that produced the result.</p>
    #   @return [String]
    # @!attribute stdout
    #   <p>The standard output from the tool execution.</p>
    #   @return [String]
    # @!attribute stderr
    #   <p>The standard error output from the tool execution.</p>
    #   @return [String]
    # @!attribute exit_code
    #   <p>The exit code from the tool execution.</p>
    #   @return [Integer]
    # @!attribute execution_time
    #   <p>The execution time of the tool operation in milliseconds.</p>
    #   @return [Float]
    class ToolResultStructuredContent < Struct.new(
      nil,
      :task_id,
      :task_status,
      :stdout,
      :stderr,
      :exit_code,
      :execution_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The MCP tools definition with a protocol version and inline content. The <code>protocolVersion</code> identifies the MCP protocol version that the tools conform to. This differs from <code>schemaVersion</code> in the server definition, which identifies the server configuration schema format.</p>
    # @!attribute protocol_version
    #   <p> The MCP protocol version that the tools conform to. This differs from the <code>schemaVersion</code> field in the server definition, which identifies the server configuration schema format.</p>
    #   @return [String]
    # @!attribute inline_content
    #   <p> The inline content of the tools definition.</p>
    #   @return [String]
    class ToolsDefinition < Struct.new(
      nil,
      :protocol_version,
      :inline_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a file system to mount into the session by providing exactly one of the following:</p> <ul> <li> <p> <code>s3FilesConfiguration</code> - Mounts an Amazon Simple Storage Service (Amazon S3) Files access point.</p> </li> <li> <p> <code>efsConfiguration</code> - Mounts an Amazon Elastic File System (Amazon EFS) access point.</p> </li> </ul>
    # @!attribute s3_files_configuration
    #   <p>The configuration for mounting your own Amazon Simple Storage Service (Amazon S3) Files access point into the session.</p>
    #   @return [Types::S3FilesConfiguration]
    # @!attribute efs_configuration
    #   <p>The configuration for mounting your own Amazon Elastic File System (Amazon EFS) access point into the session.</p>
    #   @return [Types::EfsConfiguration]
    class ToolsFileSystemConfiguration < Struct.new(
      :s3_files_configuration,
      :efs_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3FilesConfiguration < ToolsFileSystemConfiguration; end
      class EfsConfiguration < ToolsFileSystemConfiguration; end
      class Unknown < ToolsFileSystemConfiguration; end
    end

    # <p>This exception is thrown when the JWT bearer token is invalid or not found for OAuth bearer token based access</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ab_test_id
    #   <p>The unique identifier of the A/B test to update.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, the service ignores the request, but does not return an error.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The updated name of the A/B test.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the A/B test.</p>
    #   @return [String]
    # @!attribute variants
    #   <p>The updated list of variants.</p>
    #   @return [Array<Types::Variant>]
    # @!attribute gateway_filter
    #   <p>The updated gateway filter.</p>
    #   @return [Types::GatewayFilter]
    # @!attribute evaluation_config
    #   <p>The updated evaluation configuration.</p>
    #   @return [Types::ABTestEvaluationConfig]
    # @!attribute role_arn
    #   <p>The updated IAM role ARN.</p>
    #   @return [String]
    # @!attribute execution_status
    #   <p>The updated execution status to enable or disable the A/B test.</p>
    #   @return [String]
    class UpdateABTestRequest < Struct.new(
      nil,
      :ab_test_id,
      :client_token,
      :name,
      :description,
      :variants,
      :gateway_filter,
      :evaluation_config,
      :role_arn,
      :execution_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ab_test_id
    #   <p>The unique identifier of the updated A/B test.</p>
    #   @return [String]
    # @!attribute ab_test_arn
    #   <p>The Amazon Resource Name (ARN) of the updated A/B test.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the A/B test.</p>
    #   @return [String]
    # @!attribute execution_status
    #   <p>The execution status of the A/B test.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the A/B test was updated.</p>
    #   @return [Time]
    class UpdateABTestResponse < Struct.new(
      nil,
      :ab_test_id,
      :ab_test_arn,
      :status,
      :execution_status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute browser_identifier
    #   <p>The identifier of the browser.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the browser session.</p>
    #   @return [String]
    # @!attribute stream_update
    #   <p>The update to apply to the browser stream.</p>
    #   @return [Types::StreamUpdate]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error.</p>
    #   @return [String]
    class UpdateBrowserStreamRequest < Struct.new(
      nil,
      :browser_identifier,
      :session_id,
      :stream_update,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute browser_identifier
    #   <p>The identifier of the browser.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the browser session.</p>
    #   @return [String]
    # @!attribute streams
    #   <p>The collection of streams associated with a browser session in Amazon Bedrock AgentCore. These streams provide different ways to interact with and observe the browser session, including programmatic control and visual representation of the browser content.</p>
    #   @return [Types::BrowserSessionStream]
    # @!attribute updated_at
    #   <p>The time at which the browser stream was updated.</p>
    #   @return [Time]
    class UpdateBrowserStreamResponse < Struct.new(
      nil,
      :browser_identifier,
      :session_id,
      :streams,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The OAuth2.0 token or user ID that was used to generate the workload access token used for initiating the user authorization flow to retrieve OAuth2.0 tokens.</p>
    # @!attribute user_token
    #   <p>The OAuth2.0 token issued by the user’s identity provider that was used to generate the workload access token</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The ID of the user for whom you have retrieved a workload access token for</p>
    #   @return [String]
    class UserIdentifier < Struct.new(
      :user_token,
      :user_id,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class UserToken < UserIdentifier; end
      class UserId < UserIdentifier; end
      class Unknown < UserIdentifier; end
    end

    # <p>A session associated with a user intent cluster.</p>
    # @!attribute session_id
    #   <p>The unique identifier of the session.</p>
    #   @return [String]
    # @!attribute user_messages
    #   <p>The user messages from this session that contributed to the intent cluster.</p>
    #   @return [Array<String>]
    class UserIntentAffectedSession < Struct.new(
      nil,
      :session_id,
      :user_messages,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A cluster of similar user intents identified across sessions.</p>
    # @!attribute cluster_id
    #   <p>The unique identifier of the user intent cluster.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The name of the user intent cluster.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the user intent pattern.</p>
    #   @return [String]
    # @!attribute affected_session_count
    #   <p>The number of sessions with this user intent.</p>
    #   @return [Integer]
    # @!attribute affected_sessions
    #   <p>The list of sessions with this user intent.</p>
    #   @return [Array<Types::UserIntentAffectedSession>]
    class UserIntentCluster < Struct.new(
      nil,
      :cluster_id,
      :name,
      :description,
      :affected_session_count,
      :affected_sessions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The user intent clustering result containing grouped user intents identified across evaluated sessions.</p>
    # @!attribute user_intents
    #   <p>The list of user intent clusters identified across analyzed sessions.</p>
    #   @return [Array<Types::UserIntentCluster>]
    class UserIntentClusteringResultContent < Struct.new(
      nil,
      :user_intents,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The exception that occurs when the input fails to satisfy the constraints specified by the service. Check the error message for details about which input parameter is invalid and correct your request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   @return [String]
    # @!attribute field_list
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Stores information about a field passed inside a request that resulted in an exception.</p>
    # @!attribute name
    #   <p>The name of the field.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message describing why this field failed validation.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A variant in an A/B test, representing either the control (C) or treatment (T1) configuration.</p>
    # @!attribute name
    #   <p>The name of the variant. Must be <code>C</code> for control or <code>T1</code> for treatment.</p>
    #   @return [String]
    # @!attribute weight
    #   <p>The percentage of traffic to route to this variant. Weights across all variants must sum to 100.</p>
    #   @return [Integer]
    # @!attribute variant_configuration
    #   <p>The configuration for this variant, including the configuration bundle or target reference.</p>
    #   @return [Types::VariantConfiguration]
    class Variant < Struct.new(
      nil,
      :name,
      :weight,
      :variant_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an A/B test variant.</p>
    # @!attribute configuration_bundle
    #   <p>A reference to a configuration bundle version to use for this variant.</p>
    #   @return [Types::ConfigurationBundleRef]
    # @!attribute target
    #   <p>A reference to a gateway target to route traffic to for this variant.</p>
    #   @return [Types::TargetRef]
    class VariantConfiguration < Struct.new(
      nil,
      :configuration_bundle,
      :target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Statistical results for a treatment variant compared against the control.</p>
    # @!attribute variant_name
    #   <p>The name of the treatment variant.</p>
    #   @return [String]
    # @!attribute sample_size
    #   <p>The number of sessions evaluated for this variant.</p>
    #   @return [Integer]
    # @!attribute mean
    #   <p>The mean evaluation score for this variant.</p>
    #   @return [Float]
    # @!attribute absolute_change
    #   <p>The absolute change in mean score compared to the control variant.</p>
    #   @return [Float]
    # @!attribute percent_change
    #   <p>The percentage change in mean score compared to the control variant.</p>
    #   @return [Float]
    # @!attribute p_value
    #   <p>The p-value indicating the statistical significance of the observed difference.</p>
    #   @return [Float]
    # @!attribute confidence_interval
    #   <p>The confidence interval for the observed difference.</p>
    #   @return [Types::ConfidenceInterval]
    # @!attribute is_significant
    #   <p>Whether the observed difference is statistically significant.</p>
    #   @return [Boolean]
    class VariantResult < Struct.new(
      nil,
      :variant_name,
      :sample_size,
      :mean,
      :absolute_change,
      :percent_change,
      :p_value,
      :confidence_interval,
      :is_significant,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration that defines the dimensions of a browser viewport in a browser session. The viewport determines the visible area of web content and affects how web pages are rendered and displayed. Proper viewport configuration ensures that web content is displayed correctly for the agent's browsing tasks.</p>
    # @!attribute width
    #   <p>The width of the viewport in pixels. This value determines the horizontal dimension of the visible area. Valid values range from 800 to 1920 pixels.</p>
    #   @return [Integer]
    # @!attribute height
    #   <p>The height of the viewport in pixels. This value determines the vertical dimension of the visible area. Valid values range from 600 to 1080 pixels.</p>
    #   @return [Integer]
    class ViewPort < Struct.new(
      nil,
      :width,
      :height,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end

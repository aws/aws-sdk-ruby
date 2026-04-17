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
      :metadata)
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

    # A reference input containing ground truth data for evaluation, scoped
    # to a specific context level (session or trace) through its span
    # context.
    #
    # @!attribute [rw] context
    #   The contextual information associated with an evaluation, including
    #   span context details that identify the specific traces and sessions
    #   being evaluated within the agent's execution flow.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetCodeInterpreterSessionResponse AWS API Documentation
    #
    class GetCodeInterpreterSessionResponse < Struct.new(
      :code_interpreter_identifier,
      :session_id,
      :name,
      :created_at,
      :session_timeout_seconds,
      :status,
      :certificates)
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
      :custom_state)
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
    #   records in namespaces that start with the provided prefix.
    #   @return [String]
    #
    # @!attribute [rw] namespace_path
    #   Use namespacePath for hierarchical retrievals. Return all memory
    #   records where namespace falls under the same parent hierarchy.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListMemoryRecordsInput AWS API Documentation
    #
    class ListMemoryRecordsInput < Struct.new(
      :memory_id,
      :namespace,
      :namespace_path,
      :memory_strategy_id,
      :max_results,
      :next_token)
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
    #   Left expression of the event metadata filter.
    #   @return [Types::LeftExpression]
    #
    # @!attribute [rw] operator
    #   The relationship between the metadata key and value to match when
    #   applying the metadata filter.
    #   @return [String]
    #
    # @!attribute [rw] right
    #   Right expression of the `eventMetadata`filter.
    #   @return [Types::RightExpression]
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
    #   @return [Hash<String,Types::MetadataValue>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MemoryRecordCreateInput AWS API Documentation
    #
    class MemoryRecordCreateInput < Struct.new(
      :request_identifier,
      :namespaces,
      :content,
      :timestamp,
      :memory_strategy_id)
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
    #   @return [Hash<String,Types::MetadataValue>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MemoryRecordUpdateInput AWS API Documentation
    #
    class MemoryRecordUpdateInput < Struct.new(
      :memory_record_id,
      :timestamp,
      :content,
      :namespaces,
      :memory_strategy_id)
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
    #   @return [String]
    #
    # @!attribute [rw] namespace_path
    #   Use namespacePath for hierarchical retrievals. Return all memory
    #   records where namespace falls under the same parent hierarchy.
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

  end
end


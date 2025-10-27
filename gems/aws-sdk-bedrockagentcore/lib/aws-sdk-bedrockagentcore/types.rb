# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BedrockAgentCore
  module Types

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

    # The configuration for a stream that enables programmatic control of a
    # browser session in Amazon Bedrock. This stream provides a
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

    # The collection of streams associated with a browser session in Amazon
    # Bedrock. These streams provide different ways to interact with and
    # observe the browser session, including programmatic control and visual
    # representation of the browser content.
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

    # A condensed representation of a browser session in Amazon Bedrock.
    # This structure contains key information about a browser session,
    # including identifiers, status, and timestamps, without the full
    # details of the session configuration and streams.
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

    # The output produced by executing code in a code interpreter session in
    # Amazon Bedrock. This structure contains the results of code execution,
    # including textual output, structured data, and error information.
    # Agents use these results to generate responses that incorporate
    # computation, data analysis, and visualization.
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
    # Bedrock. This structure contains key information about a code
    # interpreter session, including identifiers, status, and timestamps,
    # without the full details of the session configuration.
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
      :session_timeout_seconds,
      :status,
      :streams,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetCodeInterpreterSessionResponse AWS API Documentation
    #
    class GetCodeInterpreterSessionResponse < Struct.new(
      :code_interpreter_identifier,
      :session_id,
      :name,
      :created_at,
      :session_timeout_seconds,
      :status)
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
    #   The Amazon Web Services Resource Name (ARN) of the agent runtime to
    #   invoke. The ARN uniquely identifies the agent runtime resource in
    #   Amazon Bedrock.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   The qualifier to use for the agent runtime. This can be a version
    #   number or an endpoint name that points to a specific version. If not
    #   specified, Amazon Bedrock uses the default version of the agent
    #   runtime.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The identifier of the Amazon Web Services account for the agent
    #   runtime resource.
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
    #   The maximum number of results to return in a single call. Minimum
    #   value of 1, maximum value of 100. Default is 20.
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
    #   results. If not specified, Amazon Bedrock returns the first page of
    #   results.
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
    #   results. If not specified, Amazon Bedrock returns the first page of
    #   results.
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
    #   The identifier of the session for which to list events. If
    #   specified, only events from this session are returned.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The identifier of the actor for which to list events. If specified,
    #   only events from this actor are returned.
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
    #   The maximum number of results to return in a single call. Minimum
    #   value of 1, maximum value of 100. Default is 20.
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
    #   The identifier of the AgentCore Memory resource for which to list
    #   memory records.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace to filter memory records by. If specified, only memory
    #   records in this namespace are returned.
    #   @return [String]
    #
    # @!attribute [rw] memory_strategy_id
    #   The memory strategy identifier to filter memory records by. If
    #   specified, only memory records with this strategy ID are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Minimum
    #   value of 1, maximum value of 100. Default is 20.
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
    #   The identifier of the actor for which to list sessions. If
    #   specified, only sessions involving this actor are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Minimum
    #   value of 1, maximum value of 100. Default is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListSessionsInput AWS API Documentation
    #
    class ListSessionsInput < Struct.new(
      :memory_id,
      :actor_id,
      :max_results,
      :next_token)
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
    # of a browser session in Amazon Bedrock. This stream enables agents to
    # observe the current state of the browser, including rendered web
    # pages, visual elements, and the results of interactions.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MemoryRecord AWS API Documentation
    #
    class MemoryRecord < Struct.new(
      :memory_record_id,
      :content,
      :memory_strategy_id,
      :namespaces,
      :created_at)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/MemoryRecordSummary AWS API Documentation
    #
    class MemoryRecordSummary < Struct.new(
      :memory_record_id,
      :content,
      :memory_strategy_id,
      :namespaces,
      :created_at,
      :score)
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
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Conversational < PayloadType; end
      class Blob < PayloadType; end
      class Unknown < PayloadType; end
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

    # @!attribute [rw] memory_id
    #   The identifier of the AgentCore Memory resource from which to
    #   retrieve memory records.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace to filter memory records by. If specified, only memory
    #   records in this namespace are searched.
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
    #   The maximum number of results to return in a single call. Minimum
    #   value of 1, maximum value of 100. Default is 20.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/RetrieveMemoryRecordsInput AWS API Documentation
    #
    class RetrieveMemoryRecordsInput < Struct.new(
      :memory_id,
      :namespace,
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
      :message)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/SearchCriteria AWS API Documentation
    #
    class SearchCriteria < Struct.new(
      :search_query,
      :memory_strategy_id,
      :top_k)
      SENSITIVE = [:search_query]
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
    #   The time in seconds after which the session automatically terminates
    #   if there is no activity. The default value is 3600 seconds (1 hour).
    #   The minimum allowed value is 60 seconds, and the maximum allowed
    #   value is 28800 seconds (8 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] view_port
    #   The dimensions of the browser viewport for this session. This
    #   determines the visible area of the web content and affects how web
    #   pages are rendered. If not specified, Amazon Bedrock uses a default
    #   viewport size.
    #   @return [Types::ViewPort]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. This parameter helps prevent the creation of duplicate
    #   sessions if there are temporary network issues.
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
    #   The time in seconds after which the session automatically terminates
    #   if there is no activity. The default value is 900 seconds (15
    #   minutes). The minimum allowed value is 60 seconds, and the maximum
    #   allowed value is 28800 seconds (8 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. This parameter helps prevent the creation of duplicate
    #   sessions if there are temporary network issues.
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
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error.
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
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error.
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

    # The collection of arguments that specify the operation to perform and
    # its parameters when invoking a tool in Amazon Bedrock. Different tools
    # require different arguments, and this structure provides a flexible
    # way to pass the appropriate arguments to each tool type.
    #
    # @!attribute [rw] code
    #   The code to execute in a code interpreter session. This is the
    #   source code in the specified programming language that will be
    #   executed by the code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The programming language of the code to execute. This tells the code
    #   interpreter which language runtime to use for execution. Common
    #   values include 'python', 'javascript', and 'r'.
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
      :task_id)
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
    #   Amazon Bedrock. These streams provide different ways to interact
    #   with and observe the browser session, including programmatic control
    #   and visual representation of the browser content.
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
    #   The OAuth2.0 token issued by the user’s identity provider
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

  end
end


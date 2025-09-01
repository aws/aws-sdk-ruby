# frozen_string_literal: true

# This is generated code!

module Aws::BedrockAgentCore
  # This module contains the types returned by client operations.
  module Types

    # <p>The exception that occurs when you do not have sufficient permissions to perform an action. Verify that your IAM policy includes the necessary permissions for the operation you are trying to perform.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains summary information about an actor in an AgentCore Memory resource.</p>
    # @!attribute actor_id
    #   <p>The unique identifier of the actor.</p>
    #   @return [String]
    class ActorSummary < Struct.new(
      :actor_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration for a stream that enables programmatic control of a browser session in Amazon Bedrock. This stream provides a bidirectional communication channel for sending commands to the browser and receiving responses, allowing agents to automate web interactions such as navigation, form filling, and element clicking.</p>
    # @!attribute stream_endpoint
    #   <p>The endpoint URL for the automation stream. This URL is used to establish a WebSocket connection to the stream for sending commands and receiving responses.</p>
    #   @return [String]
    # @!attribute stream_status
    #   <p>The current status of the automation stream. This indicates whether the stream is available for use. Possible values include ACTIVE, CONNECTING, and DISCONNECTED.</p>
    #   @return [String]
    class AutomationStream < Struct.new(
      :stream_endpoint,
      :stream_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AutomationStreamStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # <p>Contains information about an update to an automation stream.</p>
    # @!attribute stream_status
    #   <p>The status of the automation stream.</p>
    #   @return [String]
    class AutomationStreamUpdate < Struct.new(
      :stream_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a branch in an AgentCore Memory resource. Branches allow for organizing events into different conversation threads or paths.</p>
    # @!attribute root_event_id
    #   <p>The identifier of the root event for this branch.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the branch.</p>
    #   @return [String]
    class Branch < Struct.new(
      :root_event_id,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains filter criteria for branches when listing events.</p>
    # @!attribute name
    #   <p>The name of the branch to filter by.</p>
    #   @return [String]
    # @!attribute include_parent_branches
    #   <p>Specifies whether to include parent branches in the results. Set to true to include parent branches, or false to exclude them.</p>
    #   @return [Boolean]
    class BranchFilter < Struct.new(
      :name,
      :include_parent_branches,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:include_parent_branches] = true unless options.key?(:include_parent_branches)
        super
      end
    end

    module BrowserSessionStatus
      READY = 'READY'
      TERMINATED = 'TERMINATED'
    end

    # <p>The collection of streams associated with a browser session in Amazon Bedrock. These streams provide different ways to interact with and observe the browser session, including programmatic control and visual representation of the browser content.</p>
    # @!attribute automation_stream
    #   <p>The stream that enables programmatic control of the browser. This stream allows agents to perform actions such as navigating to URLs, clicking elements, and filling forms.</p>
    #   @return [Types::AutomationStream]
    # @!attribute live_view_stream
    #   <p>The stream that provides a visual representation of the browser content. This stream allows agents to observe the current state of the browser, including rendered web pages and visual elements.</p>
    #   @return [Types::LiveViewStream]
    class BrowserSessionStream < Struct.new(
      :automation_stream,
      :live_view_stream,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A condensed representation of a browser session in Amazon Bedrock. This structure contains key information about a browser session, including identifiers, status, and timestamps, without the full details of the session configuration and streams.</p>
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
      :browser_identifier,
      :session_id,
      :name,
      :status,
      :created_at,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The output produced by executing code in a code interpreter session in Amazon Bedrock. This structure contains the results of code execution, including textual output, structured data, and error information. Agents use these results to generate responses that incorporate computation, data analysis, and visualization.</p>
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
      :content,
      :structured_content,
      :is_error,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CodeInterpreterSessionStatus
      READY = 'READY'
      TERMINATED = 'TERMINATED'
    end

    # <p>A condensed representation of a code interpreter session in Amazon Bedrock. This structure contains key information about a code interpreter session, including identifiers, status, and timestamps, without the full details of the session configuration.</p>
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
      :code_interpreter_identifier,
      :session_id,
      :name,
      :status,
      :created_at,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains output from a code interpreter stream.</p>
    # @!attribute result
    #   <p>The output produced by executing code in a code interpreter session in Amazon Bedrock. This structure contains the results of code execution, including textual output, structured data, and error information. Agents use these results to generate responses that incorporate computation, data analysis, and visualization.</p>
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
      keyword_init: true)
      include Smithy::Schema::Union

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

    # <p>The exception that occurs when the request conflicts with the current state of the resource. This can happen when trying to modify a resource that is currently being modified by another request, or when trying to create a resource that already exists.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the content of a memory item.</p>
    # @!attribute text
    #   <p>The text content of the memory item.</p>
    #   @return [String]
    class Content < Struct.new(
      :text,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

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
      :type,
      :text,
      :data,
      :mime_type,
      :uri,
      :name,
      :description,
      :size,
      :resource,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ContentBlockType
      TEXT = 'text'
      IMAGE = 'image'
      EMBEDDED_RESOURCE = 'resource'
      RESOURCE_LINK = 'resource_link'
    end

    # <p>Contains conversational content for an event payload.</p>
    # @!attribute content
    #   <p>The content of the conversation message.</p>
    #   @return [Types::Content]
    # @!attribute role
    #   <p>The role of the participant in the conversation (for example, "user" or "assistant").</p>
    #   @return [String]
    class Conversational < Struct.new(
      :content,
      :role,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>The content payload of the event. This can include conversational data or binary content.</p>
    #   @return [Array<Types::PayloadType>]
    # @!attribute branch
    #   <p>The branch information for this event. Branches allow for organizing events into different conversation threads or paths.</p>
    #   @return [Types::Branch]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, AgentCore ignores the request, but does not return an error.</p>
    #   @return [String]
    class CreateEventInput < Struct.new(
      :memory_id,
      :actor_id,
      :session_id,
      :event_timestamp,
      :payload,
      :branch,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event
    #   <p>The event that was created.</p>
    #   @return [Types::Event]
    class CreateEventOutput < Struct.new(
      :event,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :memory_id,
      :session_id,
      :event_id,
      :actor_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_id
    #   <p>The identifier of the event that was deleted.</p>
    #   @return [String]
    class DeleteEventOutput < Struct.new(
      :event_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The identifier of the AgentCore Memory resource from which to delete the memory record.</p>
    #   @return [String]
    # @!attribute memory_record_id
    #   <p>The identifier of the memory record to delete.</p>
    #   @return [String]
    class DeleteMemoryRecordInput < Struct.new(
      :memory_id,
      :memory_record_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute memory_record_id
    #   <p>The identifier of the memory record that was deleted.</p>
    #   @return [String]
    class DeleteMemoryRecordOutput < Struct.new(
      :memory_record_id,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class Event < Struct.new(
      :memory_id,
      :actor_id,
      :session_id,
      :event_id,
      :event_timestamp,
      :payload,
      :branch,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains filter criteria for listing events.</p>
    # @!attribute branch
    #   <p>The branch filter criteria to apply when listing events.</p>
    #   @return [Types::BranchFilter]
    class FilterInput < Struct.new(
      :branch,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute browser_identifier
    #   <p>The unique identifier of the browser associated with the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the browser session to retrieve.</p>
    #   @return [String]
    class GetBrowserSessionRequest < Struct.new(
      :browser_identifier,
      :session_id,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    # @!attribute session_timeout_seconds
    #   <p>The timeout period for the browser session in seconds.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The current status of the browser session. Possible values include ACTIVE, STOPPING, and STOPPED.</p>
    #   @return [String]
    # @!attribute streams
    #   <p>The streams associated with this browser session. These include the automation stream and live view stream.</p>
    #   @return [Types::BrowserSessionStream]
    # @!attribute session_replay_artifact
    #   <p>The artifact containing the session replay information.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The time at which the browser session was last updated.</p>
    #   @return [Time]
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
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute code_interpreter_identifier
    #   <p>The unique identifier of the code interpreter associated with the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the code interpreter session to retrieve.</p>
    #   @return [String]
    class GetCodeInterpreterSessionRequest < Struct.new(
      :code_interpreter_identifier,
      :session_id,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class GetCodeInterpreterSessionResponse < Struct.new(
      :code_interpreter_identifier,
      :session_id,
      :name,
      :created_at,
      :session_timeout_seconds,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :memory_id,
      :session_id,
      :actor_id,
      :event_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event
    #   <p>The requested event information.</p>
    #   @return [Types::Event]
    class GetEventOutput < Struct.new(
      :event,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The identifier of the AgentCore Memory resource containing the memory record.</p>
    #   @return [String]
    # @!attribute memory_record_id
    #   <p>The identifier of the memory record to retrieve.</p>
    #   @return [String]
    class GetMemoryRecordInput < Struct.new(
      :memory_id,
      :memory_record_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute memory_record
    #   <p>The requested memory record.</p>
    #   @return [Types::MemoryRecord]
    class GetMemoryRecordOutput < Struct.new(
      :memory_record,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_identity_token
    #   <p>The identity token of the workload you want to get the API Key of.</p>
    #   @return [String]
    # @!attribute resource_credential_provider_name
    #   <p>The credential provider name of the resource you are retrieving the API Key of.</p>
    #   @return [String]
    class GetResourceApiKeyRequest < Struct.new(
      :workload_identity_token,
      :resource_credential_provider_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute api_key
    #   <p>The API Key associated with the resource requested.</p>
    #   @return [String]
    class GetResourceApiKeyResponse < Struct.new(
      :api_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_identity_token
    #   <p>The identity token of the workload you want to retrive the Oauth2 Token of.</p>
    #   @return [String]
    # @!attribute resource_credential_provider_name
    #   <p>Reference to the credential provider</p>
    #   @return [String]
    # @!attribute scopes
    #   <p>The OAuth scopes requested</p>
    #   @return [Array<String>]
    # @!attribute oauth2_flow
    #   <p>The type of flow to be performed</p>
    #   @return [String]
    # @!attribute resource_oauth2_return_url
    #   <p>Callback url to redirect after token retrieval completes. Should be one of the provideded urls during WorkloadIdentity creation</p>
    #   @return [String]
    # @!attribute force_authentication
    #   <p>If true, always initiate a new 3LO flow</p>
    #   @return [Boolean]
    # @!attribute custom_parameters
    #   <p>Gives the ability to send extra/custom parameters to the resource credentials provider during the authorization process. Standard OAuth2 flow parameters will not be overriden.</p>
    #   @return [Hash<String, String>]
    class GetResourceOauth2TokenRequest < Struct.new(
      :workload_identity_token,
      :resource_credential_provider_name,
      :scopes,
      :oauth2_flow,
      :resource_oauth2_return_url,
      :force_authentication,
      :custom_parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute authorization_url
    #   <p>The URL for the authorization process, provided if the Access token requires user Authorization.</p>
    #   @return [String]
    # @!attribute access_token
    #   <p>OAuth2 token ready for use</p>
    #   @return [String]
    class GetResourceOauth2TokenResponse < Struct.new(
      :authorization_url,
      :access_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_name
    #   <p>Unique identifier for the registered agent</p>
    #   @return [String]
    # @!attribute user_token
    #   <p>OAuth2 token issued by the user's identity provider</p>
    #   @return [String]
    class GetWorkloadAccessTokenForJWTRequest < Struct.new(
      :workload_name,
      :user_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_access_token
    #   <p>Opaque token representing both agent and user identity</p>
    #   @return [String]
    class GetWorkloadAccessTokenForJWTResponse < Struct.new(
      :workload_access_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_name
    #   <p>The name of the worklaod you want to get the access token of.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user id of the user you are retrieving the access token for.</p>
    #   @return [String]
    class GetWorkloadAccessTokenForUserIdRequest < Struct.new(
      :workload_name,
      :user_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_access_token
    #   <p>The workload access token of the named workload.</p>
    #   @return [String]
    class GetWorkloadAccessTokenForUserIdResponse < Struct.new(
      :workload_access_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_name
    #   <p>Unique identifier for the registered agent</p>
    #   @return [String]
    class GetWorkloadAccessTokenRequest < Struct.new(
      :workload_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute workload_access_token
    #   <p>Opaque token representing both agent and user identity</p>
    #   @return [String]
    class GetWorkloadAccessTokenResponse < Struct.new(
      :workload_access_token,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :path,
      :text,
      :blob,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The exception that occurs when the service encounters an unexpected internal error. This is a temporary condition that will resolve itself with retries. We recommend implementing exponential backoff retry logic in your application.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by AgentCore. Check your input values and try again.</p>
    # @!attribute message
    #   @return [String]
    class InvalidInputException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>The Amazon Web Services Resource Name (ARN) of the agent runtime to invoke. The ARN uniquely identifies the agent runtime resource in Amazon Bedrock.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>The qualifier to use for the agent runtime. This can be a version number or an endpoint name that points to a specific version. If not specified, Amazon Bedrock uses the default version of the agent runtime.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>The input data to send to the agent runtime. The format of this data depends on the specific agent configuration and must match the specified content type. For most agents, this is a JSON object containing the user's request.</p>
    #   @return [String]
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
      :payload,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:response] = Base64.strict_decode64('') unless options.key?(:response)
        super
      end
    end

    # @!attribute code_interpreter_identifier
    #   <p>The unique identifier of the code interpreter associated with the session. This must match the identifier used when creating the session with <code>StartCodeInterpreterSession</code>.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the code interpreter session to use. This must be an active session created with <code>StartCodeInterpreterSession</code>. If the session has expired or been stopped, the request will fail.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the code interpreter to invoke.</p>
    #   @return [String]
    # @!attribute arguments
    #   <p>The arguments for the code interpreter. This includes the code to execute and any additional parameters such as the programming language, whether to clear the execution context, and other execution options. The structure of this parameter depends on the specific code interpreter being used.</p>
    #   @return [Types::ToolArguments]
    class InvokeCodeInterpreterRequest < Struct.new(
      :code_interpreter_identifier,
      :session_id,
      :name,
      :arguments,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The identifier of the code interpreter session.</p>
    #   @return [String]
    # @!attribute stream
    #   <p>The stream containing the results of the code execution. This includes output, errors, and execution status.</p>
    #   @return [Types::CodeInterpreterStreamOutput]
    class InvokeCodeInterpreterResponse < Struct.new(
      :session_id,
      :stream,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The identifier of the AgentCore Memory resource for which to list actors.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Minimum value of 1, maximum value of 100. Default is 20.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListActorsInput < Struct.new(
      :memory_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute actor_summaries
    #   <p>The list of actor summaries.</p>
    #   @return [Array<Types::ActorSummary>]
    # @!attribute next_token
    #   <p>The token to use in a subsequent request to get the next set of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    class ListActorsOutput < Struct.new(
      :actor_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute browser_identifier
    #   <p>The unique identifier of the browser to list sessions for. If specified, only sessions for this browser are returned. If not specified, sessions for all browsers are returned.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 10. Valid values range from 1 to 100. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. If not specified, Amazon Bedrock returns the first page of results.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the browser sessions to list. Valid values include ACTIVE, STOPPING, and STOPPED. If not specified, sessions with any status are returned.</p>
    #   @return [String]
    class ListBrowserSessionsRequest < Struct.new(
      :browser_identifier,
      :max_results,
      :next_token,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of browser sessions that match the specified criteria.</p>
    #   @return [Array<Types::BrowserSessionSummary>]
    # @!attribute next_token
    #   <p>The token to use in a subsequent <code>ListBrowserSessions</code> request to get the next set of results.</p>
    #   @return [String]
    class ListBrowserSessionsResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute code_interpreter_identifier
    #   <p>The unique identifier of the code interpreter to list sessions for. If specified, only sessions for this code interpreter are returned. If not specified, sessions for all code interpreters are returned.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 10. Valid values range from 1 to 100. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. If not specified, Amazon Bedrock returns the first page of results.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the code interpreter sessions to list. Valid values include ACTIVE, STOPPING, and STOPPED. If not specified, sessions with any status are returned.</p>
    #   @return [String]
    class ListCodeInterpreterSessionsRequest < Struct.new(
      :code_interpreter_identifier,
      :max_results,
      :next_token,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of code interpreter sessions that match the specified criteria.</p>
    #   @return [Array<Types::CodeInterpreterSessionSummary>]
    # @!attribute next_token
    #   <p>The token to use in a subsequent <code>ListCodeInterpreterSessions</code> request to get the next set of results.</p>
    #   @return [String]
    class ListCodeInterpreterSessionsResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The identifier of the AgentCore Memory resource for which to list events.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the session for which to list events. If specified, only events from this session are returned.</p>
    #   @return [String]
    # @!attribute actor_id
    #   <p>The identifier of the actor for which to list events. If specified, only events from this actor are returned.</p>
    #   @return [String]
    # @!attribute include_payloads
    #   <p>Specifies whether to include event payloads in the response. Set to true to include payloads, or false to exclude them.</p>
    #   @return [Boolean]
    # @!attribute filter
    #   <p>Filter criteria to apply when listing events.</p>
    #   @return [Types::FilterInput]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Minimum value of 1, maximum value of 100. Default is 20.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListEventsInput < Struct.new(
      :memory_id,
      :session_id,
      :actor_id,
      :include_payloads,
      :filter,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute events
    #   <p>The list of events that match the specified criteria.</p>
    #   @return [Array<Types::Event>]
    # @!attribute next_token
    #   <p>The token to use in a subsequent request to get the next set of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    class ListEventsOutput < Struct.new(
      :events,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The identifier of the AgentCore Memory resource for which to list memory records.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace to filter memory records by. If specified, only memory records in this namespace are returned.</p>
    #   @return [String]
    # @!attribute memory_strategy_id
    #   <p>The memory strategy identifier to filter memory records by. If specified, only memory records with this strategy ID are returned.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Minimum value of 1, maximum value of 100. Default is 20.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListMemoryRecordsInput < Struct.new(
      :memory_id,
      :namespace,
      :memory_strategy_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute memory_record_summaries
    #   <p>The list of memory record summaries that match the specified criteria.</p>
    #   @return [Array<Types::MemoryRecordSummary>]
    # @!attribute next_token
    #   <p>The token to use in a subsequent request to get the next set of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    class ListMemoryRecordsOutput < Struct.new(
      :memory_record_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The identifier of the AgentCore Memory resource for which to list sessions.</p>
    #   @return [String]
    # @!attribute actor_id
    #   <p>The identifier of the actor for which to list sessions. If specified, only sessions involving this actor are returned.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Minimum value of 1, maximum value of 100. Default is 20.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListSessionsInput < Struct.new(
      :memory_id,
      :actor_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute session_summaries
    #   <p>The list of session summaries that match the specified criteria.</p>
    #   @return [Array<Types::SessionSummary>]
    # @!attribute next_token
    #   <p>The token to use in a subsequent request to get the next set of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    class ListSessionsOutput < Struct.new(
      :session_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration for a stream that provides a visual representation of a browser session in Amazon Bedrock. This stream enables agents to observe the current state of the browser, including rendered web pages, visual elements, and the results of interactions.</p>
    # @!attribute stream_endpoint
    #   <p>The endpoint URL for the live view stream. This URL is used to establish a connection to receive visual updates from the browser session.</p>
    #   @return [String]
    class LiveViewStream < Struct.new(
      :stream_endpoint,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the content of a memory record.</p>
    # @!attribute text
    #   <p>The text content of the memory record.</p>
    #   @return [String]
    class MemoryContent < Struct.new(
      :text,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Text < MemoryContent; end
      class Unknown < MemoryContent; end
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
    class MemoryRecord < Struct.new(
      :memory_record_id,
      :content,
      :memory_strategy_id,
      :namespaces,
      :created_at,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class MemoryRecordSummary < Struct.new(
      :memory_record_id,
      :content,
      :memory_strategy_id,
      :namespaces,
      :created_at,
      :score,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Oauth2FlowType
      USER_FEDERATION = 'USER_FEDERATION'
      M2M = 'M2M'
    end

    # <p>Contains the payload content for an event.</p>
    # @!attribute conversational
    #   <p>The conversational content of the payload.</p>
    #   @return [Types::Conversational]
    # @!attribute blob
    #   <p>The binary content of the payload.</p>
    #   @return [JSON]
    class PayloadType < Struct.new(
      :conversational,
      :blob,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Conversational < PayloadType; end
      class Blob < PayloadType; end
      class Unknown < PayloadType; end
    end

    module ProgrammingLanguage
      PYTHON = 'python'
      JAVASCRIPT = 'javascript'
      TYPESCRIPT = 'typescript'
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
      :type,
      :uri,
      :mime_type,
      :text,
      :blob,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResourceContentType
      TEXT = 'text'
      BLOB = 'blob'
    end

    # <p>The exception that occurs when the specified resource does not exist. This can happen when using an invalid identifier or when trying to access a resource that has been deleted.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The identifier of the AgentCore Memory resource from which to retrieve memory records.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace to filter memory records by. If specified, only memory records in this namespace are searched.</p>
    #   @return [String]
    # @!attribute search_criteria
    #   <p>The search criteria to use for finding relevant memory records. This includes the search query, memory strategy ID, and other search parameters.</p>
    #   @return [Types::SearchCriteria]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Minimum value of 1, maximum value of 100. Default is 20.</p>
    #   @return [Integer]
    class RetrieveMemoryRecordsInput < Struct.new(
      :memory_id,
      :namespace,
      :search_criteria,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute memory_record_summaries
    #   <p>The list of memory record summaries that match the search criteria, ordered by relevance.</p>
    #   @return [Array<Types::MemoryRecordSummary>]
    # @!attribute next_token
    #   <p>The token to use in a subsequent request to get the next set of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    class RetrieveMemoryRecordsOutput < Struct.new(
      :memory_record_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Role
      ASSISTANT = 'ASSISTANT'
      USER = 'USER'
      TOOL = 'TOOL'
      OTHER = 'OTHER'
    end

    # <p>The exception that occurs when there is an error in the runtime client. This can happen due to network issues, invalid configuration, or other client-side problems. Check the error message for specific details about the error.</p>
    # @!attribute message
    #   @return [String]
    class RuntimeClientError < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class SearchCriteria < Struct.new(
      :search_query,
      :memory_strategy_id,
      :top_k,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:top_k] = 10 unless options.key?(:top_k)
        super
      end
    end

    # <p>The service encountered an internal error. Try your request again later.</p>
    # @!attribute message
    #   @return [String]
    class ServiceException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The exception that occurs when the request would cause a service quota to be exceeded. Review your service quotas and either reduce your request rate or request a quota increase.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :session_id,
      :actor_id,
      :created_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute browser_identifier
    #   <p>The unique identifier of the browser to use for this session. This identifier specifies which browser environment to initialize for the session.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the browser session. This name helps you identify and manage the session. The name does not need to be unique.</p>
    #   @return [String]
    # @!attribute session_timeout_seconds
    #   <p>The time in seconds after which the session automatically terminates if there is no activity. The default value is 3600 seconds (1 hour). The minimum allowed value is 60 seconds, and the maximum allowed value is 28800 seconds (8 hours).</p>
    #   @return [Integer]
    # @!attribute view_port
    #   <p>The dimensions of the browser viewport for this session. This determines the visible area of the web content and affects how web pages are rendered. If not specified, Amazon Bedrock uses a default viewport size.</p>
    #   @return [Types::ViewPort]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. This parameter helps prevent the creation of duplicate sessions if there are temporary network issues.</p>
    #   @return [String]
    class StartBrowserSessionRequest < Struct.new(
      :browser_identifier,
      :name,
      :session_timeout_seconds,
      :view_port,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :browser_identifier,
      :session_id,
      :created_at,
      :streams,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute code_interpreter_identifier
    #   <p>The unique identifier of the code interpreter to use for this session. This identifier specifies which code interpreter environment to initialize for the session.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the code interpreter session. This name helps you identify and manage the session. The name does not need to be unique.</p>
    #   @return [String]
    # @!attribute session_timeout_seconds
    #   <p>The time in seconds after which the session automatically terminates if there is no activity. The default value is 3600 seconds (1 hour). The minimum allowed value is 60 seconds, and the maximum allowed value is 28800 seconds (8 hours).</p>
    #   @return [Integer]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error. This parameter helps prevent the creation of duplicate sessions if there are temporary network issues.</p>
    #   @return [String]
    class StartCodeInterpreterSessionRequest < Struct.new(
      :code_interpreter_identifier,
      :name,
      :session_timeout_seconds,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :code_interpreter_identifier,
      :session_id,
      :created_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute browser_identifier
    #   <p>The unique identifier of the browser associated with the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the browser session to stop.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error.</p>
    #   @return [String]
    class StopBrowserSessionRequest < Struct.new(
      :browser_identifier,
      :session_id,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :browser_identifier,
      :session_id,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute code_interpreter_identifier
    #   <p>The unique identifier of the code interpreter associated with the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the code interpreter session to stop.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request, but does not return an error.</p>
    #   @return [String]
    class StopCodeInterpreterSessionRequest < Struct.new(
      :code_interpreter_identifier,
      :session_id,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :code_interpreter_identifier,
      :session_id,
      :last_updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about an update to a stream.</p>
    # @!attribute automation_stream_update
    #   <p>The update to an automation stream.</p>
    #   @return [Types::AutomationStreamUpdate]
    class StreamUpdate < Struct.new(
      :automation_stream_update,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class AutomationStreamUpdate < StreamUpdate; end
      class Unknown < StreamUpdate; end
    end

    module TaskStatus
      SUBMITTED = 'submitted'
      WORKING = 'working'
      COMPLETED = 'completed'
      CANCELED = 'canceled'
      FAILED = 'failed'
    end

    # <p>The request was denied due to request throttling. Reduce the frequency of requests and try again.</p>
    # @!attribute message
    #   @return [String]
    class ThrottledException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The exception that occurs when the request was denied due to request throttling. This happens when you exceed the allowed request rate for an operation. Reduce the frequency of requests or implement exponential backoff retry logic in your application.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The collection of arguments that specify the operation to perform and its parameters when invoking a tool in Amazon Bedrock. Different tools require different arguments, and this structure provides a flexible way to pass the appropriate arguments to each tool type.</p>
    # @!attribute code
    #   <p>The code to execute in a code interpreter session. This is the source code in the specified programming language that will be executed by the code interpreter.</p>
    #   @return [String]
    # @!attribute language
    #   <p>The programming language of the code to execute. This tells the code interpreter which language runtime to use for execution. Common values include 'python', 'javascript', and 'r'.</p>
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ToolName
      EXECUTE_CODE = 'executeCode'
      EXECUTE_COMMAND = 'executeCommand'
      READ_FILES = 'readFiles'
      LIST_FILES = 'listFiles'
      REMOVE_FILES = 'removeFiles'
      WRITE_FILES = 'writeFiles'
      START_COMMAND_EXECUTION = 'startCommandExecution'
      GET_TASK = 'getTask'
      STOP_TASK = 'stopTask'
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
      :task_id,
      :task_status,
      :stdout,
      :stderr,
      :exit_code,
      :execution_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the JWT bearer token is invalid or not found for OAuth bearer token based access</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :browser_identifier,
      :session_id,
      :stream_update,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute browser_identifier
    #   <p>The identifier of the browser.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the browser session.</p>
    #   @return [String]
    # @!attribute streams
    #   <p>The collection of streams associated with a browser session in Amazon Bedrock. These streams provide different ways to interact with and observe the browser session, including programmatic control and visual representation of the browser content.</p>
    #   @return [Types::BrowserSessionStream]
    # @!attribute updated_at
    #   <p>The time at which the browser stream was updated.</p>
    #   @return [Time]
    class UpdateBrowserStreamResponse < Struct.new(
      :browser_identifier,
      :session_id,
      :streams,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The exception that occurs when the input fails to satisfy the constraints specified by the service. Check the error message for details about which input parameter is invalid and correct your request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   @return [String]
    # @!attribute field_list
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Stores information about a field passed inside a request that resulted in an exception.</p>
    # @!attribute name
    #   <p>The name of the field.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message describing why this field failed validation.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ValidationExceptionReason
      CANNOT_PARSE = 'CannotParse'
      FIELD_VALIDATION_FAILED = 'FieldValidationFailed'
      IDEMPOTENT_PARAMETER_MISMATCH_EXCEPTION = 'IdempotentParameterMismatchException'
      ROOT_EVENT_IN_OTHER_SESSION = 'EventInOtherSession'
      RESOURCE_CONFLICT = 'ResourceConflict'
    end

    # <p>The configuration that defines the dimensions of a browser viewport in a browser session. The viewport determines the visible area of web content and affects how web pages are rendered and displayed. Proper viewport configuration ensures that web content is displayed correctly for the agent's browsing tasks.</p>
    # @!attribute width
    #   <p>The width of the viewport in pixels. This value determines the horizontal dimension of the visible area. Valid values range from 800 to 1920 pixels.</p>
    #   @return [Integer]
    # @!attribute height
    #   <p>The height of the viewport in pixels. This value determines the vertical dimension of the visible area. Valid values range from 600 to 1080 pixels.</p>
    #   @return [Integer]
    class ViewPort < Struct.new(
      :width,
      :height,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end

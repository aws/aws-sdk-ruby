# frozen_string_literal: true

# This is generated code!

module Aws::AgentRegistry
  # This module contains the types returned by client operations.
  module Types

    # <p> Descriptor that defines the content of an A2A (Agent-to-Agent) agent card registry record. The content is validated against the A2A protocol schema.</p>
    # @!attribute data
    #   <p> The A2A agent card content, serialized as descriptor payload data.</p>
    #   @return [String]
    # @!attribute data_schema_version
    #   <p> The schema version of the descriptor payload.</p>
    #   @return [String]
    # @!attribute source
    #   <p> The source location from which the A2A (Agent-to-Agent) agent card descriptor content was retrieved.</p>
    #   @return [Types::DescriptorSource]
    class A2aAgentCardDescriptor < Struct.new(
      nil,
      :data,
      :data_schema_version,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The caller is not authorized to perform the requested action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A descriptor for a registry record that exposes an AG-UI protocol endpoint. This descriptor is source-only: it identifies where the endpoint is located and carries no descriptor payload data or schema version.</p>
    # @!attribute source
    #   <p> The source location of the AG-UI protocol endpoint.</p>
    #   @return [Types::DescriptorSource]
    class AgUiDescriptor < Struct.new(
      nil,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Additional data for an agent skills definition descriptor.</p>
    # @!attribute skill_md
    #   <p> The agent skills markdown descriptor associated with the agent skills definition.</p>
    #   @return [Types::AgentSkillsMdDescriptor]
    class AgentSkillsAdditionalData < Struct.new(
      nil,
      :skill_md,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Descriptor that defines an agent skills registry record and its associated content.</p>
    # @!attribute data
    #   <p> The agent skills definition content, serialized as descriptor payload data.</p>
    #   @return [String]
    # @!attribute data_schema_version
    #   <p> The schema version of the descriptor payload.</p>
    #   @return [String]
    # @!attribute additional_data
    #   <p> Additional data for the agent skills definition, such as the skills markdown descriptor.</p>
    #   @return [Types::AgentSkillsAdditionalData]
    class AgentSkillsDefinitionDescriptor < Struct.new(
      nil,
      :data,
      :data_schema_version,
      :additional_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Markdown-format descriptor containing an agent skills document.</p>
    # @!attribute data
    #   <p> The agent skills markdown content, serialized as descriptor payload data.</p>
    #   @return [String]
    # @!attribute data_schema_version
    #   <p> The schema version of the descriptor payload.</p>
    #   @return [String]
    # @!attribute source
    #   <p> The source location from which the agent skills markdown content was retrieved.</p>
    #   @return [Types::DescriptorSource]
    class AgentSkillsMdDescriptor < Struct.new(
      nil,
      :data,
      :data_schema_version,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Describes why a requested record could not be retrieved.</p>
    # @!attribute registry_id
    #   <p> The identifier of the registry the record was requested from, echoed from the request.</p>
    #   @return [String]
    # @!attribute record_id
    #   <p> The identifier of the record that could not be retrieved, echoed from the request in the same format that you supplied (ARN or record ID).</p>
    #   @return [String]
    # @!attribute error_code
    #   <p> The machine-readable reason that the record could not be retrieved.</p>
    #   @return [String]
    # @!attribute message
    #   <p> An optional human-readable detail about the error. Do not parse this value programmatically.</p>
    #   @return [String]
    class BatchGetDiscoverableRegistryRecordError < Struct.new(
      nil,
      :registry_id,
      :record_id,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entries
    #   <p> The registry-scoped groups of record IDs to retrieve. Currently, you can specify exactly one entry.</p>
    #   @return [Array<Types::RegistryRecordsEntry>]
    class BatchGetDiscoverableRegistryRecordRequest < Struct.new(
      nil,
      :entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_records
    #   <p> The records that were successfully retrieved. Each record correlates to the request by its <code>recordId</code>.</p>
    #   @return [Array<Types::RegistryRecordSummary>]
    # @!attribute errors
    #   <p> The per-record errors for records that could not be retrieved. This list is empty when all requested records were returned.</p>
    #   @return [Array<Types::BatchGetDiscoverableRegistryRecordError>]
    class BatchGetDiscoverableRegistryRecordResponse < Struct.new(
      nil,
      :registry_records,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Custom descriptor for user-defined content</p>
    # @!attribute data
    #   <p>The custom descriptor content, serialized as descriptor payload data.</p>
    #   @return [String]
    class CustomDescriptor < Struct.new(
      nil,
      :data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The source location from which a descriptor's content was retrieved.</p>
    # @!attribute from_url
    #   <p> The URL-based descriptor source, populated when descriptor content is synchronized from a URL.</p>
    #   @return [Types::DescriptorSourceFromUrl]
    class DescriptorSource < Struct.new(
      nil,
      :from_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A URL-based descriptor source that identifies where descriptor content is retrieved from.</p>
    # @!attribute url
    #   <p> The URL from which the descriptor content is retrieved.</p>
    #   @return [String]
    class DescriptorSourceFromUrl < Struct.new(
      nil,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The protocol-specific descriptors that describe how to connect to and use the registry record.</p>
    # @!attribute mcp_server
    #   <p> The MCP server descriptor, populated when the record type is MCP.</p>
    #   @return [Types::McpServerDescriptor]
    # @!attribute a2a_agent_card
    #   <p> The A2A agent card descriptor, populated when the record type is AGENT.</p>
    #   @return [Types::A2aAgentCardDescriptor]
    # @!attribute agent_skills_definition
    #   <p> The agent skills definition descriptor, populated when the record type is SKILL.</p>
    #   @return [Types::AgentSkillsDefinitionDescriptor]
    # @!attribute custom
    #   <p> The custom descriptor, populated when the record type is CUSTOM.</p>
    #   @return [Types::CustomDescriptor]
    # @!attribute http
    #   <p> The HTTP descriptor, populated when the record exposes an HTTP endpoint.</p>
    #   @return [Types::HttpDescriptor]
    # @!attribute agui
    #   <p> The AG-UI descriptor, populated when the record exposes an AG-UI protocol endpoint.</p>
    #   @return [Types::AgUiDescriptor]
    class Descriptors < Struct.new(
      nil,
      :mcp_server,
      :a2a_agent_card,
      :agent_skills_definition,
      :custom,
      :http,
      :agui,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Summary information about a discoverable registry record returned by <code> ListDiscoverableRegistryRecords</code>. This summary does not include descriptors.</p>
    # @!attribute registry_arn
    #   <p> The Amazon Resource Name (ARN) of the parent registry that owns the record.</p>
    #   @return [String]
    # @!attribute record_arn
    #   <p> The Amazon Resource Name (ARN) of the registry record.</p>
    #   @return [String]
    # @!attribute record_id
    #   <p> The unique identifier of the registry record.</p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the registry record. Names are unique within a registry.</p>
    #   @return [String]
    # @!attribute description
    #   <p> A human-readable description of the registry record. Use this field to explain the record's purpose or content to consumers discovering it in the registry.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p> The human-readable display name of the registry record.</p>
    #   @return [String]
    # @!attribute record_type
    #   <p> The type of the registry record. <code>MCP</code> is a Model Context Protocol server record, <code>AGENT</code> is an Agent-to-Agent (A2A) agent card record, <code>SKILL</code> is an agent skills definition record, and <code>CUSTOM</code> is a record with a custom descriptor.</p>
    #   @return [String]
    # @!attribute record_version
    #   <p> The version identifier of the registry record.</p>
    #   @return [String]
    # @!attribute status
    #   <p> The lifecycle status of the registry record. A record is <code>DRAFT</code> before it is submitted, <code>PENDING_APPROVAL</code> while awaiting curator review, and <code>APPROVED</code> once it is approved and discoverable. <code>REJECTED</code> and <code>DEPRECATED</code> records are not discoverable. The <code>CREATING</code>, <code>UPDATING</code>, <code>CREATE_FAILED</code>, and <code>UPDATE_FAILED</code> values reflect the state of an in-progress or failed asynchronous change.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The timestamp when the registry record was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p> The timestamp when the registry record was last updated.</p>
    #   @return [Time]
    # @!attribute descriptor_types
    #   <p> The descriptor types that are present on this registry record. Each value corresponds to a descriptor entry key on the approved record.</p>
    #   @return [Array<String>]
    class DiscoverableRegistryRecordSummary < Struct.new(
      nil,
      :registry_arn,
      :record_arn,
      :record_id,
      :name,
      :description,
      :display_name,
      :record_type,
      :record_version,
      :status,
      :created_at,
      :updated_at,
      :descriptor_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A descriptor for a registry record that exposes an HTTP endpoint. This descriptor is source-only: it identifies where the endpoint is located and carries no descriptor payload data or schema version.</p>
    # @!attribute source
    #   <p> The source location of the HTTP endpoint.</p>
    #   @return [Types::DescriptorSource]
    class HttpDescriptor < Struct.new(
      nil,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed due to an unexpected internal error; the caller may retry.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p> The identifier of the registry whose discoverable records are listed. You can provide either the full Amazon Resource Name (ARN) or the registry ID.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of records to return in a single page. Valid values are 1 through 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The pagination token returned by a previous request. Use this value to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute filters
    #   <p> The filters to apply to the discoverable registry record list.</p>
    #   @return [Array<Types::RegistryRecordFilter>]
    class ListDiscoverableRegistryRecordsRequest < Struct.new(
      nil,
      :registry_id,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_records
    #   <p> The page of discoverable registry record summaries.</p>
    #   @return [Array<Types::DiscoverableRegistryRecordSummary>]
    # @!attribute next_token
    #   <p> The pagination token to pass to a subsequent request to retrieve the next page of results. This field is absent when there are no more results.</p>
    #   @return [String]
    class ListDiscoverableRegistryRecordsResponse < Struct.new(
      nil,
      :registry_records,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Additional data for an MCP server descriptor</p>
    # @!attribute tools
    #   <p>The MCP tools descriptor that defines the tools exposed by the MCP server.</p>
    #   @return [Types::McpToolsDescriptor]
    class McpServerAdditionalData < Struct.new(
      nil,
      :tools,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Descriptor that defines the content of an MCP (Model Context Protocol) server registry record, including the server definition and its tool definitions. The content is validated against the MCP protocol schema.</p>
    # @!attribute data
    #   <p> The MCP server descriptor content, serialized as descriptor payload data.</p>
    #   @return [String]
    # @!attribute data_schema_version
    #   <p> The schema version of the descriptor payload.</p>
    #   @return [String]
    # @!attribute additional_data
    #   <p> Additional data associated with the MCP server descriptor, such as tool definitions.</p>
    #   @return [Types::McpServerAdditionalData]
    # @!attribute source
    #   <p> The source location from which the MCP (Model Context Protocol) server descriptor content was retrieved.</p>
    #   @return [Types::DescriptorSource]
    class McpServerDescriptor < Struct.new(
      nil,
      :data,
      :data_schema_version,
      :additional_data,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>MCP tools descriptor containing tool definitions</p>
    # @!attribute data
    #   <p>The MCP tools descriptor content, serialized as descriptor payload data.</p>
    #   @return [String]
    # @!attribute data_schema_version
    #   <p>The schema version of the descriptor payload.</p>
    #   @return [String]
    class McpToolsDescriptor < Struct.new(
      nil,
      :data,
      :data_schema_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A single filter applied to a <code>ListDiscoverableRegistryRecords</code> request.</p>
    # @!attribute name
    #   <p> The attribute to filter on.</p>
    #   @return [String]
    # @!attribute values
    #   <p> The values to match for the attribute.</p>
    #   @return [Array<String>]
    class RegistryRecordFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Summary information about a registry record, including its descriptors.</p>
    # @!attribute registry_arn
    #   <p> The Amazon Resource Name (ARN) of the parent registry that owns the record.</p>
    #   @return [String]
    # @!attribute record_arn
    #   <p> The Amazon Resource Name (ARN) of the registry record.</p>
    #   @return [String]
    # @!attribute record_id
    #   <p> The unique identifier of the registry record.</p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the registry record. Names are unique within a registry.</p>
    #   @return [String]
    # @!attribute description
    #   <p> A human-readable description of the registry record. Use this field to explain the record's purpose or content to consumers discovering it in the registry.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p> The human-readable display name of the registry record.</p>
    #   @return [String]
    # @!attribute record_type
    #   <p> The type of the registry record. <code>MCP</code> is a Model Context Protocol server record, <code>AGENT</code> is an Agent-to-Agent (A2A) agent card record, <code>SKILL</code> is an agent skills definition record, and <code>CUSTOM</code> is a record with a custom descriptor.</p>
    #   @return [String]
    # @!attribute descriptors
    #   <p> The protocol-specific descriptors that describe how to connect to and use the record.</p>
    #   @return [Types::Descriptors]
    # @!attribute record_version
    #   <p> The version identifier of the registry record.</p>
    #   @return [String]
    # @!attribute status
    #   <p> The lifecycle status of the registry record. A record is <code>DRAFT</code> before it is submitted, <code>PENDING_APPROVAL</code> while awaiting curator review, and <code>APPROVED</code> once it is approved and discoverable. <code>REJECTED</code> and <code>DEPRECATED</code> records are not discoverable. The <code>CREATING</code>, <code>UPDATING</code>, <code>CREATE_FAILED</code>, and <code>UPDATE_FAILED</code> values reflect the state of an in-progress or failed asynchronous change.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The timestamp when the registry record was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p> The timestamp when the registry record was last updated.</p>
    #   @return [Time]
    # @!attribute custom_metadata
    #   <p> The custom metadata attached to this registry record. Values are strings (maximum 128 characters) or booleans. This field is only present if the registry has a custom metadata schema configured.</p>
    #   @return [JSON]
    class RegistryRecordSummary < Struct.new(
      nil,
      :registry_arn,
      :record_arn,
      :record_id,
      :name,
      :description,
      :display_name,
      :record_type,
      :descriptors,
      :record_version,
      :status,
      :created_at,
      :updated_at,
      :custom_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Binds one registry to the record IDs requested from it.</p>
    # @!attribute registry_id
    #   <p> The identifier of the registry to retrieve the records from. You can provide either the full Amazon Resource Name (ARN) or the registry ID.</p>
    #   @return [String]
    # @!attribute record_ids
    #   <p> The record IDs to retrieve from the registry. You can specify 1 through 100 record IDs.</p>
    #   @return [Array<String>]
    class RegistryRecordsEntry < Struct.new(
      nil,
      :registry_id,
      :record_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource was not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute search_query
    #   <p> The natural language query to search for matching registry records.</p>
    #   @return [String]
    # @!attribute registry_ids
    #   <p> The registry identifiers to search within. Currently, you must specify exactly one registry identifier. You can provide either the full Amazon Web Services Resource Name (ARN) or the registry ID.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p> The maximum number of results to return. Valid values are 1 through 20. The default value is 10.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p> An optional structured JSON metadata filter that narrows the search results. Supports the field-level operators <code>$eq</code>, <code>$ne</code>, and <code>$in</code>, and the logical operators <code>$and</code> and <code>$or</code> on filterable fields.</p> <p> Specifies additional filtering on custom metadata fields using the <code>customMetadata.{key}</code> prefix. For example, to filter by a custom metadata field: <code>{"customMetadata.environment": {"$eq": "production"}}</code>. For a Boolean field, you can also use a native JSON boolean value, for example: <code>{"customMetadata.requiresApproval": {"$eq": true}}</code>.</p>
    #   @return [JSON]
    class SearchDiscoverableRegistryRecordsRequest < Struct.new(
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
    #   <p> The registry records that match the search query, ordered by relevance.</p>
    #   @return [Array<Types::RegistryRecordSummary>]
    class SearchDiscoverableRegistryRecordsResponse < Struct.new(
      nil,
      :registry_records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling; the caller may retry after a delay.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be authenticated.</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed validation of one or more input fields.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason the request failed validation.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The list of input fields that failed validation.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:reason] = 'FieldValidationFailed' unless options.key?(:reason)
        super
      end
    end

    # <p>Describes a single input field that failed validation.</p>
    # @!attribute name
    #   <p>The name of the field that failed validation.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of why the field failed validation.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end

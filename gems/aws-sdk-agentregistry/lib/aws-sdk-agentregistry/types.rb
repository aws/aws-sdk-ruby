# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AgentRegistry
  module Types

    # Base mixin for A2A agent card descriptor content
    #
    # @!attribute [rw] data
    #   Descriptor payload data
    #   @return [String]
    #
    # @!attribute [rw] data_schema_version
    #   Version of the descriptor type schema
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source location from which the A2A (Agent-to-Agent) agent card
    #   descriptor content was retrieved.
    #   @return [Types::DescriptorSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/A2aAgentCardDescriptor AWS API Documentation
    #
    class A2aAgentCardDescriptor < Struct.new(
      :data,
      :data_schema_version,
      :source)
      SENSITIVE = [:data]
      include Aws::Structure
    end

    # The caller is not authorized to perform the requested action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional data for an agent skills definition descriptor.
    #
    # @!attribute [rw] skill_md
    #   Base mixin for agent skills markdown descriptor content
    #   @return [Types::AgentSkillsMdDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/AgentSkillsAdditionalData AWS API Documentation
    #
    class AgentSkillsAdditionalData < Struct.new(
      :skill_md)
      SENSITIVE = []
      include Aws::Structure
    end

    # Base mixin for agent skills definition descriptor content
    #
    # @!attribute [rw] data
    #   Descriptor payload data
    #   @return [String]
    #
    # @!attribute [rw] data_schema_version
    #   Version of the descriptor type schema
    #   @return [String]
    #
    # @!attribute [rw] additional_data
    #   Additional data for the agent skills definition, such as the skills
    #   markdown descriptor.
    #   @return [Types::AgentSkillsAdditionalData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/AgentSkillsDefinitionDescriptor AWS API Documentation
    #
    class AgentSkillsDefinitionDescriptor < Struct.new(
      :data,
      :data_schema_version,
      :additional_data)
      SENSITIVE = [:data]
      include Aws::Structure
    end

    # Base mixin for agent skills markdown descriptor content
    #
    # @!attribute [rw] data
    #   Descriptor payload data
    #   @return [String]
    #
    # @!attribute [rw] data_schema_version
    #   Version of the descriptor type schema
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source location from which the agent skills markdown content was
    #   retrieved.
    #   @return [Types::DescriptorSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/AgentSkillsMdDescriptor AWS API Documentation
    #
    class AgentSkillsMdDescriptor < Struct.new(
      :data,
      :data_schema_version,
      :source)
      SENSITIVE = [:data]
      include Aws::Structure
    end

    # Describes why a requested record could not be retrieved.
    #
    # @!attribute [rw] registry_id
    #   Registry identifier that accepts either ARN or ID format
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   Record identifier that accepts either ARN or ID format
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The machine-readable reason that the record could not be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   An optional human-readable detail about the error. Do not parse this
    #   value programmatically.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/BatchGetDiscoverableRegistryRecordError AWS API Documentation
    #
    class BatchGetDiscoverableRegistryRecordError < Struct.new(
      :registry_id,
      :record_id,
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entries
    #   The registry-scoped groups of record IDs to retrieve. Currently, you
    #   can specify exactly one entry.
    #   @return [Array<Types::RegistryRecordsEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/BatchGetDiscoverableRegistryRecordRequest AWS API Documentation
    #
    class BatchGetDiscoverableRegistryRecordRequest < Struct.new(
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_records
    #   The records that were successfully retrieved. Each record correlates
    #   to the request by its `recordId`.
    #   @return [Array<Types::RegistryRecordSummary>]
    #
    # @!attribute [rw] errors
    #   The per-record errors for records that could not be retrieved. This
    #   list is empty when all requested records were returned.
    #   @return [Array<Types::BatchGetDiscoverableRegistryRecordError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/BatchGetDiscoverableRegistryRecordResponse AWS API Documentation
    #
    class BatchGetDiscoverableRegistryRecordResponse < Struct.new(
      :registry_records,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Custom descriptor for user-defined content
    #
    # @!attribute [rw] data
    #   Descriptor payload data
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/CustomDescriptor AWS API Documentation
    #
    class CustomDescriptor < Struct.new(
      :data)
      SENSITIVE = [:data]
      include Aws::Structure
    end

    # The source location from which a descriptor's content was retrieved.
    #
    # @!attribute [rw] from_url
    #   Base mixin for descriptor source from URL
    #   @return [Types::DescriptorSourceFromUrl]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/DescriptorSource AWS API Documentation
    #
    class DescriptorSource < Struct.new(
      :from_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Base mixin for descriptor source from URL
    #
    # @!attribute [rw] url
    #   URL source for descriptor content
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/DescriptorSourceFromUrl AWS API Documentation
    #
    class DescriptorSourceFromUrl < Struct.new(
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The protocol-specific descriptors that describe how to connect to and
    # use the registry record.
    #
    # @!attribute [rw] mcp_server
    #   Base mixin for MCP server descriptor content
    #   @return [Types::McpServerDescriptor]
    #
    # @!attribute [rw] a2a_agent_card
    #   Base mixin for A2A agent card descriptor content
    #   @return [Types::A2aAgentCardDescriptor]
    #
    # @!attribute [rw] agent_skills_definition
    #   Base mixin for agent skills definition descriptor content
    #   @return [Types::AgentSkillsDefinitionDescriptor]
    #
    # @!attribute [rw] custom
    #   Custom descriptor for user-defined content
    #   @return [Types::CustomDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/Descriptors AWS API Documentation
    #
    class Descriptors < Struct.new(
      :mcp_server,
      :a2a_agent_card,
      :agent_skills_definition,
      :custom)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a discoverable registry record returned by `
    # ListDiscoverableRegistryRecords`. This summary does not include
    # descriptors.
    #
    # @!attribute [rw] registry_arn
    #   Registry Amazon Resource Name
    #   @return [String]
    #
    # @!attribute [rw] record_arn
    #   Registry Record Amazon Resource Name
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   Registry Record unique identifier - 12-character alphanumeric string
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Registry Record name
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   Display name for a registry record
    #   @return [String]
    #
    # @!attribute [rw] record_type
    #   Record type enum for registry record classification
    #   @return [String]
    #
    # @!attribute [rw] record_version
    #   Version of the registry record
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Registry record status
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp in ISO 8601 date-time format
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp in ISO 8601 date-time format
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/DiscoverableRegistryRecordSummary AWS API Documentation
    #
    class DiscoverableRegistryRecordSummary < Struct.new(
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
      :updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The request failed due to an unexpected internal error; the caller may
    # retry.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   Registry identifier that accepts either ARN or ID format
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to return in a single page. Valid
    #   values are 1 through 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token returned by a previous request. Use this value
    #   to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The filters to apply to the discoverable registry record list.
    #   @return [Array<Types::RegistryRecordFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/ListDiscoverableRegistryRecordsRequest AWS API Documentation
    #
    class ListDiscoverableRegistryRecordsRequest < Struct.new(
      :registry_id,
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_records
    #   The page of discoverable registry record summaries.
    #   @return [Array<Types::DiscoverableRegistryRecordSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to pass to a subsequent request to retrieve the
    #   next page of results. This field is absent when there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/ListDiscoverableRegistryRecordsResponse AWS API Documentation
    #
    class ListDiscoverableRegistryRecordsResponse < Struct.new(
      :registry_records,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional data for an MCP server descriptor
    #
    # @!attribute [rw] tools
    #   MCP tools descriptor containing tool definitions
    #   @return [Types::McpToolsDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/McpServerAdditionalData AWS API Documentation
    #
    class McpServerAdditionalData < Struct.new(
      :tools)
      SENSITIVE = []
      include Aws::Structure
    end

    # Base mixin for MCP server descriptor content
    #
    # @!attribute [rw] data
    #   Descriptor payload data
    #   @return [String]
    #
    # @!attribute [rw] data_schema_version
    #   Version of the descriptor type schema
    #   @return [String]
    #
    # @!attribute [rw] additional_data
    #   Additional data for an MCP server descriptor
    #   @return [Types::McpServerAdditionalData]
    #
    # @!attribute [rw] source
    #   The source location from which the MCP (Model Context Protocol)
    #   server descriptor content was retrieved.
    #   @return [Types::DescriptorSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/McpServerDescriptor AWS API Documentation
    #
    class McpServerDescriptor < Struct.new(
      :data,
      :data_schema_version,
      :additional_data,
      :source)
      SENSITIVE = [:data]
      include Aws::Structure
    end

    # MCP tools descriptor containing tool definitions
    #
    # @!attribute [rw] data
    #   Descriptor payload data
    #   @return [String]
    #
    # @!attribute [rw] data_schema_version
    #   Version of the descriptor type schema
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/McpToolsDescriptor AWS API Documentation
    #
    class McpToolsDescriptor < Struct.new(
      :data,
      :data_schema_version)
      SENSITIVE = [:data]
      include Aws::Structure
    end

    # A single filter applied to a `ListDiscoverableRegistryRecords`
    # request.
    #
    # @!attribute [rw] name
    #   The attribute to filter on.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to match for the attribute.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/RegistryRecordFilter AWS API Documentation
    #
    class RegistryRecordFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a registry record, including its
    # descriptors.
    #
    # @!attribute [rw] registry_arn
    #   Registry Amazon Resource Name
    #   @return [String]
    #
    # @!attribute [rw] record_arn
    #   Registry Record Amazon Resource Name
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   Registry Record unique identifier - 12-character alphanumeric string
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Registry Record name
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the Resource
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   Display name for a registry record
    #   @return [String]
    #
    # @!attribute [rw] record_type
    #   Record type enum for registry record classification
    #   @return [String]
    #
    # @!attribute [rw] descriptors
    #   The protocol-specific descriptors that describe how to connect to
    #   and use the record.
    #   @return [Types::Descriptors]
    #
    # @!attribute [rw] record_version
    #   Version of the registry record
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Registry record status
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp in ISO 8601 date-time format
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp in ISO 8601 date-time format
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/RegistryRecordSummary AWS API Documentation
    #
    class RegistryRecordSummary < Struct.new(
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
      :updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Binds one registry to the record IDs requested from it.
    #
    # @!attribute [rw] registry_id
    #   Registry identifier that accepts either ARN or ID format
    #   @return [String]
    #
    # @!attribute [rw] record_ids
    #   The record IDs to retrieve from the registry. You can specify 1
    #   through 100 record IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/RegistryRecordsEntry AWS API Documentation
    #
    class RegistryRecordsEntry < Struct.new(
      :registry_id,
      :record_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] search_query
    #   The natural language query to search for matching registry records.
    #   @return [String]
    #
    # @!attribute [rw] registry_ids
    #   The registry identifiers to search within. Currently, you must
    #   specify exactly one registry identifier. You can provide either the
    #   full Amazon Web Services Resource Name (ARN) or the registry ID.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Valid values are 1 through
    #   20. The default value is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   An optional structured JSON metadata filter that narrows the search
    #   results. Supports the field-level operators `$eq`, `$ne`, and `$in`,
    #   and the logical operators `$and` and `$or` on filterable fields.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/SearchDiscoverableRegistryRecordsRequest AWS API Documentation
    #
    class SearchDiscoverableRegistryRecordsRequest < Struct.new(
      :search_query,
      :registry_ids,
      :max_results,
      :filters)
      SENSITIVE = [:search_query, :filters]
      include Aws::Structure
    end

    # @!attribute [rw] registry_records
    #   The registry records that match the search query, ordered by
    #   relevance.
    #   @return [Array<Types::RegistryRecordSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/SearchDiscoverableRegistryRecordsResponse AWS API Documentation
    #
    class SearchDiscoverableRegistryRecordsResponse < Struct.new(
      :registry_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling; the caller may retry
    # after a delay.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be authenticated.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed validation of one or more input fields.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason the request failed validation.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The list of input fields that failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a single input field that failed validation.
    #
    # @!attribute [rw] name
    #   The name of the field that failed validation.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of why the field failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end


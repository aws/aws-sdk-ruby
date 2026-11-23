# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AgentRegistry
  module Types

    # Descriptor that defines the content of an A2A (Agent-to-Agent) agent
    # card registry record. The content is validated against the A2A
    # protocol schema.
    #
    # @!attribute [rw] data
    #   The A2A agent card content, serialized as descriptor payload data.
    #   @return [String]
    #
    # @!attribute [rw] data_schema_version
    #   The schema version of the descriptor payload.
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

    # A descriptor for a registry record that exposes an AG-UI protocol
    # endpoint. This descriptor is source-only: it identifies where the
    # endpoint is located and carries no descriptor payload data or schema
    # version.
    #
    # @!attribute [rw] source
    #   The source location of the AG-UI protocol endpoint.
    #   @return [Types::DescriptorSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/AgUiDescriptor AWS API Documentation
    #
    class AgUiDescriptor < Struct.new(
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional data for an agent skills definition descriptor.
    #
    # @!attribute [rw] skill_md
    #   The agent skills markdown descriptor associated with the agent
    #   skills definition.
    #   @return [Types::AgentSkillsMdDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/AgentSkillsAdditionalData AWS API Documentation
    #
    class AgentSkillsAdditionalData < Struct.new(
      :skill_md)
      SENSITIVE = []
      include Aws::Structure
    end

    # Descriptor that defines an agent skills registry record and its
    # associated content.
    #
    # @!attribute [rw] data
    #   The agent skills definition content, serialized as descriptor
    #   payload data.
    #   @return [String]
    #
    # @!attribute [rw] data_schema_version
    #   The schema version of the descriptor payload.
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

    # Markdown-format descriptor containing an agent skills document.
    #
    # @!attribute [rw] data
    #   The agent skills markdown content, serialized as descriptor payload
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] data_schema_version
    #   The schema version of the descriptor payload.
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
    #   The identifier of the registry the record was requested from, echoed
    #   from the request.
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   The identifier of the record that could not be retrieved, echoed
    #   from the request in the same format that you supplied (ARN or record
    #   ID).
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
    #   The custom descriptor content, serialized as descriptor payload
    #   data.
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
    #   The URL-based descriptor source, populated when descriptor content
    #   is synchronized from a URL.
    #   @return [Types::DescriptorSourceFromUrl]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/DescriptorSource AWS API Documentation
    #
    class DescriptorSource < Struct.new(
      :from_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # A URL-based descriptor source that identifies where descriptor content
    # is retrieved from.
    #
    # @!attribute [rw] url
    #   The URL from which the descriptor content is retrieved. For an agent
    #   skill that synchronizes its SKILL.md from GitHub, this is the GitHub
    #   folder URL. The data plane doesn't return Amazon S3 (`s3://`)
    #   source URLs.
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
    #   The MCP server descriptor, populated when the record type is MCP.
    #   @return [Types::McpServerDescriptor]
    #
    # @!attribute [rw] a2a_agent_card
    #   The A2A agent card descriptor, populated when the record type is
    #   AGENT.
    #   @return [Types::A2aAgentCardDescriptor]
    #
    # @!attribute [rw] agent_skills_definition
    #   The agent skills definition descriptor, populated when the record
    #   type is SKILL.
    #   @return [Types::AgentSkillsDefinitionDescriptor]
    #
    # @!attribute [rw] custom
    #   The custom descriptor, populated when the record type is CUSTOM.
    #   @return [Types::CustomDescriptor]
    #
    # @!attribute [rw] http
    #   The HTTP descriptor, populated when the record exposes an HTTP
    #   endpoint.
    #   @return [Types::HttpDescriptor]
    #
    # @!attribute [rw] agui
    #   The AG-UI descriptor, populated when the record exposes an AG-UI
    #   protocol endpoint.
    #   @return [Types::AgUiDescriptor]
    #
    # @!attribute [rw] signature_agent_card
    #   The signature agent card descriptor, populated when the record
    #   represents a web bot. It identifies the JSON Web Key Set (JWKS) used
    #   to verify the bot's HTTP message signatures.
    #   @return [Types::SignatureAgentCardDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/Descriptors AWS API Documentation
    #
    class Descriptors < Struct.new(
      :mcp_server,
      :a2a_agent_card,
      :agent_skills_definition,
      :custom,
      :http,
      :agui,
      :signature_agent_card)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a discoverable registry record returned by `
    # ListDiscoverableRegistryRecords`. This summary does not include
    # descriptors.
    #
    # @!attribute [rw] registry_arn
    #   The Amazon Resource Name (ARN) of the parent registry that owns the
    #   record.
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
    #   The name of the registry record. Names are unique within a registry.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A human-readable description of the registry record. Use this field
    #   to explain the record's purpose or content to consumers discovering
    #   it in the registry.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The human-readable display name of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] record_type
    #   The type of the registry record. `MCP` is a Model Context Protocol
    #   server record, `AGENT` is an Agent-to-Agent (A2A) agent card record,
    #   `SKILL` is an agent skills definition record, and `CUSTOM` is a
    #   record with a custom descriptor.
    #   @return [String]
    #
    # @!attribute [rw] record_version
    #   The version identifier of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The lifecycle status of the registry record. A record is `DRAFT`
    #   before it is submitted, `PENDING_APPROVAL` while awaiting curator
    #   review, and `APPROVED` once it is approved and discoverable.
    #   `REJECTED` and `DEPRECATED` records are not discoverable. The
    #   `CREATING`, `UPDATING`, `CREATE_FAILED`, and `UPDATE_FAILED` values
    #   reflect the state of an in-progress or failed asynchronous change.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the registry record was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the registry record was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] descriptor_types
    #   The descriptor types that are present on this registry record. Each
    #   value corresponds to a descriptor entry key on the approved record.
    #   @return [Array<String>]
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
      :updated_at,
      :descriptor_types)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # A descriptor for a registry record that exposes an HTTP endpoint. This
    # descriptor is source-only: it identifies where the endpoint is located
    # and carries no descriptor payload data or schema version.
    #
    # @!attribute [rw] source
    #   The source location of the HTTP endpoint.
    #   @return [Types::DescriptorSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/HttpDescriptor AWS API Documentation
    #
    class HttpDescriptor < Struct.new(
      :source)
      SENSITIVE = []
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
    #   The identifier of the registry whose discoverable records are
    #   listed. You can provide either the full Amazon Resource Name (ARN)
    #   or the registry ID.
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
    #   The MCP tools descriptor that defines the tools exposed by the MCP
    #   server.
    #   @return [Types::McpToolsDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/McpServerAdditionalData AWS API Documentation
    #
    class McpServerAdditionalData < Struct.new(
      :tools)
      SENSITIVE = []
      include Aws::Structure
    end

    # Descriptor that defines the content of an MCP (Model Context Protocol)
    # server registry record, including the server definition and its tool
    # definitions. The content is validated against the MCP protocol schema.
    #
    # @!attribute [rw] data
    #   The MCP server descriptor content, serialized as descriptor payload
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] data_schema_version
    #   The schema version of the descriptor payload.
    #   @return [String]
    #
    # @!attribute [rw] additional_data
    #   Additional data associated with the MCP server descriptor, such as
    #   tool definitions.
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
    #   The MCP tools descriptor content, serialized as descriptor payload
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] data_schema_version
    #   The schema version of the descriptor payload.
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

    # The skill package of a registry record, as a short-lived download URL
    # and the package's SHA-256 checksum. Responses never include the
    # package bytes.
    #
    # @!attribute [rw] sha256
    #   The SHA-256 checksum of the package, as 64 lowercase hexadecimal
    #   characters. The download response carries no signature that you can
    #   check, so compare the checksum of the file that you download with
    #   this value before you use the package.
    #   @return [String]
    #
    # @!attribute [rw] download_url
    #   A presigned Amazon S3 URL that downloads the package. The URL is
    #   valid for up to 5 minutes, and the response doesn't include its
    #   expiry time. To get a new URL, call the operation again. Anyone who
    #   has the URL can download the package until it expires, so don't
    #   log, store, or share it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/RegistryRecordArtifactDownload AWS API Documentation
    #
    class RegistryRecordArtifactDownload < Struct.new(
      :sha256,
      :download_url)
      SENSITIVE = [:download_url]
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
    #   The Amazon Resource Name (ARN) of the parent registry that owns the
    #   record.
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
    #   The name of the registry record. Names are unique within a registry.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A human-readable description of the registry record. Use this field
    #   to explain the record's purpose or content to consumers discovering
    #   it in the registry.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The human-readable display name of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] record_type
    #   The type of the registry record. `MCP` is a Model Context Protocol
    #   server record, `AGENT` is an Agent-to-Agent (A2A) agent card record,
    #   `SKILL` is an agent skills definition record, and `CUSTOM` is a
    #   record with a custom descriptor.
    #   @return [String]
    #
    # @!attribute [rw] descriptors
    #   The protocol-specific descriptors that describe how to connect to
    #   and use the record.
    #   @return [Types::Descriptors]
    #
    # @!attribute [rw] record_version
    #   The version identifier of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The lifecycle status of the registry record. A record is `DRAFT`
    #   before it is submitted, `PENDING_APPROVAL` while awaiting curator
    #   review, and `APPROVED` once it is approved and discoverable.
    #   `REJECTED` and `DEPRECATED` records are not discoverable. The
    #   `CREATING`, `UPDATING`, `CREATE_FAILED`, and `UPDATE_FAILED` values
    #   reflect the state of an in-progress or failed asynchronous change.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the registry record was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the registry record was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] custom_metadata
    #   The custom metadata attached to this registry record. Values are
    #   strings (maximum 128 characters) or booleans. This field is only
    #   present if the registry has a custom metadata schema configured.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] artifact
    #   The skill package of the record's latest approved revision, as the
    #   package's SHA-256 checksum and a download URL that is valid for up
    #   to 5 minutes. Only `BatchGetDiscoverableRegistryRecord` returns this
    #   member, not `SearchDiscoverableRegistryRecords`. Absent when the
    #   record has no skill package.
    #   @return [Types::RegistryRecordArtifactDownload]
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
      :updated_at,
      :custom_metadata,
      :artifact)
      SENSITIVE = [:description, :custom_metadata]
      include Aws::Structure
    end

    # Binds one registry to the record IDs requested from it.
    #
    # @!attribute [rw] registry_id
    #   The identifier of the registry to retrieve the records from. You can
    #   provide either the full Amazon Resource Name (ARN) or the registry
    #   ID.
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
    #   If you specify an empty string, the operation returns the records
    #   that match the `filters`, most recently updated first, up to the
    #   result limit for the `searchType`.
    #   @return [String]
    #
    # @!attribute [rw] registry_ids
    #   The registry identifiers to search within. Currently, you must
    #   specify exactly one registry identifier. You can provide either the
    #   full Amazon Web Services Resource Name (ARN) or the registry ID.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in one page. Valid values
    #   are 1 through 50 when `searchType` is `KEYWORD`, and 1 through 20
    #   when it is `HYBRID` or `SEMANTIC`. The default value is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   An optional structured JSON metadata filter that narrows the search
    #   results. Supports the field-level operators `$eq`, `$ne`, and `$in`,
    #   and the logical operators `$and` and `$or` on filterable fields.
    #
    #   Specifies additional filtering on custom metadata fields using the
    #   `customMetadata.{key}` prefix. For example, to filter by a custom
    #   metadata field: `{"customMetadata.environment": {"$eq":
    #   "production"}}`. For a Boolean field, you can also use a native JSON
    #   boolean value, for example: `{"customMetadata.requiresApproval":
    #   {"$eq": true}}`.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] search_type
    #   Specifies how the service ranks registry records against the search
    #   query. If you omit this parameter, the service uses `HYBRID` in
    #   Amazon Web Services Regions that support semantic search and
    #   `KEYWORD` in Regions that do not. The response reports the search
    #   type that the service used. Valid values are the following:
    #
    #   * `KEYWORD` – Ranks records by keyword match between the query terms
    #     and the record name, description, descriptors, and custom metadata
    #     text values. Available in every Amazon Web Services Region.
    #
    #   * `SEMANTIC` – Ranks records by semantic similarity to the query and
    #     returns the most similar records, up to `maxResults`, even when
    #     none of them closely matches the query.
    #
    #   * `HYBRID` – Combines keyword ranking and semantic ranking.
    #
    #   `HYBRID` and `SEMANTIC` are available in a limited number of
    #   Regions. If you specify either one in a Region that does not support
    #   semantic search, the request fails with a `ValidationException` that
    #   has the reason `UnsupportedInRegion`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous response. Use it to retrieve
    #   the next page of results, and send the same `searchQuery`,
    #   `registryIds`, `filters`, and `searchType` that you used for the
    #   first page. If any of them differ, the request fails with a
    #   `ValidationException`. A pagination token expires 15 minutes after
    #   the service returns the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/SearchDiscoverableRegistryRecordsRequest AWS API Documentation
    #
    class SearchDiscoverableRegistryRecordsRequest < Struct.new(
      :search_query,
      :registry_ids,
      :max_results,
      :filters,
      :search_type,
      :next_token)
      SENSITIVE = [:search_query, :filters]
      include Aws::Structure
    end

    # @!attribute [rw] registry_records
    #   The registry records that match the search query, ordered by
    #   relevance. A page can contain fewer than `maxResults` records, or
    #   none, even when the response includes a `nextToken`. To retrieve
    #   every result, continue until the response has no `nextToken`.
    #   @return [Array<Types::RegistryRecordSummary>]
    #
    # @!attribute [rw] search_type
    #   Specifies the search type that the service used to rank the returned
    #   records. If you omitted `searchType` in the request, this is the
    #   default for the Amazon Web Services Region: `HYBRID` where semantic
    #   search is supported, and `KEYWORD` elsewhere.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token to pass to a subsequent request to retrieve the
    #   next page of results. This field is absent when there are no more
    #   results, or when the search has returned the maximum number of
    #   results for its search type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/SearchDiscoverableRegistryRecordsResponse AWS API Documentation
    #
    class SearchDiscoverableRegistryRecordsResponse < Struct.new(
      :registry_records,
      :search_type,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The additional data for a signature agent card descriptor, such as the
    # bot category of the web bot.
    #
    # @!attribute [rw] category
    #   The bot category that describes the purpose of the web bot
    #   identified by the signature agent card descriptor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/SignatureAgentCardAdditionalData AWS API Documentation
    #
    class SignatureAgentCardAdditionalData < Struct.new(
      :category)
      SENSITIVE = []
      include Aws::Structure
    end

    # Descriptor that defines the content of a signature agent card, which
    # identifies a web bot and references the JSON Web Key Set (JWKS) used
    # to verify its HTTP message signatures.
    #
    # @!attribute [rw] data
    #   The signature agent card descriptor content, serialized as
    #   descriptor payload data.
    #   @return [String]
    #
    # @!attribute [rw] data_schema_version
    #   The schema version of the descriptor payload.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source location from which the signature agent card descriptor
    #   content was retrieved.
    #   @return [Types::DescriptorSource]
    #
    # @!attribute [rw] additional_data
    #   Additional data for the signature agent card, such as its AWS WAF
    #   bot category.
    #   @return [Types::SignatureAgentCardAdditionalData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-2025-12-01/SignatureAgentCardDescriptor AWS API Documentation
    #
    class SignatureAgentCardDescriptor < Struct.new(
      :data,
      :data_schema_version,
      :source,
      :additional_data)
      SENSITIVE = [:data]
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


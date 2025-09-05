# frozen_string_literal: true

# This is generated code!

module Aws::Schemas
  # This module contains the types returned by client operations.
  module Types

    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message string of the error output.</p>
    #   @return [String]
    class BadRequestException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message string of the error output.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>A description for the discoverer.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>The ARN of the event bus.</p>
    #   @return [String]
    # @!attribute cross_account
    #   <p>Support discovery of schemas in events sent to the bus from another account. (default: true).</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class CreateDiscovererRequest < Struct.new(
      :description,
      :source_arn,
      :cross_account,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>The description of the discoverer.</p>
    #   @return [String]
    # @!attribute discoverer_arn
    #   <p>The ARN of the discoverer.</p>
    #   @return [String]
    # @!attribute discoverer_id
    #   <p>The ID of the discoverer.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>The ARN of the event bus.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the discoverer.</p>
    #   @return [String]
    # @!attribute cross_account
    #   <p>The Status if the discoverer will discover schemas from events sent from another account.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class CreateDiscovererResponse < Struct.new(
      :description,
      :discoverer_arn,
      :discoverer_id,
      :source_arn,
      :state,
      :cross_account,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>A description of the registry to be created.</p>
    #   @return [String]
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to associate with the registry.</p>
    #   @return [Hash<String, String>]
    class CreateRegistryRequest < Struct.new(
      :description,
      :registry_name,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>The description of the registry.</p>
    #   @return [String]
    # @!attribute registry_arn
    #   <p>The ARN of the registry.</p>
    #   @return [String]
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags associated with the registry.</p>
    #   @return [Hash<String, String>]
    class CreateRegistryResponse < Struct.new(
      :description,
      :registry_arn,
      :registry_name,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute content
    #   <p>The source of the schema definition.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the schema.</p>
    #   @return [String]
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags associated with the schema.</p>
    #   @return [Hash<String, String>]
    # @!attribute type
    #   <p>The type of schema.</p>
    #   @return [String]
    class CreateSchemaRequest < Struct.new(
      :content,
      :description,
      :registry_name,
      :schema_name,
      :tags,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>The description of the schema.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date and time that schema was modified.</p>
    #   @return [Time]
    # @!attribute schema_arn
    #   <p>The ARN of the schema.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute schema_version
    #   <p>The version number of the schema</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs associated with a resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute type
    #   <p>The type of the schema.</p>
    #   @return [String]
    # @!attribute version_created_date
    #   <p>The date the schema version was created.</p>
    #   @return [Time]
    class CreateSchemaResponse < Struct.new(
      :description,
      :last_modified,
      :schema_arn,
      :schema_name,
      :schema_version,
      :tags,
      :type,
      :version_created_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute discoverer_id
    #   <p>The ID of the discoverer.</p>
    #   @return [String]
    class DeleteDiscovererRequest < Struct.new(
      :discoverer_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    class DeleteRegistryRequest < Struct.new(
      :registry_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    class DeleteResourcePolicyRequest < Struct.new(
      :registry_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    class DeleteSchemaRequest < Struct.new(
      :registry_name,
      :schema_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute schema_version
    #   The version number of the schema
    #   @return [String]
    class DeleteSchemaVersionRequest < Struct.new(
      :registry_name,
      :schema_name,
      :schema_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute language
    #   <p>The language of the code binding.</p>
    #   @return [String]
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute schema_version
    #   <p>Specifying this limits the results to only this schema version.</p>
    #   @return [String]
    class DescribeCodeBindingRequest < Struct.new(
      :language,
      :registry_name,
      :schema_name,
      :schema_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute creation_date
    #   <p>The time and date that the code binding was created.</p>
    #   @return [Time]
    # @!attribute last_modified
    #   <p>The date and time that code bindings were modified.</p>
    #   @return [Time]
    # @!attribute schema_version
    #   <p>The version number of the schema.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of code binding generation.</p>
    #   @return [String]
    class DescribeCodeBindingResponse < Struct.new(
      :creation_date,
      :last_modified,
      :schema_version,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute discoverer_id
    #   <p>The ID of the discoverer.</p>
    #   @return [String]
    class DescribeDiscovererRequest < Struct.new(
      :discoverer_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>The description of the discoverer.</p>
    #   @return [String]
    # @!attribute discoverer_arn
    #   <p>The ARN of the discoverer.</p>
    #   @return [String]
    # @!attribute discoverer_id
    #   <p>The ID of the discoverer.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>The ARN of the event bus.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the discoverer.</p>
    #   @return [String]
    # @!attribute cross_account
    #   <p>The Status if the discoverer will discover schemas from events sent from another account.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class DescribeDiscovererResponse < Struct.new(
      :description,
      :discoverer_arn,
      :discoverer_id,
      :source_arn,
      :state,
      :cross_account,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    class DescribeRegistryRequest < Struct.new(
      :registry_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>The description of the registry.</p>
    #   @return [String]
    # @!attribute registry_arn
    #   <p>The ARN of the registry.</p>
    #   @return [String]
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags associated with the registry.</p>
    #   @return [Hash<String, String>]
    class DescribeRegistryResponse < Struct.new(
      :description,
      :registry_arn,
      :registry_name,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute schema_version
    #   <p>Specifying this limits the results to only this schema version.</p>
    #   @return [String]
    class DescribeSchemaRequest < Struct.new(
      :registry_name,
      :schema_name,
      :schema_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute content
    #   <p>The source of the schema definition.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the schema.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date and time that schema was modified.</p>
    #   @return [Time]
    # @!attribute schema_arn
    #   <p>The ARN of the schema.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute schema_version
    #   <p>The version number of the schema</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute type
    #   <p>The type of the schema.</p>
    #   @return [String]
    # @!attribute version_created_date
    #   <p>The date the schema version was created.</p>
    #   @return [Time]
    class DescribeSchemaResponse < Struct.new(
      :content,
      :description,
      :last_modified,
      :schema_arn,
      :schema_name,
      :schema_version,
      :tags,
      :type,
      :version_created_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute discoverer_arn
    #   <p>The ARN of the discoverer.</p>
    #   @return [String]
    # @!attribute discoverer_id
    #   <p>The ID of the discoverer.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>The ARN of the event bus.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the discoverer.</p>
    #   @return [String]
    # @!attribute cross_account
    #   <p>The Status if the discoverer will discover schemas from events sent from another account.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class DiscovererSummary < Struct.new(
      :discoverer_arn,
      :discoverer_id,
      :source_arn,
      :state,
      :cross_account,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute schema_version
    #   <p>Specifying this limits the results to only this schema version.</p>
    #   @return [String]
    # @!attribute type
    #   @return [String]
    class ExportSchemaRequest < Struct.new(
      :registry_name,
      :schema_name,
      :schema_version,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute content
    #   @return [String]
    # @!attribute schema_arn
    #   @return [String]
    # @!attribute schema_name
    #   @return [String]
    # @!attribute schema_version
    #   @return [String]
    # @!attribute type
    #   @return [String]
    class ExportSchemaResponse < Struct.new(
      :content,
      :schema_arn,
      :schema_name,
      :schema_version,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message string of the error output.</p>
    #   @return [String]
    class ForbiddenException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute language
    #   <p>The language of the code binding.</p>
    #   @return [String]
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute schema_version
    #   <p>Specifying this limits the results to only this schema version.</p>
    #   @return [String]
    class GetCodeBindingSourceRequest < Struct.new(
      :language,
      :registry_name,
      :schema_name,
      :schema_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute body
    #   @return [String]
    class GetCodeBindingSourceResponse < Struct.new(
      :body,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute events
    #   <p>An array of strings where each string is a JSON event. These are the events that were used to generate the schema. The array includes a single type of event and has a maximum size of 10 events.</p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>The type of event.</p>
    #   @return [String]
    class GetDiscoveredSchemaRequest < Struct.new(
      :events,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute content
    #   <p>The source of the schema definition.</p>
    #   @return [String]
    class GetDiscoveredSchemaResponse < Struct.new(
      :content,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    class GetResourcePolicyRequest < Struct.new(
      :registry_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The resource-based policy.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision ID.</p>
    #   @return [String]
    class GetResourcePolicyResponse < Struct.new(
      :policy,
      :revision_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message string of the error output.</p>
    #   @return [String]
    class GoneException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message string of the error output.</p>
    #   @return [String]
    class InternalServerErrorException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute discoverer_id_prefix
    #   <p>Specifying this limits the results to only those discoverer IDs that start with the specified prefix.</p>
    #   @return [String]
    # @!attribute limit
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #   @return [String]
    # @!attribute source_arn_prefix
    #   <p>Specifying this limits the results to only those ARNs that start with the specified prefix.</p>
    #   @return [String]
    class ListDiscoverersRequest < Struct.new(
      :discoverer_id_prefix,
      :limit,
      :next_token,
      :source_arn_prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute discoverers
    #   <p>An array of DiscovererSummary information.</p>
    #   @return [Array<Types::DiscovererSummary>]
    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #   @return [String]
    class ListDiscoverersResponse < Struct.new(
      :discoverers,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute limit
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #   @return [String]
    # @!attribute registry_name_prefix
    #   <p>Specifying this limits the results to only those registry names that start with the specified prefix.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Can be set to Local or AWS to limit responses to your custom registries, or the ones provided by AWS.</p>
    #   @return [String]
    class ListRegistriesRequest < Struct.new(
      :limit,
      :next_token,
      :registry_name_prefix,
      :scope,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #   @return [String]
    # @!attribute registries
    #   <p>An array of registry summaries.</p>
    #   @return [Array<Types::RegistrySummary>]
    class ListRegistriesResponse < Struct.new(
      :next_token,
      :registries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute limit
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #   @return [String]
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    class ListSchemaVersionsRequest < Struct.new(
      :limit,
      :next_token,
      :registry_name,
      :schema_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #   @return [String]
    # @!attribute schema_versions
    #   <p>An array of schema version summaries.</p>
    #   @return [Array<Types::SchemaVersionSummary>]
    class ListSchemaVersionsResponse < Struct.new(
      :next_token,
      :schema_versions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute limit
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #   @return [String]
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute schema_name_prefix
    #   <p>Specifying this limits the results to only those schema names that start with the specified prefix.</p>
    #   @return [String]
    class ListSchemasRequest < Struct.new(
      :limit,
      :next_token,
      :registry_name,
      :schema_name_prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #   @return [String]
    # @!attribute schemas
    #   <p>An array of schema summaries.</p>
    #   @return [Array<Types::SchemaSummary>]
    class ListSchemasResponse < Struct.new(
      :next_token,
      :schemas,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Key-value pairs associated with a resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message string of the error output.</p>
    #   @return [String]
    class NotFoundException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message string of the error output.</p>
    #   @return [String]
    class PreconditionFailedException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute language
    #   <p>The language of the code binding.</p>
    #   @return [String]
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute schema_version
    #   <p>Specifying this limits the results to only this schema version.</p>
    #   @return [String]
    class PutCodeBindingRequest < Struct.new(
      :language,
      :registry_name,
      :schema_name,
      :schema_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute creation_date
    #   <p>The time and date that the code binding was created.</p>
    #   @return [Time]
    # @!attribute last_modified
    #   <p>The date and time that code bindings were modified.</p>
    #   @return [Time]
    # @!attribute schema_version
    #   <p>The version number of the schema.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of code binding generation.</p>
    #   @return [String]
    class PutCodeBindingResponse < Struct.new(
      :creation_date,
      :last_modified,
      :schema_version,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The name of the policy.</p>
    # @!attribute policy
    #   <p>The resource-based policy.</p>
    #   @return [String]
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision ID of the policy.</p>
    #   @return [String]
    class PutResourcePolicyRequest < Struct.new(
      :policy,
      :registry_name,
      :revision_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The resource-based policy.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision ID of the policy.</p>
    #   @return [String]
    class PutResourcePolicyResponse < Struct.new(
      :policy,
      :revision_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_arn
    #   <p>The ARN of the registry.</p>
    #   @return [String]
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags associated with the registry.</p>
    #   @return [Hash<String, String>]
    class RegistrySummary < Struct.new(
      :registry_arn,
      :registry_name,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of schema details.</p>
    # @!attribute last_modified
    #   <p>The date and time that schema was modified.</p>
    #   @return [Time]
    # @!attribute schema_arn
    #   <p>The ARN of the schema.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags associated with the schema.</p>
    #   @return [Hash<String, String>]
    # @!attribute version_count
    #   <p>The number of versions available for the schema.</p>
    #   @return [Integer]
    class SchemaSummary < Struct.new(
      :last_modified,
      :schema_arn,
      :schema_name,
      :tags,
      :version_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema_arn
    #   <p>The ARN of the schema version.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute schema_version
    #   <p>The version number of the schema.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of schema.</p>
    #   @return [String]
    class SchemaVersionSummary < Struct.new(
      :schema_arn,
      :schema_name,
      :schema_version,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute schema_arn
    #   <p>The ARN of the schema.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute schema_versions
    #   <p>An array of schema version summaries.</p>
    #   @return [Array<Types::SearchSchemaVersionSummary>]
    class SearchSchemaSummary < Struct.new(
      :registry_name,
      :schema_arn,
      :schema_name,
      :schema_versions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute created_date
    #   <p>The date the schema version was created.</p>
    #   @return [Time]
    # @!attribute schema_version
    #   <p>The version number of the schema</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of schema.</p>
    #   @return [String]
    class SearchSchemaVersionSummary < Struct.new(
      :created_date,
      :schema_version,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute keywords
    #   <p>Specifying this limits the results to only schemas that include the provided keywords.</p>
    #   @return [String]
    # @!attribute limit
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #   @return [String]
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    class SearchSchemasRequest < Struct.new(
      :keywords,
      :limit,
      :next_token,
      :registry_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #   @return [String]
    # @!attribute schemas
    #   <p>An array of SearchSchemaSummary information.</p>
    #   @return [Array<Types::SearchSchemaSummary>]
    class SearchSchemasResponse < Struct.new(
      :next_token,
      :schemas,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message string of the error output.</p>
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute discoverer_id
    #   <p>The ID of the discoverer.</p>
    #   @return [String]
    class StartDiscovererRequest < Struct.new(
      :discoverer_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute discoverer_id
    #   <p>The ID of the discoverer.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the discoverer.</p>
    #   @return [String]
    class StartDiscovererResponse < Struct.new(
      :discoverer_id,
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute discoverer_id
    #   <p>The ID of the discoverer.</p>
    #   @return [String]
    class StopDiscovererRequest < Struct.new(
      :discoverer_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute discoverer_id
    #   <p>The ID of the discoverer.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the discoverer.</p>
    #   @return [String]
    class StopDiscovererResponse < Struct.new(
      :discoverer_id,
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message string of the error output.</p>
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message string of the error output.</p>
    #   @return [String]
    class UnauthorizedException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Keys of key-value pairs.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>The description of the discoverer to update.</p>
    #   @return [String]
    # @!attribute discoverer_id
    #   <p>The ID of the discoverer.</p>
    #   @return [String]
    # @!attribute cross_account
    #   <p>Support discovery of schemas in events sent to the bus from another account. (default: true)</p>
    #   @return [Boolean]
    class UpdateDiscovererRequest < Struct.new(
      :description,
      :discoverer_id,
      :cross_account,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>The description of the discoverer.</p>
    #   @return [String]
    # @!attribute discoverer_arn
    #   <p>The ARN of the discoverer.</p>
    #   @return [String]
    # @!attribute discoverer_id
    #   <p>The ID of the discoverer.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>The ARN of the event bus.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the discoverer.</p>
    #   @return [String]
    # @!attribute cross_account
    #   <p>The Status if the discoverer will discover schemas from events sent from another account.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class UpdateDiscovererResponse < Struct.new(
      :description,
      :discoverer_arn,
      :discoverer_id,
      :source_arn,
      :state,
      :cross_account,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Updates the registry.</p>
    # @!attribute description
    #   <p>The description of the registry to update.</p>
    #   @return [String]
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    class UpdateRegistryRequest < Struct.new(
      :description,
      :registry_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>The description of the registry.</p>
    #   @return [String]
    # @!attribute registry_arn
    #   <p>The ARN of the registry.</p>
    #   @return [String]
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags associated with the registry.</p>
    #   @return [Hash<String, String>]
    class UpdateRegistryResponse < Struct.new(
      :description,
      :registry_arn,
      :registry_name,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token_id
    #   <p>The ID of the client token.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The source of the schema definition.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the schema.</p>
    #   @return [String]
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The schema type for the events schema.</p>
    #   @return [String]
    class UpdateSchemaRequest < Struct.new(
      :client_token_id,
      :content,
      :description,
      :registry_name,
      :schema_name,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>The description of the schema.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date and time that schema was modified.</p>
    #   @return [Time]
    # @!attribute schema_arn
    #   <p>The ARN of the schema.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #   @return [String]
    # @!attribute schema_version
    #   <p>The version number of the schema</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs associated with a resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute type
    #   <p>The type of the schema.</p>
    #   @return [String]
    # @!attribute version_created_date
    #   <p>The date the schema version was created.</p>
    #   @return [Time]
    class UpdateSchemaResponse < Struct.new(
      :description,
      :last_modified,
      :schema_arn,
      :schema_name,
      :schema_version,
      :tags,
      :type,
      :version_created_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end

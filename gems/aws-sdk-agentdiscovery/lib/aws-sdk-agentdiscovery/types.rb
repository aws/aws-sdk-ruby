# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AgentDiscovery
  module Types

    # A descriptor slot value (A2A card, MCP server card, skills definition,
    # custom). Content is either inline (`data`) or a reference (`source`).
    # `additionalData` carries nested sub-descriptors (e.g. mcpServer.tools,
    # agentSkillsDefinition.skillMd).
    #
    # @!attribute [rw] data
    #   Inline descriptor content (JSON string).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Descriptor type version.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Reference to externally-hosted descriptor content.
    #   @return [Types::DescriptorSource]
    #
    # @!attribute [rw] additional_data
    #   Nested sub-descriptors keyed by slot name (e.g. `tools`, `skillMd`).
    #   @return [Hash<String,Types::DescriptorEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-discovery-2022-07-26/DescriptorEntry AWS API Documentation
    #
    class DescriptorEntry < Struct.new(
      :data,
      :version,
      :source,
      :additional_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Reference to descriptor content hosted at a URL.
    #
    # @!attribute [rw] from_url
    #   The URL that hosts the descriptor content.
    #   @return [Types::DescriptorSourceUrl]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-discovery-2022-07-26/DescriptorSource AWS API Documentation
    #
    class DescriptorSource < Struct.new(
      :from_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # A URL that hosts descriptor content.
    #
    # @!attribute [rw] url
    #   The URL of the externally hosted descriptor content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-discovery-2022-07-26/DescriptorSourceUrl AWS API Documentation
    #
    class DescriptorSourceUrl < Struct.new(
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resolvable identifier value. Discriminated union — exactly one
    # member is set.
    #
    # @note Identifier is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Identifier corresponding to the set member.
    #
    # @!attribute [rw] domain
    #   Verified domain (e.g. example.com).
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   Arbitrary resolvable URI (urn / url / did).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-discovery-2022-07-26/Identifier AWS API Documentation
    #
    class Identifier < Struct.new(
      :domain,
      :uri,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Domain < Identifier; end
      class Uri < Identifier; end
      class Unknown < Identifier; end
    end

    # Thrown on an internal defect — a bug or malformed state, not a failed
    # dependency.
    #
    # ⚠️ Deliberately a **permanent** failure. Repeating a request that
    # failed to serialize will fail identically, so treating a 500 as
    # retryable would spin a poison message through redelivery forever
    # instead of letting it reach a dead-letter queue. Dependency failures
    # that *are* worth retrying use `ServiceUnavailableException` and
    # its 503 instead.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   ARD's Appendix B code on the ARD surface, `INTERNAL_ERROR`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-discovery-2022-07-26/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lineage of a record (AI Catalog Provenance Link Object), with only its
    # required members.
    #
    # @!attribute [rw] relation
    #   How the contributor got the record.
    #   @return [String]
    #
    # @!attribute [rw] source_id
    #   The source of the record. Not always a URI. On `publishedFrom` it's
    #   the value of the record's `identifier` union member,
    #   `identifier.uri` or `identifier.domain`, unchanged. On
    #   `discoveredFrom` it's the name the registry gave the partner source
    #   when it was configured for crawling, not a URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-discovery-2022-07-26/ProvenanceLink AWS API Documentation
    #
    class ProvenanceLink < Struct.new(
      :relation,
      :source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A public record returned by search. Only the record's public
    # descriptors are included.
    #
    # @!attribute [rw] identifier
    #   The resolvable identifier value. Discriminated union — exactly one
    #   member is set.
    #   @return [Types::Identifier]
    #
    # @!attribute [rw] display_name
    #   The record's display name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the record.
    #   @return [String]
    #
    # @!attribute [rw] record_type
    #   The kind of resource the record describes, such as an agent, a tool,
    #   or a skill.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   FQDN per RFC-1035/1123, case-insensitive, at least two labels.
    #   @return [String]
    #
    # @!attribute [rw] descriptors
    #   Every PUBLIC descriptor slot the record was published with, as
    #   published: each slot's `source`, inline `data`, `version` and
    #   nested `additionalData`, the `custom` slot included. Absent on a
    #   record discovered at a partner source; ARD serves the partner's
    #   cards.
    #   @return [Hash<String,Types::DescriptorEntry>]
    #
    # @!attribute [rw] trust_manifests
    #   Trust Manifests (AI Catalog Trust Manifest Object), today only the
    #   registry's own, `contributor`
    #   `did:web:agent-registry.global.api.aws`. Its one provenance link
    #   says how the registry got the record: `relation` is `publishedFrom`
    #   for a record its owner published and `discoveredFrom` for one the
    #   registry discovered at a partner source, with `sourceId` as
    #   `ProvenanceLink.sourceId` describes. The `provenance` filter takes
    #   the same values (see `ProvenanceRelation`). It's left off when the
    #   registry can't name the source: a `federatedFrom` record until the
    #   index carries the peer registry, a discovered record with no source,
    #   or a missing or unknown origin. The manifest is unsigned, so it
    #   attributes the claim to the registry and doesn't authenticate it.
    #   @return [Array<Types::TrustManifest>]
    #
    # @!attribute [rw] record_version
    #   The record's version string, set by its publisher. Left off when
    #   the record has none, for example a discovered record whose source
    #   carries no version.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   When the record was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   When the record was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-discovery-2022-07-26/PublicRecord AWS API Documentation
    #
    class PublicRecord < Struct.new(
      :identifier,
      :display_name,
      :description,
      :record_type,
      :domain,
      :descriptors,
      :trust_manifests,
      :record_version,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] search_query
    #   Free-text natural-language query (ARD `text`). Drives semantic +
    #   lexical ranking.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Structured filter narrowing the results, in the grammar of Agent
    #   Registry's SearchDiscoverableRegistryRecords `filters`: `$eq`,
    #   `$ne` and `$in` on a field, with `$and` or `$or` over
    #   single-condition objects, never nested. Fields are `identifier`,
    #   `domain`, `recordType`, `descriptorType`, `provenance` and
    #   `recordVersion`, and `identifier` also takes `$prefix`. For example
    #   `{"recordType": {"$eq": "AGENT"}}` or `{"$or": [{"recordType":
    #   {"$eq": "MCP"}}, {"domain": {"$eq": "acme.com"}}]}`.
    #
    #   Limits, the same ones Agent Registry applies: at most 10 conditions,
    #   `$in` takes 1-25 values, values are strings of 1-512 characters,
    #   and `\{}` is invalid. A `document` can't carry `@length`, so
    #   the service enforces these and answers a filter past them with a
    #   ValidationException, as Agent Registry does.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] max_results
    #   Max records per page. Default 20, max 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Opaque composite-cursor pagination token (O-DM12).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-discovery-2022-07-26/SearchPublicRecordsRequest AWS API Documentation
    #
    class SearchPublicRecordsRequest < Struct.new(
      :search_query,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] records
    #   The records that match the search, most relevant first.
    #   @return [Array<Types::PublicRecord>]
    #
    # @!attribute [rw] next_token
    #   The token to pass in a later request to get the next page of
    #   results. Absent when there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-discovery-2022-07-26/SearchPublicRecordsResponse AWS API Documentation
    #
    class SearchPublicRecordsResponse < Struct.new(
      :records,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Thrown when the caller exceeds a rate/burst limit (D-9). ARD's code
    # for it is `RATE_LIMIT_EXCEEDED`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   ARD's error classification (Appendix B). Values are ARD's,
    #   uppercase on the wire.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-discovery-2022-07-26/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # One contributor's trust metadata about a record (AI Catalog Trust
    # Manifest Object), with only the members the registry sets. AI
    # Catalog's other members (`subject`, `signature`, `trustSchema`,
    # `attestations`, `extensions`) are optional, so each can be added when
    # something sets it.
    #
    # @!attribute [rw] contributor
    #   Absolute URI of the contributor these claims are attributed to.
    #   @return [String]
    #
    # @!attribute [rw] provenance
    #   The record's lineage as the contributor states it: how the
    #   contributor got the record, and from which source.
    #   @return [Array<Types::ProvenanceLink>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-discovery-2022-07-26/TrustManifest AWS API Documentation
    #
    class TrustManifest < Struct.new(
      :contributor,
      :provenance)
      SENSITIVE = []
      include Aws::Structure
    end

    # Thrown when a request fails input validation.
    #
    # `errorCode` carries ARD's Appendix B code, `INVALID\_ARGUMENT`,
    # which ARD's OpenAPI makes a required member of every error body on
    # the ARD surface. The Amazon-shaped and internal surfaces leave it
    # unset.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   ARD's error classification (Appendix B). Values are ARD's,
    #   uppercase on the wire.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-discovery-2022-07-26/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end


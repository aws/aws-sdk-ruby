# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AgentRegistryControl
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
    #   The optional source configuration used to synchronize the A2A agent
    #   card descriptor content.
    #   @return [Types::DescriptorSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/A2aAgentCardDescriptor AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A registry record descriptor for the AG-UI (Agent-User Interaction)
    # protocol.
    #
    # @!attribute [rw] source
    #   The source configuration that defines where descriptor content is
    #   retrieved from.
    #   @return [Types::DescriptorSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/AgUiDescriptor AWS API Documentation
    #
    class AgUiDescriptor < Struct.new(
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source details for a registry record that was auto-detected from
    # an Amazon Bedrock AgentCore Gateway resource.
    #
    # @!attribute [rw] protocol_type
    #   The protocol type of the AgentCore Gateway resource that the
    #   registry record was detected from, for example `MCP`.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_type
    #   The type of authorizer configured on the AgentCore Gateway resource
    #   that the registry record was detected from.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_configuration
    #   The authorizer configuration for a registry. Exactly one member is
    #   set.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @!attribute [rw] workload_identity_details
    #   The workload identity details for the AgentCore Gateway resource.
    #   Present when the gateway has a workload identity configured.
    #   @return [Types::WorkloadIdentityDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/AgentCoreGatewaySourceDetails AWS API Documentation
    #
    class AgentCoreGatewaySourceDetails < Struct.new(
      :protocol_type,
      :authorizer_type,
      :authorizer_configuration,
      :workload_identity_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The protocol configuration of an AgentCore Runtime resource that a
    # registry record was auto-detected from.
    #
    # @!attribute [rw] server_protocol
    #   The server protocol used by the AgentCore Runtime, such as `MCP`,
    #   `HTTP`, `A2A`, or `AGUI`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/AgentCoreRuntimeProtocolConfiguration AWS API Documentation
    #
    class AgentCoreRuntimeProtocolConfiguration < Struct.new(
      :server_protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source details for a registry record that was auto-detected from
    # an Amazon Bedrock AgentCore Runtime resource.
    #
    # @!attribute [rw] protocol_configuration
    #   The protocol configuration of the AgentCore Runtime resource that
    #   the registry record was detected from.
    #   @return [Types::AgentCoreRuntimeProtocolConfiguration]
    #
    # @!attribute [rw] authorizer_configuration
    #   The authorizer configuration for a registry. Exactly one member is
    #   set.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @!attribute [rw] workload_identity_details
    #   The workload identity details for the AgentCore Runtime resource.
    #   Present when the runtime has a workload identity configured.
    #   @return [Types::WorkloadIdentityDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/AgentCoreRuntimeSourceDetails AWS API Documentation
    #
    class AgentCoreRuntimeSourceDetails < Struct.new(
      :protocol_configuration,
      :authorizer_configuration,
      :workload_identity_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional data associated with an agent skills definition descriptor.
    #
    # @!attribute [rw] skill_md
    #   The markdown skill content associated with an agent skills
    #   definition.
    #   @return [Types::AgentSkillsMdDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/AgentSkillsAdditionalData AWS API Documentation
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
    #   Additional data associated with the agent skills definition
    #   descriptor.
    #   @return [Types::AgentSkillsAdditionalData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/AgentSkillsDefinitionDescriptor AWS API Documentation
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
    #   The optional source configuration used to synchronize the agent
    #   skills markdown content.
    #   @return [Types::DescriptorSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/AgentSkillsMdDescriptor AWS API Documentation
    #
    class AgentSkillsMdDescriptor < Struct.new(
      :data,
      :data_schema_version,
      :source)
      SENSITIVE = [:data]
      include Aws::Structure
    end

    # Configuration for the registry's record approval workflow. Controls
    # whether records submitted for approval require manual review before
    # they become approved and discoverable, or are auto-approved. When no
    # auto-approval rules are configured, submitted records require manual
    # review.
    #
    # @!attribute [rw] auto_approval_rules
    #   The rules that determine which registry records are automatically
    #   approved on submission. When omitted or empty, submitted records
    #   require manual review.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/ApprovalConfiguration AWS API Documentation
    #
    class ApprovalConfiguration < Struct.new(
      :auto_approval_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # The authorizer configuration for a registry. Exactly one member is
    # set.
    #
    # @note AuthorizerConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note AuthorizerConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AuthorizerConfiguration corresponding to the set member.
    #
    # @!attribute [rw] custom_jwt_authorizer
    #   Configuration for a custom JWT authorizer.
    #   @return [Types::CustomJWTAuthorizerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/AuthorizerConfiguration AWS API Documentation
    #
    class AuthorizerConfiguration < Struct.new(
      :custom_jwt_authorizer,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CustomJwtAuthorizer < AuthorizerConfiguration; end
      class Unknown < AuthorizerConfiguration; end
    end

    # The value and match operator used to authorize a claim during JWT
    # validation.
    #
    # @!attribute [rw] claim_match_value
    #   The expected value or values that the claim is compared against.
    #   @return [Types::ClaimMatchValueType]
    #
    # @!attribute [rw] claim_match_operator
    #   The operator used to compare the claim value against the expected
    #   value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/AuthorizingClaimMatchValueType AWS API Documentation
    #
    class AuthorizingClaimMatchValueType < Struct.new(
      :claim_match_value,
      :claim_match_operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # The auto-detection properties for a registry, including the requested
    # configuration and the current detection status. When auto-detection is
    # enabled and the scope preconditions are met, the registry is
    # automatically populated with discovered resources.
    #
    # @!attribute [rw] configuration
    #   The auto-detection settings that control how resources are
    #   discovered for the registry.
    #   @return [Types::AutoDetectionConfiguration]
    #
    # @!attribute [rw] status
    #   The current auto-detection status. `ACTIVE` indicates that the
    #   registry is actively being populated with detected resources.
    #   `INACTIVE` indicates that the preconditions required at the
    #   configured scope are not currently met.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   A human-readable explanation of the current auto-detection status.
    #   Typically populated when the status requires additional context.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/AutoDetection AWS API Documentation
    #
    class AutoDetection < Struct.new(
      :configuration,
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The customer-defined auto-detection settings for a registry.
    #
    # @!attribute [rw] scope
    #   The source from which resources are detected. For example,
    #   `ORGANIZATION` sources resources from all member accounts of an
    #   Amazon Web Services organization.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether auto-detection is requested for the registry.
    #   Setting this to `true` is necessary but not sufficient for
    #   auto-detection to become active; the preconditions of the configured
    #   scope must also be met.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/AutoDetectionConfiguration AWS API Documentation
    #
    class AutoDetectionConfiguration < Struct.new(
      :scope,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The expected value used to match a claim. Exactly one member is set.
    #
    # @note ClaimMatchValueType is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ClaimMatchValueType is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ClaimMatchValueType corresponding to the set member.
    #
    # @!attribute [rw] match_value_string
    #   A single string value to match the claim against.
    #   @return [String]
    #
    # @!attribute [rw] match_value_string_list
    #   A list of string values to match the claim against.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/ClaimMatchValueType AWS API Documentation
    #
    class ClaimMatchValueType < Struct.new(
      :match_value_string,
      :match_value_string_list,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MatchValueString < ClaimMatchValueType; end
      class MatchValueStringList < ClaimMatchValueType; end
      class Unknown < ClaimMatchValueType; end
    end

    # The request conflicts with the current state of the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The identifier of the registry in which to create the record (ARN or
    #   ID)
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the registry record
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The human-readable display name of the registry record
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the registry record
    #   @return [String]
    #
    # @!attribute [rw] record_type
    #   The type of the registry record, which determines the descriptor
    #   format
    #   @return [String]
    #
    # @!attribute [rw] descriptors
    #   The typed descriptor content for the registry record
    #   @return [Types::Descriptors]
    #
    # @!attribute [rw] record_version
    #   The version of the registry record
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Client token for idempotency
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] provenance
    #   The provenance lineage entries for the registry record. This field
    #   is reserved for the Amazon Web Services Agent Registry
    #   auto-detection service principal. Requests that include this field
    #   from other callers are rejected.
    #   @return [Array<Types::Provenance>]
    #
    # @!attribute [rw] custom_metadata
    #   The custom metadata to attach to the registry record. Each key must
    #   match a property defined in the registry's custom metadata schema.
    #   Values can be strings (maximum 128 characters) or native JSON
    #   booleans (`true` or `false`). Values are validated against the
    #   schema at creation time.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the registry record
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/CreateRegistryRecordRequest AWS API Documentation
    #
    class CreateRegistryRecordRequest < Struct.new(
      :registry_id,
      :name,
      :display_name,
      :description,
      :record_type,
      :descriptors,
      :record_version,
      :client_token,
      :provenance,
      :custom_metadata,
      :tags)
      SENSITIVE = [:description, :custom_metadata]
      include Aws::Structure
    end

    # Response structure for creating a registry record
    #
    # @!attribute [rw] record_arn
    #   The ARN of the created registry record
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the registry record, set to CREATING while the
    #   asynchronous workflow is in progress
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/CreateRegistryRecordResponse AWS API Documentation
    #
    class CreateRegistryRecordResponse < Struct.new(
      :record_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for creating a registry
    #
    # @!attribute [rw] name
    #   The name of the registry
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the registry
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The optional server-side encryption configuration for the registry.
    #   When you provide this field, the specified customer-managed Amazon
    #   Web Services KMS key encrypts the registry's content. Omit this
    #   field to use an Amazon Web Services-owned encryption key. You cannot
    #   change the encryption configuration after registry creation.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] discovery_configuration
    #   Discovery configuration for the registry
    #   @return [Types::DiscoveryConfiguration]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, the service ignores the request, but does not return an
    #   error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the registry
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] approval_configuration
    #   Approval configuration for registry records
    #   @return [Types::ApprovalConfiguration]
    #
    # @!attribute [rw] custom_metadata_schema_configuration
    #   The optional custom metadata schema configuration for the registry.
    #   When provided, registry records can carry structured metadata
    #   validated against this schema.
    #   @return [Types::CustomMetadataSchemaConfiguration]
    #
    # @!attribute [rw] auto_detection_configuration
    #   The optional auto-detection configuration for the registry. When
    #   provided, the registry is automatically populated with resources
    #   discovered according to the configuration. Omit this field for
    #   registries whose records are managed exclusively through the Agent
    #   Registry Control API.
    #   @return [Types::AutoDetectionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/CreateRegistryRequest AWS API Documentation
    #
    class CreateRegistryRequest < Struct.new(
      :name,
      :description,
      :encryption_configuration,
      :discovery_configuration,
      :client_token,
      :tags,
      :approval_configuration,
      :custom_metadata_schema_configuration,
      :auto_detection_configuration)
      SENSITIVE = [:description, :custom_metadata_schema_configuration]
      include Aws::Structure
    end

    # Response structure for creating a registry
    #
    # @!attribute [rw] registry_arn
    #   The ARN of the created registry
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/CreateRegistryResponse AWS API Documentation
    #
    class CreateRegistryResponse < Struct.new(
      :registry_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A validation rule applied to a single claim of an inbound JWT.
    #
    # @!attribute [rw] inbound_token_claim_name
    #   The name of the claim in the inbound token to validate.
    #   @return [String]
    #
    # @!attribute [rw] inbound_token_claim_value_type
    #   The value type of the claim in the inbound token, either a string or
    #   an array of strings.
    #   @return [String]
    #
    # @!attribute [rw] authorizing_claim_match_value
    #   The value and match operator used to authorize the claim.
    #   @return [Types::AuthorizingClaimMatchValueType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/CustomClaimValidationType AWS API Documentation
    #
    class CustomClaimValidationType < Struct.new(
      :inbound_token_claim_name,
      :inbound_token_claim_value_type,
      :authorizing_claim_match_value)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/CustomDescriptor AWS API Documentation
    #
    class CustomDescriptor < Struct.new(
      :data)
      SENSITIVE = [:data]
      include Aws::Structure
    end

    # Configuration for a custom JWT authorizer that validates inbound
    # bearer tokens against an OpenID Connect identity provider.
    #
    # @!attribute [rw] discovery_url
    #   The OpenID Connect discovery URL used to retrieve the identity
    #   provider's metadata and signing keys.
    #   @return [String]
    #
    # @!attribute [rw] allowed_audience
    #   The audience values accepted during JWT validation. A token is
    #   rejected if none of its audience claims match.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_clients
    #   The client identifiers accepted during JWT validation. A token is
    #   rejected if it was not issued to one of these clients.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_scopes
    #   The scopes accepted during JWT validation. A token is rejected if it
    #   does not carry one of these scopes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] custom_claims
    #   Additional custom claim validations applied to the inbound JWT.
    #   @return [Array<Types::CustomClaimValidationType>]
    #
    # @!attribute [rw] private_endpoint
    #   The private endpoint used to reach the identity provider's
    #   discovery URL over a private network path.
    #   @return [Types::PrivateEndpoint]
    #
    # @!attribute [rw] private_endpoint_overrides
    #   Per-domain private endpoint overrides that route specific identity
    #   provider domains through distinct private endpoints.
    #   @return [Array<Types::PrivateEndpointOverride>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/CustomJWTAuthorizerConfiguration AWS API Documentation
    #
    class CustomJWTAuthorizerConfiguration < Struct.new(
      :discovery_url,
      :allowed_audience,
      :allowed_clients,
      :allowed_scopes,
      :custom_claims,
      :private_endpoint,
      :private_endpoint_overrides)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration that defines a typed metadata schema for a registry.
    # Specify at least one of a default schema or per-record-type schema
    # overrides. You can provide both.
    #
    # @!attribute [rw] default_schema
    #   The default JSON Schema that applies to record types without a
    #   specific override. Supported property types are `string`, `string`
    #   with an `enum` constraint, `string` with a `uri` format, and
    #   `boolean`.
    #   @return [String]
    #
    # @!attribute [rw] record_type_schema_overrides
    #   A list of per-record-type schema overrides. When a record's type
    #   matches an override, that override's schema is used instead of the
    #   default schema for validation. If you don't specify an override for
    #   a record type, the default schema applies. If no default schema
    #   exists, custom metadata on records of that type is rejected.
    #   @return [Array<Types::RecordTypeSchemaOverride>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/CustomMetadataSchemaConfiguration AWS API Documentation
    #
    class CustomMetadataSchemaConfiguration < Struct.new(
      :default_schema,
      :record_type_schema_overrides)
      SENSITIVE = [:default_schema]
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The identifier of the registry containing the record (ARN or ID)
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   The identifier of the registry record to delete (ARN or ID)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/DeleteRegistryRecordRequest AWS API Documentation
    #
    class DeleteRegistryRecordRequest < Struct.new(
      :registry_id,
      :record_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for deleting a registry record
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/DeleteRegistryRecordResponse AWS API Documentation
    #
    class DeleteRegistryRecordResponse < Aws::EmptyStructure; end

    # Request structure for deleting a registry
    #
    # @!attribute [rw] registry_id
    #   The identifier of the registry to delete (ARN or ID)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/DeleteRegistryRequest AWS API Documentation
    #
    class DeleteRegistryRequest < Struct.new(
      :registry_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for deleting a registry
    #
    # @!attribute [rw] status
    #   Current status of the registry, set to DELETING when deletion is
    #   initiated
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/DeleteRegistryResponse AWS API Documentation
    #
    class DeleteRegistryResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source configuration that defines where descriptor content is
    # retrieved from.
    #
    # @!attribute [rw] from_url
    #   URL-based descriptor source, populated when descriptor content is
    #   synchronized from a URL.
    #   @return [Types::DescriptorSourceFromUrl]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/DescriptorSource AWS API Documentation
    #
    class DescriptorSource < Struct.new(
      :from_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # URL-based descriptor source configuration, with credential provider
    # configurations for authenticated URL retrieval.
    #
    # @!attribute [rw] url
    #   The URL from which the descriptor content is retrieved.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_configurations
    #   The credential providers used to authenticate when fetching
    #   descriptor content from the source URL.
    #   @return [Array<Types::RegistryRecordCredentialProviderConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/DescriptorSourceFromUrl AWS API Documentation
    #
    class DescriptorSourceFromUrl < Struct.new(
      :url,
      :credential_provider_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The typed set of descriptors for a registry record. Exactly one
    # descriptor field is populated based on the record type.
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
    #   The HTTP descriptor, populated for records detected from an HTTP
    #   protocol source.
    #   @return [Types::HttpDescriptor]
    #
    # @!attribute [rw] agui
    #   The AG-UI descriptor, populated for records detected from an AG-UI
    #   protocol source.
    #   @return [Types::AgUiDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/Descriptors AWS API Documentation
    #
    class Descriptors < Struct.new(
      :mcp_server,
      :a2a_agent_card,
      :agent_skills_definition,
      :custom,
      :http,
      :agui)
      SENSITIVE = []
      include Aws::Structure
    end

    # Discovery configuration for the registry. Controls how consumers are
    # authorized to search the registry and invoke its MCP endpoint.
    #
    # @!attribute [rw] authorizer_configuration
    #   The authorizer configuration for the registry. Required when
    #   authorizerType is CUSTOM\_JWT.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @!attribute [rw] authorizer_type
    #   The type of authorizer that controls how consumers access the
    #   registry's search and MCP invoke operations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/DiscoveryConfiguration AWS API Documentation
    #
    class DiscoveryConfiguration < Struct.new(
      :authorizer_configuration,
      :authorizer_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The server-side encryption configuration for a registry. Specifies a
    # customer-managed Amazon Web Services KMS key used to encrypt the
    # registry's content.
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the customer-managed Amazon Web
    #   Services KMS key used to encrypt the registry's content. The key
    #   must be a symmetric encryption key in the same Amazon Web Services
    #   account and Region as the registry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The identifier of the registry containing the record (ARN or ID)
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   The identifier of the registry record to retrieve (ARN or ID)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/GetRegistryRecordRequest AWS API Documentation
    #
    class GetRegistryRecordRequest < Struct.new(
      :registry_id,
      :record_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for retrieving a registry record
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
    # @!attribute [rw] display_name
    #   The human-readable display name of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] record_type
    #   The type of the registry record, such as MCP, AGENT, SKILL, or
    #   CUSTOM.
    #   @return [String]
    #
    # @!attribute [rw] descriptors
    #   The typed descriptors that define the content of the registry
    #   record.
    #   @return [Types::Descriptors]
    #
    # @!attribute [rw] record_version
    #   The version identifier of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The lifecycle status of the registry record.
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
    # @!attribute [rw] status_reason
    #   The reason for the current status. Typically populated when the
    #   status indicates a failure state.
    #   @return [String]
    #
    # @!attribute [rw] provenance
    #   The provenance lineage entries for the registry record. Populated
    #   for records created by auto-detection; each entry identifies the
    #   upstream source that the record was detected from.
    #   @return [Array<Types::Provenance>]
    #
    # @!attribute [rw] created_by_auto_detection
    #   Specifies whether the registry record was created by auto-detection.
    #   `true` indicates the record was automatically created by the service
    #   based on the registry's auto-detection configuration; `false`
    #   indicates the record was created through a control-plane API call.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_by
    #   The ID of the Amazon Web Services account that created the registry
    #   record.
    #   @return [String]
    #
    # @!attribute [rw] custom_metadata
    #   The custom metadata attached to this registry record. Values are
    #   strings (maximum 128 characters) or booleans.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] custom_metadata_schema_compliance_status
    #   Indicates whether this record's custom metadata conforms to the
    #   registry's current schema. This status is computed at read time
    #   against the latest schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/GetRegistryRecordResponse AWS API Documentation
    #
    class GetRegistryRecordResponse < Struct.new(
      :registry_arn,
      :record_arn,
      :record_id,
      :name,
      :display_name,
      :description,
      :record_type,
      :descriptors,
      :record_version,
      :status,
      :created_at,
      :updated_at,
      :status_reason,
      :provenance,
      :created_by_auto_detection,
      :created_by,
      :custom_metadata,
      :custom_metadata_schema_compliance_status)
      SENSITIVE = [:description, :custom_metadata]
      include Aws::Structure
    end

    # Request structure for getting a registry
    #
    # @!attribute [rw] registry_id
    #   The identifier of the registry to retrieve (ARN or ID)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/GetRegistryRequest AWS API Documentation
    #
    class GetRegistryRequest < Struct.new(
      :registry_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for getting a registry
    #
    # @!attribute [rw] name
    #   The name of the registry
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the registry
    #   @return [String]
    #
    # @!attribute [rw] registry_id
    #   The unique identifier of the registry
    #   @return [String]
    #
    # @!attribute [rw] registry_arn
    #   The ARN of the registry
    #   @return [String]
    #
    # @!attribute [rw] discovery_configuration
    #   Discovery configuration for the registry
    #   @return [Types::DiscoveryConfiguration]
    #
    # @!attribute [rw] encryption_configuration
    #   The server-side encryption configuration for the registry. Appears
    #   only when a customer-managed Amazon Web Services KMS key encrypts
    #   the registry.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] approval_configuration
    #   Approval configuration for registry records
    #   @return [Types::ApprovalConfiguration]
    #
    # @!attribute [rw] custom_metadata_schema_configuration
    #   The custom metadata schema configuration for this registry, if one
    #   has been defined.
    #   @return [Types::CustomMetadataSchemaConfiguration]
    #
    # @!attribute [rw] status
    #   Current status of the registry
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current status. Typically populated when the
    #   status indicates a failure state.
    #   @return [String]
    #
    # @!attribute [rw] auto_detection
    #   The registry's auto-detection properties, including the requested
    #   configuration and the current detection status. Present only when
    #   auto-detection was configured for the registry.
    #   @return [Types::AutoDetection]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the registry was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the registry was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/GetRegistryResponse AWS API Documentation
    #
    class GetRegistryResponse < Struct.new(
      :name,
      :description,
      :registry_id,
      :registry_arn,
      :discovery_configuration,
      :encryption_configuration,
      :approval_configuration,
      :custom_metadata_schema_configuration,
      :status,
      :status_reason,
      :auto_detection,
      :created_at,
      :updated_at)
      SENSITIVE = [:description, :custom_metadata_schema_configuration]
      include Aws::Structure
    end

    # A registry record descriptor for the HTTP protocol. This descriptor is
    # source-only: its content is synchronized from the configured source
    # URL rather than supplied inline.
    #
    # @!attribute [rw] source
    #   The source configuration that defines where descriptor content is
    #   retrieved from.
    #   @return [Types::DescriptorSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/HttpDescriptor AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for listing registries
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for pagination
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters to apply to the registry list
    #   @return [Array<Types::RegistryFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/ListRegistriesRequest AWS API Documentation
    #
    class ListRegistriesRequest < Struct.new(
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for listing registries
    #
    # @!attribute [rw] registries
    #   List of registry summaries
    #   @return [Array<Types::RegistrySummary>]
    #
    # @!attribute [rw] next_token
    #   Token for next page of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/ListRegistriesResponse AWS API Documentation
    #
    class ListRegistriesResponse < Struct.new(
      :registries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The identifier of the registry to list records from (ARN or ID)
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of records to return
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for pagination
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters to apply to the registry record list
    #   @return [Array<Types::RegistryRecordFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/ListRegistryRecordsRequest AWS API Documentation
    #
    class ListRegistryRecordsRequest < Struct.new(
      :registry_id,
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for listing registry records
    #
    # @!attribute [rw] registry_records
    #   List of registry record summaries
    #   @return [Array<Types::RegistryRecordSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for next page of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/ListRegistryRecordsResponse AWS API Documentation
    #
    class ListRegistryRecordsResponse < Struct.new(
      :registry_records,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to list tags for.
    #   Supported resources include registries and registry records.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags currently associated with the resource, as a map of tag
    #   keys to tag values.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A service-managed private endpoint provisioned within a customer VPC.
    #
    # @!attribute [rw] vpc_identifier
    #   The identifier of the VPC in which the private endpoint is
    #   provisioned.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The identifiers of the subnets in which the private endpoint network
    #   interfaces are placed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] endpoint_ip_address_type
    #   The IP address type used by the private endpoint, either IPV4 or
    #   IPV6.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The identifiers of the security groups associated with the private
    #   endpoint network interfaces.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags applied to the service-managed VPC resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] routing_domain
    #   The routing domain used to resolve traffic through the private
    #   endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/ManagedVpcResource AWS API Documentation
    #
    class ManagedVpcResource < Struct.new(
      :vpc_identifier,
      :subnet_ids,
      :endpoint_ip_address_type,
      :security_group_ids,
      :tags,
      :routing_domain)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/McpServerAdditionalData AWS API Documentation
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
    #   The optional source configuration used to synchronize the MCP server
    #   descriptor content.
    #   @return [Types::DescriptorSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/McpServerDescriptor AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/McpToolsDescriptor AWS API Documentation
    #
    class McpToolsDescriptor < Struct.new(
      :data,
      :data_schema_version)
      SENSITIVE = [:data]
      include Aws::Structure
    end

    # A private network endpoint used to reach a resource over a private
    # path. Exactly one member is set.
    #
    # @note PrivateEndpoint is a union - when making an API calls you must set exactly one of the members.
    #
    # @note PrivateEndpoint is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PrivateEndpoint corresponding to the set member.
    #
    # @!attribute [rw] self_managed_lattice_resource
    #   A private endpoint backed by a self-managed VPC Lattice resource
    #   configuration.
    #   @return [Types::SelfManagedLatticeResource]
    #
    # @!attribute [rw] managed_vpc_resource
    #   A private endpoint backed by a service-managed VPC resource.
    #   @return [Types::ManagedVpcResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/PrivateEndpoint AWS API Documentation
    #
    class PrivateEndpoint < Struct.new(
      :self_managed_lattice_resource,
      :managed_vpc_resource,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SelfManagedLatticeResource < PrivateEndpoint; end
      class ManagedVpcResource < PrivateEndpoint; end
      class Unknown < PrivateEndpoint; end
    end

    # A mapping of a domain to the private endpoint used to reach it.
    #
    # @!attribute [rw] domain
    #   The domain name to which this private endpoint override applies.
    #   @return [String]
    #
    # @!attribute [rw] private_endpoint
    #   The private endpoint used to reach the specified domain.
    #   @return [Types::PrivateEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/PrivateEndpointOverride AWS API Documentation
    #
    class PrivateEndpointOverride < Struct.new(
      :domain,
      :private_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # A provenance entry that describes the lineage of a registry record.
    # Records that were auto-detected by Amazon Web Services Agent Registry
    # carry a provenance entry that links the record back to its upstream
    # source.
    #
    # @!attribute [rw] relation
    #   The relationship between the registry record and its upstream
    #   source. `DETECTED_FROM` indicates that the record was auto-detected
    #   from the source resource.
    #   @return [String]
    #
    # @!attribute [rw] source_id
    #   The identifier of the upstream source that the registry record was
    #   detected from.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of the upstream source that the registry record was
    #   detected from.
    #   @return [String]
    #
    # @!attribute [rw] source_details
    #   Additional details about the upstream source that the registry
    #   record was detected from, such as the AgentCore Gateway or Runtime
    #   configuration. The populated member corresponds to the source type.
    #   @return [Types::SourceDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/Provenance AWS API Documentation
    #
    class Provenance < Struct.new(
      :relation,
      :source_id,
      :source_type,
      :source_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # A condensed provenance entry surfaced in list results. Contains the
    # source identity of a lineage entry without the source details returned
    # by `GetRegistryRecord`.
    #
    # @!attribute [rw] relation
    #   The relationship between the registry record and its upstream
    #   source. `DETECTED_FROM` indicates that the record was auto-detected
    #   from the source resource.
    #   @return [String]
    #
    # @!attribute [rw] source_id
    #   The identifier of the upstream source that the registry record was
    #   detected from.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of the upstream source that the registry record was
    #   detected from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/ProvenanceSummary AWS API Documentation
    #
    class ProvenanceSummary < Struct.new(
      :relation,
      :source_id,
      :source_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A schema override for a specific record type within a custom metadata
    # schema configuration.
    #
    # @!attribute [rw] record_type
    #   The record type that this schema override applies to.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The JSON Schema for the specified record type. Must follow the same
    #   structural rules as the default schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/RecordTypeSchemaOverride AWS API Documentation
    #
    class RecordTypeSchemaOverride < Struct.new(
      :record_type,
      :schema)
      SENSITIVE = [:schema]
      include Aws::Structure
    end

    # A single filter applied to a ListRegistries request.
    #
    # @!attribute [rw] name
    #   The attribute to filter on
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to match for the attribute
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/RegistryFilter AWS API Documentation
    #
    class RegistryFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A credential provider configuration that specifies how to authenticate
    # when fetching descriptor content from a registry record's source URL.
    #
    # @!attribute [rw] credential_provider_type
    #   The type of credential provider.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider
    #   The credential provider details corresponding to the specified
    #   credential provider type.
    #   @return [Types::RegistryRecordCredentialProviderUnion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/RegistryRecordCredentialProviderConfiguration AWS API Documentation
    #
    class RegistryRecordCredentialProviderConfiguration < Struct.new(
      :credential_provider_type,
      :credential_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # The credential provider details for a registry record. Exactly one
    # member is populated, matching the configured credential provider type.
    #
    # @note RegistryRecordCredentialProviderUnion is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RegistryRecordCredentialProviderUnion is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RegistryRecordCredentialProviderUnion corresponding to the set member.
    #
    # @!attribute [rw] oauth_credential_provider
    #   The OAuth 2.0 credential provider details.
    #   @return [Types::RegistryRecordOAuthCredentialProvider]
    #
    # @!attribute [rw] iam_credential_provider
    #   The IAM role credential provider details.
    #   @return [Types::RegistryRecordIamCredentialProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/RegistryRecordCredentialProviderUnion AWS API Documentation
    #
    class RegistryRecordCredentialProviderUnion < Struct.new(
      :oauth_credential_provider,
      :iam_credential_provider,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class OauthCredentialProvider < RegistryRecordCredentialProviderUnion; end
      class IamCredentialProvider < RegistryRecordCredentialProviderUnion; end
      class Unknown < RegistryRecordCredentialProviderUnion; end
    end

    # A single filter applied to a ListRegistryRecords request.
    #
    # @!attribute [rw] name
    #   The attribute to filter on
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to match for the attribute
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/RegistryRecordFilter AWS API Documentation
    #
    class RegistryRecordFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for an IAM role credential provider that signs
    # requests to a registry record's source with Amazon Web Services
    # Signature Version 4 (SigV4).
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to assume for request
    #   signing.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The service name to use for request signing, such as execute-api.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region to use for request signing. If not
    #   specified, the Region is derived from the source URL hostname,
    #   falling back to the Region of the registry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/RegistryRecordIamCredentialProvider AWS API Documentation
    #
    class RegistryRecordIamCredentialProvider < Struct.new(
      :role_arn,
      :service,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for an OAuth 2.0 credential provider that
    # authenticates requests to a registry record's source.
    #
    # @!attribute [rw] provider_arn
    #   The Amazon Resource Name (ARN) of the OAuth 2.0 credential provider
    #   resource in Amazon Bedrock AgentCore Identity.
    #   @return [String]
    #
    # @!attribute [rw] grant_type
    #   The OAuth 2.0 grant type used to obtain access tokens.
    #   @return [String]
    #
    # @!attribute [rw] scopes
    #   The OAuth 2.0 scopes to request when obtaining access tokens.
    #   @return [Array<String>]
    #
    # @!attribute [rw] custom_parameters
    #   Additional parameters to include in the OAuth 2.0 token request.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/RegistryRecordOAuthCredentialProvider AWS API Documentation
    #
    class RegistryRecordOAuthCredentialProvider < Struct.new(
      :provider_arn,
      :grant_type,
      :scopes,
      :custom_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a registry record returned by list operations. Contains
    # identifying and lifecycle fields but omits descriptor content.
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
    # @!attribute [rw] display_name
    #   The human-readable display name of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] record_type
    #   The type of the registry record, such as MCP, AGENT, SKILL, or
    #   CUSTOM.
    #   @return [String]
    #
    # @!attribute [rw] record_version
    #   The version identifier of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The lifecycle status of the registry record.
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
    # @!attribute [rw] created_by_auto_detection
    #   Specifies whether the registry record was created by auto-detection.
    #   `true` indicates the record was automatically created by the service
    #   based on the registry's auto-detection configuration; `false`
    #   indicates the record was created through a control-plane API call.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_by
    #   The ID of the Amazon Web Services account that created the registry
    #   record.
    #   @return [String]
    #
    # @!attribute [rw] provenance_summary_list
    #   The condensed provenance lineage for the registry record. Each entry
    #   contains the source relation, source identifier, and source type of
    #   an auto-detection lineage entry. Populated for records created by
    #   auto-detection.
    #   @return [Array<Types::ProvenanceSummary>]
    #
    # @!attribute [rw] custom_metadata_schema_compliance_status
    #   Indicates whether this record's custom metadata conforms to the
    #   registry's current schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/RegistryRecordSummary AWS API Documentation
    #
    class RegistryRecordSummary < Struct.new(
      :registry_arn,
      :record_arn,
      :record_id,
      :name,
      :display_name,
      :description,
      :record_type,
      :record_version,
      :status,
      :created_at,
      :updated_at,
      :created_by_auto_detection,
      :created_by,
      :provenance_summary_list,
      :custom_metadata_schema_compliance_status)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Registry summary for list operations
    #
    # @!attribute [rw] name
    #   Registry name
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Registry description
    #   @return [String]
    #
    # @!attribute [rw] registry_id
    #   Unique registry identifier
    #   @return [String]
    #
    # @!attribute [rw] registry_arn
    #   Registry Amazon Resource Name
    #   @return [String]
    #
    # @!attribute [rw] discovery_configuration
    #   Discovery configuration for the registry
    #   @return [Types::DiscoveryConfiguration]
    #
    # @!attribute [rw] status
    #   Current status of the registry
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current status. Typically populated when the
    #   status indicates a failure state.
    #   @return [String]
    #
    # @!attribute [rw] auto_detection
    #   The registry's auto-detection properties, including the requested
    #   configuration and the current detection status. Present only when
    #   auto-detection was configured for the registry.
    #   @return [Types::AutoDetection]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the registry was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the registry was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/RegistrySummary AWS API Documentation
    #
    class RegistrySummary < Struct.new(
      :name,
      :description,
      :registry_id,
      :registry_arn,
      :discovery_configuration,
      :status,
      :status_reason,
      :auto_detection,
      :created_at,
      :updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The requested resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A self-managed private endpoint backed by a VPC Lattice resource
    # configuration. Exactly one member is set.
    #
    # @note SelfManagedLatticeResource is a union - when making an API calls you must set exactly one of the members.
    #
    # @note SelfManagedLatticeResource is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SelfManagedLatticeResource corresponding to the set member.
    #
    # @!attribute [rw] resource_configuration_identifier
    #   The identifier of the VPC Lattice resource configuration, specified
    #   as a resource configuration ID or ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/SelfManagedLatticeResource AWS API Documentation
    #
    class SelfManagedLatticeResource < Struct.new(
      :resource_configuration_identifier,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ResourceConfigurationIdentifier < SelfManagedLatticeResource; end
      class Unknown < SelfManagedLatticeResource; end
    end

    # The request would exceed a service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details about the upstream source from which a registry record was
    # detected. Exactly one member is populated, corresponding to the source
    # type.
    #
    # @note SourceDetails is a union - when making an API calls you must set exactly one of the members.
    #
    # @note SourceDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SourceDetails corresponding to the set member.
    #
    # @!attribute [rw] agentcore_runtime
    #   The source details for a registry record that was auto-detected from
    #   an Amazon Bedrock AgentCore Runtime resource. Populated when the
    #   source type is `AWS::BedrockAgentCore::Runtime`.
    #   @return [Types::AgentCoreRuntimeSourceDetails]
    #
    # @!attribute [rw] agentcore_gateway
    #   The source details for a registry record that was auto-detected from
    #   an Amazon Bedrock AgentCore Gateway resource. Populated when the
    #   source type is `AWS::BedrockAgentCore::Gateway`.
    #   @return [Types::AgentCoreGatewaySourceDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/SourceDetails AWS API Documentation
    #
    class SourceDetails < Struct.new(
      :agentcore_runtime,
      :agentcore_gateway,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AgentcoreRuntime < SourceDetails; end
      class AgentcoreGateway < SourceDetails; end
      class Unknown < SourceDetails; end
    end

    # @!attribute [rw] registry_id
    #   The identifier of the registry containing the record (ARN or ID)
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   The identifier of the registry record to submit for approval (ARN or
    #   ID)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/SubmitRegistryRecordForApprovalRequest AWS API Documentation
    #
    class SubmitRegistryRecordForApprovalRequest < Struct.new(
      :registry_id,
      :record_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for submitting a registry record for approval
    #
    # @!attribute [rw] registry_arn
    #   The ARN of the registry
    #   @return [String]
    #
    # @!attribute [rw] record_arn
    #   The ARN of the registry record
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   The ID of the registry record
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The resulting status of the registry record
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the record was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/SubmitRegistryRecordForApprovalResponse AWS API Documentation
    #
    class SubmitRegistryRecordForApprovalResponse < Struct.new(
      :registry_arn,
      :record_arn,
      :record_id,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to tag. Supported
    #   resources include registries and registry records.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the resource, as a map of tag keys to tag
    #   values. Tag keys must be unique within the request.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling; the caller may retry
    # after a delay.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #   Supported resources include registries and registry records.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to remove from the resource. Tags with keys not
    #   included in this list remain on the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] registry_id
    #   The identifier of the registry containing the record (ARN or ID)
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   The identifier of the registry record to update (ARN or ID)
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name of the registry record. Omit to leave the name
    #   unchanged.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The updated display name of the registry record. Omit to leave the
    #   display name unchanged; provide an empty wrapper to unset it.
    #   @return [Types::UpdatedDisplayName]
    #
    # @!attribute [rw] description
    #   The updated description of the registry record. Omit to leave the
    #   description unchanged; provide an empty wrapper to unset it.
    #   @return [Types::UpdatedDescription]
    #
    # @!attribute [rw] record_type
    #   The updated type of the registry record. Omit to leave the record
    #   type unchanged.
    #   @return [String]
    #
    # @!attribute [rw] descriptors
    #   The updated typed descriptor content for the registry record. Omit
    #   to leave the descriptors unchanged.
    #   @return [Types::UpdatedDescriptors]
    #
    # @!attribute [rw] record_version
    #   The updated version of the registry record. Omit to leave the
    #   version unchanged.
    #   @return [String]
    #
    # @!attribute [rw] custom_metadata
    #   The updated custom metadata for the registry record. Values can be
    #   strings (maximum 128 characters) or native JSON booleans (`true` or
    #   `false`). Omit to leave the existing metadata unchanged. Supply the
    #   wrapper with a full replacement set to update, or with a null value
    #   to clear all metadata.
    #   @return [Types::UpdatedCustomMetadataMap]
    #
    # @!attribute [rw] trigger_synchronization
    #   Whether to trigger synchronization of the record's descriptor
    #   content from its source
    #   @return [Boolean]
    #
    # @!attribute [rw] provenance
    #   The provenance lineage re-assertion for the registry record. This
    #   field is reserved for the Amazon Web Services Agent Registry
    #   auto-detection service principal. Requests that include this field
    #   from other callers are rejected. The source identity of an existing
    #   lineage is immutable; a re-assertion may only refresh the source
    #   details.
    #   @return [Array<Types::Provenance>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdateRegistryRecordRequest AWS API Documentation
    #
    class UpdateRegistryRecordRequest < Struct.new(
      :registry_id,
      :record_id,
      :name,
      :display_name,
      :description,
      :record_type,
      :descriptors,
      :record_version,
      :custom_metadata,
      :trigger_synchronization,
      :provenance)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for updating a registry record
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
    # @!attribute [rw] display_name
    #   The human-readable display name of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] record_type
    #   The type of the registry record, such as MCP, AGENT, SKILL, or
    #   CUSTOM.
    #   @return [String]
    #
    # @!attribute [rw] descriptors
    #   The typed descriptors that define the content of the registry
    #   record.
    #   @return [Types::Descriptors]
    #
    # @!attribute [rw] record_version
    #   The version identifier of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The lifecycle status of the registry record.
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
    # @!attribute [rw] status_reason
    #   The reason for the current status. Typically populated when the
    #   status indicates a failure state.
    #   @return [String]
    #
    # @!attribute [rw] provenance
    #   The provenance lineage entries for the registry record. Populated
    #   for records created by auto-detection; each entry identifies the
    #   upstream source that the record was detected from.
    #   @return [Array<Types::Provenance>]
    #
    # @!attribute [rw] created_by_auto_detection
    #   Specifies whether the registry record was created by auto-detection.
    #   `true` indicates the record was automatically created by the service
    #   based on the registry's auto-detection configuration; `false`
    #   indicates the record was created through a control-plane API call.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_by
    #   The ID of the Amazon Web Services account that created the registry
    #   record.
    #   @return [String]
    #
    # @!attribute [rw] custom_metadata
    #   The custom metadata attached to this registry record. Values are
    #   strings (maximum 128 characters) or booleans.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] custom_metadata_schema_compliance_status
    #   Indicates whether this record's custom metadata conforms to the
    #   registry's current schema. This status is computed at read time
    #   against the latest schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdateRegistryRecordResponse AWS API Documentation
    #
    class UpdateRegistryRecordResponse < Struct.new(
      :registry_arn,
      :record_arn,
      :record_id,
      :name,
      :display_name,
      :description,
      :record_type,
      :descriptors,
      :record_version,
      :status,
      :created_at,
      :updated_at,
      :status_reason,
      :provenance,
      :created_by_auto_detection,
      :created_by,
      :custom_metadata,
      :custom_metadata_schema_compliance_status)
      SENSITIVE = [:description, :custom_metadata]
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The identifier of the registry containing the record (ARN or ID)
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   The identifier of the registry record to update the status of (ARN
    #   or ID)
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The target status for the registry record
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the status change, for example why the record was
    #   approved, rejected, or deprecated
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdateRegistryRecordStatusRequest AWS API Documentation
    #
    class UpdateRegistryRecordStatusRequest < Struct.new(
      :registry_id,
      :record_id,
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for updating a registry record status
    #
    # @!attribute [rw] registry_arn
    #   The ARN of the registry
    #   @return [String]
    #
    # @!attribute [rw] record_arn
    #   The ARN of the registry record
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   The ID of the registry record
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The resulting status of the registry record
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the status change
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the record was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdateRegistryRecordStatusResponse AWS API Documentation
    #
    class UpdateRegistryRecordStatusResponse < Struct.new(
      :registry_arn,
      :record_arn,
      :record_id,
      :status,
      :status_reason,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for updating a registry
    #
    # @!attribute [rw] registry_id
    #   The identifier of the registry to update (ARN or ID)
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name of the registry
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the registry
    #   @return [Types::UpdatedDescription]
    #
    # @!attribute [rw] discovery_configuration
    #   The updated discovery configuration. Changing the discovery
    #   authorization can break existing consumers that rely on the previous
    #   authorization type.
    #   @return [Types::UpdatedDiscoveryConfiguration]
    #
    # @!attribute [rw] approval_configuration
    #   The updated approval configuration. The change applies only to
    #   records that move to PENDING\_APPROVAL after the update; records
    #   already in PENDING\_APPROVAL are unaffected.
    #   @return [Types::UpdatedApprovalConfiguration]
    #
    # @!attribute [rw] custom_metadata_schema_configuration
    #   Updated custom metadata schema configuration for the registry. Omit
    #   to leave the existing schema unchanged. Schema evolution is additive
    #   only: you can add properties and enum values, but you cannot remove
    #   properties, change property types or formats, add or remove enum
    #   constraints, or remove record type overrides.
    #   @return [Types::UpdatedCustomMetadataSchemaConfiguration]
    #
    # @!attribute [rw] auto_detection_configuration
    #   The updated auto-detection configuration for the registry, with
    #   PATCH semantics. Omit this field to leave the current configuration
    #   unchanged. Supply an empty wrapper to unset it. Supply
    #   `optionalValue` to replace it.
    #   @return [Types::UpdatedAutoDetectionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdateRegistryRequest AWS API Documentation
    #
    class UpdateRegistryRequest < Struct.new(
      :registry_id,
      :name,
      :description,
      :discovery_configuration,
      :approval_configuration,
      :custom_metadata_schema_configuration,
      :auto_detection_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for updating a registry
    #
    # @!attribute [rw] name
    #   The name of the registry
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the registry
    #   @return [String]
    #
    # @!attribute [rw] registry_id
    #   The unique identifier of the registry
    #   @return [String]
    #
    # @!attribute [rw] registry_arn
    #   The ARN of the registry
    #   @return [String]
    #
    # @!attribute [rw] discovery_configuration
    #   Discovery configuration for the registry
    #   @return [Types::DiscoveryConfiguration]
    #
    # @!attribute [rw] encryption_configuration
    #   The server-side encryption configuration for the registry. Appears
    #   only when a customer-managed Amazon Web Services KMS key encrypts
    #   the registry.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] approval_configuration
    #   Approval configuration for registry records
    #   @return [Types::ApprovalConfiguration]
    #
    # @!attribute [rw] custom_metadata_schema_configuration
    #   The custom metadata schema configuration for this registry, if one
    #   has been defined.
    #   @return [Types::CustomMetadataSchemaConfiguration]
    #
    # @!attribute [rw] status
    #   Current status of the registry
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current status. Typically populated when the
    #   status indicates a failure state.
    #   @return [String]
    #
    # @!attribute [rw] auto_detection
    #   The registry's auto-detection properties, including the requested
    #   configuration and the current detection status. Present only when
    #   auto-detection was configured for the registry.
    #   @return [Types::AutoDetection]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the registry was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the registry was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdateRegistryResponse AWS API Documentation
    #
    class UpdateRegistryResponse < Struct.new(
      :name,
      :description,
      :registry_id,
      :registry_arn,
      :discovery_configuration,
      :encryption_configuration,
      :approval_configuration,
      :custom_metadata_schema_configuration,
      :status,
      :status_reason,
      :auto_detection,
      :created_at,
      :updated_at)
      SENSITIVE = [:description, :custom_metadata_schema_configuration]
      include Aws::Structure
    end

    # The A2A agent card descriptor patch wrapper. Omit to leave the
    # descriptor unchanged; supply an empty object to remove it; supply
    # optionalValue to patch its fields.
    #
    # @!attribute [rw] optional_value
    #   The value to set for this field. Omit the wrapper to leave the field
    #   unchanged.
    #   @return [Types::UpdatedA2aAgentCardDescriptorFields]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedA2aAgentCardDescriptor AWS API Documentation
    #
    class UpdatedA2aAgentCardDescriptor < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The set of A2A agent card descriptor fields that can be individually
    # updated.
    #
    # @!attribute [rw] data
    #   The patch for the descriptor's data field.
    #   @return [Types::UpdatedDescriptorData]
    #
    # @!attribute [rw] data_schema_version
    #   The patch for the descriptor's data schema version field.
    #   @return [Types::UpdatedDataSchemaVersion]
    #
    # @!attribute [rw] source
    #   The patch for the descriptor's source field.
    #   @return [Types::UpdatedDescriptorSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedA2aAgentCardDescriptorFields AWS API Documentation
    #
    class UpdatedA2aAgentCardDescriptorFields < Struct.new(
      :data,
      :data_schema_version,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The AG-UI descriptor patch wrapper. Omit to leave the descriptor
    # unchanged; supply an empty object to remove it; supply optionalValue
    # to patch its fields.
    #
    # @!attribute [rw] optional_value
    #   The value to set for this field. Omit the wrapper to leave the field
    #   unchanged.
    #   @return [Types::UpdatedAgUiDescriptorFields]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedAgUiDescriptor AWS API Documentation
    #
    class UpdatedAgUiDescriptor < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The set of AG-UI descriptor fields that can be individually updated.
    #
    # @!attribute [rw] source
    #   The patch for the descriptor's source field.
    #   @return [Types::UpdatedDescriptorSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedAgUiDescriptorFields AWS API Documentation
    #
    class UpdatedAgUiDescriptorFields < Struct.new(
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The agent skills additional-data patch wrapper. Omit to leave the
    # additional data unchanged; supply an empty object to remove it; supply
    # optionalValue to patch its fields.
    #
    # @!attribute [rw] optional_value
    #   The value to set for this field. Omit the wrapper to leave the field
    #   unchanged.
    #   @return [Types::UpdatedAgentSkillsAdditionalDataFields]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedAgentSkillsAdditionalData AWS API Documentation
    #
    class UpdatedAgentSkillsAdditionalData < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The set of agent skills additional-data fields that can be
    # individually updated.
    #
    # @!attribute [rw] skill_md
    #   The patch for the agent skills markdown descriptor field.
    #   @return [Types::UpdatedAgentSkillsMdDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedAgentSkillsAdditionalDataFields AWS API Documentation
    #
    class UpdatedAgentSkillsAdditionalDataFields < Struct.new(
      :skill_md)
      SENSITIVE = []
      include Aws::Structure
    end

    # The agent skills definition descriptor patch wrapper. Omit to leave
    # the descriptor unchanged; supply an empty object to remove it; supply
    # optionalValue to patch its fields.
    #
    # @!attribute [rw] optional_value
    #   The value to set for this field. Omit the wrapper to leave the field
    #   unchanged.
    #   @return [Types::UpdatedAgentSkillsDefinitionDescriptorFields]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedAgentSkillsDefinitionDescriptor AWS API Documentation
    #
    class UpdatedAgentSkillsDefinitionDescriptor < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The set of agent skills definition descriptor fields that can be
    # individually updated.
    #
    # @!attribute [rw] data
    #   The patch for the descriptor's data field.
    #   @return [Types::UpdatedDescriptorData]
    #
    # @!attribute [rw] data_schema_version
    #   The patch for the descriptor's data schema version field.
    #   @return [Types::UpdatedDataSchemaVersion]
    #
    # @!attribute [rw] additional_data
    #   The patch for the descriptor's additional data field.
    #   @return [Types::UpdatedAgentSkillsAdditionalData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedAgentSkillsDefinitionDescriptorFields AWS API Documentation
    #
    class UpdatedAgentSkillsDefinitionDescriptorFields < Struct.new(
      :data,
      :data_schema_version,
      :additional_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # The agent skills markdown descriptor patch wrapper. Omit to leave the
    # descriptor unchanged; supply an empty object to remove it; supply
    # optionalValue to patch its fields.
    #
    # @!attribute [rw] optional_value
    #   The value to set for this field. Omit the wrapper to leave the field
    #   unchanged.
    #   @return [Types::UpdatedAgentSkillsMdDescriptorFields]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedAgentSkillsMdDescriptor AWS API Documentation
    #
    class UpdatedAgentSkillsMdDescriptor < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The set of agent skills markdown descriptor fields that can be
    # individually updated.
    #
    # @!attribute [rw] data
    #   The patch for the descriptor's data field.
    #   @return [Types::UpdatedDescriptorData]
    #
    # @!attribute [rw] data_schema_version
    #   The patch for the descriptor's data schema version field.
    #   @return [Types::UpdatedDataSchemaVersion]
    #
    # @!attribute [rw] source
    #   The patch for the descriptor's source field.
    #   @return [Types::UpdatedDescriptorSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedAgentSkillsMdDescriptorFields AWS API Documentation
    #
    class UpdatedAgentSkillsMdDescriptorFields < Struct.new(
      :data,
      :data_schema_version,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # A wrapper for updating the approval configuration of a registry.
    # Include this wrapper to replace the approval configuration with the
    # specified value; omit it to leave the approval configuration
    # unchanged.
    #
    # @!attribute [rw] optional_value
    #   The value to set for this field. Omit the wrapper to leave the field
    #   unchanged.
    #   @return [Types::ApprovalConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedApprovalConfiguration AWS API Documentation
    #
    class UpdatedApprovalConfiguration < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Wrapper for updating an optional authorizer configuration with PATCH
    # semantics.
    #
    # @!attribute [rw] optional_value
    #   The new authorizer configuration to set. Omit to leave the existing
    #   configuration unchanged.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedAuthorizerConfiguration AWS API Documentation
    #
    class UpdatedAuthorizerConfiguration < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A wrapper for updating the auto-detection configuration of a registry
    # with PATCH semantics. Include this wrapper to replace the
    # auto-detection configuration with the specified value. Omit it to
    # leave the auto-detection configuration unchanged. To clear the
    # configuration, include the wrapper with a null `optionalValue`.
    #
    # @!attribute [rw] optional_value
    #   The value to set for this field. Omit the wrapper to leave the field
    #   unchanged.
    #   @return [Types::AutoDetectionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedAutoDetectionConfiguration AWS API Documentation
    #
    class UpdatedAutoDetectionConfiguration < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The custom descriptor patch wrapper. Omit to leave the descriptor
    # unchanged; supply an empty object to remove it; supply optionalValue
    # to patch its fields.
    #
    # @!attribute [rw] optional_value
    #   The value to set for this field. Omit the wrapper to leave the field
    #   unchanged.
    #   @return [Types::UpdatedCustomDescriptorFields]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedCustomDescriptor AWS API Documentation
    #
    class UpdatedCustomDescriptor < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The set of custom descriptor fields that can be individually updated.
    #
    # @!attribute [rw] data
    #   The patch for the descriptor's data field.
    #   @return [Types::UpdatedDescriptorData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedCustomDescriptorFields AWS API Documentation
    #
    class UpdatedCustomDescriptorFields < Struct.new(
      :data)
      SENSITIVE = []
      include Aws::Structure
    end

    # The custom metadata patch wrapper. Omit to leave the existing metadata
    # unchanged; supply with a null value to clear all metadata; supply with
    # key-value pairs to replace the existing metadata.
    #
    # @!attribute [rw] optional_value
    #   The value to set for this field. Omit the wrapper to leave the field
    #   unchanged.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedCustomMetadataMap AWS API Documentation
    #
    class UpdatedCustomMetadataMap < Struct.new(
      :optional_value)
      SENSITIVE = [:optional_value]
      include Aws::Structure
    end

    # The custom metadata schema configuration patch wrapper. Omit to leave
    # the existing schema unchanged.
    #
    # @!attribute [rw] optional_value
    #   The value to set for this field. Omit the wrapper to leave the field
    #   unchanged.
    #   @return [Types::CustomMetadataSchemaConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedCustomMetadataSchemaConfiguration AWS API Documentation
    #
    class UpdatedCustomMetadataSchemaConfiguration < Struct.new(
      :optional_value)
      SENSITIVE = [:optional_value]
      include Aws::Structure
    end

    # Leaf patch wrapper for a descriptor's data schema version. Omit to
    # leave unchanged; supply an empty object to unset; supply optionalValue
    # to set.
    #
    # @!attribute [rw] optional_value
    #   The value to set for this field. Omit the wrapper to leave the field
    #   unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedDataSchemaVersion AWS API Documentation
    #
    class UpdatedDataSchemaVersion < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Wrapper for updating an optional Description field with PATCH
    # semantics
    #
    # @!attribute [rw] optional_value
    #   The value to set for this field. Omit the wrapper to leave the field
    #   unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedDescription AWS API Documentation
    #
    class UpdatedDescription < Struct.new(
      :optional_value)
      SENSITIVE = [:optional_value]
      include Aws::Structure
    end

    # Leaf patch wrapper for descriptor data. Omit to leave unchanged;
    # supply an empty object to unset; supply optionalValue to set.
    #
    # @!attribute [rw] optional_value
    #   The value to set for this field. Omit the wrapper to leave the field
    #   unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedDescriptorData AWS API Documentation
    #
    class UpdatedDescriptorData < Struct.new(
      :optional_value)
      SENSITIVE = [:optional_value]
      include Aws::Structure
    end

    # Leaf patch wrapper for a descriptor's source configuration. Omit to
    # leave unchanged; supply an empty object to unset; supply optionalValue
    # to set.
    #
    # @!attribute [rw] optional_value
    #   The value to set for this field. Omit the wrapper to leave the field
    #   unchanged.
    #   @return [Types::DescriptorSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedDescriptorSource AWS API Documentation
    #
    class UpdatedDescriptorSource < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The top-level descriptors patch wrapper used in UpdateRegistryRecord.
    # Omit to leave the current descriptors unchanged; supply an empty
    # object to clear them; supply optionalValue to apply a per-field patch.
    #
    # @!attribute [rw] optional_value
    #   The value to set for this field. Omit the wrapper to leave the field
    #   unchanged.
    #   @return [Types::UpdatedDescriptorsFields]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedDescriptors AWS API Documentation
    #
    class UpdatedDescriptors < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The patchable descriptor fields applied during an UpdateRegistryRecord
    # call. Each field is independently patchable.
    #
    # @!attribute [rw] mcp_server
    #   The patch for the MCP server descriptor.
    #   @return [Types::UpdatedMcpServerDescriptor]
    #
    # @!attribute [rw] a2a_agent_card
    #   The patch for the A2A agent card descriptor.
    #   @return [Types::UpdatedA2aAgentCardDescriptor]
    #
    # @!attribute [rw] agent_skills_definition
    #   The patch for the agent skills definition descriptor.
    #   @return [Types::UpdatedAgentSkillsDefinitionDescriptor]
    #
    # @!attribute [rw] custom
    #   The patch for the custom descriptor.
    #   @return [Types::UpdatedCustomDescriptor]
    #
    # @!attribute [rw] http
    #   The patch for the HTTP descriptor.
    #   @return [Types::UpdatedHttpDescriptor]
    #
    # @!attribute [rw] agui
    #   The patch for the AG-UI descriptor.
    #   @return [Types::UpdatedAgUiDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedDescriptorsFields AWS API Documentation
    #
    class UpdatedDescriptorsFields < Struct.new(
      :mcp_server,
      :a2a_agent_card,
      :agent_skills_definition,
      :custom,
      :http,
      :agui)
      SENSITIVE = []
      include Aws::Structure
    end

    # The discovery configuration fields to update on a registry. Omit this
    # structure to leave the discovery configuration unchanged.
    #
    # @!attribute [rw] authorizer_configuration
    #   Authorization configuration for the registry, with PATCH semantics
    #   @return [Types::UpdatedAuthorizerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedDiscoveryConfiguration AWS API Documentation
    #
    class UpdatedDiscoveryConfiguration < Struct.new(
      :authorizer_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Leaf patch wrapper for a registry record's display name. Omit to
    # leave unchanged; supply an empty object to unset; supply optionalValue
    # to set.
    #
    # @!attribute [rw] optional_value
    #   The value to set for this field. Omit the wrapper to leave the field
    #   unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedDisplayName AWS API Documentation
    #
    class UpdatedDisplayName < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The HTTP descriptor patch wrapper. Omit to leave the descriptor
    # unchanged; supply an empty object to remove it; supply optionalValue
    # to patch its fields.
    #
    # @!attribute [rw] optional_value
    #   The value to set for this field. Omit the wrapper to leave the field
    #   unchanged.
    #   @return [Types::UpdatedHttpDescriptorFields]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedHttpDescriptor AWS API Documentation
    #
    class UpdatedHttpDescriptor < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The set of HTTP descriptor fields that can be individually updated.
    #
    # @!attribute [rw] source
    #   The patch for the descriptor's source field.
    #   @return [Types::UpdatedDescriptorSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedHttpDescriptorFields AWS API Documentation
    #
    class UpdatedHttpDescriptorFields < Struct.new(
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The MCP server additional-data patch wrapper. Omit to leave the
    # additional data unchanged; supply an empty object to remove it; supply
    # optionalValue to patch its fields.
    #
    # @!attribute [rw] optional_value
    #   The value to set for this field. Omit the wrapper to leave the field
    #   unchanged.
    #   @return [Types::UpdatedMcpServerAdditionalDataFields]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedMcpServerAdditionalData AWS API Documentation
    #
    class UpdatedMcpServerAdditionalData < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The set of MCP server additional-data fields that can be individually
    # updated.
    #
    # @!attribute [rw] tools
    #   The patch for the MCP tools descriptor field.
    #   @return [Types::UpdatedMcpToolsDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedMcpServerAdditionalDataFields AWS API Documentation
    #
    class UpdatedMcpServerAdditionalDataFields < Struct.new(
      :tools)
      SENSITIVE = []
      include Aws::Structure
    end

    # The MCP server descriptor patch wrapper. Omit to leave the descriptor
    # unchanged; supply an empty object to remove it; supply optionalValue
    # to patch its fields.
    #
    # @!attribute [rw] optional_value
    #   The value to set for this field. Omit the wrapper to leave the field
    #   unchanged.
    #   @return [Types::UpdatedMcpServerDescriptorFields]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedMcpServerDescriptor AWS API Documentation
    #
    class UpdatedMcpServerDescriptor < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The set of MCP server descriptor fields that can be individually
    # updated.
    #
    # @!attribute [rw] data
    #   The patch for the descriptor's data field.
    #   @return [Types::UpdatedDescriptorData]
    #
    # @!attribute [rw] data_schema_version
    #   The patch for the descriptor's data schema version field.
    #   @return [Types::UpdatedDataSchemaVersion]
    #
    # @!attribute [rw] source
    #   The patch for the descriptor's source field.
    #   @return [Types::UpdatedDescriptorSource]
    #
    # @!attribute [rw] additional_data
    #   The patch for the descriptor's additional data field.
    #   @return [Types::UpdatedMcpServerAdditionalData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedMcpServerDescriptorFields AWS API Documentation
    #
    class UpdatedMcpServerDescriptorFields < Struct.new(
      :data,
      :data_schema_version,
      :source,
      :additional_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # The MCP tools descriptor patch wrapper. Omit to leave the tools
    # descriptor unchanged; supply an empty object to remove it; supply
    # optionalValue to patch its fields.
    #
    # @!attribute [rw] optional_value
    #   The value to set for this field. Omit the wrapper to leave the field
    #   unchanged.
    #   @return [Types::UpdatedMcpToolsDescriptorFields]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedMcpToolsDescriptor AWS API Documentation
    #
    class UpdatedMcpToolsDescriptor < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The set of MCP tools descriptor fields that can be individually
    # updated.
    #
    # @!attribute [rw] data
    #   The patch for the descriptor's data field.
    #   @return [Types::UpdatedDescriptorData]
    #
    # @!attribute [rw] data_schema_version
    #   The patch for the descriptor's data schema version field.
    #   @return [Types::UpdatedDataSchemaVersion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/UpdatedMcpToolsDescriptorFields AWS API Documentation
    #
    class UpdatedMcpToolsDescriptorFields < Struct.new(
      :data,
      :data_schema_version)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/ValidationException AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The workload identity details associated with a source resource.
    # Present on the source details of a provenance entry when the upstream
    # resource has a workload identity configured.
    #
    # @!attribute [rw] workload_identity_arn
    #   The Amazon Resource Name (ARN) of the workload identity associated
    #   with the source resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/agent-registry-control-2025-12-01/WorkloadIdentityDetails AWS API Documentation
    #
    class WorkloadIdentityDetails < Struct.new(
      :workload_identity_arn)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end


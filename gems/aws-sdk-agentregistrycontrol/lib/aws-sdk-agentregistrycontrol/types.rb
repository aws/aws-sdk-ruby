# frozen_string_literal: true

# This is generated code!

module Aws::AgentRegistryControl
  # This module contains the types returned by client operations.
  module Types

    # <p>Descriptor that defines the content of an A2A (Agent-to-Agent) agent card registry record. The content is validated against the A2A protocol schema.</p>
    # @!attribute data
    #   <p>The A2A agent card content, serialized as descriptor payload data.</p>
    #   @return [String]
    # @!attribute data_schema_version
    #   <p>The schema version of the descriptor payload.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The optional source configuration used to synchronize the A2A agent card descriptor content.</p>
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

    # <p>A registry record descriptor for the AG-UI (Agent-User Interaction) protocol.</p>
    # @!attribute source
    #   <p>The source configuration that defines where descriptor content is retrieved from.</p>
    #   @return [Types::DescriptorSource]
    class AgUiDescriptor < Struct.new(
      nil,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source details for a registry record that was auto-detected from an Amazon Bedrock AgentCore Gateway resource.</p>
    # @!attribute protocol_type
    #   <p>The protocol type of the AgentCore Gateway resource that the registry record was detected from, for example <code>MCP</code>.</p>
    #   @return [String]
    # @!attribute authorizer_type
    #   <p>The type of authorizer configured on the AgentCore Gateway resource that the registry record was detected from.</p>
    #   @return [String]
    # @!attribute authorizer_configuration
    #   <p>The authorizer configuration for a registry. Exactly one member is set.</p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute workload_identity_details
    #   <p>The workload identity details for the AgentCore Gateway resource. Present when the gateway has a workload identity configured.</p>
    #   @return [Types::WorkloadIdentityDetails]
    class AgentCoreGatewaySourceDetails < Struct.new(
      nil,
      :protocol_type,
      :authorizer_type,
      :authorizer_configuration,
      :workload_identity_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The protocol configuration of an AgentCore Runtime resource that a registry record was auto-detected from.</p>
    # @!attribute server_protocol
    #   <p>The server protocol used by the AgentCore Runtime, such as <code>MCP</code>, <code>HTTP</code>, <code>A2A</code>, or <code>AGUI</code>.</p>
    #   @return [String]
    class AgentCoreRuntimeProtocolConfiguration < Struct.new(
      nil,
      :server_protocol,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source details for a registry record that was auto-detected from an Amazon Bedrock AgentCore Runtime resource.</p>
    # @!attribute protocol_configuration
    #   <p>The protocol configuration of the AgentCore Runtime resource that the registry record was detected from.</p>
    #   @return [Types::AgentCoreRuntimeProtocolConfiguration]
    # @!attribute authorizer_configuration
    #   <p>The authorizer configuration for a registry. Exactly one member is set.</p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute workload_identity_details
    #   <p>The workload identity details for the AgentCore Runtime resource. Present when the runtime has a workload identity configured.</p>
    #   @return [Types::WorkloadIdentityDetails]
    class AgentCoreRuntimeSourceDetails < Struct.new(
      nil,
      :protocol_configuration,
      :authorizer_configuration,
      :workload_identity_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Additional data associated with an agent skills definition descriptor.</p>
    # @!attribute skill_md
    #   <p>The markdown skill content associated with an agent skills definition.</p>
    #   @return [Types::AgentSkillsMdDescriptor]
    class AgentSkillsAdditionalData < Struct.new(
      nil,
      :skill_md,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Descriptor that defines an agent skills registry record and its associated content.</p>
    # @!attribute data
    #   <p>The agent skills definition content, serialized as descriptor payload data.</p>
    #   @return [String]
    # @!attribute data_schema_version
    #   <p>The schema version of the descriptor payload.</p>
    #   @return [String]
    # @!attribute additional_data
    #   <p>Additional data associated with the agent skills definition descriptor.</p>
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

    # <p>Markdown-format descriptor containing an agent skills document.</p>
    # @!attribute data
    #   <p>The agent skills markdown content, serialized as descriptor payload data.</p>
    #   @return [String]
    # @!attribute data_schema_version
    #   <p>The schema version of the descriptor payload.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The optional source configuration used to synchronize the agent skills markdown content.</p>
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

    # <p>Configuration for the registry's record approval workflow. Controls whether records submitted for approval require manual review before they become approved and discoverable, or are auto-approved. When no auto-approval rules are configured, submitted records require manual review.</p>
    # @!attribute auto_approval_rules
    #   <p>The rules that determine which registry records are automatically approved on submission. When omitted or empty, submitted records require manual review.</p>
    #   @return [Array<String>]
    class ApprovalConfiguration < Struct.new(
      nil,
      :auto_approval_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The authorizer configuration for a registry. Exactly one member is set.</p>
    # @!attribute custom_jwt_authorizer
    #   <p>Configuration for a custom JWT authorizer.</p>
    #   @return [Types::CustomJWTAuthorizerConfiguration]
    class AuthorizerConfiguration < Struct.new(
      :custom_jwt_authorizer,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CustomJWTAuthorizer < AuthorizerConfiguration; end
      class Unknown < AuthorizerConfiguration; end
    end

    # <p>The value and match operator used to authorize a claim during JWT validation.</p>
    # @!attribute claim_match_value
    #   <p>The expected value or values that the claim is compared against.</p>
    #   @return [Types::ClaimMatchValueType]
    # @!attribute claim_match_operator
    #   <p>The operator used to compare the claim value against the expected value.</p>
    #   @return [String]
    class AuthorizingClaimMatchValueType < Struct.new(
      nil,
      :claim_match_value,
      :claim_match_operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The auto-detection properties for a registry, including the requested configuration and the current detection status. When auto-detection is enabled and the scope preconditions are met, the registry is automatically populated with discovered resources.</p>
    # @!attribute configuration
    #   <p>The auto-detection settings that control how resources are discovered for the registry.</p>
    #   @return [Types::AutoDetectionConfiguration]
    # @!attribute status
    #   <p>The current auto-detection status. <code>ACTIVE</code> indicates that the registry is actively being populated with detected resources. <code>INACTIVE</code> indicates that the preconditions required at the configured scope are not currently met.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A human-readable explanation of the current auto-detection status. Typically populated when the status requires additional context.</p>
    #   @return [String]
    class AutoDetection < Struct.new(
      nil,
      :configuration,
      :status,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The customer-defined auto-detection settings for a registry.</p>
    # @!attribute scope
    #   <p>The source from which resources are detected. For example, <code>ORGANIZATION</code> sources resources from all member accounts of an Amazon Web Services organization.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Specifies whether auto-detection is requested for the registry. Setting this to <code>true</code> is necessary but not sufficient for auto-detection to become active; the preconditions of the configured scope must also be met.</p>
    #   @return [Boolean]
    class AutoDetectionConfiguration < Struct.new(
      nil,
      :scope,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The expected value used to match a claim. Exactly one member is set.</p>
    # @!attribute match_value_string
    #   <p>A single string value to match the claim against.</p>
    #   @return [String]
    # @!attribute match_value_string_list
    #   <p>A list of string values to match the claim against.</p>
    #   @return [Array<String>]
    class ClaimMatchValueType < Struct.new(
      :match_value_string,
      :match_value_string_list,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class MatchValueString < ClaimMatchValueType; end
      class MatchValueStringList < ClaimMatchValueType; end
      class Unknown < ClaimMatchValueType; end
    end

    # <p>The request conflicts with the current state of the resource.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The identifier of the registry in which to create the record (ARN or ID)</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the registry record</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The human-readable display name of the registry record</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the registry record</p>
    #   @return [String]
    # @!attribute record_type
    #   <p>The type of the registry record, which determines the descriptor format</p>
    #   @return [String]
    # @!attribute descriptors
    #   <p>The typed descriptor content for the registry record</p>
    #   @return [Types::Descriptors]
    # @!attribute record_version
    #   <p>The version of the registry record</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Client token for idempotency</p>
    #   @return [String]
    # @!attribute provenance
    #   <p>The provenance lineage entries for the registry record. This field is reserved for the Amazon Web Services Agent Registry auto-detection service principal. Requests that include this field from other callers are rejected.</p>
    #   @return [Array<Types::Provenance>]
    # @!attribute custom_metadata
    #   <p>The custom metadata for the record. Values are strings or JSON booleans.</p>
    #   @return [JSON]
    # @!attribute tags
    #   <p>Tags to associate with the registry record</p>
    #   @return [Hash<String, String>]
    class CreateRegistryRecordRequest < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for creating a registry record</p>
    # @!attribute record_arn
    #   <p>The ARN of the created registry record</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the registry record, set to CREATING while the asynchronous workflow is in progress</p>
    #   @return [String]
    class CreateRegistryRecordResponse < Struct.new(
      nil,
      :record_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for creating a registry</p>
    # @!attribute name
    #   <p>The name of the registry</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the registry</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>The optional server-side encryption configuration for the registry. When you provide this field, the specified customer-managed Amazon Web Services KMS key encrypts the registry's content. Omit this field to use an Amazon Web Services-owned encryption key. You cannot change the encryption configuration after registry creation.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute discovery_configuration
    #   <p>Discovery configuration for the registry</p>
    #   @return [Types::DiscoveryConfiguration]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, the service ignores the request, but does not return an error.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to associate with the registry</p>
    #   @return [Hash<String, String>]
    # @!attribute approval_configuration
    #   <p>Approval configuration for registry records</p>
    #   @return [Types::ApprovalConfiguration]
    # @!attribute custom_metadata_schema_configuration
    #   <p>The optional custom metadata schema configuration for the registry. When provided, registry records can carry structured metadata validated against this schema.</p>
    #   @return [Types::CustomMetadataSchemaConfiguration]
    # @!attribute auto_detection_configuration
    #   <p>The optional auto-detection configuration for the registry. When provided, the registry is automatically populated with resources discovered according to the configuration. Omit this field for registries whose records are managed exclusively through the Agent Registry Control API.</p>
    #   @return [Types::AutoDetectionConfiguration]
    class CreateRegistryRequest < Struct.new(
      nil,
      :name,
      :description,
      :encryption_configuration,
      :discovery_configuration,
      :client_token,
      :tags,
      :approval_configuration,
      :custom_metadata_schema_configuration,
      :auto_detection_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for creating a registry</p>
    # @!attribute registry_arn
    #   <p>The ARN of the created registry</p>
    #   @return [String]
    class CreateRegistryResponse < Struct.new(
      nil,
      :registry_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A validation rule applied to a single claim of an inbound JWT.</p>
    # @!attribute inbound_token_claim_name
    #   <p>The name of the claim in the inbound token to validate.</p>
    #   @return [String]
    # @!attribute inbound_token_claim_value_type
    #   <p>The value type of the claim in the inbound token, either a string or an array of strings.</p>
    #   @return [String]
    # @!attribute authorizing_claim_match_value
    #   <p>The value and match operator used to authorize the claim.</p>
    #   @return [Types::AuthorizingClaimMatchValueType]
    class CustomClaimValidationType < Struct.new(
      nil,
      :inbound_token_claim_name,
      :inbound_token_claim_value_type,
      :authorizing_claim_match_value,
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

    # <p>Configuration for a custom JWT authorizer that validates inbound bearer tokens against an OpenID Connect identity provider.</p>
    # @!attribute discovery_url
    #   <p>The OpenID Connect discovery URL used to retrieve the identity provider's metadata and signing keys.</p>
    #   @return [String]
    # @!attribute allowed_audience
    #   <p>The audience values accepted during JWT validation. A token is rejected if none of its audience claims match.</p>
    #   @return [Array<String>]
    # @!attribute allowed_clients
    #   <p>The client identifiers accepted during JWT validation. A token is rejected if it was not issued to one of these clients.</p>
    #   @return [Array<String>]
    # @!attribute allowed_scopes
    #   <p>The scopes accepted during JWT validation. A token is rejected if it does not carry one of these scopes.</p>
    #   @return [Array<String>]
    # @!attribute custom_claims
    #   <p>Additional custom claim validations applied to the inbound JWT.</p>
    #   @return [Array<Types::CustomClaimValidationType>]
    # @!attribute private_endpoint
    #   <p>The private endpoint used to reach the identity provider's discovery URL over a private network path.</p>
    #   @return [Types::PrivateEndpoint]
    # @!attribute private_endpoint_overrides
    #   <p>Per-domain private endpoint overrides that route specific identity provider domains through distinct private endpoints.</p>
    #   @return [Array<Types::PrivateEndpointOverride>]
    class CustomJWTAuthorizerConfiguration < Struct.new(
      nil,
      :discovery_url,
      :allowed_audience,
      :allowed_clients,
      :allowed_scopes,
      :custom_claims,
      :private_endpoint,
      :private_endpoint_overrides,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The custom metadata fields that records in the registry can carry. <code>defaultSchema</code> defines the common attributes for every record type, and <code>recordTypeSchemaOverrides</code> adds fields for individual record types.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute default_schema
    #   <p>A JSON Schema with the common attributes: fields that records of every record type can carry.</p>
    #   @return [String]
    # @!attribute record_type_schema_overrides
    #   <p>The fields for individual record types. Records of a record type can carry the common attributes defined in <code>defaultSchema</code> plus that record type's fields.</p>
    #   @return [Array<Types::RecordTypeSchemaOverride>]
    class CustomMetadataSchemaConfiguration < Struct.new(
      nil,
      :default_schema,
      :record_type_schema_overrides,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The identifier of the registry containing the record (ARN or ID)</p>
    #   @return [String]
    # @!attribute record_id
    #   <p>The identifier of the registry record to delete (ARN or ID)</p>
    #   @return [String]
    class DeleteRegistryRecordRequest < Struct.new(
      nil,
      :registry_id,
      :record_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for deleting a registry record</p>
    class DeleteRegistryRecordResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for deleting a registry</p>
    # @!attribute registry_id
    #   <p>The identifier of the registry to delete (ARN or ID)</p>
    #   @return [String]
    class DeleteRegistryRequest < Struct.new(
      nil,
      :registry_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for deleting a registry</p>
    # @!attribute status
    #   <p>Current status of the registry, set to DELETING when deletion is initiated</p>
    #   @return [String]
    class DeleteRegistryResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source configuration that defines where descriptor content is retrieved from.</p>
    # @!attribute from_url
    #   <p>URL-based descriptor source, populated when descriptor content is synchronized from a URL.</p>
    #   @return [Types::DescriptorSourceFromUrl]
    class DescriptorSource < Struct.new(
      nil,
      :from_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>URL-based descriptor source configuration, with credential provider configurations for authenticated URL retrieval.</p>
    # @!attribute url
    #   <p>The URL from which the descriptor content is retrieved.</p>
    #   @return [String]
    # @!attribute credential_provider_configurations
    #   <p>The credential providers used to authenticate when fetching descriptor content from the source URL.</p>
    #   @return [Array<Types::RegistryRecordCredentialProviderConfiguration>]
    class DescriptorSourceFromUrl < Struct.new(
      nil,
      :url,
      :credential_provider_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The typed set of descriptors for a registry record. Exactly one descriptor field is populated based on the record type.</p>
    # @!attribute mcp_server
    #   <p>The MCP server descriptor, populated when the record type is MCP.</p>
    #   @return [Types::McpServerDescriptor]
    # @!attribute a2a_agent_card
    #   <p>The A2A agent card descriptor, populated when the record type is AGENT.</p>
    #   @return [Types::A2aAgentCardDescriptor]
    # @!attribute agent_skills_definition
    #   <p>The agent skills definition descriptor, populated when the record type is SKILL.</p>
    #   @return [Types::AgentSkillsDefinitionDescriptor]
    # @!attribute custom
    #   <p>The custom descriptor, populated when the record type is CUSTOM.</p>
    #   @return [Types::CustomDescriptor]
    # @!attribute http
    #   <p>The HTTP descriptor, populated for records detected from an HTTP protocol source.</p>
    #   @return [Types::HttpDescriptor]
    # @!attribute agui
    #   <p>The AG-UI descriptor, populated for records detected from an AG-UI protocol source.</p>
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

    # <p>Discovery configuration for the registry. Controls how consumers are authorized to search the registry and invoke its MCP endpoint.</p>
    # @!attribute authorizer_configuration
    #   <p>The authorizer configuration for the registry. Required when authorizerType is CUSTOM_JWT.</p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute authorizer_type
    #   <p>The type of authorizer that controls how consumers access the registry's search and MCP invoke operations.</p>
    #   @return [String]
    class DiscoveryConfiguration < Struct.new(
      nil,
      :authorizer_configuration,
      :authorizer_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The server-side encryption configuration for a registry. Specifies a customer-managed Amazon Web Services KMS key used to encrypt the registry's content.</p>
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the customer-managed Amazon Web Services KMS key used to encrypt the registry's content. The key must be a symmetric encryption key in the same Amazon Web Services account and Region as the registry.</p>
    #   @return [String]
    class EncryptionConfiguration < Struct.new(
      nil,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The identifier of the registry containing the record (ARN or ID)</p>
    #   @return [String]
    # @!attribute record_id
    #   <p>The identifier of the registry record to retrieve (ARN or ID)</p>
    #   @return [String]
    class GetRegistryRecordRequest < Struct.new(
      nil,
      :registry_id,
      :record_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for retrieving a registry record</p>
    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the parent registry that owns the record.</p>
    #   @return [String]
    # @!attribute record_arn
    #   <p>The Amazon Resource Name (ARN) of the registry record.</p>
    #   @return [String]
    # @!attribute record_id
    #   <p>The unique identifier of the registry record.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the registry record. Names are unique within a registry.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The human-readable display name of the registry record.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the registry record.</p>
    #   @return [String]
    # @!attribute record_type
    #   <p>The type of the registry record, such as MCP, AGENT, SKILL, or CUSTOM.</p>
    #   @return [String]
    # @!attribute descriptors
    #   <p>The typed descriptors that define the content of the registry record.</p>
    #   @return [Types::Descriptors]
    # @!attribute record_version
    #   <p>The version identifier of the registry record.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The lifecycle status of the registry record.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the registry record was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the registry record was last updated.</p>
    #   @return [Time]
    # @!attribute status_reason
    #   <p>The reason for the current status. Typically populated when the status indicates a failure state.</p>
    #   @return [String]
    # @!attribute provenance
    #   <p>The provenance lineage entries for the registry record. Populated for records created by auto-detection; each entry identifies the upstream source that the record was detected from.</p>
    #   @return [Array<Types::Provenance>]
    # @!attribute created_by_auto_detection
    #   <p>Specifies whether the registry record was created by auto-detection. <code>true</code> indicates the record was automatically created by the service based on the registry's auto-detection configuration; <code>false</code> indicates the record was created through a control-plane API call.</p>
    #   @return [Boolean]
    # @!attribute created_by
    #   <p>The ID of the Amazon Web Services account that created the registry record.</p>
    #   @return [String]
    # @!attribute custom_metadata
    #   <p>The custom metadata attached to this registry record. Values are strings (maximum 128 characters) or booleans.</p>
    #   @return [JSON]
    # @!attribute custom_metadata_schema_compliance_status
    #   <p>Indicates whether this record's custom metadata conforms to the registry's current schema. This status is computed at read time against the latest schema.</p>
    #   @return [String]
    class GetRegistryRecordResponse < Struct.new(
      nil,
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
      :custom_metadata_schema_compliance_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for getting a registry</p>
    # @!attribute registry_id
    #   <p>The identifier of the registry to retrieve (ARN or ID)</p>
    #   @return [String]
    class GetRegistryRequest < Struct.new(
      nil,
      :registry_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for getting a registry</p>
    # @!attribute name
    #   <p>The name of the registry</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the registry</p>
    #   @return [String]
    # @!attribute registry_id
    #   <p>The unique identifier of the registry</p>
    #   @return [String]
    # @!attribute registry_arn
    #   <p>The ARN of the registry</p>
    #   @return [String]
    # @!attribute discovery_configuration
    #   <p>Discovery configuration for the registry</p>
    #   @return [Types::DiscoveryConfiguration]
    # @!attribute encryption_configuration
    #   <p>The server-side encryption configuration for the registry. Appears only when a customer-managed Amazon Web Services KMS key encrypts the registry.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute approval_configuration
    #   <p>Approval configuration for registry records</p>
    #   @return [Types::ApprovalConfiguration]
    # @!attribute custom_metadata_schema_configuration
    #   <p>The custom metadata schema configuration for this registry, if one has been defined.</p>
    #   @return [Types::CustomMetadataSchemaConfiguration]
    # @!attribute status
    #   <p>Current status of the registry</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the current status. Typically populated when the status indicates a failure state.</p>
    #   @return [String]
    # @!attribute auto_detection
    #   <p>The registry's auto-detection properties, including the requested configuration and the current detection status. Present only when auto-detection was configured for the registry.</p>
    #   @return [Types::AutoDetection]
    # @!attribute created_at
    #   <p>The timestamp when the registry was created</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the registry was last updated</p>
    #   @return [Time]
    class GetRegistryResponse < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A registry record descriptor for the HTTP protocol. This descriptor is source-only: its content is synchronized from the configured source URL rather than supplied inline.</p>
    # @!attribute source
    #   <p>The source configuration that defines where descriptor content is retrieved from.</p>
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

    # <p>Request structure for listing registries</p>
    # @!attribute max_results
    #   <p>Maximum number of results to return</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Token for pagination</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters to apply to the registry list</p>
    #   @return [Array<Types::RegistryFilter>]
    class ListRegistriesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for listing registries</p>
    # @!attribute registries
    #   <p>List of registry summaries</p>
    #   @return [Array<Types::RegistrySummary>]
    # @!attribute next_token
    #   <p>Token for next page of results</p>
    #   @return [String]
    class ListRegistriesResponse < Struct.new(
      nil,
      :registries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The identifier of the registry to list records from (ARN or ID)</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of records to return</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Token for pagination</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters to apply to the registry record list</p>
    #   @return [Array<Types::RegistryRecordFilter>]
    class ListRegistryRecordsRequest < Struct.new(
      nil,
      :registry_id,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for listing registry records</p>
    # @!attribute registry_records
    #   <p>List of registry record summaries</p>
    #   @return [Array<Types::RegistryRecordSummary>]
    # @!attribute next_token
    #   <p>Token for next page of results</p>
    #   @return [String]
    class ListRegistryRecordsResponse < Struct.new(
      nil,
      :registry_records,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to list tags for. Supported resources include registries and registry records.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags currently associated with the resource, as a map of tag keys to tag values.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A service-managed private endpoint provisioned within a customer VPC.</p>
    # @!attribute vpc_identifier
    #   <p>The identifier of the VPC in which the private endpoint is provisioned.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The identifiers of the subnets in which the private endpoint network interfaces are placed.</p>
    #   @return [Array<String>]
    # @!attribute endpoint_ip_address_type
    #   <p>The IP address type used by the private endpoint, either IPV4 or IPV6.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The identifiers of the security groups associated with the private endpoint network interfaces.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags applied to the service-managed VPC resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute routing_domain
    #   <p>The routing domain used to resolve traffic through the private endpoint.</p>
    #   @return [String]
    class ManagedVpcResource < Struct.new(
      nil,
      :vpc_identifier,
      :subnet_ids,
      :endpoint_ip_address_type,
      :security_group_ids,
      :tags,
      :routing_domain,
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

    # <p>Descriptor that defines the content of an MCP (Model Context Protocol) server registry record, including the server definition and its tool definitions. The content is validated against the MCP protocol schema.</p>
    # @!attribute data
    #   <p>The MCP server descriptor content, serialized as descriptor payload data.</p>
    #   @return [String]
    # @!attribute data_schema_version
    #   <p>The schema version of the descriptor payload.</p>
    #   @return [String]
    # @!attribute additional_data
    #   <p>Additional data associated with the MCP server descriptor, such as tool definitions.</p>
    #   @return [Types::McpServerAdditionalData]
    # @!attribute source
    #   <p>The optional source configuration used to synchronize the MCP server descriptor content.</p>
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

    # <p>A private network endpoint used to reach a resource over a private path. Exactly one member is set.</p>
    # @!attribute self_managed_lattice_resource
    #   <p>A private endpoint backed by a self-managed VPC Lattice resource configuration.</p>
    #   @return [Types::SelfManagedLatticeResource]
    # @!attribute managed_vpc_resource
    #   <p>A private endpoint backed by a service-managed VPC resource.</p>
    #   @return [Types::ManagedVpcResource]
    class PrivateEndpoint < Struct.new(
      :self_managed_lattice_resource,
      :managed_vpc_resource,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SelfManagedLatticeResource < PrivateEndpoint; end
      class ManagedVpcResource < PrivateEndpoint; end
      class Unknown < PrivateEndpoint; end
    end

    # <p>A mapping of a domain to the private endpoint used to reach it.</p>
    # @!attribute domain
    #   <p>The domain name to which this private endpoint override applies.</p>
    #   @return [String]
    # @!attribute private_endpoint
    #   <p>The private endpoint used to reach the specified domain.</p>
    #   @return [Types::PrivateEndpoint]
    class PrivateEndpointOverride < Struct.new(
      nil,
      :domain,
      :private_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A provenance entry that describes the lineage of a registry record. Records that were auto-detected by Amazon Web Services Agent Registry carry a provenance entry that links the record back to its upstream source.</p>
    # @!attribute relation
    #   <p>The relationship between the registry record and its upstream source. <code>DETECTED_FROM</code> indicates that the record was auto-detected from the source resource.</p>
    #   @return [String]
    # @!attribute source_id
    #   <p>The identifier of the upstream source that the registry record was detected from.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>The type of the upstream source that the registry record was detected from.</p>
    #   @return [String]
    # @!attribute source_details
    #   <p>Additional details about the upstream source that the registry record was detected from, such as the AgentCore Gateway or Runtime configuration. The populated member corresponds to the source type.</p>
    #   @return [Types::SourceDetails]
    class Provenance < Struct.new(
      nil,
      :relation,
      :source_id,
      :source_type,
      :source_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A condensed provenance entry surfaced in list results. Contains the source identity of a lineage entry without the source details returned by <code>GetRegistryRecord</code>.</p>
    # @!attribute relation
    #   <p>The relationship between the registry record and its upstream source. <code>DETECTED_FROM</code> indicates that the record was auto-detected from the source resource.</p>
    #   @return [String]
    # @!attribute source_id
    #   <p>The identifier of the upstream source that the registry record was detected from.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>The type of the upstream source that the registry record was detected from.</p>
    #   @return [String]
    class ProvenanceSummary < Struct.new(
      nil,
      :relation,
      :source_id,
      :source_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The custom metadata fields for one record type, in addition to the common attributes defined in <code>defaultSchema</code>.</p>
    # @!attribute record_type
    #   <p>The record type these fields apply to.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>A JSON Schema with the fields for this record type.</p>
    #   @return [String]
    class RecordTypeSchemaOverride < Struct.new(
      nil,
      :record_type,
      :schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single filter applied to a ListRegistries request.</p>
    # @!attribute name
    #   <p>The attribute to filter on</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values to match for the attribute</p>
    #   @return [Array<String>]
    class RegistryFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A credential provider configuration that specifies how to authenticate when fetching descriptor content from a registry record's source URL.</p>
    # @!attribute credential_provider_type
    #   <p>The type of credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider
    #   <p>The credential provider details corresponding to the specified credential provider type.</p>
    #   @return [Types::RegistryRecordCredentialProviderUnion]
    class RegistryRecordCredentialProviderConfiguration < Struct.new(
      nil,
      :credential_provider_type,
      :credential_provider,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The credential provider details for a registry record. Exactly one member is populated, matching the configured credential provider type.</p>
    # @!attribute oauth_credential_provider
    #   <p>The OAuth 2.0 credential provider details.</p>
    #   @return [Types::RegistryRecordOAuthCredentialProvider]
    # @!attribute iam_credential_provider
    #   <p>The IAM role credential provider details.</p>
    #   @return [Types::RegistryRecordIamCredentialProvider]
    class RegistryRecordCredentialProviderUnion < Struct.new(
      :oauth_credential_provider,
      :iam_credential_provider,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class OauthCredentialProvider < RegistryRecordCredentialProviderUnion; end
      class IamCredentialProvider < RegistryRecordCredentialProviderUnion; end
      class Unknown < RegistryRecordCredentialProviderUnion; end
    end

    # <p>A single filter applied to a ListRegistryRecords request.</p>
    # @!attribute name
    #   <p>The attribute to filter on</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values to match for the attribute</p>
    #   @return [Array<String>]
    class RegistryRecordFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an IAM role credential provider that signs requests to a registry record's source with Amazon Web Services Signature Version 4 (SigV4).</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to assume for request signing.</p>
    #   @return [String]
    # @!attribute service
    #   <p>The service name to use for request signing, such as execute-api.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region to use for request signing. If not specified, the Region is derived from the source URL hostname, falling back to the Region of the registry.</p>
    #   @return [String]
    class RegistryRecordIamCredentialProvider < Struct.new(
      nil,
      :role_arn,
      :service,
      :region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an OAuth 2.0 credential provider that authenticates requests to a registry record's source.</p>
    # @!attribute provider_arn
    #   <p>The Amazon Resource Name (ARN) of the OAuth 2.0 credential provider resource in Amazon Bedrock AgentCore Identity.</p>
    #   @return [String]
    # @!attribute grant_type
    #   <p>The OAuth 2.0 grant type used to obtain access tokens.</p>
    #   @return [String]
    # @!attribute scopes
    #   <p>The OAuth 2.0 scopes to request when obtaining access tokens.</p>
    #   @return [Array<String>]
    # @!attribute custom_parameters
    #   <p>Additional parameters to include in the OAuth 2.0 token request.</p>
    #   @return [Hash<String, String>]
    class RegistryRecordOAuthCredentialProvider < Struct.new(
      nil,
      :provider_arn,
      :grant_type,
      :scopes,
      :custom_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a registry record returned by list operations. Contains identifying and lifecycle fields but omits descriptor content.</p>
    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the parent registry that owns the record.</p>
    #   @return [String]
    # @!attribute record_arn
    #   <p>The Amazon Resource Name (ARN) of the registry record.</p>
    #   @return [String]
    # @!attribute record_id
    #   <p>The unique identifier of the registry record.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the registry record. Names are unique within a registry.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The human-readable display name of the registry record.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the registry record.</p>
    #   @return [String]
    # @!attribute record_type
    #   <p>The type of the registry record, such as MCP, AGENT, SKILL, or CUSTOM.</p>
    #   @return [String]
    # @!attribute record_version
    #   <p>The version identifier of the registry record.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The lifecycle status of the registry record.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the registry record was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the registry record was last updated.</p>
    #   @return [Time]
    # @!attribute created_by_auto_detection
    #   <p>Specifies whether the registry record was created by auto-detection. <code>true</code> indicates the record was automatically created by the service based on the registry's auto-detection configuration; <code>false</code> indicates the record was created through a control-plane API call.</p>
    #   @return [Boolean]
    # @!attribute created_by
    #   <p>The ID of the Amazon Web Services account that created the registry record.</p>
    #   @return [String]
    # @!attribute provenance_summary_list
    #   <p>The condensed provenance lineage for the registry record. Each entry contains the source relation, source identifier, and source type of an auto-detection lineage entry. Populated for records created by auto-detection.</p>
    #   @return [Array<Types::ProvenanceSummary>]
    # @!attribute custom_metadata_schema_compliance_status
    #   <p>Indicates whether this record's custom metadata conforms to the registry's current schema.</p>
    #   @return [String]
    class RegistryRecordSummary < Struct.new(
      nil,
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
      :custom_metadata_schema_compliance_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Registry summary for list operations</p>
    # @!attribute name
    #   <p>Registry name</p>
    #   @return [String]
    # @!attribute description
    #   <p>Registry description</p>
    #   @return [String]
    # @!attribute registry_id
    #   <p>Unique registry identifier</p>
    #   @return [String]
    # @!attribute registry_arn
    #   <p>Registry Amazon Resource Name</p>
    #   @return [String]
    # @!attribute discovery_configuration
    #   <p>Discovery configuration for the registry</p>
    #   @return [Types::DiscoveryConfiguration]
    # @!attribute status
    #   <p>Current status of the registry</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the current status. Typically populated when the status indicates a failure state.</p>
    #   @return [String]
    # @!attribute auto_detection
    #   <p>The registry's auto-detection properties, including the requested configuration and the current detection status. Present only when auto-detection was configured for the registry.</p>
    #   @return [Types::AutoDetection]
    # @!attribute created_at
    #   <p>The timestamp when the registry was created</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the registry was last updated</p>
    #   @return [Time]
    class RegistrySummary < Struct.new(
      nil,
      :name,
      :description,
      :registry_id,
      :registry_arn,
      :discovery_configuration,
      :status,
      :status_reason,
      :auto_detection,
      :created_at,
      :updated_at,
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

    # <p>A self-managed private endpoint backed by a VPC Lattice resource configuration. Exactly one member is set.</p>
    # @!attribute resource_configuration_identifier
    #   <p>The identifier of the VPC Lattice resource configuration, specified as a resource configuration ID or ARN.</p>
    #   @return [String]
    class SelfManagedLatticeResource < Struct.new(
      :resource_configuration_identifier,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ResourceConfigurationIdentifier < SelfManagedLatticeResource; end
      class Unknown < SelfManagedLatticeResource; end
    end

    # <p>The request would exceed a service quota.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details about the upstream source from which a registry record was detected. Exactly one member is populated, corresponding to the source type.</p>
    # @!attribute agentcore_runtime
    #   <p>The source details for a registry record that was auto-detected from an Amazon Bedrock AgentCore Runtime resource. Populated when the source type is <code>AWS::BedrockAgentCore::Runtime</code>.</p>
    #   @return [Types::AgentCoreRuntimeSourceDetails]
    # @!attribute agentcore_gateway
    #   <p>The source details for a registry record that was auto-detected from an Amazon Bedrock AgentCore Gateway resource. Populated when the source type is <code>AWS::BedrockAgentCore::Gateway</code>.</p>
    #   @return [Types::AgentCoreGatewaySourceDetails]
    class SourceDetails < Struct.new(
      :agentcore_runtime,
      :agentcore_gateway,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AgentcoreRuntime < SourceDetails; end
      class AgentcoreGateway < SourceDetails; end
      class Unknown < SourceDetails; end
    end

    # @!attribute registry_id
    #   <p>The identifier of the registry containing the record (ARN or ID)</p>
    #   @return [String]
    # @!attribute record_id
    #   <p>The identifier of the registry record to submit for approval (ARN or ID)</p>
    #   @return [String]
    class SubmitRegistryRecordForApprovalRequest < Struct.new(
      nil,
      :registry_id,
      :record_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for submitting a registry record for approval</p>
    # @!attribute registry_arn
    #   <p>The ARN of the registry</p>
    #   @return [String]
    # @!attribute record_arn
    #   <p>The ARN of the registry record</p>
    #   @return [String]
    # @!attribute record_id
    #   <p>The ID of the registry record</p>
    #   @return [String]
    # @!attribute status
    #   <p>The resulting status of the registry record</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the record was last updated</p>
    #   @return [Time]
    class SubmitRegistryRecordForApprovalResponse < Struct.new(
      nil,
      :registry_arn,
      :record_arn,
      :record_id,
      :status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag. Supported resources include registries and registry records.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to apply to the resource, as a map of tag keys to tag values. Tag keys must be unique within the request.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove tags from. Supported resources include registries and registry records.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to remove from the resource. Tags with keys not included in this list remain on the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The identifier of the registry containing the record (ARN or ID)</p>
    #   @return [String]
    # @!attribute record_id
    #   <p>The identifier of the registry record to update (ARN or ID)</p>
    #   @return [String]
    # @!attribute name
    #   <p>The updated name of the registry record. Omit to leave the name unchanged.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The updated display name of the registry record. Omit to leave the display name unchanged; provide an empty wrapper to unset it.</p>
    #   @return [Types::UpdatedDisplayName]
    # @!attribute description
    #   <p>The updated description of the registry record. Omit to leave the description unchanged; provide an empty wrapper to unset it.</p>
    #   @return [Types::UpdatedDescription]
    # @!attribute record_type
    #   <p>The updated type of the registry record. Omit to leave the record type unchanged.</p>
    #   @return [String]
    # @!attribute descriptors
    #   <p>The updated typed descriptor content for the registry record. Omit to leave the descriptors unchanged.</p>
    #   @return [Types::UpdatedDescriptors]
    # @!attribute record_version
    #   <p>The updated version of the registry record. Omit to leave the version unchanged.</p>
    #   @return [String]
    # @!attribute custom_metadata
    #   <p>The updated custom metadata for the registry record. Values can be strings (maximum 128 characters) or native JSON booleans (<code>true</code> or <code>false</code>). Omit to leave the existing metadata unchanged. Supply the wrapper with a full replacement set to update, or with a null value to clear all metadata.</p>
    #   @return [Types::UpdatedCustomMetadataMap]
    # @!attribute trigger_synchronization
    #   <p>Whether to trigger synchronization of the record's descriptor content from its source</p>
    #   @return [Boolean]
    # @!attribute provenance
    #   <p>The provenance lineage re-assertion for the registry record. This field is reserved for the Amazon Web Services Agent Registry auto-detection service principal. Requests that include this field from other callers are rejected. The source identity of an existing lineage is immutable; a re-assertion may only refresh the source details.</p>
    #   @return [Array<Types::Provenance>]
    class UpdateRegistryRecordRequest < Struct.new(
      nil,
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
      :provenance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for updating a registry record</p>
    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the parent registry that owns the record.</p>
    #   @return [String]
    # @!attribute record_arn
    #   <p>The Amazon Resource Name (ARN) of the registry record.</p>
    #   @return [String]
    # @!attribute record_id
    #   <p>The unique identifier of the registry record.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the registry record. Names are unique within a registry.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The human-readable display name of the registry record.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the registry record.</p>
    #   @return [String]
    # @!attribute record_type
    #   <p>The type of the registry record, such as MCP, AGENT, SKILL, or CUSTOM.</p>
    #   @return [String]
    # @!attribute descriptors
    #   <p>The typed descriptors that define the content of the registry record.</p>
    #   @return [Types::Descriptors]
    # @!attribute record_version
    #   <p>The version identifier of the registry record.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The lifecycle status of the registry record.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the registry record was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the registry record was last updated.</p>
    #   @return [Time]
    # @!attribute status_reason
    #   <p>The reason for the current status. Typically populated when the status indicates a failure state.</p>
    #   @return [String]
    # @!attribute provenance
    #   <p>The provenance lineage entries for the registry record. Populated for records created by auto-detection; each entry identifies the upstream source that the record was detected from.</p>
    #   @return [Array<Types::Provenance>]
    # @!attribute created_by_auto_detection
    #   <p>Specifies whether the registry record was created by auto-detection. <code>true</code> indicates the record was automatically created by the service based on the registry's auto-detection configuration; <code>false</code> indicates the record was created through a control-plane API call.</p>
    #   @return [Boolean]
    # @!attribute created_by
    #   <p>The ID of the Amazon Web Services account that created the registry record.</p>
    #   @return [String]
    # @!attribute custom_metadata
    #   <p>The custom metadata attached to this registry record. Values are strings (maximum 128 characters) or booleans.</p>
    #   @return [JSON]
    # @!attribute custom_metadata_schema_compliance_status
    #   <p>Indicates whether this record's custom metadata conforms to the registry's current schema. This status is computed at read time against the latest schema.</p>
    #   @return [String]
    class UpdateRegistryRecordResponse < Struct.new(
      nil,
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
      :custom_metadata_schema_compliance_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The identifier of the registry containing the record (ARN or ID)</p>
    #   @return [String]
    # @!attribute record_id
    #   <p>The identifier of the registry record to update the status of (ARN or ID)</p>
    #   @return [String]
    # @!attribute status
    #   <p>The target status for the registry record</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the status change, for example why the record was approved, rejected, or deprecated</p>
    #   @return [String]
    class UpdateRegistryRecordStatusRequest < Struct.new(
      nil,
      :registry_id,
      :record_id,
      :status,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for updating a registry record status</p>
    # @!attribute registry_arn
    #   <p>The ARN of the registry</p>
    #   @return [String]
    # @!attribute record_arn
    #   <p>The ARN of the registry record</p>
    #   @return [String]
    # @!attribute record_id
    #   <p>The ID of the registry record</p>
    #   @return [String]
    # @!attribute status
    #   <p>The resulting status of the registry record</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the status change</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the record was last updated</p>
    #   @return [Time]
    class UpdateRegistryRecordStatusResponse < Struct.new(
      nil,
      :registry_arn,
      :record_arn,
      :record_id,
      :status,
      :status_reason,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for updating a registry</p>
    # @!attribute registry_id
    #   <p>The identifier of the registry to update (ARN or ID)</p>
    #   @return [String]
    # @!attribute name
    #   <p>The updated name of the registry</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the registry</p>
    #   @return [Types::UpdatedDescription]
    # @!attribute discovery_configuration
    #   <p>The updated discovery configuration. Changing the discovery authorization can break existing consumers that rely on the previous authorization type.</p>
    #   @return [Types::UpdatedDiscoveryConfiguration]
    # @!attribute approval_configuration
    #   <p>The updated approval configuration. The change applies only to records that move to PENDING_APPROVAL after the update; records already in PENDING_APPROVAL are unaffected.</p>
    #   @return [Types::UpdatedApprovalConfiguration]
    # @!attribute custom_metadata_schema_configuration
    #   <p>The new custom metadata schema configuration, which replaces the current one. You can add fields and allowed values, but you can't remove a field or an allowed value, or change a field's type.</p>
    #   @return [Types::UpdatedCustomMetadataSchemaConfiguration]
    # @!attribute auto_detection_configuration
    #   <p>The updated auto-detection configuration for the registry, with PATCH semantics. Omit this field to leave the current configuration unchanged. Supply an empty wrapper to unset it. Supply <code>optionalValue</code> to replace it.</p>
    #   @return [Types::UpdatedAutoDetectionConfiguration]
    class UpdateRegistryRequest < Struct.new(
      nil,
      :registry_id,
      :name,
      :description,
      :discovery_configuration,
      :approval_configuration,
      :custom_metadata_schema_configuration,
      :auto_detection_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for updating a registry</p>
    # @!attribute name
    #   <p>The name of the registry</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the registry</p>
    #   @return [String]
    # @!attribute registry_id
    #   <p>The unique identifier of the registry</p>
    #   @return [String]
    # @!attribute registry_arn
    #   <p>The ARN of the registry</p>
    #   @return [String]
    # @!attribute discovery_configuration
    #   <p>Discovery configuration for the registry</p>
    #   @return [Types::DiscoveryConfiguration]
    # @!attribute encryption_configuration
    #   <p>The server-side encryption configuration for the registry. Appears only when a customer-managed Amazon Web Services KMS key encrypts the registry.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute approval_configuration
    #   <p>Approval configuration for registry records</p>
    #   @return [Types::ApprovalConfiguration]
    # @!attribute custom_metadata_schema_configuration
    #   <p>The custom metadata schema configuration for this registry, if one has been defined.</p>
    #   @return [Types::CustomMetadataSchemaConfiguration]
    # @!attribute status
    #   <p>Current status of the registry</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the current status. Typically populated when the status indicates a failure state.</p>
    #   @return [String]
    # @!attribute auto_detection
    #   <p>The registry's auto-detection properties, including the requested configuration and the current detection status. Present only when auto-detection was configured for the registry.</p>
    #   @return [Types::AutoDetection]
    # @!attribute created_at
    #   <p>The timestamp when the registry was created</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the registry was last updated</p>
    #   @return [Time]
    class UpdateRegistryResponse < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The A2A agent card descriptor patch wrapper. Omit to leave the descriptor unchanged; supply an empty object to remove it; supply optionalValue to patch its fields.</p>
    # @!attribute optional_value
    #   <p>The value to set for this field. Omit the wrapper to leave the field unchanged.</p>
    #   @return [Types::UpdatedA2aAgentCardDescriptorFields]
    class UpdatedA2aAgentCardDescriptor < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The set of A2A agent card descriptor fields that can be individually updated.</p>
    # @!attribute data
    #   <p>The patch for the descriptor's data field.</p>
    #   @return [Types::UpdatedDescriptorData]
    # @!attribute data_schema_version
    #   <p>The patch for the descriptor's data schema version field.</p>
    #   @return [Types::UpdatedDataSchemaVersion]
    # @!attribute source
    #   <p>The patch for the descriptor's source field.</p>
    #   @return [Types::UpdatedDescriptorSource]
    class UpdatedA2aAgentCardDescriptorFields < Struct.new(
      nil,
      :data,
      :data_schema_version,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The AG-UI descriptor patch wrapper. Omit to leave the descriptor unchanged; supply an empty object to remove it; supply optionalValue to patch its fields.</p>
    # @!attribute optional_value
    #   <p>The value to set for this field. Omit the wrapper to leave the field unchanged.</p>
    #   @return [Types::UpdatedAgUiDescriptorFields]
    class UpdatedAgUiDescriptor < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The set of AG-UI descriptor fields that can be individually updated.</p>
    # @!attribute source
    #   <p>The patch for the descriptor's source field.</p>
    #   @return [Types::UpdatedDescriptorSource]
    class UpdatedAgUiDescriptorFields < Struct.new(
      nil,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The agent skills additional-data patch wrapper. Omit to leave the additional data unchanged; supply an empty object to remove it; supply optionalValue to patch its fields.</p>
    # @!attribute optional_value
    #   <p>The value to set for this field. Omit the wrapper to leave the field unchanged.</p>
    #   @return [Types::UpdatedAgentSkillsAdditionalDataFields]
    class UpdatedAgentSkillsAdditionalData < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The set of agent skills additional-data fields that can be individually updated.</p>
    # @!attribute skill_md
    #   <p>The patch for the agent skills markdown descriptor field.</p>
    #   @return [Types::UpdatedAgentSkillsMdDescriptor]
    class UpdatedAgentSkillsAdditionalDataFields < Struct.new(
      nil,
      :skill_md,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The agent skills definition descriptor patch wrapper. Omit to leave the descriptor unchanged; supply an empty object to remove it; supply optionalValue to patch its fields.</p>
    # @!attribute optional_value
    #   <p>The value to set for this field. Omit the wrapper to leave the field unchanged.</p>
    #   @return [Types::UpdatedAgentSkillsDefinitionDescriptorFields]
    class UpdatedAgentSkillsDefinitionDescriptor < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The set of agent skills definition descriptor fields that can be individually updated.</p>
    # @!attribute data
    #   <p>The patch for the descriptor's data field.</p>
    #   @return [Types::UpdatedDescriptorData]
    # @!attribute data_schema_version
    #   <p>The patch for the descriptor's data schema version field.</p>
    #   @return [Types::UpdatedDataSchemaVersion]
    # @!attribute additional_data
    #   <p>The patch for the descriptor's additional data field.</p>
    #   @return [Types::UpdatedAgentSkillsAdditionalData]
    class UpdatedAgentSkillsDefinitionDescriptorFields < Struct.new(
      nil,
      :data,
      :data_schema_version,
      :additional_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The agent skills markdown descriptor patch wrapper. Omit to leave the descriptor unchanged; supply an empty object to remove it; supply optionalValue to patch its fields.</p>
    # @!attribute optional_value
    #   <p>The value to set for this field. Omit the wrapper to leave the field unchanged.</p>
    #   @return [Types::UpdatedAgentSkillsMdDescriptorFields]
    class UpdatedAgentSkillsMdDescriptor < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The set of agent skills markdown descriptor fields that can be individually updated.</p>
    # @!attribute data
    #   <p>The patch for the descriptor's data field.</p>
    #   @return [Types::UpdatedDescriptorData]
    # @!attribute data_schema_version
    #   <p>The patch for the descriptor's data schema version field.</p>
    #   @return [Types::UpdatedDataSchemaVersion]
    # @!attribute source
    #   <p>The patch for the descriptor's source field.</p>
    #   @return [Types::UpdatedDescriptorSource]
    class UpdatedAgentSkillsMdDescriptorFields < Struct.new(
      nil,
      :data,
      :data_schema_version,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A wrapper for updating the approval configuration of a registry. Include this wrapper to replace the approval configuration with the specified value; omit it to leave the approval configuration unchanged.</p>
    # @!attribute optional_value
    #   <p>The value to set for this field. Omit the wrapper to leave the field unchanged.</p>
    #   @return [Types::ApprovalConfiguration]
    class UpdatedApprovalConfiguration < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Wrapper for updating an optional authorizer configuration with PATCH semantics.</p>
    # @!attribute optional_value
    #   <p>The new authorizer configuration to set. Omit to leave the existing configuration unchanged.</p>
    #   @return [Types::AuthorizerConfiguration]
    class UpdatedAuthorizerConfiguration < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A wrapper for updating the auto-detection configuration of a registry with PATCH semantics. Include this wrapper to replace the auto-detection configuration with the specified value. Omit it to leave the auto-detection configuration unchanged. To clear the configuration, include the wrapper with a null <code>optionalValue</code>.</p>
    # @!attribute optional_value
    #   <p>The value to set for this field. Omit the wrapper to leave the field unchanged.</p>
    #   @return [Types::AutoDetectionConfiguration]
    class UpdatedAutoDetectionConfiguration < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The custom descriptor patch wrapper. Omit to leave the descriptor unchanged; supply an empty object to remove it; supply optionalValue to patch its fields.</p>
    # @!attribute optional_value
    #   <p>The value to set for this field. Omit the wrapper to leave the field unchanged.</p>
    #   @return [Types::UpdatedCustomDescriptorFields]
    class UpdatedCustomDescriptor < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The set of custom descriptor fields that can be individually updated.</p>
    # @!attribute data
    #   <p>The patch for the descriptor's data field.</p>
    #   @return [Types::UpdatedDescriptorData]
    class UpdatedCustomDescriptorFields < Struct.new(
      nil,
      :data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The custom metadata patch wrapper. Omit to leave the existing metadata unchanged; supply with a null value to clear all metadata; supply with key-value pairs to replace the existing metadata.</p>
    # @!attribute optional_value
    #   <p>The value to set for this field. Omit the wrapper to leave the field unchanged.</p>
    #   @return [JSON]
    class UpdatedCustomMetadataMap < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The custom metadata schema configuration patch wrapper. Omit to leave the existing schema unchanged.</p>
    # @!attribute optional_value
    #   <p>The value to set for this field. Omit the wrapper to leave the field unchanged.</p>
    #   @return [Types::CustomMetadataSchemaConfiguration]
    class UpdatedCustomMetadataSchemaConfiguration < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Leaf patch wrapper for a descriptor's data schema version. Omit to leave unchanged; supply an empty object to unset; supply optionalValue to set.</p>
    # @!attribute optional_value
    #   <p>The value to set for this field. Omit the wrapper to leave the field unchanged.</p>
    #   @return [String]
    class UpdatedDataSchemaVersion < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Wrapper for updating an optional Description field with PATCH semantics</p>
    # @!attribute optional_value
    #   <p>The value to set for this field. Omit the wrapper to leave the field unchanged.</p>
    #   @return [String]
    class UpdatedDescription < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Leaf patch wrapper for descriptor data. Omit to leave unchanged; supply an empty object to unset; supply optionalValue to set.</p>
    # @!attribute optional_value
    #   <p>The value to set for this field. Omit the wrapper to leave the field unchanged.</p>
    #   @return [String]
    class UpdatedDescriptorData < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Leaf patch wrapper for a descriptor's source configuration. Omit to leave unchanged; supply an empty object to unset; supply optionalValue to set.</p>
    # @!attribute optional_value
    #   <p>The value to set for this field. Omit the wrapper to leave the field unchanged.</p>
    #   @return [Types::DescriptorSource]
    class UpdatedDescriptorSource < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The top-level descriptors patch wrapper used in UpdateRegistryRecord. Omit to leave the current descriptors unchanged; supply an empty object to clear them; supply optionalValue to apply a per-field patch.</p>
    # @!attribute optional_value
    #   <p>The value to set for this field. Omit the wrapper to leave the field unchanged.</p>
    #   @return [Types::UpdatedDescriptorsFields]
    class UpdatedDescriptors < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The patchable descriptor fields applied during an UpdateRegistryRecord call. Each field is independently patchable.</p>
    # @!attribute mcp_server
    #   <p>The patch for the MCP server descriptor.</p>
    #   @return [Types::UpdatedMcpServerDescriptor]
    # @!attribute a2a_agent_card
    #   <p>The patch for the A2A agent card descriptor.</p>
    #   @return [Types::UpdatedA2aAgentCardDescriptor]
    # @!attribute agent_skills_definition
    #   <p>The patch for the agent skills definition descriptor.</p>
    #   @return [Types::UpdatedAgentSkillsDefinitionDescriptor]
    # @!attribute custom
    #   <p>The patch for the custom descriptor.</p>
    #   @return [Types::UpdatedCustomDescriptor]
    # @!attribute http
    #   <p>The patch for the HTTP descriptor.</p>
    #   @return [Types::UpdatedHttpDescriptor]
    # @!attribute agui
    #   <p>The patch for the AG-UI descriptor.</p>
    #   @return [Types::UpdatedAgUiDescriptor]
    class UpdatedDescriptorsFields < Struct.new(
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

    # <p>The discovery configuration fields to update on a registry. Omit this structure to leave the discovery configuration unchanged.</p>
    # @!attribute authorizer_configuration
    #   <p>Authorization configuration for the registry, with PATCH semantics</p>
    #   @return [Types::UpdatedAuthorizerConfiguration]
    class UpdatedDiscoveryConfiguration < Struct.new(
      nil,
      :authorizer_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Leaf patch wrapper for a registry record's display name. Omit to leave unchanged; supply an empty object to unset; supply optionalValue to set.</p>
    # @!attribute optional_value
    #   <p>The value to set for this field. Omit the wrapper to leave the field unchanged.</p>
    #   @return [String]
    class UpdatedDisplayName < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The HTTP descriptor patch wrapper. Omit to leave the descriptor unchanged; supply an empty object to remove it; supply optionalValue to patch its fields.</p>
    # @!attribute optional_value
    #   <p>The value to set for this field. Omit the wrapper to leave the field unchanged.</p>
    #   @return [Types::UpdatedHttpDescriptorFields]
    class UpdatedHttpDescriptor < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The set of HTTP descriptor fields that can be individually updated.</p>
    # @!attribute source
    #   <p>The patch for the descriptor's source field.</p>
    #   @return [Types::UpdatedDescriptorSource]
    class UpdatedHttpDescriptorFields < Struct.new(
      nil,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The MCP server additional-data patch wrapper. Omit to leave the additional data unchanged; supply an empty object to remove it; supply optionalValue to patch its fields.</p>
    # @!attribute optional_value
    #   <p>The value to set for this field. Omit the wrapper to leave the field unchanged.</p>
    #   @return [Types::UpdatedMcpServerAdditionalDataFields]
    class UpdatedMcpServerAdditionalData < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The set of MCP server additional-data fields that can be individually updated.</p>
    # @!attribute tools
    #   <p>The patch for the MCP tools descriptor field.</p>
    #   @return [Types::UpdatedMcpToolsDescriptor]
    class UpdatedMcpServerAdditionalDataFields < Struct.new(
      nil,
      :tools,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The MCP server descriptor patch wrapper. Omit to leave the descriptor unchanged; supply an empty object to remove it; supply optionalValue to patch its fields.</p>
    # @!attribute optional_value
    #   <p>The value to set for this field. Omit the wrapper to leave the field unchanged.</p>
    #   @return [Types::UpdatedMcpServerDescriptorFields]
    class UpdatedMcpServerDescriptor < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The set of MCP server descriptor fields that can be individually updated.</p>
    # @!attribute data
    #   <p>The patch for the descriptor's data field.</p>
    #   @return [Types::UpdatedDescriptorData]
    # @!attribute data_schema_version
    #   <p>The patch for the descriptor's data schema version field.</p>
    #   @return [Types::UpdatedDataSchemaVersion]
    # @!attribute source
    #   <p>The patch for the descriptor's source field.</p>
    #   @return [Types::UpdatedDescriptorSource]
    # @!attribute additional_data
    #   <p>The patch for the descriptor's additional data field.</p>
    #   @return [Types::UpdatedMcpServerAdditionalData]
    class UpdatedMcpServerDescriptorFields < Struct.new(
      nil,
      :data,
      :data_schema_version,
      :source,
      :additional_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The MCP tools descriptor patch wrapper. Omit to leave the tools descriptor unchanged; supply an empty object to remove it; supply optionalValue to patch its fields.</p>
    # @!attribute optional_value
    #   <p>The value to set for this field. Omit the wrapper to leave the field unchanged.</p>
    #   @return [Types::UpdatedMcpToolsDescriptorFields]
    class UpdatedMcpToolsDescriptor < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The set of MCP tools descriptor fields that can be individually updated.</p>
    # @!attribute data
    #   <p>The patch for the descriptor's data field.</p>
    #   @return [Types::UpdatedDescriptorData]
    # @!attribute data_schema_version
    #   <p>The patch for the descriptor's data schema version field.</p>
    #   @return [Types::UpdatedDataSchemaVersion]
    class UpdatedMcpToolsDescriptorFields < Struct.new(
      nil,
      :data,
      :data_schema_version,
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

    # <p>The workload identity details associated with a source resource. Present on the source details of a provenance entry when the upstream resource has a workload identity configured.</p>
    # @!attribute workload_identity_arn
    #   <p>The Amazon Resource Name (ARN) of the workload identity associated with the source resource.</p>
    #   @return [String]
    class WorkloadIdentityDetails < Struct.new(
      nil,
      :workload_identity_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end

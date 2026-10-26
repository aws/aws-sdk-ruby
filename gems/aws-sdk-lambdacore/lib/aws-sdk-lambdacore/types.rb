# frozen_string_literal: true

# This is generated code!

module Aws::LambdaCore
  # This module contains the types returned by client operations.
  module Types

    # @!attribute name
    #   <p>A unique name for the network connector within your account and Region. You can use the name to identify the connector in subsequent API calls.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The network configuration for the connector. Specify a <code>VpcEgressConfiguration</code> to enable outbound traffic routing through your VPC.</p>
    #   @return [Types::NetworkConnectorConfiguration]
    # @!attribute operator_role
    #   <p>The ARN of the IAM role that Lambda assumes to manage elastic network interfaces in your VPC. This role must have permissions for <code>ec2:CreateNetworkInterface</code>, <code>ec2:DeleteNetworkInterface</code>, and related describe operations.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request with the same client token, the API returns the existing connector without creating a duplicate.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of key-value pairs to associate with the network connector for organization, cost allocation, or access control.</p>
    #   @return [Hash<String, String>]
    class CreateNetworkConnectorRequest < Struct.new(
      nil,
      :name,
      :configuration,
      :operator_role,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the network connector.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the network connector.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the network connector.</p>
    #   @return [String]
    # @!attribute version_arn
    #   <p>The qualified ARN of the connector version created by this request, including the immutable version suffix.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version number assigned to the connector. A newly created connector starts at version 1.</p>
    #   @return [Integer]
    # @!attribute configuration
    #   <p>The network configuration of the connector, including VPC subnets and security groups.</p>
    #   @return [Types::NetworkConnectorConfiguration]
    # @!attribute operator_role
    #   <p>The ARN of the IAM role that Lambda uses to manage the underlying ENI resources for this connector.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the network connector.</p>
    #   @return [String]
    class CreateNetworkConnectorResponse < Struct.new(
      nil,
      :arn,
      :name,
      :id,
      :version_arn,
      :version,
      :configuration,
      :operator_role,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the network connector to delete. Provide an unqualified ARN (or an ID or name) to delete the entire connector and all of its versions, or a version-qualified ARN — one that includes the immutable version suffix — to delete a specific historical version. You can't delete the latest version with a version-qualified identifier; delete the connector instead.</p>
    #   @return [String]
    class DeleteNetworkConnectorRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the network connector.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the network connector.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the network connector.</p>
    #   @return [String]
    # @!attribute version_arn
    #   <p>The qualified ARN of the connector version affected by this request, including the immutable version suffix.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version number of the connector version affected by this request.</p>
    #   @return [Integer]
    # @!attribute configuration
    #   <p>The network configuration of the connector, including VPC subnets and security groups.</p>
    #   @return [Types::NetworkConnectorConfiguration]
    # @!attribute operator_role
    #   <p>The ARN of the IAM role that Lambda uses to manage the underlying ENI resources for this connector.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the network connector. The State field is typically <code>DELETING</code> after this call.</p>
    #   @return [String]
    class DeleteNetworkConnectorResponse < Struct.new(
      nil,
      :arn,
      :name,
      :id,
      :version_arn,
      :version,
      :configuration,
      :operator_role,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the network connector to retrieve. You can specify the connector ID, name, or ARN. Provide an unqualified ARN (or an ID or name) to retrieve the connector's latest version, or a version-qualified ARN — one that includes the immutable version suffix — to retrieve a specific historical version.</p>
    #   @return [String]
    class GetNetworkConnectorRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the network connector.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the network connector.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the network connector.</p>
    #   @return [String]
    # @!attribute version_arn
    #   <p>The qualified ARN of the specific connector version returned by this request, including the immutable version suffix. This is populated only when you supply a version-qualified identifier. On a standard (unqualified) request, this field is not populated; the connector's latest active version is returned instead through the <code>LatestVersionArn</code> and <code>LatestVersion</code> fields described below.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version number of the network connector. On a standard (unqualified) request, this is the connector's current version; each configuration update increments it. When you supply a version-qualified identifier, this is the specific version you requested.</p>
    #   @return [Integer]
    # @!attribute latest_version_arn
    #   <p>The qualified ARN of the connector's latest active version, including the immutable version suffix. This field is returned only on a standard (unqualified) request; when you supply a version-qualified identifier it is not returned, and <code>VersionArn</code> is returned instead.</p>
    #   @return [String]
    # @!attribute latest_version
    #   <p>The version number of the connector's latest active version. Each configuration update creates a new immutable version; this attribute exposes the most recent one. This field is returned only on a standard (unqualified) request.</p>
    #   @return [Integer]
    # @!attribute configuration
    #   <p>The network configuration of the connector, including VPC subnets and security groups.</p>
    #   @return [Types::NetworkConnectorConfiguration]
    # @!attribute operator_role
    #   <p>The ARN of the IAM role that Lambda uses to manage the underlying ENI resources for this connector.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the network connector.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>A human-readable explanation of the current state, populated when the state is <code>FAILED</code> or <code>DELETE_FAILED</code>.</p>
    #   @return [String]
    # @!attribute state_reason_code
    #   <p>A machine-readable code indicating the reason for the current state. Use this for programmatic error handling.</p>
    #   @return [String]
    # @!attribute last_update_status
    #   <p>The status of the most recent update operation (<code>Successful</code>, <code>Failed</code>, or <code>InProgress</code>).</p>
    #   @return [String]
    # @!attribute last_update_status_reason
    #   <p>A human-readable explanation of the last update status.</p>
    #   @return [String]
    # @!attribute last_update_status_reason_code
    #   <p>A machine-readable code indicating the reason for the last update status. Use this for programmatic error handling.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date and time when the connector configuration was last modified.</p>
    #   @return [Time]
    class GetNetworkConnectorResponse < Struct.new(
      nil,
      :arn,
      :name,
      :id,
      :version_arn,
      :version,
      :latest_version_arn,
      :latest_version,
      :configuration,
      :operator_role,
      :state,
      :state_reason,
      :state_reason_code,
      :last_update_status,
      :last_update_status_reason,
      :last_update_status_reason_code,
      :last_modified,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One of the parameters in the request is not valid. Check the error message for details about which parameter failed validation.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class InvalidParameterValueException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the network connector whose versions you want to list. You can specify the connector ID, name, or full ARN. Specify an unqualified identifier — this operation lists all versions of the connector, not a specific version.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Optional filter to return only versions in the specified state (for example, <code>ACTIVE</code> or <code>FAILED</code>).</p>
    #   @return [String]
    # @!attribute marker
    #   <p>The pagination token from a previous <code>ListNetworkConnectorVersions</code> response. Use this value to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of versions to return per page. Valid range: 1 to 100.</p>
    #   @return [Integer]
    class ListNetworkConnectorVersionsRequest < Struct.new(
      nil,
      :identifier,
      :state,
      :marker,
      :max_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_connector_versions
    #   <p>A list of connector version summaries for the current page of results.</p>
    #   @return [Array<Types::NetworkConnectorVersionSummary>]
    # @!attribute next_marker
    #   <p>The pagination token to include in a subsequent request to retrieve the next page. This value is null when there are no more results.</p>
    #   @return [String]
    class ListNetworkConnectorVersionsResponse < Struct.new(
      nil,
      :network_connector_versions,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute state
    #   <p>Optional filter to return only connectors in the specified state (for example, <code>ACTIVE</code> or <code>FAILED</code>).</p>
    #   @return [String]
    # @!attribute marker
    #   <p>The pagination token from a previous <code>ListNetworkConnectors</code> response. Use this value to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of connectors to return per page. Valid range: 1 to 100.</p>
    #   @return [Integer]
    class ListNetworkConnectorsRequest < Struct.new(
      nil,
      :state,
      :marker,
      :max_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_connectors
    #   <p>A list of network connector summaries for the current page of results.</p>
    #   @return [Array<Types::NetworkConnectorSummary>]
    # @!attribute next_marker
    #   <p>The pagination token to include in a subsequent request to retrieve the next page. This value is null when there are no more results.</p>
    #   @return [String]
    class ListNetworkConnectorsResponse < Struct.new(
      nil,
      :network_connectors,
      :next_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The network configuration for a network connector. Different connector types use different configuration shapes; specify the configuration that matches your connector type.</p>
    # @!attribute vpc_egress_configuration
    #   <p>Configuration for a VPC egress network connector. Specifies the subnets, security groups, and network protocol for routing outbound traffic through your VPC.</p>
    #   @return [Types::NetworkConnectorVpcEgressConfiguration]
    class NetworkConnectorConfiguration < Struct.new(
      :vpc_egress_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class VpcEgressConfiguration < NetworkConnectorConfiguration; end
      class Unknown < NetworkConnectorConfiguration; end
    end

    # <p>The request would exceed a network connector limit. For <code>CreateNetworkConnector</code>, the account has reached the maximum number of network connectors allowed. For <code>UpdateNetworkConnector</code>, the connector has reached the maximum number of versions allowed.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The account has reached the maximum number of network connectors allowed.</p>
    #   @return [String]
    class NetworkConnectorLimitExceededException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a network connector returned by <code>ListNetworkConnectors</code>. Contains identifying fields and current state. To retrieve full configuration details, use <code>GetNetworkConnector</code>.</p>
    # @!attribute arn
    #   <p>The ARN of the network connector.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the network connector.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the network connector.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the network connector (<code>VPC_EGRESS</code>).</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the network connector.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date and time when the connector was last modified.</p>
    #   @return [Time]
    # @!attribute latest_version_arn
    #   <p>The qualified ARN of the connector's latest version, including the immutable version suffix.</p>
    #   @return [String]
    # @!attribute latest_version
    #   <p>The version number of the connector's latest version. Each configuration update creates a new immutable version; this attribute exposes the most recent one.</p>
    #   @return [Integer]
    class NetworkConnectorSummary < Struct.new(
      nil,
      :arn,
      :name,
      :id,
      :type,
      :state,
      :last_modified,
      :latest_version_arn,
      :latest_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a single version of a network connector returned by <code>ListNetworkConnectorVersions</code>. Each configuration update creates a new immutable version; this shape describes one such version. To retrieve the full configuration of a version, call <code>GetNetworkConnector</code> with a version-qualified identifier.</p>
    # @!attribute arn
    #   <p>The unqualified ARN of the network connector that this version belongs to.</p>
    #   @return [String]
    # @!attribute version_arn
    #   <p>The qualified ARN of this connector version, including the immutable version suffix.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the network connector.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the network connector.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version number of this connector version.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>The current state of this connector version.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>A human-readable explanation of the current state, populated when the state is <code>FAILED</code>.</p>
    #   @return [String]
    # @!attribute state_reason_code
    #   <p>A machine-readable code indicating the reason for the current state. Use this for programmatic error handling.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date and time when this connector version was last modified.</p>
    #   @return [Time]
    class NetworkConnectorVersionSummary < Struct.new(
      nil,
      :arn,
      :version_arn,
      :name,
      :id,
      :version,
      :state,
      :state_reason,
      :state_reason_code,
      :last_modified,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for a VPC egress network connector. Specifies the VPC subnets, security groups, network protocol, and associated Lambda compute resource types.</p>
    # @!attribute subnet_ids
    #   <p>The IDs of the VPC subnets where Lambda provisions elastic network interfaces (ENIs). Specify 1 to 16 subnets. All subnets must be in the same VPC.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The IDs of the VPC security groups to attach to the ENIs. All security groups must be in the same VPC as the subnets.</p>
    #   @return [Array<String>]
    # @!attribute network_protocol
    #   <p>The network protocol for the connector. Specify <code>IPv4</code> for IPv4-only networking, or <code>DualStack</code> for both IPv4 and IPv6.</p>
    #   @return [String]
    # @!attribute associated_compute_resource_types
    #   <p>The types of Lambda compute resources that can use this connector. Valid values are <code>MicroVm</code> and <code>WebFunction</code>. Specify exactly one value.</p>
    #   @return [Array<String>]
    class NetworkConnectorVpcEgressConfiguration < Struct.new(
      nil,
      :subnet_ids,
      :security_group_ids,
      :network_protocol,
      :associated_compute_resource_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be completed due to a conflict with the current state of the resource. For example, attempting to update a connector that is not in <code>ACTIVE</code> state.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ResourceConflictException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified network connector does not exist. Verify the identifier (ID, name, or ARN) and Region.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal service error occurred. Retry the request with exponential backoff.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ServiceException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was throttled due to exceeding the allowed request rate. Retry the request after a brief wait using exponential backoff.</p>
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the request.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the throttling.</p>
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      nil,
      :retry_after_seconds,
      :type,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the network connector to update. You can specify the connector ID, name, or full ARN.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The updated network configuration for the connector. Provide the full <code>VpcEgressConfiguration</code> including all subnet IDs and security group IDs — this replaces the existing configuration.</p>
    #   @return [Types::NetworkConnectorConfiguration]
    # @!attribute operator_role
    #   <p>The updated ARN of the IAM role that Lambda assumes to manage ENIs. Use this to change the operator role without recreating the connector.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the update request.</p>
    #   @return [String]
    class UpdateNetworkConnectorRequest < Struct.new(
      nil,
      :identifier,
      :configuration,
      :operator_role,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the network connector.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the network connector.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the network connector.</p>
    #   @return [String]
    # @!attribute version_arn
    #   <p>The qualified ARN of the connector version resulting from this update, including the immutable version suffix.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version number of the connector version resulting from this update. A configuration change creates a new, incremented version; a no-op update returns the current version number.</p>
    #   @return [Integer]
    # @!attribute operator_role
    #   <p>The ARN of the IAM role that Lambda uses to manage the underlying ENI resources for this connector.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The network configuration of the connector, including VPC subnets and security groups.</p>
    #   @return [Types::NetworkConnectorConfiguration]
    # @!attribute state
    #   <p>The current state of the network connector.</p>
    #   @return [String]
    # @!attribute last_update_status
    #   <p>The status of this update operation (typically <code>InProgress</code> immediately after the call).</p>
    #   @return [String]
    # @!attribute last_update_status_reason
    #   <p>A human-readable explanation of the update status.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The timestamp of this update.</p>
    #   @return [Time]
    class UpdateNetworkConnectorResponse < Struct.new(
      nil,
      :arn,
      :name,
      :id,
      :version_arn,
      :version,
      :operator_role,
      :configuration,
      :state,
      :last_update_status,
      :last_update_status_reason,
      :last_modified,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end

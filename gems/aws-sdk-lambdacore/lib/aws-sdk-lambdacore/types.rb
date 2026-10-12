# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LambdaCore
  module Types

    # @!attribute [rw] name
    #   A unique name for the network connector within your account and
    #   Region. You can use the name to identify the connector in subsequent
    #   API calls.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The network configuration for the connector. Specify a
    #   `VpcEgressConfiguration` to enable outbound traffic routing through
    #   your VPC.
    #   @return [Types::NetworkConnectorConfiguration]
    #
    # @!attribute [rw] operator_role
    #   The ARN of the IAM role that Lambda assumes to manage elastic
    #   network interfaces in your VPC. This role must have permissions for
    #   `ec2:CreateNetworkInterface`, `ec2:DeleteNetworkInterface`, and
    #   related describe operations.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request with the same
    #   client token, the API returns the existing connector without
    #   creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of key-value pairs to associate with the network connector for
    #   organization, cost allocation, or access control.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/CreateNetworkConnectorRequest AWS API Documentation
    #
    class CreateNetworkConnectorRequest < Struct.new(
      :name,
      :configuration,
      :operator_role,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the network connector.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the network connector.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the network connector.
    #   @return [String]
    #
    # @!attribute [rw] version_arn
    #   The qualified ARN of the connector version created by this request,
    #   including the immutable version suffix.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number assigned to the connector. A newly created
    #   connector starts at version 1.
    #   @return [Integer]
    #
    # @!attribute [rw] configuration
    #   The network configuration of the connector, including VPC subnets
    #   and security groups.
    #   @return [Types::NetworkConnectorConfiguration]
    #
    # @!attribute [rw] operator_role
    #   The ARN of the IAM role that Lambda uses to manage the underlying
    #   ENI resources for this connector.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the network connector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/CreateNetworkConnectorResponse AWS API Documentation
    #
    class CreateNetworkConnectorResponse < Struct.new(
      :arn,
      :name,
      :id,
      :version_arn,
      :version,
      :configuration,
      :operator_role,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The identifier of the network connector to delete. Provide an
    #   unqualified ARN (or an ID or name) to delete the entire connector
    #   and all of its versions, or a version-qualified ARN — one that
    #   includes the immutable version suffix — to delete a specific
    #   historical version. You can't delete the latest version with a
    #   version-qualified identifier; delete the connector instead.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/DeleteNetworkConnectorRequest AWS API Documentation
    #
    class DeleteNetworkConnectorRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the network connector.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the network connector.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the network connector.
    #   @return [String]
    #
    # @!attribute [rw] version_arn
    #   The qualified ARN of the connector version affected by this request,
    #   including the immutable version suffix.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number of the connector version affected by this
    #   request.
    #   @return [Integer]
    #
    # @!attribute [rw] configuration
    #   The network configuration of the connector, including VPC subnets
    #   and security groups.
    #   @return [Types::NetworkConnectorConfiguration]
    #
    # @!attribute [rw] operator_role
    #   The ARN of the IAM role that Lambda uses to manage the underlying
    #   ENI resources for this connector.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the network connector. The State field is
    #   typically `DELETING` after this call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/DeleteNetworkConnectorResponse AWS API Documentation
    #
    class DeleteNetworkConnectorResponse < Struct.new(
      :arn,
      :name,
      :id,
      :version_arn,
      :version,
      :configuration,
      :operator_role,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The identifier of the network connector to retrieve. You can specify
    #   the connector ID, name, or ARN. Provide an unqualified ARN (or an ID
    #   or name) to retrieve the connector's latest version, or a
    #   version-qualified ARN — one that includes the immutable version
    #   suffix — to retrieve a specific historical version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/GetNetworkConnectorRequest AWS API Documentation
    #
    class GetNetworkConnectorRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the network connector.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the network connector.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the network connector.
    #   @return [String]
    #
    # @!attribute [rw] version_arn
    #   The qualified ARN of the specific connector version returned by this
    #   request, including the immutable version suffix. This is populated
    #   only when you supply a version-qualified identifier. On a standard
    #   (unqualified) request, this field is not populated; the connector's
    #   latest active version is returned instead through the
    #   `LatestVersionArn` and `LatestVersion` fields described below.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number of the network connector. On a standard
    #   (unqualified) request, this is the connector's current version;
    #   each configuration update increments it. When you supply a
    #   version-qualified identifier, this is the specific version you
    #   requested.
    #   @return [Integer]
    #
    # @!attribute [rw] latest_version_arn
    #   The qualified ARN of the connector's latest active version,
    #   including the immutable version suffix. This field is returned only
    #   on a standard (unqualified) request; when you supply a
    #   version-qualified identifier it is not returned, and `VersionArn` is
    #   returned instead.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   The version number of the connector's latest active version. Each
    #   configuration update creates a new immutable version; this attribute
    #   exposes the most recent one. This field is returned only on a
    #   standard (unqualified) request.
    #   @return [Integer]
    #
    # @!attribute [rw] configuration
    #   The network configuration of the connector, including VPC subnets
    #   and security groups.
    #   @return [Types::NetworkConnectorConfiguration]
    #
    # @!attribute [rw] operator_role
    #   The ARN of the IAM role that Lambda uses to manage the underlying
    #   ENI resources for this connector.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the network connector.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   A human-readable explanation of the current state, populated when
    #   the state is `FAILED` or `DELETE_FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] state_reason_code
    #   A machine-readable code indicating the reason for the current state.
    #   Use this for programmatic error handling.
    #   @return [String]
    #
    # @!attribute [rw] last_update_status
    #   The status of the most recent update operation (`Successful`,
    #   `Failed`, or `InProgress`).
    #   @return [String]
    #
    # @!attribute [rw] last_update_status_reason
    #   A human-readable explanation of the last update status.
    #   @return [String]
    #
    # @!attribute [rw] last_update_status_reason_code
    #   A machine-readable code indicating the reason for the last update
    #   status. Use this for programmatic error handling.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The date and time when the connector configuration was last
    #   modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/GetNetworkConnectorResponse AWS API Documentation
    #
    class GetNetworkConnectorResponse < Struct.new(
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
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the parameters in the request is not valid. Check the error
    # message for details about which parameter failed validation.
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The identifier of the network connector whose versions you want to
    #   list. You can specify the connector ID, name, or full ARN. Specify
    #   an unqualified identifier — this operation lists all versions of the
    #   connector, not a specific version.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Optional filter to return only versions in the specified state (for
    #   example, `ACTIVE` or `FAILED`).
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   The pagination token from a previous `ListNetworkConnectorVersions`
    #   response. Use this value to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of versions to return per page. Valid range: 1 to
    #   100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/ListNetworkConnectorVersionsRequest AWS API Documentation
    #
    class ListNetworkConnectorVersionsRequest < Struct.new(
      :identifier,
      :state,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_connector_versions
    #   A list of connector version summaries for the current page of
    #   results.
    #   @return [Array<Types::NetworkConnectorVersionSummary>]
    #
    # @!attribute [rw] next_marker
    #   The pagination token to include in a subsequent request to retrieve
    #   the next page. This value is null when there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/ListNetworkConnectorVersionsResponse AWS API Documentation
    #
    class ListNetworkConnectorVersionsResponse < Struct.new(
      :network_connector_versions,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state
    #   Optional filter to return only connectors in the specified state
    #   (for example, `ACTIVE` or `FAILED`).
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   The pagination token from a previous `ListNetworkConnectors`
    #   response. Use this value to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of connectors to return per page. Valid range: 1
    #   to 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/ListNetworkConnectorsRequest AWS API Documentation
    #
    class ListNetworkConnectorsRequest < Struct.new(
      :state,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_connectors
    #   A list of network connector summaries for the current page of
    #   results.
    #   @return [Array<Types::NetworkConnectorSummary>]
    #
    # @!attribute [rw] next_marker
    #   The pagination token to include in a subsequent request to retrieve
    #   the next page. This value is null when there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/ListNetworkConnectorsResponse AWS API Documentation
    #
    class ListNetworkConnectorsResponse < Struct.new(
      :network_connectors,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # The network configuration for a network connector. Different connector
    # types use different configuration shapes; specify the configuration
    # that matches your connector type.
    #
    # @note NetworkConnectorConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note NetworkConnectorConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of NetworkConnectorConfiguration corresponding to the set member.
    #
    # @!attribute [rw] vpc_egress_configuration
    #   Configuration for a VPC egress network connector. Specifies the
    #   subnets, security groups, and network protocol for routing outbound
    #   traffic through your VPC.
    #   @return [Types::NetworkConnectorVpcEgressConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/NetworkConnectorConfiguration AWS API Documentation
    #
    class NetworkConnectorConfiguration < Struct.new(
      :vpc_egress_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class VpcEgressConfiguration < NetworkConnectorConfiguration; end
      class Unknown < NetworkConnectorConfiguration; end
    end

    # The request would exceed a network connector limit. For
    # `CreateNetworkConnector`, the account has reached the maximum number
    # of network connectors allowed. For `UpdateNetworkConnector`, the
    # connector has reached the maximum number of versions allowed.
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The account has reached the maximum number of network connectors
    #   allowed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/NetworkConnectorLimitExceededException AWS API Documentation
    #
    class NetworkConnectorLimitExceededException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a network connector returned by
    # `ListNetworkConnectors`. Contains identifying fields and current
    # state. To retrieve full configuration details, use
    # `GetNetworkConnector`.
    #
    # @!attribute [rw] arn
    #   The ARN of the network connector.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the network connector.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the network connector.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the network connector (`VPC_EGRESS`).
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the network connector.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The date and time when the connector was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] latest_version_arn
    #   The qualified ARN of the connector's latest version, including the
    #   immutable version suffix.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   The version number of the connector's latest version. Each
    #   configuration update creates a new immutable version; this attribute
    #   exposes the most recent one.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/NetworkConnectorSummary AWS API Documentation
    #
    class NetworkConnectorSummary < Struct.new(
      :arn,
      :name,
      :id,
      :type,
      :state,
      :last_modified,
      :latest_version_arn,
      :latest_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a single version of a network connector
    # returned by `ListNetworkConnectorVersions`. Each configuration update
    # creates a new immutable version; this shape describes one such
    # version. To retrieve the full configuration of a version, call
    # `GetNetworkConnector` with a version-qualified identifier.
    #
    # @!attribute [rw] arn
    #   The unqualified ARN of the network connector that this version
    #   belongs to.
    #   @return [String]
    #
    # @!attribute [rw] version_arn
    #   The qualified ARN of this connector version, including the immutable
    #   version suffix.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the network connector.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the network connector.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number of this connector version.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The current state of this connector version.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   A human-readable explanation of the current state, populated when
    #   the state is `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] state_reason_code
    #   A machine-readable code indicating the reason for the current state.
    #   Use this for programmatic error handling.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The date and time when this connector version was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/NetworkConnectorVersionSummary AWS API Documentation
    #
    class NetworkConnectorVersionSummary < Struct.new(
      :arn,
      :version_arn,
      :name,
      :id,
      :version,
      :state,
      :state_reason,
      :state_reason_code,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for a VPC egress network connector. Specifies the VPC
    # subnets, security groups, network protocol, and associated Lambda
    # compute resource types.
    #
    # @!attribute [rw] subnet_ids
    #   The IDs of the VPC subnets where Lambda provisions elastic network
    #   interfaces (ENIs). Specify 1 to 16 subnets. All subnets must be in
    #   the same VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The IDs of the VPC security groups to attach to the ENIs. All
    #   security groups must be in the same VPC as the subnets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] network_protocol
    #   The network protocol for the connector. Specify `IPv4` for IPv4-only
    #   networking, or `DualStack` for both IPv4 and IPv6.
    #   @return [String]
    #
    # @!attribute [rw] associated_compute_resource_types
    #   The types of Lambda compute resources that can use this connector.
    #   Valid values are `MicroVm` and `WebFunction`. Specify exactly one
    #   value.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/NetworkConnectorVpcEgressConfiguration AWS API Documentation
    #
    class NetworkConnectorVpcEgressConfiguration < Struct.new(
      :subnet_ids,
      :security_group_ids,
      :network_protocol,
      :associated_compute_resource_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed due to a conflict with the current
    # state of the resource. For example, attempting to update a connector
    # that is not in `ACTIVE` state.
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/ResourceConflictException AWS API Documentation
    #
    class ResourceConflictException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified network connector does not exist. Verify the identifier
    # (ID, name, or ARN) and Region.
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal service error occurred. Retry the request with exponential
    # backoff.
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/ServiceException AWS API Documentation
    #
    class ServiceException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was throttled due to exceeding the allowed request rate.
    # Retry the request after a brief wait using exponential backoff.
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the request.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the throttling.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :retry_after_seconds,
      :type,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The identifier of the network connector to update. You can specify
    #   the connector ID, name, or full ARN.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The updated network configuration for the connector. Provide the
    #   full `VpcEgressConfiguration` including all subnet IDs and security
    #   group IDs — this replaces the existing configuration.
    #   @return [Types::NetworkConnectorConfiguration]
    #
    # @!attribute [rw] operator_role
    #   The updated ARN of the IAM role that Lambda assumes to manage ENIs.
    #   Use this to change the operator role without recreating the
    #   connector.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   update request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/UpdateNetworkConnectorRequest AWS API Documentation
    #
    class UpdateNetworkConnectorRequest < Struct.new(
      :identifier,
      :configuration,
      :operator_role,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the network connector.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the network connector.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the network connector.
    #   @return [String]
    #
    # @!attribute [rw] version_arn
    #   The qualified ARN of the connector version resulting from this
    #   update, including the immutable version suffix.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number of the connector version resulting from this
    #   update. A configuration change creates a new, incremented version; a
    #   no-op update returns the current version number.
    #   @return [Integer]
    #
    # @!attribute [rw] operator_role
    #   The ARN of the IAM role that Lambda uses to manage the underlying
    #   ENI resources for this connector.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The network configuration of the connector, including VPC subnets
    #   and security groups.
    #   @return [Types::NetworkConnectorConfiguration]
    #
    # @!attribute [rw] state
    #   The current state of the network connector.
    #   @return [String]
    #
    # @!attribute [rw] last_update_status
    #   The status of this update operation (typically `InProgress`
    #   immediately after the call).
    #   @return [String]
    #
    # @!attribute [rw] last_update_status_reason
    #   A human-readable explanation of the update status.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The timestamp of this update.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-core-2026-04-30/UpdateNetworkConnectorResponse AWS API Documentation
    #
    class UpdateNetworkConnectorResponse < Struct.new(
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
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end


# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::LambdaCore
  # @api private
  module ClientApi

    include Seahorse::Model

    AssociatedComputeResourceTypesList = Shapes::ListShape.new(name: 'AssociatedComputeResourceTypesList')
    ClientTokenString = Shapes::StringShape.new(name: 'ClientTokenString')
    ComputeResourceType = Shapes::StringShape.new(name: 'ComputeResourceType')
    CoreTimestamp = Shapes::TimestampShape.new(name: 'CoreTimestamp', timestampFormat: "iso8601")
    CreateNetworkConnectorRequest = Shapes::StructureShape.new(name: 'CreateNetworkConnectorRequest')
    CreateNetworkConnectorResponse = Shapes::StructureShape.new(name: 'CreateNetworkConnectorResponse')
    DeleteNetworkConnectorRequest = Shapes::StructureShape.new(name: 'DeleteNetworkConnectorRequest')
    DeleteNetworkConnectorResponse = Shapes::StructureShape.new(name: 'DeleteNetworkConnectorResponse')
    GetNetworkConnectorRequest = Shapes::StructureShape.new(name: 'GetNetworkConnectorRequest')
    GetNetworkConnectorResponse = Shapes::StructureShape.new(name: 'GetNetworkConnectorResponse')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    ListNetworkConnectorVersionsRequest = Shapes::StructureShape.new(name: 'ListNetworkConnectorVersionsRequest')
    ListNetworkConnectorVersionsResponse = Shapes::StructureShape.new(name: 'ListNetworkConnectorVersionsResponse')
    ListNetworkConnectorsRequest = Shapes::StructureShape.new(name: 'ListNetworkConnectorsRequest')
    ListNetworkConnectorsResponse = Shapes::StructureShape.new(name: 'ListNetworkConnectorsResponse')
    MaxHundredListItems = Shapes::IntegerShape.new(name: 'MaxHundredListItems')
    NetworkConnectorArn = Shapes::StringShape.new(name: 'NetworkConnectorArn')
    NetworkConnectorConfiguration = Shapes::UnionShape.new(name: 'NetworkConnectorConfiguration')
    NetworkConnectorId = Shapes::StringShape.new(name: 'NetworkConnectorId')
    NetworkConnectorIdentifier = Shapes::StringShape.new(name: 'NetworkConnectorIdentifier')
    NetworkConnectorLastUpdateStatus = Shapes::StringShape.new(name: 'NetworkConnectorLastUpdateStatus')
    NetworkConnectorLastUpdateStatusReason = Shapes::StringShape.new(name: 'NetworkConnectorLastUpdateStatusReason')
    NetworkConnectorLastUpdateStatusReasonCode = Shapes::StringShape.new(name: 'NetworkConnectorLastUpdateStatusReasonCode')
    NetworkConnectorLimitExceededException = Shapes::StructureShape.new(name: 'NetworkConnectorLimitExceededException')
    NetworkConnectorName = Shapes::StringShape.new(name: 'NetworkConnectorName')
    NetworkConnectorRoleArn = Shapes::StringShape.new(name: 'NetworkConnectorRoleArn')
    NetworkConnectorSecurityGroupId = Shapes::StringShape.new(name: 'NetworkConnectorSecurityGroupId')
    NetworkConnectorSecurityGroupIds = Shapes::ListShape.new(name: 'NetworkConnectorSecurityGroupIds')
    NetworkConnectorState = Shapes::StringShape.new(name: 'NetworkConnectorState')
    NetworkConnectorStateReasonCode = Shapes::StringShape.new(name: 'NetworkConnectorStateReasonCode')
    NetworkConnectorSubnetId = Shapes::StringShape.new(name: 'NetworkConnectorSubnetId')
    NetworkConnectorSubnetIds = Shapes::ListShape.new(name: 'NetworkConnectorSubnetIds')
    NetworkConnectorSummary = Shapes::StructureShape.new(name: 'NetworkConnectorSummary')
    NetworkConnectorTagKey = Shapes::StringShape.new(name: 'NetworkConnectorTagKey')
    NetworkConnectorTagValue = Shapes::StringShape.new(name: 'NetworkConnectorTagValue')
    NetworkConnectorTags = Shapes::MapShape.new(name: 'NetworkConnectorTags')
    NetworkConnectorType = Shapes::StringShape.new(name: 'NetworkConnectorType')
    NetworkConnectorVersion = Shapes::IntegerShape.new(name: 'NetworkConnectorVersion')
    NetworkConnectorVersionSummary = Shapes::StructureShape.new(name: 'NetworkConnectorVersionSummary')
    NetworkConnectorVersionsList = Shapes::ListShape.new(name: 'NetworkConnectorVersionsList')
    NetworkConnectorVpcEgressConfiguration = Shapes::StructureShape.new(name: 'NetworkConnectorVpcEgressConfiguration')
    NetworkConnectorsList = Shapes::ListShape.new(name: 'NetworkConnectorsList')
    NetworkProtocol = Shapes::StringShape.new(name: 'NetworkProtocol')
    ResourceConflictException = Shapes::StructureShape.new(name: 'ResourceConflictException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceException = Shapes::StructureShape.new(name: 'ServiceException')
    String = Shapes::StringShape.new(name: 'String')
    ThrottleReason = Shapes::StringShape.new(name: 'ThrottleReason')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UpdateNetworkConnectorRequest = Shapes::StructureShape.new(name: 'UpdateNetworkConnectorRequest')
    UpdateNetworkConnectorResponse = Shapes::StructureShape.new(name: 'UpdateNetworkConnectorResponse')

    AssociatedComputeResourceTypesList.member = Shapes::ShapeRef.new(shape: ComputeResourceType)

    CreateNetworkConnectorRequest.add_member(:name, Shapes::ShapeRef.new(shape: NetworkConnectorName, required: true, location_name: "Name"))
    CreateNetworkConnectorRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: NetworkConnectorConfiguration, required: true, location_name: "Configuration"))
    CreateNetworkConnectorRequest.add_member(:operator_role, Shapes::ShapeRef.new(shape: NetworkConnectorRoleArn, location_name: "OperatorRole"))
    CreateNetworkConnectorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateNetworkConnectorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: NetworkConnectorTags, location_name: "Tags"))
    CreateNetworkConnectorRequest.struct_class = Types::CreateNetworkConnectorRequest

    CreateNetworkConnectorResponse.add_member(:arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, required: true, location_name: "Arn"))
    CreateNetworkConnectorResponse.add_member(:name, Shapes::ShapeRef.new(shape: NetworkConnectorName, required: true, location_name: "Name"))
    CreateNetworkConnectorResponse.add_member(:id, Shapes::ShapeRef.new(shape: NetworkConnectorId, required: true, location_name: "Id"))
    CreateNetworkConnectorResponse.add_member(:version_arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, location_name: "VersionArn"))
    CreateNetworkConnectorResponse.add_member(:version, Shapes::ShapeRef.new(shape: NetworkConnectorVersion, location_name: "Version"))
    CreateNetworkConnectorResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: NetworkConnectorConfiguration, location_name: "Configuration"))
    CreateNetworkConnectorResponse.add_member(:operator_role, Shapes::ShapeRef.new(shape: NetworkConnectorRoleArn, location_name: "OperatorRole"))
    CreateNetworkConnectorResponse.add_member(:state, Shapes::ShapeRef.new(shape: NetworkConnectorState, location_name: "State"))
    CreateNetworkConnectorResponse.struct_class = Types::CreateNetworkConnectorResponse

    DeleteNetworkConnectorRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: NetworkConnectorIdentifier, required: true, location: "uri", location_name: "Identifier"))
    DeleteNetworkConnectorRequest.struct_class = Types::DeleteNetworkConnectorRequest

    DeleteNetworkConnectorResponse.add_member(:arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, required: true, location_name: "Arn"))
    DeleteNetworkConnectorResponse.add_member(:name, Shapes::ShapeRef.new(shape: NetworkConnectorName, required: true, location_name: "Name"))
    DeleteNetworkConnectorResponse.add_member(:id, Shapes::ShapeRef.new(shape: NetworkConnectorId, required: true, location_name: "Id"))
    DeleteNetworkConnectorResponse.add_member(:version_arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, location_name: "VersionArn"))
    DeleteNetworkConnectorResponse.add_member(:version, Shapes::ShapeRef.new(shape: NetworkConnectorVersion, location_name: "Version"))
    DeleteNetworkConnectorResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: NetworkConnectorConfiguration, location_name: "Configuration"))
    DeleteNetworkConnectorResponse.add_member(:operator_role, Shapes::ShapeRef.new(shape: NetworkConnectorRoleArn, location_name: "OperatorRole"))
    DeleteNetworkConnectorResponse.add_member(:state, Shapes::ShapeRef.new(shape: NetworkConnectorState, location_name: "State"))
    DeleteNetworkConnectorResponse.struct_class = Types::DeleteNetworkConnectorResponse

    GetNetworkConnectorRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: NetworkConnectorIdentifier, required: true, location: "uri", location_name: "Identifier"))
    GetNetworkConnectorRequest.struct_class = Types::GetNetworkConnectorRequest

    GetNetworkConnectorResponse.add_member(:arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, required: true, location_name: "Arn"))
    GetNetworkConnectorResponse.add_member(:name, Shapes::ShapeRef.new(shape: NetworkConnectorName, required: true, location_name: "Name"))
    GetNetworkConnectorResponse.add_member(:id, Shapes::ShapeRef.new(shape: NetworkConnectorId, required: true, location_name: "Id"))
    GetNetworkConnectorResponse.add_member(:version_arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, location_name: "VersionArn"))
    GetNetworkConnectorResponse.add_member(:version, Shapes::ShapeRef.new(shape: NetworkConnectorVersion, location_name: "Version"))
    GetNetworkConnectorResponse.add_member(:latest_version_arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, location_name: "LatestVersionArn"))
    GetNetworkConnectorResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: NetworkConnectorVersion, location_name: "LatestVersion"))
    GetNetworkConnectorResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: NetworkConnectorConfiguration, location_name: "Configuration"))
    GetNetworkConnectorResponse.add_member(:operator_role, Shapes::ShapeRef.new(shape: NetworkConnectorRoleArn, location_name: "OperatorRole"))
    GetNetworkConnectorResponse.add_member(:state, Shapes::ShapeRef.new(shape: NetworkConnectorState, location_name: "State"))
    GetNetworkConnectorResponse.add_member(:state_reason, Shapes::ShapeRef.new(shape: String, location_name: "StateReason"))
    GetNetworkConnectorResponse.add_member(:state_reason_code, Shapes::ShapeRef.new(shape: NetworkConnectorStateReasonCode, location_name: "StateReasonCode"))
    GetNetworkConnectorResponse.add_member(:last_update_status, Shapes::ShapeRef.new(shape: NetworkConnectorLastUpdateStatus, location_name: "LastUpdateStatus"))
    GetNetworkConnectorResponse.add_member(:last_update_status_reason, Shapes::ShapeRef.new(shape: NetworkConnectorLastUpdateStatusReason, location_name: "LastUpdateStatusReason"))
    GetNetworkConnectorResponse.add_member(:last_update_status_reason_code, Shapes::ShapeRef.new(shape: NetworkConnectorLastUpdateStatusReasonCode, location_name: "LastUpdateStatusReasonCode"))
    GetNetworkConnectorResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: CoreTimestamp, location_name: "LastModified"))
    GetNetworkConnectorResponse.struct_class = Types::GetNetworkConnectorResponse

    InvalidParameterValueException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    InvalidParameterValueException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidParameterValueException.struct_class = Types::InvalidParameterValueException

    ListNetworkConnectorVersionsRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: NetworkConnectorIdentifier, required: true, location: "uri", location_name: "Identifier"))
    ListNetworkConnectorVersionsRequest.add_member(:state, Shapes::ShapeRef.new(shape: NetworkConnectorState, location: "querystring", location_name: "State"))
    ListNetworkConnectorVersionsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListNetworkConnectorVersionsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxHundredListItems, location: "querystring", location_name: "MaxItems"))
    ListNetworkConnectorVersionsRequest.struct_class = Types::ListNetworkConnectorVersionsRequest

    ListNetworkConnectorVersionsResponse.add_member(:network_connector_versions, Shapes::ShapeRef.new(shape: NetworkConnectorVersionsList, required: true, location_name: "NetworkConnectorVersions"))
    ListNetworkConnectorVersionsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListNetworkConnectorVersionsResponse.struct_class = Types::ListNetworkConnectorVersionsResponse

    ListNetworkConnectorsRequest.add_member(:state, Shapes::ShapeRef.new(shape: NetworkConnectorState, location: "querystring", location_name: "State"))
    ListNetworkConnectorsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "Marker"))
    ListNetworkConnectorsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxHundredListItems, location: "querystring", location_name: "MaxItems"))
    ListNetworkConnectorsRequest.struct_class = Types::ListNetworkConnectorsRequest

    ListNetworkConnectorsResponse.add_member(:network_connectors, Shapes::ShapeRef.new(shape: NetworkConnectorsList, required: true, location_name: "NetworkConnectors"))
    ListNetworkConnectorsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: String, location_name: "NextMarker"))
    ListNetworkConnectorsResponse.struct_class = Types::ListNetworkConnectorsResponse

    NetworkConnectorConfiguration.add_member(:vpc_egress_configuration, Shapes::ShapeRef.new(shape: NetworkConnectorVpcEgressConfiguration, location_name: "VpcEgressConfiguration"))
    NetworkConnectorConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    NetworkConnectorConfiguration.add_member_subclass(:vpc_egress_configuration, Types::NetworkConnectorConfiguration::VpcEgressConfiguration)
    NetworkConnectorConfiguration.add_member_subclass(:unknown, Types::NetworkConnectorConfiguration::Unknown)
    NetworkConnectorConfiguration.struct_class = Types::NetworkConnectorConfiguration

    NetworkConnectorLimitExceededException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    NetworkConnectorLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    NetworkConnectorLimitExceededException.struct_class = Types::NetworkConnectorLimitExceededException

    NetworkConnectorSecurityGroupIds.member = Shapes::ShapeRef.new(shape: NetworkConnectorSecurityGroupId)

    NetworkConnectorSubnetIds.member = Shapes::ShapeRef.new(shape: NetworkConnectorSubnetId)

    NetworkConnectorSummary.add_member(:arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, required: true, location_name: "Arn"))
    NetworkConnectorSummary.add_member(:name, Shapes::ShapeRef.new(shape: NetworkConnectorName, required: true, location_name: "Name"))
    NetworkConnectorSummary.add_member(:id, Shapes::ShapeRef.new(shape: NetworkConnectorId, required: true, location_name: "Id"))
    NetworkConnectorSummary.add_member(:type, Shapes::ShapeRef.new(shape: NetworkConnectorType, required: true, location_name: "Type"))
    NetworkConnectorSummary.add_member(:state, Shapes::ShapeRef.new(shape: NetworkConnectorState, location_name: "State"))
    NetworkConnectorSummary.add_member(:last_modified, Shapes::ShapeRef.new(shape: CoreTimestamp, location_name: "LastModified"))
    NetworkConnectorSummary.add_member(:latest_version_arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, location_name: "LatestVersionArn"))
    NetworkConnectorSummary.add_member(:latest_version, Shapes::ShapeRef.new(shape: NetworkConnectorVersion, location_name: "LatestVersion"))
    NetworkConnectorSummary.struct_class = Types::NetworkConnectorSummary

    NetworkConnectorTags.key = Shapes::ShapeRef.new(shape: NetworkConnectorTagKey)
    NetworkConnectorTags.value = Shapes::ShapeRef.new(shape: NetworkConnectorTagValue)

    NetworkConnectorVersionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, required: true, location_name: "Arn"))
    NetworkConnectorVersionSummary.add_member(:version_arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, required: true, location_name: "VersionArn"))
    NetworkConnectorVersionSummary.add_member(:name, Shapes::ShapeRef.new(shape: NetworkConnectorName, required: true, location_name: "Name"))
    NetworkConnectorVersionSummary.add_member(:id, Shapes::ShapeRef.new(shape: NetworkConnectorId, required: true, location_name: "Id"))
    NetworkConnectorVersionSummary.add_member(:version, Shapes::ShapeRef.new(shape: NetworkConnectorVersion, required: true, location_name: "Version"))
    NetworkConnectorVersionSummary.add_member(:state, Shapes::ShapeRef.new(shape: NetworkConnectorState, required: true, location_name: "State"))
    NetworkConnectorVersionSummary.add_member(:state_reason, Shapes::ShapeRef.new(shape: String, location_name: "StateReason"))
    NetworkConnectorVersionSummary.add_member(:state_reason_code, Shapes::ShapeRef.new(shape: NetworkConnectorStateReasonCode, location_name: "StateReasonCode"))
    NetworkConnectorVersionSummary.add_member(:last_modified, Shapes::ShapeRef.new(shape: CoreTimestamp, location_name: "LastModified"))
    NetworkConnectorVersionSummary.struct_class = Types::NetworkConnectorVersionSummary

    NetworkConnectorVersionsList.member = Shapes::ShapeRef.new(shape: NetworkConnectorVersionSummary)

    NetworkConnectorVpcEgressConfiguration.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: NetworkConnectorSubnetIds, location_name: "SubnetIds"))
    NetworkConnectorVpcEgressConfiguration.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: NetworkConnectorSecurityGroupIds, location_name: "SecurityGroupIds"))
    NetworkConnectorVpcEgressConfiguration.add_member(:network_protocol, Shapes::ShapeRef.new(shape: NetworkProtocol, location_name: "NetworkProtocol"))
    NetworkConnectorVpcEgressConfiguration.add_member(:associated_compute_resource_types, Shapes::ShapeRef.new(shape: AssociatedComputeResourceTypesList, location_name: "AssociatedComputeResourceTypes"))
    NetworkConnectorVpcEgressConfiguration.struct_class = Types::NetworkConnectorVpcEgressConfiguration

    NetworkConnectorsList.member = Shapes::ShapeRef.new(shape: NetworkConnectorSummary)

    ResourceConflictException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    ResourceConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceConflictException.struct_class = Types::ResourceConflictException

    ResourceNotFoundException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    ServiceException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceException.struct_class = Types::ServiceException

    TooManyRequestsException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Retry-After"))
    TooManyRequestsException.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TooManyRequestsException.add_member(:reason, Shapes::ShapeRef.new(shape: ThrottleReason, location_name: "Reason"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UpdateNetworkConnectorRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: NetworkConnectorIdentifier, required: true, location: "uri", location_name: "Identifier"))
    UpdateNetworkConnectorRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: NetworkConnectorConfiguration, location_name: "Configuration"))
    UpdateNetworkConnectorRequest.add_member(:operator_role, Shapes::ShapeRef.new(shape: NetworkConnectorRoleArn, location_name: "OperatorRole"))
    UpdateNetworkConnectorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    UpdateNetworkConnectorRequest.struct_class = Types::UpdateNetworkConnectorRequest

    UpdateNetworkConnectorResponse.add_member(:arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, required: true, location_name: "Arn"))
    UpdateNetworkConnectorResponse.add_member(:name, Shapes::ShapeRef.new(shape: NetworkConnectorName, required: true, location_name: "Name"))
    UpdateNetworkConnectorResponse.add_member(:id, Shapes::ShapeRef.new(shape: NetworkConnectorId, required: true, location_name: "Id"))
    UpdateNetworkConnectorResponse.add_member(:version_arn, Shapes::ShapeRef.new(shape: NetworkConnectorArn, location_name: "VersionArn"))
    UpdateNetworkConnectorResponse.add_member(:version, Shapes::ShapeRef.new(shape: NetworkConnectorVersion, location_name: "Version"))
    UpdateNetworkConnectorResponse.add_member(:operator_role, Shapes::ShapeRef.new(shape: NetworkConnectorRoleArn, location_name: "OperatorRole"))
    UpdateNetworkConnectorResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: NetworkConnectorConfiguration, location_name: "Configuration"))
    UpdateNetworkConnectorResponse.add_member(:state, Shapes::ShapeRef.new(shape: NetworkConnectorState, location_name: "State"))
    UpdateNetworkConnectorResponse.add_member(:last_update_status, Shapes::ShapeRef.new(shape: NetworkConnectorLastUpdateStatus, location_name: "LastUpdateStatus"))
    UpdateNetworkConnectorResponse.add_member(:last_update_status_reason, Shapes::ShapeRef.new(shape: NetworkConnectorLastUpdateStatusReason, location_name: "LastUpdateStatusReason"))
    UpdateNetworkConnectorResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: CoreTimestamp, location_name: "LastModified"))
    UpdateNetworkConnectorResponse.struct_class = Types::UpdateNetworkConnectorResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2026-04-30"

      api.metadata = {
        "apiVersion" => "2026-04-30",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "lambda",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Lambda Core",
        "serviceId" => "Lambda Core",
        "signatureVersion" => "v4",
        "signingName" => "lambda",
        "uid" => "lambda-core-2026-04-30",
      }

      api.add_operation(:create_network_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNetworkConnector"
        o.http_method = "POST"
        o.http_request_uri = "/2026-04-04/network-connectors"
        o.input = Shapes::ShapeRef.new(shape: CreateNetworkConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateNetworkConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NetworkConnectorLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_network_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNetworkConnector"
        o.http_method = "DELETE"
        o.http_request_uri = "/2026-04-04/network-connectors/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteNetworkConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteNetworkConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_network_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNetworkConnector"
        o.http_method = "GET"
        o.http_request_uri = "/2026-04-04/network-connectors/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetNetworkConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNetworkConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_network_connector_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworkConnectorVersions"
        o.http_method = "GET"
        o.http_request_uri = "/2026-04-04/network-connectors/{Identifier}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListNetworkConnectorVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworkConnectorVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_network_connectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworkConnectors"
        o.http_method = "GET"
        o.http_request_uri = "/2026-04-04/network-connectors"
        o.input = Shapes::ShapeRef.new(shape: ListNetworkConnectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworkConnectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:update_network_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNetworkConnector"
        o.http_method = "PUT"
        o.http_request_uri = "/2026-04-04/network-connectors/{Identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateNetworkConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateNetworkConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NetworkConnectorLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end

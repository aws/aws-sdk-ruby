# frozen_string_literal: true

# This is generated code!

module Aws::LambdaCore
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AssociatedComputeResourceTypesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdacore#AssociatedComputeResourceTypesList", name: "AssociatedComputeResourceTypesList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#tags" => ["feature:public"]})
    ClientTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdacore#ClientTokenString", name: "ClientTokenString", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#tags" => ["feature:public"]})
    ComputeResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdacore#ComputeResourceType", name: "ComputeResourceType", traits: {"smithy.api#tags" => ["feature:public"]})
    CoreTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.lambdacore#CoreTimestamp", name: "CoreTimestamp", traits: {"smithy.api#tags" => ["feature:public"], "smithy.api#timestampFormat" => "date-time"})
    CreateNetworkConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdacore#CreateNetworkConnectorRequest", name: "CreateNetworkConnectorRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    CreateNetworkConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdacore#CreateNetworkConnectorResponse", name: "CreateNetworkConnectorResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    DeleteNetworkConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdacore#DeleteNetworkConnectorRequest", name: "DeleteNetworkConnectorRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    DeleteNetworkConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdacore#DeleteNetworkConnectorResponse", name: "DeleteNetworkConnectorResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    GetNetworkConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdacore#GetNetworkConnectorRequest", name: "GetNetworkConnectorRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    GetNetworkConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdacore#GetNetworkConnectorResponse", name: "GetNetworkConnectorResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    InvalidParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdacore#InvalidParameterValueException", name: "InvalidParameterValueException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#tags" => ["feature:public"]})
    ListNetworkConnectorVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdacore#ListNetworkConnectorVersionsRequest", name: "ListNetworkConnectorVersionsRequest", traits: {"smithy.api#tags" => ["feature:webfunction"]})
    ListNetworkConnectorVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdacore#ListNetworkConnectorVersionsResponse", name: "ListNetworkConnectorVersionsResponse", traits: {"smithy.api#tags" => ["feature:webfunction"]})
    ListNetworkConnectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdacore#ListNetworkConnectorsRequest", name: "ListNetworkConnectorsRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    ListNetworkConnectorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdacore#ListNetworkConnectorsResponse", name: "ListNetworkConnectorsResponse", traits: {"smithy.api#tags" => ["feature:public"]})
    MaxHundredListItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambdacore#MaxHundredListItems", name: "MaxHundredListItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}, "smithy.api#tags" => ["feature:public"]})
    NetworkConnectorArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorArn", name: "NetworkConnectorArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^(arn:aws[a-zA-Z-]*:lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:network-connector:[a-zA-Z0-9-_]+(:[1-9][0-9]*)?)$", "smithy.api#tags" => ["feature:public"]})
    NetworkConnectorConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorConfiguration", name: "NetworkConnectorConfiguration", traits: {"smithy.api#tags" => ["feature:public"]})
    NetworkConnectorId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorId", name: "NetworkConnectorId", traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#tags" => ["feature:public"]})
    NetworkConnectorIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorIdentifier", name: "NetworkConnectorIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#tags" => ["feature:public"]})
    NetworkConnectorLastUpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorLastUpdateStatus", name: "NetworkConnectorLastUpdateStatus", traits: {"smithy.api#tags" => ["feature:public"]})
    NetworkConnectorLastUpdateStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorLastUpdateStatusReason", name: "NetworkConnectorLastUpdateStatusReason", traits: {"smithy.api#tags" => ["feature:public"]})
    NetworkConnectorLastUpdateStatusReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorLastUpdateStatusReasonCode", name: "NetworkConnectorLastUpdateStatusReasonCode", traits: {"smithy.api#tags" => ["feature:public"]})
    NetworkConnectorLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorLimitExceededException", name: "NetworkConnectorLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#tags" => ["feature:public"]})
    NetworkConnectorName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorName", name: "NetworkConnectorName", traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^(arn:aws[a-zA-Z-]*:lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:network-connector:[a-zA-Z0-9-_]+(:[1-9][0-9]*)?)|[a-zA-Z0-9_-]{1,64}$", "smithy.api#tags" => ["feature:public"]})
    NetworkConnectorRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorRoleArn", name: "NetworkConnectorRoleArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$", "smithy.api#tags" => ["feature:public"]})
    NetworkConnectorSecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorSecurityGroupId", name: "NetworkConnectorSecurityGroupId", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^sg-[0-9a-zA-Z]*$", "smithy.api#tags" => ["feature:public"]})
    NetworkConnectorSecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorSecurityGroupIds", name: "NetworkConnectorSecurityGroupIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 16}, "smithy.api#tags" => ["feature:public"]})
    NetworkConnectorState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorState", name: "NetworkConnectorState", traits: {"smithy.api#tags" => ["feature:public"]})
    NetworkConnectorStateReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorStateReasonCode", name: "NetworkConnectorStateReasonCode", traits: {"smithy.api#tags" => ["feature:public"]})
    NetworkConnectorSubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorSubnetId", name: "NetworkConnectorSubnetId", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^subnet-[0-9a-z]*$", "smithy.api#tags" => ["feature:public"]})
    NetworkConnectorSubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorSubnetIds", name: "NetworkConnectorSubnetIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}, "smithy.api#tags" => ["feature:public"]})
    NetworkConnectorSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorSummary", name: "NetworkConnectorSummary", traits: {"smithy.api#tags" => ["feature:public"]})
    NetworkConnectorTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorTagKey", name: "NetworkConnectorTagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "smithy.api#tags" => ["feature:public"]})
    NetworkConnectorTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorTagValue", name: "NetworkConnectorTagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "smithy.api#tags" => ["feature:public"]})
    NetworkConnectorTags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorTags", name: "NetworkConnectorTags", traits: {"smithy.api#tags" => ["feature:public"]})
    NetworkConnectorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorType", name: "NetworkConnectorType", traits: {"smithy.api#tags" => ["feature:public"]})
    NetworkConnectorVersion = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorVersion", name: "NetworkConnectorVersion", traits: {"smithy.api#range" => {"min" => 1}, "smithy.api#tags" => ["feature:public"]})
    NetworkConnectorVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorVersionSummary", name: "NetworkConnectorVersionSummary", traits: {"smithy.api#tags" => ["feature:webfunction"]})
    NetworkConnectorVersionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorVersionsList", name: "NetworkConnectorVersionsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#tags" => ["feature:webfunction"]})
    NetworkConnectorVpcEgressConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorVpcEgressConfiguration", name: "NetworkConnectorVpcEgressConfiguration", traits: {"smithy.api#tags" => ["feature:public"]})
    NetworkConnectorsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lambdacore#NetworkConnectorsList", name: "NetworkConnectorsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#tags" => ["feature:public"]})
    NetworkProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdacore#NetworkProtocol", name: "NetworkProtocol", traits: {"smithy.api#tags" => ["feature:public"]})
    ResourceConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdacore#ResourceConflictException", name: "ResourceConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409, "smithy.api#tags" => ["feature:public"]})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdacore#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404, "smithy.api#tags" => ["feature:public"]})
    ServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdacore#ServiceException", name: "ServiceException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#tags" => ["feature:public"]})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lambdacore#String", name: "String", traits: {"smithy.api#tags" => ["feature:public"]})
    ThrottleReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lambdacore#ThrottleReason", name: "ThrottleReason", traits: {"smithy.api#tags" => ["feature:public"]})
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdacore#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#tags" => ["feature:public"]})
    UpdateNetworkConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdacore#UpdateNetworkConnectorRequest", name: "UpdateNetworkConnectorRequest", traits: {"smithy.api#tags" => ["feature:public"]})
    UpdateNetworkConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lambdacore#UpdateNetworkConnectorResponse", name: "UpdateNetworkConnectorResponse", traits: {"smithy.api#tags" => ["feature:public"]})

    AssociatedComputeResourceTypesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeResourceType, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    ComputeResourceType.add_member(:micro_vm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MicroVm", traits: {"smithy.api#enumValue" => "MicroVm", "smithy.api#tags" => ["feature:public"]}))
    ComputeResourceType.add_member(:web_function, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WebFunction", traits: {"smithy.api#enumValue" => "WebFunction", "smithy.api#tags" => ["feature:webfunction"]}))
    CreateNetworkConnectorRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorName, name: "Name", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateNetworkConnectorRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorConfiguration, name: "Configuration", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateNetworkConnectorRequest.add_member(:operator_role, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorRoleArn, name: "OperatorRole", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateNetworkConnectorRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientTokenString, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#notProperty" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateNetworkConnectorRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorTags, name: "Tags", traits: {"smithy.api#notProperty" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateNetworkConnectorRequest.type = Types::CreateNetworkConnectorRequest
    CreateNetworkConnectorResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorArn, name: "Arn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateNetworkConnectorResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorName, name: "Name", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateNetworkConnectorResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorId, name: "Id", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    CreateNetworkConnectorResponse.add_member(:version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorArn, name: "VersionArn", traits: {"smithy.api#tags" => ["feature:webfunction"]}))
    CreateNetworkConnectorResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorVersion, name: "Version", traits: {"smithy.api#tags" => ["feature:webfunction"]}))
    CreateNetworkConnectorResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorConfiguration, name: "Configuration", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateNetworkConnectorResponse.add_member(:operator_role, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorRoleArn, name: "OperatorRole", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateNetworkConnectorResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorState, name: "State", traits: {"smithy.api#tags" => ["feature:public"]}))
    CreateNetworkConnectorResponse.type = Types::CreateNetworkConnectorResponse
    DeleteNetworkConnectorRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorIdentifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Id", "smithy.api#tags" => ["feature:public"]}))
    DeleteNetworkConnectorRequest.type = Types::DeleteNetworkConnectorRequest
    DeleteNetworkConnectorResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorArn, name: "Arn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    DeleteNetworkConnectorResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorName, name: "Name", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    DeleteNetworkConnectorResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorId, name: "Id", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    DeleteNetworkConnectorResponse.add_member(:version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorArn, name: "VersionArn", traits: {"smithy.api#tags" => ["feature:webfunction"]}))
    DeleteNetworkConnectorResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorVersion, name: "Version", traits: {"smithy.api#tags" => ["feature:webfunction"]}))
    DeleteNetworkConnectorResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorConfiguration, name: "Configuration", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteNetworkConnectorResponse.add_member(:operator_role, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorRoleArn, name: "OperatorRole", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteNetworkConnectorResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorState, name: "State", traits: {"smithy.api#tags" => ["feature:public"]}))
    DeleteNetworkConnectorResponse.type = Types::DeleteNetworkConnectorResponse
    GetNetworkConnectorRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorIdentifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Id", "smithy.api#tags" => ["feature:public"]}))
    GetNetworkConnectorRequest.type = Types::GetNetworkConnectorRequest
    GetNetworkConnectorResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorArn, name: "Arn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetNetworkConnectorResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorName, name: "Name", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetNetworkConnectorResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorId, name: "Id", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    GetNetworkConnectorResponse.add_member(:version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorArn, name: "VersionArn", traits: {"smithy.api#tags" => ["feature:webfunction"]}))
    GetNetworkConnectorResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorVersion, name: "Version", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetNetworkConnectorResponse.add_member(:latest_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorArn, name: "LatestVersionArn", traits: {"smithy.api#tags" => ["feature:webfunction"]}))
    GetNetworkConnectorResponse.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorVersion, name: "LatestVersion", traits: {"smithy.api#tags" => ["feature:webfunction"]}))
    GetNetworkConnectorResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorConfiguration, name: "Configuration", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetNetworkConnectorResponse.add_member(:operator_role, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorRoleArn, name: "OperatorRole", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetNetworkConnectorResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorState, name: "State", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetNetworkConnectorResponse.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StateReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetNetworkConnectorResponse.add_member(:state_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorStateReasonCode, name: "StateReasonCode", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetNetworkConnectorResponse.add_member(:last_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorLastUpdateStatus, name: "LastUpdateStatus", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetNetworkConnectorResponse.add_member(:last_update_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorLastUpdateStatusReason, name: "LastUpdateStatusReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetNetworkConnectorResponse.add_member(:last_update_status_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorLastUpdateStatusReasonCode, name: "LastUpdateStatusReasonCode", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetNetworkConnectorResponse.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreTimestamp, name: "LastModified", traits: {"smithy.api#tags" => ["feature:public"]}))
    GetNetworkConnectorResponse.type = Types::GetNetworkConnectorResponse
    InvalidParameterValueException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    ListNetworkConnectorVersionsRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorIdentifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Id", "smithy.api#tags" => ["feature:webfunction"]}))
    ListNetworkConnectorVersionsRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorState, name: "State", traits: {"smithy.api#httpQuery" => "State", "smithy.api#tags" => ["feature:webfunction"]}))
    ListNetworkConnectorVersionsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker", "smithy.api#notProperty" => {}, "smithy.api#tags" => ["feature:webfunction"]}))
    ListNetworkConnectorVersionsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxHundredListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems", "smithy.api#notProperty" => {}, "smithy.api#tags" => ["feature:webfunction"]}))
    ListNetworkConnectorVersionsRequest.type = Types::ListNetworkConnectorVersionsRequest
    ListNetworkConnectorVersionsResponse.add_member(:network_connector_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorVersionsList, name: "NetworkConnectorVersions", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:webfunction"]}))
    ListNetworkConnectorVersionsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker", traits: {"smithy.api#notProperty" => {}, "smithy.api#tags" => ["feature:webfunction"]}))
    ListNetworkConnectorVersionsResponse.type = Types::ListNetworkConnectorVersionsResponse
    ListNetworkConnectorsRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorState, name: "State", traits: {"smithy.api#httpQuery" => "State", "smithy.api#tags" => ["feature:public"]}))
    ListNetworkConnectorsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker", "smithy.api#tags" => ["feature:public"]}))
    ListNetworkConnectorsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxHundredListItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems", "smithy.api#tags" => ["feature:public"]}))
    ListNetworkConnectorsRequest.type = Types::ListNetworkConnectorsRequest
    ListNetworkConnectorsResponse.add_member(:network_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorsList, name: "NetworkConnectors", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    ListNetworkConnectorsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextMarker", traits: {"smithy.api#tags" => ["feature:public"]}))
    ListNetworkConnectorsResponse.type = Types::ListNetworkConnectorsResponse
    NetworkConnectorConfiguration.add_member(:vpc_egress_configuration, Types::NetworkConnectorConfiguration::VpcEgressConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorVpcEgressConfiguration, name: "VpcEgressConfiguration", traits: {"smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorConfiguration.add_member(:unknown, Types::NetworkConnectorConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    NetworkConnectorConfiguration.type = Types::NetworkConnectorConfiguration
    NetworkConnectorLastUpdateStatus.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Successful", traits: {"smithy.api#enumValue" => "Successful", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorLastUpdateStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorLastUpdateStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorLastUpdateStatusReasonCode.add_member(:disallowed_by_vpc_encryption_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DisallowedByVpcEncryptionControl", traits: {"smithy.api#enumValue" => "DisallowedByVpcEncryptionControl", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorLastUpdateStatusReasonCode.add_member(:ec2_request_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ec2RequestLimitExceeded", traits: {"smithy.api#enumValue" => "Ec2RequestLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorLastUpdateStatusReasonCode.add_member(:insufficient_role_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InsufficientRolePermissions", traits: {"smithy.api#enumValue" => "InsufficientRolePermissions", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorLastUpdateStatusReasonCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InternalError", traits: {"smithy.api#enumValue" => "InternalError", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorLastUpdateStatusReasonCode.add_member(:invalid_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidSecurityGroup", traits: {"smithy.api#enumValue" => "InvalidSecurityGroup", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorLastUpdateStatusReasonCode.add_member(:invalid_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidSubnet", traits: {"smithy.api#enumValue" => "InvalidSubnet", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorLastUpdateStatusReasonCode.add_member(:security_groups_per_interface_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SecurityGroupsPerInterfaceLimitExceeded", traits: {"smithy.api#enumValue" => "SecurityGroupsPerInterfaceLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorLastUpdateStatusReasonCode.add_member(:subnet_out_of_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SubnetOutOfIPAddresses", traits: {"smithy.api#enumValue" => "SubnetOutOfIPAddresses", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorLimitExceededException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorLimitExceededException.type = Types::NetworkConnectorLimitExceededException
    NetworkConnectorSecurityGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorSecurityGroupId, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorState.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorState.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorStateReasonCode.add_member(:disallowed_by_vpc_encryption_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DisallowedByVpcEncryptionControl", traits: {"smithy.api#enumValue" => "DisallowedByVpcEncryptionControl", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorStateReasonCode.add_member(:ec2_request_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ec2RequestLimitExceeded", traits: {"smithy.api#enumValue" => "Ec2RequestLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorStateReasonCode.add_member(:insufficient_role_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InsufficientRolePermissions", traits: {"smithy.api#enumValue" => "InsufficientRolePermissions", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorStateReasonCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InternalError", traits: {"smithy.api#enumValue" => "InternalError", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorStateReasonCode.add_member(:invalid_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidSecurityGroup", traits: {"smithy.api#enumValue" => "InvalidSecurityGroup", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorStateReasonCode.add_member(:invalid_subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidSubnet", traits: {"smithy.api#enumValue" => "InvalidSubnet", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorStateReasonCode.add_member(:security_groups_per_interface_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SecurityGroupsPerInterfaceLimitExceeded", traits: {"smithy.api#enumValue" => "SecurityGroupsPerInterfaceLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorStateReasonCode.add_member(:subnet_out_of_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SubnetOutOfIPAddresses", traits: {"smithy.api#enumValue" => "SubnetOutOfIPAddresses", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorSubnetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorSubnetId, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorArn, name: "Arn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorName, name: "Name", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorId, name: "Id", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorType, name: "Type", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorState, name: "State", traits: {"smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorSummary.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreTimestamp, name: "LastModified", traits: {"smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorSummary.add_member(:latest_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorArn, name: "LatestVersionArn", traits: {"smithy.api#tags" => ["feature:webfunction"]}))
    NetworkConnectorSummary.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorVersion, name: "LatestVersion", traits: {"smithy.api#tags" => ["feature:webfunction"]}))
    NetworkConnectorSummary.type = Types::NetworkConnectorSummary
    NetworkConnectorTags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorTagKey, name: "key", traits: {"smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorTags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorTagValue, name: "value", traits: {"smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorType.add_member(:vpc_egress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC_EGRESS", traits: {"smithy.api#enumValue" => "VPC_EGRESS", "smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorVersionSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorArn, name: "Arn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:webfunction"]}))
    NetworkConnectorVersionSummary.add_member(:version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorArn, name: "VersionArn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:webfunction"]}))
    NetworkConnectorVersionSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorName, name: "Name", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:webfunction"]}))
    NetworkConnectorVersionSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorId, name: "Id", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:webfunction"]}))
    NetworkConnectorVersionSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorVersion, name: "Version", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:webfunction"]}))
    NetworkConnectorVersionSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorState, name: "State", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:webfunction"]}))
    NetworkConnectorVersionSummary.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StateReason", traits: {"smithy.api#tags" => ["feature:webfunction"]}))
    NetworkConnectorVersionSummary.add_member(:state_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorStateReasonCode, name: "StateReasonCode", traits: {"smithy.api#tags" => ["feature:webfunction"]}))
    NetworkConnectorVersionSummary.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreTimestamp, name: "LastModified", traits: {"smithy.api#tags" => ["feature:webfunction"]}))
    NetworkConnectorVersionSummary.type = Types::NetworkConnectorVersionSummary
    NetworkConnectorVersionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorVersionSummary, name: "member", traits: {"smithy.api#tags" => ["feature:webfunction"]}))
    NetworkConnectorVpcEgressConfiguration.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorSubnetIds, name: "SubnetIds", traits: {"smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorVpcEgressConfiguration.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorSecurityGroupIds, name: "SecurityGroupIds", traits: {"smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorVpcEgressConfiguration.add_member(:network_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkProtocol, name: "NetworkProtocol", traits: {"smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorVpcEgressConfiguration.add_member(:associated_compute_resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedComputeResourceTypesList, name: "AssociatedComputeResourceTypes", traits: {"smithy.api#tags" => ["feature:public"]}))
    NetworkConnectorVpcEgressConfiguration.type = Types::NetworkConnectorVpcEgressConfiguration
    NetworkConnectorsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorSummary, name: "member", traits: {"smithy.api#tags" => ["feature:public"]}))
    NetworkProtocol.add_member(:i_pv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPv4", traits: {"smithy.api#enumValue" => "IPv4", "smithy.api#tags" => ["feature:public"]}))
    NetworkProtocol.add_member(:dual_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DualStack", traits: {"smithy.api#enumValue" => "DualStack", "smithy.api#tags" => ["feature:public"]}))
    ResourceConflictException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    ResourceConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    ResourceConflictException.type = Types::ResourceConflictException
    ResourceNotFoundException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    ServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#tags" => ["feature:public"]}))
    ServiceException.type = Types::ServiceException
    ThrottleReason.add_member(:concurrent_invocation_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConcurrentInvocationLimitExceeded", traits: {"smithy.api#enumValue" => "ConcurrentInvocationLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    ThrottleReason.add_member(:function_invocation_rate_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FunctionInvocationRateLimitExceeded", traits: {"smithy.api#enumValue" => "FunctionInvocationRateLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    ThrottleReason.add_member(:reserved_function_concurrent_invocation_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReservedFunctionConcurrentInvocationLimitExceeded", traits: {"smithy.api#enumValue" => "ReservedFunctionConcurrentInvocationLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    ThrottleReason.add_member(:reserved_function_invocation_rate_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReservedFunctionInvocationRateLimitExceeded", traits: {"smithy.api#enumValue" => "ReservedFunctionInvocationRateLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    ThrottleReason.add_member(:caller_rate_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CallerRateLimitExceeded", traits: {"smithy.api#enumValue" => "CallerRateLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    ThrottleReason.add_member(:concurrent_snapshot_create_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConcurrentSnapshotCreateLimitExceeded", traits: {"smithy.api#enumValue" => "ConcurrentSnapshotCreateLimitExceeded", "smithy.api#tags" => ["feature:public"]}))
    TooManyRequestsException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After", "smithy.api#tags" => ["feature:public"]}))
    TooManyRequestsException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#tags" => ["feature:public"]}))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#tags" => ["feature:public"]}))
    TooManyRequestsException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottleReason, name: "Reason", traits: {"smithy.api#tags" => ["feature:public"]}))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UpdateNetworkConnectorRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorIdentifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Id", "smithy.api#tags" => ["feature:public"]}))
    UpdateNetworkConnectorRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorConfiguration, name: "Configuration", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateNetworkConnectorRequest.add_member(:operator_role, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorRoleArn, name: "OperatorRole", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateNetworkConnectorRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientTokenString, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#notProperty" => {}, "smithy.api#tags" => ["feature:public"]}))
    UpdateNetworkConnectorRequest.type = Types::UpdateNetworkConnectorRequest
    UpdateNetworkConnectorResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorArn, name: "Arn", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    UpdateNetworkConnectorResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorName, name: "Name", traits: {"smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    UpdateNetworkConnectorResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorId, name: "Id", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}, "smithy.api#tags" => ["feature:public"]}))
    UpdateNetworkConnectorResponse.add_member(:version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorArn, name: "VersionArn", traits: {"smithy.api#tags" => ["feature:webfunction"]}))
    UpdateNetworkConnectorResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorVersion, name: "Version", traits: {"smithy.api#tags" => ["feature:webfunction"]}))
    UpdateNetworkConnectorResponse.add_member(:operator_role, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorRoleArn, name: "OperatorRole", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateNetworkConnectorResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorConfiguration, name: "Configuration", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateNetworkConnectorResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorState, name: "State", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateNetworkConnectorResponse.add_member(:last_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorLastUpdateStatus, name: "LastUpdateStatus", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateNetworkConnectorResponse.add_member(:last_update_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConnectorLastUpdateStatusReason, name: "LastUpdateStatusReason", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateNetworkConnectorResponse.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: CoreTimestamp, name: "LastModified", traits: {"smithy.api#tags" => ["feature:public"]}))
    UpdateNetworkConnectorResponse.type = Types::UpdateNetworkConnectorResponse

    LambdaCoreApiService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.lambdacore#LambdaCoreApiService"
      service.name = "LambdaCoreApiService"
      service.version = "2026-04-30"
      service.traits = {"aws.api#service" => {"sdkId" => "Lambda Core", "arnNamespace" => "lambda", "cloudFormationName" => "Lambda", "cloudTrailEventSource" => "lambda.amazonaws.com", "endpointPrefix" => "lambda"}, "aws.auth#sigv4" => {"name" => "lambda"}, "aws.protocols#restJson1" => {}, "smithy.api#tags" => ["feature:public"], "smithy.api#title" => "AWS Lambda Core", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://lambda-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://lambda-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://lambda.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://lambda.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_network_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdacore#CreateNetworkConnector"
        operation.name = "CreateNetworkConnector"
        operation.input = CreateNetworkConnectorRequest
        operation.output = CreateNetworkConnectorResponse
        operation.errors << InvalidParameterValueException
        operation.errors << NetworkConnectorLimitExceededException
        operation.errors << ResourceConflictException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2026-04-04/network-connectors", "code" => 202}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:delete_network_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdacore#DeleteNetworkConnector"
        operation.name = "DeleteNetworkConnector"
        operation.input = DeleteNetworkConnectorRequest
        operation.output = DeleteNetworkConnectorResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2026-04-04/network-connectors/{Identifier}", "code" => 202}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:get_network_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdacore#GetNetworkConnector"
        operation.name = "GetNetworkConnector"
        operation.input = GetNetworkConnectorRequest
        operation.output = GetNetworkConnectorResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2026-04-04/network-connectors/{Identifier}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
      end)
      service.add_operation(:list_network_connector_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdacore#ListNetworkConnectorVersions"
        operation.name = "ListNetworkConnectorVersions"
        operation.input = ListNetworkConnectorVersionsRequest
        operation.output = ListNetworkConnectorVersionsResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2026-04-04/network-connectors/{Identifier}/versions", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:webfunction"]}
        operation[:paginator] = Paginators::ListNetworkConnectorVersions.new
      end)
      service.add_operation(:list_network_connectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdacore#ListNetworkConnectors"
        operation.name = "ListNetworkConnectors"
        operation.input = ListNetworkConnectorsRequest
        operation.output = ListNetworkConnectorsResponse
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2026-04-04/network-connectors", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["feature:public"]}
        operation[:paginator] = Paginators::ListNetworkConnectors.new
      end)
      service.add_operation(:update_network_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lambdacore#UpdateNetworkConnector"
        operation.name = "UpdateNetworkConnector"
        operation.input = UpdateNetworkConnectorRequest
        operation.output = UpdateNetworkConnectorResponse
        operation.errors << InvalidParameterValueException
        operation.errors << NetworkConnectorLimitExceededException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2026-04-04/network-connectors/{Identifier}", "code" => 202}, "smithy.api#tags" => ["feature:public"]}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end

# frozen_string_literal: true

# This is generated code!

module Aws::PcaConnectorScep
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AzureApplicationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcaconnectorscep#AzureApplicationId", name: "AzureApplicationId", traits: {"smithy.api#length" => {"min" => 15, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9]{2,15}-[a-zA-Z0-9]{2,15}-[a-zA-Z0-9]{2,15}-[a-zA-Z0-9]{2,15}-[a-zA-Z0-9]{2,15}$"})
    AzureDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcaconnectorscep#AzureDomain", name: "AzureDomain", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]+$"})
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CertificateAuthorityArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcaconnectorscep#CertificateAuthorityArn", name: "CertificateAuthorityArn", traits: {"smithy.api#length" => {"min" => 5, "max" => 200}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)*:acm-pca:[a-z]+(-[a-z]+)+-[1-9]\\d*:\\d{12}:certificate-authority\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$"})
    Challenge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#Challenge", name: "Challenge")
    ChallengeArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcaconnectorscep#ChallengeArn", name: "ChallengeArn", traits: {"smithy.api#length" => {"min" => 5, "max" => 200}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)*:pca-connector-scep:[a-z]+(-[a-z]+)+-[1-9]\\d*:\\d{12}:connector\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}\\/challenge\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$"})
    ChallengeMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#ChallengeMetadata", name: "ChallengeMetadata")
    ChallengeMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pcaconnectorscep#ChallengeMetadataList", name: "ChallengeMetadataList")
    ChallengeMetadataSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#ChallengeMetadataSummary", name: "ChallengeMetadataSummary")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcaconnectorscep#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Connector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#Connector", name: "Connector")
    ConnectorArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcaconnectorscep#ConnectorArn", name: "ConnectorArn", traits: {"smithy.api#length" => {"min" => 5, "max" => 200}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)*:pca-connector-scep:[a-z]+(-[a-z]+)+-[1-9]\\d*:\\d{12}:connector\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$"})
    ConnectorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pcaconnectorscep#ConnectorList", name: "ConnectorList")
    ConnectorStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pcaconnectorscep#ConnectorStatus", name: "ConnectorStatus")
    ConnectorStatusReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pcaconnectorscep#ConnectorStatusReason", name: "ConnectorStatusReason")
    ConnectorSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#ConnectorSummary", name: "ConnectorSummary")
    ConnectorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pcaconnectorscep#ConnectorType", name: "ConnectorType")
    CreateChallengeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#CreateChallengeRequest", name: "CreateChallengeRequest")
    CreateChallengeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#CreateChallengeResponse", name: "CreateChallengeResponse")
    CreateConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#CreateConnectorRequest", name: "CreateConnectorRequest")
    CreateConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#CreateConnectorResponse", name: "CreateConnectorResponse")
    DeleteChallengeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#DeleteChallengeRequest", name: "DeleteChallengeRequest")
    DeleteConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#DeleteConnectorRequest", name: "DeleteConnectorRequest")
    GetChallengeMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#GetChallengeMetadataRequest", name: "GetChallengeMetadataRequest")
    GetChallengeMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#GetChallengeMetadataResponse", name: "GetChallengeMetadataResponse")
    GetChallengePasswordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#GetChallengePasswordRequest", name: "GetChallengePasswordRequest")
    GetChallengePasswordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#GetChallengePasswordResponse", name: "GetChallengePasswordResponse")
    GetConnectorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#GetConnectorRequest", name: "GetConnectorRequest")
    GetConnectorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#GetConnectorResponse", name: "GetConnectorResponse")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    IntuneConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#IntuneConfiguration", name: "IntuneConfiguration")
    ListChallengeMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#ListChallengeMetadataRequest", name: "ListChallengeMetadataRequest")
    ListChallengeMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#ListChallengeMetadataResponse", name: "ListChallengeMetadataResponse")
    ListConnectorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#ListConnectorsRequest", name: "ListConnectorsRequest")
    ListConnectorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#ListConnectorsResponse", name: "ListConnectorsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pcaconnectorscep#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MobileDeviceManagement = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.pcaconnectorscep#MobileDeviceManagement", name: "MobileDeviceManagement")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcaconnectorscep#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^(?:[A-Za-z0-9_-]{4})*(?:[A-Za-z0-9_-]{2}==|[A-Za-z0-9_-]{3}=)?$"})
    OpenIdConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#OpenIdConfiguration", name: "OpenIdConfiguration")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcaconnectorscep#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pcaconnectorscep#TagKeyList", name: "TagKeyList")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#TagResourceRequest", name: "TagResourceRequest")
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.pcaconnectorscep#Tags", name: "Tags")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#UntagResourceRequest", name: "UntagResourceRequest")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcaconnectorscep#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pcaconnectorscep#ValidationExceptionReason", name: "ValidationExceptionReason")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    BadRequestException.type = Types::BadRequestException
    Challenge.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeArn, location_name: "Arn"))
    Challenge.add_member(:connector_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "ConnectorArn"))
    Challenge.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "CreatedAt"))
    Challenge.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "UpdatedAt"))
    Challenge.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Password"))
    Challenge.type = Types::Challenge
    ChallengeMetadata.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeArn, location_name: "Arn"))
    ChallengeMetadata.add_member(:connector_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "ConnectorArn"))
    ChallengeMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "CreatedAt"))
    ChallengeMetadata.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "UpdatedAt"))
    ChallengeMetadata.type = Types::ChallengeMetadata
    ChallengeMetadataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeMetadataSummary)
    ChallengeMetadataSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeArn, location_name: "Arn"))
    ChallengeMetadataSummary.add_member(:connector_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "ConnectorArn"))
    ChallengeMetadataSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "CreatedAt"))
    ChallengeMetadataSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "UpdatedAt"))
    ChallengeMetadataSummary.type = Types::ChallengeMetadataSummary
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    Connector.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "Arn"))
    Connector.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityArn, location_name: "CertificateAuthorityArn"))
    Connector.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorType, location_name: "Type"))
    Connector.add_member(:mobile_device_management, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceManagement, location_name: "MobileDeviceManagement"))
    Connector.add_member(:open_id_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenIdConfiguration, location_name: "OpenIdConfiguration"))
    Connector.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorStatus, location_name: "Status"))
    Connector.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorStatusReason, location_name: "StatusReason"))
    Connector.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Endpoint"))
    Connector.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "CreatedAt"))
    Connector.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "UpdatedAt"))
    Connector.type = Types::Connector
    ConnectorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorSummary)
    ConnectorStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ConnectorStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ConnectorStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ConnectorStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ConnectorStatusReason.add_member(:internal_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_FAILURE", traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    ConnectorStatusReason.add_member(:privateca_access_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRIVATECA_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "PRIVATECA_ACCESS_DENIED"}))
    ConnectorStatusReason.add_member(:privateca_invalid_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRIVATECA_INVALID_STATE", traits: {"smithy.api#enumValue" => "PRIVATECA_INVALID_STATE"}))
    ConnectorStatusReason.add_member(:privateca_resource_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRIVATECA_RESOURCE_NOT_FOUND", traits: {"smithy.api#enumValue" => "PRIVATECA_RESOURCE_NOT_FOUND"}))
    ConnectorSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "Arn"))
    ConnectorSummary.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityArn, location_name: "CertificateAuthorityArn"))
    ConnectorSummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorType, location_name: "Type"))
    ConnectorSummary.add_member(:mobile_device_management, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceManagement, location_name: "MobileDeviceManagement"))
    ConnectorSummary.add_member(:open_id_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenIdConfiguration, location_name: "OpenIdConfiguration"))
    ConnectorSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorStatus, location_name: "Status"))
    ConnectorSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorStatusReason, location_name: "StatusReason"))
    ConnectorSummary.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Endpoint"))
    ConnectorSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "CreatedAt"))
    ConnectorSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "UpdatedAt"))
    ConnectorSummary.type = Types::ConnectorSummary
    ConnectorType.add_member(:general_purpose, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GENERAL_PURPOSE", traits: {"smithy.api#enumValue" => "GENERAL_PURPOSE"}))
    ConnectorType.add_member(:intune, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTUNE", traits: {"smithy.api#enumValue" => "INTUNE"}))
    CreateChallengeRequest.add_member(:connector_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "ConnectorArn", traits: {"smithy.api#required" => {}}))
    CreateChallengeRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateChallengeRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "Tags", traits: {"aws.cloudformation#cfnMutability" => "write"}))
    CreateChallengeRequest.type = Types::CreateChallengeRequest
    CreateChallengeResponse.add_member(:challenge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Challenge, location_name: "Challenge"))
    CreateChallengeResponse.type = Types::CreateChallengeResponse
    CreateConnectorRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityArn, location_name: "CertificateAuthorityArn", traits: {"smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:mobile_device_management, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceManagement, location_name: "MobileDeviceManagement"))
    CreateConnectorRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateConnectorRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "Tags", traits: {"aws.cloudformation#cfnMutability" => "write"}))
    CreateConnectorRequest.type = Types::CreateConnectorRequest
    CreateConnectorResponse.add_member(:connector_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "ConnectorArn"))
    CreateConnectorResponse.type = Types::CreateConnectorResponse
    DeleteChallengeRequest.add_member(:challenge_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeArn, location_name: "ChallengeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChallengeRequest.type = Types::DeleteChallengeRequest
    DeleteConnectorRequest.add_member(:connector_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "ConnectorArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectorRequest.type = Types::DeleteConnectorRequest
    GetChallengeMetadataRequest.add_member(:challenge_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeArn, location_name: "ChallengeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChallengeMetadataRequest.type = Types::GetChallengeMetadataRequest
    GetChallengeMetadataResponse.add_member(:challenge_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeMetadata, location_name: "ChallengeMetadata", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetChallengeMetadataResponse.type = Types::GetChallengeMetadataResponse
    GetChallengePasswordRequest.add_member(:challenge_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeArn, location_name: "ChallengeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChallengePasswordRequest.type = Types::GetChallengePasswordRequest
    GetChallengePasswordResponse.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Password", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetChallengePasswordResponse.type = Types::GetChallengePasswordResponse
    GetConnectorRequest.add_member(:connector_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "ConnectorArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectorRequest.type = Types::GetConnectorRequest
    GetConnectorResponse.add_member(:connector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Connector, location_name: "Connector", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetConnectorResponse.type = Types::GetConnectorResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    IntuneConfiguration.add_member(:azure_application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AzureApplicationId, location_name: "AzureApplicationId", traits: {"smithy.api#required" => {}}))
    IntuneConfiguration.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AzureDomain, location_name: "Domain", traits: {"smithy.api#required" => {}}))
    IntuneConfiguration.type = Types::IntuneConfiguration
    ListChallengeMetadataRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListChallengeMetadataRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListChallengeMetadataRequest.add_member(:connector_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "ConnectorArn", traits: {"smithy.api#httpQuery" => "ConnectorArn", "smithy.api#required" => {}}))
    ListChallengeMetadataRequest.type = Types::ListChallengeMetadataRequest
    ListChallengeMetadataResponse.add_member(:challenges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeMetadataList, location_name: "Challenges"))
    ListChallengeMetadataResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChallengeMetadataResponse.type = Types::ListChallengeMetadataResponse
    ListConnectorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListConnectorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListConnectorsRequest.type = Types::ListConnectorsRequest
    ListConnectorsResponse.add_member(:connectors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorList, location_name: "Connectors"))
    ListConnectorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConnectorsResponse.type = Types::ListConnectorsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MobileDeviceManagement.add_member(:intune, Types::MobileDeviceManagement::Intune, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntuneConfiguration, location_name: "Intune"))
    MobileDeviceManagement.add_member(:unknown, Types::MobileDeviceManagement::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    MobileDeviceManagement.type = Types::MobileDeviceManagement
    OpenIdConfiguration.add_member(:issuer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Issuer"))
    OpenIdConfiguration.add_member(:subject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Subject"))
    OpenIdConfiguration.add_member(:audience, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Audience"))
    OpenIdConfiguration.type = Types::OpenIdConfiguration
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "QuotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceArn", traits: {"aws.api#data" => "tagging", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    Tags.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ResourceArn", traits: {"aws.api#data" => "tagging", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:ca_cert_validity_too_short, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CA_CERT_VALIDITY_TOO_SHORT", traits: {"smithy.api#enumValue" => "CA_CERT_VALIDITY_TOO_SHORT"}))
    ValidationExceptionReason.add_member(:invalid_ca_usage_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_CA_USAGE_MODE", traits: {"smithy.api#enumValue" => "INVALID_CA_USAGE_MODE"}))
    ValidationExceptionReason.add_member(:invalid_connector_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_CONNECTOR_TYPE", traits: {"smithy.api#enumValue" => "INVALID_CONNECTOR_TYPE"}))
    ValidationExceptionReason.add_member(:invalid_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_STATE", traits: {"smithy.api#enumValue" => "INVALID_STATE"}))
    ValidationExceptionReason.add_member(:no_client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_CLIENT_TOKEN", traits: {"smithy.api#enumValue" => "NO_CLIENT_TOKEN"}))
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))

    PcaConnectorScep = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.pcaconnectorscep#PcaConnectorScep"
      service.name = "PcaConnectorScep"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"arnNamespace" => "pca-connector-scep", "cloudFormationName" => "PCAConnectorSCEP", "sdkId" => "Pca Connector Scep", "serviceName" => "pca-connector-scep", "cloudTrailEventSource" => "pca-connector-scep.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "pca-connector-scep"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "Private CA Connector for SCEP"}
      service.add_operation(:create_challenge, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#CreateChallenge"
        operation.name = "CreateChallenge"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChallengeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChallengeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/challenges"}}
      end)
      service.add_operation(:create_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#CreateConnector"
        operation.name = "CreateConnector"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/connectors"}}
      end)
      service.add_operation(:delete_challenge, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#DeleteChallenge"
        operation.name = "DeleteChallenge"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChallengeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/challenges/{ChallengeArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#DeleteConnector"
        operation.name = "DeleteConnector"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/connectors/{ConnectorArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_challenge_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#GetChallengeMetadata"
        operation.name = "GetChallengeMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChallengeMetadataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChallengeMetadataResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/challengeMetadata/{ChallengeArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_challenge_password, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#GetChallengePassword"
        operation.name = "GetChallengePassword"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChallengePasswordRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetChallengePasswordResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/challengePasswords/{ChallengeArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_connector, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#GetConnector"
        operation.name = "GetConnector"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/connectors/{ConnectorArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_challenge_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#ListChallengeMetadata"
        operation.name = "ListChallengeMetadata"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListChallengeMetadataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListChallengeMetadataResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/challengeMetadata"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListChallengeMetadata.new
      end)
      service.add_operation(:list_connectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#ListConnectors"
        operation.name = "ListConnectors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectorsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectorsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/connectors"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConnectors.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/tags/{ResourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "POST", "uri" => "/tags/{ResourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/tags/{ResourceArn}"}, "smithy.api#idempotent" => {}}
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

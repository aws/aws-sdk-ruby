# frozen_string_literal: true

# This is generated code!

module Aws::PcaConnectorScep
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AzureApplicationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcaconnectorscep#AzureApplicationId', name: 'AzureApplicationId', traits: {"smithy.api#length" => {"min" => 15, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9]{2,15}-[a-zA-Z0-9]{2,15}-[a-zA-Z0-9]{2,15}-[a-zA-Z0-9]{2,15}-[a-zA-Z0-9]{2,15}$"})
    AzureDomain = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcaconnectorscep#AzureDomain', name: 'AzureDomain', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]+$"})
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CertificateAuthorityArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcaconnectorscep#CertificateAuthorityArn', name: 'CertificateAuthorityArn', traits: {"smithy.api#length" => {"min" => 5, "max" => 200}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)*:acm-pca:[a-z]+(-[a-z]+)+-[1-9]\\d*:\\d{12}:certificate-authority\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$"})
    Challenge = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#Challenge', name: 'Challenge')
    ChallengeArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcaconnectorscep#ChallengeArn', name: 'ChallengeArn', traits: {"smithy.api#length" => {"min" => 5, "max" => 200}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)*:pca-connector-scep:[a-z]+(-[a-z]+)+-[1-9]\\d*:\\d{12}:connector\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}\\/challenge\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$"})
    ChallengeMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#ChallengeMetadata', name: 'ChallengeMetadata')
    ChallengeMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcaconnectorscep#ChallengeMetadataList', name: 'ChallengeMetadataList')
    ChallengeMetadataSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#ChallengeMetadataSummary', name: 'ChallengeMetadataSummary')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcaconnectorscep#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]+$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Connector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#Connector', name: 'Connector')
    ConnectorArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcaconnectorscep#ConnectorArn', name: 'ConnectorArn', traits: {"smithy.api#length" => {"min" => 5, "max" => 200}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)*:pca-connector-scep:[a-z]+(-[a-z]+)+-[1-9]\\d*:\\d{12}:connector\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$"})
    ConnectorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcaconnectorscep#ConnectorList', name: 'ConnectorList')
    ConnectorStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorscep#ConnectorStatus', name: 'ConnectorStatus')
    ConnectorStatusReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorscep#ConnectorStatusReason', name: 'ConnectorStatusReason')
    ConnectorSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#ConnectorSummary', name: 'ConnectorSummary')
    ConnectorType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorscep#ConnectorType', name: 'ConnectorType')
    CreateChallengeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#CreateChallengeRequest', name: 'CreateChallengeRequest')
    CreateChallengeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#CreateChallengeResponse', name: 'CreateChallengeResponse')
    CreateConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#CreateConnectorRequest', name: 'CreateConnectorRequest')
    CreateConnectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#CreateConnectorResponse', name: 'CreateConnectorResponse')
    DeleteChallengeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#DeleteChallengeRequest', name: 'DeleteChallengeRequest')
    DeleteConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#DeleteConnectorRequest', name: 'DeleteConnectorRequest')
    GetChallengeMetadataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#GetChallengeMetadataRequest', name: 'GetChallengeMetadataRequest')
    GetChallengeMetadataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#GetChallengeMetadataResponse', name: 'GetChallengeMetadataResponse')
    GetChallengePasswordRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#GetChallengePasswordRequest', name: 'GetChallengePasswordRequest')
    GetChallengePasswordResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#GetChallengePasswordResponse', name: 'GetChallengePasswordResponse')
    GetConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#GetConnectorRequest', name: 'GetConnectorRequest')
    GetConnectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#GetConnectorResponse', name: 'GetConnectorResponse')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    IntuneConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#IntuneConfiguration', name: 'IntuneConfiguration')
    ListChallengeMetadataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#ListChallengeMetadataRequest', name: 'ListChallengeMetadataRequest')
    ListChallengeMetadataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#ListChallengeMetadataResponse', name: 'ListChallengeMetadataResponse')
    ListConnectorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#ListConnectorsRequest', name: 'ListConnectorsRequest')
    ListConnectorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#ListConnectorsResponse', name: 'ListConnectorsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.pcaconnectorscep#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MobileDeviceManagement = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.pcaconnectorscep#MobileDeviceManagement', name: 'MobileDeviceManagement')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcaconnectorscep#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^(?:[A-Za-z0-9_-]{4})*(?:[A-Za-z0-9_-]{2}==|[A-Za-z0-9_-]{3}=)?$"})
    OpenIdConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#OpenIdConfiguration', name: 'OpenIdConfiguration')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SensitiveString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcaconnectorscep#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcaconnectorscep#TagKeyList', name: 'TagKeyList')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#TagResourceRequest', name: 'TagResourceRequest')
    Tags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pcaconnectorscep#Tags', name: 'Tags')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#UntagResourceRequest', name: 'UntagResourceRequest')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorscep#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorscep#ValidationExceptionReason', name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    BadRequestException.type = Types::BadRequestException
    Challenge.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the challenge.</p>"}))
    Challenge.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'ConnectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connector.</p>"}))
    Challenge.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the challenge was created.</p>"}))
    Challenge.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the challenge was updated.</p>"}))
    Challenge.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>The SCEP challenge password, in UUID format.</p>"}))
    Challenge.type = Types::Challenge
    ChallengeMetadata.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the challenge.</p>"}))
    ChallengeMetadata.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'ConnectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connector.</p>"}))
    ChallengeMetadata.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the connector was created.</p>"}))
    ChallengeMetadata.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the connector was updated.</p>"}))
    ChallengeMetadata.type = Types::ChallengeMetadata
    ChallengeMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeMetadataSummary)
    ChallengeMetadataSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the challenge.</p>"}))
    ChallengeMetadataSummary.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'ConnectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connector.</p>"}))
    ChallengeMetadataSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the challenge was created.</p>"}))
    ChallengeMetadataSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the challenge was updated.</p>"}))
    ChallengeMetadataSummary.type = Types::ChallengeMetadataSummary
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Web Services resource.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type, which can be either <code>Connector</code> or <code>Challenge</code>.</p>", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    Connector.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connector.</p>"}))
    Connector.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityArn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the certificate authority associated with the connector.</p>"}))
    Connector.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The connector type.</p>"}))
    Connector.add_member(:mobile_device_management, Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceManagement, location_name: 'MobileDeviceManagement', traits: {"smithy.api#documentation" => "<p>Contains settings relevant to the mobile device management system that you chose for the connector. If you didn't configure <code>MobileDeviceManagement</code>, then the connector is for general-purpose use and this object is empty.</p>"}))
    Connector.add_member(:open_id_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenIdConfiguration, location_name: 'OpenIdConfiguration', traits: {"smithy.api#documentation" => "<p>Contains OpenID Connect (OIDC) parameters for use with Connector for SCEP for Microsoft Intune. For more information about using Connector for SCEP for Microsoft Intune, see <a href=\"https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep-intune.html\">Using Connector for SCEP for Microsoft Intune</a>.</p>"}))
    Connector.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The connector's status.</p>"}))
    Connector.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorStatusReason, location_name: 'StatusReason', traits: {"smithy.api#documentation" => "<p>Information about why connector creation failed, if status is <code>FAILED</code>.</p>"}))
    Connector.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Endpoint', traits: {"smithy.api#documentation" => "<p>The connector's HTTPS public SCEP URL.</p>"}))
    Connector.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the connector was created.</p>"}))
    Connector.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the connector was updated.</p>"}))
    Connector.type = Types::Connector
    ConnectorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorSummary)
    ConnectorStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ConnectorStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ConnectorStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ConnectorStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ConnectorStatusReason.add_member(:internal_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_FAILURE', traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    ConnectorStatusReason.add_member(:privateca_access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATECA_ACCESS_DENIED', traits: {"smithy.api#enumValue" => "PRIVATECA_ACCESS_DENIED"}))
    ConnectorStatusReason.add_member(:privateca_invalid_state, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATECA_INVALID_STATE', traits: {"smithy.api#enumValue" => "PRIVATECA_INVALID_STATE"}))
    ConnectorStatusReason.add_member(:privateca_resource_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATECA_RESOURCE_NOT_FOUND', traits: {"smithy.api#enumValue" => "PRIVATECA_RESOURCE_NOT_FOUND"}))
    ConnectorSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connector.</p>"}))
    ConnectorSummary.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityArn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connector's associated certificate authority.</p>"}))
    ConnectorSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The connector type.</p>"}))
    ConnectorSummary.add_member(:mobile_device_management, Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceManagement, location_name: 'MobileDeviceManagement', traits: {"smithy.api#documentation" => "<p>Contains settings relevant to the mobile device management system that you chose for the connector. If you didn't configure <code>MobileDeviceManagement</code>, then the connector is for general-purpose use and this object is empty.</p>"}))
    ConnectorSummary.add_member(:open_id_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenIdConfiguration, location_name: 'OpenIdConfiguration', traits: {"smithy.api#documentation" => "<p>Contains OpenID Connect (OIDC) parameters for use with Microsoft Intune.</p>"}))
    ConnectorSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The connector's status. Status can be creating, active, deleting, or failed.</p>"}))
    ConnectorSummary.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorStatusReason, location_name: 'StatusReason', traits: {"smithy.api#documentation" => "<p>Information about why connector creation failed, if status is <code>FAILED</code>.</p>"}))
    ConnectorSummary.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Endpoint', traits: {"smithy.api#documentation" => "<p>The connector's HTTPS public SCEP URL.</p>"}))
    ConnectorSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the challenge was created.</p>"}))
    ConnectorSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the challenge was updated.</p>"}))
    ConnectorSummary.type = Types::ConnectorSummary
    ConnectorType.add_member(:general_purpose, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENERAL_PURPOSE', traits: {"smithy.api#enumValue" => "GENERAL_PURPOSE"}))
    ConnectorType.add_member(:intune, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTUNE', traits: {"smithy.api#enumValue" => "INTUNE"}))
    CreateChallengeRequest.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'ConnectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connector that you want to create a challenge for.</p>", "smithy.api#required" => {}}))
    CreateChallengeRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Custom string that can be used to distinguish between calls to the <a href=\"https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_CreateChallenge.html\">CreateChallenge</a> action. Client tokens for <code>CreateChallenge</code> time out after five minutes. Therefore, if you call <code>CreateChallenge</code> multiple times with the same client token within five minutes, Connector for SCEP recognizes that you are requesting only one challenge and will only respond with one. If you change the client token for each call, Connector for SCEP recognizes that you are requesting multiple challenge passwords.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateChallengeRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"aws.cloudformation#cfnMutability" => "write", "smithy.api#documentation" => "<p>The key-value pairs to associate with the resource.</p>"}))
    CreateChallengeRequest.type = Types::CreateChallengeRequest
    CreateChallengeResponse.add_member(:challenge, Smithy::Schema::Shapes::ShapeRef.new(shape: Challenge, location_name: 'Challenge', traits: {"smithy.api#documentation" => "<p>Returns the challenge details for the specified connector.</p>"}))
    CreateChallengeResponse.type = Types::CreateChallengeResponse
    CreateConnectorRequest.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityArn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Web Services Private Certificate Authority certificate authority to use with this connector. Due to security vulnerabilities present in the SCEP protocol, we recommend using a private CA that's dedicated for use with the connector.</p>\n         <p>To retrieve the private CAs associated with your account, you can call <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html\">ListCertificateAuthorities</a> using the Amazon Web Services Private CA API.</p>", "smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:mobile_device_management, Smithy::Schema::Shapes::ShapeRef.new(shape: MobileDeviceManagement, location_name: 'MobileDeviceManagement', traits: {"smithy.api#documentation" => "<p>If you don't supply a value, by default Connector for SCEP creates a connector for general-purpose use. A general-purpose connector is designed to work with clients or endpoints that support the SCEP protocol, except Connector for SCEP for Microsoft Intune. With connectors for general-purpose use, you manage SCEP challenge passwords using Connector for SCEP. For information about considerations and limitations with using Connector for SCEP, see <a href=\"https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlc4scep-considerations-limitations.html\">Considerations and Limitations</a>.</p>\n         <p>If you provide an <code>IntuneConfiguration</code>, Connector for SCEP creates a connector for use with Microsoft Intune, and you manage the challenge passwords using Microsoft Intune. For more information, see <a href=\"https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep-intune.html\">Using Connector for SCEP for Microsoft Intune</a>.</p>"}))
    CreateConnectorRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Custom string that can be used to distinguish between calls to the <a href=\"https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_CreateChallenge.html\">CreateChallenge</a> action. Client tokens for <code>CreateChallenge</code> time out after five minutes. Therefore, if you call <code>CreateChallenge</code> multiple times with the same client token within five minutes, Connector for SCEP recognizes that you are requesting only one challenge and will only respond with one. If you change the client token for each call, Connector for SCEP recognizes that you are requesting multiple challenge passwords.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateConnectorRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"aws.cloudformation#cfnMutability" => "write", "smithy.api#documentation" => "<p>The key-value pairs to associate with the resource.</p>"}))
    CreateConnectorRequest.type = Types::CreateConnectorRequest
    CreateConnectorResponse.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'ConnectorArn', traits: {"smithy.api#documentation" => "<p>Returns the Amazon Resource Name (ARN) of the connector.</p>"}))
    CreateConnectorResponse.type = Types::CreateConnectorResponse
    DeleteChallengeRequest.add_member(:challenge_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeArn, location_name: 'ChallengeArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the challenge password to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChallengeRequest.type = Types::DeleteChallengeRequest
    DeleteConnectorRequest.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'ConnectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connector to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectorRequest.type = Types::DeleteConnectorRequest
    GetChallengeMetadataRequest.add_member(:challenge_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeArn, location_name: 'ChallengeArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the challenge.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChallengeMetadataRequest.type = Types::GetChallengeMetadataRequest
    GetChallengeMetadataResponse.add_member(:challenge_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeMetadata, location_name: 'ChallengeMetadata', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The metadata for the challenge.</p>"}))
    GetChallengeMetadataResponse.type = Types::GetChallengeMetadataResponse
    GetChallengePasswordRequest.add_member(:challenge_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeArn, location_name: 'ChallengeArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the challenge.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChallengePasswordRequest.type = Types::GetChallengePasswordRequest
    GetChallengePasswordResponse.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'Password', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The SCEP challenge password.</p>"}))
    GetChallengePasswordResponse.type = Types::GetChallengePasswordResponse
    GetConnectorRequest.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'ConnectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connector.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectorRequest.type = Types::GetConnectorRequest
    GetConnectorResponse.add_member(:connector, Smithy::Schema::Shapes::ShapeRef.new(shape: Connector, location_name: 'Connector', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The properties of the connector.</p>"}))
    GetConnectorResponse.type = Types::GetConnectorResponse
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    IntuneConfiguration.add_member(:azure_application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AzureApplicationId, location_name: 'AzureApplicationId', traits: {"smithy.api#documentation" => "<p>The directory (tenant) ID from your Microsoft Entra ID app registration.</p>", "smithy.api#required" => {}}))
    IntuneConfiguration.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: AzureDomain, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The primary domain from your Microsoft Entra ID app registration.</p>", "smithy.api#required" => {}}))
    IntuneConfiguration.type = Types::IntuneConfiguration
    ListChallengeMetadataRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of objects that you want Connector for SCEP to return for this request. If more\n  objects are available, in the response, Connector for SCEP provides a\n <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListChallengeMetadataRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available\n for retrieval exceeds the maximum you requested, Connector for SCEP returns a <code>NextToken</code>\n value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListChallengeMetadataRequest.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'ConnectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connector.</p>", "smithy.api#httpQuery" => "ConnectorArn", "smithy.api#required" => {}}))
    ListChallengeMetadataRequest.type = Types::ListChallengeMetadataRequest
    ListChallengeMetadataResponse.add_member(:challenges, Smithy::Schema::Shapes::ShapeRef.new(shape: ChallengeMetadataList, location_name: 'Challenges', traits: {"smithy.api#documentation" => "<p>The challenge metadata for the challenges belonging to your Amazon Web Services account.</p>"}))
    ListChallengeMetadataResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available\n for retrieval exceeds the maximum you requested, Connector for SCEP returns a <code>NextToken</code>\n value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>"}))
    ListChallengeMetadataResponse.type = Types::ListChallengeMetadataResponse
    ListConnectorsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of objects that you want Connector for SCEP to return for this request. If more\n  objects are available, in the response, Connector for SCEP provides a\n <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListConnectorsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available\n for retrieval exceeds the maximum you requested, Connector for SCEP returns a <code>NextToken</code>\n value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListConnectorsRequest.type = Types::ListConnectorsRequest
    ListConnectorsResponse.add_member(:connectors, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorList, location_name: 'Connectors', traits: {"smithy.api#documentation" => "<p>The connectors belonging to your Amazon Web Services account.</p>"}))
    ListConnectorsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available\n for retrieval exceeds the maximum you requested, Connector for SCEP returns a <code>NextToken</code>\n value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>"}))
    ListConnectorsResponse.type = Types::ListConnectorsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The key-value pairs to associate with the resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MobileDeviceManagement.add_member(:intune, Types::MobileDeviceManagement::Intune, Smithy::Schema::Shapes::ShapeRef.new(shape: IntuneConfiguration, location_name: 'Intune', traits: {"smithy.api#documentation" => "<p>Configuration settings for use with Microsoft Intune. For information about using Connector for SCEP for Microsoft Intune, see <a href=\"https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep-intune.html\">Using Connector for SCEP for Microsoft Intune</a>.</p>"}))
    MobileDeviceManagement.add_member(:unknown, Types::MobileDeviceManagement::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    MobileDeviceManagement.type = Types::MobileDeviceManagement
    OpenIdConfiguration.add_member(:issuer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Issuer', traits: {"smithy.api#documentation" => "<p>The issuer value to copy into your Microsoft Entra app registration's OIDC.</p>"}))
    OpenIdConfiguration.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Subject', traits: {"smithy.api#documentation" => "<p>The subject value to copy into your Microsoft Entra app registration's OIDC.</p>"}))
    OpenIdConfiguration.add_member(:audience, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Audience', traits: {"smithy.api#documentation" => "<p>The audience value to copy into your Microsoft Entra app registration's OIDC.</p>"}))
    OpenIdConfiguration.type = Types::OpenIdConfiguration
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Web Services resource.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type, which can be either <code>Connector</code> or <code>Challenge</code>.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type, which can be either <code>Connector</code> or <code>Challenge</code>.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>Identifies the originating service.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "<p>The quota identifier.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceArn', traits: {"aws.api#data" => "tagging", "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The key-value pairs to associate with the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    Tags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceArn', traits: {"aws.api#data" => "tagging", "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>Specifies a list of tag keys that you want to remove from the specified resources.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason for the validation error, if available. The service doesn't return a reason for every validation exception.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:ca_cert_validity_too_short, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CA_CERT_VALIDITY_TOO_SHORT', traits: {"smithy.api#enumValue" => "CA_CERT_VALIDITY_TOO_SHORT"}))
    ValidationExceptionReason.add_member(:invalid_ca_usage_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_CA_USAGE_MODE', traits: {"smithy.api#enumValue" => "INVALID_CA_USAGE_MODE"}))
    ValidationExceptionReason.add_member(:invalid_connector_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_CONNECTOR_TYPE', traits: {"smithy.api#enumValue" => "INVALID_CONNECTOR_TYPE"}))
    ValidationExceptionReason.add_member(:invalid_state, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_STATE', traits: {"smithy.api#enumValue" => "INVALID_STATE"}))
    ValidationExceptionReason.add_member(:no_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_CLIENT_TOKEN', traits: {"smithy.api#enumValue" => "NO_CLIENT_TOKEN"}))
    ValidationExceptionReason.add_member(:unknown_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))

    PcaConnectorScep = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.pcaconnectorscep#PcaConnectorScep"
      service.name = "PcaConnectorScep"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"arnNamespace" => "pca-connector-scep", "cloudFormationName" => "PCAConnectorSCEP", "sdkId" => "Pca Connector Scep", "serviceName" => "pca-connector-scep", "cloudTrailEventSource" => "pca-connector-scep.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "pca-connector-scep"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "Private CA Connector for SCEP"}
      service.add_operation(:create_challenge, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#CreateChallenge"
        operation.name = "CreateChallenge"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChallengeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChallengeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/challenges"}}
      end)
      service.add_operation(:create_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#CreateConnector"
        operation.name = "CreateConnector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/connectors"}}
      end)
      service.add_operation(:delete_challenge, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#DeleteChallenge"
        operation.name = "DeleteChallenge"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChallengeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/challenges/{ChallengeArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#DeleteConnector"
        operation.name = "DeleteConnector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/connectors/{ConnectorArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_challenge_metadata, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#GetChallengeMetadata"
        operation.name = "GetChallengeMetadata"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChallengeMetadataRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChallengeMetadataResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/challengeMetadata/{ChallengeArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_challenge_password, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#GetChallengePassword"
        operation.name = "GetChallengePassword"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChallengePasswordRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChallengePasswordResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/challengePasswords/{ChallengeArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#GetConnector"
        operation.name = "GetConnector"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/connectors/{ConnectorArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_challenge_metadata, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#ListChallengeMetadata"
        operation.name = "ListChallengeMetadata"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChallengeMetadataRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChallengeMetadataResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/challengeMetadata"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListChallengeMetadata.new
      end)
      service.add_operation(:list_connectors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#ListConnectors"
        operation.name = "ListConnectors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/connectors"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConnectors.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/tags/{ResourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "POST", "uri" => "/tags/{ResourceArn}"}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorscep#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/tags/{ResourceArn}"}, "smithy.api#idempotent" => {}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end

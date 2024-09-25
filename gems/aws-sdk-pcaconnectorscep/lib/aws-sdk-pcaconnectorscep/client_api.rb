# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PcaConnectorScep
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AzureApplicationId = Shapes::StringShape.new(name: 'AzureApplicationId')
    AzureDomain = Shapes::StringShape.new(name: 'AzureDomain')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    CertificateAuthorityArn = Shapes::StringShape.new(name: 'CertificateAuthorityArn')
    Challenge = Shapes::StructureShape.new(name: 'Challenge')
    ChallengeArn = Shapes::StringShape.new(name: 'ChallengeArn')
    ChallengeMetadata = Shapes::StructureShape.new(name: 'ChallengeMetadata')
    ChallengeMetadataList = Shapes::ListShape.new(name: 'ChallengeMetadataList')
    ChallengeMetadataSummary = Shapes::StructureShape.new(name: 'ChallengeMetadataSummary')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Connector = Shapes::StructureShape.new(name: 'Connector')
    ConnectorArn = Shapes::StringShape.new(name: 'ConnectorArn')
    ConnectorList = Shapes::ListShape.new(name: 'ConnectorList')
    ConnectorStatus = Shapes::StringShape.new(name: 'ConnectorStatus')
    ConnectorStatusReason = Shapes::StringShape.new(name: 'ConnectorStatusReason')
    ConnectorSummary = Shapes::StructureShape.new(name: 'ConnectorSummary')
    ConnectorType = Shapes::StringShape.new(name: 'ConnectorType')
    CreateChallengeRequest = Shapes::StructureShape.new(name: 'CreateChallengeRequest')
    CreateChallengeResponse = Shapes::StructureShape.new(name: 'CreateChallengeResponse')
    CreateConnectorRequest = Shapes::StructureShape.new(name: 'CreateConnectorRequest')
    CreateConnectorResponse = Shapes::StructureShape.new(name: 'CreateConnectorResponse')
    DeleteChallengeRequest = Shapes::StructureShape.new(name: 'DeleteChallengeRequest')
    DeleteConnectorRequest = Shapes::StructureShape.new(name: 'DeleteConnectorRequest')
    GetChallengeMetadataRequest = Shapes::StructureShape.new(name: 'GetChallengeMetadataRequest')
    GetChallengeMetadataResponse = Shapes::StructureShape.new(name: 'GetChallengeMetadataResponse')
    GetChallengePasswordRequest = Shapes::StructureShape.new(name: 'GetChallengePasswordRequest')
    GetChallengePasswordResponse = Shapes::StructureShape.new(name: 'GetChallengePasswordResponse')
    GetConnectorRequest = Shapes::StructureShape.new(name: 'GetConnectorRequest')
    GetConnectorResponse = Shapes::StructureShape.new(name: 'GetConnectorResponse')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IntuneConfiguration = Shapes::StructureShape.new(name: 'IntuneConfiguration')
    ListChallengeMetadataRequest = Shapes::StructureShape.new(name: 'ListChallengeMetadataRequest')
    ListChallengeMetadataResponse = Shapes::StructureShape.new(name: 'ListChallengeMetadataResponse')
    ListConnectorsRequest = Shapes::StructureShape.new(name: 'ListConnectorsRequest')
    ListConnectorsResponse = Shapes::StructureShape.new(name: 'ListConnectorsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MobileDeviceManagement = Shapes::UnionShape.new(name: 'MobileDeviceManagement')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OpenIdConfiguration = Shapes::StructureShape.new(name: 'OpenIdConfiguration')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    Tags = Shapes::MapShape.new(name: 'Tags')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    BadRequestException.struct_class = Types::BadRequestException

    Challenge.add_member(:arn, Shapes::ShapeRef.new(shape: ChallengeArn, location_name: "Arn"))
    Challenge.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "ConnectorArn"))
    Challenge.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    Challenge.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    Challenge.add_member(:password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Password"))
    Challenge.struct_class = Types::Challenge

    ChallengeMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: ChallengeArn, location_name: "Arn"))
    ChallengeMetadata.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "ConnectorArn"))
    ChallengeMetadata.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    ChallengeMetadata.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    ChallengeMetadata.struct_class = Types::ChallengeMetadata

    ChallengeMetadataList.member = Shapes::ShapeRef.new(shape: ChallengeMetadataSummary)

    ChallengeMetadataSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ChallengeArn, location_name: "Arn"))
    ChallengeMetadataSummary.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "ConnectorArn"))
    ChallengeMetadataSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    ChallengeMetadataSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    ChallengeMetadataSummary.struct_class = Types::ChallengeMetadataSummary

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ConflictException.struct_class = Types::ConflictException

    Connector.add_member(:arn, Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "Arn"))
    Connector.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: CertificateAuthorityArn, location_name: "CertificateAuthorityArn"))
    Connector.add_member(:type, Shapes::ShapeRef.new(shape: ConnectorType, location_name: "Type"))
    Connector.add_member(:mobile_device_management, Shapes::ShapeRef.new(shape: MobileDeviceManagement, location_name: "MobileDeviceManagement"))
    Connector.add_member(:open_id_configuration, Shapes::ShapeRef.new(shape: OpenIdConfiguration, location_name: "OpenIdConfiguration"))
    Connector.add_member(:status, Shapes::ShapeRef.new(shape: ConnectorStatus, location_name: "Status"))
    Connector.add_member(:status_reason, Shapes::ShapeRef.new(shape: ConnectorStatusReason, location_name: "StatusReason"))
    Connector.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "Endpoint"))
    Connector.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    Connector.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    Connector.struct_class = Types::Connector

    ConnectorList.member = Shapes::ShapeRef.new(shape: ConnectorSummary)

    ConnectorSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "Arn"))
    ConnectorSummary.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: CertificateAuthorityArn, location_name: "CertificateAuthorityArn"))
    ConnectorSummary.add_member(:type, Shapes::ShapeRef.new(shape: ConnectorType, location_name: "Type"))
    ConnectorSummary.add_member(:mobile_device_management, Shapes::ShapeRef.new(shape: MobileDeviceManagement, location_name: "MobileDeviceManagement"))
    ConnectorSummary.add_member(:open_id_configuration, Shapes::ShapeRef.new(shape: OpenIdConfiguration, location_name: "OpenIdConfiguration"))
    ConnectorSummary.add_member(:status, Shapes::ShapeRef.new(shape: ConnectorStatus, location_name: "Status"))
    ConnectorSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: ConnectorStatusReason, location_name: "StatusReason"))
    ConnectorSummary.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "Endpoint"))
    ConnectorSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    ConnectorSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    ConnectorSummary.struct_class = Types::ConnectorSummary

    CreateChallengeRequest.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ConnectorArn, required: true, location_name: "ConnectorArn"))
    CreateChallengeRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateChallengeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateChallengeRequest.struct_class = Types::CreateChallengeRequest

    CreateChallengeResponse.add_member(:challenge, Shapes::ShapeRef.new(shape: Challenge, location_name: "Challenge"))
    CreateChallengeResponse.struct_class = Types::CreateChallengeResponse

    CreateConnectorRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: CertificateAuthorityArn, required: true, location_name: "CertificateAuthorityArn"))
    CreateConnectorRequest.add_member(:mobile_device_management, Shapes::ShapeRef.new(shape: MobileDeviceManagement, location_name: "MobileDeviceManagement"))
    CreateConnectorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateConnectorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateConnectorRequest.struct_class = Types::CreateConnectorRequest

    CreateConnectorResponse.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "ConnectorArn"))
    CreateConnectorResponse.struct_class = Types::CreateConnectorResponse

    DeleteChallengeRequest.add_member(:challenge_arn, Shapes::ShapeRef.new(shape: ChallengeArn, required: true, location: "uri", location_name: "ChallengeArn"))
    DeleteChallengeRequest.struct_class = Types::DeleteChallengeRequest

    DeleteConnectorRequest.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ConnectorArn, required: true, location: "uri", location_name: "ConnectorArn"))
    DeleteConnectorRequest.struct_class = Types::DeleteConnectorRequest

    GetChallengeMetadataRequest.add_member(:challenge_arn, Shapes::ShapeRef.new(shape: ChallengeArn, required: true, location: "uri", location_name: "ChallengeArn"))
    GetChallengeMetadataRequest.struct_class = Types::GetChallengeMetadataRequest

    GetChallengeMetadataResponse.add_member(:challenge_metadata, Shapes::ShapeRef.new(shape: ChallengeMetadata, location_name: "ChallengeMetadata"))
    GetChallengeMetadataResponse.struct_class = Types::GetChallengeMetadataResponse

    GetChallengePasswordRequest.add_member(:challenge_arn, Shapes::ShapeRef.new(shape: ChallengeArn, required: true, location: "uri", location_name: "ChallengeArn"))
    GetChallengePasswordRequest.struct_class = Types::GetChallengePasswordRequest

    GetChallengePasswordResponse.add_member(:password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Password"))
    GetChallengePasswordResponse.struct_class = Types::GetChallengePasswordResponse

    GetConnectorRequest.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ConnectorArn, required: true, location: "uri", location_name: "ConnectorArn"))
    GetConnectorRequest.struct_class = Types::GetConnectorRequest

    GetConnectorResponse.add_member(:connector, Shapes::ShapeRef.new(shape: Connector, location_name: "Connector"))
    GetConnectorResponse.struct_class = Types::GetConnectorResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    IntuneConfiguration.add_member(:azure_application_id, Shapes::ShapeRef.new(shape: AzureApplicationId, required: true, location_name: "AzureApplicationId"))
    IntuneConfiguration.add_member(:domain, Shapes::ShapeRef.new(shape: AzureDomain, required: true, location_name: "Domain"))
    IntuneConfiguration.struct_class = Types::IntuneConfiguration

    ListChallengeMetadataRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListChallengeMetadataRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListChallengeMetadataRequest.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ConnectorArn, required: true, location: "querystring", location_name: "ConnectorArn"))
    ListChallengeMetadataRequest.struct_class = Types::ListChallengeMetadataRequest

    ListChallengeMetadataResponse.add_member(:challenges, Shapes::ShapeRef.new(shape: ChallengeMetadataList, location_name: "Challenges"))
    ListChallengeMetadataResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChallengeMetadataResponse.struct_class = Types::ListChallengeMetadataResponse

    ListConnectorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListConnectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListConnectorsRequest.struct_class = Types::ListConnectorsRequest

    ListConnectorsResponse.add_member(:connectors, Shapes::ShapeRef.new(shape: ConnectorList, location_name: "Connectors"))
    ListConnectorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConnectorsResponse.struct_class = Types::ListConnectorsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MobileDeviceManagement.add_member(:intune, Shapes::ShapeRef.new(shape: IntuneConfiguration, location_name: "Intune"))
    MobileDeviceManagement.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MobileDeviceManagement.add_member_subclass(:intune, Types::MobileDeviceManagement::Intune)
    MobileDeviceManagement.add_member_subclass(:unknown, Types::MobileDeviceManagement::Unknown)
    MobileDeviceManagement.struct_class = Types::MobileDeviceManagement

    OpenIdConfiguration.add_member(:issuer, Shapes::ShapeRef.new(shape: String, location_name: "Issuer"))
    OpenIdConfiguration.add_member(:subject, Shapes::ShapeRef.new(shape: String, location_name: "Subject"))
    OpenIdConfiguration.add_member(:audience, Shapes::ShapeRef.new(shape: String, location_name: "Audience"))
    OpenIdConfiguration.struct_class = Types::OpenIdConfiguration

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QuotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeyList.member = Shapes::ShapeRef.new(shape: String)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    Tags.key = Shapes::ShapeRef.new(shape: String)
    Tags.value = Shapes::ShapeRef.new(shape: String)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "pca-connector-scep",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Private CA Connector for SCEP",
        "serviceId" => "Pca Connector Scep",
        "signatureVersion" => "v4",
        "signingName" => "pca-connector-scep",
        "uid" => "pca-connector-scep-2018-05-10",
      }

      api.add_operation(:create_challenge, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChallenge"
        o.http_method = "POST"
        o.http_request_uri = "/challenges"
        o.input = Shapes::ShapeRef.new(shape: CreateChallengeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChallengeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConnector"
        o.http_method = "POST"
        o.http_request_uri = "/connectors"
        o.input = Shapes::ShapeRef.new(shape: CreateConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_challenge, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChallenge"
        o.http_method = "DELETE"
        o.http_request_uri = "/challenges/{ChallengeArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteChallengeRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnector"
        o.http_method = "DELETE"
        o.http_request_uri = "/connectors/{ConnectorArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_challenge_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChallengeMetadata"
        o.http_method = "GET"
        o.http_request_uri = "/challengeMetadata/{ChallengeArn}"
        o.input = Shapes::ShapeRef.new(shape: GetChallengeMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChallengeMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_challenge_password, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChallengePassword"
        o.http_method = "GET"
        o.http_request_uri = "/challengePasswords/{ChallengeArn}"
        o.input = Shapes::ShapeRef.new(shape: GetChallengePasswordRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChallengePasswordResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnector"
        o.http_method = "GET"
        o.http_request_uri = "/connectors/{ConnectorArn}"
        o.input = Shapes::ShapeRef.new(shape: GetConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_challenge_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChallengeMetadata"
        o.http_method = "GET"
        o.http_request_uri = "/challengeMetadata"
        o.input = Shapes::ShapeRef.new(shape: ListChallengeMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChallengeMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_connectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConnectors"
        o.http_method = "GET"
        o.http_request_uri = "/connectors"
        o.input = Shapes::ShapeRef.new(shape: ListConnectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConnectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end

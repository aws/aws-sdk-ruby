# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ELBProxy
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    AssociateCertificateRequest = Shapes::StructureShape.new(name: 'AssociateCertificateRequest')
    AssociateCertificateResponse = Shapes::StructureShape.new(name: 'AssociateCertificateResponse')
    Attribute = Shapes::StructureShape.new(name: 'Attribute')
    AttributeDetails = Shapes::StructureShape.new(name: 'AttributeDetails')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CertificateArn = Shapes::StringShape.new(name: 'CertificateArn')
    CertificateAssociation = Shapes::StructureShape.new(name: 'CertificateAssociation')
    CertificateAssociationList = Shapes::ListShape.new(name: 'CertificateAssociationList')
    CertificateAssociationStatus = Shapes::StructureShape.new(name: 'CertificateAssociationStatus')
    CertificateAssociationStatusCode = Shapes::StringShape.new(name: 'CertificateAssociationStatusCode')
    CertificateAssociationStatusReason = Shapes::StructureShape.new(name: 'CertificateAssociationStatusReason')
    CertificateAssociationStatusReasonList = Shapes::ListShape.new(name: 'CertificateAssociationStatusReasonList')
    CertificateIdentifier = Shapes::StringShape.new(name: 'CertificateIdentifier')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConfigurationArchive = Shapes::StructureShape.new(name: 'ConfigurationArchive')
    ConfigurationArchiveBytes = Shapes::BlobShape.new(name: 'ConfigurationArchiveBytes')
    ConfigurationFile = Shapes::StructureShape.new(name: 'ConfigurationFile')
    ConfigurationFileBytes = Shapes::BlobShape.new(name: 'ConfigurationFileBytes')
    ConfigurationMetadata = Shapes::StructureShape.new(name: 'ConfigurationMetadata')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateProxyRequest = Shapes::StructureShape.new(name: 'CreateProxyRequest')
    CreateProxyResponse = Shapes::StructureShape.new(name: 'CreateProxyResponse')
    CustomerKmsKeyArn = Shapes::StringShape.new(name: 'CustomerKmsKeyArn')
    DeleteProxyRequest = Shapes::StructureShape.new(name: 'DeleteProxyRequest')
    DeleteProxyResponse = Shapes::StructureShape.new(name: 'DeleteProxyResponse')
    DisassociateCertificateRequest = Shapes::StructureShape.new(name: 'DisassociateCertificateRequest')
    DisassociateCertificateResponse = Shapes::StructureShape.new(name: 'DisassociateCertificateResponse')
    GetProxyAttributesRequest = Shapes::StructureShape.new(name: 'GetProxyAttributesRequest')
    GetProxyAttributesResponse = Shapes::StructureShape.new(name: 'GetProxyAttributesResponse')
    GetProxyConfigurationContentsRequest = Shapes::StructureShape.new(name: 'GetProxyConfigurationContentsRequest')
    GetProxyConfigurationContentsResponse = Shapes::StructureShape.new(name: 'GetProxyConfigurationContentsResponse')
    GetProxyRequest = Shapes::StructureShape.new(name: 'GetProxyRequest')
    GetProxyResponse = Shapes::StructureShape.new(name: 'GetProxyResponse')
    GetProxyUpdateRequest = Shapes::StructureShape.new(name: 'GetProxyUpdateRequest')
    GetProxyUpdateResponse = Shapes::StructureShape.new(name: 'GetProxyUpdateResponse')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListCertificateAssociationsRequest = Shapes::StructureShape.new(name: 'ListCertificateAssociationsRequest')
    ListCertificateAssociationsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListCertificateAssociationsRequestMaxResultsInteger')
    ListCertificateAssociationsResponse = Shapes::StructureShape.new(name: 'ListCertificateAssociationsResponse')
    ListProxiesRequest = Shapes::StructureShape.new(name: 'ListProxiesRequest')
    ListProxiesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListProxiesRequestMaxResultsInteger')
    ListProxiesResponse = Shapes::StructureShape.new(name: 'ListProxiesResponse')
    ListProxyUpdatesRequest = Shapes::StructureShape.new(name: 'ListProxyUpdatesRequest')
    ListProxyUpdatesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListProxyUpdatesRequestMaxResultsInteger')
    ListProxyUpdatesResponse = Shapes::StructureShape.new(name: 'ListProxyUpdatesResponse')
    ListProxyVersionsRequest = Shapes::StructureShape.new(name: 'ListProxyVersionsRequest')
    ListProxyVersionsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListProxyVersionsRequestMaxResultsInteger')
    ListProxyVersionsResponse = Shapes::StructureShape.new(name: 'ListProxyVersionsResponse')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OperationNotPermittedException = Shapes::StructureShape.new(name: 'OperationNotPermittedException')
    PriorRequestNotCompletedException = Shapes::StructureShape.new(name: 'PriorRequestNotCompletedException')
    ProxyAttributeDetailsList = Shapes::ListShape.new(name: 'ProxyAttributeDetailsList')
    ProxyAttributeKey = Shapes::StringShape.new(name: 'ProxyAttributeKey')
    ProxyAttributeList = Shapes::ListShape.new(name: 'ProxyAttributeList')
    ProxyAttributeValue = Shapes::StringShape.new(name: 'ProxyAttributeValue')
    ProxyConfiguration = Shapes::StructureShape.new(name: 'ProxyConfiguration')
    ProxyConfigurationUpdateDetails = Shapes::StructureShape.new(name: 'ProxyConfigurationUpdateDetails')
    ProxyIdentifier = Shapes::StringShape.new(name: 'ProxyIdentifier')
    ProxyIpAddressingConfiguration = Shapes::StructureShape.new(name: 'ProxyIpAddressingConfiguration')
    ProxyIpConfiguration = Shapes::StructureShape.new(name: 'ProxyIpConfiguration')
    ProxyIpv4Addressability = Shapes::StringShape.new(name: 'ProxyIpv4Addressability')
    ProxyIpv6Addressability = Shapes::StringShape.new(name: 'ProxyIpv6Addressability')
    ProxyName = Shapes::StringShape.new(name: 'ProxyName')
    ProxyNetworkConfiguration = Shapes::StructureShape.new(name: 'ProxyNetworkConfiguration')
    ProxyNetworkUserConfiguration = Shapes::StructureShape.new(name: 'ProxyNetworkUserConfiguration')
    ProxyStatus = Shapes::StructureShape.new(name: 'ProxyStatus')
    ProxyStatusCode = Shapes::StringShape.new(name: 'ProxyStatusCode')
    ProxyStatusReason = Shapes::StructureShape.new(name: 'ProxyStatusReason')
    ProxyStatusReasonList = Shapes::ListShape.new(name: 'ProxyStatusReasonList')
    ProxySummary = Shapes::StructureShape.new(name: 'ProxySummary')
    ProxySummaryList = Shapes::ListShape.new(name: 'ProxySummaryList')
    ProxyType = Shapes::StringShape.new(name: 'ProxyType')
    ProxyUpdateDetails = Shapes::UnionShape.new(name: 'ProxyUpdateDetails')
    ProxyUpdateIdentifier = Shapes::StringShape.new(name: 'ProxyUpdateIdentifier')
    ProxyUpdatePropagationStatus = Shapes::StringShape.new(name: 'ProxyUpdatePropagationStatus')
    ProxyUpdateState = Shapes::StructureShape.new(name: 'ProxyUpdateState')
    ProxyUpdateStateReason = Shapes::StringShape.new(name: 'ProxyUpdateStateReason')
    ProxyUpdateStateReasonList = Shapes::ListShape.new(name: 'ProxyUpdateStateReasonList')
    ProxyUpdateSummary = Shapes::StructureShape.new(name: 'ProxyUpdateSummary')
    ProxyUpdateSummaryList = Shapes::ListShape.new(name: 'ProxyUpdateSummaryList')
    ProxyUpdateType = Shapes::StringShape.new(name: 'ProxyUpdateType')
    ProxyUpdateValidationStatus = Shapes::StringShape.new(name: 'ProxyUpdateValidationStatus')
    ProxyVersion = Shapes::StringShape.new(name: 'ProxyVersion')
    ProxyVersionSummary = Shapes::StructureShape.new(name: 'ProxyVersionSummary')
    ProxyVersionSummaryList = Shapes::ListShape.new(name: 'ProxyVersionSummaryList')
    ProxyVpcConfiguration = Shapes::StructureShape.new(name: 'ProxyVpcConfiguration')
    ProxyVpcUserConfiguration = Shapes::StructureShape.new(name: 'ProxyVpcUserConfiguration')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SecurityGroupDetails = Shapes::StructureShape.new(name: 'SecurityGroupDetails')
    SecurityGroupDetailsList = Shapes::ListShape.new(name: 'SecurityGroupDetailsList')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    SubnetAndZone = Shapes::StructureShape.new(name: 'SubnetAndZone')
    SubnetAndZoneList = Shapes::ListShape.new(name: 'SubnetAndZoneList')
    SubnetDetails = Shapes::StructureShape.new(name: 'SubnetDetails')
    SubnetDetailsList = Shapes::ListShape.new(name: 'SubnetDetailsList')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateProxyAttributesRequest = Shapes::StructureShape.new(name: 'UpdateProxyAttributesRequest')
    UpdateProxyAttributesResponse = Shapes::StructureShape.new(name: 'UpdateProxyAttributesResponse')
    UpdateProxyConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateProxyConfigurationRequest')
    UpdateProxyConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateProxyConfigurationResponse')
    UpdateProxyNetworkConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateProxyNetworkConfigurationRequest')
    UpdateProxyNetworkConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateProxyNetworkConfigurationResponse')
    UpdateProxyVpcConfiguration = Shapes::StructureShape.new(name: 'UpdateProxyVpcConfiguration')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionMessage = Shapes::StringShape.new(name: 'ValidationExceptionMessage')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AssociateCertificateRequest.add_member(:proxy_identifier, Shapes::ShapeRef.new(shape: ProxyIdentifier, required: true, location_name: "proxyIdentifier"))
    AssociateCertificateRequest.add_member(:certificate_identifier, Shapes::ShapeRef.new(shape: CertificateIdentifier, required: true, location_name: "certificateIdentifier"))
    AssociateCertificateRequest.struct_class = Types::AssociateCertificateRequest

    AssociateCertificateResponse.add_member(:certificate_association, Shapes::ShapeRef.new(shape: CertificateAssociation, required: true, location_name: "certificateAssociation"))
    AssociateCertificateResponse.struct_class = Types::AssociateCertificateResponse

    Attribute.add_member(:key, Shapes::ShapeRef.new(shape: ProxyAttributeKey, required: true, location_name: "key"))
    Attribute.add_member(:value, Shapes::ShapeRef.new(shape: ProxyAttributeValue, required: true, location_name: "value"))
    Attribute.struct_class = Types::Attribute

    AttributeDetails.add_member(:key, Shapes::ShapeRef.new(shape: ProxyAttributeKey, required: true, location_name: "key"))
    AttributeDetails.add_member(:value, Shapes::ShapeRef.new(shape: ProxyAttributeValue, required: true, location_name: "value"))
    AttributeDetails.add_member(:default_value, Shapes::ShapeRef.new(shape: ProxyAttributeValue, location_name: "defaultValue"))
    AttributeDetails.struct_class = Types::AttributeDetails

    CertificateAssociation.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, required: true, location_name: "certificateArn"))
    CertificateAssociation.add_member(:status, Shapes::ShapeRef.new(shape: CertificateAssociationStatus, required: true, location_name: "status"))
    CertificateAssociation.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    CertificateAssociation.struct_class = Types::CertificateAssociation

    CertificateAssociationList.member = Shapes::ShapeRef.new(shape: CertificateAssociation)

    CertificateAssociationStatus.add_member(:code, Shapes::ShapeRef.new(shape: CertificateAssociationStatusCode, required: true, location_name: "code"))
    CertificateAssociationStatus.add_member(:reasons, Shapes::ShapeRef.new(shape: CertificateAssociationStatusReasonList, required: true, location_name: "reasons"))
    CertificateAssociationStatus.struct_class = Types::CertificateAssociationStatus

    CertificateAssociationStatusReason.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    CertificateAssociationStatusReason.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    CertificateAssociationStatusReason.struct_class = Types::CertificateAssociationStatusReason

    CertificateAssociationStatusReasonList.member = Shapes::ShapeRef.new(shape: CertificateAssociationStatusReason)

    ConfigurationArchive.add_member(:configuration_bytes, Shapes::ShapeRef.new(shape: ConfigurationArchiveBytes, required: true, location_name: "configurationBytes"))
    ConfigurationArchive.struct_class = Types::ConfigurationArchive

    ConfigurationFile.add_member(:configuration_bytes, Shapes::ShapeRef.new(shape: ConfigurationFileBytes, required: true, location_name: "configurationBytes"))
    ConfigurationFile.struct_class = Types::ConfigurationFile

    ConfigurationMetadata.add_member(:config_file_hash, Shapes::ShapeRef.new(shape: String, location_name: "configFileHash"))
    ConfigurationMetadata.add_member(:config_archive_hash, Shapes::ShapeRef.new(shape: String, location_name: "configArchiveHash"))
    ConfigurationMetadata.add_member(:config_file_last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "configFileLastUpdatedAt"))
    ConfigurationMetadata.add_member(:config_archive_last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "configArchiveLastUpdatedAt"))
    ConfigurationMetadata.struct_class = Types::ConfigurationMetadata

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateProxyRequest.add_member(:name, Shapes::ShapeRef.new(shape: ProxyName, required: true, location_name: "name"))
    CreateProxyRequest.add_member(:type, Shapes::ShapeRef.new(shape: ProxyType, required: true, location_name: "type"))
    CreateProxyRequest.add_member(:proxy_version, Shapes::ShapeRef.new(shape: ProxyVersion, required: true, location_name: "proxyVersion"))
    CreateProxyRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "roleArn"))
    CreateProxyRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: ProxyConfiguration, required: true, location_name: "configuration"))
    CreateProxyRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: ProxyNetworkUserConfiguration, required: true, location_name: "networkConfiguration"))
    CreateProxyRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: ProxyAttributeList, location_name: "attributes"))
    CreateProxyRequest.add_member(:customer_kms_key_arn, Shapes::ShapeRef.new(shape: CustomerKmsKeyArn, location_name: "customerKmsKeyArn"))
    CreateProxyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateProxyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateProxyRequest.struct_class = Types::CreateProxyRequest

    CreateProxyResponse.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "arn"))
    CreateProxyResponse.add_member(:name, Shapes::ShapeRef.new(shape: ProxyName, location_name: "name"))
    CreateProxyResponse.add_member(:type, Shapes::ShapeRef.new(shape: ProxyType, location_name: "type"))
    CreateProxyResponse.add_member(:proxy_version, Shapes::ShapeRef.new(shape: ProxyVersion, location_name: "proxyVersion"))
    CreateProxyResponse.add_member(:dns_name, Shapes::ShapeRef.new(shape: String, location_name: "dnsName"))
    CreateProxyResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "roleArn"))
    CreateProxyResponse.add_member(:network_configuration, Shapes::ShapeRef.new(shape: ProxyNetworkConfiguration, location_name: "networkConfiguration"))
    CreateProxyResponse.add_member(:status, Shapes::ShapeRef.new(shape: ProxyStatus, location_name: "status"))
    CreateProxyResponse.add_member(:configuration_metadata, Shapes::ShapeRef.new(shape: ConfigurationMetadata, location_name: "configurationMetadata"))
    CreateProxyResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    CreateProxyResponse.add_member(:customer_kms_key_arn, Shapes::ShapeRef.new(shape: CustomerKmsKeyArn, location_name: "customerKmsKeyArn"))
    CreateProxyResponse.struct_class = Types::CreateProxyResponse

    DeleteProxyRequest.add_member(:proxy_identifier, Shapes::ShapeRef.new(shape: ProxyIdentifier, required: true, location_name: "proxyIdentifier"))
    DeleteProxyRequest.struct_class = Types::DeleteProxyRequest

    DeleteProxyResponse.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
    DeleteProxyResponse.add_member(:name, Shapes::ShapeRef.new(shape: ProxyName, required: true, location_name: "name"))
    DeleteProxyResponse.add_member(:status, Shapes::ShapeRef.new(shape: ProxyStatus, location_name: "status"))
    DeleteProxyResponse.struct_class = Types::DeleteProxyResponse

    DisassociateCertificateRequest.add_member(:proxy_identifier, Shapes::ShapeRef.new(shape: ProxyIdentifier, required: true, location_name: "proxyIdentifier"))
    DisassociateCertificateRequest.add_member(:certificate_identifier, Shapes::ShapeRef.new(shape: CertificateIdentifier, required: true, location_name: "certificateIdentifier"))
    DisassociateCertificateRequest.struct_class = Types::DisassociateCertificateRequest

    DisassociateCertificateResponse.add_member(:certificate_association, Shapes::ShapeRef.new(shape: CertificateAssociation, required: true, location_name: "certificateAssociation"))
    DisassociateCertificateResponse.struct_class = Types::DisassociateCertificateResponse

    GetProxyAttributesRequest.add_member(:proxy_identifier, Shapes::ShapeRef.new(shape: ProxyIdentifier, required: true, location_name: "proxyIdentifier"))
    GetProxyAttributesRequest.struct_class = Types::GetProxyAttributesRequest

    GetProxyAttributesResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: ProxyAttributeDetailsList, location_name: "attributes"))
    GetProxyAttributesResponse.struct_class = Types::GetProxyAttributesResponse

    GetProxyConfigurationContentsRequest.add_member(:proxy_identifier, Shapes::ShapeRef.new(shape: ProxyIdentifier, required: true, location_name: "proxyIdentifier"))
    GetProxyConfigurationContentsRequest.add_member(:include_config_file, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeConfigFile"))
    GetProxyConfigurationContentsRequest.add_member(:include_config_archive, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeConfigArchive"))
    GetProxyConfigurationContentsRequest.struct_class = Types::GetProxyConfigurationContentsRequest

    GetProxyConfigurationContentsResponse.add_member(:configuration_file_contents, Shapes::ShapeRef.new(shape: ConfigurationFileBytes, location_name: "configurationFileContents"))
    GetProxyConfigurationContentsResponse.add_member(:configuration_archive_contents, Shapes::ShapeRef.new(shape: ConfigurationArchiveBytes, location_name: "configurationArchiveContents"))
    GetProxyConfigurationContentsResponse.add_member(:configuration_metadata, Shapes::ShapeRef.new(shape: ConfigurationMetadata, location_name: "configurationMetadata"))
    GetProxyConfigurationContentsResponse.add_member(:customer_kms_key_arn, Shapes::ShapeRef.new(shape: CustomerKmsKeyArn, location_name: "customerKmsKeyArn"))
    GetProxyConfigurationContentsResponse.struct_class = Types::GetProxyConfigurationContentsResponse

    GetProxyRequest.add_member(:proxy_identifier, Shapes::ShapeRef.new(shape: ProxyIdentifier, required: true, location_name: "proxyIdentifier"))
    GetProxyRequest.struct_class = Types::GetProxyRequest

    GetProxyResponse.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "arn"))
    GetProxyResponse.add_member(:name, Shapes::ShapeRef.new(shape: ProxyName, location_name: "name"))
    GetProxyResponse.add_member(:type, Shapes::ShapeRef.new(shape: ProxyType, location_name: "type"))
    GetProxyResponse.add_member(:proxy_version, Shapes::ShapeRef.new(shape: ProxyVersion, location_name: "proxyVersion"))
    GetProxyResponse.add_member(:dns_name, Shapes::ShapeRef.new(shape: String, location_name: "dnsName"))
    GetProxyResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "roleArn"))
    GetProxyResponse.add_member(:network_configuration, Shapes::ShapeRef.new(shape: ProxyNetworkConfiguration, location_name: "networkConfiguration"))
    GetProxyResponse.add_member(:status, Shapes::ShapeRef.new(shape: ProxyStatus, location_name: "status"))
    GetProxyResponse.add_member(:configuration_metadata, Shapes::ShapeRef.new(shape: ConfigurationMetadata, location_name: "configurationMetadata"))
    GetProxyResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetProxyResponse.add_member(:customer_kms_key_arn, Shapes::ShapeRef.new(shape: CustomerKmsKeyArn, location_name: "customerKmsKeyArn"))
    GetProxyResponse.struct_class = Types::GetProxyResponse

    GetProxyUpdateRequest.add_member(:proxy_identifier, Shapes::ShapeRef.new(shape: ProxyIdentifier, required: true, location_name: "proxyIdentifier"))
    GetProxyUpdateRequest.add_member(:update_identifier, Shapes::ShapeRef.new(shape: ProxyUpdateIdentifier, required: true, location_name: "updateIdentifier"))
    GetProxyUpdateRequest.struct_class = Types::GetProxyUpdateRequest

    GetProxyUpdateResponse.add_member(:proxy_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "proxyArn"))
    GetProxyUpdateResponse.add_member(:update_id, Shapes::ShapeRef.new(shape: ProxyUpdateIdentifier, required: true, location_name: "updateId"))
    GetProxyUpdateResponse.add_member(:state, Shapes::ShapeRef.new(shape: ProxyUpdateState, required: true, location_name: "state"))
    GetProxyUpdateResponse.add_member(:details, Shapes::ShapeRef.new(shape: ProxyUpdateDetails, required: true, location_name: "details"))
    GetProxyUpdateResponse.add_member(:submitted_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "submittedAt"))
    GetProxyUpdateResponse.add_member(:validated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "validatedAt"))
    GetProxyUpdateResponse.add_member(:completed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completedAt"))
    GetProxyUpdateResponse.struct_class = Types::GetProxyUpdateResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListCertificateAssociationsRequest.add_member(:proxy_identifier, Shapes::ShapeRef.new(shape: ProxyIdentifier, required: true, location_name: "proxyIdentifier"))
    ListCertificateAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListCertificateAssociationsRequestMaxResultsInteger, location_name: "maxResults"))
    ListCertificateAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCertificateAssociationsRequest.struct_class = Types::ListCertificateAssociationsRequest

    ListCertificateAssociationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: CertificateAssociationList, required: true, location_name: "items"))
    ListCertificateAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCertificateAssociationsResponse.struct_class = Types::ListCertificateAssociationsResponse

    ListProxiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListProxiesRequestMaxResultsInteger, location_name: "maxResults"))
    ListProxiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListProxiesRequest.struct_class = Types::ListProxiesRequest

    ListProxiesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ProxySummaryList, required: true, location_name: "items"))
    ListProxiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListProxiesResponse.struct_class = Types::ListProxiesResponse

    ListProxyUpdatesRequest.add_member(:proxy_identifier, Shapes::ShapeRef.new(shape: ProxyIdentifier, required: true, location_name: "proxyIdentifier"))
    ListProxyUpdatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListProxyUpdatesRequestMaxResultsInteger, location_name: "maxResults"))
    ListProxyUpdatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListProxyUpdatesRequest.struct_class = Types::ListProxyUpdatesRequest

    ListProxyUpdatesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ProxyUpdateSummaryList, required: true, location_name: "items"))
    ListProxyUpdatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListProxyUpdatesResponse.struct_class = Types::ListProxyUpdatesResponse

    ListProxyVersionsRequest.add_member(:type, Shapes::ShapeRef.new(shape: ProxyType, required: true, location_name: "type"))
    ListProxyVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListProxyVersionsRequestMaxResultsInteger, location_name: "maxResults"))
    ListProxyVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListProxyVersionsRequest.struct_class = Types::ListProxyVersionsRequest

    ListProxyVersionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ProxyVersionSummaryList, required: true, location_name: "items"))
    ListProxyVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListProxyVersionsResponse.struct_class = Types::ListProxyVersionsResponse

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    OperationNotPermittedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    OperationNotPermittedException.struct_class = Types::OperationNotPermittedException

    PriorRequestNotCompletedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    PriorRequestNotCompletedException.struct_class = Types::PriorRequestNotCompletedException

    ProxyAttributeDetailsList.member = Shapes::ShapeRef.new(shape: AttributeDetails)

    ProxyAttributeList.member = Shapes::ShapeRef.new(shape: Attribute)

    ProxyConfiguration.add_member(:configuration_file, Shapes::ShapeRef.new(shape: ConfigurationFile, location_name: "configurationFile"))
    ProxyConfiguration.add_member(:configuration_archive, Shapes::ShapeRef.new(shape: ConfigurationArchive, location_name: "configurationArchive"))
    ProxyConfiguration.struct_class = Types::ProxyConfiguration

    ProxyConfigurationUpdateDetails.add_member(:new_configuration_metadata, Shapes::ShapeRef.new(shape: ConfigurationMetadata, location_name: "newConfigurationMetadata"))
    ProxyConfigurationUpdateDetails.struct_class = Types::ProxyConfigurationUpdateDetails

    ProxyIpAddressingConfiguration.add_member(:ipv4_addressability, Shapes::ShapeRef.new(shape: ProxyIpv4Addressability, required: true, location_name: "ipv4Addressability"))
    ProxyIpAddressingConfiguration.add_member(:ipv6_addressability, Shapes::ShapeRef.new(shape: ProxyIpv6Addressability, required: true, location_name: "ipv6Addressability"))
    ProxyIpAddressingConfiguration.struct_class = Types::ProxyIpAddressingConfiguration

    ProxyIpConfiguration.add_member(:ip_addressing_configuration, Shapes::ShapeRef.new(shape: ProxyIpAddressingConfiguration, required: true, location_name: "ipAddressingConfiguration"))
    ProxyIpConfiguration.struct_class = Types::ProxyIpConfiguration

    ProxyNetworkConfiguration.add_member(:ip_configuration, Shapes::ShapeRef.new(shape: ProxyIpConfiguration, required: true, location_name: "ipConfiguration"))
    ProxyNetworkConfiguration.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: ProxyVpcConfiguration, required: true, location_name: "vpcConfiguration"))
    ProxyNetworkConfiguration.struct_class = Types::ProxyNetworkConfiguration

    ProxyNetworkUserConfiguration.add_member(:ip_configuration, Shapes::ShapeRef.new(shape: ProxyIpConfiguration, required: true, location_name: "ipConfiguration"))
    ProxyNetworkUserConfiguration.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: ProxyVpcUserConfiguration, required: true, location_name: "vpcConfiguration"))
    ProxyNetworkUserConfiguration.struct_class = Types::ProxyNetworkUserConfiguration

    ProxyStatus.add_member(:code, Shapes::ShapeRef.new(shape: ProxyStatusCode, required: true, location_name: "code"))
    ProxyStatus.add_member(:reasons, Shapes::ShapeRef.new(shape: ProxyStatusReasonList, required: true, location_name: "reasons"))
    ProxyStatus.struct_class = Types::ProxyStatus

    ProxyStatusReason.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    ProxyStatusReason.add_member(:target, Shapes::ShapeRef.new(shape: String, location_name: "target"))
    ProxyStatusReason.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ProxyStatusReason.struct_class = Types::ProxyStatusReason

    ProxyStatusReasonList.member = Shapes::ShapeRef.new(shape: ProxyStatusReason)

    ProxySummary.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "arn"))
    ProxySummary.add_member(:name, Shapes::ShapeRef.new(shape: ProxyName, location_name: "name"))
    ProxySummary.add_member(:type, Shapes::ShapeRef.new(shape: ProxyType, location_name: "type"))
    ProxySummary.add_member(:dns_name, Shapes::ShapeRef.new(shape: String, location_name: "dnsName"))
    ProxySummary.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "vpcId"))
    ProxySummary.add_member(:status, Shapes::ShapeRef.new(shape: ProxyStatus, location_name: "status"))
    ProxySummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ProxySummary.struct_class = Types::ProxySummary

    ProxySummaryList.member = Shapes::ShapeRef.new(shape: ProxySummary)

    ProxyUpdateDetails.add_member(:configuration, Shapes::ShapeRef.new(shape: ProxyConfigurationUpdateDetails, location_name: "configuration"))
    ProxyUpdateDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ProxyUpdateDetails.add_member_subclass(:configuration, Types::ProxyUpdateDetails::Configuration)
    ProxyUpdateDetails.add_member_subclass(:unknown, Types::ProxyUpdateDetails::Unknown)
    ProxyUpdateDetails.struct_class = Types::ProxyUpdateDetails

    ProxyUpdateState.add_member(:validation_status, Shapes::ShapeRef.new(shape: ProxyUpdateValidationStatus, required: true, location_name: "validationStatus"))
    ProxyUpdateState.add_member(:propagation_status, Shapes::ShapeRef.new(shape: ProxyUpdatePropagationStatus, required: true, location_name: "propagationStatus"))
    ProxyUpdateState.add_member(:reasons, Shapes::ShapeRef.new(shape: ProxyUpdateStateReasonList, location_name: "reasons"))
    ProxyUpdateState.struct_class = Types::ProxyUpdateState

    ProxyUpdateStateReasonList.member = Shapes::ShapeRef.new(shape: ProxyUpdateStateReason)

    ProxyUpdateSummary.add_member(:update_id, Shapes::ShapeRef.new(shape: ProxyUpdateIdentifier, required: true, location_name: "updateId"))
    ProxyUpdateSummary.add_member(:type, Shapes::ShapeRef.new(shape: ProxyUpdateType, required: true, location_name: "type"))
    ProxyUpdateSummary.add_member(:validation_status, Shapes::ShapeRef.new(shape: ProxyUpdateValidationStatus, required: true, location_name: "validationStatus"))
    ProxyUpdateSummary.add_member(:propagation_status, Shapes::ShapeRef.new(shape: ProxyUpdatePropagationStatus, required: true, location_name: "propagationStatus"))
    ProxyUpdateSummary.add_member(:submitted_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "submittedAt"))
    ProxyUpdateSummary.add_member(:validated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "validatedAt"))
    ProxyUpdateSummary.add_member(:completed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completedAt"))
    ProxyUpdateSummary.struct_class = Types::ProxyUpdateSummary

    ProxyUpdateSummaryList.member = Shapes::ShapeRef.new(shape: ProxyUpdateSummary)

    ProxyVersionSummary.add_member(:type, Shapes::ShapeRef.new(shape: ProxyType, required: true, location_name: "type"))
    ProxyVersionSummary.add_member(:version, Shapes::ShapeRef.new(shape: ProxyVersion, required: true, location_name: "version"))
    ProxyVersionSummary.struct_class = Types::ProxyVersionSummary

    ProxyVersionSummaryList.member = Shapes::ShapeRef.new(shape: ProxyVersionSummary)

    ProxyVpcConfiguration.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "vpcId"))
    ProxyVpcConfiguration.add_member(:availability_zones, Shapes::ShapeRef.new(shape: SubnetAndZoneList, required: true, location_name: "availabilityZones"))
    ProxyVpcConfiguration.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroupDetailsList, required: true, location_name: "securityGroups"))
    ProxyVpcConfiguration.struct_class = Types::ProxyVpcConfiguration

    ProxyVpcUserConfiguration.add_member(:subnets, Shapes::ShapeRef.new(shape: SubnetDetailsList, required: true, location_name: "subnets"))
    ProxyVpcUserConfiguration.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroupDetailsList, required: true, location_name: "securityGroups"))
    ProxyVpcUserConfiguration.struct_class = Types::ProxyVpcUserConfiguration

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SecurityGroupDetails.add_member(:security_group_id, Shapes::ShapeRef.new(shape: SecurityGroupId, required: true, location_name: "securityGroupId"))
    SecurityGroupDetails.struct_class = Types::SecurityGroupDetails

    SecurityGroupDetailsList.member = Shapes::ShapeRef.new(shape: SecurityGroupDetails)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SubnetAndZone.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, required: true, location_name: "subnetId"))
    SubnetAndZone.add_member(:zone_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "zoneId"))
    SubnetAndZone.add_member(:zone_name, Shapes::ShapeRef.new(shape: String, location_name: "zoneName"))
    SubnetAndZone.struct_class = Types::SubnetAndZone

    SubnetAndZoneList.member = Shapes::ShapeRef.new(shape: SubnetAndZone)

    SubnetDetails.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, required: true, location_name: "subnetId"))
    SubnetDetails.struct_class = Types::SubnetDetails

    SubnetDetailsList.member = Shapes::ShapeRef.new(shape: SubnetDetails)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateProxyAttributesRequest.add_member(:proxy_identifier, Shapes::ShapeRef.new(shape: ProxyIdentifier, required: true, location_name: "proxyIdentifier"))
    UpdateProxyAttributesRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: ProxyAttributeList, required: true, location_name: "attributes"))
    UpdateProxyAttributesRequest.struct_class = Types::UpdateProxyAttributesRequest

    UpdateProxyAttributesResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: ProxyAttributeDetailsList, required: true, location_name: "attributes"))
    UpdateProxyAttributesResponse.struct_class = Types::UpdateProxyAttributesResponse

    UpdateProxyConfigurationRequest.add_member(:proxy_identifier, Shapes::ShapeRef.new(shape: ProxyIdentifier, required: true, location_name: "proxyIdentifier"))
    UpdateProxyConfigurationRequest.add_member(:configuration_file, Shapes::ShapeRef.new(shape: ConfigurationFile, location_name: "configurationFile"))
    UpdateProxyConfigurationRequest.add_member(:configuration_archive, Shapes::ShapeRef.new(shape: ConfigurationArchive, location_name: "configurationArchive"))
    UpdateProxyConfigurationRequest.add_member(:reset_configuration_archive, Shapes::ShapeRef.new(shape: Boolean, location_name: "resetConfigurationArchive"))
    UpdateProxyConfigurationRequest.add_member(:customer_kms_key_arn, Shapes::ShapeRef.new(shape: CustomerKmsKeyArn, location_name: "customerKmsKeyArn"))
    UpdateProxyConfigurationRequest.add_member(:reset_customer_kms_key_arn, Shapes::ShapeRef.new(shape: Boolean, location_name: "resetCustomerKmsKeyArn"))
    UpdateProxyConfigurationRequest.struct_class = Types::UpdateProxyConfigurationRequest

    UpdateProxyConfigurationResponse.add_member(:configuration_metadata, Shapes::ShapeRef.new(shape: ConfigurationMetadata, required: true, location_name: "configurationMetadata"))
    UpdateProxyConfigurationResponse.add_member(:update_id, Shapes::ShapeRef.new(shape: ProxyUpdateIdentifier, location_name: "updateId"))
    UpdateProxyConfigurationResponse.add_member(:customer_kms_key_arn, Shapes::ShapeRef.new(shape: CustomerKmsKeyArn, location_name: "customerKmsKeyArn"))
    UpdateProxyConfigurationResponse.struct_class = Types::UpdateProxyConfigurationResponse

    UpdateProxyNetworkConfigurationRequest.add_member(:proxy_identifier, Shapes::ShapeRef.new(shape: ProxyIdentifier, required: true, location_name: "proxyIdentifier"))
    UpdateProxyNetworkConfigurationRequest.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: UpdateProxyVpcConfiguration, required: true, location_name: "vpcConfiguration"))
    UpdateProxyNetworkConfigurationRequest.struct_class = Types::UpdateProxyNetworkConfigurationRequest

    UpdateProxyNetworkConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "arn"))
    UpdateProxyNetworkConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: ProxyName, location_name: "name"))
    UpdateProxyNetworkConfigurationResponse.add_member(:type, Shapes::ShapeRef.new(shape: ProxyType, location_name: "type"))
    UpdateProxyNetworkConfigurationResponse.add_member(:proxy_version, Shapes::ShapeRef.new(shape: ProxyVersion, location_name: "proxyVersion"))
    UpdateProxyNetworkConfigurationResponse.add_member(:dns_name, Shapes::ShapeRef.new(shape: String, location_name: "dnsName"))
    UpdateProxyNetworkConfigurationResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "roleArn"))
    UpdateProxyNetworkConfigurationResponse.add_member(:network_configuration, Shapes::ShapeRef.new(shape: ProxyNetworkConfiguration, location_name: "networkConfiguration"))
    UpdateProxyNetworkConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: ProxyStatus, location_name: "status"))
    UpdateProxyNetworkConfigurationResponse.add_member(:configuration_metadata, Shapes::ShapeRef.new(shape: ConfigurationMetadata, location_name: "configurationMetadata"))
    UpdateProxyNetworkConfigurationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    UpdateProxyNetworkConfigurationResponse.add_member(:customer_kms_key_arn, Shapes::ShapeRef.new(shape: CustomerKmsKeyArn, location_name: "customerKmsKeyArn"))
    UpdateProxyNetworkConfigurationResponse.struct_class = Types::UpdateProxyNetworkConfigurationResponse

    UpdateProxyVpcConfiguration.add_member(:subnets, Shapes::ShapeRef.new(shape: SubnetDetailsList, location_name: "subnets"))
    UpdateProxyVpcConfiguration.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroupDetailsList, location_name: "securityGroups"))
    UpdateProxyVpcConfiguration.struct_class = Types::UpdateProxyVpcConfiguration

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ValidationExceptionMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2026-11-20"

      api.metadata = {
        "apiVersion" => "2026-11-20",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "elb-proxy",
        "protocol" => "smithy-rpc-v2-cbor",
        "protocols" => ["smithy-rpc-v2-cbor"],
        "serviceFullName" => "Elastic Load Balancing for Envoy",
        "serviceId" => "ELB Proxy",
        "signatureVersion" => "v4",
        "signingName" => "elasticloadbalancing",
        "targetPrefix" => "ELBProxy",
        "uid" => "elb-proxy-2026-11-20",
      }

      api.add_operation(:associate_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_proxy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProxy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateProxyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProxyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_proxy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProxy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProxyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProxyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_proxy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProxy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetProxyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProxyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_proxy_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProxyAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetProxyAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProxyAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_proxy_configuration_contents, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProxyConfigurationContents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetProxyConfigurationContentsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProxyConfigurationContentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_proxy_update, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProxyUpdate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetProxyUpdateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProxyUpdateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_certificate_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCertificateAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCertificateAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCertificateAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_proxies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProxies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProxiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProxiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_proxy_updates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProxyUpdates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProxyUpdatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProxyUpdatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_proxy_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProxyVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProxyVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProxyVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_proxy_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProxyAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateProxyAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProxyAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_proxy_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProxyConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateProxyConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProxyConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: PriorRequestNotCompletedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_proxy_network_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProxyNetworkConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateProxyNetworkConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProxyNetworkConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end

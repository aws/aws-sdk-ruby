# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PcaConnectorAd
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessControlEntry = Shapes::StructureShape.new(name: 'AccessControlEntry')
    AccessControlEntryList = Shapes::ListShape.new(name: 'AccessControlEntryList')
    AccessControlEntrySummary = Shapes::StructureShape.new(name: 'AccessControlEntrySummary')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessRight = Shapes::StringShape.new(name: 'AccessRight')
    AccessRights = Shapes::StructureShape.new(name: 'AccessRights')
    ApplicationPolicies = Shapes::StructureShape.new(name: 'ApplicationPolicies')
    ApplicationPolicy = Shapes::UnionShape.new(name: 'ApplicationPolicy')
    ApplicationPolicyList = Shapes::ListShape.new(name: 'ApplicationPolicyList')
    ApplicationPolicyType = Shapes::StringShape.new(name: 'ApplicationPolicyType')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CertificateAuthorityArn = Shapes::StringShape.new(name: 'CertificateAuthorityArn')
    CertificateValidity = Shapes::StructureShape.new(name: 'CertificateValidity')
    ClientCompatibilityV2 = Shapes::StringShape.new(name: 'ClientCompatibilityV2')
    ClientCompatibilityV3 = Shapes::StringShape.new(name: 'ClientCompatibilityV3')
    ClientCompatibilityV4 = Shapes::StringShape.new(name: 'ClientCompatibilityV4')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Connector = Shapes::StructureShape.new(name: 'Connector')
    ConnectorArn = Shapes::StringShape.new(name: 'ConnectorArn')
    ConnectorList = Shapes::ListShape.new(name: 'ConnectorList')
    ConnectorStatus = Shapes::StringShape.new(name: 'ConnectorStatus')
    ConnectorStatusReason = Shapes::StringShape.new(name: 'ConnectorStatusReason')
    ConnectorSummary = Shapes::StructureShape.new(name: 'ConnectorSummary')
    CreateConnectorRequest = Shapes::StructureShape.new(name: 'CreateConnectorRequest')
    CreateConnectorResponse = Shapes::StructureShape.new(name: 'CreateConnectorResponse')
    CreateDirectoryRegistrationRequest = Shapes::StructureShape.new(name: 'CreateDirectoryRegistrationRequest')
    CreateDirectoryRegistrationResponse = Shapes::StructureShape.new(name: 'CreateDirectoryRegistrationResponse')
    CreateServicePrincipalNameRequest = Shapes::StructureShape.new(name: 'CreateServicePrincipalNameRequest')
    CreateTemplateGroupAccessControlEntryRequest = Shapes::StructureShape.new(name: 'CreateTemplateGroupAccessControlEntryRequest')
    CreateTemplateRequest = Shapes::StructureShape.new(name: 'CreateTemplateRequest')
    CreateTemplateResponse = Shapes::StructureShape.new(name: 'CreateTemplateResponse')
    CryptoProvidersList = Shapes::ListShape.new(name: 'CryptoProvidersList')
    CryptoProvidersListMemberString = Shapes::StringShape.new(name: 'CryptoProvidersListMemberString')
    CustomObjectIdentifier = Shapes::StringShape.new(name: 'CustomObjectIdentifier')
    DeleteConnectorRequest = Shapes::StructureShape.new(name: 'DeleteConnectorRequest')
    DeleteDirectoryRegistrationRequest = Shapes::StructureShape.new(name: 'DeleteDirectoryRegistrationRequest')
    DeleteServicePrincipalNameRequest = Shapes::StructureShape.new(name: 'DeleteServicePrincipalNameRequest')
    DeleteTemplateGroupAccessControlEntryRequest = Shapes::StructureShape.new(name: 'DeleteTemplateGroupAccessControlEntryRequest')
    DeleteTemplateRequest = Shapes::StructureShape.new(name: 'DeleteTemplateRequest')
    DirectoryId = Shapes::StringShape.new(name: 'DirectoryId')
    DirectoryRegistration = Shapes::StructureShape.new(name: 'DirectoryRegistration')
    DirectoryRegistrationArn = Shapes::StringShape.new(name: 'DirectoryRegistrationArn')
    DirectoryRegistrationList = Shapes::ListShape.new(name: 'DirectoryRegistrationList')
    DirectoryRegistrationStatus = Shapes::StringShape.new(name: 'DirectoryRegistrationStatus')
    DirectoryRegistrationStatusReason = Shapes::StringShape.new(name: 'DirectoryRegistrationStatusReason')
    DirectoryRegistrationSummary = Shapes::StructureShape.new(name: 'DirectoryRegistrationSummary')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    EnrollmentFlagsV2 = Shapes::StructureShape.new(name: 'EnrollmentFlagsV2')
    EnrollmentFlagsV3 = Shapes::StructureShape.new(name: 'EnrollmentFlagsV3')
    EnrollmentFlagsV4 = Shapes::StructureShape.new(name: 'EnrollmentFlagsV4')
    ExtensionsV2 = Shapes::StructureShape.new(name: 'ExtensionsV2')
    ExtensionsV3 = Shapes::StructureShape.new(name: 'ExtensionsV3')
    ExtensionsV4 = Shapes::StructureShape.new(name: 'ExtensionsV4')
    GeneralFlagsV2 = Shapes::StructureShape.new(name: 'GeneralFlagsV2')
    GeneralFlagsV3 = Shapes::StructureShape.new(name: 'GeneralFlagsV3')
    GeneralFlagsV4 = Shapes::StructureShape.new(name: 'GeneralFlagsV4')
    GetConnectorRequest = Shapes::StructureShape.new(name: 'GetConnectorRequest')
    GetConnectorResponse = Shapes::StructureShape.new(name: 'GetConnectorResponse')
    GetDirectoryRegistrationRequest = Shapes::StructureShape.new(name: 'GetDirectoryRegistrationRequest')
    GetDirectoryRegistrationResponse = Shapes::StructureShape.new(name: 'GetDirectoryRegistrationResponse')
    GetServicePrincipalNameRequest = Shapes::StructureShape.new(name: 'GetServicePrincipalNameRequest')
    GetServicePrincipalNameResponse = Shapes::StructureShape.new(name: 'GetServicePrincipalNameResponse')
    GetTemplateGroupAccessControlEntryRequest = Shapes::StructureShape.new(name: 'GetTemplateGroupAccessControlEntryRequest')
    GetTemplateGroupAccessControlEntryResponse = Shapes::StructureShape.new(name: 'GetTemplateGroupAccessControlEntryResponse')
    GetTemplateRequest = Shapes::StructureShape.new(name: 'GetTemplateRequest')
    GetTemplateResponse = Shapes::StructureShape.new(name: 'GetTemplateResponse')
    GroupSecurityIdentifier = Shapes::StringShape.new(name: 'GroupSecurityIdentifier')
    HashAlgorithm = Shapes::StringShape.new(name: 'HashAlgorithm')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KeySpec = Shapes::StringShape.new(name: 'KeySpec')
    KeyUsage = Shapes::StructureShape.new(name: 'KeyUsage')
    KeyUsageFlags = Shapes::StructureShape.new(name: 'KeyUsageFlags')
    KeyUsageProperty = Shapes::UnionShape.new(name: 'KeyUsageProperty')
    KeyUsagePropertyFlags = Shapes::StructureShape.new(name: 'KeyUsagePropertyFlags')
    KeyUsagePropertyType = Shapes::StringShape.new(name: 'KeyUsagePropertyType')
    ListConnectorsRequest = Shapes::StructureShape.new(name: 'ListConnectorsRequest')
    ListConnectorsResponse = Shapes::StructureShape.new(name: 'ListConnectorsResponse')
    ListDirectoryRegistrationsRequest = Shapes::StructureShape.new(name: 'ListDirectoryRegistrationsRequest')
    ListDirectoryRegistrationsResponse = Shapes::StructureShape.new(name: 'ListDirectoryRegistrationsResponse')
    ListServicePrincipalNamesRequest = Shapes::StructureShape.new(name: 'ListServicePrincipalNamesRequest')
    ListServicePrincipalNamesResponse = Shapes::StructureShape.new(name: 'ListServicePrincipalNamesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTemplateGroupAccessControlEntriesRequest = Shapes::StructureShape.new(name: 'ListTemplateGroupAccessControlEntriesRequest')
    ListTemplateGroupAccessControlEntriesResponse = Shapes::StructureShape.new(name: 'ListTemplateGroupAccessControlEntriesResponse')
    ListTemplatesRequest = Shapes::StructureShape.new(name: 'ListTemplatesRequest')
    ListTemplatesResponse = Shapes::StructureShape.new(name: 'ListTemplatesResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PrivateKeyAlgorithm = Shapes::StringShape.new(name: 'PrivateKeyAlgorithm')
    PrivateKeyAttributesV2 = Shapes::StructureShape.new(name: 'PrivateKeyAttributesV2')
    PrivateKeyAttributesV2MinimalKeyLengthInteger = Shapes::IntegerShape.new(name: 'PrivateKeyAttributesV2MinimalKeyLengthInteger')
    PrivateKeyAttributesV3 = Shapes::StructureShape.new(name: 'PrivateKeyAttributesV3')
    PrivateKeyAttributesV3MinimalKeyLengthInteger = Shapes::IntegerShape.new(name: 'PrivateKeyAttributesV3MinimalKeyLengthInteger')
    PrivateKeyAttributesV4 = Shapes::StructureShape.new(name: 'PrivateKeyAttributesV4')
    PrivateKeyAttributesV4MinimalKeyLengthInteger = Shapes::IntegerShape.new(name: 'PrivateKeyAttributesV4MinimalKeyLengthInteger')
    PrivateKeyFlagsV2 = Shapes::StructureShape.new(name: 'PrivateKeyFlagsV2')
    PrivateKeyFlagsV3 = Shapes::StructureShape.new(name: 'PrivateKeyFlagsV3')
    PrivateKeyFlagsV4 = Shapes::StructureShape.new(name: 'PrivateKeyFlagsV4')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIdList = Shapes::ListShape.new(name: 'SecurityGroupIdList')
    ServicePrincipalName = Shapes::StructureShape.new(name: 'ServicePrincipalName')
    ServicePrincipalNameList = Shapes::ListShape.new(name: 'ServicePrincipalNameList')
    ServicePrincipalNameStatus = Shapes::StringShape.new(name: 'ServicePrincipalNameStatus')
    ServicePrincipalNameStatusReason = Shapes::StringShape.new(name: 'ServicePrincipalNameStatusReason')
    ServicePrincipalNameSummary = Shapes::StructureShape.new(name: 'ServicePrincipalNameSummary')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    SubjectNameFlagsV2 = Shapes::StructureShape.new(name: 'SubjectNameFlagsV2')
    SubjectNameFlagsV3 = Shapes::StructureShape.new(name: 'SubjectNameFlagsV3')
    SubjectNameFlagsV4 = Shapes::StructureShape.new(name: 'SubjectNameFlagsV4')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    Tags = Shapes::MapShape.new(name: 'Tags')
    Template = Shapes::StructureShape.new(name: 'Template')
    TemplateArn = Shapes::StringShape.new(name: 'TemplateArn')
    TemplateDefinition = Shapes::UnionShape.new(name: 'TemplateDefinition')
    TemplateList = Shapes::ListShape.new(name: 'TemplateList')
    TemplateName = Shapes::StringShape.new(name: 'TemplateName')
    TemplateNameList = Shapes::ListShape.new(name: 'TemplateNameList')
    TemplateRevision = Shapes::StructureShape.new(name: 'TemplateRevision')
    TemplateStatus = Shapes::StringShape.new(name: 'TemplateStatus')
    TemplateSummary = Shapes::StructureShape.new(name: 'TemplateSummary')
    TemplateV2 = Shapes::StructureShape.new(name: 'TemplateV2')
    TemplateV3 = Shapes::StructureShape.new(name: 'TemplateV3')
    TemplateV4 = Shapes::StructureShape.new(name: 'TemplateV4')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateTemplateGroupAccessControlEntryRequest = Shapes::StructureShape.new(name: 'UpdateTemplateGroupAccessControlEntryRequest')
    UpdateTemplateRequest = Shapes::StructureShape.new(name: 'UpdateTemplateRequest')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    ValidityPeriod = Shapes::StructureShape.new(name: 'ValidityPeriod')
    ValidityPeriodPeriodLong = Shapes::IntegerShape.new(name: 'ValidityPeriodPeriodLong')
    ValidityPeriodType = Shapes::StringShape.new(name: 'ValidityPeriodType')
    VpcInformation = Shapes::StructureShape.new(name: 'VpcInformation')

    AccessControlEntry.add_member(:access_rights, Shapes::ShapeRef.new(shape: AccessRights, location_name: "AccessRights"))
    AccessControlEntry.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    AccessControlEntry.add_member(:group_display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "GroupDisplayName"))
    AccessControlEntry.add_member(:group_security_identifier, Shapes::ShapeRef.new(shape: GroupSecurityIdentifier, location_name: "GroupSecurityIdentifier"))
    AccessControlEntry.add_member(:template_arn, Shapes::ShapeRef.new(shape: TemplateArn, location_name: "TemplateArn"))
    AccessControlEntry.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    AccessControlEntry.struct_class = Types::AccessControlEntry

    AccessControlEntryList.member = Shapes::ShapeRef.new(shape: AccessControlEntrySummary)

    AccessControlEntrySummary.add_member(:access_rights, Shapes::ShapeRef.new(shape: AccessRights, location_name: "AccessRights"))
    AccessControlEntrySummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    AccessControlEntrySummary.add_member(:group_display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "GroupDisplayName"))
    AccessControlEntrySummary.add_member(:group_security_identifier, Shapes::ShapeRef.new(shape: GroupSecurityIdentifier, location_name: "GroupSecurityIdentifier"))
    AccessControlEntrySummary.add_member(:template_arn, Shapes::ShapeRef.new(shape: TemplateArn, location_name: "TemplateArn"))
    AccessControlEntrySummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    AccessControlEntrySummary.struct_class = Types::AccessControlEntrySummary

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccessRights.add_member(:auto_enroll, Shapes::ShapeRef.new(shape: AccessRight, location_name: "AutoEnroll"))
    AccessRights.add_member(:enroll, Shapes::ShapeRef.new(shape: AccessRight, location_name: "Enroll"))
    AccessRights.struct_class = Types::AccessRights

    ApplicationPolicies.add_member(:critical, Shapes::ShapeRef.new(shape: Boolean, location_name: "Critical"))
    ApplicationPolicies.add_member(:policies, Shapes::ShapeRef.new(shape: ApplicationPolicyList, required: true, location_name: "Policies"))
    ApplicationPolicies.struct_class = Types::ApplicationPolicies

    ApplicationPolicy.add_member(:policy_object_identifier, Shapes::ShapeRef.new(shape: CustomObjectIdentifier, location_name: "PolicyObjectIdentifier"))
    ApplicationPolicy.add_member(:policy_type, Shapes::ShapeRef.new(shape: ApplicationPolicyType, location_name: "PolicyType"))
    ApplicationPolicy.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ApplicationPolicy.add_member_subclass(:policy_object_identifier, Types::ApplicationPolicy::PolicyObjectIdentifier)
    ApplicationPolicy.add_member_subclass(:policy_type, Types::ApplicationPolicy::PolicyType)
    ApplicationPolicy.add_member_subclass(:unknown, Types::ApplicationPolicy::Unknown)
    ApplicationPolicy.struct_class = Types::ApplicationPolicy

    ApplicationPolicyList.member = Shapes::ShapeRef.new(shape: ApplicationPolicy)

    CertificateValidity.add_member(:renewal_period, Shapes::ShapeRef.new(shape: ValidityPeriod, required: true, location_name: "RenewalPeriod"))
    CertificateValidity.add_member(:validity_period, Shapes::ShapeRef.new(shape: ValidityPeriod, required: true, location_name: "ValidityPeriod"))
    CertificateValidity.struct_class = Types::CertificateValidity

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ConflictException.struct_class = Types::ConflictException

    Connector.add_member(:arn, Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "Arn"))
    Connector.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: CertificateAuthorityArn, location_name: "CertificateAuthorityArn"))
    Connector.add_member(:certificate_enrollment_policy_server_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "CertificateEnrollmentPolicyServerEndpoint"))
    Connector.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    Connector.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    Connector.add_member(:status, Shapes::ShapeRef.new(shape: ConnectorStatus, location_name: "Status"))
    Connector.add_member(:status_reason, Shapes::ShapeRef.new(shape: ConnectorStatusReason, location_name: "StatusReason"))
    Connector.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    Connector.add_member(:vpc_information, Shapes::ShapeRef.new(shape: VpcInformation, location_name: "VpcInformation"))
    Connector.struct_class = Types::Connector

    ConnectorList.member = Shapes::ShapeRef.new(shape: ConnectorSummary)

    ConnectorSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "Arn"))
    ConnectorSummary.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: CertificateAuthorityArn, location_name: "CertificateAuthorityArn"))
    ConnectorSummary.add_member(:certificate_enrollment_policy_server_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "CertificateEnrollmentPolicyServerEndpoint"))
    ConnectorSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    ConnectorSummary.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    ConnectorSummary.add_member(:status, Shapes::ShapeRef.new(shape: ConnectorStatus, location_name: "Status"))
    ConnectorSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: ConnectorStatusReason, location_name: "StatusReason"))
    ConnectorSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    ConnectorSummary.add_member(:vpc_information, Shapes::ShapeRef.new(shape: VpcInformation, location_name: "VpcInformation"))
    ConnectorSummary.struct_class = Types::ConnectorSummary

    CreateConnectorRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: CertificateAuthorityArn, required: true, location_name: "CertificateAuthorityArn"))
    CreateConnectorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateConnectorRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    CreateConnectorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateConnectorRequest.add_member(:vpc_information, Shapes::ShapeRef.new(shape: VpcInformation, required: true, location_name: "VpcInformation"))
    CreateConnectorRequest.struct_class = Types::CreateConnectorRequest

    CreateConnectorResponse.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "ConnectorArn"))
    CreateConnectorResponse.struct_class = Types::CreateConnectorResponse

    CreateDirectoryRegistrationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateDirectoryRegistrationRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    CreateDirectoryRegistrationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateDirectoryRegistrationRequest.struct_class = Types::CreateDirectoryRegistrationRequest

    CreateDirectoryRegistrationResponse.add_member(:directory_registration_arn, Shapes::ShapeRef.new(shape: DirectoryRegistrationArn, location_name: "DirectoryRegistrationArn"))
    CreateDirectoryRegistrationResponse.struct_class = Types::CreateDirectoryRegistrationResponse

    CreateServicePrincipalNameRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateServicePrincipalNameRequest.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ConnectorArn, required: true, location: "uri", location_name: "ConnectorArn"))
    CreateServicePrincipalNameRequest.add_member(:directory_registration_arn, Shapes::ShapeRef.new(shape: DirectoryRegistrationArn, required: true, location: "uri", location_name: "DirectoryRegistrationArn"))
    CreateServicePrincipalNameRequest.struct_class = Types::CreateServicePrincipalNameRequest

    CreateTemplateGroupAccessControlEntryRequest.add_member(:access_rights, Shapes::ShapeRef.new(shape: AccessRights, required: true, location_name: "AccessRights"))
    CreateTemplateGroupAccessControlEntryRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateTemplateGroupAccessControlEntryRequest.add_member(:group_display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "GroupDisplayName"))
    CreateTemplateGroupAccessControlEntryRequest.add_member(:group_security_identifier, Shapes::ShapeRef.new(shape: GroupSecurityIdentifier, required: true, location_name: "GroupSecurityIdentifier"))
    CreateTemplateGroupAccessControlEntryRequest.add_member(:template_arn, Shapes::ShapeRef.new(shape: TemplateArn, required: true, location: "uri", location_name: "TemplateArn"))
    CreateTemplateGroupAccessControlEntryRequest.struct_class = Types::CreateTemplateGroupAccessControlEntryRequest

    CreateTemplateRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateTemplateRequest.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ConnectorArn, required: true, location_name: "ConnectorArn"))
    CreateTemplateRequest.add_member(:definition, Shapes::ShapeRef.new(shape: TemplateDefinition, required: true, location_name: "Definition"))
    CreateTemplateRequest.add_member(:name, Shapes::ShapeRef.new(shape: TemplateName, required: true, location_name: "Name"))
    CreateTemplateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateTemplateRequest.struct_class = Types::CreateTemplateRequest

    CreateTemplateResponse.add_member(:template_arn, Shapes::ShapeRef.new(shape: TemplateArn, location_name: "TemplateArn"))
    CreateTemplateResponse.struct_class = Types::CreateTemplateResponse

    CryptoProvidersList.member = Shapes::ShapeRef.new(shape: CryptoProvidersListMemberString)

    DeleteConnectorRequest.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ConnectorArn, required: true, location: "uri", location_name: "ConnectorArn"))
    DeleteConnectorRequest.struct_class = Types::DeleteConnectorRequest

    DeleteDirectoryRegistrationRequest.add_member(:directory_registration_arn, Shapes::ShapeRef.new(shape: DirectoryRegistrationArn, required: true, location: "uri", location_name: "DirectoryRegistrationArn"))
    DeleteDirectoryRegistrationRequest.struct_class = Types::DeleteDirectoryRegistrationRequest

    DeleteServicePrincipalNameRequest.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ConnectorArn, required: true, location: "uri", location_name: "ConnectorArn"))
    DeleteServicePrincipalNameRequest.add_member(:directory_registration_arn, Shapes::ShapeRef.new(shape: DirectoryRegistrationArn, required: true, location: "uri", location_name: "DirectoryRegistrationArn"))
    DeleteServicePrincipalNameRequest.struct_class = Types::DeleteServicePrincipalNameRequest

    DeleteTemplateGroupAccessControlEntryRequest.add_member(:group_security_identifier, Shapes::ShapeRef.new(shape: GroupSecurityIdentifier, required: true, location: "uri", location_name: "GroupSecurityIdentifier"))
    DeleteTemplateGroupAccessControlEntryRequest.add_member(:template_arn, Shapes::ShapeRef.new(shape: TemplateArn, required: true, location: "uri", location_name: "TemplateArn"))
    DeleteTemplateGroupAccessControlEntryRequest.struct_class = Types::DeleteTemplateGroupAccessControlEntryRequest

    DeleteTemplateRequest.add_member(:template_arn, Shapes::ShapeRef.new(shape: TemplateArn, required: true, location: "uri", location_name: "TemplateArn"))
    DeleteTemplateRequest.struct_class = Types::DeleteTemplateRequest

    DirectoryRegistration.add_member(:arn, Shapes::ShapeRef.new(shape: DirectoryRegistrationArn, location_name: "Arn"))
    DirectoryRegistration.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DirectoryRegistration.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    DirectoryRegistration.add_member(:status, Shapes::ShapeRef.new(shape: DirectoryRegistrationStatus, location_name: "Status"))
    DirectoryRegistration.add_member(:status_reason, Shapes::ShapeRef.new(shape: DirectoryRegistrationStatusReason, location_name: "StatusReason"))
    DirectoryRegistration.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    DirectoryRegistration.struct_class = Types::DirectoryRegistration

    DirectoryRegistrationList.member = Shapes::ShapeRef.new(shape: DirectoryRegistrationSummary)

    DirectoryRegistrationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: DirectoryRegistrationArn, location_name: "Arn"))
    DirectoryRegistrationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DirectoryRegistrationSummary.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    DirectoryRegistrationSummary.add_member(:status, Shapes::ShapeRef.new(shape: DirectoryRegistrationStatus, location_name: "Status"))
    DirectoryRegistrationSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: DirectoryRegistrationStatusReason, location_name: "StatusReason"))
    DirectoryRegistrationSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    DirectoryRegistrationSummary.struct_class = Types::DirectoryRegistrationSummary

    EnrollmentFlagsV2.add_member(:enable_key_reuse_on_nt_token_keyset_storage_full, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableKeyReuseOnNtTokenKeysetStorageFull"))
    EnrollmentFlagsV2.add_member(:include_symmetric_algorithms, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeSymmetricAlgorithms"))
    EnrollmentFlagsV2.add_member(:no_security_extension, Shapes::ShapeRef.new(shape: Boolean, location_name: "NoSecurityExtension"))
    EnrollmentFlagsV2.add_member(:remove_invalid_certificate_from_personal_store, Shapes::ShapeRef.new(shape: Boolean, location_name: "RemoveInvalidCertificateFromPersonalStore"))
    EnrollmentFlagsV2.add_member(:user_interaction_required, Shapes::ShapeRef.new(shape: Boolean, location_name: "UserInteractionRequired"))
    EnrollmentFlagsV2.struct_class = Types::EnrollmentFlagsV2

    EnrollmentFlagsV3.add_member(:enable_key_reuse_on_nt_token_keyset_storage_full, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableKeyReuseOnNtTokenKeysetStorageFull"))
    EnrollmentFlagsV3.add_member(:include_symmetric_algorithms, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeSymmetricAlgorithms"))
    EnrollmentFlagsV3.add_member(:no_security_extension, Shapes::ShapeRef.new(shape: Boolean, location_name: "NoSecurityExtension"))
    EnrollmentFlagsV3.add_member(:remove_invalid_certificate_from_personal_store, Shapes::ShapeRef.new(shape: Boolean, location_name: "RemoveInvalidCertificateFromPersonalStore"))
    EnrollmentFlagsV3.add_member(:user_interaction_required, Shapes::ShapeRef.new(shape: Boolean, location_name: "UserInteractionRequired"))
    EnrollmentFlagsV3.struct_class = Types::EnrollmentFlagsV3

    EnrollmentFlagsV4.add_member(:enable_key_reuse_on_nt_token_keyset_storage_full, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableKeyReuseOnNtTokenKeysetStorageFull"))
    EnrollmentFlagsV4.add_member(:include_symmetric_algorithms, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeSymmetricAlgorithms"))
    EnrollmentFlagsV4.add_member(:no_security_extension, Shapes::ShapeRef.new(shape: Boolean, location_name: "NoSecurityExtension"))
    EnrollmentFlagsV4.add_member(:remove_invalid_certificate_from_personal_store, Shapes::ShapeRef.new(shape: Boolean, location_name: "RemoveInvalidCertificateFromPersonalStore"))
    EnrollmentFlagsV4.add_member(:user_interaction_required, Shapes::ShapeRef.new(shape: Boolean, location_name: "UserInteractionRequired"))
    EnrollmentFlagsV4.struct_class = Types::EnrollmentFlagsV4

    ExtensionsV2.add_member(:application_policies, Shapes::ShapeRef.new(shape: ApplicationPolicies, location_name: "ApplicationPolicies"))
    ExtensionsV2.add_member(:key_usage, Shapes::ShapeRef.new(shape: KeyUsage, required: true, location_name: "KeyUsage"))
    ExtensionsV2.struct_class = Types::ExtensionsV2

    ExtensionsV3.add_member(:application_policies, Shapes::ShapeRef.new(shape: ApplicationPolicies, location_name: "ApplicationPolicies"))
    ExtensionsV3.add_member(:key_usage, Shapes::ShapeRef.new(shape: KeyUsage, required: true, location_name: "KeyUsage"))
    ExtensionsV3.struct_class = Types::ExtensionsV3

    ExtensionsV4.add_member(:application_policies, Shapes::ShapeRef.new(shape: ApplicationPolicies, location_name: "ApplicationPolicies"))
    ExtensionsV4.add_member(:key_usage, Shapes::ShapeRef.new(shape: KeyUsage, required: true, location_name: "KeyUsage"))
    ExtensionsV4.struct_class = Types::ExtensionsV4

    GeneralFlagsV2.add_member(:auto_enrollment, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoEnrollment"))
    GeneralFlagsV2.add_member(:machine_type, Shapes::ShapeRef.new(shape: Boolean, location_name: "MachineType"))
    GeneralFlagsV2.struct_class = Types::GeneralFlagsV2

    GeneralFlagsV3.add_member(:auto_enrollment, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoEnrollment"))
    GeneralFlagsV3.add_member(:machine_type, Shapes::ShapeRef.new(shape: Boolean, location_name: "MachineType"))
    GeneralFlagsV3.struct_class = Types::GeneralFlagsV3

    GeneralFlagsV4.add_member(:auto_enrollment, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoEnrollment"))
    GeneralFlagsV4.add_member(:machine_type, Shapes::ShapeRef.new(shape: Boolean, location_name: "MachineType"))
    GeneralFlagsV4.struct_class = Types::GeneralFlagsV4

    GetConnectorRequest.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ConnectorArn, required: true, location: "uri", location_name: "ConnectorArn"))
    GetConnectorRequest.struct_class = Types::GetConnectorRequest

    GetConnectorResponse.add_member(:connector, Shapes::ShapeRef.new(shape: Connector, location_name: "Connector"))
    GetConnectorResponse.struct_class = Types::GetConnectorResponse

    GetDirectoryRegistrationRequest.add_member(:directory_registration_arn, Shapes::ShapeRef.new(shape: DirectoryRegistrationArn, required: true, location: "uri", location_name: "DirectoryRegistrationArn"))
    GetDirectoryRegistrationRequest.struct_class = Types::GetDirectoryRegistrationRequest

    GetDirectoryRegistrationResponse.add_member(:directory_registration, Shapes::ShapeRef.new(shape: DirectoryRegistration, location_name: "DirectoryRegistration"))
    GetDirectoryRegistrationResponse.struct_class = Types::GetDirectoryRegistrationResponse

    GetServicePrincipalNameRequest.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ConnectorArn, required: true, location: "uri", location_name: "ConnectorArn"))
    GetServicePrincipalNameRequest.add_member(:directory_registration_arn, Shapes::ShapeRef.new(shape: DirectoryRegistrationArn, required: true, location: "uri", location_name: "DirectoryRegistrationArn"))
    GetServicePrincipalNameRequest.struct_class = Types::GetServicePrincipalNameRequest

    GetServicePrincipalNameResponse.add_member(:service_principal_name, Shapes::ShapeRef.new(shape: ServicePrincipalName, location_name: "ServicePrincipalName"))
    GetServicePrincipalNameResponse.struct_class = Types::GetServicePrincipalNameResponse

    GetTemplateGroupAccessControlEntryRequest.add_member(:group_security_identifier, Shapes::ShapeRef.new(shape: GroupSecurityIdentifier, required: true, location: "uri", location_name: "GroupSecurityIdentifier"))
    GetTemplateGroupAccessControlEntryRequest.add_member(:template_arn, Shapes::ShapeRef.new(shape: TemplateArn, required: true, location: "uri", location_name: "TemplateArn"))
    GetTemplateGroupAccessControlEntryRequest.struct_class = Types::GetTemplateGroupAccessControlEntryRequest

    GetTemplateGroupAccessControlEntryResponse.add_member(:access_control_entry, Shapes::ShapeRef.new(shape: AccessControlEntry, location_name: "AccessControlEntry"))
    GetTemplateGroupAccessControlEntryResponse.struct_class = Types::GetTemplateGroupAccessControlEntryResponse

    GetTemplateRequest.add_member(:template_arn, Shapes::ShapeRef.new(shape: TemplateArn, required: true, location: "uri", location_name: "TemplateArn"))
    GetTemplateRequest.struct_class = Types::GetTemplateRequest

    GetTemplateResponse.add_member(:template, Shapes::ShapeRef.new(shape: Template, location_name: "Template"))
    GetTemplateResponse.struct_class = Types::GetTemplateResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    KeyUsage.add_member(:critical, Shapes::ShapeRef.new(shape: Boolean, location_name: "Critical"))
    KeyUsage.add_member(:usage_flags, Shapes::ShapeRef.new(shape: KeyUsageFlags, required: true, location_name: "UsageFlags"))
    KeyUsage.struct_class = Types::KeyUsage

    KeyUsageFlags.add_member(:data_encipherment, Shapes::ShapeRef.new(shape: Boolean, location_name: "DataEncipherment"))
    KeyUsageFlags.add_member(:digital_signature, Shapes::ShapeRef.new(shape: Boolean, location_name: "DigitalSignature"))
    KeyUsageFlags.add_member(:key_agreement, Shapes::ShapeRef.new(shape: Boolean, location_name: "KeyAgreement"))
    KeyUsageFlags.add_member(:key_encipherment, Shapes::ShapeRef.new(shape: Boolean, location_name: "KeyEncipherment"))
    KeyUsageFlags.add_member(:non_repudiation, Shapes::ShapeRef.new(shape: Boolean, location_name: "NonRepudiation"))
    KeyUsageFlags.struct_class = Types::KeyUsageFlags

    KeyUsageProperty.add_member(:property_flags, Shapes::ShapeRef.new(shape: KeyUsagePropertyFlags, location_name: "PropertyFlags"))
    KeyUsageProperty.add_member(:property_type, Shapes::ShapeRef.new(shape: KeyUsagePropertyType, location_name: "PropertyType"))
    KeyUsageProperty.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    KeyUsageProperty.add_member_subclass(:property_flags, Types::KeyUsageProperty::PropertyFlags)
    KeyUsageProperty.add_member_subclass(:property_type, Types::KeyUsageProperty::PropertyType)
    KeyUsageProperty.add_member_subclass(:unknown, Types::KeyUsageProperty::Unknown)
    KeyUsageProperty.struct_class = Types::KeyUsageProperty

    KeyUsagePropertyFlags.add_member(:decrypt, Shapes::ShapeRef.new(shape: Boolean, location_name: "Decrypt"))
    KeyUsagePropertyFlags.add_member(:key_agreement, Shapes::ShapeRef.new(shape: Boolean, location_name: "KeyAgreement"))
    KeyUsagePropertyFlags.add_member(:sign, Shapes::ShapeRef.new(shape: Boolean, location_name: "Sign"))
    KeyUsagePropertyFlags.struct_class = Types::KeyUsagePropertyFlags

    ListConnectorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListConnectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListConnectorsRequest.struct_class = Types::ListConnectorsRequest

    ListConnectorsResponse.add_member(:connectors, Shapes::ShapeRef.new(shape: ConnectorList, location_name: "Connectors"))
    ListConnectorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConnectorsResponse.struct_class = Types::ListConnectorsResponse

    ListDirectoryRegistrationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListDirectoryRegistrationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListDirectoryRegistrationsRequest.struct_class = Types::ListDirectoryRegistrationsRequest

    ListDirectoryRegistrationsResponse.add_member(:directory_registrations, Shapes::ShapeRef.new(shape: DirectoryRegistrationList, location_name: "DirectoryRegistrations"))
    ListDirectoryRegistrationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDirectoryRegistrationsResponse.struct_class = Types::ListDirectoryRegistrationsResponse

    ListServicePrincipalNamesRequest.add_member(:directory_registration_arn, Shapes::ShapeRef.new(shape: DirectoryRegistrationArn, required: true, location: "uri", location_name: "DirectoryRegistrationArn"))
    ListServicePrincipalNamesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListServicePrincipalNamesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListServicePrincipalNamesRequest.struct_class = Types::ListServicePrincipalNamesRequest

    ListServicePrincipalNamesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServicePrincipalNamesResponse.add_member(:service_principal_names, Shapes::ShapeRef.new(shape: ServicePrincipalNameList, location_name: "ServicePrincipalNames"))
    ListServicePrincipalNamesResponse.struct_class = Types::ListServicePrincipalNamesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTemplateGroupAccessControlEntriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListTemplateGroupAccessControlEntriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListTemplateGroupAccessControlEntriesRequest.add_member(:template_arn, Shapes::ShapeRef.new(shape: TemplateArn, required: true, location: "uri", location_name: "TemplateArn"))
    ListTemplateGroupAccessControlEntriesRequest.struct_class = Types::ListTemplateGroupAccessControlEntriesRequest

    ListTemplateGroupAccessControlEntriesResponse.add_member(:access_control_entries, Shapes::ShapeRef.new(shape: AccessControlEntryList, location_name: "AccessControlEntries"))
    ListTemplateGroupAccessControlEntriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTemplateGroupAccessControlEntriesResponse.struct_class = Types::ListTemplateGroupAccessControlEntriesResponse

    ListTemplatesRequest.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ConnectorArn, required: true, location: "querystring", location_name: "ConnectorArn"))
    ListTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListTemplatesRequest.struct_class = Types::ListTemplatesRequest

    ListTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTemplatesResponse.add_member(:templates, Shapes::ShapeRef.new(shape: TemplateList, location_name: "Templates"))
    ListTemplatesResponse.struct_class = Types::ListTemplatesResponse

    PrivateKeyAttributesV2.add_member(:crypto_providers, Shapes::ShapeRef.new(shape: CryptoProvidersList, location_name: "CryptoProviders"))
    PrivateKeyAttributesV2.add_member(:key_spec, Shapes::ShapeRef.new(shape: KeySpec, required: true, location_name: "KeySpec"))
    PrivateKeyAttributesV2.add_member(:minimal_key_length, Shapes::ShapeRef.new(shape: PrivateKeyAttributesV2MinimalKeyLengthInteger, required: true, location_name: "MinimalKeyLength"))
    PrivateKeyAttributesV2.struct_class = Types::PrivateKeyAttributesV2

    PrivateKeyAttributesV3.add_member(:algorithm, Shapes::ShapeRef.new(shape: PrivateKeyAlgorithm, required: true, location_name: "Algorithm"))
    PrivateKeyAttributesV3.add_member(:crypto_providers, Shapes::ShapeRef.new(shape: CryptoProvidersList, location_name: "CryptoProviders"))
    PrivateKeyAttributesV3.add_member(:key_spec, Shapes::ShapeRef.new(shape: KeySpec, required: true, location_name: "KeySpec"))
    PrivateKeyAttributesV3.add_member(:key_usage_property, Shapes::ShapeRef.new(shape: KeyUsageProperty, required: true, location_name: "KeyUsageProperty"))
    PrivateKeyAttributesV3.add_member(:minimal_key_length, Shapes::ShapeRef.new(shape: PrivateKeyAttributesV3MinimalKeyLengthInteger, required: true, location_name: "MinimalKeyLength"))
    PrivateKeyAttributesV3.struct_class = Types::PrivateKeyAttributesV3

    PrivateKeyAttributesV4.add_member(:algorithm, Shapes::ShapeRef.new(shape: PrivateKeyAlgorithm, location_name: "Algorithm"))
    PrivateKeyAttributesV4.add_member(:crypto_providers, Shapes::ShapeRef.new(shape: CryptoProvidersList, location_name: "CryptoProviders"))
    PrivateKeyAttributesV4.add_member(:key_spec, Shapes::ShapeRef.new(shape: KeySpec, required: true, location_name: "KeySpec"))
    PrivateKeyAttributesV4.add_member(:key_usage_property, Shapes::ShapeRef.new(shape: KeyUsageProperty, location_name: "KeyUsageProperty"))
    PrivateKeyAttributesV4.add_member(:minimal_key_length, Shapes::ShapeRef.new(shape: PrivateKeyAttributesV4MinimalKeyLengthInteger, required: true, location_name: "MinimalKeyLength"))
    PrivateKeyAttributesV4.struct_class = Types::PrivateKeyAttributesV4

    PrivateKeyFlagsV2.add_member(:client_version, Shapes::ShapeRef.new(shape: ClientCompatibilityV2, required: true, location_name: "ClientVersion"))
    PrivateKeyFlagsV2.add_member(:exportable_key, Shapes::ShapeRef.new(shape: Boolean, location_name: "ExportableKey"))
    PrivateKeyFlagsV2.add_member(:strong_key_protection_required, Shapes::ShapeRef.new(shape: Boolean, location_name: "StrongKeyProtectionRequired"))
    PrivateKeyFlagsV2.struct_class = Types::PrivateKeyFlagsV2

    PrivateKeyFlagsV3.add_member(:client_version, Shapes::ShapeRef.new(shape: ClientCompatibilityV3, required: true, location_name: "ClientVersion"))
    PrivateKeyFlagsV3.add_member(:exportable_key, Shapes::ShapeRef.new(shape: Boolean, location_name: "ExportableKey"))
    PrivateKeyFlagsV3.add_member(:require_alternate_signature_algorithm, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireAlternateSignatureAlgorithm"))
    PrivateKeyFlagsV3.add_member(:strong_key_protection_required, Shapes::ShapeRef.new(shape: Boolean, location_name: "StrongKeyProtectionRequired"))
    PrivateKeyFlagsV3.struct_class = Types::PrivateKeyFlagsV3

    PrivateKeyFlagsV4.add_member(:client_version, Shapes::ShapeRef.new(shape: ClientCompatibilityV4, required: true, location_name: "ClientVersion"))
    PrivateKeyFlagsV4.add_member(:exportable_key, Shapes::ShapeRef.new(shape: Boolean, location_name: "ExportableKey"))
    PrivateKeyFlagsV4.add_member(:require_alternate_signature_algorithm, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireAlternateSignatureAlgorithm"))
    PrivateKeyFlagsV4.add_member(:require_same_key_renewal, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireSameKeyRenewal"))
    PrivateKeyFlagsV4.add_member(:strong_key_protection_required, Shapes::ShapeRef.new(shape: Boolean, location_name: "StrongKeyProtectionRequired"))
    PrivateKeyFlagsV4.add_member(:use_legacy_provider, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseLegacyProvider"))
    PrivateKeyFlagsV4.struct_class = Types::PrivateKeyFlagsV4

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SecurityGroupIdList.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    ServicePrincipalName.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "ConnectorArn"))
    ServicePrincipalName.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    ServicePrincipalName.add_member(:directory_registration_arn, Shapes::ShapeRef.new(shape: DirectoryRegistrationArn, location_name: "DirectoryRegistrationArn"))
    ServicePrincipalName.add_member(:status, Shapes::ShapeRef.new(shape: ServicePrincipalNameStatus, location_name: "Status"))
    ServicePrincipalName.add_member(:status_reason, Shapes::ShapeRef.new(shape: ServicePrincipalNameStatusReason, location_name: "StatusReason"))
    ServicePrincipalName.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    ServicePrincipalName.struct_class = Types::ServicePrincipalName

    ServicePrincipalNameList.member = Shapes::ShapeRef.new(shape: ServicePrincipalNameSummary)

    ServicePrincipalNameSummary.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "ConnectorArn"))
    ServicePrincipalNameSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    ServicePrincipalNameSummary.add_member(:directory_registration_arn, Shapes::ShapeRef.new(shape: DirectoryRegistrationArn, location_name: "DirectoryRegistrationArn"))
    ServicePrincipalNameSummary.add_member(:status, Shapes::ShapeRef.new(shape: ServicePrincipalNameStatus, location_name: "Status"))
    ServicePrincipalNameSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: ServicePrincipalNameStatusReason, location_name: "StatusReason"))
    ServicePrincipalNameSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    ServicePrincipalNameSummary.struct_class = Types::ServicePrincipalNameSummary

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QuotaCode"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SubjectNameFlagsV2.add_member(:require_common_name, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireCommonName"))
    SubjectNameFlagsV2.add_member(:require_directory_path, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireDirectoryPath"))
    SubjectNameFlagsV2.add_member(:require_dns_as_cn, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireDnsAsCn"))
    SubjectNameFlagsV2.add_member(:require_email, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireEmail"))
    SubjectNameFlagsV2.add_member(:san_require_directory_guid, Shapes::ShapeRef.new(shape: Boolean, location_name: "SanRequireDirectoryGuid"))
    SubjectNameFlagsV2.add_member(:san_require_dns, Shapes::ShapeRef.new(shape: Boolean, location_name: "SanRequireDns"))
    SubjectNameFlagsV2.add_member(:san_require_domain_dns, Shapes::ShapeRef.new(shape: Boolean, location_name: "SanRequireDomainDns"))
    SubjectNameFlagsV2.add_member(:san_require_email, Shapes::ShapeRef.new(shape: Boolean, location_name: "SanRequireEmail"))
    SubjectNameFlagsV2.add_member(:san_require_spn, Shapes::ShapeRef.new(shape: Boolean, location_name: "SanRequireSpn"))
    SubjectNameFlagsV2.add_member(:san_require_upn, Shapes::ShapeRef.new(shape: Boolean, location_name: "SanRequireUpn"))
    SubjectNameFlagsV2.struct_class = Types::SubjectNameFlagsV2

    SubjectNameFlagsV3.add_member(:require_common_name, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireCommonName"))
    SubjectNameFlagsV3.add_member(:require_directory_path, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireDirectoryPath"))
    SubjectNameFlagsV3.add_member(:require_dns_as_cn, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireDnsAsCn"))
    SubjectNameFlagsV3.add_member(:require_email, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireEmail"))
    SubjectNameFlagsV3.add_member(:san_require_directory_guid, Shapes::ShapeRef.new(shape: Boolean, location_name: "SanRequireDirectoryGuid"))
    SubjectNameFlagsV3.add_member(:san_require_dns, Shapes::ShapeRef.new(shape: Boolean, location_name: "SanRequireDns"))
    SubjectNameFlagsV3.add_member(:san_require_domain_dns, Shapes::ShapeRef.new(shape: Boolean, location_name: "SanRequireDomainDns"))
    SubjectNameFlagsV3.add_member(:san_require_email, Shapes::ShapeRef.new(shape: Boolean, location_name: "SanRequireEmail"))
    SubjectNameFlagsV3.add_member(:san_require_spn, Shapes::ShapeRef.new(shape: Boolean, location_name: "SanRequireSpn"))
    SubjectNameFlagsV3.add_member(:san_require_upn, Shapes::ShapeRef.new(shape: Boolean, location_name: "SanRequireUpn"))
    SubjectNameFlagsV3.struct_class = Types::SubjectNameFlagsV3

    SubjectNameFlagsV4.add_member(:require_common_name, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireCommonName"))
    SubjectNameFlagsV4.add_member(:require_directory_path, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireDirectoryPath"))
    SubjectNameFlagsV4.add_member(:require_dns_as_cn, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireDnsAsCn"))
    SubjectNameFlagsV4.add_member(:require_email, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireEmail"))
    SubjectNameFlagsV4.add_member(:san_require_directory_guid, Shapes::ShapeRef.new(shape: Boolean, location_name: "SanRequireDirectoryGuid"))
    SubjectNameFlagsV4.add_member(:san_require_dns, Shapes::ShapeRef.new(shape: Boolean, location_name: "SanRequireDns"))
    SubjectNameFlagsV4.add_member(:san_require_domain_dns, Shapes::ShapeRef.new(shape: Boolean, location_name: "SanRequireDomainDns"))
    SubjectNameFlagsV4.add_member(:san_require_email, Shapes::ShapeRef.new(shape: Boolean, location_name: "SanRequireEmail"))
    SubjectNameFlagsV4.add_member(:san_require_spn, Shapes::ShapeRef.new(shape: Boolean, location_name: "SanRequireSpn"))
    SubjectNameFlagsV4.add_member(:san_require_upn, Shapes::ShapeRef.new(shape: Boolean, location_name: "SanRequireUpn"))
    SubjectNameFlagsV4.struct_class = Types::SubjectNameFlagsV4

    TagKeyList.member = Shapes::ShapeRef.new(shape: String)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    Tags.key = Shapes::ShapeRef.new(shape: String)
    Tags.value = Shapes::ShapeRef.new(shape: String)

    Template.add_member(:arn, Shapes::ShapeRef.new(shape: TemplateArn, location_name: "Arn"))
    Template.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "ConnectorArn"))
    Template.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    Template.add_member(:definition, Shapes::ShapeRef.new(shape: TemplateDefinition, location_name: "Definition"))
    Template.add_member(:name, Shapes::ShapeRef.new(shape: TemplateName, location_name: "Name"))
    Template.add_member(:object_identifier, Shapes::ShapeRef.new(shape: CustomObjectIdentifier, location_name: "ObjectIdentifier"))
    Template.add_member(:policy_schema, Shapes::ShapeRef.new(shape: Integer, location_name: "PolicySchema"))
    Template.add_member(:revision, Shapes::ShapeRef.new(shape: TemplateRevision, location_name: "Revision"))
    Template.add_member(:status, Shapes::ShapeRef.new(shape: TemplateStatus, location_name: "Status"))
    Template.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    Template.struct_class = Types::Template

    TemplateDefinition.add_member(:template_v2, Shapes::ShapeRef.new(shape: TemplateV2, location_name: "TemplateV2"))
    TemplateDefinition.add_member(:template_v3, Shapes::ShapeRef.new(shape: TemplateV3, location_name: "TemplateV3"))
    TemplateDefinition.add_member(:template_v4, Shapes::ShapeRef.new(shape: TemplateV4, location_name: "TemplateV4"))
    TemplateDefinition.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TemplateDefinition.add_member_subclass(:template_v2, Types::TemplateDefinition::TemplateV2)
    TemplateDefinition.add_member_subclass(:template_v3, Types::TemplateDefinition::TemplateV3)
    TemplateDefinition.add_member_subclass(:template_v4, Types::TemplateDefinition::TemplateV4)
    TemplateDefinition.add_member_subclass(:unknown, Types::TemplateDefinition::Unknown)
    TemplateDefinition.struct_class = Types::TemplateDefinition

    TemplateList.member = Shapes::ShapeRef.new(shape: TemplateSummary)

    TemplateNameList.member = Shapes::ShapeRef.new(shape: TemplateName)

    TemplateRevision.add_member(:major_revision, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "MajorRevision"))
    TemplateRevision.add_member(:minor_revision, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "MinorRevision"))
    TemplateRevision.struct_class = Types::TemplateRevision

    TemplateSummary.add_member(:arn, Shapes::ShapeRef.new(shape: TemplateArn, location_name: "Arn"))
    TemplateSummary.add_member(:connector_arn, Shapes::ShapeRef.new(shape: ConnectorArn, location_name: "ConnectorArn"))
    TemplateSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    TemplateSummary.add_member(:definition, Shapes::ShapeRef.new(shape: TemplateDefinition, location_name: "Definition"))
    TemplateSummary.add_member(:name, Shapes::ShapeRef.new(shape: TemplateName, location_name: "Name"))
    TemplateSummary.add_member(:object_identifier, Shapes::ShapeRef.new(shape: CustomObjectIdentifier, location_name: "ObjectIdentifier"))
    TemplateSummary.add_member(:policy_schema, Shapes::ShapeRef.new(shape: Integer, location_name: "PolicySchema"))
    TemplateSummary.add_member(:revision, Shapes::ShapeRef.new(shape: TemplateRevision, location_name: "Revision"))
    TemplateSummary.add_member(:status, Shapes::ShapeRef.new(shape: TemplateStatus, location_name: "Status"))
    TemplateSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    TemplateSummary.struct_class = Types::TemplateSummary

    TemplateV2.add_member(:certificate_validity, Shapes::ShapeRef.new(shape: CertificateValidity, required: true, location_name: "CertificateValidity"))
    TemplateV2.add_member(:enrollment_flags, Shapes::ShapeRef.new(shape: EnrollmentFlagsV2, required: true, location_name: "EnrollmentFlags"))
    TemplateV2.add_member(:extensions, Shapes::ShapeRef.new(shape: ExtensionsV2, required: true, location_name: "Extensions"))
    TemplateV2.add_member(:general_flags, Shapes::ShapeRef.new(shape: GeneralFlagsV2, required: true, location_name: "GeneralFlags"))
    TemplateV2.add_member(:private_key_attributes, Shapes::ShapeRef.new(shape: PrivateKeyAttributesV2, required: true, location_name: "PrivateKeyAttributes"))
    TemplateV2.add_member(:private_key_flags, Shapes::ShapeRef.new(shape: PrivateKeyFlagsV2, required: true, location_name: "PrivateKeyFlags"))
    TemplateV2.add_member(:subject_name_flags, Shapes::ShapeRef.new(shape: SubjectNameFlagsV2, required: true, location_name: "SubjectNameFlags"))
    TemplateV2.add_member(:superseded_templates, Shapes::ShapeRef.new(shape: TemplateNameList, location_name: "SupersededTemplates"))
    TemplateV2.struct_class = Types::TemplateV2

    TemplateV3.add_member(:certificate_validity, Shapes::ShapeRef.new(shape: CertificateValidity, required: true, location_name: "CertificateValidity"))
    TemplateV3.add_member(:enrollment_flags, Shapes::ShapeRef.new(shape: EnrollmentFlagsV3, required: true, location_name: "EnrollmentFlags"))
    TemplateV3.add_member(:extensions, Shapes::ShapeRef.new(shape: ExtensionsV3, required: true, location_name: "Extensions"))
    TemplateV3.add_member(:general_flags, Shapes::ShapeRef.new(shape: GeneralFlagsV3, required: true, location_name: "GeneralFlags"))
    TemplateV3.add_member(:hash_algorithm, Shapes::ShapeRef.new(shape: HashAlgorithm, required: true, location_name: "HashAlgorithm"))
    TemplateV3.add_member(:private_key_attributes, Shapes::ShapeRef.new(shape: PrivateKeyAttributesV3, required: true, location_name: "PrivateKeyAttributes"))
    TemplateV3.add_member(:private_key_flags, Shapes::ShapeRef.new(shape: PrivateKeyFlagsV3, required: true, location_name: "PrivateKeyFlags"))
    TemplateV3.add_member(:subject_name_flags, Shapes::ShapeRef.new(shape: SubjectNameFlagsV3, required: true, location_name: "SubjectNameFlags"))
    TemplateV3.add_member(:superseded_templates, Shapes::ShapeRef.new(shape: TemplateNameList, location_name: "SupersededTemplates"))
    TemplateV3.struct_class = Types::TemplateV3

    TemplateV4.add_member(:certificate_validity, Shapes::ShapeRef.new(shape: CertificateValidity, required: true, location_name: "CertificateValidity"))
    TemplateV4.add_member(:enrollment_flags, Shapes::ShapeRef.new(shape: EnrollmentFlagsV4, required: true, location_name: "EnrollmentFlags"))
    TemplateV4.add_member(:extensions, Shapes::ShapeRef.new(shape: ExtensionsV4, required: true, location_name: "Extensions"))
    TemplateV4.add_member(:general_flags, Shapes::ShapeRef.new(shape: GeneralFlagsV4, required: true, location_name: "GeneralFlags"))
    TemplateV4.add_member(:hash_algorithm, Shapes::ShapeRef.new(shape: HashAlgorithm, location_name: "HashAlgorithm"))
    TemplateV4.add_member(:private_key_attributes, Shapes::ShapeRef.new(shape: PrivateKeyAttributesV4, required: true, location_name: "PrivateKeyAttributes"))
    TemplateV4.add_member(:private_key_flags, Shapes::ShapeRef.new(shape: PrivateKeyFlagsV4, required: true, location_name: "PrivateKeyFlags"))
    TemplateV4.add_member(:subject_name_flags, Shapes::ShapeRef.new(shape: SubjectNameFlagsV4, required: true, location_name: "SubjectNameFlags"))
    TemplateV4.add_member(:superseded_templates, Shapes::ShapeRef.new(shape: TemplateNameList, location_name: "SupersededTemplates"))
    TemplateV4.struct_class = Types::TemplateV4

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "QuotaCode"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "ServiceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateTemplateGroupAccessControlEntryRequest.add_member(:access_rights, Shapes::ShapeRef.new(shape: AccessRights, location_name: "AccessRights"))
    UpdateTemplateGroupAccessControlEntryRequest.add_member(:group_display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "GroupDisplayName"))
    UpdateTemplateGroupAccessControlEntryRequest.add_member(:group_security_identifier, Shapes::ShapeRef.new(shape: GroupSecurityIdentifier, required: true, location: "uri", location_name: "GroupSecurityIdentifier"))
    UpdateTemplateGroupAccessControlEntryRequest.add_member(:template_arn, Shapes::ShapeRef.new(shape: TemplateArn, required: true, location: "uri", location_name: "TemplateArn"))
    UpdateTemplateGroupAccessControlEntryRequest.struct_class = Types::UpdateTemplateGroupAccessControlEntryRequest

    UpdateTemplateRequest.add_member(:definition, Shapes::ShapeRef.new(shape: TemplateDefinition, location_name: "Definition"))
    UpdateTemplateRequest.add_member(:reenroll_all_certificate_holders, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReenrollAllCertificateHolders"))
    UpdateTemplateRequest.add_member(:template_arn, Shapes::ShapeRef.new(shape: TemplateArn, required: true, location: "uri", location_name: "TemplateArn"))
    UpdateTemplateRequest.struct_class = Types::UpdateTemplateRequest

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidityPeriod.add_member(:period, Shapes::ShapeRef.new(shape: ValidityPeriodPeriodLong, required: true, location_name: "Period"))
    ValidityPeriod.add_member(:period_type, Shapes::ShapeRef.new(shape: ValidityPeriodType, required: true, location_name: "PeriodType"))
    ValidityPeriod.struct_class = Types::ValidityPeriod

    VpcInformation.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, required: true, location_name: "SecurityGroupIds"))
    VpcInformation.struct_class = Types::VpcInformation


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "endpointPrefix" => "pca-connector-ad",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "PcaConnectorAd",
        "serviceId" => "Pca Connector Ad",
        "signatureVersion" => "v4",
        "signingName" => "pca-connector-ad",
        "uid" => "pca-connector-ad-2018-05-10",
      }

      api.add_operation(:create_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConnector"
        o.http_method = "POST"
        o.http_request_uri = "/connectors"
        o.input = Shapes::ShapeRef.new(shape: CreateConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_directory_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDirectoryRegistration"
        o.http_method = "POST"
        o.http_request_uri = "/directoryRegistrations"
        o.input = Shapes::ShapeRef.new(shape: CreateDirectoryRegistrationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDirectoryRegistrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_service_principal_name, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateServicePrincipalName"
        o.http_method = "POST"
        o.http_request_uri = "/directoryRegistrations/{DirectoryRegistrationArn}/servicePrincipalNames/{ConnectorArn}"
        o.input = Shapes::ShapeRef.new(shape: CreateServicePrincipalNameRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/templates"
        o.input = Shapes::ShapeRef.new(shape: CreateTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_template_group_access_control_entry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTemplateGroupAccessControlEntry"
        o.http_method = "POST"
        o.http_request_uri = "/templates/{TemplateArn}/accessControlEntries"
        o.input = Shapes::ShapeRef.new(shape: CreateTemplateGroupAccessControlEntryRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnector"
        o.http_method = "DELETE"
        o.http_request_uri = "/connectors/{ConnectorArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_directory_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDirectoryRegistration"
        o.http_method = "DELETE"
        o.http_request_uri = "/directoryRegistrations/{DirectoryRegistrationArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDirectoryRegistrationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_service_principal_name, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteServicePrincipalName"
        o.http_method = "DELETE"
        o.http_request_uri = "/directoryRegistrations/{DirectoryRegistrationArn}/servicePrincipalNames/{ConnectorArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteServicePrincipalNameRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTemplate"
        o.http_method = "DELETE"
        o.http_request_uri = "/templates/{TemplateArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_template_group_access_control_entry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTemplateGroupAccessControlEntry"
        o.http_method = "DELETE"
        o.http_request_uri = "/templates/{TemplateArn}/accessControlEntries/{GroupSecurityIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTemplateGroupAccessControlEntryRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnector"
        o.http_method = "GET"
        o.http_request_uri = "/connectors/{ConnectorArn}"
        o.input = Shapes::ShapeRef.new(shape: GetConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_directory_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDirectoryRegistration"
        o.http_method = "GET"
        o.http_request_uri = "/directoryRegistrations/{DirectoryRegistrationArn}"
        o.input = Shapes::ShapeRef.new(shape: GetDirectoryRegistrationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDirectoryRegistrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_service_principal_name, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServicePrincipalName"
        o.http_method = "GET"
        o.http_request_uri = "/directoryRegistrations/{DirectoryRegistrationArn}/servicePrincipalNames/{ConnectorArn}"
        o.input = Shapes::ShapeRef.new(shape: GetServicePrincipalNameRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServicePrincipalNameResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/templates/{TemplateArn}"
        o.input = Shapes::ShapeRef.new(shape: GetTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_template_group_access_control_entry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTemplateGroupAccessControlEntry"
        o.http_method = "GET"
        o.http_request_uri = "/templates/{TemplateArn}/accessControlEntries/{GroupSecurityIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetTemplateGroupAccessControlEntryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTemplateGroupAccessControlEntryResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_connectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConnectors"
        o.http_method = "GET"
        o.http_request_uri = "/connectors"
        o.input = Shapes::ShapeRef.new(shape: ListConnectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConnectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_directory_registrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDirectoryRegistrations"
        o.http_method = "GET"
        o.http_request_uri = "/directoryRegistrations"
        o.input = Shapes::ShapeRef.new(shape: ListDirectoryRegistrationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDirectoryRegistrationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_principal_names, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServicePrincipalNames"
        o.http_method = "GET"
        o.http_request_uri = "/directoryRegistrations/{DirectoryRegistrationArn}/servicePrincipalNames"
        o.input = Shapes::ShapeRef.new(shape: ListServicePrincipalNamesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServicePrincipalNamesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_template_group_access_control_entries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTemplateGroupAccessControlEntries"
        o.http_method = "GET"
        o.http_request_uri = "/templates/{TemplateArn}/accessControlEntries"
        o.input = Shapes::ShapeRef.new(shape: ListTemplateGroupAccessControlEntriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTemplateGroupAccessControlEntriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/templates"
        o.input = Shapes::ShapeRef.new(shape: ListTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTemplate"
        o.http_method = "PATCH"
        o.http_request_uri = "/templates/{TemplateArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_template_group_access_control_entry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTemplateGroupAccessControlEntry"
        o.http_method = "PATCH"
        o.http_request_uri = "/templates/{TemplateArn}/accessControlEntries/{GroupSecurityIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTemplateGroupAccessControlEntryRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end

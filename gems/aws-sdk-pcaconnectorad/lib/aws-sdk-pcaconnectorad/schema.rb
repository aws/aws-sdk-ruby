# frozen_string_literal: true

# This is generated code!

module Aws::PcaConnectorAd
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessControlEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#AccessControlEntry', name: 'AccessControlEntry')
    AccessControlEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcaconnectorad#AccessControlEntryList', name: 'AccessControlEntryList')
    AccessControlEntrySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#AccessControlEntrySummary', name: 'AccessControlEntrySummary')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessRight = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorad#AccessRight', name: 'AccessRight')
    AccessRights = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#AccessRights', name: 'AccessRights')
    ApplicationPolicies = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ApplicationPolicies', name: 'ApplicationPolicies')
    ApplicationPolicy = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.pcaconnectorad#ApplicationPolicy', name: 'ApplicationPolicy')
    ApplicationPolicyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcaconnectorad#ApplicationPolicyList', name: 'ApplicationPolicyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#uniqueItems" => {}})
    ApplicationPolicyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorad#ApplicationPolicyType', name: 'ApplicationPolicyType')
    CertificateAuthorityArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcaconnectorad#CertificateAuthorityArn', name: 'CertificateAuthorityArn', traits: {"smithy.api#length" => {"min" => 5, "max" => 200}, "smithy.api#pattern" => "^arn:[\\w-]+:acm-pca:[\\w-]+:[0-9]+:certificate-authority\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$"})
    CertificateValidity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#CertificateValidity', name: 'CertificateValidity')
    ClientCompatibilityV2 = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorad#ClientCompatibilityV2', name: 'ClientCompatibilityV2')
    ClientCompatibilityV3 = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorad#ClientCompatibilityV3', name: 'ClientCompatibilityV3')
    ClientCompatibilityV4 = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorad#ClientCompatibilityV4', name: 'ClientCompatibilityV4')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcaconnectorad#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[!-~]+$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Connector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#Connector', name: 'Connector')
    ConnectorArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcaconnectorad#ConnectorArn', name: 'ConnectorArn', traits: {"smithy.api#length" => {"min" => 5, "max" => 200}, "smithy.api#pattern" => "^arn:[\\w-]+:pca-connector-ad:[\\w-]+:[0-9]+:connector\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$"})
    ConnectorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcaconnectorad#ConnectorList', name: 'ConnectorList')
    ConnectorStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorad#ConnectorStatus', name: 'ConnectorStatus')
    ConnectorStatusReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorad#ConnectorStatusReason', name: 'ConnectorStatusReason')
    ConnectorSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ConnectorSummary', name: 'ConnectorSummary')
    CreateConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#CreateConnectorRequest', name: 'CreateConnectorRequest')
    CreateConnectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#CreateConnectorResponse', name: 'CreateConnectorResponse')
    CreateDirectoryRegistrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#CreateDirectoryRegistrationRequest', name: 'CreateDirectoryRegistrationRequest')
    CreateDirectoryRegistrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#CreateDirectoryRegistrationResponse', name: 'CreateDirectoryRegistrationResponse')
    CreateServicePrincipalNameRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#CreateServicePrincipalNameRequest', name: 'CreateServicePrincipalNameRequest')
    CreateTemplateGroupAccessControlEntryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#CreateTemplateGroupAccessControlEntryRequest', name: 'CreateTemplateGroupAccessControlEntryRequest')
    CreateTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#CreateTemplateRequest', name: 'CreateTemplateRequest')
    CreateTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#CreateTemplateResponse', name: 'CreateTemplateResponse')
    CryptoProvidersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcaconnectorad#CryptoProvidersList', name: 'CryptoProvidersList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#uniqueItems" => {}})
    CustomObjectIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcaconnectorad#CustomObjectIdentifier', name: 'CustomObjectIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^([0-2])\\.([0-9]|([0-3][0-9]))(\\.([0-9]+)){0,126}$"})
    DeleteConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#DeleteConnectorRequest', name: 'DeleteConnectorRequest')
    DeleteDirectoryRegistrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#DeleteDirectoryRegistrationRequest', name: 'DeleteDirectoryRegistrationRequest')
    DeleteServicePrincipalNameRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#DeleteServicePrincipalNameRequest', name: 'DeleteServicePrincipalNameRequest')
    DeleteTemplateGroupAccessControlEntryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#DeleteTemplateGroupAccessControlEntryRequest', name: 'DeleteTemplateGroupAccessControlEntryRequest')
    DeleteTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#DeleteTemplateRequest', name: 'DeleteTemplateRequest')
    DirectoryId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcaconnectorad#DirectoryId', name: 'DirectoryId', traits: {"smithy.api#pattern" => "^d-[0-9a-f]{10}$"})
    DirectoryRegistration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#DirectoryRegistration', name: 'DirectoryRegistration')
    DirectoryRegistrationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcaconnectorad#DirectoryRegistrationArn', name: 'DirectoryRegistrationArn', traits: {"smithy.api#length" => {"min" => 5, "max" => 200}, "smithy.api#pattern" => "^arn:[\\w-]+:pca-connector-ad:[\\w-]+:[0-9]+:directory-registration\\/d-[0-9a-f]{10}$"})
    DirectoryRegistrationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcaconnectorad#DirectoryRegistrationList', name: 'DirectoryRegistrationList')
    DirectoryRegistrationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorad#DirectoryRegistrationStatus', name: 'DirectoryRegistrationStatus')
    DirectoryRegistrationStatusReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorad#DirectoryRegistrationStatusReason', name: 'DirectoryRegistrationStatusReason')
    DirectoryRegistrationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#DirectoryRegistrationSummary', name: 'DirectoryRegistrationSummary')
    DisplayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcaconnectorad#DisplayName', name: 'DisplayName', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\x20-\\x7E]+$"})
    EnrollmentFlagsV2 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#EnrollmentFlagsV2', name: 'EnrollmentFlagsV2')
    EnrollmentFlagsV3 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#EnrollmentFlagsV3', name: 'EnrollmentFlagsV3')
    EnrollmentFlagsV4 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#EnrollmentFlagsV4', name: 'EnrollmentFlagsV4')
    ExtensionsV2 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ExtensionsV2', name: 'ExtensionsV2')
    ExtensionsV3 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ExtensionsV3', name: 'ExtensionsV3')
    ExtensionsV4 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ExtensionsV4', name: 'ExtensionsV4')
    GeneralFlagsV2 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#GeneralFlagsV2', name: 'GeneralFlagsV2')
    GeneralFlagsV3 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#GeneralFlagsV3', name: 'GeneralFlagsV3')
    GeneralFlagsV4 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#GeneralFlagsV4', name: 'GeneralFlagsV4')
    GetConnectorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#GetConnectorRequest', name: 'GetConnectorRequest')
    GetConnectorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#GetConnectorResponse', name: 'GetConnectorResponse')
    GetDirectoryRegistrationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#GetDirectoryRegistrationRequest', name: 'GetDirectoryRegistrationRequest')
    GetDirectoryRegistrationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#GetDirectoryRegistrationResponse', name: 'GetDirectoryRegistrationResponse')
    GetServicePrincipalNameRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#GetServicePrincipalNameRequest', name: 'GetServicePrincipalNameRequest')
    GetServicePrincipalNameResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#GetServicePrincipalNameResponse', name: 'GetServicePrincipalNameResponse')
    GetTemplateGroupAccessControlEntryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#GetTemplateGroupAccessControlEntryRequest', name: 'GetTemplateGroupAccessControlEntryRequest')
    GetTemplateGroupAccessControlEntryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#GetTemplateGroupAccessControlEntryResponse', name: 'GetTemplateGroupAccessControlEntryResponse')
    GetTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#GetTemplateRequest', name: 'GetTemplateRequest')
    GetTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#GetTemplateResponse', name: 'GetTemplateResponse')
    GroupSecurityIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcaconnectorad#GroupSecurityIdentifier', name: 'GroupSecurityIdentifier', traits: {"smithy.api#length" => {"min" => 7, "max" => 256}, "smithy.api#pattern" => "^S-[0-9]-([0-9]+-){1,14}[0-9]+$"})
    HashAlgorithm = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorad#HashAlgorithm', name: 'HashAlgorithm')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    IpAddressType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorad#IpAddressType', name: 'IpAddressType')
    KeySpec = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorad#KeySpec', name: 'KeySpec')
    KeyUsage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#KeyUsage', name: 'KeyUsage')
    KeyUsageFlags = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#KeyUsageFlags', name: 'KeyUsageFlags')
    KeyUsageProperty = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.pcaconnectorad#KeyUsageProperty', name: 'KeyUsageProperty')
    KeyUsagePropertyFlags = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#KeyUsagePropertyFlags', name: 'KeyUsagePropertyFlags')
    KeyUsagePropertyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorad#KeyUsagePropertyType', name: 'KeyUsagePropertyType')
    ListConnectorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ListConnectorsRequest', name: 'ListConnectorsRequest')
    ListConnectorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ListConnectorsResponse', name: 'ListConnectorsResponse')
    ListDirectoryRegistrationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ListDirectoryRegistrationsRequest', name: 'ListDirectoryRegistrationsRequest')
    ListDirectoryRegistrationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ListDirectoryRegistrationsResponse', name: 'ListDirectoryRegistrationsResponse')
    ListServicePrincipalNamesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ListServicePrincipalNamesRequest', name: 'ListServicePrincipalNamesRequest')
    ListServicePrincipalNamesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ListServicePrincipalNamesResponse', name: 'ListServicePrincipalNamesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTemplateGroupAccessControlEntriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ListTemplateGroupAccessControlEntriesRequest', name: 'ListTemplateGroupAccessControlEntriesRequest')
    ListTemplateGroupAccessControlEntriesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ListTemplateGroupAccessControlEntriesResponse', name: 'ListTemplateGroupAccessControlEntriesResponse')
    ListTemplatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ListTemplatesRequest', name: 'ListTemplatesRequest')
    ListTemplatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ListTemplatesResponse', name: 'ListTemplatesResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.pcaconnectorad#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcaconnectorad#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^(?:[A-Za-z0-9_-]{4})*(?:[A-Za-z0-9_-]{2}==|[A-Za-z0-9_-]{3}=)?$"})
    PrivateKeyAlgorithm = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorad#PrivateKeyAlgorithm', name: 'PrivateKeyAlgorithm')
    PrivateKeyAttributesV2 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#PrivateKeyAttributesV2', name: 'PrivateKeyAttributesV2')
    PrivateKeyAttributesV3 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#PrivateKeyAttributesV3', name: 'PrivateKeyAttributesV3')
    PrivateKeyAttributesV4 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#PrivateKeyAttributesV4', name: 'PrivateKeyAttributesV4')
    PrivateKeyFlagsV2 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#PrivateKeyFlagsV2', name: 'PrivateKeyFlagsV2')
    PrivateKeyFlagsV3 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#PrivateKeyFlagsV3', name: 'PrivateKeyFlagsV3')
    PrivateKeyFlagsV4 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#PrivateKeyFlagsV4', name: 'PrivateKeyFlagsV4')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcaconnectorad#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#length" => {"min" => 11, "max" => 20}, "smithy.api#pattern" => "^(?:sg-[0-9a-f]{8}|sg-[0-9a-f]{17})$"})
    SecurityGroupIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcaconnectorad#SecurityGroupIdList', name: 'SecurityGroupIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 4}, "smithy.api#uniqueItems" => {}})
    ServicePrincipalName = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ServicePrincipalName', name: 'ServicePrincipalName')
    ServicePrincipalNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcaconnectorad#ServicePrincipalNameList', name: 'ServicePrincipalNameList')
    ServicePrincipalNameStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorad#ServicePrincipalNameStatus', name: 'ServicePrincipalNameStatus')
    ServicePrincipalNameStatusReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorad#ServicePrincipalNameStatusReason', name: 'ServicePrincipalNameStatusReason')
    ServicePrincipalNameSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ServicePrincipalNameSummary', name: 'ServicePrincipalNameSummary')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SubjectNameFlagsV2 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#SubjectNameFlagsV2', name: 'SubjectNameFlagsV2')
    SubjectNameFlagsV3 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#SubjectNameFlagsV3', name: 'SubjectNameFlagsV3')
    SubjectNameFlagsV4 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#SubjectNameFlagsV4', name: 'SubjectNameFlagsV4')
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcaconnectorad#TagKeyList', name: 'TagKeyList')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#TagResourceRequest', name: 'TagResourceRequest')
    Tags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pcaconnectorad#Tags', name: 'Tags')
    Template = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#Template', name: 'Template')
    TemplateArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcaconnectorad#TemplateArn', name: 'TemplateArn', traits: {"smithy.api#length" => {"min" => 5, "max" => 200}, "smithy.api#pattern" => "^arn:[\\w-]+:pca-connector-ad:[\\w-]+:[0-9]+:connector\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}\\/template\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$"})
    TemplateDefinition = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.pcaconnectorad#TemplateDefinition', name: 'TemplateDefinition')
    TemplateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcaconnectorad#TemplateList', name: 'TemplateList')
    TemplateName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcaconnectorad#TemplateName', name: 'TemplateName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^(?!^\\s+$)((?![\\x5c'\\x2b,;<=>#\\x22])([\\x20-\\x7E]))+$"})
    TemplateNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcaconnectorad#TemplateNameList', name: 'TemplateNameList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#uniqueItems" => {}})
    TemplateRevision = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#TemplateRevision', name: 'TemplateRevision')
    TemplateStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorad#TemplateStatus', name: 'TemplateStatus')
    TemplateSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#TemplateSummary', name: 'TemplateSummary')
    TemplateV2 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#TemplateV2', name: 'TemplateV2')
    TemplateV3 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#TemplateV3', name: 'TemplateV3')
    TemplateV4 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#TemplateV4', name: 'TemplateV4')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateTemplateGroupAccessControlEntryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#UpdateTemplateGroupAccessControlEntryRequest', name: 'UpdateTemplateGroupAccessControlEntryRequest')
    UpdateTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#UpdateTemplateRequest', name: 'UpdateTemplateRequest')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorad#ValidationExceptionReason', name: 'ValidationExceptionReason')
    ValidityPeriod = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#ValidityPeriod', name: 'ValidityPeriod')
    ValidityPeriodType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcaconnectorad#ValidityPeriodType', name: 'ValidityPeriodType')
    VpcInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcaconnectorad#VpcInformation', name: 'VpcInformation')

    AccessControlEntry.add_member(:group_display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'GroupDisplayName', traits: {"smithy.api#documentation" => "<p>Name of the Active Directory group. This name does not need to match the group name in Active Directory.</p>"}))
    AccessControlEntry.add_member(:group_security_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupSecurityIdentifier, location_name: 'GroupSecurityIdentifier', traits: {"smithy.api#documentation" => "<p>Security identifier (SID) of the group object from Active Directory. The SID starts with\n         \"S-\".</p>"}))
    AccessControlEntry.add_member(:access_rights, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessRights, location_name: 'AccessRights', traits: {"smithy.api#documentation" => "<p>Permissions to allow or deny an Active Directory group to enroll or autoenroll certificates issued\n         against a template.</p>"}))
    AccessControlEntry.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html\">CreateTemplate</a>.</p>"}))
    AccessControlEntry.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the Access Control Entry was created.</p>"}))
    AccessControlEntry.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the Access Control Entry was updated.</p>"}))
    AccessControlEntry.type = Types::AccessControlEntry
    AccessControlEntryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlEntrySummary)
    AccessControlEntrySummary.add_member(:group_display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'GroupDisplayName', traits: {"smithy.api#documentation" => "<p>Name of the Active Directory group. This name does not need to match the group name in Active Directory.</p>"}))
    AccessControlEntrySummary.add_member(:group_security_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupSecurityIdentifier, location_name: 'GroupSecurityIdentifier', traits: {"smithy.api#documentation" => "<p>Security identifier (SID) of the group object from Active Directory. The SID starts with\n         \"S-\".</p>"}))
    AccessControlEntrySummary.add_member(:access_rights, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessRights, location_name: 'AccessRights', traits: {"smithy.api#documentation" => "<p>Allow or deny an Active Directory group from enrolling and autoenrolling certificates issued against\n         a template.</p>"}))
    AccessControlEntrySummary.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html\">CreateTemplate</a>. </p>"}))
    AccessControlEntrySummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the Access Control Entry was created.</p>"}))
    AccessControlEntrySummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the Access Control Entry was updated.</p>"}))
    AccessControlEntrySummary.type = Types::AccessControlEntrySummary
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessRight.add_member(:allow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW', traits: {"smithy.api#enumValue" => "ALLOW"}))
    AccessRight.add_member(:deny, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENY', traits: {"smithy.api#enumValue" => "DENY"}))
    AccessRights.add_member(:enroll, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessRight, location_name: 'Enroll', traits: {"smithy.api#documentation" => "<p>Allow or deny an Active Directory group from enrolling certificates issued against a\n         template.</p>"}))
    AccessRights.add_member(:auto_enroll, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessRight, location_name: 'AutoEnroll', traits: {"smithy.api#documentation" => "<p>Allow or deny an Active Directory group from autoenrolling certificates issued against a template.\n         The Active Directory group must be allowed to enroll to allow autoenrollment</p>"}))
    AccessRights.type = Types::AccessRights
    ApplicationPolicies.add_member(:critical, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Critical', traits: {"smithy.api#documentation" => "<p>Marks the application policy extension as critical.</p>"}))
    ApplicationPolicies.add_member(:policies, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationPolicyList, location_name: 'Policies', traits: {"smithy.api#documentation" => "<p>Application policies describe what the certificate can be used for.</p>", "smithy.api#required" => {}}))
    ApplicationPolicies.type = Types::ApplicationPolicies
    ApplicationPolicy.add_member(:policy_type, Types::ApplicationPolicy::PolicyType, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationPolicyType, location_name: 'PolicyType', traits: {"smithy.api#documentation" => "<p>The type of application policy</p>"}))
    ApplicationPolicy.add_member(:policy_object_identifier, Types::ApplicationPolicy::PolicyObjectIdentifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomObjectIdentifier, location_name: 'PolicyObjectIdentifier', traits: {"smithy.api#documentation" => "<p>The object identifier (OID) of an application policy.</p>"}))
    ApplicationPolicy.add_member(:unknown, Types::ApplicationPolicy::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ApplicationPolicy.type = Types::ApplicationPolicy
    ApplicationPolicyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationPolicy)
    ApplicationPolicyType.add_member(:all_application_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL_APPLICATION_POLICIES', traits: {"smithy.api#enumValue" => "ALL_APPLICATION_POLICIES"}))
    ApplicationPolicyType.add_member(:any_purpose, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANY_PURPOSE', traits: {"smithy.api#enumValue" => "ANY_PURPOSE"}))
    ApplicationPolicyType.add_member(:attestation_identity_key_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ATTESTATION_IDENTITY_KEY_CERTIFICATE', traits: {"smithy.api#enumValue" => "ATTESTATION_IDENTITY_KEY_CERTIFICATE"}))
    ApplicationPolicyType.add_member(:certificate_request_agent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CERTIFICATE_REQUEST_AGENT', traits: {"smithy.api#enumValue" => "CERTIFICATE_REQUEST_AGENT"}))
    ApplicationPolicyType.add_member(:client_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLIENT_AUTHENTICATION', traits: {"smithy.api#enumValue" => "CLIENT_AUTHENTICATION"}))
    ApplicationPolicyType.add_member(:code_signing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CODE_SIGNING', traits: {"smithy.api#enumValue" => "CODE_SIGNING"}))
    ApplicationPolicyType.add_member(:ctl_usage, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CTL_USAGE', traits: {"smithy.api#enumValue" => "CTL_USAGE"}))
    ApplicationPolicyType.add_member(:digital_rights, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIGITAL_RIGHTS', traits: {"smithy.api#enumValue" => "DIGITAL_RIGHTS"}))
    ApplicationPolicyType.add_member(:directory_service_email_replication, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTORY_SERVICE_EMAIL_REPLICATION', traits: {"smithy.api#enumValue" => "DIRECTORY_SERVICE_EMAIL_REPLICATION"}))
    ApplicationPolicyType.add_member(:disallowed_list, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISALLOWED_LIST', traits: {"smithy.api#enumValue" => "DISALLOWED_LIST"}))
    ApplicationPolicyType.add_member(:dns_server_trust, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DNS_SERVER_TRUST', traits: {"smithy.api#enumValue" => "DNS_SERVER_TRUST"}))
    ApplicationPolicyType.add_member(:document_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_ENCRYPTION', traits: {"smithy.api#enumValue" => "DOCUMENT_ENCRYPTION"}))
    ApplicationPolicyType.add_member(:document_signing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_SIGNING', traits: {"smithy.api#enumValue" => "DOCUMENT_SIGNING"}))
    ApplicationPolicyType.add_member(:dynamic_code_generator, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DYNAMIC_CODE_GENERATOR', traits: {"smithy.api#enumValue" => "DYNAMIC_CODE_GENERATOR"}))
    ApplicationPolicyType.add_member(:early_launch_antimalware_driver, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EARLY_LAUNCH_ANTIMALWARE_DRIVER', traits: {"smithy.api#enumValue" => "EARLY_LAUNCH_ANTIMALWARE_DRIVER"}))
    ApplicationPolicyType.add_member(:embedded_windows_system_component_verification, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION', traits: {"smithy.api#enumValue" => "EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION"}))
    ApplicationPolicyType.add_member(:enclave, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENCLAVE', traits: {"smithy.api#enumValue" => "ENCLAVE"}))
    ApplicationPolicyType.add_member(:encrypting_file_system, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENCRYPTING_FILE_SYSTEM', traits: {"smithy.api#enumValue" => "ENCRYPTING_FILE_SYSTEM"}))
    ApplicationPolicyType.add_member(:endorsement_key_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENDORSEMENT_KEY_CERTIFICATE', traits: {"smithy.api#enumValue" => "ENDORSEMENT_KEY_CERTIFICATE"}))
    ApplicationPolicyType.add_member(:file_recovery, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILE_RECOVERY', traits: {"smithy.api#enumValue" => "FILE_RECOVERY"}))
    ApplicationPolicyType.add_member(:hal_extension, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HAL_EXTENSION', traits: {"smithy.api#enumValue" => "HAL_EXTENSION"}))
    ApplicationPolicyType.add_member(:ip_security_end_system, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IP_SECURITY_END_SYSTEM', traits: {"smithy.api#enumValue" => "IP_SECURITY_END_SYSTEM"}))
    ApplicationPolicyType.add_member(:ip_security_ike_intermediate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IP_SECURITY_IKE_INTERMEDIATE', traits: {"smithy.api#enumValue" => "IP_SECURITY_IKE_INTERMEDIATE"}))
    ApplicationPolicyType.add_member(:ip_security_tunnel_termination, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IP_SECURITY_TUNNEL_TERMINATION', traits: {"smithy.api#enumValue" => "IP_SECURITY_TUNNEL_TERMINATION"}))
    ApplicationPolicyType.add_member(:ip_security_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IP_SECURITY_USER', traits: {"smithy.api#enumValue" => "IP_SECURITY_USER"}))
    ApplicationPolicyType.add_member(:isolated_user_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ISOLATED_USER_MODE', traits: {"smithy.api#enumValue" => "ISOLATED_USER_MODE"}))
    ApplicationPolicyType.add_member(:kdc_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KDC_AUTHENTICATION', traits: {"smithy.api#enumValue" => "KDC_AUTHENTICATION"}))
    ApplicationPolicyType.add_member(:kernel_mode_code_signing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KERNEL_MODE_CODE_SIGNING', traits: {"smithy.api#enumValue" => "KERNEL_MODE_CODE_SIGNING"}))
    ApplicationPolicyType.add_member(:key_pack_licenses, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEY_PACK_LICENSES', traits: {"smithy.api#enumValue" => "KEY_PACK_LICENSES"}))
    ApplicationPolicyType.add_member(:key_recovery, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEY_RECOVERY', traits: {"smithy.api#enumValue" => "KEY_RECOVERY"}))
    ApplicationPolicyType.add_member(:key_recovery_agent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEY_RECOVERY_AGENT', traits: {"smithy.api#enumValue" => "KEY_RECOVERY_AGENT"}))
    ApplicationPolicyType.add_member(:license_server_verification, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LICENSE_SERVER_VERIFICATION', traits: {"smithy.api#enumValue" => "LICENSE_SERVER_VERIFICATION"}))
    ApplicationPolicyType.add_member(:lifetime_signing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIFETIME_SIGNING', traits: {"smithy.api#enumValue" => "LIFETIME_SIGNING"}))
    ApplicationPolicyType.add_member(:microsoft_publisher, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MICROSOFT_PUBLISHER', traits: {"smithy.api#enumValue" => "MICROSOFT_PUBLISHER"}))
    ApplicationPolicyType.add_member(:microsoft_time_stamping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MICROSOFT_TIME_STAMPING', traits: {"smithy.api#enumValue" => "MICROSOFT_TIME_STAMPING"}))
    ApplicationPolicyType.add_member(:microsoft_trust_list_signing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MICROSOFT_TRUST_LIST_SIGNING', traits: {"smithy.api#enumValue" => "MICROSOFT_TRUST_LIST_SIGNING"}))
    ApplicationPolicyType.add_member(:ocsp_signing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OCSP_SIGNING', traits: {"smithy.api#enumValue" => "OCSP_SIGNING"}))
    ApplicationPolicyType.add_member(:oem_windows_system_component_verification, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION', traits: {"smithy.api#enumValue" => "OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION"}))
    ApplicationPolicyType.add_member(:platform_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLATFORM_CERTIFICATE', traits: {"smithy.api#enumValue" => "PLATFORM_CERTIFICATE"}))
    ApplicationPolicyType.add_member(:preview_build_signing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREVIEW_BUILD_SIGNING', traits: {"smithy.api#enumValue" => "PREVIEW_BUILD_SIGNING"}))
    ApplicationPolicyType.add_member(:private_key_archival, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATE_KEY_ARCHIVAL', traits: {"smithy.api#enumValue" => "PRIVATE_KEY_ARCHIVAL"}))
    ApplicationPolicyType.add_member(:protected_process_light_verification, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROTECTED_PROCESS_LIGHT_VERIFICATION', traits: {"smithy.api#enumValue" => "PROTECTED_PROCESS_LIGHT_VERIFICATION"}))
    ApplicationPolicyType.add_member(:protected_process_verification, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROTECTED_PROCESS_VERIFICATION', traits: {"smithy.api#enumValue" => "PROTECTED_PROCESS_VERIFICATION"}))
    ApplicationPolicyType.add_member(:qualified_subordination, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUALIFIED_SUBORDINATION', traits: {"smithy.api#enumValue" => "QUALIFIED_SUBORDINATION"}))
    ApplicationPolicyType.add_member(:revoked_list_signer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVOKED_LIST_SIGNER', traits: {"smithy.api#enumValue" => "REVOKED_LIST_SIGNER"}))
    ApplicationPolicyType.add_member(:root_program_auto_update_ca_revocation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION', traits: {"smithy.api#enumValue" => "ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION"}))
    ApplicationPolicyType.add_member(:root_program_auto_update_end_revocation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION', traits: {"smithy.api#enumValue" => "ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION"}))
    ApplicationPolicyType.add_member(:root_program_no_oscp_failover_to_crl, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL', traits: {"smithy.api#enumValue" => "ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL"}))
    ApplicationPolicyType.add_member(:root_list_signer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROOT_LIST_SIGNER', traits: {"smithy.api#enumValue" => "ROOT_LIST_SIGNER"}))
    ApplicationPolicyType.add_member(:secure_email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECURE_EMAIL', traits: {"smithy.api#enumValue" => "SECURE_EMAIL"}))
    ApplicationPolicyType.add_member(:server_authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVER_AUTHENTICATION', traits: {"smithy.api#enumValue" => "SERVER_AUTHENTICATION"}))
    ApplicationPolicyType.add_member(:smart_card_login, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMART_CARD_LOGIN', traits: {"smithy.api#enumValue" => "SMART_CARD_LOGIN"}))
    ApplicationPolicyType.add_member(:spc_encrypted_digest_retry_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPC_ENCRYPTED_DIGEST_RETRY_COUNT', traits: {"smithy.api#enumValue" => "SPC_ENCRYPTED_DIGEST_RETRY_COUNT"}))
    ApplicationPolicyType.add_member(:spc_relaxed_pe_marker_check, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPC_RELAXED_PE_MARKER_CHECK', traits: {"smithy.api#enumValue" => "SPC_RELAXED_PE_MARKER_CHECK"}))
    ApplicationPolicyType.add_member(:time_stamping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIME_STAMPING', traits: {"smithy.api#enumValue" => "TIME_STAMPING"}))
    ApplicationPolicyType.add_member(:windows_hardware_driver_attested_verification, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION', traits: {"smithy.api#enumValue" => "WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION"}))
    ApplicationPolicyType.add_member(:windows_hardware_driver_extended_verification, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION', traits: {"smithy.api#enumValue" => "WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION"}))
    ApplicationPolicyType.add_member(:windows_hardware_driver_verification, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_HARDWARE_DRIVER_VERIFICATION', traits: {"smithy.api#enumValue" => "WINDOWS_HARDWARE_DRIVER_VERIFICATION"}))
    ApplicationPolicyType.add_member(:windows_hello_recovery_key_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION', traits: {"smithy.api#enumValue" => "WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION"}))
    ApplicationPolicyType.add_member(:windows_kits_component, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_KITS_COMPONENT', traits: {"smithy.api#enumValue" => "WINDOWS_KITS_COMPONENT"}))
    ApplicationPolicyType.add_member(:windows_rt_verification, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_RT_VERIFICATION', traits: {"smithy.api#enumValue" => "WINDOWS_RT_VERIFICATION"}))
    ApplicationPolicyType.add_member(:windows_software_extension_verification, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SOFTWARE_EXTENSION_VERIFICATION', traits: {"smithy.api#enumValue" => "WINDOWS_SOFTWARE_EXTENSION_VERIFICATION"}))
    ApplicationPolicyType.add_member(:windows_store, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_STORE', traits: {"smithy.api#enumValue" => "WINDOWS_STORE"}))
    ApplicationPolicyType.add_member(:windows_system_component_verification, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SYSTEM_COMPONENT_VERIFICATION', traits: {"smithy.api#enumValue" => "WINDOWS_SYSTEM_COMPONENT_VERIFICATION"}))
    ApplicationPolicyType.add_member(:windows_tcb_component, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_TCB_COMPONENT', traits: {"smithy.api#enumValue" => "WINDOWS_TCB_COMPONENT"}))
    ApplicationPolicyType.add_member(:windows_third_party_application_component, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT', traits: {"smithy.api#enumValue" => "WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT"}))
    ApplicationPolicyType.add_member(:windows_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_UPDATE', traits: {"smithy.api#enumValue" => "WINDOWS_UPDATE"}))
    CertificateValidity.add_member(:validity_period, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidityPeriod, location_name: 'ValidityPeriod', traits: {"smithy.api#documentation" => "<p>Information describing the end of the validity period of the certificate. This parameter\n         sets the “Not After” date for the certificate. Certificate validity is the period of time\n         during which a certificate is valid. Validity can be expressed as an explicit date and time\n         when the certificate expires, or as a span of time after issuance, stated in days, months,\n         or years. For more information, see Validity in RFC 5280. This value is unaffected when\n         ValidityNotBefore is also specified. For example, if Validity is set to 20 days in the\n         future, the certificate will expire 20 days from issuance time regardless of the\n         ValidityNotBefore value.</p>", "smithy.api#required" => {}}))
    CertificateValidity.add_member(:renewal_period, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidityPeriod, location_name: 'RenewalPeriod', traits: {"smithy.api#documentation" => "<p>Renewal period is the period of time before certificate expiration when a new\n         certificate will be requested.</p>", "smithy.api#required" => {}}))
    CertificateValidity.type = Types::CertificateValidity
    ClientCompatibilityV2.add_member(:windows_server_2003, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SERVER_2003', traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2003"}))
    ClientCompatibilityV2.add_member(:windows_server_2008, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SERVER_2008', traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2008"}))
    ClientCompatibilityV2.add_member(:windows_server_2008_r2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SERVER_2008_R2', traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2008_R2"}))
    ClientCompatibilityV2.add_member(:windows_server_2012, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SERVER_2012', traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2012"}))
    ClientCompatibilityV2.add_member(:windows_server_2012_r2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SERVER_2012_R2', traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2012_R2"}))
    ClientCompatibilityV2.add_member(:windows_server_2016, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SERVER_2016', traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2016"}))
    ClientCompatibilityV3.add_member(:windows_server_2008, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SERVER_2008', traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2008"}))
    ClientCompatibilityV3.add_member(:windows_server_2008_r2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SERVER_2008_R2', traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2008_R2"}))
    ClientCompatibilityV3.add_member(:windows_server_2012, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SERVER_2012', traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2012"}))
    ClientCompatibilityV3.add_member(:windows_server_2012_r2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SERVER_2012_R2', traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2012_R2"}))
    ClientCompatibilityV3.add_member(:windows_server_2016, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SERVER_2016', traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2016"}))
    ClientCompatibilityV4.add_member(:windows_server_2012, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SERVER_2012', traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2012"}))
    ClientCompatibilityV4.add_member(:windows_server_2012_r2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SERVER_2012_R2', traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2012_R2"}))
    ClientCompatibilityV4.add_member(:windows_server_2016, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SERVER_2016', traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2016"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Web Services resource.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type, which can be one of <code>Connector</code>, <code>Template</code>, <code>TemplateGroupAccessControlEntry</code>, <code>ServicePrincipalName</code>, or <code>DirectoryRegistration</code>.</p>", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    Connector.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html\">CreateConnector</a>. </p>"}))
    Connector.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityArn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the certificate authority being used. </p>"}))
    Connector.add_member(:certificate_enrollment_policy_server_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'CertificateEnrollmentPolicyServerEndpoint', traits: {"smithy.api#documentation" => "<p>Certificate enrollment endpoint for Active Directory domain-joined objects reach out to when\n         requesting certificates.</p>"}))
    Connector.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the Active Directory.</p>"}))
    Connector.add_member(:vpc_information, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcInformation, location_name: 'VpcInformation', traits: {"smithy.api#documentation" => "<p>Information of the VPC and security group(s) used with the connector.</p>"}))
    Connector.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status of the connector. Status can be creating, active, deleting, or failed.</p>"}))
    Connector.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorStatusReason, location_name: 'StatusReason', traits: {"smithy.api#documentation" => "<p>Additional information about the connector status if the status is failed.</p>"}))
    Connector.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the connector was created.</p>"}))
    Connector.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the connector was updated.</p>"}))
    Connector.type = Types::Connector
    ConnectorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorSummary)
    ConnectorStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ConnectorStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ConnectorStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ConnectorStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ConnectorStatusReason.add_member(:ca_certificate_registration_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CA_CERTIFICATE_REGISTRATION_FAILED', traits: {"smithy.api#enumValue" => "CA_CERTIFICATE_REGISTRATION_FAILED"}))
    ConnectorStatusReason.add_member(:directory_access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTORY_ACCESS_DENIED', traits: {"smithy.api#enumValue" => "DIRECTORY_ACCESS_DENIED"}))
    ConnectorStatusReason.add_member(:internal_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_FAILURE', traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    ConnectorStatusReason.add_member(:insufficient_free_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSUFFICIENT_FREE_ADDRESSES', traits: {"smithy.api#enumValue" => "INSUFFICIENT_FREE_ADDRESSES"}))
    ConnectorStatusReason.add_member(:invalid_subnet_ip_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SUBNET_IP_PROTOCOL', traits: {"smithy.api#enumValue" => "INVALID_SUBNET_IP_PROTOCOL"}))
    ConnectorStatusReason.add_member(:privateca_access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATECA_ACCESS_DENIED', traits: {"smithy.api#enumValue" => "PRIVATECA_ACCESS_DENIED"}))
    ConnectorStatusReason.add_member(:privateca_resource_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATECA_RESOURCE_NOT_FOUND', traits: {"smithy.api#enumValue" => "PRIVATECA_RESOURCE_NOT_FOUND"}))
    ConnectorStatusReason.add_member(:security_group_not_in_vpc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECURITY_GROUP_NOT_IN_VPC', traits: {"smithy.api#enumValue" => "SECURITY_GROUP_NOT_IN_VPC"}))
    ConnectorStatusReason.add_member(:vpc_access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC_ACCESS_DENIED', traits: {"smithy.api#enumValue" => "VPC_ACCESS_DENIED"}))
    ConnectorStatusReason.add_member(:vpc_endpoint_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC_ENDPOINT_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "VPC_ENDPOINT_LIMIT_EXCEEDED"}))
    ConnectorStatusReason.add_member(:vpc_resource_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC_RESOURCE_NOT_FOUND', traits: {"smithy.api#enumValue" => "VPC_RESOURCE_NOT_FOUND"}))
    ConnectorSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html\">CreateConnector</a>.</p>"}))
    ConnectorSummary.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityArn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the certificate authority being used.</p>"}))
    ConnectorSummary.add_member(:certificate_enrollment_policy_server_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'CertificateEnrollmentPolicyServerEndpoint', traits: {"smithy.api#documentation" => "<p>Certificate enrollment endpoint for Active Directory domain-joined objects to request\n         certificates.</p>"}))
    ConnectorSummary.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the Active Directory.</p>"}))
    ConnectorSummary.add_member(:vpc_information, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcInformation, location_name: 'VpcInformation', traits: {"smithy.api#documentation" => "<p>Information of the VPC and security group(s) used with the connector.</p>"}))
    ConnectorSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status of the connector. Status can be creating, active, deleting, or failed.</p>"}))
    ConnectorSummary.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorStatusReason, location_name: 'StatusReason', traits: {"smithy.api#documentation" => "<p>Additional information about the connector status if the status is failed.</p>"}))
    ConnectorSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the connector was created.</p>"}))
    ConnectorSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the connector was updated.</p>"}))
    ConnectorSummary.type = Types::ConnectorSummary
    CreateConnectorRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the Active Directory.</p>", "smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityArn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the certificate authority being used.</p>", "smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:vpc_information, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcInformation, location_name: 'VpcInformation', traits: {"smithy.api#documentation" => "<p>Information about your VPC and security groups used with the connector.</p>", "smithy.api#required" => {}}))
    CreateConnectorRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Idempotency token.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateConnectorRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"aws.cloudformation#cfnMutability" => "write", "smithy.api#documentation" => "<p>Metadata assigned to a connector consisting of a key-value pair.</p>"}))
    CreateConnectorRequest.type = Types::CreateConnectorRequest
    CreateConnectorResponse.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'ConnectorArn', traits: {"smithy.api#documentation" => "<p>If successful, the Amazon Resource Name (ARN) of the connector for Active Directory.</p>"}))
    CreateConnectorResponse.type = Types::CreateConnectorResponse
    CreateDirectoryRegistrationRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier of the Active Directory.</p>", "smithy.api#required" => {}}))
    CreateDirectoryRegistrationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Idempotency token.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateDirectoryRegistrationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"aws.cloudformation#cfnMutability" => "write", "smithy.api#documentation" => "<p>Metadata assigned to a directory registration consisting of a key-value pair.</p>"}))
    CreateDirectoryRegistrationRequest.type = Types::CreateDirectoryRegistrationRequest
    CreateDirectoryRegistrationResponse.add_member(:directory_registration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryRegistrationArn, location_name: 'DirectoryRegistrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html\">CreateDirectoryRegistration</a>.</p>"}))
    CreateDirectoryRegistrationResponse.type = Types::CreateDirectoryRegistrationResponse
    CreateServicePrincipalNameRequest.add_member(:directory_registration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryRegistrationArn, location_name: 'DirectoryRegistrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html\">CreateDirectoryRegistration</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateServicePrincipalNameRequest.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'ConnectorArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html\">CreateConnector</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateServicePrincipalNameRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Idempotency token.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateServicePrincipalNameRequest.type = Types::CreateServicePrincipalNameRequest
    CreateTemplateGroupAccessControlEntryRequest.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html\">CreateTemplate</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTemplateGroupAccessControlEntryRequest.add_member(:group_security_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupSecurityIdentifier, location_name: 'GroupSecurityIdentifier', traits: {"smithy.api#documentation" => "<p>Security identifier (SID) of the group object from Active Directory. The SID starts with\n         \"S-\".</p>", "smithy.api#required" => {}}))
    CreateTemplateGroupAccessControlEntryRequest.add_member(:group_display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'GroupDisplayName', traits: {"smithy.api#documentation" => "<p>Name of the Active Directory group. This name does not need to match the group name in Active Directory.</p>", "smithy.api#required" => {}}))
    CreateTemplateGroupAccessControlEntryRequest.add_member(:access_rights, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessRights, location_name: 'AccessRights', traits: {"smithy.api#documentation" => "<p> Allow or deny permissions for an Active Directory group to enroll or autoenroll certificates for a\n         template.</p>", "smithy.api#required" => {}}))
    CreateTemplateGroupAccessControlEntryRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Idempotency token.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateTemplateGroupAccessControlEntryRequest.type = Types::CreateTemplateGroupAccessControlEntryRequest
    CreateTemplateRequest.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'ConnectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html\">CreateConnector</a>.</p>", "smithy.api#required" => {}}))
    CreateTemplateRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the template. The template name must be unique.</p>", "smithy.api#required" => {}}))
    CreateTemplateRequest.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateDefinition, location_name: 'Definition', traits: {"smithy.api#documentation" => "<p>Template configuration to define the information included in certificates. Define\n         certificate validity and renewal periods, certificate request handling and enrollment\n         options, key usage extensions, application policies, and cryptography settings.</p>", "smithy.api#required" => {}}))
    CreateTemplateRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Idempotency token.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateTemplateRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"aws.cloudformation#cfnMutability" => "write", "smithy.api#documentation" => "<p>Metadata assigned to a template consisting of a key-value pair.</p>"}))
    CreateTemplateRequest.type = Types::CreateTemplateRequest
    CreateTemplateResponse.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>If successful, the Amazon Resource Name (ARN) of the template.</p>"}))
    CreateTemplateResponse.type = Types::CreateTemplateResponse
    CryptoProvidersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    DeleteConnectorRequest.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'ConnectorArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html\">CreateConnector</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConnectorRequest.type = Types::DeleteConnectorRequest
    DeleteDirectoryRegistrationRequest.add_member(:directory_registration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryRegistrationArn, location_name: 'DirectoryRegistrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html\">CreateDirectoryRegistration</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDirectoryRegistrationRequest.type = Types::DeleteDirectoryRegistrationRequest
    DeleteServicePrincipalNameRequest.add_member(:directory_registration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryRegistrationArn, location_name: 'DirectoryRegistrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html\">CreateDirectoryRegistration</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteServicePrincipalNameRequest.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'ConnectorArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html\">CreateConnector</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteServicePrincipalNameRequest.type = Types::DeleteServicePrincipalNameRequest
    DeleteTemplateGroupAccessControlEntryRequest.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html\">CreateTemplate</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTemplateGroupAccessControlEntryRequest.add_member(:group_security_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupSecurityIdentifier, location_name: 'GroupSecurityIdentifier', traits: {"smithy.api#documentation" => "<p>Security identifier (SID) of the group object from Active Directory. The SID starts with\n         \"S-\".</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTemplateGroupAccessControlEntryRequest.type = Types::DeleteTemplateGroupAccessControlEntryRequest
    DeleteTemplateRequest.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html\">CreateTemplate</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTemplateRequest.type = Types::DeleteTemplateRequest
    DirectoryRegistration.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryRegistrationArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called\n         CreateDirectoryRegistration. </p>"}))
    DirectoryRegistration.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the Active Directory.</p>"}))
    DirectoryRegistration.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryRegistrationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status of the directory registration.</p>"}))
    DirectoryRegistration.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryRegistrationStatusReason, location_name: 'StatusReason', traits: {"smithy.api#documentation" => "<p>Additional information about the directory registration status if the status is\n         failed.</p>"}))
    DirectoryRegistration.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the directory registration was created.</p>"}))
    DirectoryRegistration.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the directory registration was updated.</p>"}))
    DirectoryRegistration.type = Types::DirectoryRegistration
    DirectoryRegistrationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryRegistrationSummary)
    DirectoryRegistrationStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    DirectoryRegistrationStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DirectoryRegistrationStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    DirectoryRegistrationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DirectoryRegistrationStatusReason.add_member(:directory_access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTORY_ACCESS_DENIED', traits: {"smithy.api#enumValue" => "DIRECTORY_ACCESS_DENIED"}))
    DirectoryRegistrationStatusReason.add_member(:directory_resource_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTORY_RESOURCE_NOT_FOUND', traits: {"smithy.api#enumValue" => "DIRECTORY_RESOURCE_NOT_FOUND"}))
    DirectoryRegistrationStatusReason.add_member(:directory_not_active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTORY_NOT_ACTIVE', traits: {"smithy.api#enumValue" => "DIRECTORY_NOT_ACTIVE"}))
    DirectoryRegistrationStatusReason.add_member(:directory_not_reachable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTORY_NOT_REACHABLE', traits: {"smithy.api#enumValue" => "DIRECTORY_NOT_REACHABLE"}))
    DirectoryRegistrationStatusReason.add_member(:directory_type_not_supported, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTORY_TYPE_NOT_SUPPORTED', traits: {"smithy.api#enumValue" => "DIRECTORY_TYPE_NOT_SUPPORTED"}))
    DirectoryRegistrationStatusReason.add_member(:internal_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_FAILURE', traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    DirectoryRegistrationSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryRegistrationArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html\">CreateDirectoryRegistration</a>.</p>"}))
    DirectoryRegistrationSummary.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the Active Directory.</p>"}))
    DirectoryRegistrationSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryRegistrationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status of the directory registration.</p>"}))
    DirectoryRegistrationSummary.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryRegistrationStatusReason, location_name: 'StatusReason', traits: {"smithy.api#documentation" => "<p>Additional information about the directory registration status if the status is\n         failed.</p>"}))
    DirectoryRegistrationSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the directory registration was created.</p>"}))
    DirectoryRegistrationSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the directory registration was updated.</p>"}))
    DirectoryRegistrationSummary.type = Types::DirectoryRegistrationSummary
    EnrollmentFlagsV2.add_member(:include_symmetric_algorithms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'IncludeSymmetricAlgorithms', traits: {"smithy.api#documentation" => "<p>Include symmetric algorithms allowed by the subject.</p>"}))
    EnrollmentFlagsV2.add_member(:user_interaction_required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'UserInteractionRequired', traits: {"smithy.api#documentation" => "<p>Require user interaction when the subject is enrolled and the private key associated\n         with the certificate is used.</p>"}))
    EnrollmentFlagsV2.add_member(:remove_invalid_certificate_from_personal_store, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'RemoveInvalidCertificateFromPersonalStore', traits: {"smithy.api#documentation" => "<p>Delete expired or revoked certificates instead of archiving them.</p>"}))
    EnrollmentFlagsV2.add_member(:no_security_extension, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'NoSecurityExtension', traits: {"smithy.api#documentation" => "<p>This flag instructs the CA to not include the security extension\n         szOID_NTDS_CA_SECURITY_EXT (OID:1.3.6.1.4.1.311.25.2), as specified in [MS-WCCE] sections\n         2.2.2.7.7.4 and 3.2.2.6.2.1.4.5.9, in the issued certificate. This addresses a Windows\n         Kerberos elevation-of-privilege vulnerability.</p>"}))
    EnrollmentFlagsV2.add_member(:enable_key_reuse_on_nt_token_keyset_storage_full, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'EnableKeyReuseOnNtTokenKeysetStorageFull', traits: {"smithy.api#documentation" => "<p>Allow renewal using the same key.</p>"}))
    EnrollmentFlagsV2.type = Types::EnrollmentFlagsV2
    EnrollmentFlagsV3.add_member(:include_symmetric_algorithms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'IncludeSymmetricAlgorithms', traits: {"smithy.api#documentation" => "<p>Include symmetric algorithms allowed by the subject.</p>"}))
    EnrollmentFlagsV3.add_member(:user_interaction_required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'UserInteractionRequired', traits: {"smithy.api#documentation" => "<p>Require user interaction when the subject is enrolled and the private key associated\n         with the certificate is used.</p>"}))
    EnrollmentFlagsV3.add_member(:remove_invalid_certificate_from_personal_store, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'RemoveInvalidCertificateFromPersonalStore', traits: {"smithy.api#documentation" => "<p>Delete expired or revoked certificates instead of archiving them.</p>"}))
    EnrollmentFlagsV3.add_member(:no_security_extension, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'NoSecurityExtension', traits: {"smithy.api#documentation" => "<p>This flag instructs the CA to not include the security extension\n         szOID_NTDS_CA_SECURITY_EXT (OID:1.3.6.1.4.1.311.25.2), as specified in [MS-WCCE] sections\n         2.2.2.7.7.4 and 3.2.2.6.2.1.4.5.9, in the issued certificate. This addresses a Windows\n         Kerberos elevation-of-privilege vulnerability.</p>"}))
    EnrollmentFlagsV3.add_member(:enable_key_reuse_on_nt_token_keyset_storage_full, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'EnableKeyReuseOnNtTokenKeysetStorageFull', traits: {"smithy.api#documentation" => "<p>Allow renewal using the same key.</p>"}))
    EnrollmentFlagsV3.type = Types::EnrollmentFlagsV3
    EnrollmentFlagsV4.add_member(:include_symmetric_algorithms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'IncludeSymmetricAlgorithms', traits: {"smithy.api#documentation" => "<p>Include symmetric algorithms allowed by the subject.</p>"}))
    EnrollmentFlagsV4.add_member(:user_interaction_required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'UserInteractionRequired', traits: {"smithy.api#documentation" => "<p>Require user interaction when the subject is enrolled and the private key associated\n         with the certificate is used.</p>"}))
    EnrollmentFlagsV4.add_member(:remove_invalid_certificate_from_personal_store, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'RemoveInvalidCertificateFromPersonalStore', traits: {"smithy.api#documentation" => "<p>Delete expired or revoked certificates instead of archiving them.</p>"}))
    EnrollmentFlagsV4.add_member(:no_security_extension, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'NoSecurityExtension', traits: {"smithy.api#documentation" => "<p>This flag instructs the CA to not include the security extension\n         szOID_NTDS_CA_SECURITY_EXT (OID:1.3.6.1.4.1.311.25.2), as specified in [MS-WCCE] sections\n         2.2.2.7.7.4 and 3.2.2.6.2.1.4.5.9, in the issued certificate. This addresses a Windows\n         Kerberos elevation-of-privilege vulnerability.</p>"}))
    EnrollmentFlagsV4.add_member(:enable_key_reuse_on_nt_token_keyset_storage_full, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'EnableKeyReuseOnNtTokenKeysetStorageFull', traits: {"smithy.api#documentation" => "<p>Allow renewal using the same key.</p>"}))
    EnrollmentFlagsV4.type = Types::EnrollmentFlagsV4
    ExtensionsV2.add_member(:key_usage, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsage, location_name: 'KeyUsage', traits: {"smithy.api#documentation" => "<p>The key usage extension defines the purpose (e.g., encipherment, signature, certificate\n         signing) of the key contained in the certificate.</p>", "smithy.api#required" => {}}))
    ExtensionsV2.add_member(:application_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationPolicies, location_name: 'ApplicationPolicies', traits: {"smithy.api#documentation" => "<p>Application policies specify what the certificate is used for and its purpose. </p>"}))
    ExtensionsV2.type = Types::ExtensionsV2
    ExtensionsV3.add_member(:key_usage, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsage, location_name: 'KeyUsage', traits: {"smithy.api#documentation" => "<p>The key usage extension defines the purpose (e.g., encipherment, signature, certificate\n         signing) of the key contained in the certificate.</p>", "smithy.api#required" => {}}))
    ExtensionsV3.add_member(:application_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationPolicies, location_name: 'ApplicationPolicies', traits: {"smithy.api#documentation" => "<p>Application policies specify what the certificate is used for and its purpose.</p>"}))
    ExtensionsV3.type = Types::ExtensionsV3
    ExtensionsV4.add_member(:key_usage, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsage, location_name: 'KeyUsage', traits: {"smithy.api#documentation" => "<p>The key usage extension defines the purpose (e.g., encipherment, signature) of the key\n         contained in the certificate.</p>", "smithy.api#required" => {}}))
    ExtensionsV4.add_member(:application_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationPolicies, location_name: 'ApplicationPolicies', traits: {"smithy.api#documentation" => "<p>Application policies specify what the certificate is used for and its purpose.</p>"}))
    ExtensionsV4.type = Types::ExtensionsV4
    GeneralFlagsV2.add_member(:auto_enrollment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'AutoEnrollment', traits: {"smithy.api#documentation" => "<p>Allows certificate issuance using autoenrollment. Set to TRUE to allow\n         autoenrollment.</p>"}))
    GeneralFlagsV2.add_member(:machine_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'MachineType', traits: {"smithy.api#documentation" => "<p>Defines if the template is for machines or users. Set to TRUE if the template is for\n         machines. Set to FALSE if the template is for users.</p>"}))
    GeneralFlagsV2.type = Types::GeneralFlagsV2
    GeneralFlagsV3.add_member(:auto_enrollment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'AutoEnrollment', traits: {"smithy.api#documentation" => "<p>Allows certificate issuance using autoenrollment. Set to TRUE to allow\n         autoenrollment.</p>"}))
    GeneralFlagsV3.add_member(:machine_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'MachineType', traits: {"smithy.api#documentation" => "<p>Defines if the template is for machines or users. Set to TRUE if the template is for\n         machines. Set to FALSE if the template is for users</p>"}))
    GeneralFlagsV3.type = Types::GeneralFlagsV3
    GeneralFlagsV4.add_member(:auto_enrollment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'AutoEnrollment', traits: {"smithy.api#documentation" => "<p>Allows certificate issuance using autoenrollment. Set to TRUE to allow\n         autoenrollment.</p>"}))
    GeneralFlagsV4.add_member(:machine_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'MachineType', traits: {"smithy.api#documentation" => "<p>Defines if the template is for machines or users. Set to TRUE if the template is for\n         machines. Set to FALSE if the template is for users</p>"}))
    GeneralFlagsV4.type = Types::GeneralFlagsV4
    GetConnectorRequest.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'ConnectorArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html\">CreateConnector</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConnectorRequest.type = Types::GetConnectorRequest
    GetConnectorResponse.add_member(:connector, Smithy::Schema::Shapes::ShapeRef.new(shape: Connector, location_name: 'Connector', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>A structure that contains information about your connector.</p>"}))
    GetConnectorResponse.type = Types::GetConnectorResponse
    GetDirectoryRegistrationRequest.add_member(:directory_registration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryRegistrationArn, location_name: 'DirectoryRegistrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html\">CreateDirectoryRegistration</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDirectoryRegistrationRequest.type = Types::GetDirectoryRegistrationRequest
    GetDirectoryRegistrationResponse.add_member(:directory_registration, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryRegistration, location_name: 'DirectoryRegistration', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The directory registration represents the authorization of the connector service with a\n         directory.</p>"}))
    GetDirectoryRegistrationResponse.type = Types::GetDirectoryRegistrationResponse
    GetServicePrincipalNameRequest.add_member(:directory_registration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryRegistrationArn, location_name: 'DirectoryRegistrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html\">CreateDirectoryRegistration</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServicePrincipalNameRequest.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'ConnectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html\">CreateConnector</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServicePrincipalNameRequest.type = Types::GetServicePrincipalNameRequest
    GetServicePrincipalNameResponse.add_member(:service_principal_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipalName, location_name: 'ServicePrincipalName', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The service principal name that the connector uses to authenticate with Active Directory.</p>"}))
    GetServicePrincipalNameResponse.type = Types::GetServicePrincipalNameResponse
    GetTemplateGroupAccessControlEntryRequest.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html\">CreateTemplate</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTemplateGroupAccessControlEntryRequest.add_member(:group_security_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupSecurityIdentifier, location_name: 'GroupSecurityIdentifier', traits: {"smithy.api#documentation" => "<p>Security identifier (SID) of the group object from Active Directory. The SID starts with\n         \"S-\".</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTemplateGroupAccessControlEntryRequest.type = Types::GetTemplateGroupAccessControlEntryRequest
    GetTemplateGroupAccessControlEntryResponse.add_member(:access_control_entry, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlEntry, location_name: 'AccessControlEntry', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>An access control entry allows or denies an Active Directory group from enrolling and/or\n         autoenrolling with a template.</p>"}))
    GetTemplateGroupAccessControlEntryResponse.type = Types::GetTemplateGroupAccessControlEntryResponse
    GetTemplateRequest.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html\">CreateTemplate</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTemplateRequest.type = Types::GetTemplateRequest
    GetTemplateResponse.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: Template, location_name: 'Template', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>A certificate template that the connector uses to issue certificates from a private\n         CA.</p>"}))
    GetTemplateResponse.type = Types::GetTemplateResponse
    HashAlgorithm.add_member(:sha256, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA256', traits: {"smithy.api#enumValue" => "SHA256"}))
    HashAlgorithm.add_member(:sha384, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA384', traits: {"smithy.api#enumValue" => "SHA384"}))
    HashAlgorithm.add_member(:sha512, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA512', traits: {"smithy.api#enumValue" => "SHA512"}))
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    IpAddressType.add_member(:ipv4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "IPV4"}))
    IpAddressType.add_member(:dualstack, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUALSTACK', traits: {"smithy.api#enumValue" => "DUALSTACK"}))
    KeySpec.add_member(:key_exchange, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEY_EXCHANGE', traits: {"smithy.api#enumValue" => "KEY_EXCHANGE"}))
    KeySpec.add_member(:signature, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIGNATURE', traits: {"smithy.api#enumValue" => "SIGNATURE"}))
    KeyUsage.add_member(:critical, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Critical', traits: {"smithy.api#documentation" => "<p>Sets the key usage extension to critical.</p>"}))
    KeyUsage.add_member(:usage_flags, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsageFlags, location_name: 'UsageFlags', traits: {"smithy.api#documentation" => "<p>The key usage flags represent the purpose (e.g., encipherment, signature) of the key\n         contained in the certificate.</p>", "smithy.api#required" => {}}))
    KeyUsage.type = Types::KeyUsage
    KeyUsageFlags.add_member(:digital_signature, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'DigitalSignature', traits: {"smithy.api#documentation" => "<p>The digitalSignature is asserted when the subject public key is used for verifying\n         digital signatures.</p>"}))
    KeyUsageFlags.add_member(:non_repudiation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'NonRepudiation', traits: {"smithy.api#documentation" => "<p>NonRepudiation is asserted when the subject public key is used to verify digital\n         signatures.</p>"}))
    KeyUsageFlags.add_member(:key_encipherment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'KeyEncipherment', traits: {"smithy.api#documentation" => "<p>KeyEncipherment is asserted when the subject public key is used for enciphering private\n         or secret keys, i.e., for key transport.</p>"}))
    KeyUsageFlags.add_member(:data_encipherment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'DataEncipherment', traits: {"smithy.api#documentation" => "<p>DataEncipherment is asserted when the subject public key is used for directly\n         enciphering raw user data without the use of an intermediate symmetric cipher.</p>"}))
    KeyUsageFlags.add_member(:key_agreement, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'KeyAgreement', traits: {"smithy.api#documentation" => "<p>KeyAgreement is asserted when the subject public key is used for key agreement.</p>"}))
    KeyUsageFlags.type = Types::KeyUsageFlags
    KeyUsageProperty.add_member(:property_type, Types::KeyUsageProperty::PropertyType, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsagePropertyType, location_name: 'PropertyType', traits: {"smithy.api#documentation" => "<p>You can specify all key usages using property type ALL. You can use property type or\n         property flags but not both. </p>"}))
    KeyUsageProperty.add_member(:property_flags, Types::KeyUsageProperty::PropertyFlags, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsagePropertyFlags, location_name: 'PropertyFlags', traits: {"smithy.api#documentation" => "<p>You can specify key usage for encryption, key agreement, and signature. You can use\n         property flags or property type but not both. </p>"}))
    KeyUsageProperty.add_member(:unknown, Types::KeyUsageProperty::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    KeyUsageProperty.type = Types::KeyUsageProperty
    KeyUsagePropertyFlags.add_member(:decrypt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Decrypt', traits: {"smithy.api#documentation" => "<p>Allows key for encryption and decryption.</p>"}))
    KeyUsagePropertyFlags.add_member(:key_agreement, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'KeyAgreement', traits: {"smithy.api#documentation" => "<p>Allows key exchange without encryption.</p>"}))
    KeyUsagePropertyFlags.add_member(:sign, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Sign', traits: {"smithy.api#documentation" => "<p>Allow key use for digital signature.</p>"}))
    KeyUsagePropertyFlags.type = Types::KeyUsagePropertyFlags
    KeyUsagePropertyType.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    ListConnectorsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Use this parameter when paginating results to specify the maximum number of items to\n         return in the response on each page. If additional items exist beyond the number you\n         specify, the <code>NextToken</code> element is sent in the response. Use this\n            <code>NextToken</code> value in a subsequent request to retrieve additional\n         items.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListConnectorsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Use this parameter when paginating results in a subsequent request after you receive a\n         response with truncated results. Set it to the value of the <code>NextToken</code>\n         parameter from the response you just received.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListConnectorsRequest.type = Types::ListConnectorsRequest
    ListConnectorsResponse.add_member(:connectors, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorList, location_name: 'Connectors', traits: {"smithy.api#documentation" => "<p>Summary information about each connector you have created.</p>"}))
    ListConnectorsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Use this parameter when paginating results in a subsequent request after you receive a\n         response with truncated results. Set it to the value of the NextToken parameter from the\n         response you just received.</p>"}))
    ListConnectorsResponse.type = Types::ListConnectorsResponse
    ListDirectoryRegistrationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Use this parameter when paginating results to specify the maximum number of items to\n         return in the response on each page. If additional items exist beyond the number you\n         specify, the <code>NextToken</code> element is sent in the response. Use this\n            <code>NextToken</code> value in a subsequent request to retrieve additional\n         items.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListDirectoryRegistrationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Use this parameter when paginating results in a subsequent request after you receive a\n         response with truncated results. Set it to the value of the <code>NextToken</code>\n         parameter from the response you just received.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListDirectoryRegistrationsRequest.type = Types::ListDirectoryRegistrationsRequest
    ListDirectoryRegistrationsResponse.add_member(:directory_registrations, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryRegistrationList, location_name: 'DirectoryRegistrations', traits: {"smithy.api#documentation" => "<p>Summary information about each directory registration you have created.</p>"}))
    ListDirectoryRegistrationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Use this parameter when paginating results in a subsequent request after you receive a\n         response with truncated results. Set it to the value of the <code>NextToken</code>\n         parameter from the response you just received.</p>"}))
    ListDirectoryRegistrationsResponse.type = Types::ListDirectoryRegistrationsResponse
    ListServicePrincipalNamesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Use this parameter when paginating results to specify the maximum number of items to\n         return in the response on each page. If additional items exist beyond the number you\n         specify, the <code>NextToken</code> element is sent in the response. Use this\n            <code>NextToken</code> value in a subsequent request to retrieve additional\n         items.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListServicePrincipalNamesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Use this parameter when paginating results in a subsequent request after you receive a\n         response with truncated results. Set it to the value of the <code>NextToken</code>\n         parameter from the response you just received.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListServicePrincipalNamesRequest.add_member(:directory_registration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryRegistrationArn, location_name: 'DirectoryRegistrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html\">CreateDirectoryRegistration</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListServicePrincipalNamesRequest.type = Types::ListServicePrincipalNamesRequest
    ListServicePrincipalNamesResponse.add_member(:service_principal_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipalNameList, location_name: 'ServicePrincipalNames', traits: {"smithy.api#documentation" => "<p>The service principal name, if any, that the connector uses to authenticate with\n         Active Directory.</p>"}))
    ListServicePrincipalNamesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Use this parameter when paginating results in a subsequent request after you receive a\n         response with truncated results. Set it to the value of the <code>NextToken</code>\n         parameter from the response you just received.</p>"}))
    ListServicePrincipalNamesResponse.type = Types::ListServicePrincipalNamesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you created the resource. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags, if any, that are associated with your resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTemplateGroupAccessControlEntriesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Use this parameter when paginating results to specify the maximum number of items to\n         return in the response on each page. If additional items exist beyond the number you\n         specify, the <code>NextToken</code> element is sent in the response. Use this\n            <code>NextToken</code> value in a subsequent request to retrieve additional\n         items.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListTemplateGroupAccessControlEntriesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Use this parameter when paginating results in a subsequent request after you receive a\n         response with truncated results. Set it to the value of the <code>NextToken</code>\n         parameter from the response you just received.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListTemplateGroupAccessControlEntriesRequest.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html\">CreateTemplate</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTemplateGroupAccessControlEntriesRequest.type = Types::ListTemplateGroupAccessControlEntriesRequest
    ListTemplateGroupAccessControlEntriesResponse.add_member(:access_control_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlEntryList, location_name: 'AccessControlEntries', traits: {"smithy.api#documentation" => "<p>An access control entry grants or denies permission to an Active Directory group to enroll\n         certificates for a template.</p>"}))
    ListTemplateGroupAccessControlEntriesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Use this parameter when paginating results in a subsequent request after you receive a\n         response with truncated results. Set it to the value of the <code>NextToken</code>\n         parameter from the response you just received.</p>"}))
    ListTemplateGroupAccessControlEntriesResponse.type = Types::ListTemplateGroupAccessControlEntriesResponse
    ListTemplatesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Use this parameter when paginating results to specify the maximum number of items to\n         return in the response on each page. If additional items exist beyond the number you\n         specify, the <code>NextToken</code> element is sent in the response. Use this\n            <code>NextToken</code> value in a subsequent request to retrieve additional\n         items.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListTemplatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Use this parameter when paginating results in a subsequent request after you receive a\n         response with truncated results. Set it to the value of the <code>NextToken</code>\n         parameter from the response you just received.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListTemplatesRequest.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'ConnectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html\">CreateConnector</a>.</p>", "smithy.api#httpQuery" => "ConnectorArn", "smithy.api#required" => {}}))
    ListTemplatesRequest.type = Types::ListTemplatesRequest
    ListTemplatesResponse.add_member(:templates, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateList, location_name: 'Templates', traits: {"smithy.api#documentation" => "<p>Custom configuration templates used when issuing a certificate. </p>"}))
    ListTemplatesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Use this parameter when paginating results in a subsequent request after you receive a\n         response with truncated results. Set it to the value of the <code>NextToken</code>\n         parameter from the response you just received.</p>"}))
    ListTemplatesResponse.type = Types::ListTemplatesResponse
    PrivateKeyAlgorithm.add_member(:rsa, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA', traits: {"smithy.api#enumValue" => "RSA"}))
    PrivateKeyAlgorithm.add_member(:ecdh_p256, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECDH_P256', traits: {"smithy.api#enumValue" => "ECDH_P256"}))
    PrivateKeyAlgorithm.add_member(:ecdh_p384, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECDH_P384', traits: {"smithy.api#enumValue" => "ECDH_P384"}))
    PrivateKeyAlgorithm.add_member(:ecdh_p521, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECDH_P521', traits: {"smithy.api#enumValue" => "ECDH_P521"}))
    PrivateKeyAttributesV2.add_member(:minimal_key_length, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MinimalKeyLength', traits: {"smithy.api#documentation" => "<p>Set the minimum key length of the private key.</p>", "smithy.api#range" => {"min" => 1}, "smithy.api#required" => {}}))
    PrivateKeyAttributesV2.add_member(:key_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: KeySpec, location_name: 'KeySpec', traits: {"smithy.api#documentation" => "<p>Defines the purpose of the private key. Set it to \"KEY_EXCHANGE\" or \"SIGNATURE\"\n         value.</p>", "smithy.api#required" => {}}))
    PrivateKeyAttributesV2.add_member(:crypto_providers, Smithy::Schema::Shapes::ShapeRef.new(shape: CryptoProvidersList, location_name: 'CryptoProviders', traits: {"smithy.api#documentation" => "<p>Defines the cryptographic providers used to generate the private key.</p>"}))
    PrivateKeyAttributesV2.type = Types::PrivateKeyAttributesV2
    PrivateKeyAttributesV3.add_member(:minimal_key_length, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MinimalKeyLength', traits: {"smithy.api#documentation" => "<p>Set the minimum key length of the private key.</p>", "smithy.api#range" => {"min" => 1}, "smithy.api#required" => {}}))
    PrivateKeyAttributesV3.add_member(:key_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: KeySpec, location_name: 'KeySpec', traits: {"smithy.api#documentation" => "<p>Defines the purpose of the private key. Set it to \"KEY_EXCHANGE\" or \"SIGNATURE\"\n         value.</p>", "smithy.api#required" => {}}))
    PrivateKeyAttributesV3.add_member(:crypto_providers, Smithy::Schema::Shapes::ShapeRef.new(shape: CryptoProvidersList, location_name: 'CryptoProviders', traits: {"smithy.api#documentation" => "<p>Defines the cryptographic providers used to generate the private key.</p>"}))
    PrivateKeyAttributesV3.add_member(:key_usage_property, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsageProperty, location_name: 'KeyUsageProperty', traits: {"smithy.api#documentation" => "<p>The key usage property defines the purpose of the private key contained in the\n         certificate. You can specify specific purposes using property flags or all by using\n         property type ALL.</p>", "smithy.api#required" => {}}))
    PrivateKeyAttributesV3.add_member(:algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateKeyAlgorithm, location_name: 'Algorithm', traits: {"smithy.api#documentation" => "<p>Defines the algorithm used to generate the private key.</p>", "smithy.api#required" => {}}))
    PrivateKeyAttributesV3.type = Types::PrivateKeyAttributesV3
    PrivateKeyAttributesV4.add_member(:minimal_key_length, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MinimalKeyLength', traits: {"smithy.api#documentation" => "<p>Set the minimum key length of the private key.</p>", "smithy.api#range" => {"min" => 1}, "smithy.api#required" => {}}))
    PrivateKeyAttributesV4.add_member(:key_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: KeySpec, location_name: 'KeySpec', traits: {"smithy.api#documentation" => "<p>Defines the purpose of the private key. Set it to \"KEY_EXCHANGE\" or \"SIGNATURE\"\n         value.</p>", "smithy.api#required" => {}}))
    PrivateKeyAttributesV4.add_member(:crypto_providers, Smithy::Schema::Shapes::ShapeRef.new(shape: CryptoProvidersList, location_name: 'CryptoProviders', traits: {"smithy.api#documentation" => "<p>Defines the cryptographic providers used to generate the private key.</p>"}))
    PrivateKeyAttributesV4.add_member(:key_usage_property, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsageProperty, location_name: 'KeyUsageProperty', traits: {"smithy.api#documentation" => "<p>The key usage property defines the purpose of the private key contained in the\n         certificate. You can specify specific purposes using property flags or all by using\n         property type ALL.</p>"}))
    PrivateKeyAttributesV4.add_member(:algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateKeyAlgorithm, location_name: 'Algorithm', traits: {"smithy.api#documentation" => "<p>Defines the algorithm used to generate the private key.</p>"}))
    PrivateKeyAttributesV4.type = Types::PrivateKeyAttributesV4
    PrivateKeyFlagsV2.add_member(:exportable_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'ExportableKey', traits: {"smithy.api#documentation" => "<p>Allows the private key to be exported.</p>"}))
    PrivateKeyFlagsV2.add_member(:strong_key_protection_required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'StrongKeyProtectionRequired', traits: {"smithy.api#documentation" => "<p>Require user input when using the private key for enrollment.</p>"}))
    PrivateKeyFlagsV2.add_member(:client_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientCompatibilityV2, location_name: 'ClientVersion', traits: {"smithy.api#documentation" => "<p>Defines the minimum client compatibility.</p>", "smithy.api#required" => {}}))
    PrivateKeyFlagsV2.type = Types::PrivateKeyFlagsV2
    PrivateKeyFlagsV3.add_member(:exportable_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'ExportableKey', traits: {"smithy.api#documentation" => "<p>Allows the private key to be exported.</p>"}))
    PrivateKeyFlagsV3.add_member(:strong_key_protection_required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'StrongKeyProtectionRequired', traits: {"smithy.api#documentation" => "<p>Requirer user input when using the private key for enrollment.</p>"}))
    PrivateKeyFlagsV3.add_member(:require_alternate_signature_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'RequireAlternateSignatureAlgorithm', traits: {"smithy.api#documentation" => "<p>Reguires the PKCS #1 v2.1 signature format for certificates. You should verify that your\n         CA, objects, and applications can accept this signature format.</p>"}))
    PrivateKeyFlagsV3.add_member(:client_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientCompatibilityV3, location_name: 'ClientVersion', traits: {"smithy.api#documentation" => "<p>Defines the minimum client compatibility.</p>", "smithy.api#required" => {}}))
    PrivateKeyFlagsV3.type = Types::PrivateKeyFlagsV3
    PrivateKeyFlagsV4.add_member(:exportable_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'ExportableKey', traits: {"smithy.api#documentation" => "<p>Allows the private key to be exported.</p>"}))
    PrivateKeyFlagsV4.add_member(:strong_key_protection_required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'StrongKeyProtectionRequired', traits: {"smithy.api#documentation" => "<p>Require user input when using the private key for enrollment.</p>"}))
    PrivateKeyFlagsV4.add_member(:require_alternate_signature_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'RequireAlternateSignatureAlgorithm', traits: {"smithy.api#documentation" => "<p>Requires the PKCS #1 v2.1 signature format for certificates. You should verify that your\n         CA, objects, and applications can accept this signature format.</p>"}))
    PrivateKeyFlagsV4.add_member(:require_same_key_renewal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'RequireSameKeyRenewal', traits: {"smithy.api#documentation" => "<p>Renew certificate using the same private key.</p>"}))
    PrivateKeyFlagsV4.add_member(:use_legacy_provider, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'UseLegacyProvider', traits: {"smithy.api#documentation" => "<p>Specifies the cryptographic service provider category used to generate private keys. Set\n         to TRUE to use Legacy Cryptographic Service Providers and FALSE to use Key Storage\n         Providers.</p>"}))
    PrivateKeyFlagsV4.add_member(:client_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientCompatibilityV4, location_name: 'ClientVersion', traits: {"smithy.api#documentation" => "<p>Defines the minimum client compatibility.</p>", "smithy.api#required" => {}}))
    PrivateKeyFlagsV4.type = Types::PrivateKeyFlagsV4
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Web Services resource.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type, which can be one of <code>Connector</code>, <code>Template</code>, <code>TemplateGroupAccessControlEntry</code>, <code>ServicePrincipalName</code>, or <code>DirectoryRegistration</code>.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SecurityGroupIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    ServicePrincipalName.add_member(:directory_registration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryRegistrationArn, location_name: 'DirectoryRegistrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html\">CreateDirectoryRegistration</a>.</p>"}))
    ServicePrincipalName.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'ConnectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html\">CreateConnector.html</a>.</p>"}))
    ServicePrincipalName.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipalNameStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of a service principal name.</p>"}))
    ServicePrincipalName.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipalNameStatusReason, location_name: 'StatusReason', traits: {"smithy.api#documentation" => "<p>Additional information for the status of a service principal name if the status is\n         failed.</p>"}))
    ServicePrincipalName.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the service principal name was created.</p>"}))
    ServicePrincipalName.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the service principal name was updated.</p>"}))
    ServicePrincipalName.type = Types::ServicePrincipalName
    ServicePrincipalNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipalNameSummary)
    ServicePrincipalNameStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ServicePrincipalNameStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ServicePrincipalNameStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ServicePrincipalNameStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ServicePrincipalNameStatusReason.add_member(:directory_access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTORY_ACCESS_DENIED', traits: {"smithy.api#enumValue" => "DIRECTORY_ACCESS_DENIED"}))
    ServicePrincipalNameStatusReason.add_member(:directory_not_reachable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTORY_NOT_REACHABLE', traits: {"smithy.api#enumValue" => "DIRECTORY_NOT_REACHABLE"}))
    ServicePrincipalNameStatusReason.add_member(:directory_resource_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTORY_RESOURCE_NOT_FOUND', traits: {"smithy.api#enumValue" => "DIRECTORY_RESOURCE_NOT_FOUND"}))
    ServicePrincipalNameStatusReason.add_member(:spn_exists_on_different_ad_object, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPN_EXISTS_ON_DIFFERENT_AD_OBJECT', traits: {"smithy.api#enumValue" => "SPN_EXISTS_ON_DIFFERENT_AD_OBJECT"}))
    ServicePrincipalNameStatusReason.add_member(:spn_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPN_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "SPN_LIMIT_EXCEEDED"}))
    ServicePrincipalNameStatusReason.add_member(:internal_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_FAILURE', traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    ServicePrincipalNameSummary.add_member(:directory_registration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryRegistrationArn, location_name: 'DirectoryRegistrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration.html\">CreateDirectoryRegistration</a>.</p>"}))
    ServicePrincipalNameSummary.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'ConnectorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html\">CreateConnector</a>.</p>"}))
    ServicePrincipalNameSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipalNameStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of a service principal name.</p>"}))
    ServicePrincipalNameSummary.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipalNameStatusReason, location_name: 'StatusReason', traits: {"smithy.api#documentation" => "<p>Additional information for the status of a service principal name if the status is\n         failed.</p>"}))
    ServicePrincipalNameSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the service principal name was created.</p>"}))
    ServicePrincipalNameSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>Time when the service principal name was updated.</p>"}))
    ServicePrincipalNameSummary.type = Types::ServicePrincipalNameSummary
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Web Services resource.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type, which can be one of <code>Connector</code>, <code>Template</code>, <code>TemplateGroupAccessControlEntry</code>, <code>ServicePrincipalName</code>, or <code>DirectoryRegistration</code>.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>Identifies the originating service.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "<p>The code associated with the service quota.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SubjectNameFlagsV2.add_member(:san_require_domain_dns, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'SanRequireDomainDns', traits: {"smithy.api#documentation" => "<p>Include the domain DNS in the subject alternate name.</p>"}))
    SubjectNameFlagsV2.add_member(:san_require_spn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'SanRequireSpn', traits: {"smithy.api#documentation" => "<p>Include the service principal name (SPN) in the subject alternate name.</p>"}))
    SubjectNameFlagsV2.add_member(:san_require_directory_guid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'SanRequireDirectoryGuid', traits: {"smithy.api#documentation" => "<p>Include the globally unique identifier (GUID) in the subject alternate name.</p>"}))
    SubjectNameFlagsV2.add_member(:san_require_upn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'SanRequireUpn', traits: {"smithy.api#documentation" => "<p>Include the user principal name (UPN) in the subject alternate name.</p>"}))
    SubjectNameFlagsV2.add_member(:san_require_email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'SanRequireEmail', traits: {"smithy.api#documentation" => "<p>Include the subject's email in the subject alternate name.</p>"}))
    SubjectNameFlagsV2.add_member(:san_require_dns, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'SanRequireDns', traits: {"smithy.api#documentation" => "<p>Include the DNS in the subject alternate name.</p>"}))
    SubjectNameFlagsV2.add_member(:require_dns_as_cn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'RequireDnsAsCn', traits: {"smithy.api#documentation" => "<p>Include the DNS as common name in the subject name.</p>"}))
    SubjectNameFlagsV2.add_member(:require_email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'RequireEmail', traits: {"smithy.api#documentation" => "<p>Include the subject's email in the subject name.</p>"}))
    SubjectNameFlagsV2.add_member(:require_common_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'RequireCommonName', traits: {"smithy.api#documentation" => "<p>Include the common name in the subject name.</p>"}))
    SubjectNameFlagsV2.add_member(:require_directory_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'RequireDirectoryPath', traits: {"smithy.api#documentation" => "<p>Include the directory path in the subject name.</p>"}))
    SubjectNameFlagsV2.type = Types::SubjectNameFlagsV2
    SubjectNameFlagsV3.add_member(:san_require_domain_dns, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'SanRequireDomainDns', traits: {"smithy.api#documentation" => "<p>Include the domain DNS in the subject alternate name.</p>"}))
    SubjectNameFlagsV3.add_member(:san_require_spn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'SanRequireSpn', traits: {"smithy.api#documentation" => "<p>Include the service principal name (SPN) in the subject alternate name.</p>"}))
    SubjectNameFlagsV3.add_member(:san_require_directory_guid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'SanRequireDirectoryGuid', traits: {"smithy.api#documentation" => "<p>Include the globally unique identifier (GUID) in the subject alternate name.</p>"}))
    SubjectNameFlagsV3.add_member(:san_require_upn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'SanRequireUpn', traits: {"smithy.api#documentation" => "<p>Include the user principal name (UPN) in the subject alternate name.</p>"}))
    SubjectNameFlagsV3.add_member(:san_require_email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'SanRequireEmail', traits: {"smithy.api#documentation" => "<p>Include the subject's email in the subject alternate name.</p>"}))
    SubjectNameFlagsV3.add_member(:san_require_dns, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'SanRequireDns', traits: {"smithy.api#documentation" => "<p>Include the DNS in the subject alternate name.</p>"}))
    SubjectNameFlagsV3.add_member(:require_dns_as_cn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'RequireDnsAsCn', traits: {"smithy.api#documentation" => "<p>Include the DNS as common name in the subject name.</p>"}))
    SubjectNameFlagsV3.add_member(:require_email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'RequireEmail', traits: {"smithy.api#documentation" => "<p>Include the subject's email in the subject name.</p>"}))
    SubjectNameFlagsV3.add_member(:require_common_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'RequireCommonName', traits: {"smithy.api#documentation" => "<p>Include the common name in the subject name. </p>"}))
    SubjectNameFlagsV3.add_member(:require_directory_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'RequireDirectoryPath', traits: {"smithy.api#documentation" => "<p>Include the directory path in the subject name.</p>"}))
    SubjectNameFlagsV3.type = Types::SubjectNameFlagsV3
    SubjectNameFlagsV4.add_member(:san_require_domain_dns, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'SanRequireDomainDns', traits: {"smithy.api#documentation" => "<p>Include the domain DNS in the subject alternate name.</p>"}))
    SubjectNameFlagsV4.add_member(:san_require_spn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'SanRequireSpn', traits: {"smithy.api#documentation" => "<p>Include the service principal name (SPN) in the subject alternate name.</p>"}))
    SubjectNameFlagsV4.add_member(:san_require_directory_guid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'SanRequireDirectoryGuid', traits: {"smithy.api#documentation" => "<p>Include the globally unique identifier (GUID) in the subject alternate name.</p>"}))
    SubjectNameFlagsV4.add_member(:san_require_upn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'SanRequireUpn', traits: {"smithy.api#documentation" => "<p>Include the user principal name (UPN) in the subject alternate name.</p>"}))
    SubjectNameFlagsV4.add_member(:san_require_email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'SanRequireEmail', traits: {"smithy.api#documentation" => "<p>Include the subject's email in the subject alternate name.</p>"}))
    SubjectNameFlagsV4.add_member(:san_require_dns, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'SanRequireDns', traits: {"smithy.api#documentation" => "<p>Include the DNS in the subject alternate name.</p>"}))
    SubjectNameFlagsV4.add_member(:require_dns_as_cn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'RequireDnsAsCn', traits: {"smithy.api#documentation" => "<p>Include the DNS as common name in the subject name.</p>"}))
    SubjectNameFlagsV4.add_member(:require_email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'RequireEmail', traits: {"smithy.api#documentation" => "<p>Include the subject's email in the subject name.</p>"}))
    SubjectNameFlagsV4.add_member(:require_common_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'RequireCommonName', traits: {"smithy.api#documentation" => "<p>Include the common name in the subject name.</p>"}))
    SubjectNameFlagsV4.add_member(:require_directory_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'RequireDirectoryPath', traits: {"smithy.api#documentation" => "<p>Include the directory path in the subject name.</p>"}))
    SubjectNameFlagsV4.type = Types::SubjectNameFlagsV4
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you created the resource. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata assigned to a directory registration consisting of a key-value pair.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    Tags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    Template.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html\">CreateTemplate</a>.</p>"}))
    Template.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'ConnectorArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html\">CreateConnector</a>.</p>"}))
    Template.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateDefinition, location_name: 'Definition', traits: {"smithy.api#documentation" => "<p>Template configuration to define the information included in certificates. Define\n         certificate validity and renewal periods, certificate request handling and enrollment\n         options, key usage extensions, application policies, and cryptography settings.</p>"}))
    Template.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the templates. Template names must be unique.</p>"}))
    Template.add_member(:object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomObjectIdentifier, location_name: 'ObjectIdentifier', traits: {"smithy.api#documentation" => "<p>Object identifier of a template.</p>"}))
    Template.add_member(:policy_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'PolicySchema', traits: {"smithy.api#documentation" => "<p>The template schema version. Template schema versions can be v2, v3, or v4. The template\n         configuration options change based on the template schema version.</p>"}))
    Template.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status of the template. Status can be creating, active, deleting, or failed.</p>"}))
    Template.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateRevision, location_name: 'Revision', traits: {"smithy.api#documentation" => "<p>The version of the template. Template updates will increment the minor revision.\n         Re-enrolling all certificate holders will increment the major revision.</p>"}))
    Template.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the template was created.</p>"}))
    Template.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the template was updated.</p>"}))
    Template.type = Types::Template
    TemplateDefinition.add_member(:template_v2, Types::TemplateDefinition::TemplateV2, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateV2, location_name: 'TemplateV2', traits: {"smithy.api#documentation" => "<p>Template configuration to define the information included in certificates. Define\n         certificate validity and renewal periods, certificate request handling and enrollment\n         options, key usage extensions, application policies, and cryptography settings.</p>"}))
    TemplateDefinition.add_member(:template_v3, Types::TemplateDefinition::TemplateV3, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateV3, location_name: 'TemplateV3', traits: {"smithy.api#documentation" => "<p>Template configuration to define the information included in certificates. Define\n         certificate validity and renewal periods, certificate request handling and enrollment\n         options, key usage extensions, application policies, and cryptography settings.</p>"}))
    TemplateDefinition.add_member(:template_v4, Types::TemplateDefinition::TemplateV4, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateV4, location_name: 'TemplateV4', traits: {"smithy.api#documentation" => "<p>Template configuration to define the information included in certificates. Define\n         certificate validity and renewal periods, certificate request handling and enrollment\n         options, key usage extensions, application policies, and cryptography settings.</p>"}))
    TemplateDefinition.add_member(:unknown, Types::TemplateDefinition::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    TemplateDefinition.type = Types::TemplateDefinition
    TemplateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateSummary)
    TemplateNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName)
    TemplateRevision.add_member(:major_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MajorRevision', traits: {"smithy.api#documentation" => "<p>The revision version of the template. Re-enrolling all certificate holders will\n         increment the major revision.</p>", "smithy.api#required" => {}}))
    TemplateRevision.add_member(:minor_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MinorRevision', traits: {"smithy.api#documentation" => "<p>The revision version of the template. Re-enrolling all certificate holders will\n         increment the major revision.</p>", "smithy.api#required" => {}}))
    TemplateRevision.type = Types::TemplateRevision
    TemplateStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TemplateStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    TemplateSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html\">CreateTemplate</a>.</p>"}))
    TemplateSummary.add_member(:connector_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectorArn, location_name: 'ConnectorArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector.html\">CreateConnector</a>.</p>"}))
    TemplateSummary.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateDefinition, location_name: 'Definition', traits: {"smithy.api#documentation" => "<p>Template configuration to define the information included in certificates. Define\n         certificate validity and renewal periods, certificate request handling and enrollment\n         options, key usage extensions, application policies, and cryptography settings.</p>"}))
    TemplateSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the template. The template name must be unique.</p>"}))
    TemplateSummary.add_member(:object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomObjectIdentifier, location_name: 'ObjectIdentifier', traits: {"smithy.api#documentation" => "<p>Object identifier of a template.</p>"}))
    TemplateSummary.add_member(:policy_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'PolicySchema', traits: {"smithy.api#documentation" => "<p>The template schema version. Template schema versions can be v2, v3, or v4. The template\n         configuration options change based on the template schema version.</p>"}))
    TemplateSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status of the template. Status can be creating, active, deleting, or failed.</p>"}))
    TemplateSummary.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateRevision, location_name: 'Revision', traits: {"smithy.api#documentation" => "<p>The revision version of the template. Template updates will increment the minor\n         revision. Re-enrolling all certificate holders will increment the major revision.</p>"}))
    TemplateSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the template was created.</p>"}))
    TemplateSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the template was updated.</p>"}))
    TemplateSummary.type = Types::TemplateSummary
    TemplateV2.add_member(:certificate_validity, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateValidity, location_name: 'CertificateValidity', traits: {"smithy.api#documentation" => "<p>Certificate validity describes the validity and renewal periods of a certificate.</p>", "smithy.api#required" => {}}))
    TemplateV2.add_member(:superseded_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateNameList, location_name: 'SupersededTemplates', traits: {"smithy.api#documentation" => "<p>List of templates in Active Directory that are superseded by this template.</p>"}))
    TemplateV2.add_member(:private_key_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateKeyAttributesV2, location_name: 'PrivateKeyAttributes', traits: {"smithy.api#documentation" => "<p>Private key attributes allow you to specify the minimal key length, key spec, and\n         cryptographic providers for the private key of a certificate for v2 templates. V2 templates\n         allow you to use Legacy Cryptographic Service Providers.</p>", "smithy.api#required" => {}}))
    TemplateV2.add_member(:private_key_flags, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateKeyFlagsV2, location_name: 'PrivateKeyFlags', traits: {"smithy.api#documentation" => "<p>Private key flags for v2 templates specify the client compatibility, if the private key\n         can be exported, and if user input is required when using a private key. </p>", "smithy.api#required" => {}}))
    TemplateV2.add_member(:enrollment_flags, Smithy::Schema::Shapes::ShapeRef.new(shape: EnrollmentFlagsV2, location_name: 'EnrollmentFlags', traits: {"smithy.api#documentation" => "<p>Enrollment flags describe the enrollment settings for certificates such as using the\n         existing private key and deleting expired or revoked certificates.</p>", "smithy.api#required" => {}}))
    TemplateV2.add_member(:subject_name_flags, Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectNameFlagsV2, location_name: 'SubjectNameFlags', traits: {"smithy.api#documentation" => "<p>Subject name flags describe the subject name and subject alternate name that is included\n         in a certificate.</p>", "smithy.api#required" => {}}))
    TemplateV2.add_member(:general_flags, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralFlagsV2, location_name: 'GeneralFlags', traits: {"smithy.api#documentation" => "<p>General flags describe whether the template is used for computers or users and if the\n         template can be used with autoenrollment.</p>", "smithy.api#required" => {}}))
    TemplateV2.add_member(:extensions, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtensionsV2, location_name: 'Extensions', traits: {"smithy.api#documentation" => "<p>Extensions describe the key usage extensions and application policies for a\n         template.</p>", "smithy.api#required" => {}}))
    TemplateV2.type = Types::TemplateV2
    TemplateV3.add_member(:certificate_validity, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateValidity, location_name: 'CertificateValidity', traits: {"smithy.api#documentation" => "<p>Certificate validity describes the validity and renewal periods of a certificate.</p>", "smithy.api#required" => {}}))
    TemplateV3.add_member(:superseded_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateNameList, location_name: 'SupersededTemplates', traits: {"smithy.api#documentation" => "<p>List of templates in Active Directory that are superseded by this template.</p>"}))
    TemplateV3.add_member(:private_key_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateKeyAttributesV3, location_name: 'PrivateKeyAttributes', traits: {"smithy.api#documentation" => "<p>Private key attributes allow you to specify the algorithm, minimal key length, key spec,\n         key usage, and cryptographic providers for the private key of a certificate for v3\n         templates. V3 templates allow you to use Key Storage Providers.</p>", "smithy.api#required" => {}}))
    TemplateV3.add_member(:private_key_flags, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateKeyFlagsV3, location_name: 'PrivateKeyFlags', traits: {"smithy.api#documentation" => "<p>Private key flags for v3 templates specify the client compatibility, if the private key\n         can be exported, if user input is required when using a private key, and if an alternate\n         signature algorithm should be used.</p>", "smithy.api#required" => {}}))
    TemplateV3.add_member(:enrollment_flags, Smithy::Schema::Shapes::ShapeRef.new(shape: EnrollmentFlagsV3, location_name: 'EnrollmentFlags', traits: {"smithy.api#documentation" => "<p>Enrollment flags describe the enrollment settings for certificates such as using the\n         existing private key and deleting expired or revoked certificates.</p>", "smithy.api#required" => {}}))
    TemplateV3.add_member(:subject_name_flags, Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectNameFlagsV3, location_name: 'SubjectNameFlags', traits: {"smithy.api#documentation" => "<p>Subject name flags describe the subject name and subject alternate name that is included\n         in a certificate.</p>", "smithy.api#required" => {}}))
    TemplateV3.add_member(:general_flags, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralFlagsV3, location_name: 'GeneralFlags', traits: {"smithy.api#documentation" => "<p>General flags describe whether the template is used for computers or users and if the\n         template can be used with autoenrollment.</p>", "smithy.api#required" => {}}))
    TemplateV3.add_member(:hash_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: HashAlgorithm, location_name: 'HashAlgorithm', traits: {"smithy.api#documentation" => "<p>Specifies the hash algorithm used to hash the private key.</p>", "smithy.api#required" => {}}))
    TemplateV3.add_member(:extensions, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtensionsV3, location_name: 'Extensions', traits: {"smithy.api#documentation" => "<p>Extensions describe the key usage extensions and application policies for a\n         template.</p>", "smithy.api#required" => {}}))
    TemplateV3.type = Types::TemplateV3
    TemplateV4.add_member(:certificate_validity, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateValidity, location_name: 'CertificateValidity', traits: {"smithy.api#documentation" => "<p>Certificate validity describes the validity and renewal periods of a certificate.</p>", "smithy.api#required" => {}}))
    TemplateV4.add_member(:superseded_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateNameList, location_name: 'SupersededTemplates', traits: {"smithy.api#documentation" => "<p>List of templates in Active Directory that are superseded by this template.</p>"}))
    TemplateV4.add_member(:private_key_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateKeyAttributesV4, location_name: 'PrivateKeyAttributes', traits: {"smithy.api#documentation" => "<p>Private key attributes allow you to specify the minimal key length, key spec, key usage,\n         and cryptographic providers for the private key of a certificate for v4 templates. V4\n         templates allow you to use either Key Storage Providers or Legacy Cryptographic Service\n         Providers. You specify the cryptography provider category in private key flags.</p>", "smithy.api#required" => {}}))
    TemplateV4.add_member(:private_key_flags, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateKeyFlagsV4, location_name: 'PrivateKeyFlags', traits: {"smithy.api#documentation" => "<p>Private key flags for v4 templates specify the client compatibility, if the private key\n         can be exported, if user input is required when using a private key, if an alternate\n         signature algorithm should be used, and if certificates are renewed using the same private\n         key.</p>", "smithy.api#required" => {}}))
    TemplateV4.add_member(:enrollment_flags, Smithy::Schema::Shapes::ShapeRef.new(shape: EnrollmentFlagsV4, location_name: 'EnrollmentFlags', traits: {"smithy.api#documentation" => "<p>Enrollment flags describe the enrollment settings for certificates using the existing\n         private key and deleting expired or revoked certificates.</p>", "smithy.api#required" => {}}))
    TemplateV4.add_member(:subject_name_flags, Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectNameFlagsV4, location_name: 'SubjectNameFlags', traits: {"smithy.api#documentation" => "<p>Subject name flags describe the subject name and subject alternate name that is included\n         in a certificate.</p>", "smithy.api#required" => {}}))
    TemplateV4.add_member(:general_flags, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralFlagsV4, location_name: 'GeneralFlags', traits: {"smithy.api#documentation" => "<p>General flags describe whether the template is used for computers or users and if the\n         template can be used with autoenrollment.</p>", "smithy.api#required" => {}}))
    TemplateV4.add_member(:hash_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: HashAlgorithm, location_name: 'HashAlgorithm', traits: {"smithy.api#documentation" => "<p>Specifies the hash algorithm used to hash the private key. Hash algorithm can only be\n         specified when using Key Storage Providers.</p>"}))
    TemplateV4.add_member(:extensions, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtensionsV4, location_name: 'Extensions', traits: {"smithy.api#documentation" => "<p>Extensions describe the key usage extensions and application policies for a\n         template.</p>", "smithy.api#required" => {}}))
    TemplateV4.type = Types::TemplateV4
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>Identifies the originating service.</p>"}))
    ThrottlingException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "<p>The code associated with the quota.</p>"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you created the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>Specifies a list of tag keys that you want to remove from the specified\n         resources.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateTemplateGroupAccessControlEntryRequest.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html\">CreateTemplate</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTemplateGroupAccessControlEntryRequest.add_member(:group_security_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupSecurityIdentifier, location_name: 'GroupSecurityIdentifier', traits: {"smithy.api#documentation" => "<p>Security identifier (SID) of the group object from Active Directory. The SID starts with\n         \"S-\".</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTemplateGroupAccessControlEntryRequest.add_member(:group_display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'GroupDisplayName', traits: {"smithy.api#documentation" => "<p>Name of the Active Directory group. This name does not need to match the group name in Active Directory.</p>"}))
    UpdateTemplateGroupAccessControlEntryRequest.add_member(:access_rights, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessRights, location_name: 'AccessRights', traits: {"smithy.api#documentation" => "<p>Allow or deny permissions for an Active Directory group to enroll or autoenroll certificates for a\n         template.</p>"}))
    UpdateTemplateGroupAccessControlEntryRequest.type = Types::UpdateTemplateGroupAccessControlEntryRequest
    UpdateTemplateRequest.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html\">CreateTemplate</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTemplateRequest.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateDefinition, location_name: 'Definition', traits: {"smithy.api#documentation" => "<p>Template configuration to define the information included in certificates. Define\n         certificate validity and renewal periods, certificate request handling and enrollment\n         options, key usage extensions, application policies, and cryptography settings.</p>"}))
    UpdateTemplateRequest.add_member(:reenroll_all_certificate_holders, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'ReenrollAllCertificateHolders', traits: {"smithy.api#documentation" => "<p>This setting allows the major version of a template to be increased automatically. All\n         members of Active Directory groups that are allowed to enroll with a template will receive a new\n         certificate issued using that template.</p>"}))
    UpdateTemplateRequest.type = Types::UpdateTemplateRequest
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason for the validation error. This won't be return for every\n         validation exception.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:field_validation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:invalid_ca_subject, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_CA_SUBJECT', traits: {"smithy.api#enumValue" => "INVALID_CA_SUBJECT"}))
    ValidationExceptionReason.add_member(:invalid_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PERMISSION', traits: {"smithy.api#enumValue" => "INVALID_PERMISSION"}))
    ValidationExceptionReason.add_member(:invalid_state, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_STATE', traits: {"smithy.api#enumValue" => "INVALID_STATE"}))
    ValidationExceptionReason.add_member(:mismatched_connector, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISMATCHED_CONNECTOR', traits: {"smithy.api#enumValue" => "MISMATCHED_CONNECTOR"}))
    ValidationExceptionReason.add_member(:mismatched_vpc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISMATCHED_VPC', traits: {"smithy.api#enumValue" => "MISMATCHED_VPC"}))
    ValidationExceptionReason.add_member(:no_client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_CLIENT_TOKEN', traits: {"smithy.api#enumValue" => "NO_CLIENT_TOKEN"}))
    ValidationExceptionReason.add_member(:unknown_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    ValidityPeriod.add_member(:period_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidityPeriodType, location_name: 'PeriodType', traits: {"smithy.api#documentation" => "<p>The unit of time. You can select hours, days, weeks, months, and years.</p>", "smithy.api#required" => {}}))
    ValidityPeriod.add_member(:period, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'Period', traits: {"smithy.api#documentation" => "<p>The numeric value for the validity period.</p>", "smithy.api#range" => {"min" => 1, "max" => 8766000}, "smithy.api#required" => {}}))
    ValidityPeriod.type = Types::ValidityPeriod
    ValidityPeriodType.add_member(:hours, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOURS', traits: {"smithy.api#enumValue" => "HOURS"}))
    ValidityPeriodType.add_member(:days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAYS', traits: {"smithy.api#enumValue" => "DAYS"}))
    ValidityPeriodType.add_member(:weeks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEEKS', traits: {"smithy.api#enumValue" => "WEEKS"}))
    ValidityPeriodType.add_member(:months, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTHS', traits: {"smithy.api#enumValue" => "MONTHS"}))
    ValidityPeriodType.add_member(:years, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'YEARS', traits: {"smithy.api#enumValue" => "YEARS"}))
    VpcInformation.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'IpAddressType', traits: {"smithy.api#documentation" => "<p>The VPC IP address type.</p>"}))
    VpcInformation.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>The security groups used with the connector. You can use a maximum of 4 security groups\n         with a connector.</p>", "smithy.api#required" => {}}))
    VpcInformation.type = Types::VpcInformation

    PcaConnectorAd = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.pcaconnectorad#PcaConnectorAd"
      service.name = "PcaConnectorAd"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"arnNamespace" => "pca-connector-ad", "cloudFormationName" => "PCAConnectorAD", "sdkId" => "Pca Connector Ad", "serviceName" => "pca-connector-ad", "cloudTrailEventSource" => "pca-connector-ad.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "pca-connector-ad"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "PcaConnectorAd"}
      service.add_operation(:create_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#CreateConnector"
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
      service.add_operation(:create_directory_registration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#CreateDirectoryRegistration"
        operation.name = "CreateDirectoryRegistration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDirectoryRegistrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDirectoryRegistrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/directoryRegistrations"}}
      end)
      service.add_operation(:create_service_principal_name, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#CreateServicePrincipalName"
        operation.name = "CreateServicePrincipalName"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServicePrincipalNameRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/directoryRegistrations/{DirectoryRegistrationArn}/servicePrincipalNames/{ConnectorArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#CreateTemplate"
        operation.name = "CreateTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/templates"}}
      end)
      service.add_operation(:create_template_group_access_control_entry, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#CreateTemplateGroupAccessControlEntry"
        operation.name = "CreateTemplateGroupAccessControlEntry"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTemplateGroupAccessControlEntryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/templates/{TemplateArn}/accessControlEntries"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#DeleteConnector"
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
      service.add_operation(:delete_directory_registration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#DeleteDirectoryRegistration"
        operation.name = "DeleteDirectoryRegistration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDirectoryRegistrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/directoryRegistrations/{DirectoryRegistrationArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_service_principal_name, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#DeleteServicePrincipalName"
        operation.name = "DeleteServicePrincipalName"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServicePrincipalNameRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/directoryRegistrations/{DirectoryRegistrationArn}/servicePrincipalNames/{ConnectorArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#DeleteTemplate"
        operation.name = "DeleteTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/templates/{TemplateArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_template_group_access_control_entry, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#DeleteTemplateGroupAccessControlEntry"
        operation.name = "DeleteTemplateGroupAccessControlEntry"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTemplateGroupAccessControlEntryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/templates/{TemplateArn}/accessControlEntries/{GroupSecurityIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_connector, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#GetConnector"
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
      service.add_operation(:get_directory_registration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#GetDirectoryRegistration"
        operation.name = "GetDirectoryRegistration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDirectoryRegistrationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDirectoryRegistrationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/directoryRegistrations/{DirectoryRegistrationArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service_principal_name, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#GetServicePrincipalName"
        operation.name = "GetServicePrincipalName"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServicePrincipalNameRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServicePrincipalNameResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/directoryRegistrations/{DirectoryRegistrationArn}/servicePrincipalNames/{ConnectorArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#GetTemplate"
        operation.name = "GetTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/templates/{TemplateArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_template_group_access_control_entry, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#GetTemplateGroupAccessControlEntry"
        operation.name = "GetTemplateGroupAccessControlEntry"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemplateGroupAccessControlEntryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTemplateGroupAccessControlEntryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/templates/{TemplateArn}/accessControlEntries/{GroupSecurityIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_connectors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#ListConnectors"
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
      service.add_operation(:list_directory_registrations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#ListDirectoryRegistrations"
        operation.name = "ListDirectoryRegistrations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDirectoryRegistrationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDirectoryRegistrationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/directoryRegistrations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDirectoryRegistrations.new
      end)
      service.add_operation(:list_service_principal_names, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#ListServicePrincipalNames"
        operation.name = "ListServicePrincipalNames"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicePrincipalNamesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServicePrincipalNamesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/directoryRegistrations/{DirectoryRegistrationArn}/servicePrincipalNames"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServicePrincipalNames.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#ListTagsForResource"
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
      service.add_operation(:list_template_group_access_control_entries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#ListTemplateGroupAccessControlEntries"
        operation.name = "ListTemplateGroupAccessControlEntries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplateGroupAccessControlEntriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplateGroupAccessControlEntriesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/templates/{TemplateArn}/accessControlEntries"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTemplateGroupAccessControlEntries.new
      end)
      service.add_operation(:list_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#ListTemplates"
        operation.name = "ListTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTemplatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/templates"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTemplates.new
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#TagResource"
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
        operation.id = "com.amazonaws.pcaconnectorad#UntagResource"
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
      service.add_operation(:update_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#UpdateTemplate"
        operation.name = "UpdateTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/templates/{TemplateArn}"}}
      end)
      service.add_operation(:update_template_group_access_control_entry, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcaconnectorad#UpdateTemplateGroupAccessControlEntry"
        operation.name = "UpdateTemplateGroupAccessControlEntry"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTemplateGroupAccessControlEntryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/templates/{TemplateArn}/accessControlEntries/{GroupSecurityIdentifier}"}}
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

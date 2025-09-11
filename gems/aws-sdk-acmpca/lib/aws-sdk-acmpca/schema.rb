# frozen_string_literal: true

# This is generated code!

module Aws::ACMPCA
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ASN1PrintableString64 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#ASN1PrintableString64', name: 'ASN1PrintableString64', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9'()+-.?:/= ]*$"})
    ASN1Subject = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ASN1Subject', name: 'ASN1Subject')
    AWSPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#AWSPolicy', name: 'AWSPolicy', traits: {"smithy.api#length" => {"min" => 1, "max" => 81920}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    AccessDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#AccessDescription', name: 'AccessDescription')
    AccessDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acmpca#AccessDescriptionList', name: 'AccessDescriptionList')
    AccessMethod = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#AccessMethod', name: 'AccessMethod')
    AccessMethodType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#AccessMethodType', name: 'AccessMethodType')
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]+$"})
    ActionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acmpca#ActionList', name: 'ActionList', traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    ActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#ActionType', name: 'ActionType')
    ApiPassthrough = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ApiPassthrough', name: 'ApiPassthrough')
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 5, "max" => 200}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:acm-pca:[\\w+=/,.@-]*:[0-9]*:[\\w+=,.@-]+(/[\\w+=,.@-]+)*$"})
    AuditReportId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#AuditReportId', name: 'AuditReportId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-z0-9]{8}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{12}$"})
    AuditReportResponseFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#AuditReportResponseFormat', name: 'AuditReportResponseFormat')
    AuditReportStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#AuditReportStatus', name: 'AuditReportStatus')
    Base64String1To4096 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#Base64String1To4096', name: 'Base64String1To4096', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$"})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.acmpca#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    CertificateAuthorities = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acmpca#CertificateAuthorities', name: 'CertificateAuthorities')
    CertificateAuthority = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CertificateAuthority', name: 'CertificateAuthority')
    CertificateAuthorityConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CertificateAuthorityConfiguration', name: 'CertificateAuthorityConfiguration')
    CertificateAuthorityStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#CertificateAuthorityStatus', name: 'CertificateAuthorityStatus')
    CertificateAuthorityType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#CertificateAuthorityType', name: 'CertificateAuthorityType')
    CertificateAuthorityUsageMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#CertificateAuthorityUsageMode', name: 'CertificateAuthorityUsageMode')
    CertificateBody = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#CertificateBody', name: 'CertificateBody')
    CertificateBodyBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.acmpca#CertificateBodyBlob', name: 'CertificateBodyBlob', traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}})
    CertificateChain = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#CertificateChain', name: 'CertificateChain')
    CertificateChainBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.acmpca#CertificateChainBlob', name: 'CertificateChainBlob', traits: {"smithy.api#length" => {"min" => 0, "max" => 2097152}})
    CertificateMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CertificateMismatchException', name: 'CertificateMismatchException', traits: {"smithy.api#error" => "client"})
    CertificatePolicyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acmpca#CertificatePolicyList', name: 'CertificatePolicyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    CnameString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#CnameString', name: 'CnameString', traits: {"smithy.api#length" => {"min" => 0, "max" => 253}, "smithy.api#pattern" => "^[-a-zA-Z0-9;/?:@&=+$,%_.!~*()']*$"})
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client"})
    CountryCodeString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#CountryCodeString', name: 'CountryCodeString', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[A-Za-z]{2}$"})
    CreateCertificateAuthorityAuditReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CreateCertificateAuthorityAuditReportRequest', name: 'CreateCertificateAuthorityAuditReportRequest')
    CreateCertificateAuthorityAuditReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CreateCertificateAuthorityAuditReportResponse', name: 'CreateCertificateAuthorityAuditReportResponse')
    CreateCertificateAuthorityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CreateCertificateAuthorityRequest', name: 'CreateCertificateAuthorityRequest')
    CreateCertificateAuthorityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CreateCertificateAuthorityResponse', name: 'CreateCertificateAuthorityResponse')
    CreatePermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CreatePermissionRequest', name: 'CreatePermissionRequest')
    CrlConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CrlConfiguration', name: 'CrlConfiguration')
    CrlDistributionPointExtensionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CrlDistributionPointExtensionConfiguration', name: 'CrlDistributionPointExtensionConfiguration')
    CrlPathString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#CrlPathString', name: 'CrlPathString', traits: {"smithy.api#length" => {"min" => 0, "max" => 253}, "smithy.api#pattern" => "^[-a-zA-Z0-9;?:@&=+$,%_.!~*()']+(/[-a-zA-Z0-9;?:@&=+$,%_.!~*()']+)*$"})
    CrlType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#CrlType', name: 'CrlType')
    CsrBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.acmpca#CsrBlob', name: 'CsrBlob', traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}})
    CsrBody = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#CsrBody', name: 'CsrBody')
    CsrExtensions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CsrExtensions', name: 'CsrExtensions')
    CustomAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CustomAttribute', name: 'CustomAttribute')
    CustomAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acmpca#CustomAttributeList', name: 'CustomAttributeList', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    CustomExtension = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CustomExtension', name: 'CustomExtension')
    CustomExtensionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acmpca#CustomExtensionList', name: 'CustomExtensionList', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    CustomObjectIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#CustomObjectIdentifier', name: 'CustomObjectIdentifier', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^([0-2])\\.([0-9]|([0-3][0-9]))((\\.([0-9]+)){0,126})$"})
    DeleteCertificateAuthorityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#DeleteCertificateAuthorityRequest', name: 'DeleteCertificateAuthorityRequest')
    DeletePermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#DeletePermissionRequest', name: 'DeletePermissionRequest')
    DeletePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#DeletePolicyRequest', name: 'DeletePolicyRequest')
    DescribeCertificateAuthorityAuditReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#DescribeCertificateAuthorityAuditReportRequest', name: 'DescribeCertificateAuthorityAuditReportRequest')
    DescribeCertificateAuthorityAuditReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#DescribeCertificateAuthorityAuditReportResponse', name: 'DescribeCertificateAuthorityAuditReportResponse')
    DescribeCertificateAuthorityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#DescribeCertificateAuthorityRequest', name: 'DescribeCertificateAuthorityRequest')
    DescribeCertificateAuthorityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#DescribeCertificateAuthorityResponse', name: 'DescribeCertificateAuthorityResponse')
    EdiPartyName = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#EdiPartyName', name: 'EdiPartyName')
    ExtendedKeyUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ExtendedKeyUsage', name: 'ExtendedKeyUsage')
    ExtendedKeyUsageList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acmpca#ExtendedKeyUsageList', name: 'ExtendedKeyUsageList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ExtendedKeyUsageType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#ExtendedKeyUsageType', name: 'ExtendedKeyUsageType')
    Extensions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#Extensions', name: 'Extensions')
    FailureReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#FailureReason', name: 'FailureReason')
    GeneralName = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#GeneralName', name: 'GeneralName')
    GeneralNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acmpca#GeneralNameList', name: 'GeneralNameList', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    GetCertificateAuthorityCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#GetCertificateAuthorityCertificateRequest', name: 'GetCertificateAuthorityCertificateRequest')
    GetCertificateAuthorityCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#GetCertificateAuthorityCertificateResponse', name: 'GetCertificateAuthorityCertificateResponse')
    GetCertificateAuthorityCsrRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#GetCertificateAuthorityCsrRequest', name: 'GetCertificateAuthorityCsrRequest')
    GetCertificateAuthorityCsrResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#GetCertificateAuthorityCsrResponse', name: 'GetCertificateAuthorityCsrResponse')
    GetCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#GetCertificateRequest', name: 'GetCertificateRequest')
    GetCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#GetCertificateResponse', name: 'GetCertificateResponse')
    GetPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#GetPolicyRequest', name: 'GetPolicyRequest')
    GetPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#GetPolicyResponse', name: 'GetPolicyResponse')
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#IdempotencyToken', name: 'IdempotencyToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]*$"})
    ImportCertificateAuthorityCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ImportCertificateAuthorityCertificateRequest', name: 'ImportCertificateAuthorityCertificateRequest')
    Integer1To5000 = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.acmpca#Integer1To5000', name: 'Integer1To5000', traits: {"smithy.api#range" => {"min" => 1, "max" => 5000}})
    InvalidArgsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#InvalidArgsException', name: 'InvalidArgsException', traits: {"smithy.api#error" => "client"})
    InvalidArnException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#InvalidArnException', name: 'InvalidArnException', traits: {"smithy.api#error" => "client"})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"smithy.api#error" => "client"})
    InvalidPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#InvalidPolicyException', name: 'InvalidPolicyException', traits: {"smithy.api#error" => "client"})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client"})
    InvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#InvalidStateException', name: 'InvalidStateException', traits: {"smithy.api#error" => "client"})
    InvalidTagException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#InvalidTagException', name: 'InvalidTagException', traits: {"smithy.api#error" => "client"})
    IssueCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#IssueCertificateRequest', name: 'IssueCertificateRequest')
    IssueCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#IssueCertificateResponse', name: 'IssueCertificateResponse')
    KeyAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#KeyAlgorithm', name: 'KeyAlgorithm')
    KeyStorageSecurityStandard = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#KeyStorageSecurityStandard', name: 'KeyStorageSecurityStandard')
    KeyUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#KeyUsage', name: 'KeyUsage')
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListCertificateAuthoritiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ListCertificateAuthoritiesRequest', name: 'ListCertificateAuthoritiesRequest')
    ListCertificateAuthoritiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ListCertificateAuthoritiesResponse', name: 'ListCertificateAuthoritiesResponse')
    ListPermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ListPermissionsRequest', name: 'ListPermissionsRequest')
    ListPermissionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ListPermissionsResponse', name: 'ListPermissionsResponse')
    ListTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ListTagsRequest', name: 'ListTagsRequest')
    ListTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ListTagsResponse', name: 'ListTagsResponse')
    LockoutPreventedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#LockoutPreventedException', name: 'LockoutPreventedException', traits: {"smithy.api#error" => "client"})
    MalformedCSRException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#MalformedCSRException', name: 'MalformedCSRException', traits: {"smithy.api#error" => "client"})
    MalformedCertificateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#MalformedCertificateException', name: 'MalformedCertificateException', traits: {"smithy.api#error" => "client"})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.acmpca#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 43739}})
    OcspConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#OcspConfiguration', name: 'OcspConfiguration')
    OtherName = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#OtherName', name: 'OtherName')
    PermanentDeletionTimeInDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.acmpca#PermanentDeletionTimeInDays', name: 'PermanentDeletionTimeInDays', traits: {"smithy.api#range" => {"min" => 7, "max" => 30}})
    Permission = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#Permission', name: 'Permission')
    PermissionAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#PermissionAlreadyExistsException', name: 'PermissionAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    PermissionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acmpca#PermissionList', name: 'PermissionList', traits: {"smithy.api#length" => {"min" => 0}})
    PolicyInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#PolicyInformation', name: 'PolicyInformation')
    PolicyQualifierId = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#PolicyQualifierId', name: 'PolicyQualifierId')
    PolicyQualifierInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#PolicyQualifierInfo', name: 'PolicyQualifierInfo')
    PolicyQualifierInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acmpca#PolicyQualifierInfoList', name: 'PolicyQualifierInfoList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    PositiveLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.acmpca#PositiveLong', name: 'PositiveLong', traits: {"smithy.api#range" => {"min" => 1}})
    Principal = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#Principal', name: 'Principal', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[^*]+$"})
    PutPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#PutPolicyRequest', name: 'PutPolicyRequest')
    Qualifier = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#Qualifier', name: 'Qualifier')
    RequestAlreadyProcessedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#RequestAlreadyProcessedException', name: 'RequestAlreadyProcessedException', traits: {"smithy.api#error" => "client"})
    RequestFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#RequestFailedException', name: 'RequestFailedException', traits: {"smithy.api#error" => "client"})
    RequestInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#RequestInProgressException', name: 'RequestInProgressException', traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    ResourceOwner = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#ResourceOwner', name: 'ResourceOwner')
    RestoreCertificateAuthorityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#RestoreCertificateAuthorityRequest', name: 'RestoreCertificateAuthorityRequest')
    RevocationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#RevocationConfiguration', name: 'RevocationConfiguration')
    RevocationReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#RevocationReason', name: 'RevocationReason')
    RevokeCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#RevokeCertificateRequest', name: 'RevokeCertificateRequest')
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    S3BucketName3To255 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#S3BucketName3To255', name: 'S3BucketName3To255', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[-a-zA-Z0-9._/]+$"})
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#S3Key', name: 'S3Key', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    S3ObjectAcl = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#S3ObjectAcl', name: 'S3ObjectAcl')
    SigningAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#SigningAlgorithm', name: 'SigningAlgorithm')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#String', name: 'String')
    String128 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#String128', name: 'String128', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    String16 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#String16', name: 'String16', traits: {"smithy.api#length" => {"min" => 0, "max" => 16}})
    String1To256 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#String1To256', name: 'String1To256', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    String253 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#String253', name: 'String253', traits: {"smithy.api#length" => {"min" => 0, "max" => 253}})
    String256 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#String256', name: 'String256', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    String3 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#String3', name: 'String3', traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    String39 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#String39', name: 'String39', traits: {"smithy.api#length" => {"min" => 0, "max" => 39}})
    String40 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#String40', name: 'String40', traits: {"smithy.api#length" => {"min" => 0, "max" => 40}})
    String5 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#String5', name: 'String5', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    String64 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#String64', name: 'String64', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    TStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.acmpca#TStamp', name: 'TStamp')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#Tag', name: 'Tag')
    TagCertificateAuthorityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#TagCertificateAuthorityRequest', name: 'TagCertificateAuthorityRequest')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acmpca#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client"})
    UntagCertificateAuthorityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#UntagCertificateAuthorityRequest', name: 'UntagCertificateAuthorityRequest')
    UpdateCertificateAuthorityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#UpdateCertificateAuthorityRequest', name: 'UpdateCertificateAuthorityRequest')
    Validity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#Validity', name: 'Validity')
    ValidityPeriodType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#ValidityPeriodType', name: 'ValidityPeriodType')

    ASN1Subject.add_member(:country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CountryCodeString, location_name: 'Country'))
    ASN1Subject.add_member(:organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String64, location_name: 'Organization'))
    ASN1Subject.add_member(:organizational_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String64, location_name: 'OrganizationalUnit'))
    ASN1Subject.add_member(:distinguished_name_qualifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ASN1PrintableString64, location_name: 'DistinguishedNameQualifier'))
    ASN1Subject.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String128, location_name: 'State'))
    ASN1Subject.add_member(:common_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String64, location_name: 'CommonName'))
    ASN1Subject.add_member(:serial_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ASN1PrintableString64, location_name: 'SerialNumber'))
    ASN1Subject.add_member(:locality, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String128, location_name: 'Locality'))
    ASN1Subject.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String64, location_name: 'Title'))
    ASN1Subject.add_member(:surname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String40, location_name: 'Surname'))
    ASN1Subject.add_member(:given_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String16, location_name: 'GivenName'))
    ASN1Subject.add_member(:initials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String5, location_name: 'Initials'))
    ASN1Subject.add_member(:pseudonym, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String128, location_name: 'Pseudonym'))
    ASN1Subject.add_member(:generation_qualifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String3, location_name: 'GenerationQualifier'))
    ASN1Subject.add_member(:custom_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomAttributeList, location_name: 'CustomAttributes'))
    ASN1Subject.type = Types::ASN1Subject
    AccessDescription.add_member(:access_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessMethod, location_name: 'AccessMethod', traits: {"smithy.api#required" => {}}))
    AccessDescription.add_member(:access_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralName, location_name: 'AccessLocation', traits: {"smithy.api#required" => {}}))
    AccessDescription.type = Types::AccessDescription
    AccessDescriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDescription)
    AccessMethod.add_member(:custom_object_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomObjectIdentifier, location_name: 'CustomObjectIdentifier'))
    AccessMethod.add_member(:access_method_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessMethodType, location_name: 'AccessMethodType'))
    AccessMethod.type = Types::AccessMethod
    AccessMethodType.add_member(:ca_repository, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CA_REPOSITORY', traits: {"smithy.api#enumValue" => "CA_REPOSITORY"}))
    AccessMethodType.add_member(:resource_pki_manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_PKI_MANIFEST', traits: {"smithy.api#enumValue" => "RESOURCE_PKI_MANIFEST"}))
    AccessMethodType.add_member(:resource_pki_notify, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_PKI_NOTIFY', traits: {"smithy.api#enumValue" => "RESOURCE_PKI_NOTIFY"}))
    ActionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionType)
    ActionType.add_member(:issue_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IssueCertificate', traits: {"smithy.api#enumValue" => "IssueCertificate"}))
    ActionType.add_member(:get_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GetCertificate', traits: {"smithy.api#enumValue" => "GetCertificate"}))
    ActionType.add_member(:list_permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ListPermissions', traits: {"smithy.api#enumValue" => "ListPermissions"}))
    ApiPassthrough.add_member(:extensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Extensions, location_name: 'Extensions'))
    ApiPassthrough.add_member(:subject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ASN1Subject, location_name: 'Subject'))
    ApiPassthrough.type = Types::ApiPassthrough
    AuditReportResponseFormat.add_member(:json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    AuditReportResponseFormat.add_member(:csv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    AuditReportStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    AuditReportStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    AuditReportStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CertificateAuthorities.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthority)
    CertificateAuthority.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn'))
    CertificateAuthority.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerAccount'))
    CertificateAuthority.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreatedAt'))
    CertificateAuthority.add_member(:last_state_change_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LastStateChangeAt'))
    CertificateAuthority.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityType, location_name: 'Type'))
    CertificateAuthority.add_member(:serial, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Serial'))
    CertificateAuthority.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityStatus, location_name: 'Status'))
    CertificateAuthority.add_member(:not_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NotBefore'))
    CertificateAuthority.add_member(:not_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NotAfter'))
    CertificateAuthority.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'FailureReason'))
    CertificateAuthority.add_member(:certificate_authority_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityConfiguration, location_name: 'CertificateAuthorityConfiguration'))
    CertificateAuthority.add_member(:revocation_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationConfiguration, location_name: 'RevocationConfiguration'))
    CertificateAuthority.add_member(:restorable_until, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'RestorableUntil'))
    CertificateAuthority.add_member(:key_storage_security_standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyStorageSecurityStandard, location_name: 'KeyStorageSecurityStandard'))
    CertificateAuthority.add_member(:usage_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityUsageMode, location_name: 'UsageMode'))
    CertificateAuthority.type = Types::CertificateAuthority
    CertificateAuthorityConfiguration.add_member(:key_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: 'KeyAlgorithm', traits: {"smithy.api#required" => {}}))
    CertificateAuthorityConfiguration.add_member(:signing_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningAlgorithm, location_name: 'SigningAlgorithm', traits: {"smithy.api#required" => {}}))
    CertificateAuthorityConfiguration.add_member(:subject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ASN1Subject, location_name: 'Subject', traits: {"smithy.api#required" => {}}))
    CertificateAuthorityConfiguration.add_member(:csr_extensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CsrExtensions, location_name: 'CsrExtensions'))
    CertificateAuthorityConfiguration.type = Types::CertificateAuthorityConfiguration
    CertificateAuthorityStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    CertificateAuthorityStatus.add_member(:pending_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_CERTIFICATE', traits: {"smithy.api#enumValue" => "PENDING_CERTIFICATE"}))
    CertificateAuthorityStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    CertificateAuthorityStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    CertificateAuthorityStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    CertificateAuthorityStatus.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    CertificateAuthorityStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CertificateAuthorityType.add_member(:root, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROOT', traits: {"smithy.api#enumValue" => "ROOT"}))
    CertificateAuthorityType.add_member(:subordinate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBORDINATE', traits: {"smithy.api#enumValue" => "SUBORDINATE"}))
    CertificateAuthorityUsageMode.add_member(:general_purpose, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENERAL_PURPOSE', traits: {"smithy.api#enumValue" => "GENERAL_PURPOSE"}))
    CertificateAuthorityUsageMode.add_member(:short_lived_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHORT_LIVED_CERTIFICATE', traits: {"smithy.api#enumValue" => "SHORT_LIVED_CERTIFICATE"}))
    CertificateMismatchException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    CertificateMismatchException.type = Types::CertificateMismatchException
    CertificatePolicyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyInformation)
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    CreateCertificateAuthorityAuditReportRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#required" => {}}))
    CreateCertificateAuthorityAuditReportRequest.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'S3BucketName', traits: {"smithy.api#required" => {}}))
    CreateCertificateAuthorityAuditReportRequest.add_member(:audit_report_response_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditReportResponseFormat, location_name: 'AuditReportResponseFormat', traits: {"smithy.api#required" => {}}))
    CreateCertificateAuthorityAuditReportRequest.type = Types::CreateCertificateAuthorityAuditReportRequest
    CreateCertificateAuthorityAuditReportResponse.add_member(:audit_report_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditReportId, location_name: 'AuditReportId'))
    CreateCertificateAuthorityAuditReportResponse.add_member(:s3_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'S3Key'))
    CreateCertificateAuthorityAuditReportResponse.type = Types::CreateCertificateAuthorityAuditReportResponse
    CreateCertificateAuthorityRequest.add_member(:certificate_authority_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityConfiguration, location_name: 'CertificateAuthorityConfiguration', traits: {"smithy.api#required" => {}}))
    CreateCertificateAuthorityRequest.add_member(:revocation_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationConfiguration, location_name: 'RevocationConfiguration'))
    CreateCertificateAuthorityRequest.add_member(:certificate_authority_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityType, location_name: 'CertificateAuthorityType', traits: {"smithy.api#required" => {}}))
    CreateCertificateAuthorityRequest.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken'))
    CreateCertificateAuthorityRequest.add_member(:key_storage_security_standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyStorageSecurityStandard, location_name: 'KeyStorageSecurityStandard'))
    CreateCertificateAuthorityRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateCertificateAuthorityRequest.add_member(:usage_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityUsageMode, location_name: 'UsageMode'))
    CreateCertificateAuthorityRequest.type = Types::CreateCertificateAuthorityRequest
    CreateCertificateAuthorityResponse.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn'))
    CreateCertificateAuthorityResponse.type = Types::CreateCertificateAuthorityResponse
    CreatePermissionRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#required" => {}}))
    CreatePermissionRequest.add_member(:principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Principal, location_name: 'Principal', traits: {"smithy.api#required" => {}}))
    CreatePermissionRequest.add_member(:source_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'SourceAccount'))
    CreatePermissionRequest.add_member(:actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionList, location_name: 'Actions', traits: {"smithy.api#required" => {}}))
    CreatePermissionRequest.type = Types::CreatePermissionRequest
    CrlConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#default" => nil, "smithy.api#required" => {}}))
    CrlConfiguration.add_member(:expiration_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer1To5000, location_name: 'ExpirationInDays'))
    CrlConfiguration.add_member(:custom_cname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CnameString, location_name: 'CustomCname'))
    CrlConfiguration.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName3To255, location_name: 'S3BucketName'))
    CrlConfiguration.add_member(:s3_object_acl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectAcl, location_name: 'S3ObjectAcl'))
    CrlConfiguration.add_member(:crl_distribution_point_extension_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CrlDistributionPointExtensionConfiguration, location_name: 'CrlDistributionPointExtensionConfiguration'))
    CrlConfiguration.add_member(:crl_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CrlType, location_name: 'CrlType'))
    CrlConfiguration.add_member(:custom_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CrlPathString, location_name: 'CustomPath'))
    CrlConfiguration.type = Types::CrlConfiguration
    CrlDistributionPointExtensionConfiguration.add_member(:omit_extension, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'OmitExtension', traits: {"smithy.api#default" => nil, "smithy.api#required" => {}}))
    CrlDistributionPointExtensionConfiguration.type = Types::CrlDistributionPointExtensionConfiguration
    CrlType.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    CrlType.add_member(:partitioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTITIONED', traits: {"smithy.api#enumValue" => "PARTITIONED"}))
    CsrExtensions.add_member(:key_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsage, location_name: 'KeyUsage'))
    CsrExtensions.add_member(:subject_information_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDescriptionList, location_name: 'SubjectInformationAccess'))
    CsrExtensions.type = Types::CsrExtensions
    CustomAttribute.add_member(:object_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomObjectIdentifier, location_name: 'ObjectIdentifier', traits: {"smithy.api#required" => {}}))
    CustomAttribute.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String1To256, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    CustomAttribute.type = Types::CustomAttribute
    CustomAttributeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomAttribute)
    CustomExtension.add_member(:object_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomObjectIdentifier, location_name: 'ObjectIdentifier', traits: {"smithy.api#required" => {}}))
    CustomExtension.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Base64String1To4096, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    CustomExtension.add_member(:critical, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Critical', traits: {"smithy.api#default" => nil}))
    CustomExtension.type = Types::CustomExtension
    CustomExtensionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomExtension)
    DeleteCertificateAuthorityRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#required" => {}}))
    DeleteCertificateAuthorityRequest.add_member(:permanent_deletion_time_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermanentDeletionTimeInDays, location_name: 'PermanentDeletionTimeInDays'))
    DeleteCertificateAuthorityRequest.type = Types::DeleteCertificateAuthorityRequest
    DeletePermissionRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#required" => {}}))
    DeletePermissionRequest.add_member(:principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Principal, location_name: 'Principal', traits: {"smithy.api#required" => {}}))
    DeletePermissionRequest.add_member(:source_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'SourceAccount'))
    DeletePermissionRequest.type = Types::DeletePermissionRequest
    DeletePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    DeletePolicyRequest.type = Types::DeletePolicyRequest
    DescribeCertificateAuthorityAuditReportRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#required" => {}}))
    DescribeCertificateAuthorityAuditReportRequest.add_member(:audit_report_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditReportId, location_name: 'AuditReportId', traits: {"smithy.api#required" => {}}))
    DescribeCertificateAuthorityAuditReportRequest.type = Types::DescribeCertificateAuthorityAuditReportRequest
    DescribeCertificateAuthorityAuditReportResponse.add_member(:audit_report_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuditReportStatus, location_name: 'AuditReportStatus'))
    DescribeCertificateAuthorityAuditReportResponse.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'S3BucketName'))
    DescribeCertificateAuthorityAuditReportResponse.add_member(:s3_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'S3Key'))
    DescribeCertificateAuthorityAuditReportResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreatedAt'))
    DescribeCertificateAuthorityAuditReportResponse.type = Types::DescribeCertificateAuthorityAuditReportResponse
    DescribeCertificateAuthorityRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#required" => {}}))
    DescribeCertificateAuthorityRequest.type = Types::DescribeCertificateAuthorityRequest
    DescribeCertificateAuthorityResponse.add_member(:certificate_authority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthority, location_name: 'CertificateAuthority'))
    DescribeCertificateAuthorityResponse.type = Types::DescribeCertificateAuthorityResponse
    EdiPartyName.add_member(:party_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'PartyName', traits: {"smithy.api#required" => {}}))
    EdiPartyName.add_member(:name_assigner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'NameAssigner'))
    EdiPartyName.type = Types::EdiPartyName
    ExtendedKeyUsage.add_member(:extended_key_usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedKeyUsageType, location_name: 'ExtendedKeyUsageType'))
    ExtendedKeyUsage.add_member(:extended_key_usage_object_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomObjectIdentifier, location_name: 'ExtendedKeyUsageObjectIdentifier'))
    ExtendedKeyUsage.type = Types::ExtendedKeyUsage
    ExtendedKeyUsageList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedKeyUsage)
    ExtendedKeyUsageType.add_member(:server_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVER_AUTH', traits: {"smithy.api#enumValue" => "SERVER_AUTH"}))
    ExtendedKeyUsageType.add_member(:client_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLIENT_AUTH', traits: {"smithy.api#enumValue" => "CLIENT_AUTH"}))
    ExtendedKeyUsageType.add_member(:code_signing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CODE_SIGNING', traits: {"smithy.api#enumValue" => "CODE_SIGNING"}))
    ExtendedKeyUsageType.add_member(:email_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL_PROTECTION', traits: {"smithy.api#enumValue" => "EMAIL_PROTECTION"}))
    ExtendedKeyUsageType.add_member(:time_stamping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIME_STAMPING', traits: {"smithy.api#enumValue" => "TIME_STAMPING"}))
    ExtendedKeyUsageType.add_member(:ocsp_signing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OCSP_SIGNING', traits: {"smithy.api#enumValue" => "OCSP_SIGNING"}))
    ExtendedKeyUsageType.add_member(:smart_card_login, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMART_CARD_LOGIN', traits: {"smithy.api#enumValue" => "SMART_CARD_LOGIN"}))
    ExtendedKeyUsageType.add_member(:document_signing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_SIGNING', traits: {"smithy.api#enumValue" => "DOCUMENT_SIGNING"}))
    ExtendedKeyUsageType.add_member(:certificate_transparency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CERTIFICATE_TRANSPARENCY', traits: {"smithy.api#enumValue" => "CERTIFICATE_TRANSPARENCY"}))
    Extensions.add_member(:certificate_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificatePolicyList, location_name: 'CertificatePolicies'))
    Extensions.add_member(:extended_key_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedKeyUsageList, location_name: 'ExtendedKeyUsage'))
    Extensions.add_member(:key_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsage, location_name: 'KeyUsage'))
    Extensions.add_member(:subject_alternative_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralNameList, location_name: 'SubjectAlternativeNames'))
    Extensions.add_member(:custom_extensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomExtensionList, location_name: 'CustomExtensions'))
    Extensions.type = Types::Extensions
    FailureReason.add_member(:request_timed_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUEST_TIMED_OUT', traits: {"smithy.api#enumValue" => "REQUEST_TIMED_OUT"}))
    FailureReason.add_member(:unsupported_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_ALGORITHM', traits: {"smithy.api#enumValue" => "UNSUPPORTED_ALGORITHM"}))
    FailureReason.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    GeneralName.add_member(:other_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OtherName, location_name: 'OtherName'))
    GeneralName.add_member(:rfc822_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'Rfc822Name'))
    GeneralName.add_member(:dns_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String253, location_name: 'DnsName'))
    GeneralName.add_member(:directory_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ASN1Subject, location_name: 'DirectoryName'))
    GeneralName.add_member(:edi_party_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EdiPartyName, location_name: 'EdiPartyName'))
    GeneralName.add_member(:uniform_resource_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String253, location_name: 'UniformResourceIdentifier'))
    GeneralName.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String39, location_name: 'IpAddress'))
    GeneralName.add_member(:registered_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomObjectIdentifier, location_name: 'RegisteredId'))
    GeneralName.type = Types::GeneralName
    GeneralNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralName)
    GetCertificateAuthorityCertificateRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#required" => {}}))
    GetCertificateAuthorityCertificateRequest.type = Types::GetCertificateAuthorityCertificateRequest
    GetCertificateAuthorityCertificateResponse.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateBody, location_name: 'Certificate'))
    GetCertificateAuthorityCertificateResponse.add_member(:certificate_chain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateChain, location_name: 'CertificateChain'))
    GetCertificateAuthorityCertificateResponse.type = Types::GetCertificateAuthorityCertificateResponse
    GetCertificateAuthorityCsrRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#required" => {}}))
    GetCertificateAuthorityCsrRequest.type = Types::GetCertificateAuthorityCsrRequest
    GetCertificateAuthorityCsrResponse.add_member(:csr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CsrBody, location_name: 'Csr'))
    GetCertificateAuthorityCsrResponse.type = Types::GetCertificateAuthorityCsrResponse
    GetCertificateRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#required" => {}}))
    GetCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateArn', traits: {"smithy.api#required" => {}}))
    GetCertificateRequest.type = Types::GetCertificateRequest
    GetCertificateResponse.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateBody, location_name: 'Certificate'))
    GetCertificateResponse.add_member(:certificate_chain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateChain, location_name: 'CertificateChain'))
    GetCertificateResponse.type = Types::GetCertificateResponse
    GetPolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    GetPolicyRequest.type = Types::GetPolicyRequest
    GetPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSPolicy, location_name: 'Policy'))
    GetPolicyResponse.type = Types::GetPolicyResponse
    ImportCertificateAuthorityCertificateRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#required" => {}}))
    ImportCertificateAuthorityCertificateRequest.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateBodyBlob, location_name: 'Certificate', traits: {"smithy.api#required" => {}}))
    ImportCertificateAuthorityCertificateRequest.add_member(:certificate_chain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateChainBlob, location_name: 'CertificateChain'))
    ImportCertificateAuthorityCertificateRequest.type = Types::ImportCertificateAuthorityCertificateRequest
    InvalidArgsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidArgsException.type = Types::InvalidArgsException
    InvalidArnException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidArnException.type = Types::InvalidArnException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidPolicyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidPolicyException.type = Types::InvalidPolicyException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidStateException.type = Types::InvalidStateException
    InvalidTagException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidTagException.type = Types::InvalidTagException
    IssueCertificateRequest.add_member(:api_passthrough, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiPassthrough, location_name: 'ApiPassthrough'))
    IssueCertificateRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#required" => {}}))
    IssueCertificateRequest.add_member(:csr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CsrBlob, location_name: 'Csr', traits: {"smithy.api#required" => {}}))
    IssueCertificateRequest.add_member(:signing_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningAlgorithm, location_name: 'SigningAlgorithm', traits: {"smithy.api#required" => {}}))
    IssueCertificateRequest.add_member(:template_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'TemplateArn'))
    IssueCertificateRequest.add_member(:validity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Validity, location_name: 'Validity', traits: {"smithy.api#required" => {}}))
    IssueCertificateRequest.add_member(:validity_not_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Validity, location_name: 'ValidityNotBefore'))
    IssueCertificateRequest.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken'))
    IssueCertificateRequest.type = Types::IssueCertificateRequest
    IssueCertificateResponse.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateArn'))
    IssueCertificateResponse.type = Types::IssueCertificateResponse
    KeyAlgorithm.add_member(:rsa_2048, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_2048', traits: {"smithy.api#enumValue" => "RSA_2048"}))
    KeyAlgorithm.add_member(:rsa_3072, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_3072', traits: {"smithy.api#enumValue" => "RSA_3072"}))
    KeyAlgorithm.add_member(:rsa_4096, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_4096', traits: {"smithy.api#enumValue" => "RSA_4096"}))
    KeyAlgorithm.add_member(:ec_prime256v1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC_prime256v1', traits: {"smithy.api#enumValue" => "EC_prime256v1"}))
    KeyAlgorithm.add_member(:ec_secp384r1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC_secp384r1', traits: {"smithy.api#enumValue" => "EC_secp384r1"}))
    KeyAlgorithm.add_member(:ec_secp521r1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC_secp521r1', traits: {"smithy.api#enumValue" => "EC_secp521r1"}))
    KeyAlgorithm.add_member(:sm2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SM2', traits: {"smithy.api#enumValue" => "SM2"}))
    KeyStorageSecurityStandard.add_member(:fips_140_2_level_2_or_higher, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIPS_140_2_LEVEL_2_OR_HIGHER', traits: {"smithy.api#enumValue" => "FIPS_140_2_LEVEL_2_OR_HIGHER"}))
    KeyStorageSecurityStandard.add_member(:fips_140_2_level_3_or_higher, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIPS_140_2_LEVEL_3_OR_HIGHER', traits: {"smithy.api#enumValue" => "FIPS_140_2_LEVEL_3_OR_HIGHER"}))
    KeyStorageSecurityStandard.add_member(:ccpc_level_1_or_higher, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CCPC_LEVEL_1_OR_HIGHER', traits: {"smithy.api#enumValue" => "CCPC_LEVEL_1_OR_HIGHER"}))
    KeyUsage.add_member(:digital_signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DigitalSignature', traits: {"smithy.api#default" => false}))
    KeyUsage.add_member(:non_repudiation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'NonRepudiation', traits: {"smithy.api#default" => false}))
    KeyUsage.add_member(:key_encipherment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'KeyEncipherment', traits: {"smithy.api#default" => false}))
    KeyUsage.add_member(:data_encipherment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DataEncipherment', traits: {"smithy.api#default" => false}))
    KeyUsage.add_member(:key_agreement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'KeyAgreement', traits: {"smithy.api#default" => false}))
    KeyUsage.add_member(:key_cert_sign, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'KeyCertSign', traits: {"smithy.api#default" => false}))
    KeyUsage.add_member(:crl_sign, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CRLSign', traits: {"smithy.api#default" => false}))
    KeyUsage.add_member(:encipher_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EncipherOnly', traits: {"smithy.api#default" => false}))
    KeyUsage.add_member(:decipher_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DecipherOnly', traits: {"smithy.api#default" => false}))
    KeyUsage.type = Types::KeyUsage
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListCertificateAuthoritiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListCertificateAuthoritiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListCertificateAuthoritiesRequest.add_member(:resource_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceOwner, location_name: 'ResourceOwner'))
    ListCertificateAuthoritiesRequest.type = Types::ListCertificateAuthoritiesRequest
    ListCertificateAuthoritiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListCertificateAuthoritiesResponse.add_member(:certificate_authorities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorities, location_name: 'CertificateAuthorities'))
    ListCertificateAuthoritiesResponse.type = Types::ListCertificateAuthoritiesResponse
    ListPermissionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListPermissionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListPermissionsRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#required" => {}}))
    ListPermissionsRequest.type = Types::ListPermissionsRequest
    ListPermissionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListPermissionsResponse.add_member(:permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionList, location_name: 'Permissions'))
    ListPermissionsResponse.type = Types::ListPermissionsResponse
    ListTagsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListTagsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListTagsRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#required" => {}}))
    ListTagsRequest.type = Types::ListTagsRequest
    ListTagsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListTagsResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ListTagsResponse.type = Types::ListTagsResponse
    LockoutPreventedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    LockoutPreventedException.type = Types::LockoutPreventedException
    MalformedCSRException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    MalformedCSRException.type = Types::MalformedCSRException
    MalformedCertificateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    MalformedCertificateException.type = Types::MalformedCertificateException
    OcspConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#default" => nil, "smithy.api#required" => {}}))
    OcspConfiguration.add_member(:ocsp_custom_cname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CnameString, location_name: 'OcspCustomCname'))
    OcspConfiguration.type = Types::OcspConfiguration
    OtherName.add_member(:type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomObjectIdentifier, location_name: 'TypeId', traits: {"smithy.api#required" => {}}))
    OtherName.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    OtherName.type = Types::OtherName
    Permission.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn'))
    Permission.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreatedAt'))
    Permission.add_member(:principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Principal, location_name: 'Principal'))
    Permission.add_member(:source_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'SourceAccount'))
    Permission.add_member(:actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionList, location_name: 'Actions'))
    Permission.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSPolicy, location_name: 'Policy'))
    Permission.type = Types::Permission
    PermissionAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    PermissionAlreadyExistsException.type = Types::PermissionAlreadyExistsException
    PermissionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Permission)
    PolicyInformation.add_member(:cert_policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomObjectIdentifier, location_name: 'CertPolicyId', traits: {"smithy.api#required" => {}}))
    PolicyInformation.add_member(:policy_qualifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyQualifierInfoList, location_name: 'PolicyQualifiers'))
    PolicyInformation.type = Types::PolicyInformation
    PolicyQualifierId.add_member(:cps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CPS', traits: {"smithy.api#enumValue" => "CPS"}))
    PolicyQualifierInfo.add_member(:policy_qualifier_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyQualifierId, location_name: 'PolicyQualifierId', traits: {"smithy.api#required" => {}}))
    PolicyQualifierInfo.add_member(:qualifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Qualifier, location_name: 'Qualifier', traits: {"smithy.api#required" => {}}))
    PolicyQualifierInfo.type = Types::PolicyQualifierInfo
    PolicyQualifierInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyQualifierInfo)
    PutPolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    PutPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSPolicy, location_name: 'Policy', traits: {"smithy.api#required" => {}}))
    PutPolicyRequest.type = Types::PutPolicyRequest
    Qualifier.add_member(:cps_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'CpsUri', traits: {"smithy.api#required" => {}}))
    Qualifier.type = Types::Qualifier
    RequestAlreadyProcessedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    RequestAlreadyProcessedException.type = Types::RequestAlreadyProcessedException
    RequestFailedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    RequestFailedException.type = Types::RequestFailedException
    RequestInProgressException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    RequestInProgressException.type = Types::RequestInProgressException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceOwner.add_member(:self, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SELF', traits: {"smithy.api#enumValue" => "SELF"}))
    ResourceOwner.add_member(:other_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER_ACCOUNTS', traits: {"smithy.api#enumValue" => "OTHER_ACCOUNTS"}))
    RestoreCertificateAuthorityRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#required" => {}}))
    RestoreCertificateAuthorityRequest.type = Types::RestoreCertificateAuthorityRequest
    RevocationConfiguration.add_member(:crl_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CrlConfiguration, location_name: 'CrlConfiguration'))
    RevocationConfiguration.add_member(:ocsp_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OcspConfiguration, location_name: 'OcspConfiguration'))
    RevocationConfiguration.type = Types::RevocationConfiguration
    RevocationReason.add_member(:unspecified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSPECIFIED', traits: {"smithy.api#enumValue" => "UNSPECIFIED"}))
    RevocationReason.add_member(:key_compromise, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEY_COMPROMISE', traits: {"smithy.api#enumValue" => "KEY_COMPROMISE"}))
    RevocationReason.add_member(:certificate_authority_compromise, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CERTIFICATE_AUTHORITY_COMPROMISE', traits: {"smithy.api#enumValue" => "CERTIFICATE_AUTHORITY_COMPROMISE"}))
    RevocationReason.add_member(:affiliation_changed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFFILIATION_CHANGED', traits: {"smithy.api#enumValue" => "AFFILIATION_CHANGED"}))
    RevocationReason.add_member(:superseded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUPERSEDED', traits: {"smithy.api#enumValue" => "SUPERSEDED"}))
    RevocationReason.add_member(:cessation_of_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CESSATION_OF_OPERATION', traits: {"smithy.api#enumValue" => "CESSATION_OF_OPERATION"}))
    RevocationReason.add_member(:privilege_withdrawn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVILEGE_WITHDRAWN', traits: {"smithy.api#enumValue" => "PRIVILEGE_WITHDRAWN"}))
    RevocationReason.add_member(:a_a_compromise, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'A_A_COMPROMISE', traits: {"smithy.api#enumValue" => "A_A_COMPROMISE"}))
    RevokeCertificateRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#required" => {}}))
    RevokeCertificateRequest.add_member(:certificate_serial, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String128, location_name: 'CertificateSerial', traits: {"smithy.api#required" => {}}))
    RevokeCertificateRequest.add_member(:revocation_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationReason, location_name: 'RevocationReason', traits: {"smithy.api#required" => {}}))
    RevokeCertificateRequest.type = Types::RevokeCertificateRequest
    S3ObjectAcl.add_member(:public_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLIC_READ', traits: {"smithy.api#enumValue" => "PUBLIC_READ"}))
    S3ObjectAcl.add_member(:bucket_owner_full_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUCKET_OWNER_FULL_CONTROL', traits: {"smithy.api#enumValue" => "BUCKET_OWNER_FULL_CONTROL"}))
    SigningAlgorithm.add_member(:sha256_withecdsa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA256WITHECDSA', traits: {"smithy.api#enumValue" => "SHA256WITHECDSA"}))
    SigningAlgorithm.add_member(:sha384_withecdsa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA384WITHECDSA', traits: {"smithy.api#enumValue" => "SHA384WITHECDSA"}))
    SigningAlgorithm.add_member(:sha512_withecdsa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA512WITHECDSA', traits: {"smithy.api#enumValue" => "SHA512WITHECDSA"}))
    SigningAlgorithm.add_member(:sha256_withrsa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA256WITHRSA', traits: {"smithy.api#enumValue" => "SHA256WITHRSA"}))
    SigningAlgorithm.add_member(:sha384_withrsa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA384WITHRSA', traits: {"smithy.api#enumValue" => "SHA384WITHRSA"}))
    SigningAlgorithm.add_member(:sha512_withrsa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA512WITHRSA', traits: {"smithy.api#enumValue" => "SHA512WITHRSA"}))
    SigningAlgorithm.add_member(:sm3_withsm2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SM3WITHSM2', traits: {"smithy.api#enumValue" => "SM3WITHSM2"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value'))
    Tag.type = Types::Tag
    TagCertificateAuthorityRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#required" => {}}))
    TagCertificateAuthorityRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagCertificateAuthorityRequest.type = Types::TagCertificateAuthorityRequest
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagCertificateAuthorityRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#required" => {}}))
    UntagCertificateAuthorityRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    UntagCertificateAuthorityRequest.type = Types::UntagCertificateAuthorityRequest
    UpdateCertificateAuthorityRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#required" => {}}))
    UpdateCertificateAuthorityRequest.add_member(:revocation_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationConfiguration, location_name: 'RevocationConfiguration'))
    UpdateCertificateAuthorityRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityStatus, location_name: 'Status'))
    UpdateCertificateAuthorityRequest.type = Types::UpdateCertificateAuthorityRequest
    Validity.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLong, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    Validity.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidityPeriodType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    Validity.type = Types::Validity
    ValidityPeriodType.add_member(:end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'END_DATE', traits: {"smithy.api#enumValue" => "END_DATE"}))
    ValidityPeriodType.add_member(:absolute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ABSOLUTE', traits: {"smithy.api#enumValue" => "ABSOLUTE"}))
    ValidityPeriodType.add_member(:days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAYS', traits: {"smithy.api#enumValue" => "DAYS"}))
    ValidityPeriodType.add_member(:months, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTHS', traits: {"smithy.api#enumValue" => "MONTHS"}))
    ValidityPeriodType.add_member(:years, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'YEARS', traits: {"smithy.api#enumValue" => "YEARS"}))

    ACMPrivateCA = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.acmpca#ACMPrivateCA"
      service.name = "ACMPrivateCA"
      service.traits = {"aws.api#service" => {"sdkId" => "ACM PCA", "arnNamespace" => "acm-pca", "cloudFormationName" => "ACMPCA", "cloudTrailEventSource" => "acm-pca.amazonaws.com", "docId" => "acm-pca-2017-08-22", "endpointPrefix" => "acm-pca"}, "aws.auth#sigv4" => {"name" => "acm-pca"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Certificate Manager Private Certificate Authority"}
      service.add_operation(:create_certificate_authority, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#CreateCertificateAuthority"
        operation.name = "CreateCertificateAuthority"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCertificateAuthorityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCertificateAuthorityResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_certificate_authority_audit_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#CreateCertificateAuthorityAuditReport"
        operation.name = "CreateCertificateAuthorityAuditReport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCertificateAuthorityAuditReportRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCertificateAuthorityAuditReportResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#CreatePermission"
        operation.name = "CreatePermission"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePermissionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_certificate_authority, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#DeleteCertificateAuthority"
        operation.name = "DeleteCertificateAuthority"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCertificateAuthorityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#DeletePermission"
        operation.name = "DeletePermission"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePermissionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#DeletePolicy"
        operation.name = "DeletePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LockoutPreventedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_certificate_authority, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#DescribeCertificateAuthority"
        operation.name = "DescribeCertificateAuthority"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCertificateAuthorityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCertificateAuthorityResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_certificate_authority_audit_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#DescribeCertificateAuthorityAuditReport"
        operation.name = "DescribeCertificateAuthorityAuditReport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCertificateAuthorityAuditReportRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCertificateAuthorityAuditReportResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
      end)
      service.add_operation(:get_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#GetCertificate"
        operation.name = "GetCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCertificateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
      end)
      service.add_operation(:get_certificate_authority_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#GetCertificateAuthorityCertificate"
        operation.name = "GetCertificateAuthorityCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCertificateAuthorityCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCertificateAuthorityCertificateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_certificate_authority_csr, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#GetCertificateAuthorityCsr"
        operation.name = "GetCertificateAuthorityCsr"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCertificateAuthorityCsrRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCertificateAuthorityCsrResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
      end)
      service.add_operation(:get_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#GetPolicy"
        operation.name = "GetPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:import_certificate_authority_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#ImportCertificateAuthorityCertificate"
        operation.name = "ImportCertificateAuthorityCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportCertificateAuthorityCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedCertificateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:issue_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#IssueCertificate"
        operation.name = "IssueCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IssueCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IssueCertificateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedCSRException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_certificate_authorities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#ListCertificateAuthorities"
        operation.name = "ListCertificateAuthorities"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCertificateAuthoritiesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCertificateAuthoritiesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCertificateAuthorities.new
      end)
      service.add_operation(:list_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#ListPermissions"
        operation.name = "ListPermissions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPermissions.new
      end)
      service.add_operation(:list_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#ListTags"
        operation.name = "ListTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTags.new
      end)
      service.add_operation(:put_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#PutPolicy"
        operation.name = "PutPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LockoutPreventedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:restore_certificate_authority, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#RestoreCertificateAuthority"
        operation.name = "RestoreCertificateAuthority"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreCertificateAuthorityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:revoke_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#RevokeCertificate"
        operation.name = "RevokeCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestAlreadyProcessedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:tag_certificate_authority, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#TagCertificateAuthority"
        operation.name = "TagCertificateAuthority"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagCertificateAuthorityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:untag_certificate_authority, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#UntagCertificateAuthority"
        operation.name = "UntagCertificateAuthority"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagCertificateAuthorityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_certificate_authority, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#UpdateCertificateAuthority"
        operation.name = "UpdateCertificateAuthority"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCertificateAuthorityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
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

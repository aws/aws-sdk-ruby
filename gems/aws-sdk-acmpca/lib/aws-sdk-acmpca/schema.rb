# frozen_string_literal: true

# This is generated code!

module Aws::ACMPCA
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ASN1PrintableString64 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#ASN1PrintableString64', name: 'ASN1PrintableString64', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9'()+-.?:/= ]*$"})
    ASN1Subject = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ASN1Subject', name: 'ASN1Subject')
    AWSPolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#AWSPolicy', name: 'AWSPolicy', traits: {"smithy.api#length" => {"min" => 1, "max" => 81920}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    AccessDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#AccessDescription', name: 'AccessDescription')
    AccessDescriptionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acmpca#AccessDescriptionList', name: 'AccessDescriptionList')
    AccessMethod = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#AccessMethod', name: 'AccessMethod')
    AccessMethodType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#AccessMethodType', name: 'AccessMethodType')
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]+$"})
    ActionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acmpca#ActionList', name: 'ActionList', traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    ActionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#ActionType', name: 'ActionType')
    ApiPassthrough = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ApiPassthrough', name: 'ApiPassthrough')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 5, "max" => 200}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:acm-pca:[\\w+=/,.@-]*:[0-9]*:[\\w+=,.@-]+(/[\\w+=,.@-]+)*$"})
    AuditReportId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#AuditReportId', name: 'AuditReportId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-z0-9]{8}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{12}$"})
    AuditReportResponseFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#AuditReportResponseFormat', name: 'AuditReportResponseFormat')
    AuditReportStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#AuditReportStatus', name: 'AuditReportStatus')
    Base64String1To4096 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#Base64String1To4096', name: 'Base64String1To4096', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$"})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.acmpca#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    CertificateAuthorities = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acmpca#CertificateAuthorities', name: 'CertificateAuthorities')
    CertificateAuthority = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CertificateAuthority', name: 'CertificateAuthority')
    CertificateAuthorityConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CertificateAuthorityConfiguration', name: 'CertificateAuthorityConfiguration')
    CertificateAuthorityStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#CertificateAuthorityStatus', name: 'CertificateAuthorityStatus')
    CertificateAuthorityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#CertificateAuthorityType', name: 'CertificateAuthorityType')
    CertificateAuthorityUsageMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#CertificateAuthorityUsageMode', name: 'CertificateAuthorityUsageMode')
    CertificateBody = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#CertificateBody', name: 'CertificateBody')
    CertificateBodyBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.acmpca#CertificateBodyBlob', name: 'CertificateBodyBlob', traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}})
    CertificateChain = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#CertificateChain', name: 'CertificateChain')
    CertificateChainBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.acmpca#CertificateChainBlob', name: 'CertificateChainBlob', traits: {"smithy.api#length" => {"min" => 0, "max" => 2097152}})
    CertificateMismatchException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CertificateMismatchException', name: 'CertificateMismatchException', traits: {"smithy.api#error" => "client"})
    CertificatePolicyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acmpca#CertificatePolicyList', name: 'CertificatePolicyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    CnameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#CnameString', name: 'CnameString', traits: {"smithy.api#length" => {"min" => 0, "max" => 253}, "smithy.api#pattern" => "^[-a-zA-Z0-9;/?:@&=+$,%_.!~*()']*$"})
    ConcurrentModificationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client"})
    CountryCodeString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#CountryCodeString', name: 'CountryCodeString', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[A-Za-z]{2}$"})
    CreateCertificateAuthorityAuditReportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CreateCertificateAuthorityAuditReportRequest', name: 'CreateCertificateAuthorityAuditReportRequest')
    CreateCertificateAuthorityAuditReportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CreateCertificateAuthorityAuditReportResponse', name: 'CreateCertificateAuthorityAuditReportResponse')
    CreateCertificateAuthorityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CreateCertificateAuthorityRequest', name: 'CreateCertificateAuthorityRequest')
    CreateCertificateAuthorityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CreateCertificateAuthorityResponse', name: 'CreateCertificateAuthorityResponse')
    CreatePermissionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CreatePermissionRequest', name: 'CreatePermissionRequest')
    CrlConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CrlConfiguration', name: 'CrlConfiguration')
    CrlDistributionPointExtensionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CrlDistributionPointExtensionConfiguration', name: 'CrlDistributionPointExtensionConfiguration')
    CrlPathString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#CrlPathString', name: 'CrlPathString', traits: {"smithy.api#length" => {"min" => 0, "max" => 253}, "smithy.api#pattern" => "^[-a-zA-Z0-9;?:@&=+$,%_.!~*()']+(/[-a-zA-Z0-9;?:@&=+$,%_.!~*()']+)*$"})
    CrlType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#CrlType', name: 'CrlType')
    CsrBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.acmpca#CsrBlob', name: 'CsrBlob', traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}})
    CsrBody = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#CsrBody', name: 'CsrBody')
    CsrExtensions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CsrExtensions', name: 'CsrExtensions')
    CustomAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CustomAttribute', name: 'CustomAttribute')
    CustomAttributeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acmpca#CustomAttributeList', name: 'CustomAttributeList', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    CustomExtension = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#CustomExtension', name: 'CustomExtension')
    CustomExtensionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acmpca#CustomExtensionList', name: 'CustomExtensionList', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    CustomObjectIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#CustomObjectIdentifier', name: 'CustomObjectIdentifier', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^([0-2])\\.([0-9]|([0-3][0-9]))((\\.([0-9]+)){0,126})$"})
    DeleteCertificateAuthorityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#DeleteCertificateAuthorityRequest', name: 'DeleteCertificateAuthorityRequest')
    DeletePermissionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#DeletePermissionRequest', name: 'DeletePermissionRequest')
    DeletePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#DeletePolicyRequest', name: 'DeletePolicyRequest')
    DescribeCertificateAuthorityAuditReportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#DescribeCertificateAuthorityAuditReportRequest', name: 'DescribeCertificateAuthorityAuditReportRequest')
    DescribeCertificateAuthorityAuditReportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#DescribeCertificateAuthorityAuditReportResponse', name: 'DescribeCertificateAuthorityAuditReportResponse')
    DescribeCertificateAuthorityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#DescribeCertificateAuthorityRequest', name: 'DescribeCertificateAuthorityRequest')
    DescribeCertificateAuthorityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#DescribeCertificateAuthorityResponse', name: 'DescribeCertificateAuthorityResponse')
    EdiPartyName = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#EdiPartyName', name: 'EdiPartyName')
    ExtendedKeyUsage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ExtendedKeyUsage', name: 'ExtendedKeyUsage')
    ExtendedKeyUsageList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acmpca#ExtendedKeyUsageList', name: 'ExtendedKeyUsageList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ExtendedKeyUsageType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#ExtendedKeyUsageType', name: 'ExtendedKeyUsageType')
    Extensions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#Extensions', name: 'Extensions')
    FailureReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#FailureReason', name: 'FailureReason')
    GeneralName = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#GeneralName', name: 'GeneralName')
    GeneralNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acmpca#GeneralNameList', name: 'GeneralNameList', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    GetCertificateAuthorityCertificateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#GetCertificateAuthorityCertificateRequest', name: 'GetCertificateAuthorityCertificateRequest')
    GetCertificateAuthorityCertificateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#GetCertificateAuthorityCertificateResponse', name: 'GetCertificateAuthorityCertificateResponse')
    GetCertificateAuthorityCsrRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#GetCertificateAuthorityCsrRequest', name: 'GetCertificateAuthorityCsrRequest')
    GetCertificateAuthorityCsrResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#GetCertificateAuthorityCsrResponse', name: 'GetCertificateAuthorityCsrResponse')
    GetCertificateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#GetCertificateRequest', name: 'GetCertificateRequest')
    GetCertificateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#GetCertificateResponse', name: 'GetCertificateResponse')
    GetPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#GetPolicyRequest', name: 'GetPolicyRequest')
    GetPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#GetPolicyResponse', name: 'GetPolicyResponse')
    IdempotencyToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#IdempotencyToken', name: 'IdempotencyToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]*$"})
    ImportCertificateAuthorityCertificateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ImportCertificateAuthorityCertificateRequest', name: 'ImportCertificateAuthorityCertificateRequest')
    Integer1To5000 = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.acmpca#Integer1To5000', name: 'Integer1To5000', traits: {"smithy.api#range" => {"min" => 1, "max" => 5000}})
    InvalidArgsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#InvalidArgsException', name: 'InvalidArgsException', traits: {"smithy.api#error" => "client"})
    InvalidArnException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#InvalidArnException', name: 'InvalidArnException', traits: {"smithy.api#error" => "client"})
    InvalidNextTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"smithy.api#error" => "client"})
    InvalidPolicyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#InvalidPolicyException', name: 'InvalidPolicyException', traits: {"smithy.api#error" => "client"})
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client"})
    InvalidStateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#InvalidStateException', name: 'InvalidStateException', traits: {"smithy.api#error" => "client"})
    InvalidTagException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#InvalidTagException', name: 'InvalidTagException', traits: {"smithy.api#error" => "client"})
    IssueCertificateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#IssueCertificateRequest', name: 'IssueCertificateRequest')
    IssueCertificateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#IssueCertificateResponse', name: 'IssueCertificateResponse')
    KeyAlgorithm = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#KeyAlgorithm', name: 'KeyAlgorithm')
    KeyStorageSecurityStandard = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#KeyStorageSecurityStandard', name: 'KeyStorageSecurityStandard')
    KeyUsage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#KeyUsage', name: 'KeyUsage')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListCertificateAuthoritiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ListCertificateAuthoritiesRequest', name: 'ListCertificateAuthoritiesRequest')
    ListCertificateAuthoritiesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ListCertificateAuthoritiesResponse', name: 'ListCertificateAuthoritiesResponse')
    ListPermissionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ListPermissionsRequest', name: 'ListPermissionsRequest')
    ListPermissionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ListPermissionsResponse', name: 'ListPermissionsResponse')
    ListTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ListTagsRequest', name: 'ListTagsRequest')
    ListTagsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ListTagsResponse', name: 'ListTagsResponse')
    LockoutPreventedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#LockoutPreventedException', name: 'LockoutPreventedException', traits: {"smithy.api#error" => "client"})
    MalformedCSRException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#MalformedCSRException', name: 'MalformedCSRException', traits: {"smithy.api#error" => "client"})
    MalformedCertificateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#MalformedCertificateException', name: 'MalformedCertificateException', traits: {"smithy.api#error" => "client"})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.acmpca#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 43739}})
    OcspConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#OcspConfiguration', name: 'OcspConfiguration')
    OtherName = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#OtherName', name: 'OtherName')
    PermanentDeletionTimeInDays = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.acmpca#PermanentDeletionTimeInDays', name: 'PermanentDeletionTimeInDays', traits: {"smithy.api#range" => {"min" => 7, "max" => 30}})
    Permission = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#Permission', name: 'Permission')
    PermissionAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#PermissionAlreadyExistsException', name: 'PermissionAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    PermissionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acmpca#PermissionList', name: 'PermissionList', traits: {"smithy.api#length" => {"min" => 0}})
    PolicyInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#PolicyInformation', name: 'PolicyInformation')
    PolicyQualifierId = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#PolicyQualifierId', name: 'PolicyQualifierId')
    PolicyQualifierInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#PolicyQualifierInfo', name: 'PolicyQualifierInfo')
    PolicyQualifierInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acmpca#PolicyQualifierInfoList', name: 'PolicyQualifierInfoList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    PositiveLong = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.acmpca#PositiveLong', name: 'PositiveLong', traits: {"smithy.api#range" => {"min" => 1}})
    Principal = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#Principal', name: 'Principal', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[^*]+$"})
    PutPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#PutPolicyRequest', name: 'PutPolicyRequest')
    Qualifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#Qualifier', name: 'Qualifier')
    RequestAlreadyProcessedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#RequestAlreadyProcessedException', name: 'RequestAlreadyProcessedException', traits: {"smithy.api#error" => "client"})
    RequestFailedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#RequestFailedException', name: 'RequestFailedException', traits: {"smithy.api#error" => "client"})
    RequestInProgressException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#RequestInProgressException', name: 'RequestInProgressException', traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    ResourceOwner = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#ResourceOwner', name: 'ResourceOwner')
    RestoreCertificateAuthorityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#RestoreCertificateAuthorityRequest', name: 'RestoreCertificateAuthorityRequest')
    RevocationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#RevocationConfiguration', name: 'RevocationConfiguration')
    RevocationReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#RevocationReason', name: 'RevocationReason')
    RevokeCertificateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#RevokeCertificateRequest', name: 'RevokeCertificateRequest')
    S3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    S3BucketName3To255 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#S3BucketName3To255', name: 'S3BucketName3To255', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[-a-zA-Z0-9._/]+$"})
    S3Key = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#S3Key', name: 'S3Key', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    S3ObjectAcl = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#S3ObjectAcl', name: 'S3ObjectAcl')
    SigningAlgorithm = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#SigningAlgorithm', name: 'SigningAlgorithm')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#String', name: 'String')
    String128 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#String128', name: 'String128', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    String16 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#String16', name: 'String16', traits: {"smithy.api#length" => {"min" => 0, "max" => 16}})
    String1To256 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#String1To256', name: 'String1To256', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    String253 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#String253', name: 'String253', traits: {"smithy.api#length" => {"min" => 0, "max" => 253}})
    String256 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#String256', name: 'String256', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    String3 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#String3', name: 'String3', traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    String39 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#String39', name: 'String39', traits: {"smithy.api#length" => {"min" => 0, "max" => 39}})
    String40 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#String40', name: 'String40', traits: {"smithy.api#length" => {"min" => 0, "max" => 40}})
    String5 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#String5', name: 'String5', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    String64 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#String64', name: 'String64', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    TStamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.acmpca#TStamp', name: 'TStamp')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#Tag', name: 'Tag')
    TagCertificateAuthorityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#TagCertificateAuthorityRequest', name: 'TagCertificateAuthorityRequest')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acmpca#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acmpca#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client"})
    UntagCertificateAuthorityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#UntagCertificateAuthorityRequest', name: 'UntagCertificateAuthorityRequest')
    UpdateCertificateAuthorityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#UpdateCertificateAuthorityRequest', name: 'UpdateCertificateAuthorityRequest')
    Validity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acmpca#Validity', name: 'Validity')
    ValidityPeriodType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acmpca#ValidityPeriodType', name: 'ValidityPeriodType')

    ASN1Subject.add_member(:country, Smithy::Schema::Shapes::ShapeRef.new(shape: CountryCodeString, location_name: 'Country', traits: {"smithy.api#documentation" => "<p>Two-digit code that specifies the country in which the certificate subject located.</p>"}))
    ASN1Subject.add_member(:organization, Smithy::Schema::Shapes::ShapeRef.new(shape: String64, location_name: 'Organization', traits: {"smithy.api#documentation" => "<p>Legal name of the organization with which the certificate subject is affiliated. </p>"}))
    ASN1Subject.add_member(:organizational_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: String64, location_name: 'OrganizationalUnit', traits: {"smithy.api#documentation" => "<p>A subdivision or unit of the organization (such as sales or finance) with which the certificate subject is affiliated.</p>"}))
    ASN1Subject.add_member(:distinguished_name_qualifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ASN1PrintableString64, location_name: 'DistinguishedNameQualifier', traits: {"smithy.api#documentation" => "<p>Disambiguating information for the certificate subject.</p>"}))
    ASN1Subject.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: String128, location_name: 'State', traits: {"smithy.api#documentation" => "<p>State in which the subject of the certificate is located.</p>"}))
    ASN1Subject.add_member(:common_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String64, location_name: 'CommonName', traits: {"smithy.api#documentation" => "<p>For CA and end-entity certificates in a private PKI, the common name (CN) can be any string within the length limit. </p> <p>Note: In publicly trusted certificates, the common name must be a fully qualified domain name (FQDN) associated with the certificate subject.</p>"}))
    ASN1Subject.add_member(:serial_number, Smithy::Schema::Shapes::ShapeRef.new(shape: ASN1PrintableString64, location_name: 'SerialNumber', traits: {"smithy.api#documentation" => "<p>The certificate serial number.</p>"}))
    ASN1Subject.add_member(:locality, Smithy::Schema::Shapes::ShapeRef.new(shape: String128, location_name: 'Locality', traits: {"smithy.api#documentation" => "<p>The locality (such as a city or town) in which the certificate subject is located.</p>"}))
    ASN1Subject.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: String64, location_name: 'Title', traits: {"smithy.api#documentation" => "<p>A title such as Mr. or Ms., which is pre-pended to the name to refer formally to the certificate subject.</p>"}))
    ASN1Subject.add_member(:surname, Smithy::Schema::Shapes::ShapeRef.new(shape: String40, location_name: 'Surname', traits: {"smithy.api#documentation" => "<p>Family name. In the US and the UK, for example, the surname of an individual is ordered last. In Asian cultures the surname is typically ordered first.</p>"}))
    ASN1Subject.add_member(:given_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String16, location_name: 'GivenName', traits: {"smithy.api#documentation" => "<p>First name.</p>"}))
    ASN1Subject.add_member(:initials, Smithy::Schema::Shapes::ShapeRef.new(shape: String5, location_name: 'Initials', traits: {"smithy.api#documentation" => "<p>Concatenation that typically contains the first letter of the <b>GivenName</b>, the first letter of the middle name if one exists, and the first letter of the <b>Surname</b>.</p>"}))
    ASN1Subject.add_member(:pseudonym, Smithy::Schema::Shapes::ShapeRef.new(shape: String128, location_name: 'Pseudonym', traits: {"smithy.api#documentation" => "<p>Typically a shortened version of a longer <b>GivenName</b>. For example, Jonathan is often shortened to John. Elizabeth is often shortened to Beth, Liz, or Eliza.</p>"}))
    ASN1Subject.add_member(:generation_qualifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String3, location_name: 'GenerationQualifier', traits: {"smithy.api#documentation" => "<p>Typically a qualifier appended to the name of an individual. Examples include Jr. for junior, Sr. for senior, and III for third.</p>"}))
    ASN1Subject.add_member(:custom_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomAttributeList, location_name: 'CustomAttributes', traits: {"smithy.api#documentation" => "<p/> <p>Contains a sequence of one or more X.500 relative distinguished names (RDNs), each of which consists of an object identifier (OID) and a value. For more information, see NIST’s definition of <a href=\"https://csrc.nist.gov/glossary/term/Object_Identifier\">Object Identifier (OID)</a>.</p> <note> <p>Custom attributes cannot be used in combination with standard attributes.</p> </note>"}))
    ASN1Subject.type = Types::ASN1Subject
    AccessDescription.add_member(:access_method, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessMethod, location_name: 'AccessMethod', traits: {"smithy.api#documentation" => "<p>The type and format of <code>AccessDescription</code> information.</p>", "smithy.api#required" => {}}))
    AccessDescription.add_member(:access_location, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralName, location_name: 'AccessLocation', traits: {"smithy.api#documentation" => "<p>The location of <code>AccessDescription</code> information.</p>", "smithy.api#required" => {}}))
    AccessDescription.type = Types::AccessDescription
    AccessDescriptionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDescription)
    AccessMethod.add_member(:custom_object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomObjectIdentifier, location_name: 'CustomObjectIdentifier', traits: {"smithy.api#documentation" => "<p>An object identifier (OID) specifying the <code>AccessMethod</code>. The OID must satisfy the regular expression shown below. For more information, see NIST's definition of <a href=\"https://csrc.nist.gov/glossary/term/Object_Identifier\">Object Identifier (OID)</a>.</p>"}))
    AccessMethod.add_member(:access_method_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessMethodType, location_name: 'AccessMethodType', traits: {"smithy.api#documentation" => "<p>Specifies the <code>AccessMethod</code>.</p>"}))
    AccessMethod.type = Types::AccessMethod
    AccessMethodType.add_member(:ca_repository, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CA_REPOSITORY', traits: {"smithy.api#enumValue" => "CA_REPOSITORY"}))
    AccessMethodType.add_member(:resource_pki_manifest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_PKI_MANIFEST', traits: {"smithy.api#enumValue" => "RESOURCE_PKI_MANIFEST"}))
    AccessMethodType.add_member(:resource_pki_notify, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_PKI_NOTIFY', traits: {"smithy.api#enumValue" => "RESOURCE_PKI_NOTIFY"}))
    ActionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionType)
    ActionType.add_member(:issue_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IssueCertificate', traits: {"smithy.api#enumValue" => "IssueCertificate"}))
    ActionType.add_member(:get_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GetCertificate', traits: {"smithy.api#enumValue" => "GetCertificate"}))
    ActionType.add_member(:list_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ListPermissions', traits: {"smithy.api#enumValue" => "ListPermissions"}))
    ApiPassthrough.add_member(:extensions, Smithy::Schema::Shapes::ShapeRef.new(shape: Extensions, location_name: 'Extensions', traits: {"smithy.api#documentation" => "<p>Specifies X.509 extension information for a certificate.</p>"}))
    ApiPassthrough.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: ASN1Subject, location_name: 'Subject'))
    ApiPassthrough.type = Types::ApiPassthrough
    AuditReportResponseFormat.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    AuditReportResponseFormat.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    AuditReportStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    AuditReportStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    AuditReportStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CertificateAuthorities.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthority)
    CertificateAuthority.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for your private certificate authority (CA). The format is <code> <i>12345678-1234-1234-1234-123456789012</i> </code>.</p>"}))
    CertificateAuthority.add_member(:owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerAccount', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID that owns the certificate authority.</p>"}))
    CertificateAuthority.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>Date and time at which your private CA was created.</p>"}))
    CertificateAuthority.add_member(:last_state_change_at, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LastStateChangeAt', traits: {"smithy.api#documentation" => "<p>Date and time at which your private CA was last updated.</p>"}))
    CertificateAuthority.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Type of your private CA.</p>"}))
    CertificateAuthority.add_member(:serial, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Serial', traits: {"smithy.api#documentation" => "<p>Serial number of your private CA.</p>"}))
    CertificateAuthority.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status of your private CA.</p>"}))
    CertificateAuthority.add_member(:not_before, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NotBefore', traits: {"smithy.api#documentation" => "<p>Date and time before which your private CA certificate is not valid.</p>"}))
    CertificateAuthority.add_member(:not_after, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NotAfter', traits: {"smithy.api#documentation" => "<p>Date and time after which your private CA certificate is not valid.</p>"}))
    CertificateAuthority.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'FailureReason', traits: {"smithy.api#documentation" => "<p>Reason the request to create your private CA failed.</p>"}))
    CertificateAuthority.add_member(:certificate_authority_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityConfiguration, location_name: 'CertificateAuthorityConfiguration', traits: {"smithy.api#documentation" => "<p>Your private CA configuration.</p>"}))
    CertificateAuthority.add_member(:revocation_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationConfiguration, location_name: 'RevocationConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the Online Certificate Status Protocol (OCSP) configuration or certificate revocation list (CRL) created and maintained by your private CA. </p>"}))
    CertificateAuthority.add_member(:restorable_until, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'RestorableUntil', traits: {"smithy.api#documentation" => "<p>The period during which a deleted CA can be restored. For more information, see the <code>PermanentDeletionTimeInDays</code> parameter of the <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeleteCertificateAuthorityRequest.html\">DeleteCertificateAuthorityRequest</a> action. </p>"}))
    CertificateAuthority.add_member(:key_storage_security_standard, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyStorageSecurityStandard, location_name: 'KeyStorageSecurityStandard', traits: {"smithy.api#documentation" => "<p>Defines a cryptographic key management compliance standard for handling and protecting CA keys.</p> <p>Default: FIPS_140_2_LEVEL_3_OR_HIGHER</p> <note> <p>Starting January 26, 2023, Amazon Web Services Private CA protects all CA private keys in non-China regions using hardware security modules (HSMs) that comply with FIPS PUB 140-2 Level 3.</p> <p>For information about security standard support in different Amazon Web Services Regions, see <a href=\"https://docs.aws.amazon.com/privateca/latest/userguide/data-protection.html#private-keys\">Storage and security compliance of Amazon Web Services Private CA private keys</a>.</p> </note>"}))
    CertificateAuthority.add_member(:usage_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityUsageMode, location_name: 'UsageMode', traits: {"smithy.api#documentation" => "<p>Specifies whether the CA issues general-purpose certificates that typically require a revocation mechanism, or short-lived certificates that may optionally omit revocation because they expire quickly. Short-lived certificate validity is limited to seven days.</p> <p>The default value is GENERAL_PURPOSE.</p>"}))
    CertificateAuthority.type = Types::CertificateAuthority
    CertificateAuthorityConfiguration.add_member(:key_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: 'KeyAlgorithm', traits: {"smithy.api#documentation" => "<p>Type of the public key algorithm and size, in bits, of the key pair that your CA creates when it issues a certificate. When you create a subordinate CA, you must use a key algorithm supported by the parent CA.</p>", "smithy.api#required" => {}}))
    CertificateAuthorityConfiguration.add_member(:signing_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: SigningAlgorithm, location_name: 'SigningAlgorithm', traits: {"smithy.api#documentation" => "<p>Name of the algorithm your private CA uses to sign certificate requests.</p> <p>This parameter should not be confused with the <code>SigningAlgorithm</code> parameter used to sign certificates when they are issued.</p>", "smithy.api#required" => {}}))
    CertificateAuthorityConfiguration.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: ASN1Subject, location_name: 'Subject', traits: {"smithy.api#documentation" => "<p>Structure that contains X.500 distinguished name information for your private CA.</p>", "smithy.api#required" => {}}))
    CertificateAuthorityConfiguration.add_member(:csr_extensions, Smithy::Schema::Shapes::ShapeRef.new(shape: CsrExtensions, location_name: 'CsrExtensions', traits: {"smithy.api#documentation" => "<p>Specifies information to be added to the extension section of the certificate signing request (CSR).</p>"}))
    CertificateAuthorityConfiguration.type = Types::CertificateAuthorityConfiguration
    CertificateAuthorityStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    CertificateAuthorityStatus.add_member(:pending_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_CERTIFICATE', traits: {"smithy.api#enumValue" => "PENDING_CERTIFICATE"}))
    CertificateAuthorityStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    CertificateAuthorityStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    CertificateAuthorityStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    CertificateAuthorityStatus.add_member(:expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    CertificateAuthorityStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CertificateAuthorityType.add_member(:root, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROOT', traits: {"smithy.api#enumValue" => "ROOT"}))
    CertificateAuthorityType.add_member(:subordinate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBORDINATE', traits: {"smithy.api#enumValue" => "SUBORDINATE"}))
    CertificateAuthorityUsageMode.add_member(:general_purpose, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENERAL_PURPOSE', traits: {"smithy.api#enumValue" => "GENERAL_PURPOSE"}))
    CertificateAuthorityUsageMode.add_member(:short_lived_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHORT_LIVED_CERTIFICATE', traits: {"smithy.api#enumValue" => "SHORT_LIVED_CERTIFICATE"}))
    CertificateMismatchException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    CertificateMismatchException.type = Types::CertificateMismatchException
    CertificatePolicyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyInformation)
    ConcurrentModificationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    CreateCertificateAuthorityAuditReportRequest.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the CA to be audited. This is of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>.</p>", "smithy.api#required" => {}}))
    CreateCertificateAuthorityAuditReportRequest.add_member(:s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'S3BucketName', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket that will contain the audit report.</p>", "smithy.api#required" => {}}))
    CreateCertificateAuthorityAuditReportRequest.add_member(:audit_report_response_format, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditReportResponseFormat, location_name: 'AuditReportResponseFormat', traits: {"smithy.api#documentation" => "<p>The format in which to create the report. This can be either <b>JSON</b> or <b>CSV</b>.</p>", "smithy.api#required" => {}}))
    CreateCertificateAuthorityAuditReportRequest.type = Types::CreateCertificateAuthorityAuditReportRequest
    CreateCertificateAuthorityAuditReportResponse.add_member(:audit_report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditReportId, location_name: 'AuditReportId', traits: {"smithy.api#documentation" => "<p>An alphanumeric string that contains a report identifier.</p>"}))
    CreateCertificateAuthorityAuditReportResponse.add_member(:s3_key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'S3Key', traits: {"smithy.api#documentation" => "<p>The <b>key</b> that uniquely identifies the report file in your S3 bucket.</p>"}))
    CreateCertificateAuthorityAuditReportResponse.type = Types::CreateCertificateAuthorityAuditReportResponse
    CreateCertificateAuthorityRequest.add_member(:certificate_authority_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityConfiguration, location_name: 'CertificateAuthorityConfiguration', traits: {"smithy.api#documentation" => "<p>Name and bit size of the private key algorithm, the name of the signing algorithm, and X.500 certificate subject information.</p>", "smithy.api#required" => {}}))
    CreateCertificateAuthorityRequest.add_member(:revocation_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationConfiguration, location_name: 'RevocationConfiguration', traits: {"smithy.api#documentation" => "<p>Contains information to enable support for Online Certificate Status Protocol (OCSP), certificate revocation list (CRL), both protocols, or neither. By default, both certificate validation mechanisms are disabled.</p> <p>The following requirements apply to revocation configurations.</p> <ul> <li> <p>A configuration disabling CRLs or OCSP must contain only the <code>Enabled=False</code> parameter, and will fail if other parameters such as <code>CustomCname</code> or <code>ExpirationInDays</code> are included.</p> </li> <li> <p>In a CRL configuration, the <code>S3BucketName</code> parameter must conform to <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html\">Amazon S3 bucket naming rules</a>.</p> </li> <li> <p>A configuration containing a custom Canonical Name (CNAME) parameter for CRLs or OCSP must conform to <a href=\"https://www.ietf.org/rfc/rfc2396.txt\">RFC2396</a> restrictions on the use of special characters in a CNAME. </p> </li> <li> <p>In a CRL or OCSP configuration, the value of a CNAME parameter must not include a protocol prefix such as \"http://\" or \"https://\".</p> </li> </ul> <p> For more information, see the <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_OcspConfiguration.html\">OcspConfiguration</a> and <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_CrlConfiguration.html\">CrlConfiguration</a> types.</p>"}))
    CreateCertificateAuthorityRequest.add_member(:certificate_authority_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityType, location_name: 'CertificateAuthorityType', traits: {"smithy.api#documentation" => "<p>The type of the certificate authority.</p>", "smithy.api#required" => {}}))
    CreateCertificateAuthorityRequest.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>Custom string that can be used to distinguish between calls to the <b>CreateCertificateAuthority</b> action. Idempotency tokens for <b>CreateCertificateAuthority</b> time out after five minutes. Therefore, if you call <b>CreateCertificateAuthority</b> multiple times with the same idempotency token within five minutes, Amazon Web Services Private CA recognizes that you are requesting only certificate authority and will issue only one. If you change the idempotency token for each call, Amazon Web Services Private CA recognizes that you are requesting multiple certificate authorities.</p>"}))
    CreateCertificateAuthorityRequest.add_member(:key_storage_security_standard, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyStorageSecurityStandard, location_name: 'KeyStorageSecurityStandard', traits: {"smithy.api#documentation" => "<p>Specifies a cryptographic key management compliance standard for handling and protecting CA keys.</p> <p>Default: FIPS_140_2_LEVEL_3_OR_HIGHER</p> <note> <p>Some Amazon Web Services Regions don't support the default value. When you create a CA in these Regions, you must use <code>CCPC_LEVEL_1_OR_HIGHER</code> for the <code>KeyStorageSecurityStandard</code> parameter. If you don't, the operation returns an <code>InvalidArgsException</code> with this message: \"A certificate authority cannot be created in this region with the specified security standard.\"</p> <p>For information about security standard support in different Amazon Web Services Regions, see <a href=\"https://docs.aws.amazon.com/privateca/latest/userguide/data-protection.html#private-keys\">Storage and security compliance of Amazon Web Services Private CA private keys</a>.</p> </note>"}))
    CreateCertificateAuthorityRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Key-value pairs that will be attached to the new private CA. You can associate up to 50 tags with a private CA. For information using tags with IAM to manage permissions, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html\">Controlling Access Using IAM Tags</a>.</p>"}))
    CreateCertificateAuthorityRequest.add_member(:usage_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityUsageMode, location_name: 'UsageMode', traits: {"smithy.api#documentation" => "<p>Specifies whether the CA issues general-purpose certificates that typically require a revocation mechanism, or short-lived certificates that may optionally omit revocation because they expire quickly. Short-lived certificate validity is limited to seven days.</p> <p>The default value is GENERAL_PURPOSE.</p>"}))
    CreateCertificateAuthorityRequest.type = Types::CreateCertificateAuthorityRequest
    CreateCertificateAuthorityResponse.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>If successful, the Amazon Resource Name (ARN) of the certificate authority (CA). This is of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>"}))
    CreateCertificateAuthorityResponse.type = Types::CreateCertificateAuthorityResponse
    CreatePermissionRequest.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the CA that grants the permissions. You can find the ARN by calling the <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html\">ListCertificateAuthorities</a> action. This must have the following form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>", "smithy.api#required" => {}}))
    CreatePermissionRequest.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: Principal, location_name: 'Principal', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services service or identity that receives the permission. At this time, the only valid principal is <code>acm.amazonaws.com</code>.</p>", "smithy.api#required" => {}}))
    CreatePermissionRequest.add_member(:source_account, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'SourceAccount', traits: {"smithy.api#documentation" => "<p>The ID of the calling account.</p>"}))
    CreatePermissionRequest.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionList, location_name: 'Actions', traits: {"smithy.api#documentation" => "<p>The actions that the specified Amazon Web Services service principal can use. These include <code>IssueCertificate</code>, <code>GetCertificate</code>, and <code>ListPermissions</code>.</p>", "smithy.api#required" => {}}))
    CreatePermissionRequest.type = Types::CreatePermissionRequest
    CrlConfiguration.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Boolean value that specifies whether certificate revocation lists (CRLs) are enabled. You can use this value to enable certificate revocation for a new CA when you call the <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a> action or for an existing CA when you call the <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_UpdateCertificateAuthority.html\">UpdateCertificateAuthority</a> action. </p>", "smithy.api#required" => {}}))
    CrlConfiguration.add_member(:expiration_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer1To5000, location_name: 'ExpirationInDays', traits: {"smithy.api#documentation" => "<p>Validity period of the CRL in days.</p>"}))
    CrlConfiguration.add_member(:custom_cname, Smithy::Schema::Shapes::ShapeRef.new(shape: CnameString, location_name: 'CustomCname', traits: {"smithy.api#documentation" => "<p>Name inserted into the certificate <b>CRL Distribution Points</b> extension that enables the use of an alias for the CRL distribution point. Use this value if you don't want the name of your S3 bucket to be public.</p> <note> <p>The content of a Canonical Name (CNAME) record must conform to <a href=\"https://www.ietf.org/rfc/rfc2396.txt\">RFC2396</a> restrictions on the use of special characters in URIs. Additionally, the value of the CNAME must not include a protocol prefix such as \"http://\" or \"https://\".</p> </note>"}))
    CrlConfiguration.add_member(:s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName3To255, location_name: 'S3BucketName', traits: {"smithy.api#documentation" => "<p>Name of the S3 bucket that contains the CRL. If you do not provide a value for the <b>CustomCname</b> argument, the name of your S3 bucket is placed into the <b>CRL Distribution Points</b> extension of the issued certificate. You can change the name of your bucket by calling the <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_UpdateCertificateAuthority.html\">UpdateCertificateAuthority</a> operation. You must specify a <a href=\"https://docs.aws.amazon.com/privateca/latest/userguide/PcaCreateCa.html#s3-policies\">bucket policy</a> that allows Amazon Web Services Private CA to write the CRL to your bucket.</p> <note> <p>The <code>S3BucketName</code> parameter must conform to the <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html\">S3 bucket naming rules</a>.</p> </note>"}))
    CrlConfiguration.add_member(:s3_object_acl, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectAcl, location_name: 'S3ObjectAcl', traits: {"smithy.api#documentation" => "<p>Determines whether the CRL will be publicly readable or privately held in the CRL Amazon S3 bucket. If you choose PUBLIC_READ, the CRL will be accessible over the public internet. If you choose BUCKET_OWNER_FULL_CONTROL, only the owner of the CRL S3 bucket can access the CRL, and your PKI clients may need an alternative method of access. </p> <p>If no value is specified, the default is <code>PUBLIC_READ</code>.</p> <p> <i>Note:</i> This default can cause CA creation to fail in some circumstances. If you have have enabled the Block Public Access (BPA) feature in your S3 account, then you must specify the value of this parameter as <code>BUCKET_OWNER_FULL_CONTROL</code>, and not doing so results in an error. If you have disabled BPA in S3, then you can specify either <code>BUCKET_OWNER_FULL_CONTROL</code> or <code>PUBLIC_READ</code> as the value.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/privateca/latest/userguide/PcaCreateCa.html#s3-bpa\">Blocking public access to the S3 bucket</a>.</p>"}))
    CrlConfiguration.add_member(:crl_distribution_point_extension_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CrlDistributionPointExtensionConfiguration, location_name: 'CrlDistributionPointExtensionConfiguration', traits: {"smithy.api#documentation" => "<p>Configures the behavior of the CRL Distribution Point extension for certificates issued by your certificate authority. If this field is not provided, then the CRl Distribution Point Extension will be present and contain the default CRL URL.</p>"}))
    CrlConfiguration.add_member(:crl_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CrlType, location_name: 'CrlType', traits: {"smithy.api#documentation" => "<p>Specifies whether to create a complete or partitioned CRL. This setting determines the maximum number of certificates that the certificate authority can issue and revoke. For more information, see <a href=\"privateca/latest/userguide/pca.html#limits_pca\">Amazon Web Services Private CA quotas</a>.</p> <ul> <li> <p> <code>COMPLETE</code> - The default setting. Amazon Web Services Private CA maintains a single CRL ﬁle for all unexpired certiﬁcates issued by a CA that have been revoked for any reason. Each certiﬁcate that Amazon Web Services Private CA issues is bound to a speciﬁc CRL through its CRL distribution point (CDP) extension, deﬁned in <a href=\"https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.9\"> RFC 5280</a>.</p> </li> <li> <p> <code>PARTITIONED</code> - Compared to complete CRLs, partitioned CRLs dramatically increase the number of certiﬁcates your private CA can issue. </p> <important> <p> When using partitioned CRLs, you must validate that the CRL's associated issuing distribution point (IDP) URI matches the certiﬁcate's CDP URI to ensure the right CRL has been fetched. Amazon Web Services Private CA marks the IDP extension as critical, which your client must be able to process. </p> </important> </li> </ul>"}))
    CrlConfiguration.add_member(:custom_path, Smithy::Schema::Shapes::ShapeRef.new(shape: CrlPathString, location_name: 'CustomPath', traits: {"smithy.api#documentation" => "<p>Designates a custom ﬁle path in S3 for CRL(s). For example, <code>http://&lt;CustomName&gt;/ &lt;CustomPath&gt;/&lt;CrlPartition_GUID&gt;.crl</code>. </p>"}))
    CrlConfiguration.type = Types::CrlConfiguration
    CrlDistributionPointExtensionConfiguration.add_member(:omit_extension, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'OmitExtension', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Configures whether the CRL Distribution Point extension should be populated with the default URL to the CRL. If set to <code>true</code>, then the CDP extension will not be present in any certificates issued by that CA unless otherwise specified through CSR or API passthrough.</p> <note> <p>Only set this if you have another way to distribute the CRL Distribution Points ffor certificates issued by your CA, such as the Matter Distributed Compliance Ledger</p> <p>This configuration cannot be enabled with a custom CNAME set.</p> </note>", "smithy.api#required" => {}}))
    CrlDistributionPointExtensionConfiguration.type = Types::CrlDistributionPointExtensionConfiguration
    CrlType.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    CrlType.add_member(:partitioned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTITIONED', traits: {"smithy.api#enumValue" => "PARTITIONED"}))
    CsrExtensions.add_member(:key_usage, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsage, location_name: 'KeyUsage', traits: {"smithy.api#documentation" => "<p>Indicates the purpose of the certificate and of the key contained in the certificate.</p>"}))
    CsrExtensions.add_member(:subject_information_access, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDescriptionList, location_name: 'SubjectInformationAccess', traits: {"smithy.api#documentation" => "<p>For CA certificates, provides a path to additional information pertaining to the CA, such as revocation and policy. For more information, see <a href=\"https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.2.2\">Subject Information Access</a> in RFC 5280.</p>"}))
    CsrExtensions.type = Types::CsrExtensions
    CustomAttribute.add_member(:object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomObjectIdentifier, location_name: 'ObjectIdentifier', traits: {"smithy.api#documentation" => "<p>Specifies the object identifier (OID) of the attribute type of the relative distinguished name (RDN).</p>", "smithy.api#required" => {}}))
    CustomAttribute.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String1To256, location_name: 'Value', traits: {"smithy.api#documentation" => "<p/> <p>Specifies the attribute value of relative distinguished name (RDN).</p>", "smithy.api#required" => {}}))
    CustomAttribute.type = Types::CustomAttribute
    CustomAttributeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomAttribute)
    CustomExtension.add_member(:object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomObjectIdentifier, location_name: 'ObjectIdentifier', traits: {"smithy.api#documentation" => "<p/> <p>Specifies the object identifier (OID) of the X.509 extension. For more information, see the <a href=\"https://oidref.com/2.5.29\">Global OID reference database.</a> </p>", "smithy.api#required" => {}}))
    CustomExtension.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Base64String1To4096, location_name: 'Value', traits: {"smithy.api#documentation" => "<p/> <p>Specifies the base64-encoded value of the X.509 extension.</p>", "smithy.api#required" => {}}))
    CustomExtension.add_member(:critical, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Critical', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p/> <p>Specifies the critical flag of the X.509 extension.</p>"}))
    CustomExtension.type = Types::CustomExtension
    CustomExtensionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomExtension)
    DeleteCertificateAuthorityRequest.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a>. This must have the following form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>", "smithy.api#required" => {}}))
    DeleteCertificateAuthorityRequest.add_member(:permanent_deletion_time_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: PermanentDeletionTimeInDays, location_name: 'PermanentDeletionTimeInDays', traits: {"smithy.api#documentation" => "<p>The number of days to make a CA restorable after it has been deleted. This can be anywhere from 7 to 30 days, with 30 being the default.</p>"}))
    DeleteCertificateAuthorityRequest.type = Types::DeleteCertificateAuthorityRequest
    DeletePermissionRequest.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the private CA that issued the permissions. You can find the CA's ARN by calling the <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html\">ListCertificateAuthorities</a> action. This must have the following form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>", "smithy.api#required" => {}}))
    DeletePermissionRequest.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: Principal, location_name: 'Principal', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services service or identity that will have its CA permissions revoked. At this time, the only valid service principal is <code>acm.amazonaws.com</code> </p>", "smithy.api#required" => {}}))
    DeletePermissionRequest.add_member(:source_account, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'SourceAccount', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account that calls this action.</p>"}))
    DeletePermissionRequest.type = Types::DeletePermissionRequest
    DeletePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the private CA that will have its policy deleted. You can find the CA's ARN by calling the <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html\">ListCertificateAuthorities</a> action. The ARN value must have the form <code>arn:aws:acm-pca:region:account:certificate-authority/01234567-89ab-cdef-0123-0123456789ab</code>. </p>", "smithy.api#required" => {}}))
    DeletePolicyRequest.type = Types::DeletePolicyRequest
    DescribeCertificateAuthorityAuditReportRequest.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the private CA. This must be of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>", "smithy.api#required" => {}}))
    DescribeCertificateAuthorityAuditReportRequest.add_member(:audit_report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditReportId, location_name: 'AuditReportId', traits: {"smithy.api#documentation" => "<p>The report ID returned by calling the <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html\">CreateCertificateAuthorityAuditReport</a> action.</p>", "smithy.api#required" => {}}))
    DescribeCertificateAuthorityAuditReportRequest.type = Types::DescribeCertificateAuthorityAuditReportRequest
    DescribeCertificateAuthorityAuditReportResponse.add_member(:audit_report_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AuditReportStatus, location_name: 'AuditReportStatus', traits: {"smithy.api#documentation" => "<p>Specifies whether report creation is in progress, has succeeded, or has failed.</p>"}))
    DescribeCertificateAuthorityAuditReportResponse.add_member(:s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'S3BucketName', traits: {"smithy.api#documentation" => "<p>Name of the S3 bucket that contains the report.</p>"}))
    DescribeCertificateAuthorityAuditReportResponse.add_member(:s3_key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'S3Key', traits: {"smithy.api#documentation" => "<p>S3 <b>key</b> that uniquely identifies the report file in your S3 bucket.</p>"}))
    DescribeCertificateAuthorityAuditReportResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time at which the report was created.</p>"}))
    DescribeCertificateAuthorityAuditReportResponse.type = Types::DescribeCertificateAuthorityAuditReportResponse
    DescribeCertificateAuthorityRequest.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a>. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>", "smithy.api#required" => {}}))
    DescribeCertificateAuthorityRequest.type = Types::DescribeCertificateAuthorityRequest
    DescribeCertificateAuthorityResponse.add_member(:certificate_authority, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthority, location_name: 'CertificateAuthority', traits: {"smithy.api#documentation" => "<p>A <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_CertificateAuthority.html\">CertificateAuthority</a> structure that contains information about your private CA.</p>"}))
    DescribeCertificateAuthorityResponse.type = Types::DescribeCertificateAuthorityResponse
    EdiPartyName.add_member(:party_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'PartyName', traits: {"smithy.api#documentation" => "<p>Specifies the party name.</p>", "smithy.api#required" => {}}))
    EdiPartyName.add_member(:name_assigner, Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'NameAssigner', traits: {"smithy.api#documentation" => "<p>Specifies the name assigner.</p>"}))
    EdiPartyName.type = Types::EdiPartyName
    ExtendedKeyUsage.add_member(:extended_key_usage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedKeyUsageType, location_name: 'ExtendedKeyUsageType', traits: {"smithy.api#documentation" => "<p>Specifies a standard <code>ExtendedKeyUsage</code> as defined as in <a href=\"https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.12\">RFC 5280</a>.</p>"}))
    ExtendedKeyUsage.add_member(:extended_key_usage_object_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomObjectIdentifier, location_name: 'ExtendedKeyUsageObjectIdentifier', traits: {"smithy.api#documentation" => "<p>Specifies a custom <code>ExtendedKeyUsage</code> with an object identifier (OID).</p>"}))
    ExtendedKeyUsage.type = Types::ExtendedKeyUsage
    ExtendedKeyUsageList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedKeyUsage)
    ExtendedKeyUsageType.add_member(:server_auth, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVER_AUTH', traits: {"smithy.api#enumValue" => "SERVER_AUTH"}))
    ExtendedKeyUsageType.add_member(:client_auth, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLIENT_AUTH', traits: {"smithy.api#enumValue" => "CLIENT_AUTH"}))
    ExtendedKeyUsageType.add_member(:code_signing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CODE_SIGNING', traits: {"smithy.api#enumValue" => "CODE_SIGNING"}))
    ExtendedKeyUsageType.add_member(:email_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL_PROTECTION', traits: {"smithy.api#enumValue" => "EMAIL_PROTECTION"}))
    ExtendedKeyUsageType.add_member(:time_stamping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIME_STAMPING', traits: {"smithy.api#enumValue" => "TIME_STAMPING"}))
    ExtendedKeyUsageType.add_member(:ocsp_signing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OCSP_SIGNING', traits: {"smithy.api#enumValue" => "OCSP_SIGNING"}))
    ExtendedKeyUsageType.add_member(:smart_card_login, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMART_CARD_LOGIN', traits: {"smithy.api#enumValue" => "SMART_CARD_LOGIN"}))
    ExtendedKeyUsageType.add_member(:document_signing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_SIGNING', traits: {"smithy.api#enumValue" => "DOCUMENT_SIGNING"}))
    ExtendedKeyUsageType.add_member(:certificate_transparency, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CERTIFICATE_TRANSPARENCY', traits: {"smithy.api#enumValue" => "CERTIFICATE_TRANSPARENCY"}))
    Extensions.add_member(:certificate_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificatePolicyList, location_name: 'CertificatePolicies', traits: {"smithy.api#documentation" => "<p>Contains a sequence of one or more policy information terms, each of which consists of an object identifier (OID) and optional qualifiers. For more information, see NIST's definition of <a href=\"https://csrc.nist.gov/glossary/term/Object_Identifier\">Object Identifier (OID)</a>.</p> <p>In an end-entity certificate, these terms indicate the policy under which the certificate was issued and the purposes for which it may be used. In a CA certificate, these terms limit the set of policies for certification paths that include this certificate.</p>"}))
    Extensions.add_member(:extended_key_usage, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedKeyUsageList, location_name: 'ExtendedKeyUsage', traits: {"smithy.api#documentation" => "<p>Specifies additional purposes for which the certified public key may be used other than basic purposes indicated in the <code>KeyUsage</code> extension.</p>"}))
    Extensions.add_member(:key_usage, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsage, location_name: 'KeyUsage'))
    Extensions.add_member(:subject_alternative_names, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralNameList, location_name: 'SubjectAlternativeNames', traits: {"smithy.api#documentation" => "<p>The subject alternative name extension allows identities to be bound to the subject of the certificate. These identities may be included in addition to or in place of the identity in the subject field of the certificate.</p>"}))
    Extensions.add_member(:custom_extensions, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomExtensionList, location_name: 'CustomExtensions', traits: {"smithy.api#documentation" => "<p/> <p>Contains a sequence of one or more X.509 extensions, each of which consists of an object identifier (OID), a base64-encoded value, and the critical flag. For more information, see the <a href=\"https://oidref.com/2.5.29\">Global OID reference database.</a> </p>"}))
    Extensions.type = Types::Extensions
    FailureReason.add_member(:request_timed_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUEST_TIMED_OUT', traits: {"smithy.api#enumValue" => "REQUEST_TIMED_OUT"}))
    FailureReason.add_member(:unsupported_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_ALGORITHM', traits: {"smithy.api#enumValue" => "UNSUPPORTED_ALGORITHM"}))
    FailureReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    GeneralName.add_member(:other_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OtherName, location_name: 'OtherName', traits: {"smithy.api#documentation" => "<p>Represents <code>GeneralName</code> using an <code>OtherName</code> object.</p>"}))
    GeneralName.add_member(:rfc822_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'Rfc822Name', traits: {"smithy.api#documentation" => "<p>Represents <code>GeneralName</code> as an <a href=\"https://datatracker.ietf.org/doc/html/rfc822\">RFC 822</a> email address.</p>"}))
    GeneralName.add_member(:dns_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String253, location_name: 'DnsName', traits: {"smithy.api#documentation" => "<p>Represents <code>GeneralName</code> as a DNS name.</p>"}))
    GeneralName.add_member(:directory_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ASN1Subject, location_name: 'DirectoryName'))
    GeneralName.add_member(:edi_party_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EdiPartyName, location_name: 'EdiPartyName', traits: {"smithy.api#documentation" => "<p>Represents <code>GeneralName</code> as an <code>EdiPartyName</code> object.</p>"}))
    GeneralName.add_member(:uniform_resource_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String253, location_name: 'UniformResourceIdentifier', traits: {"smithy.api#documentation" => "<p>Represents <code>GeneralName</code> as a URI.</p>"}))
    GeneralName.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String39, location_name: 'IpAddress', traits: {"smithy.api#documentation" => "<p>Represents <code>GeneralName</code> as an IPv4 or IPv6 address.</p>"}))
    GeneralName.add_member(:registered_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomObjectIdentifier, location_name: 'RegisteredId', traits: {"smithy.api#documentation" => "<p> Represents <code>GeneralName</code> as an object identifier (OID).</p>"}))
    GeneralName.type = Types::GeneralName
    GeneralNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralName)
    GetCertificateAuthorityCertificateRequest.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of your private CA. This is of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>", "smithy.api#required" => {}}))
    GetCertificateAuthorityCertificateRequest.type = Types::GetCertificateAuthorityCertificateRequest
    GetCertificateAuthorityCertificateResponse.add_member(:certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateBody, location_name: 'Certificate', traits: {"smithy.api#documentation" => "<p>Base64-encoded certificate authority (CA) certificate.</p>"}))
    GetCertificateAuthorityCertificateResponse.add_member(:certificate_chain, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateChain, location_name: 'CertificateChain', traits: {"smithy.api#documentation" => "<p>Base64-encoded certificate chain that includes any intermediate certificates and chains up to root certificate that you used to sign your private CA certificate. The chain does not include your private CA certificate. If this is a root CA, the value will be null.</p>"}))
    GetCertificateAuthorityCertificateResponse.type = Types::GetCertificateAuthorityCertificateResponse
    GetCertificateAuthorityCsrRequest.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called the <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a> action. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>", "smithy.api#required" => {}}))
    GetCertificateAuthorityCsrRequest.type = Types::GetCertificateAuthorityCsrRequest
    GetCertificateAuthorityCsrResponse.add_member(:csr, Smithy::Schema::Shapes::ShapeRef.new(shape: CsrBody, location_name: 'Csr', traits: {"smithy.api#documentation" => "<p>The base64 PEM-encoded certificate signing request (CSR) for your private CA certificate.</p>"}))
    GetCertificateAuthorityCsrResponse.type = Types::GetCertificateAuthorityCsrResponse
    GetCertificateRequest.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a>. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code>. </p>", "smithy.api#required" => {}}))
    GetCertificateRequest.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateArn', traits: {"smithy.api#documentation" => "<p>The ARN of the issued certificate. The ARN contains the certificate serial number and must be in the following form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>/certificate/<i>286535153982981100925020015808220737245</i> </code> </p>", "smithy.api#required" => {}}))
    GetCertificateRequest.type = Types::GetCertificateRequest
    GetCertificateResponse.add_member(:certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateBody, location_name: 'Certificate', traits: {"smithy.api#documentation" => "<p>The base64 PEM-encoded certificate specified by the <code>CertificateArn</code> parameter.</p>"}))
    GetCertificateResponse.add_member(:certificate_chain, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateChain, location_name: 'CertificateChain', traits: {"smithy.api#documentation" => "<p>The base64 PEM-encoded certificate chain that chains up to the root CA certificate that you used to sign your private CA certificate. </p>"}))
    GetCertificateResponse.type = Types::GetCertificateResponse
    GetPolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the private CA that will have its policy retrieved. You can find the CA's ARN by calling the ListCertificateAuthorities action. </p>", "smithy.api#required" => {}}))
    GetPolicyRequest.type = Types::GetPolicyRequest
    GetPolicyResponse.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSPolicy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The policy attached to the private CA as a JSON document.</p>"}))
    GetPolicyResponse.type = Types::GetPolicyResponse
    ImportCertificateAuthorityCertificateRequest.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a>. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>", "smithy.api#required" => {}}))
    ImportCertificateAuthorityCertificateRequest.add_member(:certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateBodyBlob, location_name: 'Certificate', traits: {"smithy.api#documentation" => "<p>The PEM-encoded certificate for a private CA. This may be a self-signed certificate in the case of a root CA, or it may be signed by another CA that you control.</p>", "smithy.api#required" => {}}))
    ImportCertificateAuthorityCertificateRequest.add_member(:certificate_chain, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateChainBlob, location_name: 'CertificateChain', traits: {"smithy.api#documentation" => "<p>A PEM-encoded file that contains all of your certificates, other than the certificate you're importing, chaining up to your root CA. Your Amazon Web Services Private CA-hosted or on-premises root certificate is the last in the chain, and each certificate in the chain signs the one preceding. </p> <p>This parameter must be supplied when you import a subordinate CA. When you import a root CA, there is no chain.</p>"}))
    ImportCertificateAuthorityCertificateRequest.type = Types::ImportCertificateAuthorityCertificateRequest
    InvalidArgsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidArgsException.type = Types::InvalidArgsException
    InvalidArnException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidArnException.type = Types::InvalidArnException
    InvalidNextTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidPolicyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidPolicyException.type = Types::InvalidPolicyException
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidStateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidStateException.type = Types::InvalidStateException
    InvalidTagException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidTagException.type = Types::InvalidTagException
    IssueCertificateRequest.add_member(:api_passthrough, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiPassthrough, location_name: 'ApiPassthrough', traits: {"smithy.api#documentation" => "<p>Specifies X.509 certificate information to be included in the issued certificate. An <code>APIPassthrough</code> or <code>APICSRPassthrough</code> template variant must be selected, or else this parameter is ignored. For more information about using these templates, see <a href=\"https://docs.aws.amazon.com/privateca/latest/userguide/UsingTemplates.html\">Understanding Certificate Templates</a>.</p> <p>If conflicting or duplicate certificate information is supplied during certificate issuance, Amazon Web Services Private CA applies <a href=\"https://docs.aws.amazon.com/privateca/latest/userguide/UsingTemplates.html#template-order-of-operations\">order of operation rules</a> to determine what information is used.</p>"}))
    IssueCertificateRequest.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a>. This must be of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>", "smithy.api#required" => {}}))
    IssueCertificateRequest.add_member(:csr, Smithy::Schema::Shapes::ShapeRef.new(shape: CsrBlob, location_name: 'Csr', traits: {"smithy.api#documentation" => "<p>The certificate signing request (CSR) for the certificate you want to issue. As an example, you can use the following OpenSSL command to create the CSR and a 2048 bit RSA private key. </p> <p> <code>openssl req -new -newkey rsa:2048 -days 365 -keyout private/test_cert_priv_key.pem -out csr/test_cert_.csr</code> </p> <p>If you have a configuration file, you can then use the following OpenSSL command. The <code>usr_cert</code> block in the configuration file contains your X509 version 3 extensions. </p> <p> <code>openssl req -new -config openssl_rsa.cnf -extensions usr_cert -newkey rsa:2048 -days 365 -keyout private/test_cert_priv_key.pem -out csr/test_cert_.csr</code> </p> <p>Note: A CSR must provide either a <i>subject name</i> or a <i>subject alternative name</i> or the request will be rejected. </p>", "smithy.api#required" => {}}))
    IssueCertificateRequest.add_member(:signing_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: SigningAlgorithm, location_name: 'SigningAlgorithm', traits: {"smithy.api#documentation" => "<p>The name of the algorithm that will be used to sign the certificate to be issued. </p> <p>This parameter should not be confused with the <code>SigningAlgorithm</code> parameter used to sign a CSR in the <code>CreateCertificateAuthority</code> action.</p> <note> <p>The specified signing algorithm family (RSA or ECDSA) must match the algorithm family of the CA's secret key.</p> </note>", "smithy.api#required" => {}}))
    IssueCertificateRequest.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>Specifies a custom configuration template to use when issuing a certificate. If this parameter is not provided, Amazon Web Services Private CA defaults to the <code>EndEntityCertificate/V1</code> template. For CA certificates, you should choose the shortest path length that meets your needs. The path length is indicated by the PathLen<i>N</i> portion of the ARN, where <i>N</i> is the <a href=\"https://docs.aws.amazon.com/privateca/latest/userguide/PcaTerms.html#terms-cadepth\">CA depth</a>.</p> <p>Note: The CA depth configured on a subordinate CA certificate must not exceed the limit set by its parents in the CA hierarchy.</p> <p>For a list of <code>TemplateArn</code> values supported by Amazon Web Services Private CA, see <a href=\"https://docs.aws.amazon.com/privateca/latest/userguide/UsingTemplates.html\">Understanding Certificate Templates</a>.</p>"}))
    IssueCertificateRequest.add_member(:validity, Smithy::Schema::Shapes::ShapeRef.new(shape: Validity, location_name: 'Validity', traits: {"smithy.api#documentation" => "<p>Information describing the end of the validity period of the certificate. This parameter sets the “Not After” date for the certificate.</p> <p>Certificate validity is the period of time during which a certificate is valid. Validity can be expressed as an explicit date and time when the certificate expires, or as a span of time after issuance, stated in days, months, or years. For more information, see <a href=\"https://datatracker.ietf.org/doc/html/rfc5280#section-4.1.2.5\">Validity</a> in RFC 5280. </p> <p>This value is unaffected when <code>ValidityNotBefore</code> is also specified. For example, if <code>Validity</code> is set to 20 days in the future, the certificate will expire 20 days from issuance time regardless of the <code>ValidityNotBefore</code> value.</p> <p>The end of the validity period configured on a certificate must not exceed the limit set on its parents in the CA hierarchy.</p>", "smithy.api#required" => {}}))
    IssueCertificateRequest.add_member(:validity_not_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Validity, location_name: 'ValidityNotBefore', traits: {"smithy.api#documentation" => "<p>Information describing the start of the validity period of the certificate. This parameter sets the “Not Before\" date for the certificate.</p> <p>By default, when issuing a certificate, Amazon Web Services Private CA sets the \"Not Before\" date to the issuance time minus 60 minutes. This compensates for clock inconsistencies across computer systems. The <code>ValidityNotBefore</code> parameter can be used to customize the “Not Before” value. </p> <p>Unlike the <code>Validity</code> parameter, the <code>ValidityNotBefore</code> parameter is optional.</p> <p>The <code>ValidityNotBefore</code> value is expressed as an explicit date and time, using the <code>Validity</code> type value <code>ABSOLUTE</code>. For more information, see <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_Validity.html\">Validity</a> in this API reference and <a href=\"https://datatracker.ietf.org/doc/html/rfc5280#section-4.1.2.5\">Validity</a> in RFC 5280.</p>"}))
    IssueCertificateRequest.add_member(:idempotency_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#documentation" => "<p>Alphanumeric string that can be used to distinguish between calls to the <b>IssueCertificate</b> action. Idempotency tokens for <b>IssueCertificate</b> time out after five minutes. Therefore, if you call <b>IssueCertificate</b> multiple times with the same idempotency token within five minutes, Amazon Web Services Private CA recognizes that you are requesting only one certificate and will issue only one. If you change the idempotency token for each call, Amazon Web Services Private CA recognizes that you are requesting multiple certificates.</p>"}))
    IssueCertificateRequest.type = Types::IssueCertificateRequest
    IssueCertificateResponse.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the issued certificate and the certificate serial number. This is of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>/certificate/<i>286535153982981100925020015808220737245</i> </code> </p>"}))
    IssueCertificateResponse.type = Types::IssueCertificateResponse
    KeyAlgorithm.add_member(:rsa_2048, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_2048', traits: {"smithy.api#enumValue" => "RSA_2048"}))
    KeyAlgorithm.add_member(:rsa_3072, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_3072', traits: {"smithy.api#enumValue" => "RSA_3072"}))
    KeyAlgorithm.add_member(:rsa_4096, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_4096', traits: {"smithy.api#enumValue" => "RSA_4096"}))
    KeyAlgorithm.add_member(:ec_prime256v1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC_prime256v1', traits: {"smithy.api#enumValue" => "EC_prime256v1"}))
    KeyAlgorithm.add_member(:ec_secp384r1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC_secp384r1', traits: {"smithy.api#enumValue" => "EC_secp384r1"}))
    KeyAlgorithm.add_member(:ec_secp521r1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC_secp521r1', traits: {"smithy.api#enumValue" => "EC_secp521r1"}))
    KeyAlgorithm.add_member(:sm2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SM2', traits: {"smithy.api#enumValue" => "SM2"}))
    KeyStorageSecurityStandard.add_member(:fips_140_2_level_2_or_higher, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIPS_140_2_LEVEL_2_OR_HIGHER', traits: {"smithy.api#enumValue" => "FIPS_140_2_LEVEL_2_OR_HIGHER"}))
    KeyStorageSecurityStandard.add_member(:fips_140_2_level_3_or_higher, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIPS_140_2_LEVEL_3_OR_HIGHER', traits: {"smithy.api#enumValue" => "FIPS_140_2_LEVEL_3_OR_HIGHER"}))
    KeyStorageSecurityStandard.add_member(:ccpc_level_1_or_higher, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CCPC_LEVEL_1_OR_HIGHER', traits: {"smithy.api#enumValue" => "CCPC_LEVEL_1_OR_HIGHER"}))
    KeyUsage.add_member(:digital_signature, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DigitalSignature', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p> Key can be used for digital signing.</p>"}))
    KeyUsage.add_member(:non_repudiation, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'NonRepudiation', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Key can be used for non-repudiation.</p>"}))
    KeyUsage.add_member(:key_encipherment, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'KeyEncipherment', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Key can be used to encipher data.</p>"}))
    KeyUsage.add_member(:data_encipherment, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DataEncipherment', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Key can be used to decipher data.</p>"}))
    KeyUsage.add_member(:key_agreement, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'KeyAgreement', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Key can be used in a key-agreement protocol.</p>"}))
    KeyUsage.add_member(:key_cert_sign, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'KeyCertSign', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Key can be used to sign certificates.</p>"}))
    KeyUsage.add_member(:crl_sign, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CRLSign', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Key can be used to sign CRLs.</p>"}))
    KeyUsage.add_member(:encipher_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EncipherOnly', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Key can be used only to encipher data.</p>"}))
    KeyUsage.add_member(:decipher_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DecipherOnly', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Key can be used only to decipher data.</p>"}))
    KeyUsage.type = Types::KeyUsage
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListCertificateAuthoritiesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Use this parameter when paginating results to specify the maximum number of items to return in the response on each page. If additional items exist beyond the number you specify, the <code>NextToken</code> element is sent in the response. Use this <code>NextToken</code> value in a subsequent request to retrieve additional items.</p> <p>Although the maximum value is 1000, the action only returns a maximum of 100 items.</p>"}))
    ListCertificateAuthoritiesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Use this parameter when paginating results in a subsequent request after you receive a response with truncated results. Set it to the value of the <code>NextToken</code> parameter from the response you just received.</p>"}))
    ListCertificateAuthoritiesRequest.add_member(:resource_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceOwner, location_name: 'ResourceOwner', traits: {"smithy.api#documentation" => "<p>Use this parameter to filter the returned set of certificate authorities based on their owner. The default is SELF.</p>"}))
    ListCertificateAuthoritiesRequest.type = Types::ListCertificateAuthoritiesRequest
    ListCertificateAuthoritiesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When the list is truncated, this value is present and should be used for the <code>NextToken</code> parameter in a subsequent pagination request.</p>"}))
    ListCertificateAuthoritiesResponse.add_member(:certificate_authorities, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorities, location_name: 'CertificateAuthorities', traits: {"smithy.api#documentation" => "<p>Summary information about each certificate authority you have created.</p>"}))
    ListCertificateAuthoritiesResponse.type = Types::ListCertificateAuthoritiesResponse
    ListPermissionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>When paginating results, use this parameter to specify the maximum number of items to return in the response. If additional items exist beyond the number you specify, the <b>NextToken</b> element is sent in the response. Use this <b>NextToken</b> value in a subsequent request to retrieve additional items.</p>"}))
    ListPermissionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When paginating results, use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <b>NextToken</b> from the response you just received.</p>"}))
    ListPermissionsRequest.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the private CA to inspect. You can find the ARN by calling the <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html\">ListCertificateAuthorities</a> action. This must be of the form: <code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012</code> You can get a private CA's ARN by running the <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html\">ListCertificateAuthorities</a> action.</p>", "smithy.api#required" => {}}))
    ListPermissionsRequest.type = Types::ListPermissionsRequest
    ListPermissionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When the list is truncated, this value is present and should be used for the <b>NextToken</b> parameter in a subsequent pagination request. </p>"}))
    ListPermissionsResponse.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionList, location_name: 'Permissions', traits: {"smithy.api#documentation" => "<p>Summary information about each permission assigned by the specified private CA, including the action enabled, the policy provided, and the time of creation.</p>"}))
    ListPermissionsResponse.type = Types::ListPermissionsResponse
    ListTagsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Use this parameter when paginating results to specify the maximum number of items to return in the response. If additional items exist beyond the number you specify, the <b>NextToken</b> element is sent in the response. Use this <b>NextToken</b> value in a subsequent request to retrieve additional items.</p>"}))
    ListTagsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Use this parameter when paginating results in a subsequent request after you receive a response with truncated results. Set it to the value of <b>NextToken</b> from the response you just received.</p>"}))
    ListTagsRequest.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called the <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a> action. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>", "smithy.api#required" => {}}))
    ListTagsRequest.type = Types::ListTagsRequest
    ListTagsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When the list is truncated, this value is present and should be used for the <b>NextToken</b> parameter in a subsequent pagination request. </p>"}))
    ListTagsResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with your private CA.</p>"}))
    ListTagsResponse.type = Types::ListTagsResponse
    LockoutPreventedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    LockoutPreventedException.type = Types::LockoutPreventedException
    MalformedCSRException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    MalformedCSRException.type = Types::MalformedCSRException
    MalformedCertificateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    MalformedCertificateException.type = Types::MalformedCertificateException
    OcspConfiguration.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Flag enabling use of the Online Certificate Status Protocol (OCSP) for validating certificate revocation status.</p>", "smithy.api#required" => {}}))
    OcspConfiguration.add_member(:ocsp_custom_cname, Smithy::Schema::Shapes::ShapeRef.new(shape: CnameString, location_name: 'OcspCustomCname', traits: {"smithy.api#documentation" => "<p>By default, Amazon Web Services Private CA injects an Amazon Web Services domain into certificates being validated by the Online Certificate Status Protocol (OCSP). A customer can alternatively use this object to define a CNAME specifying a customized OCSP domain.</p> <note> <p>The content of a Canonical Name (CNAME) record must conform to <a href=\"https://www.ietf.org/rfc/rfc2396.txt\">RFC2396</a> restrictions on the use of special characters in URIs. Additionally, the value of the CNAME must not include a protocol prefix such as \"http://\" or \"https://\".</p> </note> <p>For more information, see <a href=\"https://docs.aws.amazon.com/privateca/latest/userguide/ocsp-customize.html\">Customizing Online Certificate Status Protocol (OCSP) </a> in the <i>Amazon Web Services Private Certificate Authority User Guide</i>.</p>"}))
    OcspConfiguration.type = Types::OcspConfiguration
    OtherName.add_member(:type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomObjectIdentifier, location_name: 'TypeId', traits: {"smithy.api#documentation" => "<p>Specifies an OID. </p>", "smithy.api#required" => {}}))
    OtherName.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>Specifies an OID value.</p>", "smithy.api#required" => {}}))
    OtherName.type = Types::OtherName
    Permission.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the private CA from which the permission was issued.</p>"}))
    Permission.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the permission was created.</p>"}))
    Permission.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: Principal, location_name: 'Principal', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services service or entity that holds the permission. At this time, the only valid principal is <code>acm.amazonaws.com</code>.</p>"}))
    Permission.add_member(:source_account, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'SourceAccount', traits: {"smithy.api#documentation" => "<p>The ID of the account that assigned the permission.</p>"}))
    Permission.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionList, location_name: 'Actions', traits: {"smithy.api#documentation" => "<p>The private CA actions that can be performed by the designated Amazon Web Services service.</p>"}))
    Permission.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSPolicy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The name of the policy that is associated with the permission.</p>"}))
    Permission.type = Types::Permission
    PermissionAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    PermissionAlreadyExistsException.type = Types::PermissionAlreadyExistsException
    PermissionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Permission)
    PolicyInformation.add_member(:cert_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomObjectIdentifier, location_name: 'CertPolicyId', traits: {"smithy.api#documentation" => "<p>Specifies the object identifier (OID) of the certificate policy under which the certificate was issued. For more information, see NIST's definition of <a href=\"https://csrc.nist.gov/glossary/term/Object_Identifier\">Object Identifier (OID)</a>.</p>", "smithy.api#required" => {}}))
    PolicyInformation.add_member(:policy_qualifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyQualifierInfoList, location_name: 'PolicyQualifiers', traits: {"smithy.api#documentation" => "<p>Modifies the given <code>CertPolicyId</code> with a qualifier. Amazon Web Services Private CA supports the certification practice statement (CPS) qualifier.</p>"}))
    PolicyInformation.type = Types::PolicyInformation
    PolicyQualifierId.add_member(:cps, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CPS', traits: {"smithy.api#enumValue" => "CPS"}))
    PolicyQualifierInfo.add_member(:policy_qualifier_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyQualifierId, location_name: 'PolicyQualifierId', traits: {"smithy.api#documentation" => "<p>Identifies the qualifier modifying a <code>CertPolicyId</code>.</p>", "smithy.api#required" => {}}))
    PolicyQualifierInfo.add_member(:qualifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Qualifier, location_name: 'Qualifier', traits: {"smithy.api#documentation" => "<p>Defines the qualifier type. Amazon Web Services Private CA supports the use of a URI for a CPS qualifier in this field.</p>", "smithy.api#required" => {}}))
    PolicyQualifierInfo.type = Types::PolicyQualifierInfo
    PolicyQualifierInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyQualifierInfo)
    PutPolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the private CA to associate with the policy. The ARN of the CA can be found by calling the <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html\">ListCertificateAuthorities</a> action.</p> <p/>", "smithy.api#required" => {}}))
    PutPolicyRequest.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSPolicy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The path and file name of a JSON-formatted IAM policy to attach to the specified private CA resource. If this policy does not contain all required statements or if it includes any statement that is not allowed, the <code>PutPolicy</code> action returns an <code>InvalidPolicyException</code>. For information about IAM policy and statement structure, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policies-json\">Overview of JSON Policies</a>.</p>", "smithy.api#required" => {}}))
    PutPolicyRequest.type = Types::PutPolicyRequest
    Qualifier.add_member(:cps_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String256, location_name: 'CpsUri', traits: {"smithy.api#documentation" => "<p>Contains a pointer to a certification practice statement (CPS) published by the CA.</p>", "smithy.api#required" => {}}))
    Qualifier.type = Types::Qualifier
    RequestAlreadyProcessedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    RequestAlreadyProcessedException.type = Types::RequestAlreadyProcessedException
    RequestFailedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    RequestFailedException.type = Types::RequestFailedException
    RequestInProgressException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    RequestInProgressException.type = Types::RequestInProgressException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceOwner.add_member(:self, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SELF', traits: {"smithy.api#enumValue" => "SELF"}))
    ResourceOwner.add_member(:other_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER_ACCOUNTS', traits: {"smithy.api#enumValue" => "OTHER_ACCOUNTS"}))
    RestoreCertificateAuthorityRequest.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called the <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a> action. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>", "smithy.api#required" => {}}))
    RestoreCertificateAuthorityRequest.type = Types::RestoreCertificateAuthorityRequest
    RevocationConfiguration.add_member(:crl_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CrlConfiguration, location_name: 'CrlConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration of the certificate revocation list (CRL), if any, maintained by your private CA. A CRL is typically updated approximately 30 minutes after a certificate is revoked. If for any reason a CRL update fails, Amazon Web Services Private CA makes further attempts every 15 minutes.</p>"}))
    RevocationConfiguration.add_member(:ocsp_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: OcspConfiguration, location_name: 'OcspConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration of Online Certificate Status Protocol (OCSP) support, if any, maintained by your private CA. When you revoke a certificate, OCSP responses may take up to 60 minutes to reflect the new status.</p>"}))
    RevocationConfiguration.type = Types::RevocationConfiguration
    RevocationReason.add_member(:unspecified, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSPECIFIED', traits: {"smithy.api#enumValue" => "UNSPECIFIED"}))
    RevocationReason.add_member(:key_compromise, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEY_COMPROMISE', traits: {"smithy.api#enumValue" => "KEY_COMPROMISE"}))
    RevocationReason.add_member(:certificate_authority_compromise, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CERTIFICATE_AUTHORITY_COMPROMISE', traits: {"smithy.api#enumValue" => "CERTIFICATE_AUTHORITY_COMPROMISE"}))
    RevocationReason.add_member(:affiliation_changed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFFILIATION_CHANGED', traits: {"smithy.api#enumValue" => "AFFILIATION_CHANGED"}))
    RevocationReason.add_member(:superseded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUPERSEDED', traits: {"smithy.api#enumValue" => "SUPERSEDED"}))
    RevocationReason.add_member(:cessation_of_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CESSATION_OF_OPERATION', traits: {"smithy.api#enumValue" => "CESSATION_OF_OPERATION"}))
    RevocationReason.add_member(:privilege_withdrawn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVILEGE_WITHDRAWN', traits: {"smithy.api#enumValue" => "PRIVILEGE_WITHDRAWN"}))
    RevocationReason.add_member(:a_a_compromise, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'A_A_COMPROMISE', traits: {"smithy.api#enumValue" => "A_A_COMPROMISE"}))
    RevokeCertificateRequest.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the private CA that issued the certificate to be revoked. This must be of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>", "smithy.api#required" => {}}))
    RevokeCertificateRequest.add_member(:certificate_serial, Smithy::Schema::Shapes::ShapeRef.new(shape: String128, location_name: 'CertificateSerial', traits: {"smithy.api#documentation" => "<p>Serial number of the certificate to be revoked. This must be in hexadecimal format. You can retrieve the serial number by calling <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_GetCertificate.html\">GetCertificate</a> with the Amazon Resource Name (ARN) of the certificate you want and the ARN of your private CA. The <b>GetCertificate</b> action retrieves the certificate in the PEM format. You can use the following OpenSSL command to list the certificate in text format and copy the hexadecimal serial number. </p> <p> <code>openssl x509 -in <i>file_path</i> -text -noout</code> </p> <p>You can also copy the serial number from the console or use the <a href=\"https://docs.aws.amazon.com/acm/latest/APIReference/API_DescribeCertificate.html\">DescribeCertificate</a> action in the <i>Certificate Manager API Reference</i>. </p>", "smithy.api#required" => {}}))
    RevokeCertificateRequest.add_member(:revocation_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationReason, location_name: 'RevocationReason', traits: {"smithy.api#documentation" => "<p>Specifies why you revoked the certificate.</p>", "smithy.api#required" => {}}))
    RevokeCertificateRequest.type = Types::RevokeCertificateRequest
    S3ObjectAcl.add_member(:public_read, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLIC_READ', traits: {"smithy.api#enumValue" => "PUBLIC_READ"}))
    S3ObjectAcl.add_member(:bucket_owner_full_control, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUCKET_OWNER_FULL_CONTROL', traits: {"smithy.api#enumValue" => "BUCKET_OWNER_FULL_CONTROL"}))
    SigningAlgorithm.add_member(:sha256_withecdsa, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA256WITHECDSA', traits: {"smithy.api#enumValue" => "SHA256WITHECDSA"}))
    SigningAlgorithm.add_member(:sha384_withecdsa, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA384WITHECDSA', traits: {"smithy.api#enumValue" => "SHA384WITHECDSA"}))
    SigningAlgorithm.add_member(:sha512_withecdsa, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA512WITHECDSA', traits: {"smithy.api#enumValue" => "SHA512WITHECDSA"}))
    SigningAlgorithm.add_member(:sha256_withrsa, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA256WITHRSA', traits: {"smithy.api#enumValue" => "SHA256WITHRSA"}))
    SigningAlgorithm.add_member(:sha384_withrsa, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA384WITHRSA', traits: {"smithy.api#enumValue" => "SHA384WITHRSA"}))
    SigningAlgorithm.add_member(:sha512_withrsa, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA512WITHRSA', traits: {"smithy.api#enumValue" => "SHA512WITHRSA"}))
    SigningAlgorithm.add_member(:sm3_withsm2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SM3WITHSM2', traits: {"smithy.api#enumValue" => "SM3WITHSM2"}))
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>Key (name) of the tag.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>Value of the tag.</p>"}))
    Tag.type = Types::Tag
    TagCertificateAuthorityRequest.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a>. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>", "smithy.api#required" => {}}))
    TagCertificateAuthorityRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>List of tags to be associated with the CA.</p>", "smithy.api#required" => {}}))
    TagCertificateAuthorityRequest.type = Types::TagCertificateAuthorityRequest
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagCertificateAuthorityRequest.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that was returned when you called <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html\">CreateCertificateAuthority</a>. This must be of the form: </p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>", "smithy.api#required" => {}}))
    UntagCertificateAuthorityRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>List of tags to be removed from the CA.</p>", "smithy.api#required" => {}}))
    UntagCertificateAuthorityRequest.type = Types::UntagCertificateAuthorityRequest
    UpdateCertificateAuthorityRequest.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the private CA that issued the certificate to be revoked. This must be of the form:</p> <p> <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i> </code> </p>", "smithy.api#required" => {}}))
    UpdateCertificateAuthorityRequest.add_member(:revocation_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationConfiguration, location_name: 'RevocationConfiguration', traits: {"smithy.api#documentation" => "<p>Contains information to enable support for Online Certificate Status Protocol (OCSP), certificate revocation list (CRL), both protocols, or neither. If you don't supply this parameter, existing capibilites remain unchanged. For more information, see the <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_OcspConfiguration.html\">OcspConfiguration</a> and <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_CrlConfiguration.html\">CrlConfiguration</a> types.</p> <p>The following requirements apply to revocation configurations.</p> <ul> <li> <p>A configuration disabling CRLs or OCSP must contain only the <code>Enabled=False</code> parameter, and will fail if other parameters such as <code>CustomCname</code> or <code>ExpirationInDays</code> are included.</p> </li> <li> <p>In a CRL configuration, the <code>S3BucketName</code> parameter must conform to <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html\">Amazon S3 bucket naming rules</a>.</p> </li> <li> <p>A configuration containing a custom Canonical Name (CNAME) parameter for CRLs or OCSP must conform to <a href=\"https://www.ietf.org/rfc/rfc2396.txt\">RFC2396</a> restrictions on the use of special characters in a CNAME. </p> </li> <li> <p>In a CRL or OCSP configuration, the value of a CNAME parameter must not include a protocol prefix such as \"http://\" or \"https://\".</p> </li> </ul> <important> <p> If you update the <code>S3BucketName</code> of <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_CrlConfiguration.html\">CrlConfiguration</a>, you can break revocation for existing certificates. In other words, if you call <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_UpdateCertificateAuthority.html\">UpdateCertificateAuthority</a> to update the CRL configuration's S3 bucket name, Amazon Web Services Private CA only writes CRLs to the new S3 bucket. Certificates issued prior to this point will have the old S3 bucket name in your CRL Distribution Point (CDP) extension, essentially breaking revocation. If you must update the S3 bucket, you'll need to reissue old certificates to keep the revocation working. Alternatively, you can use a <a href=\"https://docs.aws.amazon.com/privateca/latest/APIReference/API_CrlConfiguration.html#privateca-Type-CrlConfiguration-CustomCname\">CustomCname</a> in your CRL configuration if you might need to change the S3 bucket name in the future.</p> </important>"}))
    UpdateCertificateAuthorityRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status of your private CA.</p>"}))
    UpdateCertificateAuthorityRequest.type = Types::UpdateCertificateAuthorityRequest
    Validity.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLong, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>A long integer interpreted according to the value of <code>Type</code>, below.</p>", "smithy.api#required" => {}}))
    Validity.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidityPeriodType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Determines how <i>Amazon Web Services Private CA</i> interprets the <code>Value</code> parameter, an integer. Supported validity types include those listed below. Type definitions with values include a sample input value and the resulting output. </p> <p> <code>END_DATE</code>: The specific date and time when the certificate will expire, expressed using UTCTime (YYMMDDHHMMSS) or GeneralizedTime (YYYYMMDDHHMMSS) format. When UTCTime is used, if the year field (YY) is greater than or equal to 50, the year is interpreted as 19YY. If the year field is less than 50, the year is interpreted as 20YY.</p> <ul> <li> <p>Sample input value: 491231235959 (UTCTime format)</p> </li> <li> <p>Output expiration date/time: 12/31/2049 23:59:59</p> </li> </ul> <p> <code>ABSOLUTE</code>: The specific date and time when the validity of a certificate will start or expire, expressed in seconds since the Unix Epoch. </p> <ul> <li> <p>Sample input value: 2524608000</p> </li> <li> <p>Output expiration date/time: 01/01/2050 00:00:00</p> </li> </ul> <p> <code>DAYS</code>, <code>MONTHS</code>, <code>YEARS</code>: The relative time from the moment of issuance until the certificate will expire, expressed in days, months, or years. </p> <p>Example if <code>DAYS</code>, issued on 10/12/2020 at 12:34:54 UTC:</p> <ul> <li> <p>Sample input value: 90</p> </li> <li> <p>Output expiration date: 01/10/2020 12:34:54 UTC</p> </li> </ul> <p>The minimum validity duration for a certificate using relative time (<code>DAYS</code>) is one day. The minimum validity for a certificate using absolute time (<code>ABSOLUTE</code> or <code>END_DATE</code>) is one second.</p>", "smithy.api#required" => {}}))
    Validity.type = Types::Validity
    ValidityPeriodType.add_member(:end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'END_DATE', traits: {"smithy.api#enumValue" => "END_DATE"}))
    ValidityPeriodType.add_member(:absolute, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ABSOLUTE', traits: {"smithy.api#enumValue" => "ABSOLUTE"}))
    ValidityPeriodType.add_member(:days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAYS', traits: {"smithy.api#enumValue" => "DAYS"}))
    ValidityPeriodType.add_member(:months, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTHS', traits: {"smithy.api#enumValue" => "MONTHS"}))
    ValidityPeriodType.add_member(:years, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'YEARS', traits: {"smithy.api#enumValue" => "YEARS"}))

    ACMPrivateCA = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.acmpca#ACMPrivateCA"
      service.name = "ACMPrivateCA"
      service.traits = {"aws.api#service" => {"sdkId" => "ACM PCA", "arnNamespace" => "acm-pca", "cloudFormationName" => "ACMPCA", "cloudTrailEventSource" => "acm-pca.amazonaws.com", "docId" => "acm-pca-2017-08-22", "endpointPrefix" => "acm-pca"}, "aws.auth#sigv4" => {"name" => "acm-pca"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Certificate Manager Private Certificate Authority"}
      service.add_operation(:create_certificate_authority, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#CreateCertificateAuthority"
        operation.name = "CreateCertificateAuthority"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCertificateAuthorityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCertificateAuthorityResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_certificate_authority_audit_report, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#CreateCertificateAuthorityAuditReport"
        operation.name = "CreateCertificateAuthorityAuditReport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCertificateAuthorityAuditReportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCertificateAuthorityAuditReportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_permission, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#CreatePermission"
        operation.name = "CreatePermission"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePermissionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_certificate_authority, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#DeleteCertificateAuthority"
        operation.name = "DeleteCertificateAuthority"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCertificateAuthorityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_permission, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#DeletePermission"
        operation.name = "DeletePermission"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePermissionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#DeletePolicy"
        operation.name = "DeletePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LockoutPreventedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_certificate_authority, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#DescribeCertificateAuthority"
        operation.name = "DescribeCertificateAuthority"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCertificateAuthorityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCertificateAuthorityResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_certificate_authority_audit_report, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#DescribeCertificateAuthorityAuditReport"
        operation.name = "DescribeCertificateAuthorityAuditReport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCertificateAuthorityAuditReportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCertificateAuthorityAuditReportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
      end)
      service.add_operation(:get_certificate, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#GetCertificate"
        operation.name = "GetCertificate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCertificateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCertificateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
      end)
      service.add_operation(:get_certificate_authority_certificate, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#GetCertificateAuthorityCertificate"
        operation.name = "GetCertificateAuthorityCertificate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCertificateAuthorityCertificateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCertificateAuthorityCertificateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_certificate_authority_csr, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#GetCertificateAuthorityCsr"
        operation.name = "GetCertificateAuthorityCsr"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCertificateAuthorityCsrRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCertificateAuthorityCsrResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
      end)
      service.add_operation(:get_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#GetPolicy"
        operation.name = "GetPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:import_certificate_authority_certificate, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#ImportCertificateAuthorityCertificate"
        operation.name = "ImportCertificateAuthorityCertificate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportCertificateAuthorityCertificateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedCertificateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:issue_certificate, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#IssueCertificate"
        operation.name = "IssueCertificate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: IssueCertificateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: IssueCertificateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedCSRException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_certificate_authorities, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#ListCertificateAuthorities"
        operation.name = "ListCertificateAuthorities"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCertificateAuthoritiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCertificateAuthoritiesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCertificateAuthorities.new
      end)
      service.add_operation(:list_permissions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#ListPermissions"
        operation.name = "ListPermissions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPermissions.new
      end)
      service.add_operation(:list_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#ListTags"
        operation.name = "ListTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTags.new
      end)
      service.add_operation(:put_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#PutPolicy"
        operation.name = "PutPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LockoutPreventedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:restore_certificate_authority, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#RestoreCertificateAuthority"
        operation.name = "RestoreCertificateAuthority"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreCertificateAuthorityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:revoke_certificate, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#RevokeCertificate"
        operation.name = "RevokeCertificate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeCertificateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestAlreadyProcessedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:tag_certificate_authority, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#TagCertificateAuthority"
        operation.name = "TagCertificateAuthority"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagCertificateAuthorityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:untag_certificate_authority, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#UntagCertificateAuthority"
        operation.name = "UntagCertificateAuthority"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagCertificateAuthorityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_certificate_authority, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#UpdateCertificateAuthority"
        operation.name = "UpdateCertificateAuthority"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCertificateAuthorityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
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

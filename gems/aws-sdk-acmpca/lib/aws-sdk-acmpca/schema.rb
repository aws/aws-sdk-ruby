# frozen_string_literal: true

# This is generated code!

module Aws::ACMPCA
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ASN1PrintableString64 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#ASN1PrintableString64", name: "ASN1PrintableString64", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9'()+-.?:/= ]*$"})
    ASN1Subject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#ASN1Subject", name: "ASN1Subject")
    AWSPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#AWSPolicy", name: "AWSPolicy", traits: {"smithy.api#length" => {"min" => 1, "max" => 81920}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    AccessDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#AccessDescription", name: "AccessDescription")
    AccessDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acmpca#AccessDescriptionList", name: "AccessDescriptionList")
    AccessMethod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#AccessMethod", name: "AccessMethod")
    AccessMethodType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acmpca#AccessMethodType", name: "AccessMethodType")
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]+$"})
    ActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acmpca#ActionList", name: "ActionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    ActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acmpca#ActionType", name: "ActionType")
    ApiPassthrough = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#ApiPassthrough", name: "ApiPassthrough")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 5, "max" => 200}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:acm-pca:[\\w+=/,.@-]*:[0-9]*:[\\w+=,.@-]+(/[\\w+=,.@-]+)*$"})
    AuditReportId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#AuditReportId", name: "AuditReportId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-z0-9]{8}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{12}$"})
    AuditReportResponseFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acmpca#AuditReportResponseFormat", name: "AuditReportResponseFormat")
    AuditReportStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acmpca#AuditReportStatus", name: "AuditReportStatus")
    Base64String1To4096 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#Base64String1To4096", name: "Base64String1To4096", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$"})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.acmpca#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    CertificateAuthorities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acmpca#CertificateAuthorities", name: "CertificateAuthorities")
    CertificateAuthority = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#CertificateAuthority", name: "CertificateAuthority")
    CertificateAuthorityConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#CertificateAuthorityConfiguration", name: "CertificateAuthorityConfiguration")
    CertificateAuthorityStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acmpca#CertificateAuthorityStatus", name: "CertificateAuthorityStatus")
    CertificateAuthorityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acmpca#CertificateAuthorityType", name: "CertificateAuthorityType")
    CertificateAuthorityUsageMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acmpca#CertificateAuthorityUsageMode", name: "CertificateAuthorityUsageMode")
    CertificateBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#CertificateBody", name: "CertificateBody")
    CertificateBodyBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.acmpca#CertificateBodyBlob", name: "CertificateBodyBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}})
    CertificateChain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#CertificateChain", name: "CertificateChain")
    CertificateChainBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.acmpca#CertificateChainBlob", name: "CertificateChainBlob", traits: {"smithy.api#length" => {"min" => 0, "max" => 2097152}})
    CertificateMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#CertificateMismatchException", name: "CertificateMismatchException", traits: {"smithy.api#error" => "client"})
    CertificatePolicyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acmpca#CertificatePolicyList", name: "CertificatePolicyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    CnameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#CnameString", name: "CnameString", traits: {"smithy.api#length" => {"min" => 0, "max" => 253}, "smithy.api#pattern" => "^[-a-zA-Z0-9;/?:@&=+$,%_.!~*()']*$"})
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "client"})
    CountryCodeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#CountryCodeString", name: "CountryCodeString", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[A-Za-z]{2}$"})
    CreateCertificateAuthorityAuditReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#CreateCertificateAuthorityAuditReportRequest", name: "CreateCertificateAuthorityAuditReportRequest")
    CreateCertificateAuthorityAuditReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#CreateCertificateAuthorityAuditReportResponse", name: "CreateCertificateAuthorityAuditReportResponse")
    CreateCertificateAuthorityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#CreateCertificateAuthorityRequest", name: "CreateCertificateAuthorityRequest")
    CreateCertificateAuthorityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#CreateCertificateAuthorityResponse", name: "CreateCertificateAuthorityResponse")
    CreatePermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#CreatePermissionRequest", name: "CreatePermissionRequest")
    CrlConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#CrlConfiguration", name: "CrlConfiguration")
    CrlDistributionPointExtensionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#CrlDistributionPointExtensionConfiguration", name: "CrlDistributionPointExtensionConfiguration")
    CrlPathString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#CrlPathString", name: "CrlPathString", traits: {"smithy.api#length" => {"min" => 0, "max" => 253}, "smithy.api#pattern" => "^[-a-zA-Z0-9;?:@&=+$,%_.!~*()']+(/[-a-zA-Z0-9;?:@&=+$,%_.!~*()']+)*$"})
    CrlType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acmpca#CrlType", name: "CrlType")
    CsrBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.acmpca#CsrBlob", name: "CsrBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}})
    CsrBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#CsrBody", name: "CsrBody")
    CsrExtensions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#CsrExtensions", name: "CsrExtensions")
    CustomAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#CustomAttribute", name: "CustomAttribute")
    CustomAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acmpca#CustomAttributeList", name: "CustomAttributeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    CustomExtension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#CustomExtension", name: "CustomExtension")
    CustomExtensionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acmpca#CustomExtensionList", name: "CustomExtensionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    CustomObjectIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#CustomObjectIdentifier", name: "CustomObjectIdentifier", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^([0-2])\\.([0-9]|([0-3][0-9]))((\\.([0-9]+)){0,126})$"})
    DeleteCertificateAuthorityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#DeleteCertificateAuthorityRequest", name: "DeleteCertificateAuthorityRequest")
    DeletePermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#DeletePermissionRequest", name: "DeletePermissionRequest")
    DeletePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#DeletePolicyRequest", name: "DeletePolicyRequest")
    DescribeCertificateAuthorityAuditReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#DescribeCertificateAuthorityAuditReportRequest", name: "DescribeCertificateAuthorityAuditReportRequest")
    DescribeCertificateAuthorityAuditReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#DescribeCertificateAuthorityAuditReportResponse", name: "DescribeCertificateAuthorityAuditReportResponse")
    DescribeCertificateAuthorityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#DescribeCertificateAuthorityRequest", name: "DescribeCertificateAuthorityRequest")
    DescribeCertificateAuthorityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#DescribeCertificateAuthorityResponse", name: "DescribeCertificateAuthorityResponse")
    EdiPartyName = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#EdiPartyName", name: "EdiPartyName")
    ExtendedKeyUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#ExtendedKeyUsage", name: "ExtendedKeyUsage")
    ExtendedKeyUsageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acmpca#ExtendedKeyUsageList", name: "ExtendedKeyUsageList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ExtendedKeyUsageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acmpca#ExtendedKeyUsageType", name: "ExtendedKeyUsageType")
    Extensions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#Extensions", name: "Extensions")
    FailureReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acmpca#FailureReason", name: "FailureReason")
    GeneralName = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#GeneralName", name: "GeneralName")
    GeneralNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acmpca#GeneralNameList", name: "GeneralNameList", traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    GetCertificateAuthorityCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#GetCertificateAuthorityCertificateRequest", name: "GetCertificateAuthorityCertificateRequest")
    GetCertificateAuthorityCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#GetCertificateAuthorityCertificateResponse", name: "GetCertificateAuthorityCertificateResponse")
    GetCertificateAuthorityCsrRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#GetCertificateAuthorityCsrRequest", name: "GetCertificateAuthorityCsrRequest")
    GetCertificateAuthorityCsrResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#GetCertificateAuthorityCsrResponse", name: "GetCertificateAuthorityCsrResponse")
    GetCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#GetCertificateRequest", name: "GetCertificateRequest")
    GetCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#GetCertificateResponse", name: "GetCertificateResponse")
    GetPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#GetPolicyRequest", name: "GetPolicyRequest")
    GetPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#GetPolicyResponse", name: "GetPolicyResponse")
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#IdempotencyToken", name: "IdempotencyToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]*$"})
    ImportCertificateAuthorityCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#ImportCertificateAuthorityCertificateRequest", name: "ImportCertificateAuthorityCertificateRequest")
    Integer1To5000 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.acmpca#Integer1To5000", name: "Integer1To5000", traits: {"smithy.api#range" => {"min" => 1, "max" => 5000}})
    InvalidArgsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#InvalidArgsException", name: "InvalidArgsException", traits: {"smithy.api#error" => "client"})
    InvalidArnException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#InvalidArnException", name: "InvalidArnException", traits: {"smithy.api#error" => "client"})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#InvalidNextTokenException", name: "InvalidNextTokenException", traits: {"smithy.api#error" => "client"})
    InvalidPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#InvalidPolicyException", name: "InvalidPolicyException", traits: {"smithy.api#error" => "client"})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client"})
    InvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#InvalidStateException", name: "InvalidStateException", traits: {"smithy.api#error" => "client"})
    InvalidTagException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#InvalidTagException", name: "InvalidTagException", traits: {"smithy.api#error" => "client"})
    IssueCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#IssueCertificateRequest", name: "IssueCertificateRequest")
    IssueCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#IssueCertificateResponse", name: "IssueCertificateResponse")
    KeyAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acmpca#KeyAlgorithm", name: "KeyAlgorithm")
    KeyStorageSecurityStandard = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acmpca#KeyStorageSecurityStandard", name: "KeyStorageSecurityStandard")
    KeyUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#KeyUsage", name: "KeyUsage")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    ListCertificateAuthoritiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#ListCertificateAuthoritiesRequest", name: "ListCertificateAuthoritiesRequest")
    ListCertificateAuthoritiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#ListCertificateAuthoritiesResponse", name: "ListCertificateAuthoritiesResponse")
    ListPermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#ListPermissionsRequest", name: "ListPermissionsRequest")
    ListPermissionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#ListPermissionsResponse", name: "ListPermissionsResponse")
    ListTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#ListTagsRequest", name: "ListTagsRequest")
    ListTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#ListTagsResponse", name: "ListTagsResponse")
    LockoutPreventedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#LockoutPreventedException", name: "LockoutPreventedException", traits: {"smithy.api#error" => "client"})
    MalformedCSRException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#MalformedCSRException", name: "MalformedCSRException", traits: {"smithy.api#error" => "client"})
    MalformedCertificateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#MalformedCertificateException", name: "MalformedCertificateException", traits: {"smithy.api#error" => "client"})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.acmpca#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 43739}})
    OcspConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#OcspConfiguration", name: "OcspConfiguration")
    OtherName = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#OtherName", name: "OtherName")
    PermanentDeletionTimeInDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.acmpca#PermanentDeletionTimeInDays", name: "PermanentDeletionTimeInDays", traits: {"smithy.api#range" => {"min" => 7, "max" => 30}})
    Permission = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#Permission", name: "Permission")
    PermissionAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#PermissionAlreadyExistsException", name: "PermissionAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    PermissionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acmpca#PermissionList", name: "PermissionList", traits: {"smithy.api#length" => {"min" => 0}})
    PolicyInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#PolicyInformation", name: "PolicyInformation")
    PolicyQualifierId = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acmpca#PolicyQualifierId", name: "PolicyQualifierId")
    PolicyQualifierInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#PolicyQualifierInfo", name: "PolicyQualifierInfo")
    PolicyQualifierInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acmpca#PolicyQualifierInfoList", name: "PolicyQualifierInfoList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    PositiveLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.acmpca#PositiveLong", name: "PositiveLong", traits: {"smithy.api#range" => {"min" => 1}})
    Principal = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#Principal", name: "Principal", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[^*]+$"})
    PutPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#PutPolicyRequest", name: "PutPolicyRequest")
    Qualifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#Qualifier", name: "Qualifier")
    RequestAlreadyProcessedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#RequestAlreadyProcessedException", name: "RequestAlreadyProcessedException", traits: {"smithy.api#error" => "client"})
    RequestFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#RequestFailedException", name: "RequestFailedException", traits: {"smithy.api#error" => "client"})
    RequestInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#RequestInProgressException", name: "RequestInProgressException", traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    ResourceOwner = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acmpca#ResourceOwner", name: "ResourceOwner")
    RestoreCertificateAuthorityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#RestoreCertificateAuthorityRequest", name: "RestoreCertificateAuthorityRequest")
    RevocationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#RevocationConfiguration", name: "RevocationConfiguration")
    RevocationReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acmpca#RevocationReason", name: "RevocationReason")
    RevokeCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#RevokeCertificateRequest", name: "RevokeCertificateRequest")
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    S3BucketName3To255 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#S3BucketName3To255", name: "S3BucketName3To255", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[-a-zA-Z0-9._/]+$"})
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#S3Key", name: "S3Key", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    S3ObjectAcl = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acmpca#S3ObjectAcl", name: "S3ObjectAcl")
    SigningAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acmpca#SigningAlgorithm", name: "SigningAlgorithm")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#String", name: "String")
    String128 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#String128", name: "String128", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    String16 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#String16", name: "String16", traits: {"smithy.api#length" => {"min" => 0, "max" => 16}})
    String1To256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#String1To256", name: "String1To256", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    String253 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#String253", name: "String253", traits: {"smithy.api#length" => {"min" => 0, "max" => 253}})
    String256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#String256", name: "String256", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    String3 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#String3", name: "String3", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    String39 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#String39", name: "String39", traits: {"smithy.api#length" => {"min" => 0, "max" => 39}})
    String40 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#String40", name: "String40", traits: {"smithy.api#length" => {"min" => 0, "max" => 40}})
    String5 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#String5", name: "String5", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    String64 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#String64", name: "String64", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    TStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.acmpca#TStamp", name: "TStamp")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#Tag", name: "Tag")
    TagCertificateAuthorityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#TagCertificateAuthorityRequest", name: "TagCertificateAuthorityRequest")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acmpca#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acmpca#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client"})
    UntagCertificateAuthorityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#UntagCertificateAuthorityRequest", name: "UntagCertificateAuthorityRequest")
    UpdateCertificateAuthorityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#UpdateCertificateAuthorityRequest", name: "UpdateCertificateAuthorityRequest")
    Validity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acmpca#Validity", name: "Validity")
    ValidityPeriodType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acmpca#ValidityPeriodType", name: "ValidityPeriodType")

    ASN1Subject.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCodeString, name: "Country"))
    ASN1Subject.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "Organization"))
    ASN1Subject.add_member(:organizational_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "OrganizationalUnit"))
    ASN1Subject.add_member(:distinguished_name_qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ASN1PrintableString64, name: "DistinguishedNameQualifier"))
    ASN1Subject.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String128, name: "State"))
    ASN1Subject.add_member(:common_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "CommonName"))
    ASN1Subject.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ASN1PrintableString64, name: "SerialNumber"))
    ASN1Subject.add_member(:locality, ::Smithy::Schema::Shapes::MemberShape.new(target: String128, name: "Locality"))
    ASN1Subject.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: String64, name: "Title"))
    ASN1Subject.add_member(:surname, ::Smithy::Schema::Shapes::MemberShape.new(target: String40, name: "Surname"))
    ASN1Subject.add_member(:given_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String16, name: "GivenName"))
    ASN1Subject.add_member(:initials, ::Smithy::Schema::Shapes::MemberShape.new(target: String5, name: "Initials"))
    ASN1Subject.add_member(:pseudonym, ::Smithy::Schema::Shapes::MemberShape.new(target: String128, name: "Pseudonym"))
    ASN1Subject.add_member(:generation_qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String3, name: "GenerationQualifier"))
    ASN1Subject.add_member(:custom_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomAttributeList, name: "CustomAttributes"))
    ASN1Subject.type = Types::ASN1Subject
    AccessDescription.add_member(:access_method, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessMethod, name: "AccessMethod", traits: {"smithy.api#required" => {}}))
    AccessDescription.add_member(:access_location, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralName, name: "AccessLocation", traits: {"smithy.api#required" => {}}))
    AccessDescription.type = Types::AccessDescription
    AccessDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDescription, name: "member"))
    AccessMethod.add_member(:custom_object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomObjectIdentifier, name: "CustomObjectIdentifier"))
    AccessMethod.add_member(:access_method_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessMethodType, name: "AccessMethodType"))
    AccessMethod.type = Types::AccessMethod
    AccessMethodType.add_member(:ca_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CA_REPOSITORY", traits: {"smithy.api#enumValue" => "CA_REPOSITORY"}))
    AccessMethodType.add_member(:resource_pki_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_PKI_MANIFEST", traits: {"smithy.api#enumValue" => "RESOURCE_PKI_MANIFEST"}))
    AccessMethodType.add_member(:resource_pki_notify, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_PKI_NOTIFY", traits: {"smithy.api#enumValue" => "RESOURCE_PKI_NOTIFY"}))
    ActionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionType, name: "member"))
    ActionType.add_member(:issue_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IssueCertificate", traits: {"smithy.api#enumValue" => "IssueCertificate"}))
    ActionType.add_member(:get_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GetCertificate", traits: {"smithy.api#enumValue" => "GetCertificate"}))
    ActionType.add_member(:list_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ListPermissions", traits: {"smithy.api#enumValue" => "ListPermissions"}))
    ApiPassthrough.add_member(:extensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Extensions, name: "Extensions"))
    ApiPassthrough.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: ASN1Subject, name: "Subject"))
    ApiPassthrough.type = Types::ApiPassthrough
    AuditReportResponseFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    AuditReportResponseFormat.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    AuditReportStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    AuditReportStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    AuditReportStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CertificateAuthorities.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAuthority, name: "member"))
    CertificateAuthority.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    CertificateAuthority.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerAccount"))
    CertificateAuthority.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreatedAt"))
    CertificateAuthority.add_member(:last_state_change_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "LastStateChangeAt"))
    CertificateAuthority.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAuthorityType, name: "Type"))
    CertificateAuthority.add_member(:serial, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Serial"))
    CertificateAuthority.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAuthorityStatus, name: "Status"))
    CertificateAuthority.add_member(:not_before, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "NotBefore"))
    CertificateAuthority.add_member(:not_after, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "NotAfter"))
    CertificateAuthority.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "FailureReason"))
    CertificateAuthority.add_member(:certificate_authority_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAuthorityConfiguration, name: "CertificateAuthorityConfiguration"))
    CertificateAuthority.add_member(:revocation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationConfiguration, name: "RevocationConfiguration"))
    CertificateAuthority.add_member(:restorable_until, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "RestorableUntil"))
    CertificateAuthority.add_member(:key_storage_security_standard, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyStorageSecurityStandard, name: "KeyStorageSecurityStandard"))
    CertificateAuthority.add_member(:usage_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAuthorityUsageMode, name: "UsageMode"))
    CertificateAuthority.type = Types::CertificateAuthority
    CertificateAuthorityConfiguration.add_member(:key_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAlgorithm, name: "KeyAlgorithm", traits: {"smithy.api#required" => {}}))
    CertificateAuthorityConfiguration.add_member(:signing_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningAlgorithm, name: "SigningAlgorithm", traits: {"smithy.api#required" => {}}))
    CertificateAuthorityConfiguration.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: ASN1Subject, name: "Subject", traits: {"smithy.api#required" => {}}))
    CertificateAuthorityConfiguration.add_member(:csr_extensions, ::Smithy::Schema::Shapes::MemberShape.new(target: CsrExtensions, name: "CsrExtensions"))
    CertificateAuthorityConfiguration.type = Types::CertificateAuthorityConfiguration
    CertificateAuthorityStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    CertificateAuthorityStatus.add_member(:pending_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_CERTIFICATE", traits: {"smithy.api#enumValue" => "PENDING_CERTIFICATE"}))
    CertificateAuthorityStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    CertificateAuthorityStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    CertificateAuthorityStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    CertificateAuthorityStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    CertificateAuthorityStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CertificateAuthorityType.add_member(:root, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROOT", traits: {"smithy.api#enumValue" => "ROOT"}))
    CertificateAuthorityType.add_member(:subordinate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBORDINATE", traits: {"smithy.api#enumValue" => "SUBORDINATE"}))
    CertificateAuthorityUsageMode.add_member(:general_purpose, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GENERAL_PURPOSE", traits: {"smithy.api#enumValue" => "GENERAL_PURPOSE"}))
    CertificateAuthorityUsageMode.add_member(:short_lived_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHORT_LIVED_CERTIFICATE", traits: {"smithy.api#enumValue" => "SHORT_LIVED_CERTIFICATE"}))
    CertificateMismatchException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    CertificateMismatchException.type = Types::CertificateMismatchException
    CertificatePolicyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyInformation, name: "member"))
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    CreateCertificateAuthorityAuditReportRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateAuthorityArn", traits: {"smithy.api#required" => {}}))
    CreateCertificateAuthorityAuditReportRequest.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "S3BucketName", traits: {"smithy.api#required" => {}}))
    CreateCertificateAuthorityAuditReportRequest.add_member(:audit_report_response_format, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditReportResponseFormat, name: "AuditReportResponseFormat", traits: {"smithy.api#required" => {}}))
    CreateCertificateAuthorityAuditReportRequest.type = Types::CreateCertificateAuthorityAuditReportRequest
    CreateCertificateAuthorityAuditReportResponse.add_member(:audit_report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditReportId, name: "AuditReportId"))
    CreateCertificateAuthorityAuditReportResponse.add_member(:s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, name: "S3Key"))
    CreateCertificateAuthorityAuditReportResponse.type = Types::CreateCertificateAuthorityAuditReportResponse
    CreateCertificateAuthorityRequest.add_member(:certificate_authority_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAuthorityConfiguration, name: "CertificateAuthorityConfiguration", traits: {"smithy.api#required" => {}}))
    CreateCertificateAuthorityRequest.add_member(:revocation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationConfiguration, name: "RevocationConfiguration"))
    CreateCertificateAuthorityRequest.add_member(:certificate_authority_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAuthorityType, name: "CertificateAuthorityType", traits: {"smithy.api#required" => {}}))
    CreateCertificateAuthorityRequest.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "IdempotencyToken"))
    CreateCertificateAuthorityRequest.add_member(:key_storage_security_standard, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyStorageSecurityStandard, name: "KeyStorageSecurityStandard"))
    CreateCertificateAuthorityRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateCertificateAuthorityRequest.add_member(:usage_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAuthorityUsageMode, name: "UsageMode"))
    CreateCertificateAuthorityRequest.type = Types::CreateCertificateAuthorityRequest
    CreateCertificateAuthorityResponse.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateAuthorityArn"))
    CreateCertificateAuthorityResponse.type = Types::CreateCertificateAuthorityResponse
    CreatePermissionRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateAuthorityArn", traits: {"smithy.api#required" => {}}))
    CreatePermissionRequest.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: Principal, name: "Principal", traits: {"smithy.api#required" => {}}))
    CreatePermissionRequest.add_member(:source_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "SourceAccount"))
    CreatePermissionRequest.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionList, name: "Actions", traits: {"smithy.api#required" => {}}))
    CreatePermissionRequest.type = Types::CreatePermissionRequest
    CrlConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#default" => nil, "smithy.api#required" => {}}))
    CrlConfiguration.add_member(:expiration_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer1To5000, name: "ExpirationInDays"))
    CrlConfiguration.add_member(:custom_cname, ::Smithy::Schema::Shapes::MemberShape.new(target: CnameString, name: "CustomCname"))
    CrlConfiguration.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName3To255, name: "S3BucketName"))
    CrlConfiguration.add_member(:s3_object_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectAcl, name: "S3ObjectAcl"))
    CrlConfiguration.add_member(:crl_distribution_point_extension_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CrlDistributionPointExtensionConfiguration, name: "CrlDistributionPointExtensionConfiguration"))
    CrlConfiguration.add_member(:crl_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CrlType, name: "CrlType"))
    CrlConfiguration.add_member(:custom_path, ::Smithy::Schema::Shapes::MemberShape.new(target: CrlPathString, name: "CustomPath"))
    CrlConfiguration.type = Types::CrlConfiguration
    CrlDistributionPointExtensionConfiguration.add_member(:omit_extension, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "OmitExtension", traits: {"smithy.api#default" => nil, "smithy.api#required" => {}}))
    CrlDistributionPointExtensionConfiguration.type = Types::CrlDistributionPointExtensionConfiguration
    CrlType.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    CrlType.add_member(:partitioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTITIONED", traits: {"smithy.api#enumValue" => "PARTITIONED"}))
    CsrExtensions.add_member(:key_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyUsage, name: "KeyUsage"))
    CsrExtensions.add_member(:subject_information_access, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDescriptionList, name: "SubjectInformationAccess"))
    CsrExtensions.type = Types::CsrExtensions
    CustomAttribute.add_member(:object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomObjectIdentifier, name: "ObjectIdentifier", traits: {"smithy.api#required" => {}}))
    CustomAttribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String1To256, name: "Value", traits: {"smithy.api#required" => {}}))
    CustomAttribute.type = Types::CustomAttribute
    CustomAttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomAttribute, name: "member"))
    CustomExtension.add_member(:object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomObjectIdentifier, name: "ObjectIdentifier", traits: {"smithy.api#required" => {}}))
    CustomExtension.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Base64String1To4096, name: "Value", traits: {"smithy.api#required" => {}}))
    CustomExtension.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Critical", traits: {"smithy.api#default" => nil}))
    CustomExtension.type = Types::CustomExtension
    CustomExtensionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomExtension, name: "member"))
    DeleteCertificateAuthorityRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateAuthorityArn", traits: {"smithy.api#required" => {}}))
    DeleteCertificateAuthorityRequest.add_member(:permanent_deletion_time_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: PermanentDeletionTimeInDays, name: "PermanentDeletionTimeInDays"))
    DeleteCertificateAuthorityRequest.type = Types::DeleteCertificateAuthorityRequest
    DeletePermissionRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateAuthorityArn", traits: {"smithy.api#required" => {}}))
    DeletePermissionRequest.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: Principal, name: "Principal", traits: {"smithy.api#required" => {}}))
    DeletePermissionRequest.add_member(:source_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "SourceAccount"))
    DeletePermissionRequest.type = Types::DeletePermissionRequest
    DeletePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DeletePolicyRequest.type = Types::DeletePolicyRequest
    DescribeCertificateAuthorityAuditReportRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateAuthorityArn", traits: {"smithy.api#required" => {}}))
    DescribeCertificateAuthorityAuditReportRequest.add_member(:audit_report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditReportId, name: "AuditReportId", traits: {"smithy.api#required" => {}}))
    DescribeCertificateAuthorityAuditReportRequest.type = Types::DescribeCertificateAuthorityAuditReportRequest
    DescribeCertificateAuthorityAuditReportResponse.add_member(:audit_report_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AuditReportStatus, name: "AuditReportStatus"))
    DescribeCertificateAuthorityAuditReportResponse.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "S3BucketName"))
    DescribeCertificateAuthorityAuditReportResponse.add_member(:s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, name: "S3Key"))
    DescribeCertificateAuthorityAuditReportResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreatedAt"))
    DescribeCertificateAuthorityAuditReportResponse.type = Types::DescribeCertificateAuthorityAuditReportResponse
    DescribeCertificateAuthorityRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateAuthorityArn", traits: {"smithy.api#required" => {}}))
    DescribeCertificateAuthorityRequest.type = Types::DescribeCertificateAuthorityRequest
    DescribeCertificateAuthorityResponse.add_member(:certificate_authority, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAuthority, name: "CertificateAuthority"))
    DescribeCertificateAuthorityResponse.type = Types::DescribeCertificateAuthorityResponse
    EdiPartyName.add_member(:party_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "PartyName", traits: {"smithy.api#required" => {}}))
    EdiPartyName.add_member(:name_assigner, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "NameAssigner"))
    EdiPartyName.type = Types::EdiPartyName
    ExtendedKeyUsage.add_member(:extended_key_usage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedKeyUsageType, name: "ExtendedKeyUsageType"))
    ExtendedKeyUsage.add_member(:extended_key_usage_object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomObjectIdentifier, name: "ExtendedKeyUsageObjectIdentifier"))
    ExtendedKeyUsage.type = Types::ExtendedKeyUsage
    ExtendedKeyUsageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedKeyUsage, name: "member"))
    ExtendedKeyUsageType.add_member(:server_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVER_AUTH", traits: {"smithy.api#enumValue" => "SERVER_AUTH"}))
    ExtendedKeyUsageType.add_member(:client_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLIENT_AUTH", traits: {"smithy.api#enumValue" => "CLIENT_AUTH"}))
    ExtendedKeyUsageType.add_member(:code_signing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CODE_SIGNING", traits: {"smithy.api#enumValue" => "CODE_SIGNING"}))
    ExtendedKeyUsageType.add_member(:email_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL_PROTECTION", traits: {"smithy.api#enumValue" => "EMAIL_PROTECTION"}))
    ExtendedKeyUsageType.add_member(:time_stamping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIME_STAMPING", traits: {"smithy.api#enumValue" => "TIME_STAMPING"}))
    ExtendedKeyUsageType.add_member(:ocsp_signing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OCSP_SIGNING", traits: {"smithy.api#enumValue" => "OCSP_SIGNING"}))
    ExtendedKeyUsageType.add_member(:smart_card_login, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMART_CARD_LOGIN", traits: {"smithy.api#enumValue" => "SMART_CARD_LOGIN"}))
    ExtendedKeyUsageType.add_member(:document_signing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_SIGNING", traits: {"smithy.api#enumValue" => "DOCUMENT_SIGNING"}))
    ExtendedKeyUsageType.add_member(:certificate_transparency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CERTIFICATE_TRANSPARENCY", traits: {"smithy.api#enumValue" => "CERTIFICATE_TRANSPARENCY"}))
    Extensions.add_member(:certificate_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificatePolicyList, name: "CertificatePolicies"))
    Extensions.add_member(:extended_key_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedKeyUsageList, name: "ExtendedKeyUsage"))
    Extensions.add_member(:key_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyUsage, name: "KeyUsage"))
    Extensions.add_member(:subject_alternative_names, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralNameList, name: "SubjectAlternativeNames"))
    Extensions.add_member(:custom_extensions, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomExtensionList, name: "CustomExtensions"))
    Extensions.type = Types::Extensions
    FailureReason.add_member(:request_timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUEST_TIMED_OUT", traits: {"smithy.api#enumValue" => "REQUEST_TIMED_OUT"}))
    FailureReason.add_member(:unsupported_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_ALGORITHM", traits: {"smithy.api#enumValue" => "UNSUPPORTED_ALGORITHM"}))
    FailureReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    GeneralName.add_member(:other_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OtherName, name: "OtherName"))
    GeneralName.add_member(:rfc822_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "Rfc822Name"))
    GeneralName.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String253, name: "DnsName"))
    GeneralName.add_member(:directory_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ASN1Subject, name: "DirectoryName"))
    GeneralName.add_member(:edi_party_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EdiPartyName, name: "EdiPartyName"))
    GeneralName.add_member(:uniform_resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String253, name: "UniformResourceIdentifier"))
    GeneralName.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String39, name: "IpAddress"))
    GeneralName.add_member(:registered_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomObjectIdentifier, name: "RegisteredId"))
    GeneralName.type = Types::GeneralName
    GeneralNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralName, name: "member"))
    GetCertificateAuthorityCertificateRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateAuthorityArn", traits: {"smithy.api#required" => {}}))
    GetCertificateAuthorityCertificateRequest.type = Types::GetCertificateAuthorityCertificateRequest
    GetCertificateAuthorityCertificateResponse.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateBody, name: "Certificate"))
    GetCertificateAuthorityCertificateResponse.add_member(:certificate_chain, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateChain, name: "CertificateChain"))
    GetCertificateAuthorityCertificateResponse.type = Types::GetCertificateAuthorityCertificateResponse
    GetCertificateAuthorityCsrRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateAuthorityArn", traits: {"smithy.api#required" => {}}))
    GetCertificateAuthorityCsrRequest.type = Types::GetCertificateAuthorityCsrRequest
    GetCertificateAuthorityCsrResponse.add_member(:csr, ::Smithy::Schema::Shapes::MemberShape.new(target: CsrBody, name: "Csr"))
    GetCertificateAuthorityCsrResponse.type = Types::GetCertificateAuthorityCsrResponse
    GetCertificateRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateAuthorityArn", traits: {"smithy.api#required" => {}}))
    GetCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn", traits: {"smithy.api#required" => {}}))
    GetCertificateRequest.type = Types::GetCertificateRequest
    GetCertificateResponse.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateBody, name: "Certificate"))
    GetCertificateResponse.add_member(:certificate_chain, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateChain, name: "CertificateChain"))
    GetCertificateResponse.type = Types::GetCertificateResponse
    GetPolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    GetPolicyRequest.type = Types::GetPolicyRequest
    GetPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSPolicy, name: "Policy"))
    GetPolicyResponse.type = Types::GetPolicyResponse
    ImportCertificateAuthorityCertificateRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateAuthorityArn", traits: {"smithy.api#required" => {}}))
    ImportCertificateAuthorityCertificateRequest.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateBodyBlob, name: "Certificate", traits: {"smithy.api#required" => {}}))
    ImportCertificateAuthorityCertificateRequest.add_member(:certificate_chain, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateChainBlob, name: "CertificateChain"))
    ImportCertificateAuthorityCertificateRequest.type = Types::ImportCertificateAuthorityCertificateRequest
    InvalidArgsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidArgsException.type = Types::InvalidArgsException
    InvalidArnException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidArnException.type = Types::InvalidArnException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidPolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidPolicyException.type = Types::InvalidPolicyException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidStateException.type = Types::InvalidStateException
    InvalidTagException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidTagException.type = Types::InvalidTagException
    IssueCertificateRequest.add_member(:api_passthrough, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiPassthrough, name: "ApiPassthrough"))
    IssueCertificateRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateAuthorityArn", traits: {"smithy.api#required" => {}}))
    IssueCertificateRequest.add_member(:csr, ::Smithy::Schema::Shapes::MemberShape.new(target: CsrBlob, name: "Csr", traits: {"smithy.api#required" => {}}))
    IssueCertificateRequest.add_member(:signing_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningAlgorithm, name: "SigningAlgorithm", traits: {"smithy.api#required" => {}}))
    IssueCertificateRequest.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "TemplateArn"))
    IssueCertificateRequest.add_member(:validity, ::Smithy::Schema::Shapes::MemberShape.new(target: Validity, name: "Validity", traits: {"smithy.api#required" => {}}))
    IssueCertificateRequest.add_member(:validity_not_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Validity, name: "ValidityNotBefore"))
    IssueCertificateRequest.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "IdempotencyToken"))
    IssueCertificateRequest.type = Types::IssueCertificateRequest
    IssueCertificateResponse.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn"))
    IssueCertificateResponse.type = Types::IssueCertificateResponse
    KeyAlgorithm.add_member(:rsa_2048, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RSA_2048", traits: {"smithy.api#enumValue" => "RSA_2048"}))
    KeyAlgorithm.add_member(:rsa_3072, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RSA_3072", traits: {"smithy.api#enumValue" => "RSA_3072"}))
    KeyAlgorithm.add_member(:rsa_4096, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RSA_4096", traits: {"smithy.api#enumValue" => "RSA_4096"}))
    KeyAlgorithm.add_member(:ec_prime256v1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC_prime256v1", traits: {"smithy.api#enumValue" => "EC_prime256v1"}))
    KeyAlgorithm.add_member(:ec_secp384r1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC_secp384r1", traits: {"smithy.api#enumValue" => "EC_secp384r1"}))
    KeyAlgorithm.add_member(:ec_secp521r1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC_secp521r1", traits: {"smithy.api#enumValue" => "EC_secp521r1"}))
    KeyAlgorithm.add_member(:sm2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SM2", traits: {"smithy.api#enumValue" => "SM2"}))
    KeyStorageSecurityStandard.add_member(:fips_140_2_level_2_or_higher, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIPS_140_2_LEVEL_2_OR_HIGHER", traits: {"smithy.api#enumValue" => "FIPS_140_2_LEVEL_2_OR_HIGHER"}))
    KeyStorageSecurityStandard.add_member(:fips_140_2_level_3_or_higher, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIPS_140_2_LEVEL_3_OR_HIGHER", traits: {"smithy.api#enumValue" => "FIPS_140_2_LEVEL_3_OR_HIGHER"}))
    KeyStorageSecurityStandard.add_member(:ccpc_level_1_or_higher, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CCPC_LEVEL_1_OR_HIGHER", traits: {"smithy.api#enumValue" => "CCPC_LEVEL_1_OR_HIGHER"}))
    KeyUsage.add_member(:digital_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DigitalSignature", traits: {"smithy.api#default" => false}))
    KeyUsage.add_member(:non_repudiation, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "NonRepudiation", traits: {"smithy.api#default" => false}))
    KeyUsage.add_member(:key_encipherment, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "KeyEncipherment", traits: {"smithy.api#default" => false}))
    KeyUsage.add_member(:data_encipherment, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DataEncipherment", traits: {"smithy.api#default" => false}))
    KeyUsage.add_member(:key_agreement, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "KeyAgreement", traits: {"smithy.api#default" => false}))
    KeyUsage.add_member(:key_cert_sign, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "KeyCertSign", traits: {"smithy.api#default" => false}))
    KeyUsage.add_member(:crl_sign, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CRLSign", traits: {"smithy.api#default" => false}))
    KeyUsage.add_member(:encipher_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EncipherOnly", traits: {"smithy.api#default" => false}))
    KeyUsage.add_member(:decipher_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DecipherOnly", traits: {"smithy.api#default" => false}))
    KeyUsage.type = Types::KeyUsage
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListCertificateAuthoritiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListCertificateAuthoritiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCertificateAuthoritiesRequest.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceOwner, name: "ResourceOwner"))
    ListCertificateAuthoritiesRequest.type = Types::ListCertificateAuthoritiesRequest
    ListCertificateAuthoritiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCertificateAuthoritiesResponse.add_member(:certificate_authorities, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAuthorities, name: "CertificateAuthorities"))
    ListCertificateAuthoritiesResponse.type = Types::ListCertificateAuthoritiesResponse
    ListPermissionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListPermissionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPermissionsRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateAuthorityArn", traits: {"smithy.api#required" => {}}))
    ListPermissionsRequest.type = Types::ListPermissionsRequest
    ListPermissionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPermissionsResponse.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionList, name: "Permissions"))
    ListPermissionsResponse.type = Types::ListPermissionsResponse
    ListTagsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListTagsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTagsRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateAuthorityArn", traits: {"smithy.api#required" => {}}))
    ListTagsRequest.type = Types::ListTagsRequest
    ListTagsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTagsResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsResponse.type = Types::ListTagsResponse
    LockoutPreventedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    LockoutPreventedException.type = Types::LockoutPreventedException
    MalformedCSRException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    MalformedCSRException.type = Types::MalformedCSRException
    MalformedCertificateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    MalformedCertificateException.type = Types::MalformedCertificateException
    OcspConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#default" => nil, "smithy.api#required" => {}}))
    OcspConfiguration.add_member(:ocsp_custom_cname, ::Smithy::Schema::Shapes::MemberShape.new(target: CnameString, name: "OcspCustomCname"))
    OcspConfiguration.type = Types::OcspConfiguration
    OtherName.add_member(:type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomObjectIdentifier, name: "TypeId", traits: {"smithy.api#required" => {}}))
    OtherName.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "Value", traits: {"smithy.api#required" => {}}))
    OtherName.type = Types::OtherName
    Permission.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateAuthorityArn"))
    Permission.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreatedAt"))
    Permission.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: Principal, name: "Principal"))
    Permission.add_member(:source_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "SourceAccount"))
    Permission.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionList, name: "Actions"))
    Permission.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSPolicy, name: "Policy"))
    Permission.type = Types::Permission
    PermissionAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    PermissionAlreadyExistsException.type = Types::PermissionAlreadyExistsException
    PermissionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Permission, name: "member"))
    PolicyInformation.add_member(:cert_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomObjectIdentifier, name: "CertPolicyId", traits: {"smithy.api#required" => {}}))
    PolicyInformation.add_member(:policy_qualifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyQualifierInfoList, name: "PolicyQualifiers"))
    PolicyInformation.type = Types::PolicyInformation
    PolicyQualifierId.add_member(:cps, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CPS", traits: {"smithy.api#enumValue" => "CPS"}))
    PolicyQualifierInfo.add_member(:policy_qualifier_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyQualifierId, name: "PolicyQualifierId", traits: {"smithy.api#required" => {}}))
    PolicyQualifierInfo.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualifier, name: "Qualifier", traits: {"smithy.api#required" => {}}))
    PolicyQualifierInfo.type = Types::PolicyQualifierInfo
    PolicyQualifierInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyQualifierInfo, name: "member"))
    PutPolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    PutPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSPolicy, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutPolicyRequest.type = Types::PutPolicyRequest
    Qualifier.add_member(:cps_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "CpsUri", traits: {"smithy.api#required" => {}}))
    Qualifier.type = Types::Qualifier
    RequestAlreadyProcessedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    RequestAlreadyProcessedException.type = Types::RequestAlreadyProcessedException
    RequestFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    RequestFailedException.type = Types::RequestFailedException
    RequestInProgressException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    RequestInProgressException.type = Types::RequestInProgressException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceOwner.add_member(:self, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELF", traits: {"smithy.api#enumValue" => "SELF"}))
    ResourceOwner.add_member(:other_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER_ACCOUNTS", traits: {"smithy.api#enumValue" => "OTHER_ACCOUNTS"}))
    RestoreCertificateAuthorityRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateAuthorityArn", traits: {"smithy.api#required" => {}}))
    RestoreCertificateAuthorityRequest.type = Types::RestoreCertificateAuthorityRequest
    RevocationConfiguration.add_member(:crl_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CrlConfiguration, name: "CrlConfiguration"))
    RevocationConfiguration.add_member(:ocsp_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OcspConfiguration, name: "OcspConfiguration"))
    RevocationConfiguration.type = Types::RevocationConfiguration
    RevocationReason.add_member(:unspecified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSPECIFIED", traits: {"smithy.api#enumValue" => "UNSPECIFIED"}))
    RevocationReason.add_member(:key_compromise, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEY_COMPROMISE", traits: {"smithy.api#enumValue" => "KEY_COMPROMISE"}))
    RevocationReason.add_member(:certificate_authority_compromise, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CERTIFICATE_AUTHORITY_COMPROMISE", traits: {"smithy.api#enumValue" => "CERTIFICATE_AUTHORITY_COMPROMISE"}))
    RevocationReason.add_member(:affiliation_changed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFFILIATION_CHANGED", traits: {"smithy.api#enumValue" => "AFFILIATION_CHANGED"}))
    RevocationReason.add_member(:superseded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUPERSEDED", traits: {"smithy.api#enumValue" => "SUPERSEDED"}))
    RevocationReason.add_member(:cessation_of_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CESSATION_OF_OPERATION", traits: {"smithy.api#enumValue" => "CESSATION_OF_OPERATION"}))
    RevocationReason.add_member(:privilege_withdrawn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVILEGE_WITHDRAWN", traits: {"smithy.api#enumValue" => "PRIVILEGE_WITHDRAWN"}))
    RevocationReason.add_member(:a_a_compromise, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "A_A_COMPROMISE", traits: {"smithy.api#enumValue" => "A_A_COMPROMISE"}))
    RevokeCertificateRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateAuthorityArn", traits: {"smithy.api#required" => {}}))
    RevokeCertificateRequest.add_member(:certificate_serial, ::Smithy::Schema::Shapes::MemberShape.new(target: String128, name: "CertificateSerial", traits: {"smithy.api#required" => {}}))
    RevokeCertificateRequest.add_member(:revocation_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationReason, name: "RevocationReason", traits: {"smithy.api#required" => {}}))
    RevokeCertificateRequest.type = Types::RevokeCertificateRequest
    S3ObjectAcl.add_member(:public_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC_READ", traits: {"smithy.api#enumValue" => "PUBLIC_READ"}))
    S3ObjectAcl.add_member(:bucket_owner_full_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUCKET_OWNER_FULL_CONTROL", traits: {"smithy.api#enumValue" => "BUCKET_OWNER_FULL_CONTROL"}))
    SigningAlgorithm.add_member(:sha256_withecdsa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA256WITHECDSA", traits: {"smithy.api#enumValue" => "SHA256WITHECDSA"}))
    SigningAlgorithm.add_member(:sha384_withecdsa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA384WITHECDSA", traits: {"smithy.api#enumValue" => "SHA384WITHECDSA"}))
    SigningAlgorithm.add_member(:sha512_withecdsa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA512WITHECDSA", traits: {"smithy.api#enumValue" => "SHA512WITHECDSA"}))
    SigningAlgorithm.add_member(:sha256_withrsa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA256WITHRSA", traits: {"smithy.api#enumValue" => "SHA256WITHRSA"}))
    SigningAlgorithm.add_member(:sha384_withrsa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA384WITHRSA", traits: {"smithy.api#enumValue" => "SHA384WITHRSA"}))
    SigningAlgorithm.add_member(:sha512_withrsa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA512WITHRSA", traits: {"smithy.api#enumValue" => "SHA512WITHRSA"}))
    SigningAlgorithm.add_member(:sm3_withsm2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SM3WITHSM2", traits: {"smithy.api#enumValue" => "SM3WITHSM2"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value"))
    Tag.type = Types::Tag
    TagCertificateAuthorityRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateAuthorityArn", traits: {"smithy.api#required" => {}}))
    TagCertificateAuthorityRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagCertificateAuthorityRequest.type = Types::TagCertificateAuthorityRequest
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagCertificateAuthorityRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateAuthorityArn", traits: {"smithy.api#required" => {}}))
    UntagCertificateAuthorityRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    UntagCertificateAuthorityRequest.type = Types::UntagCertificateAuthorityRequest
    UpdateCertificateAuthorityRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateAuthorityArn", traits: {"smithy.api#required" => {}}))
    UpdateCertificateAuthorityRequest.add_member(:revocation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationConfiguration, name: "RevocationConfiguration"))
    UpdateCertificateAuthorityRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAuthorityStatus, name: "Status"))
    UpdateCertificateAuthorityRequest.type = Types::UpdateCertificateAuthorityRequest
    Validity.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLong, name: "Value", traits: {"smithy.api#required" => {}}))
    Validity.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidityPeriodType, name: "Type", traits: {"smithy.api#required" => {}}))
    Validity.type = Types::Validity
    ValidityPeriodType.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "END_DATE", traits: {"smithy.api#enumValue" => "END_DATE"}))
    ValidityPeriodType.add_member(:absolute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABSOLUTE", traits: {"smithy.api#enumValue" => "ABSOLUTE"}))
    ValidityPeriodType.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAYS", traits: {"smithy.api#enumValue" => "DAYS"}))
    ValidityPeriodType.add_member(:months, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHS", traits: {"smithy.api#enumValue" => "MONTHS"}))
    ValidityPeriodType.add_member(:years, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YEARS", traits: {"smithy.api#enumValue" => "YEARS"}))

    ACMPrivateCA = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.acmpca#ACMPrivateCA"
      service.name = "ACMPrivateCA"
      service.traits = {"aws.api#service" => {"sdkId" => "ACM PCA", "arnNamespace" => "acm-pca", "cloudFormationName" => "ACMPCA", "cloudTrailEventSource" => "acm-pca.amazonaws.com", "docId" => "acm-pca-2017-08-22", "endpointPrefix" => "acm-pca"}, "aws.auth#sigv4" => {"name" => "acm-pca"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Certificate Manager Private Certificate Authority"}
      service.add_operation(:create_certificate_authority, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#CreateCertificateAuthority"
        operation.name = "CreateCertificateAuthority"
        operation.input = CreateCertificateAuthorityRequest
        operation.output = CreateCertificateAuthorityResponse
        operation.errors << InvalidArgsException
        operation.errors << InvalidPolicyException
        operation.errors << InvalidTagException
        operation.errors << LimitExceededException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_certificate_authority_audit_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#CreateCertificateAuthorityAuditReport"
        operation.name = "CreateCertificateAuthorityAuditReport"
        operation.input = CreateCertificateAuthorityAuditReportRequest
        operation.output = CreateCertificateAuthorityAuditReportResponse
        operation.errors << InvalidArgsException
        operation.errors << InvalidArnException
        operation.errors << InvalidStateException
        operation.errors << RequestFailedException
        operation.errors << RequestInProgressException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#CreatePermission"
        operation.name = "CreatePermission"
        operation.input = CreatePermissionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidArnException
        operation.errors << InvalidStateException
        operation.errors << LimitExceededException
        operation.errors << PermissionAlreadyExistsException
        operation.errors << RequestFailedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_certificate_authority, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#DeleteCertificateAuthority"
        operation.name = "DeleteCertificateAuthority"
        operation.input = DeleteCertificateAuthorityRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArnException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#DeletePermission"
        operation.name = "DeletePermission"
        operation.input = DeletePermissionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidArnException
        operation.errors << InvalidStateException
        operation.errors << RequestFailedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#DeletePolicy"
        operation.name = "DeletePolicy"
        operation.input = DeletePolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArnException
        operation.errors << InvalidStateException
        operation.errors << LockoutPreventedException
        operation.errors << RequestFailedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_certificate_authority, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#DescribeCertificateAuthority"
        operation.name = "DescribeCertificateAuthority"
        operation.input = DescribeCertificateAuthorityRequest
        operation.output = DescribeCertificateAuthorityResponse
        operation.errors << InvalidArnException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_certificate_authority_audit_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#DescribeCertificateAuthorityAuditReport"
        operation.name = "DescribeCertificateAuthorityAuditReport"
        operation.input = DescribeCertificateAuthorityAuditReportRequest
        operation.output = DescribeCertificateAuthorityAuditReportResponse
        operation.errors << InvalidArgsException
        operation.errors << InvalidArnException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
      end)
      service.add_operation(:get_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#GetCertificate"
        operation.name = "GetCertificate"
        operation.input = GetCertificateRequest
        operation.output = GetCertificateResponse
        operation.errors << InvalidArnException
        operation.errors << InvalidStateException
        operation.errors << RequestFailedException
        operation.errors << RequestInProgressException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
      end)
      service.add_operation(:get_certificate_authority_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#GetCertificateAuthorityCertificate"
        operation.name = "GetCertificateAuthorityCertificate"
        operation.input = GetCertificateAuthorityCertificateRequest
        operation.output = GetCertificateAuthorityCertificateResponse
        operation.errors << InvalidArnException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_certificate_authority_csr, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#GetCertificateAuthorityCsr"
        operation.name = "GetCertificateAuthorityCsr"
        operation.input = GetCertificateAuthorityCsrRequest
        operation.output = GetCertificateAuthorityCsrResponse
        operation.errors << InvalidArnException
        operation.errors << InvalidStateException
        operation.errors << RequestFailedException
        operation.errors << RequestInProgressException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
      end)
      service.add_operation(:get_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#GetPolicy"
        operation.name = "GetPolicy"
        operation.input = GetPolicyRequest
        operation.output = GetPolicyResponse
        operation.errors << InvalidArnException
        operation.errors << InvalidStateException
        operation.errors << RequestFailedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:import_certificate_authority_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#ImportCertificateAuthorityCertificate"
        operation.name = "ImportCertificateAuthorityCertificate"
        operation.input = ImportCertificateAuthorityCertificateRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << CertificateMismatchException
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArnException
        operation.errors << InvalidRequestException
        operation.errors << InvalidStateException
        operation.errors << MalformedCertificateException
        operation.errors << RequestFailedException
        operation.errors << RequestInProgressException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:issue_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#IssueCertificate"
        operation.name = "IssueCertificate"
        operation.input = IssueCertificateRequest
        operation.output = IssueCertificateResponse
        operation.errors << InvalidArgsException
        operation.errors << InvalidArnException
        operation.errors << InvalidStateException
        operation.errors << LimitExceededException
        operation.errors << MalformedCSRException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_certificate_authorities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#ListCertificateAuthorities"
        operation.name = "ListCertificateAuthorities"
        operation.input = ListCertificateAuthoritiesRequest
        operation.output = ListCertificateAuthoritiesResponse
        operation.errors << InvalidNextTokenException
        operation.traits = {}
        operation[:paginator] = Paginators::ListCertificateAuthorities.new
      end)
      service.add_operation(:list_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#ListPermissions"
        operation.name = "ListPermissions"
        operation.input = ListPermissionsRequest
        operation.output = ListPermissionsResponse
        operation.errors << InvalidArnException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidStateException
        operation.errors << RequestFailedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPermissions.new
      end)
      service.add_operation(:list_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#ListTags"
        operation.name = "ListTags"
        operation.input = ListTagsRequest
        operation.output = ListTagsResponse
        operation.errors << InvalidArnException
        operation.errors << InvalidStateException
        operation.errors << RequestFailedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTags.new
      end)
      service.add_operation(:put_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#PutPolicy"
        operation.name = "PutPolicy"
        operation.input = PutPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArnException
        operation.errors << InvalidPolicyException
        operation.errors << InvalidStateException
        operation.errors << LockoutPreventedException
        operation.errors << RequestFailedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:restore_certificate_authority, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#RestoreCertificateAuthority"
        operation.name = "RestoreCertificateAuthority"
        operation.input = RestoreCertificateAuthorityRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidArnException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:revoke_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#RevokeCertificate"
        operation.name = "RevokeCertificate"
        operation.input = RevokeCertificateRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArnException
        operation.errors << InvalidRequestException
        operation.errors << InvalidStateException
        operation.errors << LimitExceededException
        operation.errors << RequestAlreadyProcessedException
        operation.errors << RequestFailedException
        operation.errors << RequestInProgressException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:tag_certificate_authority, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#TagCertificateAuthority"
        operation.name = "TagCertificateAuthority"
        operation.input = TagCertificateAuthorityRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidArnException
        operation.errors << InvalidStateException
        operation.errors << InvalidTagException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:untag_certificate_authority, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#UntagCertificateAuthority"
        operation.name = "UntagCertificateAuthority"
        operation.input = UntagCertificateAuthorityRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidArnException
        operation.errors << InvalidStateException
        operation.errors << InvalidTagException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_certificate_authority, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acmpca#UpdateCertificateAuthority"
        operation.name = "UpdateCertificateAuthority"
        operation.input = UpdateCertificateAuthorityRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArgsException
        operation.errors << InvalidArnException
        operation.errors << InvalidPolicyException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
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

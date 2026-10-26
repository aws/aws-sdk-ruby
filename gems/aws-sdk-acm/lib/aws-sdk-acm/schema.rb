# frozen_string_literal: true

# This is generated code!

module Aws::ACM
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#AccessDeniedException", name: "AccessDeniedException", traits: {"aws.protocols#awsQueryError" => {"code" => "AccessDenied", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AcmCertificateMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#AcmCertificateMetadata", name: "AcmCertificateMetadata")
    AcmCertificateMetadataFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.acm#AcmCertificateMetadataFilter", name: "AcmCertificateMetadataFilter")
    AcmeAccount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#AcmeAccount", name: "AcmeAccount")
    AcmeAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#AcmeAccountId", name: "AcmeAccountId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}})
    AcmeAccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#AcmeAccountList", name: "AcmeAccountList")
    AcmeAccountStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#AcmeAccountStatus", name: "AcmeAccountStatus")
    AcmeAccountSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#AcmeAccountSummary", name: "AcmeAccountSummary")
    AcmeAuthorizationBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#AcmeAuthorizationBehavior", name: "AcmeAuthorizationBehavior")
    AcmeContact = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#AcmeContact", name: "AcmeContact")
    AcmeDomainValidation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#AcmeDomainValidation", name: "AcmeDomainValidation")
    AcmeDomainValidationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#AcmeDomainValidationArn", name: "AcmeDomainValidationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^arn:aws[a-z-]*:acm:[a-z0-9-]+:[0-9]{12}:acme-endpoint/[a-zA-Z0-9-]+/acme-domain-validation/[a-zA-Z0-9-]+$"})
    AcmeDomainValidationFailureReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#AcmeDomainValidationFailureReason", name: "AcmeDomainValidationFailureReason")
    AcmeDomainValidationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#AcmeDomainValidationList", name: "AcmeDomainValidationList")
    AcmeDomainValidationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#AcmeDomainValidationStatus", name: "AcmeDomainValidationStatus")
    AcmeDomainValidationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#AcmeDomainValidationSummary", name: "AcmeDomainValidationSummary")
    AcmeEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#AcmeEndpoint", name: "AcmeEndpoint")
    AcmeEndpointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#AcmeEndpointArn", name: "AcmeEndpointArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^arn:aws[a-z-]*:acm:[a-z0-9-]+:[0-9]{12}:acme-endpoint/[a-zA-Z0-9-]+$"})
    AcmeEndpointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#AcmeEndpointList", name: "AcmeEndpointList")
    AcmeEndpointStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#AcmeEndpointStatus", name: "AcmeEndpointStatus")
    AcmeEndpointSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#AcmeEndpointSummary", name: "AcmeEndpointSummary")
    AcmeExternalAccountBinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#AcmeExternalAccountBinding", name: "AcmeExternalAccountBinding")
    AcmeExternalAccountBindingArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#AcmeExternalAccountBindingArn", name: "AcmeExternalAccountBindingArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^arn:aws[a-z-]*:acm:[a-z0-9-]+:[0-9]{12}:acme-endpoint/[a-zA-Z0-9-]+/acme-external-account-binding/[a-zA-Z0-9-]+$"})
    AcmeExternalAccountBindingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#AcmeExternalAccountBindingList", name: "AcmeExternalAccountBindingList")
    AcmeExternalAccountBindingSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#AcmeExternalAccountBindingSummary", name: "AcmeExternalAccountBindingSummary")
    AddTagsToCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#AddTagsToCertificateRequest", name: "AddTagsToCertificateRequest")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:acm:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*$"})
    AvailabilityErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#AvailabilityErrorMessage", name: "AvailabilityErrorMessage")
    CertificateArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#CertificateArn", name: "CertificateArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:acm:[\\w+=/,.@-]*:[0-9]+:certificate/[\\w+=,.@-]+"})
    CertificateAuthority = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.acm#CertificateAuthority", name: "CertificateAuthority")
    CertificateBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#CertificateBody", name: "CertificateBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}, "smithy.api#pattern" => "^-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}(\\u000D?\\u000A)?$"})
    CertificateBodyBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.acm#CertificateBodyBlob", name: "CertificateBodyBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}})
    CertificateChain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#CertificateChain", name: "CertificateChain", traits: {"smithy.api#length" => {"min" => 1, "max" => 2097152}, "smithy.api#pattern" => "^(-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}\\u000D?\\u000A)*-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}(\\u000D?\\u000A)?$"})
    CertificateChainBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.acm#CertificateChainBlob", name: "CertificateChainBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 2097152}})
    CertificateDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#CertificateDetail", name: "CertificateDetail")
    CertificateExport = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#CertificateExport", name: "CertificateExport")
    CertificateFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.acm#CertificateFilter", name: "CertificateFilter")
    CertificateFilterStatement = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.acm#CertificateFilterStatement", name: "CertificateFilterStatement")
    CertificateFilterStatementList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#CertificateFilterStatementList", name: "CertificateFilterStatementList", traits: {"smithy.api#length" => {"min" => 1, "max" => 15}})
    CertificateKeyPairOrigin = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#CertificateKeyPairOrigin", name: "CertificateKeyPairOrigin")
    CertificateKeyPairOrigins = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#CertificateKeyPairOrigins", name: "CertificateKeyPairOrigins", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    CertificateManagedBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#CertificateManagedBy", name: "CertificateManagedBy")
    CertificateMetadata = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.acm#CertificateMetadata", name: "CertificateMetadata")
    CertificateOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#CertificateOptions", name: "CertificateOptions")
    CertificateSearchResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#CertificateSearchResult", name: "CertificateSearchResult")
    CertificateSearchResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#CertificateSearchResultList", name: "CertificateSearchResultList")
    CertificateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#CertificateStatus", name: "CertificateStatus")
    CertificateStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#CertificateStatuses", name: "CertificateStatuses")
    CertificateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#CertificateSummary", name: "CertificateSummary")
    CertificateSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#CertificateSummaryList", name: "CertificateSummaryList")
    CertificateTransparencyLoggingPreference = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#CertificateTransparencyLoggingPreference", name: "CertificateTransparencyLoggingPreference", traits: {"smithy.api#deprecated" => {"message" => "Certificate transparency logging opt-out is no longer available.", "since" => "12th June 2026"}})
    CertificateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#CertificateType", name: "CertificateType")
    CommonNameFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#CommonNameFilter", name: "CommonNameFilter")
    ComparisonOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#ComparisonOperator", name: "ComparisonOperator")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client"})
    ContactList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#ContactList", name: "ContactList", traits: {"smithy.api#sensitive" => {}})
    CoralAvailabilityThrottledResource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#CoralAvailabilityThrottledResource", name: "CoralAvailabilityThrottledResource")
    CoralAvailabilityThrottlingReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#CoralAvailabilityThrottlingReason", name: "CoralAvailabilityThrottlingReason")
    CreateAcmeDomainValidationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#CreateAcmeDomainValidationRequest", name: "CreateAcmeDomainValidationRequest")
    CreateAcmeDomainValidationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#CreateAcmeDomainValidationResponse", name: "CreateAcmeDomainValidationResponse")
    CreateAcmeEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#CreateAcmeEndpointRequest", name: "CreateAcmeEndpointRequest")
    CreateAcmeEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#CreateAcmeEndpointResponse", name: "CreateAcmeEndpointResponse")
    CreateAcmeExternalAccountBindingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#CreateAcmeExternalAccountBindingRequest", name: "CreateAcmeExternalAccountBindingRequest")
    CreateAcmeExternalAccountBindingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#CreateAcmeExternalAccountBindingResponse", name: "CreateAcmeExternalAccountBindingResponse")
    CustomAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#CustomAttribute", name: "CustomAttribute")
    CustomAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#CustomAttributeList", name: "CustomAttributeList")
    DeleteAcmeDomainValidationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DeleteAcmeDomainValidationRequest", name: "DeleteAcmeDomainValidationRequest", traits: {"smithy.api#references" => []})
    DeleteAcmeEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DeleteAcmeEndpointRequest", name: "DeleteAcmeEndpointRequest")
    DeleteAcmeExternalAccountBindingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DeleteAcmeExternalAccountBindingRequest", name: "DeleteAcmeExternalAccountBindingRequest", traits: {"smithy.api#references" => []})
    DeleteCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DeleteCertificateRequest", name: "DeleteCertificateRequest")
    DescribeAcmeAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DescribeAcmeAccountRequest", name: "DescribeAcmeAccountRequest")
    DescribeAcmeAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DescribeAcmeAccountResponse", name: "DescribeAcmeAccountResponse")
    DescribeAcmeDomainValidationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DescribeAcmeDomainValidationRequest", name: "DescribeAcmeDomainValidationRequest", traits: {"smithy.api#references" => []})
    DescribeAcmeDomainValidationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DescribeAcmeDomainValidationResponse", name: "DescribeAcmeDomainValidationResponse")
    DescribeAcmeEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DescribeAcmeEndpointRequest", name: "DescribeAcmeEndpointRequest")
    DescribeAcmeEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DescribeAcmeEndpointResponse", name: "DescribeAcmeEndpointResponse")
    DescribeAcmeExternalAccountBindingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DescribeAcmeExternalAccountBindingRequest", name: "DescribeAcmeExternalAccountBindingRequest", traits: {"smithy.api#references" => []})
    DescribeAcmeExternalAccountBindingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DescribeAcmeExternalAccountBindingResponse", name: "DescribeAcmeExternalAccountBindingResponse")
    DescribeCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DescribeCertificateRequest", name: "DescribeCertificateRequest")
    DescribeCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DescribeCertificateResponse", name: "DescribeCertificateResponse")
    DistinguishedName = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DistinguishedName", name: "DistinguishedName")
    DnsNameFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DnsNameFilter", name: "DnsNameFilter")
    DnsPrevalidationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DnsPrevalidationDetails", name: "DnsPrevalidationDetails")
    DnsPrevalidationOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DnsPrevalidationOptions", name: "DnsPrevalidationOptions")
    DnsValidationChallenge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DnsValidationChallenge", name: "DnsValidationChallenge")
    DomainComponentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#DomainComponentList", name: "DomainComponentList")
    DomainList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#DomainList", name: "DomainList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#DomainName", name: "DomainName", traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "^([a-z0-9]([a-z0-9-]*[a-z0-9])?\\.)*[a-z0-9]([a-z0-9-]*[a-z0-9])?$"})
    DomainNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#DomainNameString", name: "DomainNameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "^(\\*\\.)?(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"})
    DomainScope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DomainScope", name: "DomainScope")
    DomainScopeOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#DomainScopeOption", name: "DomainScopeOption")
    DomainStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#DomainStatus", name: "DomainStatus")
    DomainValidation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DomainValidation", name: "DomainValidation")
    DomainValidationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#DomainValidationList", name: "DomainValidationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    DomainValidationMethodUpdateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DomainValidationMethodUpdateSummary", name: "DomainValidationMethodUpdateSummary")
    DomainValidationOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DomainValidationOption", name: "DomainValidationOption")
    DomainValidationOptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#DomainValidationOptionList", name: "DomainValidationOptionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    DomainValidationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DomainValidationSummary", name: "DomainValidationSummary")
    DomainValidationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#DomainValidationSummaryList", name: "DomainValidationSummaryList")
    EmailValidationChallenge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#EmailValidationChallenge", name: "EmailValidationChallenge")
    Expiration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#Expiration", name: "Expiration")
    ExpiryEventsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ExpiryEventsConfiguration", name: "ExpiryEventsConfiguration")
    ExportCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ExportCertificateRequest", name: "ExportCertificateRequest")
    ExportCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ExportCertificateResponse", name: "ExportCertificateResponse")
    ExtendedKeyUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ExtendedKeyUsage", name: "ExtendedKeyUsage")
    ExtendedKeyUsageFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#ExtendedKeyUsageFilterList", name: "ExtendedKeyUsageFilterList")
    ExtendedKeyUsageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#ExtendedKeyUsageList", name: "ExtendedKeyUsageList")
    ExtendedKeyUsageName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#ExtendedKeyUsageName", name: "ExtendedKeyUsageName")
    ExtendedKeyUsageNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#ExtendedKeyUsageNames", name: "ExtendedKeyUsageNames")
    FailureDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#FailureDetails", name: "FailureDetails")
    FailureReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#FailureReason", name: "FailureReason")
    FilterString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#FilterString", name: "FilterString", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Filters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#Filters", name: "Filters")
    GeneralName = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.acm#GeneralName", name: "GeneralName")
    GeneralNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#GeneralNameList", name: "GeneralNameList")
    GetAccountConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#GetAccountConfigurationResponse", name: "GetAccountConfigurationResponse")
    GetAcmeExternalAccountBindingCredentialsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#GetAcmeExternalAccountBindingCredentialsRequest", name: "GetAcmeExternalAccountBindingCredentialsRequest", traits: {"smithy.api#references" => []})
    GetAcmeExternalAccountBindingCredentialsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#GetAcmeExternalAccountBindingCredentialsResponse", name: "GetAcmeExternalAccountBindingCredentialsResponse")
    GetCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#GetCertificateRequest", name: "GetCertificateRequest")
    GetCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#GetCertificateResponse", name: "GetCertificateResponse")
    HostedZoneId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#HostedZoneId", name: "HostedZoneId", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^Z[A-Z0-9]+$"})
    HttpRedirect = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#HttpRedirect", name: "HttpRedirect")
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#IdempotencyToken", name: "IdempotencyToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^\\w+$"})
    ImportCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ImportCertificateRequest", name: "ImportCertificateRequest")
    ImportCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ImportCertificateResponse", name: "ImportCertificateResponse")
    InUseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#InUseList", name: "InUseList")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#retryable" => {}})
    InvalidArgsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#InvalidArgsException", name: "InvalidArgsException", traits: {"smithy.api#error" => "client"})
    InvalidArnException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#InvalidArnException", name: "InvalidArnException", traits: {"smithy.api#error" => "client"})
    InvalidDomainValidationOptionsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#InvalidDomainValidationOptionsException", name: "InvalidDomainValidationOptionsException", traits: {"smithy.api#error" => "client"})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client"})
    InvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#InvalidStateException", name: "InvalidStateException", traits: {"smithy.api#error" => "client"})
    InvalidTagException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#InvalidTagException", name: "InvalidTagException", traits: {"smithy.api#error" => "client"})
    KeyAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#KeyAlgorithm", name: "KeyAlgorithm")
    KeyAlgorithmList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#KeyAlgorithmList", name: "KeyAlgorithmList")
    KeyUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#KeyUsage", name: "KeyUsage")
    KeyUsageFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#KeyUsageFilterList", name: "KeyUsageFilterList")
    KeyUsageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#KeyUsageList", name: "KeyUsageList")
    KeyUsageName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#KeyUsageName", name: "KeyUsageName")
    KeyUsageNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#KeyUsageNames", name: "KeyUsageNames")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    ListAcmeAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ListAcmeAccountsRequest", name: "ListAcmeAccountsRequest")
    ListAcmeAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ListAcmeAccountsResponse", name: "ListAcmeAccountsResponse")
    ListAcmeDomainValidationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ListAcmeDomainValidationsRequest", name: "ListAcmeDomainValidationsRequest")
    ListAcmeDomainValidationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ListAcmeDomainValidationsResponse", name: "ListAcmeDomainValidationsResponse")
    ListAcmeEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ListAcmeEndpointsRequest", name: "ListAcmeEndpointsRequest")
    ListAcmeEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ListAcmeEndpointsResponse", name: "ListAcmeEndpointsResponse")
    ListAcmeExternalAccountBindingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ListAcmeExternalAccountBindingsRequest", name: "ListAcmeExternalAccountBindingsRequest")
    ListAcmeExternalAccountBindingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ListAcmeExternalAccountBindingsResponse", name: "ListAcmeExternalAccountBindingsResponse")
    ListCertificateDomainValidationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ListCertificateDomainValidationsRequest", name: "ListCertificateDomainValidationsRequest")
    ListCertificateDomainValidationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ListCertificateDomainValidationsResponse", name: "ListCertificateDomainValidationsResponse")
    ListCertificatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ListCertificatesRequest", name: "ListCertificatesRequest")
    ListCertificatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ListCertificatesResponse", name: "ListCertificatesResponse")
    ListTagsForCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ListTagsForCertificateRequest", name: "ListTagsForCertificateRequest")
    ListTagsForCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ListTagsForCertificateResponse", name: "ListTagsForCertificateResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MacKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#MacKey", name: "MacKey", traits: {"smithy.api#sensitive" => {}})
    MaxItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.acm#MaxItems", name: "MaxItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]*$"})
    NullableBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.acm#NullableBoolean", name: "NullableBoolean")
    OtherName = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#OtherName", name: "OtherName")
    PassphraseBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.acm#PassphraseBlob", name: "PassphraseBlob", traits: {"smithy.api#length" => {"min" => 4, "max" => 128}, "smithy.api#sensitive" => {}})
    PcaArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#PcaArn", name: "PcaArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:acm-pca:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*$"})
    PositiveInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.acm#PositiveInteger", name: "PositiveInteger", traits: {"smithy.api#range" => {"min" => 1}})
    PrevalidationDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.acm#PrevalidationDetails", name: "PrevalidationDetails")
    PrevalidationOptions = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.acm#PrevalidationOptions", name: "PrevalidationOptions")
    PrevalidationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#PrevalidationType", name: "PrevalidationType")
    PrivateKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#PrivateKey", name: "PrivateKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 524288}, "smithy.api#pattern" => "^-{5}BEGIN PRIVATE KEY-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END PRIVATE KEY-{5}(\\u000D?\\u000A)?$", "smithy.api#sensitive" => {}})
    PrivateKeyBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.acm#PrivateKeyBlob", name: "PrivateKeyBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 5120}, "smithy.api#sensitive" => {}})
    PublicCertificateAuthority = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#PublicCertificateAuthority", name: "PublicCertificateAuthority")
    PublicKeyAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#PublicKeyAlgorithm", name: "PublicKeyAlgorithm")
    PublicKeyAlgorithmList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#PublicKeyAlgorithmList", name: "PublicKeyAlgorithmList")
    PutAccountConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#PutAccountConfigurationRequest", name: "PutAccountConfigurationRequest")
    RecordType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#RecordType", name: "RecordType")
    RemoveTagsFromCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#RemoveTagsFromCertificateRequest", name: "RemoveTagsFromCertificateRequest")
    RenewCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#RenewCertificateRequest", name: "RenewCertificateRequest")
    RenewalEligibility = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#RenewalEligibility", name: "RenewalEligibility")
    RenewalStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#RenewalStatus", name: "RenewalStatus")
    RenewalSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#RenewalSummary", name: "RenewalSummary")
    RequestCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#RequestCertificateRequest", name: "RequestCertificateRequest")
    RequestCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#RequestCertificateResponse", name: "RequestCertificateResponse")
    RequestInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#RequestInProgressException", name: "RequestInProgressException", traits: {"smithy.api#error" => "client"})
    ResendValidationEmailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ResendValidationEmailRequest", name: "ResendValidationEmailRequest")
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    ResourceRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ResourceRecord", name: "ResourceRecord")
    RevocationReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#RevocationReason", name: "RevocationReason")
    RevokeAcmeAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#RevokeAcmeAccountRequest", name: "RevokeAcmeAccountRequest")
    RevokeAcmeExternalAccountBindingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#RevokeAcmeExternalAccountBindingRequest", name: "RevokeAcmeExternalAccountBindingRequest", traits: {"smithy.api#references" => []})
    RevokeCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#RevokeCertificateRequest", name: "RevokeCertificateRequest")
    RevokeCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#RevokeCertificateResponse", name: "RevokeCertificateResponse")
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z-]*:iam::[0-9]{12}:role/.+$"})
    SearchCertificatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#SearchCertificatesRequest", name: "SearchCertificatesRequest")
    SearchCertificatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#SearchCertificatesResponse", name: "SearchCertificatesResponse")
    SearchCertificatesSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#SearchCertificatesSortBy", name: "SearchCertificatesSortBy")
    SearchCertificatesSortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#SearchCertificatesSortOrder", name: "SearchCertificatesSortOrder")
    SearchMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.acm#SearchMaxResults", name: "SearchMaxResults", traits: {"smithy.api#default" => 100, "smithy.api#range" => {"min" => 1, "max" => 500}})
    SerialNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#SerialNumber", name: "SerialNumber", traits: {"smithy.api#length" => {"min" => 2, "max" => 59}, "smithy.api#pattern" => "^[0-9a-f]{2}(:[0-9a-f]{2}){1,19}$"})
    ServiceErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#ServiceErrorMessage", name: "ServiceErrorMessage")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client"})
    SortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#SortBy", name: "SortBy")
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#SortOrder", name: "SortOrder")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#String", name: "String")
    SubjectAlternativeNameFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.acm#SubjectAlternativeNameFilter", name: "SubjectAlternativeNameFilter")
    SubjectFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.acm#SubjectFilter", name: "SubjectFilter")
    TStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.acm#TStamp", name: "TStamp")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#TagPolicyException", name: "TagPolicyException", traits: {"smithy.api#error" => "client"})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#TagResourceRequest", name: "TagResourceRequest")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ThrottlingException", name: "ThrottlingException", traits: {"aws.protocols#awsQueryError" => {"code" => "Throttling", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ThrottlingReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ThrottlingReason", name: "ThrottlingReason")
    ThrottlingReasonList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#ThrottlingReasonList", name: "ThrottlingReasonList")
    TimeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#TimeType", name: "TimeType")
    TimestampRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#TimestampRange", name: "TimestampRange")
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateAcmeDomainValidationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#UpdateAcmeDomainValidationRequest", name: "UpdateAcmeDomainValidationRequest", traits: {"smithy.api#references" => []})
    UpdateAcmeEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#UpdateAcmeEndpointRequest", name: "UpdateAcmeEndpointRequest")
    UpdateCertificateOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#UpdateCertificateOptionsRequest", name: "UpdateCertificateOptionsRequest")
    UpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#UpdateStatus", name: "UpdateStatus")
    UpdateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#UpdateSummary", name: "UpdateSummary")
    UpdateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#UpdateType", name: "UpdateType")
    ValidationChallenge = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.acm#ValidationChallenge", name: "ValidationChallenge")
    ValidationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ValidationConfiguration", name: "ValidationConfiguration")
    ValidationEmailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#ValidationEmailList", name: "ValidationEmailList")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ValidationException", name: "ValidationException", traits: {"aws.protocols#awsQueryError" => {"code" => "ValidationError", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#ValidationExceptionMessage", name: "ValidationExceptionMessage")
    ValidationMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#ValidationMethod", name: "ValidationMethod")
    X509AttributeFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.acm#X509AttributeFilter", name: "X509AttributeFilter")
    X509Attributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#X509Attributes", name: "X509Attributes")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceErrorMessage, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AcmCertificateMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreatedAt"))
    AcmCertificateMetadata.add_member(:exported, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "Exported"))
    AcmCertificateMetadata.add_member(:imported_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ImportedAt"))
    AcmCertificateMetadata.add_member(:in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "InUse"))
    AcmCertificateMetadata.add_member(:issued_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "IssuedAt"))
    AcmCertificateMetadata.add_member(:renewal_eligibility, ::Smithy::Schema::Shapes::MemberShape.new(target: RenewalEligibility, name: "RenewalEligibility"))
    AcmCertificateMetadata.add_member(:revoked_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "RevokedAt"))
    AcmCertificateMetadata.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateStatus, name: "Status"))
    AcmCertificateMetadata.add_member(:renewal_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RenewalStatus, name: "RenewalStatus"))
    AcmCertificateMetadata.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "Type"))
    AcmCertificateMetadata.add_member(:export_option, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateExport, name: "ExportOption"))
    AcmCertificateMetadata.add_member(:managed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateManagedBy, name: "ManagedBy"))
    AcmCertificateMetadata.add_member(:validation_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationMethod, name: "ValidationMethod"))
    AcmCertificateMetadata.add_member(:certificate_key_pair_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateKeyPairOrigin, name: "CertificateKeyPairOrigin"))
    AcmCertificateMetadata.add_member(:acme_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "AcmeEndpointArn"))
    AcmCertificateMetadata.add_member(:acme_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeAccountId, name: "AcmeAccountId"))
    AcmCertificateMetadata.type = Types::AcmCertificateMetadata
    AcmCertificateMetadataFilter.add_member(:status, Types::AcmCertificateMetadataFilter::Status, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateStatus, name: "Status"))
    AcmCertificateMetadataFilter.add_member(:renewal_status, Types::AcmCertificateMetadataFilter::RenewalStatus, ::Smithy::Schema::Shapes::MemberShape.new(target: RenewalStatus, name: "RenewalStatus"))
    AcmCertificateMetadataFilter.add_member(:type, Types::AcmCertificateMetadataFilter::Type, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "Type"))
    AcmCertificateMetadataFilter.add_member(:in_use, Types::AcmCertificateMetadataFilter::InUse, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "InUse"))
    AcmCertificateMetadataFilter.add_member(:exported, Types::AcmCertificateMetadataFilter::Exported, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "Exported"))
    AcmCertificateMetadataFilter.add_member(:export_option, Types::AcmCertificateMetadataFilter::ExportOption, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateExport, name: "ExportOption"))
    AcmCertificateMetadataFilter.add_member(:managed_by, Types::AcmCertificateMetadataFilter::ManagedBy, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateManagedBy, name: "ManagedBy"))
    AcmCertificateMetadataFilter.add_member(:validation_method, Types::AcmCertificateMetadataFilter::ValidationMethod, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationMethod, name: "ValidationMethod"))
    AcmCertificateMetadataFilter.add_member(:certificate_key_pair_origin, Types::AcmCertificateMetadataFilter::CertificateKeyPairOrigin, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateKeyPairOrigin, name: "CertificateKeyPairOrigin"))
    AcmCertificateMetadataFilter.add_member(:acme_endpoint_arn, Types::AcmCertificateMetadataFilter::AcmeEndpointArn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "AcmeEndpointArn"))
    AcmCertificateMetadataFilter.add_member(:acme_account_id, Types::AcmCertificateMetadataFilter::AcmeAccountId, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeAccountId, name: "AcmeAccountId"))
    AcmCertificateMetadataFilter.add_member(:unknown, Types::AcmCertificateMetadataFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AcmCertificateMetadataFilter.type = Types::AcmCertificateMetadataFilter
    AcmeAccount.add_member(:account_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AccountUrl"))
    AcmeAccount.add_member(:public_key_thumbprint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PublicKeyThumbprint"))
    AcmeAccount.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeAccountStatus, name: "Status"))
    AcmeAccount.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    AcmeAccount.add_member(:acme_external_account_binding_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeExternalAccountBindingArn, name: "AcmeExternalAccountBindingArn"))
    AcmeAccount.add_member(:contacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactList, name: "Contacts"))
    AcmeAccount.type = Types::AcmeAccount
    AcmeAccountList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeAccountSummary, name: "member"))
    AcmeAccountStatus.add_member(:valid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALID", traits: {"smithy.api#enumValue" => "VALID"}))
    AcmeAccountStatus.add_member(:deactivated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEACTIVATED", traits: {"smithy.api#enumValue" => "DEACTIVATED"}))
    AcmeAccountStatus.add_member(:revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVOKED", traits: {"smithy.api#enumValue" => "REVOKED"}))
    AcmeAccountSummary.add_member(:account_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AccountUrl"))
    AcmeAccountSummary.add_member(:public_key_thumbprint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PublicKeyThumbprint"))
    AcmeAccountSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeAccountStatus, name: "Status"))
    AcmeAccountSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    AcmeAccountSummary.add_member(:acme_external_account_binding_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeExternalAccountBindingArn, name: "AcmeExternalAccountBindingArn"))
    AcmeAccountSummary.add_member(:contacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactList, name: "Contacts"))
    AcmeAccountSummary.type = Types::AcmeAccountSummary
    AcmeAuthorizationBehavior.add_member(:pre_approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_APPROVED", traits: {"smithy.api#enumValue" => "PRE_APPROVED"}))
    AcmeContact.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRED", traits: {"smithy.api#enumValue" => "REQUIRED"}))
    AcmeContact.add_member(:not_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_REQUIRED", traits: {"smithy.api#enumValue" => "NOT_REQUIRED"}))
    AcmeDomainValidation.add_member(:acme_domain_validation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeDomainValidationArn, name: "AcmeDomainValidationArn"))
    AcmeDomainValidation.add_member(:acme_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeEndpointArn, name: "AcmeEndpointArn"))
    AcmeDomainValidation.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "DomainName"))
    AcmeDomainValidation.add_member(:prevalidation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrevalidationType, name: "PrevalidationType"))
    AcmeDomainValidation.add_member(:prevalidation_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PrevalidationDetails, name: "PrevalidationDetails"))
    AcmeDomainValidation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeDomainValidationStatus, name: "Status"))
    AcmeDomainValidation.add_member(:failure_details, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureDetails, name: "FailureDetails"))
    AcmeDomainValidation.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    AcmeDomainValidation.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt"))
    AcmeDomainValidation.type = Types::AcmeDomainValidation
    AcmeDomainValidationFailureReason.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    AcmeDomainValidationFailureReason.add_member(:domain_mismatch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN_MISMATCH", traits: {"smithy.api#enumValue" => "DOMAIN_MISMATCH"}))
    AcmeDomainValidationFailureReason.add_member(:domain_not_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN_NOT_ALLOWED", traits: {"smithy.api#enumValue" => "DOMAIN_NOT_ALLOWED"}))
    AcmeDomainValidationFailureReason.add_member(:endpoint_not_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENDPOINT_NOT_ACTIVE", traits: {"smithy.api#enumValue" => "ENDPOINT_NOT_ACTIVE"}))
    AcmeDomainValidationFailureReason.add_member(:hosted_zone_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOSTED_ZONE_NOT_FOUND", traits: {"smithy.api#enumValue" => "HOSTED_ZONE_NOT_FOUND"}))
    AcmeDomainValidationFailureReason.add_member(:internal_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_FAILURE", traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    AcmeDomainValidationFailureReason.add_member(:invalid_change_batch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_CHANGE_BATCH", traits: {"smithy.api#enumValue" => "INVALID_CHANGE_BATCH"}))
    AcmeDomainValidationFailureReason.add_member(:invalid_public_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PUBLIC_DOMAIN", traits: {"smithy.api#enumValue" => "INVALID_PUBLIC_DOMAIN"}))
    AcmeDomainValidationFailureReason.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    AcmeDomainValidationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeDomainValidationSummary, name: "member"))
    AcmeDomainValidationStatus.add_member(:validating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATING", traits: {"smithy.api#enumValue" => "VALIDATING"}))
    AcmeDomainValidationStatus.add_member(:valid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALID", traits: {"smithy.api#enumValue" => "VALID"}))
    AcmeDomainValidationStatus.add_member(:invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID", traits: {"smithy.api#enumValue" => "INVALID"}))
    AcmeDomainValidationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    AcmeDomainValidationSummary.add_member(:acme_domain_validation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeDomainValidationArn, name: "AcmeDomainValidationArn"))
    AcmeDomainValidationSummary.add_member(:acme_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeEndpointArn, name: "AcmeEndpointArn"))
    AcmeDomainValidationSummary.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "DomainName"))
    AcmeDomainValidationSummary.add_member(:prevalidation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrevalidationType, name: "PrevalidationType"))
    AcmeDomainValidationSummary.add_member(:prevalidation_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PrevalidationDetails, name: "PrevalidationDetails"))
    AcmeDomainValidationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeDomainValidationStatus, name: "Status"))
    AcmeDomainValidationSummary.add_member(:failure_details, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureDetails, name: "FailureDetails"))
    AcmeDomainValidationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    AcmeDomainValidationSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt"))
    AcmeDomainValidationSummary.type = Types::AcmeDomainValidationSummary
    AcmeEndpoint.add_member(:acme_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeEndpointArn, name: "AcmeEndpointArn"))
    AcmeEndpoint.add_member(:endpoint_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EndpointUrl"))
    AcmeEndpoint.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeEndpointStatus, name: "Status"))
    AcmeEndpoint.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FailureReason"))
    AcmeEndpoint.add_member(:authorization_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeAuthorizationBehavior, name: "AuthorizationBehavior"))
    AcmeEndpoint.add_member(:contact, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeContact, name: "Contact"))
    AcmeEndpoint.add_member(:certificate_authority, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAuthority, name: "CertificateAuthority"))
    AcmeEndpoint.add_member(:certificate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "CertificateTags"))
    AcmeEndpoint.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    AcmeEndpoint.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt"))
    AcmeEndpoint.type = Types::AcmeEndpoint
    AcmeEndpointList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeEndpointSummary, name: "member"))
    AcmeEndpointStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    AcmeEndpointStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AcmeEndpointStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    AcmeEndpointStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AcmeEndpointSummary.add_member(:acme_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeEndpointArn, name: "AcmeEndpointArn"))
    AcmeEndpointSummary.add_member(:endpoint_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EndpointUrl"))
    AcmeEndpointSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeEndpointStatus, name: "Status"))
    AcmeEndpointSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FailureReason"))
    AcmeEndpointSummary.add_member(:authorization_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeAuthorizationBehavior, name: "AuthorizationBehavior"))
    AcmeEndpointSummary.add_member(:contact, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeContact, name: "Contact"))
    AcmeEndpointSummary.add_member(:certificate_authority, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAuthority, name: "CertificateAuthority"))
    AcmeEndpointSummary.add_member(:certificate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "CertificateTags"))
    AcmeEndpointSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    AcmeEndpointSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt"))
    AcmeEndpointSummary.type = Types::AcmeEndpointSummary
    AcmeExternalAccountBinding.add_member(:acme_external_account_binding_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeExternalAccountBindingArn, name: "AcmeExternalAccountBindingArn"))
    AcmeExternalAccountBinding.add_member(:acme_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeEndpointArn, name: "AcmeEndpointArn"))
    AcmeExternalAccountBinding.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    AcmeExternalAccountBinding.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ExpiresAt"))
    AcmeExternalAccountBinding.add_member(:revoked_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "RevokedAt"))
    AcmeExternalAccountBinding.add_member(:last_used_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUsedAt"))
    AcmeExternalAccountBinding.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    AcmeExternalAccountBinding.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt"))
    AcmeExternalAccountBinding.type = Types::AcmeExternalAccountBinding
    AcmeExternalAccountBindingList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeExternalAccountBindingSummary, name: "member"))
    AcmeExternalAccountBindingSummary.add_member(:acme_external_account_binding_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeExternalAccountBindingArn, name: "AcmeExternalAccountBindingArn"))
    AcmeExternalAccountBindingSummary.add_member(:acme_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeEndpointArn, name: "AcmeEndpointArn"))
    AcmeExternalAccountBindingSummary.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    AcmeExternalAccountBindingSummary.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ExpiresAt"))
    AcmeExternalAccountBindingSummary.add_member(:revoked_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "RevokedAt"))
    AcmeExternalAccountBindingSummary.add_member(:last_used_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUsedAt"))
    AcmeExternalAccountBindingSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    AcmeExternalAccountBindingSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "UpdatedAt"))
    AcmeExternalAccountBindingSummary.type = Types::AcmeExternalAccountBindingSummary
    AddTagsToCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn", traits: {"smithy.api#required" => {}}))
    AddTagsToCertificateRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    AddTagsToCertificateRequest.type = Types::AddTagsToCertificateRequest
    CertificateAuthority.add_member(:public_certificate_authority, Types::CertificateAuthority::PublicCertificateAuthority, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicCertificateAuthority, name: "PublicCertificateAuthority"))
    CertificateAuthority.add_member(:unknown, Types::CertificateAuthority::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CertificateAuthority.type = Types::CertificateAuthority
    CertificateDetail.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn"))
    CertificateDetail.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameString, name: "DomainName"))
    CertificateDetail.add_member(:subject_alternative_names, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainList, name: "SubjectAlternativeNames"))
    CertificateDetail.add_member(:managed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateManagedBy, name: "ManagedBy"))
    CertificateDetail.add_member(:domain_validation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainValidationList, name: "DomainValidationOptions"))
    CertificateDetail.add_member(:serial, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Serial"))
    CertificateDetail.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Subject"))
    CertificateDetail.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Issuer"))
    CertificateDetail.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreatedAt"))
    CertificateDetail.add_member(:issued_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "IssuedAt"))
    CertificateDetail.add_member(:imported_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ImportedAt"))
    CertificateDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateStatus, name: "Status"))
    CertificateDetail.add_member(:revoked_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "RevokedAt"))
    CertificateDetail.add_member(:revocation_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationReason, name: "RevocationReason"))
    CertificateDetail.add_member(:not_before, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "NotBefore"))
    CertificateDetail.add_member(:not_after, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "NotAfter"))
    CertificateDetail.add_member(:key_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAlgorithm, name: "KeyAlgorithm"))
    CertificateDetail.add_member(:signature_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SignatureAlgorithm"))
    CertificateDetail.add_member(:in_use_by, ::Smithy::Schema::Shapes::MemberShape.new(target: InUseList, name: "InUseBy"))
    CertificateDetail.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "FailureReason"))
    CertificateDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "Type"))
    CertificateDetail.add_member(:renewal_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: RenewalSummary, name: "RenewalSummary"))
    CertificateDetail.add_member(:key_usages, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyUsageList, name: "KeyUsages"))
    CertificateDetail.add_member(:extended_key_usages, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedKeyUsageList, name: "ExtendedKeyUsages"))
    CertificateDetail.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateAuthorityArn"))
    CertificateDetail.add_member(:renewal_eligibility, ::Smithy::Schema::Shapes::MemberShape.new(target: RenewalEligibility, name: "RenewalEligibility"))
    CertificateDetail.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateOptions, name: "Options"))
    CertificateDetail.add_member(:update_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateSummary, name: "UpdateSummary"))
    CertificateDetail.add_member(:certificate_key_pair_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateKeyPairOrigin, name: "CertificateKeyPairOrigin"))
    CertificateDetail.add_member(:acme_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "AcmeEndpointArn"))
    CertificateDetail.add_member(:acme_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeAccountId, name: "AcmeAccountId"))
    CertificateDetail.type = Types::CertificateDetail
    CertificateExport.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    CertificateExport.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    CertificateFilter.add_member(:certificate_arn, Types::CertificateFilter::CertificateArn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn"))
    CertificateFilter.add_member(:x509_attribute_filter, Types::CertificateFilter::X509AttributeFilter, ::Smithy::Schema::Shapes::MemberShape.new(target: X509AttributeFilter, name: "X509AttributeFilter"))
    CertificateFilter.add_member(:acm_certificate_metadata_filter, Types::CertificateFilter::AcmCertificateMetadataFilter, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmCertificateMetadataFilter, name: "AcmCertificateMetadataFilter"))
    CertificateFilter.add_member(:unknown, Types::CertificateFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CertificateFilter.type = Types::CertificateFilter
    CertificateFilterStatement.add_member(:and, Types::CertificateFilterStatement::And, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateFilterStatementList, name: "And"))
    CertificateFilterStatement.add_member(:or, Types::CertificateFilterStatement::Or, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateFilterStatementList, name: "Or"))
    CertificateFilterStatement.add_member(:not, Types::CertificateFilterStatement::Not, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateFilterStatement, name: "Not"))
    CertificateFilterStatement.add_member(:filter, Types::CertificateFilterStatement::Filter, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateFilter, name: "Filter"))
    CertificateFilterStatement.add_member(:unknown, Types::CertificateFilterStatement::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CertificateFilterStatement.type = Types::CertificateFilterStatement
    CertificateFilterStatementList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateFilterStatement, name: "member"))
    CertificateKeyPairOrigin.add_member(:aws_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_MANAGED", traits: {"smithy.api#enumValue" => "AWS_MANAGED"}))
    CertificateKeyPairOrigin.add_member(:acme, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACME", traits: {"smithy.api#enumValue" => "ACME"}))
    CertificateKeyPairOrigin.add_member(:customer_provided, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_PROVIDED", traits: {"smithy.api#enumValue" => "CUSTOMER_PROVIDED"}))
    CertificateKeyPairOrigins.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateKeyPairOrigin, name: "member"))
    CertificateManagedBy.add_member(:cloudfront, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUDFRONT", traits: {"smithy.api#enumValue" => "CLOUDFRONT"}))
    CertificateMetadata.add_member(:acm_certificate_metadata, Types::CertificateMetadata::AcmCertificateMetadata, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmCertificateMetadata, name: "AcmCertificateMetadata"))
    CertificateMetadata.add_member(:unknown, Types::CertificateMetadata::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CertificateMetadata.type = Types::CertificateMetadata
    CertificateOptions.add_member(:certificate_transparency_logging_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateTransparencyLoggingPreference, name: "CertificateTransparencyLoggingPreference", traits: {"smithy.api#deprecated" => {"message" => "Certificate transparency logging opt-out is no longer available.", "since" => "12th June 2026"}}))
    CertificateOptions.add_member(:export, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateExport, name: "Export"))
    CertificateOptions.add_member(:validation_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationMethod, name: "ValidationMethod"))
    CertificateOptions.type = Types::CertificateOptions
    CertificateSearchResult.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn"))
    CertificateSearchResult.add_member(:x509_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: X509Attributes, name: "X509Attributes"))
    CertificateSearchResult.add_member(:certificate_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateMetadata, name: "CertificateMetadata"))
    CertificateSearchResult.type = Types::CertificateSearchResult
    CertificateSearchResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateSearchResult, name: "member"))
    CertificateStatus.add_member(:pending_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_VALIDATION", traits: {"smithy.api#enumValue" => "PENDING_VALIDATION"}))
    CertificateStatus.add_member(:issued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISSUED", traits: {"smithy.api#enumValue" => "ISSUED"}))
    CertificateStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    CertificateStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    CertificateStatus.add_member(:validation_timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION_TIMED_OUT", traits: {"smithy.api#enumValue" => "VALIDATION_TIMED_OUT"}))
    CertificateStatus.add_member(:revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVOKED", traits: {"smithy.api#enumValue" => "REVOKED"}))
    CertificateStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CertificateStatuses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateStatus, name: "member"))
    CertificateSummary.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn"))
    CertificateSummary.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameString, name: "DomainName"))
    CertificateSummary.add_member(:subject_alternative_name_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainList, name: "SubjectAlternativeNameSummaries"))
    CertificateSummary.add_member(:has_additional_subject_alternative_names, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "HasAdditionalSubjectAlternativeNames"))
    CertificateSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateStatus, name: "Status"))
    CertificateSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "Type"))
    CertificateSummary.add_member(:key_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAlgorithm, name: "KeyAlgorithm"))
    CertificateSummary.add_member(:key_usages, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyUsageNames, name: "KeyUsages"))
    CertificateSummary.add_member(:extended_key_usages, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedKeyUsageNames, name: "ExtendedKeyUsages"))
    CertificateSummary.add_member(:export_option, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateExport, name: "ExportOption"))
    CertificateSummary.add_member(:in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "InUse"))
    CertificateSummary.add_member(:exported, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "Exported"))
    CertificateSummary.add_member(:renewal_eligibility, ::Smithy::Schema::Shapes::MemberShape.new(target: RenewalEligibility, name: "RenewalEligibility"))
    CertificateSummary.add_member(:not_before, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "NotBefore"))
    CertificateSummary.add_member(:not_after, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "NotAfter"))
    CertificateSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreatedAt"))
    CertificateSummary.add_member(:issued_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "IssuedAt"))
    CertificateSummary.add_member(:imported_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ImportedAt"))
    CertificateSummary.add_member(:revoked_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "RevokedAt"))
    CertificateSummary.add_member(:managed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateManagedBy, name: "ManagedBy"))
    CertificateSummary.add_member(:certificate_key_pair_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateKeyPairOrigin, name: "CertificateKeyPairOrigin"))
    CertificateSummary.type = Types::CertificateSummary
    CertificateSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateSummary, name: "member"))
    CertificateTransparencyLoggingPreference.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    CertificateTransparencyLoggingPreference.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    CertificateType.add_member(:imported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORTED", traits: {"smithy.api#enumValue" => "IMPORTED"}))
    CertificateType.add_member(:amazon_issued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON_ISSUED", traits: {"smithy.api#enumValue" => "AMAZON_ISSUED"}))
    CertificateType.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVATE", traits: {"smithy.api#enumValue" => "PRIVATE"}))
    CommonNameFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterString, name: "Value", traits: {"smithy.api#required" => {}}))
    CommonNameFilter.add_member(:comparison_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperator, name: "ComparisonOperator", traits: {"smithy.api#required" => {}}))
    CommonNameFilter.type = Types::CommonNameFilter
    ComparisonOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    ComparisonOperator.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ConflictException.type = Types::ConflictException
    ContactList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    CreateAcmeDomainValidationRequest.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAcmeDomainValidationRequest.add_member(:acme_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeEndpointArn, name: "AcmeEndpointArn", traits: {"smithy.api#required" => {}}))
    CreateAcmeDomainValidationRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "DomainName", traits: {"smithy.api#required" => {}}))
    CreateAcmeDomainValidationRequest.add_member(:prevalidation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: PrevalidationOptions, name: "PrevalidationOptions", traits: {"smithy.api#required" => {}}))
    CreateAcmeDomainValidationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateAcmeDomainValidationRequest.type = Types::CreateAcmeDomainValidationRequest
    CreateAcmeDomainValidationResponse.add_member(:acme_domain_validation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeDomainValidationArn, name: "AcmeDomainValidationArn", traits: {"smithy.api#required" => {}}))
    CreateAcmeDomainValidationResponse.type = Types::CreateAcmeDomainValidationResponse
    CreateAcmeEndpointRequest.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAcmeEndpointRequest.add_member(:authorization_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeAuthorizationBehavior, name: "AuthorizationBehavior", traits: {"smithy.api#required" => {}}))
    CreateAcmeEndpointRequest.add_member(:contact, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeContact, name: "Contact", traits: {"smithy.api#default" => "REQUIRED"}))
    CreateAcmeEndpointRequest.add_member(:certificate_authority, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAuthority, name: "CertificateAuthority", traits: {"smithy.api#required" => {}}))
    CreateAcmeEndpointRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateAcmeEndpointRequest.add_member(:certificate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "CertificateTags"))
    CreateAcmeEndpointRequest.type = Types::CreateAcmeEndpointRequest
    CreateAcmeEndpointResponse.add_member(:acme_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeEndpointArn, name: "AcmeEndpointArn"))
    CreateAcmeEndpointResponse.type = Types::CreateAcmeEndpointResponse
    CreateAcmeExternalAccountBindingRequest.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAcmeExternalAccountBindingRequest.add_member(:acme_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeEndpointArn, name: "AcmeEndpointArn", traits: {"smithy.api#required" => {}}))
    CreateAcmeExternalAccountBindingRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreateAcmeExternalAccountBindingRequest.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: Expiration, name: "Expiration"))
    CreateAcmeExternalAccountBindingRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateAcmeExternalAccountBindingRequest.type = Types::CreateAcmeExternalAccountBindingRequest
    CreateAcmeExternalAccountBindingResponse.add_member(:external_account_binding, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeExternalAccountBinding, name: "ExternalAccountBinding"))
    CreateAcmeExternalAccountBindingResponse.type = Types::CreateAcmeExternalAccountBindingResponse
    CustomAttribute.add_member(:object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ObjectIdentifier"))
    CustomAttribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    CustomAttribute.type = Types::CustomAttribute
    CustomAttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomAttribute, name: "member"))
    DeleteAcmeDomainValidationRequest.add_member(:acme_domain_validation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeDomainValidationArn, name: "AcmeDomainValidationArn", traits: {"smithy.api#required" => {}}))
    DeleteAcmeDomainValidationRequest.type = Types::DeleteAcmeDomainValidationRequest
    DeleteAcmeEndpointRequest.add_member(:acme_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeEndpointArn, name: "AcmeEndpointArn", traits: {"smithy.api#required" => {}}))
    DeleteAcmeEndpointRequest.type = Types::DeleteAcmeEndpointRequest
    DeleteAcmeExternalAccountBindingRequest.add_member(:acme_external_account_binding_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeExternalAccountBindingArn, name: "AcmeExternalAccountBindingArn", traits: {"smithy.api#required" => {}}))
    DeleteAcmeExternalAccountBindingRequest.type = Types::DeleteAcmeExternalAccountBindingRequest
    DeleteCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn", traits: {"smithy.api#required" => {}}))
    DeleteCertificateRequest.type = Types::DeleteCertificateRequest
    DescribeAcmeAccountRequest.add_member(:acme_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeEndpointArn, name: "AcmeEndpointArn", traits: {"smithy.api#required" => {}}))
    DescribeAcmeAccountRequest.add_member(:account_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AccountUrl", traits: {"smithy.api#required" => {}}))
    DescribeAcmeAccountRequest.type = Types::DescribeAcmeAccountRequest
    DescribeAcmeAccountResponse.add_member(:acme_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeAccount, name: "AcmeAccount"))
    DescribeAcmeAccountResponse.type = Types::DescribeAcmeAccountResponse
    DescribeAcmeDomainValidationRequest.add_member(:acme_domain_validation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeDomainValidationArn, name: "AcmeDomainValidationArn", traits: {"smithy.api#required" => {}}))
    DescribeAcmeDomainValidationRequest.type = Types::DescribeAcmeDomainValidationRequest
    DescribeAcmeDomainValidationResponse.add_member(:acme_domain_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeDomainValidation, name: "AcmeDomainValidation"))
    DescribeAcmeDomainValidationResponse.type = Types::DescribeAcmeDomainValidationResponse
    DescribeAcmeEndpointRequest.add_member(:acme_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeEndpointArn, name: "AcmeEndpointArn", traits: {"smithy.api#required" => {}}))
    DescribeAcmeEndpointRequest.type = Types::DescribeAcmeEndpointRequest
    DescribeAcmeEndpointResponse.add_member(:acme_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeEndpoint, name: "AcmeEndpoint"))
    DescribeAcmeEndpointResponse.type = Types::DescribeAcmeEndpointResponse
    DescribeAcmeExternalAccountBindingRequest.add_member(:acme_external_account_binding_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeExternalAccountBindingArn, name: "AcmeExternalAccountBindingArn", traits: {"smithy.api#required" => {}}))
    DescribeAcmeExternalAccountBindingRequest.type = Types::DescribeAcmeExternalAccountBindingRequest
    DescribeAcmeExternalAccountBindingResponse.add_member(:external_account_binding, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeExternalAccountBinding, name: "ExternalAccountBinding"))
    DescribeAcmeExternalAccountBindingResponse.type = Types::DescribeAcmeExternalAccountBindingResponse
    DescribeCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn", traits: {"smithy.api#required" => {}}))
    DescribeCertificateRequest.type = Types::DescribeCertificateRequest
    DescribeCertificateResponse.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateDetail, name: "Certificate"))
    DescribeCertificateResponse.type = Types::DescribeCertificateResponse
    DistinguishedName.add_member(:common_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CommonName"))
    DistinguishedName.add_member(:domain_components, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainComponentList, name: "DomainComponents"))
    DistinguishedName.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Country"))
    DistinguishedName.add_member(:custom_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomAttributeList, name: "CustomAttributes"))
    DistinguishedName.add_member(:distinguished_name_qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DistinguishedNameQualifier"))
    DistinguishedName.add_member(:generation_qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GenerationQualifier"))
    DistinguishedName.add_member(:given_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GivenName"))
    DistinguishedName.add_member(:initials, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Initials"))
    DistinguishedName.add_member(:locality, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Locality"))
    DistinguishedName.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Organization"))
    DistinguishedName.add_member(:organizational_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OrganizationalUnit"))
    DistinguishedName.add_member(:pseudonym, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Pseudonym"))
    DistinguishedName.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SerialNumber"))
    DistinguishedName.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "State"))
    DistinguishedName.add_member(:surname, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Surname"))
    DistinguishedName.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Title"))
    DistinguishedName.type = Types::DistinguishedName
    DnsNameFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterString, name: "Value", traits: {"smithy.api#required" => {}}))
    DnsNameFilter.add_member(:comparison_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperator, name: "ComparisonOperator", traits: {"smithy.api#required" => {}}))
    DnsNameFilter.type = Types::DnsNameFilter
    DnsPrevalidationDetails.add_member(:domain_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainScope, name: "DomainScope"))
    DnsPrevalidationDetails.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZoneId, name: "HostedZoneId"))
    DnsPrevalidationDetails.add_member(:resource_record, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRecord, name: "ResourceRecord"))
    DnsPrevalidationDetails.type = Types::DnsPrevalidationDetails
    DnsPrevalidationOptions.add_member(:domain_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainScope, name: "DomainScope"))
    DnsPrevalidationOptions.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZoneId, name: "HostedZoneId"))
    DnsPrevalidationOptions.type = Types::DnsPrevalidationOptions
    DnsValidationChallenge.add_member(:resource_record, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRecord, name: "ResourceRecord"))
    DnsValidationChallenge.type = Types::DnsValidationChallenge
    DomainComponentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    DomainList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameString, name: "member"))
    DomainScope.add_member(:exact_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainScopeOption, name: "ExactDomain"))
    DomainScope.add_member(:subdomains, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainScopeOption, name: "Subdomains"))
    DomainScope.add_member(:wildcards, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainScopeOption, name: "Wildcards"))
    DomainScope.type = Types::DomainScope
    DomainScopeOption.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    DomainScopeOption.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    DomainStatus.add_member(:pending_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_VALIDATION", traits: {"smithy.api#enumValue" => "PENDING_VALIDATION"}))
    DomainStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    DomainStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DomainValidation.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameString, name: "DomainName", traits: {"smithy.api#required" => {}}))
    DomainValidation.add_member(:validation_emails, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationEmailList, name: "ValidationEmails"))
    DomainValidation.add_member(:validation_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameString, name: "ValidationDomain"))
    DomainValidation.add_member(:validation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainStatus, name: "ValidationStatus"))
    DomainValidation.add_member(:resource_record, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRecord, name: "ResourceRecord"))
    DomainValidation.add_member(:http_redirect, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpRedirect, name: "HttpRedirect"))
    DomainValidation.add_member(:validation_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationMethod, name: "ValidationMethod"))
    DomainValidation.type = Types::DomainValidation
    DomainValidationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainValidation, name: "member"))
    DomainValidationMethodUpdateSummary.add_member(:from, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationMethod, name: "From"))
    DomainValidationMethodUpdateSummary.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationMethod, name: "To"))
    DomainValidationMethodUpdateSummary.type = Types::DomainValidationMethodUpdateSummary
    DomainValidationOption.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameString, name: "DomainName", traits: {"smithy.api#required" => {}}))
    DomainValidationOption.add_member(:validation_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameString, name: "ValidationDomain", traits: {"smithy.api#required" => {}}))
    DomainValidationOption.type = Types::DomainValidationOption
    DomainValidationOptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainValidationOption, name: "member"))
    DomainValidationSummary.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameString, name: "DomainName", traits: {"smithy.api#required" => {}}))
    DomainValidationSummary.add_member(:active_validation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationConfiguration, name: "ActiveValidationConfiguration"))
    DomainValidationSummary.add_member(:requested_validation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationConfiguration, name: "RequestedValidationConfiguration"))
    DomainValidationSummary.type = Types::DomainValidationSummary
    DomainValidationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainValidationSummary, name: "member"))
    EmailValidationChallenge.add_member(:validation_emails, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationEmailList, name: "ValidationEmails"))
    EmailValidationChallenge.add_member(:validation_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameString, name: "ValidationDomain"))
    EmailValidationChallenge.type = Types::EmailValidationChallenge
    Expiration.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "Value", traits: {"smithy.api#range" => {"min" => 1}, "smithy.api#required" => {}}))
    Expiration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeType, name: "Type", traits: {"smithy.api#required" => {}}))
    Expiration.type = Types::Expiration
    ExpiryEventsConfiguration.add_member(:days_before_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "DaysBeforeExpiry"))
    ExpiryEventsConfiguration.type = Types::ExpiryEventsConfiguration
    ExportCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn", traits: {"smithy.api#required" => {}}))
    ExportCertificateRequest.add_member(:passphrase, ::Smithy::Schema::Shapes::MemberShape.new(target: PassphraseBlob, name: "Passphrase", traits: {"smithy.api#required" => {}}))
    ExportCertificateRequest.type = Types::ExportCertificateRequest
    ExportCertificateResponse.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateBody, name: "Certificate"))
    ExportCertificateResponse.add_member(:certificate_chain, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateChain, name: "CertificateChain"))
    ExportCertificateResponse.add_member(:private_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateKey, name: "PrivateKey"))
    ExportCertificateResponse.type = Types::ExportCertificateResponse
    ExtendedKeyUsage.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedKeyUsageName, name: "Name"))
    ExtendedKeyUsage.add_member(:oid, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OID"))
    ExtendedKeyUsage.type = Types::ExtendedKeyUsage
    ExtendedKeyUsageFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedKeyUsageName, name: "member"))
    ExtendedKeyUsageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedKeyUsage, name: "member"))
    ExtendedKeyUsageName.add_member(:tls_web_server_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLS_WEB_SERVER_AUTHENTICATION", traits: {"smithy.api#enumValue" => "TLS_WEB_SERVER_AUTHENTICATION"}))
    ExtendedKeyUsageName.add_member(:tls_web_client_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLS_WEB_CLIENT_AUTHENTICATION", traits: {"smithy.api#enumValue" => "TLS_WEB_CLIENT_AUTHENTICATION"}))
    ExtendedKeyUsageName.add_member(:code_signing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CODE_SIGNING", traits: {"smithy.api#enumValue" => "CODE_SIGNING"}))
    ExtendedKeyUsageName.add_member(:email_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL_PROTECTION", traits: {"smithy.api#enumValue" => "EMAIL_PROTECTION"}))
    ExtendedKeyUsageName.add_member(:time_stamping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIME_STAMPING", traits: {"smithy.api#enumValue" => "TIME_STAMPING"}))
    ExtendedKeyUsageName.add_member(:ocsp_signing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OCSP_SIGNING", traits: {"smithy.api#enumValue" => "OCSP_SIGNING"}))
    ExtendedKeyUsageName.add_member(:ipsec_end_system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPSEC_END_SYSTEM", traits: {"smithy.api#enumValue" => "IPSEC_END_SYSTEM"}))
    ExtendedKeyUsageName.add_member(:ipsec_tunnel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPSEC_TUNNEL", traits: {"smithy.api#enumValue" => "IPSEC_TUNNEL"}))
    ExtendedKeyUsageName.add_member(:ipsec_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPSEC_USER", traits: {"smithy.api#enumValue" => "IPSEC_USER"}))
    ExtendedKeyUsageName.add_member(:any, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANY", traits: {"smithy.api#enumValue" => "ANY"}))
    ExtendedKeyUsageName.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ExtendedKeyUsageName.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    ExtendedKeyUsageNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedKeyUsageName, name: "member"))
    FailureDetails.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeDomainValidationFailureReason, name: "Reason"))
    FailureDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    FailureDetails.type = Types::FailureDetails
    FailureReason.add_member(:no_available_contacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_AVAILABLE_CONTACTS", traits: {"smithy.api#enumValue" => "NO_AVAILABLE_CONTACTS"}))
    FailureReason.add_member(:additional_verification_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDITIONAL_VERIFICATION_REQUIRED", traits: {"smithy.api#enumValue" => "ADDITIONAL_VERIFICATION_REQUIRED"}))
    FailureReason.add_member(:domain_not_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN_NOT_ALLOWED", traits: {"smithy.api#enumValue" => "DOMAIN_NOT_ALLOWED"}))
    FailureReason.add_member(:invalid_public_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PUBLIC_DOMAIN", traits: {"smithy.api#enumValue" => "INVALID_PUBLIC_DOMAIN"}))
    FailureReason.add_member(:domain_validation_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN_VALIDATION_DENIED", traits: {"smithy.api#enumValue" => "DOMAIN_VALIDATION_DENIED"}))
    FailureReason.add_member(:caa_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAA_ERROR", traits: {"smithy.api#enumValue" => "CAA_ERROR"}))
    FailureReason.add_member(:pca_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PCA_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "PCA_LIMIT_EXCEEDED"}))
    FailureReason.add_member(:pca_invalid_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PCA_INVALID_ARN", traits: {"smithy.api#enumValue" => "PCA_INVALID_ARN"}))
    FailureReason.add_member(:pca_invalid_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PCA_INVALID_STATE", traits: {"smithy.api#enumValue" => "PCA_INVALID_STATE"}))
    FailureReason.add_member(:pca_request_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PCA_REQUEST_FAILED", traits: {"smithy.api#enumValue" => "PCA_REQUEST_FAILED"}))
    FailureReason.add_member(:pca_name_constraints_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PCA_NAME_CONSTRAINTS_VALIDATION", traits: {"smithy.api#enumValue" => "PCA_NAME_CONSTRAINTS_VALIDATION"}))
    FailureReason.add_member(:pca_resource_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PCA_RESOURCE_NOT_FOUND", traits: {"smithy.api#enumValue" => "PCA_RESOURCE_NOT_FOUND"}))
    FailureReason.add_member(:pca_invalid_args, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PCA_INVALID_ARGS", traits: {"smithy.api#enumValue" => "PCA_INVALID_ARGS"}))
    FailureReason.add_member(:pca_invalid_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PCA_INVALID_DURATION", traits: {"smithy.api#enumValue" => "PCA_INVALID_DURATION"}))
    FailureReason.add_member(:pca_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PCA_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "PCA_ACCESS_DENIED"}))
    FailureReason.add_member(:slr_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SLR_NOT_FOUND", traits: {"smithy.api#enumValue" => "SLR_NOT_FOUND"}))
    FailureReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    Filters.add_member(:extended_key_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedKeyUsageFilterList, name: "extendedKeyUsage"))
    Filters.add_member(:key_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyUsageFilterList, name: "keyUsage"))
    Filters.add_member(:key_types, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAlgorithmList, name: "keyTypes"))
    Filters.add_member(:export_option, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateExport, name: "exportOption"))
    Filters.add_member(:managed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateManagedBy, name: "managedBy"))
    Filters.type = Types::Filters
    GeneralName.add_member(:directory_name, Types::GeneralName::DirectoryName, ::Smithy::Schema::Shapes::MemberShape.new(target: DistinguishedName, name: "DirectoryName"))
    GeneralName.add_member(:dns_name, Types::GeneralName::DnsName, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DnsName"))
    GeneralName.add_member(:ip_address, Types::GeneralName::IpAddress, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IpAddress"))
    GeneralName.add_member(:other_name, Types::GeneralName::OtherName, ::Smithy::Schema::Shapes::MemberShape.new(target: OtherName, name: "OtherName"))
    GeneralName.add_member(:registered_id, Types::GeneralName::RegisteredId, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegisteredId"))
    GeneralName.add_member(:rfc822_name, Types::GeneralName::Rfc822Name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Rfc822Name"))
    GeneralName.add_member(:uniform_resource_identifier, Types::GeneralName::UniformResourceIdentifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UniformResourceIdentifier"))
    GeneralName.add_member(:unknown, Types::GeneralName::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    GeneralName.type = Types::GeneralName
    GeneralNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralName, name: "member"))
    GetAccountConfigurationResponse.add_member(:expiry_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpiryEventsConfiguration, name: "ExpiryEvents"))
    GetAccountConfigurationResponse.type = Types::GetAccountConfigurationResponse
    GetAcmeExternalAccountBindingCredentialsRequest.add_member(:acme_external_account_binding_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeExternalAccountBindingArn, name: "AcmeExternalAccountBindingArn", traits: {"smithy.api#required" => {}}))
    GetAcmeExternalAccountBindingCredentialsRequest.type = Types::GetAcmeExternalAccountBindingCredentialsRequest
    GetAcmeExternalAccountBindingCredentialsResponse.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "KeyId"))
    GetAcmeExternalAccountBindingCredentialsResponse.add_member(:mac_key, ::Smithy::Schema::Shapes::MemberShape.new(target: MacKey, name: "MacKey"))
    GetAcmeExternalAccountBindingCredentialsResponse.type = Types::GetAcmeExternalAccountBindingCredentialsResponse
    GetCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn", traits: {"smithy.api#required" => {}}))
    GetCertificateRequest.type = Types::GetCertificateRequest
    GetCertificateResponse.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateBody, name: "Certificate"))
    GetCertificateResponse.add_member(:certificate_chain, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateChain, name: "CertificateChain"))
    GetCertificateResponse.type = Types::GetCertificateResponse
    HttpRedirect.add_member(:redirect_from, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RedirectFrom"))
    HttpRedirect.add_member(:redirect_to, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RedirectTo"))
    HttpRedirect.type = Types::HttpRedirect
    ImportCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn"))
    ImportCertificateRequest.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateBodyBlob, name: "Certificate", traits: {"smithy.api#required" => {}}))
    ImportCertificateRequest.add_member(:private_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateKeyBlob, name: "PrivateKey", traits: {"smithy.api#required" => {}}))
    ImportCertificateRequest.add_member(:certificate_chain, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateChainBlob, name: "CertificateChain"))
    ImportCertificateRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ImportCertificateRequest.type = Types::ImportCertificateRequest
    ImportCertificateResponse.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn"))
    ImportCertificateResponse.type = Types::ImportCertificateResponse
    InUseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InternalServerException.type = Types::InternalServerException
    InvalidArgsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidArgsException.type = Types::InvalidArgsException
    InvalidArnException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidArnException.type = Types::InvalidArnException
    InvalidDomainValidationOptionsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidDomainValidationOptionsException.type = Types::InvalidDomainValidationOptionsException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidStateException.type = Types::InvalidStateException
    InvalidTagException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidTagException.type = Types::InvalidTagException
    KeyAlgorithm.add_member(:rsa_1024, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RSA_1024", traits: {"smithy.api#enumValue" => "RSA_1024"}))
    KeyAlgorithm.add_member(:rsa_2048, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RSA_2048", traits: {"smithy.api#enumValue" => "RSA_2048"}))
    KeyAlgorithm.add_member(:rsa_3072, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RSA_3072", traits: {"smithy.api#enumValue" => "RSA_3072"}))
    KeyAlgorithm.add_member(:rsa_4096, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RSA_4096", traits: {"smithy.api#enumValue" => "RSA_4096"}))
    KeyAlgorithm.add_member(:ec_prime256v1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC_prime256v1", traits: {"smithy.api#enumValue" => "EC_prime256v1"}))
    KeyAlgorithm.add_member(:ec_secp384r1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC_secp384r1", traits: {"smithy.api#enumValue" => "EC_secp384r1"}))
    KeyAlgorithm.add_member(:ec_secp521r1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC_secp521r1", traits: {"smithy.api#enumValue" => "EC_secp521r1"}))
    KeyAlgorithmList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAlgorithm, name: "member"))
    KeyUsage.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyUsageName, name: "Name"))
    KeyUsage.type = Types::KeyUsage
    KeyUsageFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyUsageName, name: "member"))
    KeyUsageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyUsage, name: "member"))
    KeyUsageName.add_member(:digital_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIGITAL_SIGNATURE", traits: {"smithy.api#enumValue" => "DIGITAL_SIGNATURE"}))
    KeyUsageName.add_member(:non_repudation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NON_REPUDATION", traits: {"smithy.api#enumValue" => "NON_REPUDIATION"}))
    KeyUsageName.add_member(:key_encipherment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEY_ENCIPHERMENT", traits: {"smithy.api#enumValue" => "KEY_ENCIPHERMENT"}))
    KeyUsageName.add_member(:data_encipherment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_ENCIPHERMENT", traits: {"smithy.api#enumValue" => "DATA_ENCIPHERMENT"}))
    KeyUsageName.add_member(:key_agreement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEY_AGREEMENT", traits: {"smithy.api#enumValue" => "KEY_AGREEMENT"}))
    KeyUsageName.add_member(:certificate_signing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CERTIFICATE_SIGNING", traits: {"smithy.api#enumValue" => "CERTIFICATE_SIGNING"}))
    KeyUsageName.add_member(:crl_signing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRL_SIGNING", traits: {"smithy.api#enumValue" => "CRL_SIGNING"}))
    KeyUsageName.add_member(:enchiper_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENCHIPER_ONLY", traits: {"smithy.api#enumValue" => "ENCIPHER_ONLY"}))
    KeyUsageName.add_member(:decipher_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DECIPHER_ONLY", traits: {"smithy.api#enumValue" => "DECIPHER_ONLY"}))
    KeyUsageName.add_member(:any, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANY", traits: {"smithy.api#enumValue" => "ANY"}))
    KeyUsageName.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    KeyUsageNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyUsageName, name: "member"))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListAcmeAccountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListAcmeAccountsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAcmeAccountsRequest.add_member(:acme_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeEndpointArn, name: "AcmeEndpointArn", traits: {"smithy.api#required" => {}}))
    ListAcmeAccountsRequest.type = Types::ListAcmeAccountsRequest
    ListAcmeAccountsResponse.add_member(:acme_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeAccountList, name: "AcmeAccounts"))
    ListAcmeAccountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListAcmeAccountsResponse.type = Types::ListAcmeAccountsResponse
    ListAcmeDomainValidationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListAcmeDomainValidationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAcmeDomainValidationsRequest.add_member(:acme_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeEndpointArn, name: "AcmeEndpointArn", traits: {"smithy.api#required" => {}}))
    ListAcmeDomainValidationsRequest.type = Types::ListAcmeDomainValidationsRequest
    ListAcmeDomainValidationsResponse.add_member(:acme_domain_validations, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeDomainValidationList, name: "AcmeDomainValidations"))
    ListAcmeDomainValidationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListAcmeDomainValidationsResponse.type = Types::ListAcmeDomainValidationsResponse
    ListAcmeEndpointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListAcmeEndpointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAcmeEndpointsRequest.type = Types::ListAcmeEndpointsRequest
    ListAcmeEndpointsResponse.add_member(:acme_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeEndpointList, name: "AcmeEndpoints"))
    ListAcmeEndpointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListAcmeEndpointsResponse.type = Types::ListAcmeEndpointsResponse
    ListAcmeExternalAccountBindingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListAcmeExternalAccountBindingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAcmeExternalAccountBindingsRequest.add_member(:acme_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeEndpointArn, name: "AcmeEndpointArn", traits: {"smithy.api#required" => {}}))
    ListAcmeExternalAccountBindingsRequest.type = Types::ListAcmeExternalAccountBindingsRequest
    ListAcmeExternalAccountBindingsResponse.add_member(:external_account_bindings, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeExternalAccountBindingList, name: "ExternalAccountBindings"))
    ListAcmeExternalAccountBindingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListAcmeExternalAccountBindingsResponse.type = Types::ListAcmeExternalAccountBindingsResponse
    ListCertificateDomainValidationsRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateArn, name: "CertificateArn", traits: {"smithy.api#required" => {}}))
    ListCertificateDomainValidationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCertificateDomainValidationsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "MaxItems"))
    ListCertificateDomainValidationsRequest.type = Types::ListCertificateDomainValidationsRequest
    ListCertificateDomainValidationsResponse.add_member(:domain_validation_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainValidationSummaryList, name: "DomainValidationSummaryList"))
    ListCertificateDomainValidationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCertificateDomainValidationsResponse.type = Types::ListCertificateDomainValidationsResponse
    ListCertificatesRequest.add_member(:certificate_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateStatuses, name: "CertificateStatuses"))
    ListCertificatesRequest.add_member(:certificate_key_pair_origins, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateKeyPairOrigins, name: "CertificateKeyPairOrigins"))
    ListCertificatesRequest.add_member(:includes, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Includes"))
    ListCertificatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCertificatesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "MaxItems"))
    ListCertificatesRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SortBy, name: "SortBy"))
    ListCertificatesRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    ListCertificatesRequest.type = Types::ListCertificatesRequest
    ListCertificatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCertificatesResponse.add_member(:certificate_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateSummaryList, name: "CertificateSummaryList"))
    ListCertificatesResponse.type = Types::ListCertificatesResponse
    ListTagsForCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn", traits: {"smithy.api#required" => {}}))
    ListTagsForCertificateRequest.type = Types::ListTagsForCertificateRequest
    ListTagsForCertificateResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForCertificateResponse.type = Types::ListTagsForCertificateResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    OtherName.add_member(:object_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ObjectIdentifier"))
    OtherName.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    OtherName.type = Types::OtherName
    PrevalidationDetails.add_member(:dns_prevalidation, Types::PrevalidationDetails::DnsPrevalidation, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsPrevalidationDetails, name: "DnsPrevalidation"))
    PrevalidationDetails.add_member(:unknown, Types::PrevalidationDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PrevalidationDetails.type = Types::PrevalidationDetails
    PrevalidationOptions.add_member(:dns_prevalidation, Types::PrevalidationOptions::DnsPrevalidation, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsPrevalidationOptions, name: "DnsPrevalidation"))
    PrevalidationOptions.add_member(:unknown, Types::PrevalidationOptions::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PrevalidationOptions.type = Types::PrevalidationOptions
    PrevalidationType.add_member(:dns_prevalidation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DNS_PREVALIDATION", traits: {"smithy.api#enumValue" => "DNS_PREVALIDATION"}))
    PublicCertificateAuthority.add_member(:allowed_key_algorithms, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyAlgorithmList, name: "AllowedKeyAlgorithms"))
    PublicCertificateAuthority.type = Types::PublicCertificateAuthority
    PublicKeyAlgorithm.add_member(:rsa_2048, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RSA_2048", traits: {"smithy.api#enumValue" => "RSA_2048"}))
    PublicKeyAlgorithm.add_member(:ec_prime256_v1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC_PRIME256_V1", traits: {"smithy.api#enumValue" => "EC_prime256v1"}))
    PublicKeyAlgorithm.add_member(:ec_secp384_r1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC_SECP384_R1", traits: {"smithy.api#enumValue" => "EC_secp384r1"}))
    PublicKeyAlgorithmList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicKeyAlgorithm, name: "member"))
    PutAccountConfigurationRequest.add_member(:expiry_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpiryEventsConfiguration, name: "ExpiryEvents"))
    PutAccountConfigurationRequest.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "IdempotencyToken", traits: {"smithy.api#required" => {}}))
    PutAccountConfigurationRequest.type = Types::PutAccountConfigurationRequest
    RecordType.add_member(:cname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CNAME", traits: {"smithy.api#enumValue" => "CNAME"}))
    RemoveTagsFromCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn", traits: {"smithy.api#required" => {}}))
    RemoveTagsFromCertificateRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    RemoveTagsFromCertificateRequest.type = Types::RemoveTagsFromCertificateRequest
    RenewCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn", traits: {"smithy.api#required" => {}}))
    RenewCertificateRequest.type = Types::RenewCertificateRequest
    RenewalEligibility.add_member(:eligible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELIGIBLE", traits: {"smithy.api#enumValue" => "ELIGIBLE"}))
    RenewalEligibility.add_member(:ineligible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INELIGIBLE", traits: {"smithy.api#enumValue" => "INELIGIBLE"}))
    RenewalStatus.add_member(:pending_auto_renewal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_AUTO_RENEWAL", traits: {"smithy.api#enumValue" => "PENDING_AUTO_RENEWAL"}))
    RenewalStatus.add_member(:pending_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_VALIDATION", traits: {"smithy.api#enumValue" => "PENDING_VALIDATION"}))
    RenewalStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    RenewalStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    RenewalSummary.add_member(:renewal_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RenewalStatus, name: "RenewalStatus", traits: {"smithy.api#required" => {}}))
    RenewalSummary.add_member(:domain_validation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainValidationList, name: "DomainValidationOptions", traits: {"smithy.api#required" => {}}))
    RenewalSummary.add_member(:renewal_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "RenewalStatusReason"))
    RenewalSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    RenewalSummary.type = Types::RenewalSummary
    RequestCertificateRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameString, name: "DomainName", traits: {"smithy.api#required" => {}}))
    RequestCertificateRequest.add_member(:validation_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationMethod, name: "ValidationMethod"))
    RequestCertificateRequest.add_member(:subject_alternative_names, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainList, name: "SubjectAlternativeNames"))
    RequestCertificateRequest.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "IdempotencyToken"))
    RequestCertificateRequest.add_member(:domain_validation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainValidationOptionList, name: "DomainValidationOptions"))
    RequestCertificateRequest.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateOptions, name: "Options"))
    RequestCertificateRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PcaArn, name: "CertificateAuthorityArn"))
    RequestCertificateRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    RequestCertificateRequest.add_member(:key_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAlgorithm, name: "KeyAlgorithm"))
    RequestCertificateRequest.add_member(:managed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateManagedBy, name: "ManagedBy"))
    RequestCertificateRequest.type = Types::RequestCertificateRequest
    RequestCertificateResponse.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn"))
    RequestCertificateResponse.type = Types::RequestCertificateResponse
    RequestInProgressException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    RequestInProgressException.type = Types::RequestInProgressException
    ResendValidationEmailRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn", traits: {"smithy.api#required" => {}}))
    ResendValidationEmailRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameString, name: "Domain", traits: {"smithy.api#required" => {}}))
    ResendValidationEmailRequest.add_member(:validation_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameString, name: "ValidationDomain", traits: {"smithy.api#required" => {}}))
    ResendValidationEmailRequest.type = Types::ResendValidationEmailRequest
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceRecord.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    ResourceRecord.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordType, name: "Type", traits: {"smithy.api#required" => {}}))
    ResourceRecord.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value", traits: {"smithy.api#required" => {}}))
    ResourceRecord.type = Types::ResourceRecord
    RevocationReason.add_member(:unspecified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSPECIFIED", traits: {"smithy.api#enumValue" => "UNSPECIFIED"}))
    RevocationReason.add_member(:key_compromise, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEY_COMPROMISE", traits: {"smithy.api#enumValue" => "KEY_COMPROMISE"}))
    RevocationReason.add_member(:ca_compromise, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CA_COMPROMISE", traits: {"smithy.api#enumValue" => "CA_COMPROMISE"}))
    RevocationReason.add_member(:affiliation_changed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFFILIATION_CHANGED", traits: {"smithy.api#enumValue" => "AFFILIATION_CHANGED"}))
    RevocationReason.add_member(:superceded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUPERCEDED", traits: {"smithy.api#enumValue" => "SUPERCEDED"}))
    RevocationReason.add_member(:superseded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUPERSEDED", traits: {"smithy.api#enumValue" => "SUPERSEDED"}))
    RevocationReason.add_member(:cessation_of_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CESSATION_OF_OPERATION", traits: {"smithy.api#enumValue" => "CESSATION_OF_OPERATION"}))
    RevocationReason.add_member(:certificate_hold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CERTIFICATE_HOLD", traits: {"smithy.api#enumValue" => "CERTIFICATE_HOLD"}))
    RevocationReason.add_member(:remove_from_crl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVE_FROM_CRL", traits: {"smithy.api#enumValue" => "REMOVE_FROM_CRL"}))
    RevocationReason.add_member(:privilege_withdrawn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVILEGE_WITHDRAWN", traits: {"smithy.api#enumValue" => "PRIVILEGE_WITHDRAWN"}))
    RevocationReason.add_member(:a_a_compromise, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "A_A_COMPROMISE", traits: {"smithy.api#enumValue" => "A_A_COMPROMISE"}))
    RevokeAcmeAccountRequest.add_member(:acme_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeEndpointArn, name: "AcmeEndpointArn", traits: {"smithy.api#required" => {}}))
    RevokeAcmeAccountRequest.add_member(:account_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AccountUrl", traits: {"smithy.api#required" => {}}))
    RevokeAcmeAccountRequest.type = Types::RevokeAcmeAccountRequest
    RevokeAcmeExternalAccountBindingRequest.add_member(:acme_external_account_binding_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeExternalAccountBindingArn, name: "AcmeExternalAccountBindingArn", traits: {"smithy.api#required" => {}}))
    RevokeAcmeExternalAccountBindingRequest.type = Types::RevokeAcmeExternalAccountBindingRequest
    RevokeCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn", traits: {"smithy.api#required" => {}}))
    RevokeCertificateRequest.add_member(:revocation_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationReason, name: "RevocationReason", traits: {"smithy.api#required" => {}}))
    RevokeCertificateRequest.type = Types::RevokeCertificateRequest
    RevokeCertificateResponse.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn"))
    RevokeCertificateResponse.type = Types::RevokeCertificateResponse
    SearchCertificatesRequest.add_member(:filter_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateFilterStatement, name: "FilterStatement"))
    SearchCertificatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchMaxResults, name: "MaxResults", traits: {"smithy.api#default" => 100}))
    SearchCertificatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    SearchCertificatesRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchCertificatesSortBy, name: "SortBy", traits: {"smithy.api#default" => "CREATED_AT"}))
    SearchCertificatesRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchCertificatesSortOrder, name: "SortOrder", traits: {"smithy.api#default" => "ASCENDING"}))
    SearchCertificatesRequest.type = Types::SearchCertificatesRequest
    SearchCertificatesResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateSearchResultList, name: "Results"))
    SearchCertificatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    SearchCertificatesResponse.type = Types::SearchCertificatesResponse
    SearchCertificatesSortBy.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED_AT", traits: {"smithy.api#enumValue" => "CREATED_AT"}))
    SearchCertificatesSortBy.add_member(:not_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_AFTER", traits: {"smithy.api#enumValue" => "NOT_AFTER"}))
    SearchCertificatesSortBy.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATUS", traits: {"smithy.api#enumValue" => "STATUS"}))
    SearchCertificatesSortBy.add_member(:renewal_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RENEWAL_STATUS", traits: {"smithy.api#enumValue" => "RENEWAL_STATUS"}))
    SearchCertificatesSortBy.add_member(:exported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPORTED", traits: {"smithy.api#enumValue" => "EXPORTED"}))
    SearchCertificatesSortBy.add_member(:in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_USE", traits: {"smithy.api#enumValue" => "IN_USE"}))
    SearchCertificatesSortBy.add_member(:not_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_BEFORE", traits: {"smithy.api#enumValue" => "NOT_BEFORE"}))
    SearchCertificatesSortBy.add_member(:key_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEY_ALGORITHM", traits: {"smithy.api#enumValue" => "KEY_ALGORITHM"}))
    SearchCertificatesSortBy.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TYPE", traits: {"smithy.api#enumValue" => "TYPE"}))
    SearchCertificatesSortBy.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CERTIFICATE_ARN", traits: {"smithy.api#enumValue" => "CERTIFICATE_ARN"}))
    SearchCertificatesSortBy.add_member(:common_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMMON_NAME", traits: {"smithy.api#enumValue" => "COMMON_NAME"}))
    SearchCertificatesSortBy.add_member(:revoked_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVOKED_AT", traits: {"smithy.api#enumValue" => "REVOKED_AT"}))
    SearchCertificatesSortBy.add_member(:renewal_eligibility, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RENEWAL_ELIGIBILITY", traits: {"smithy.api#enumValue" => "RENEWAL_ELIGIBILITY"}))
    SearchCertificatesSortBy.add_member(:issued_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISSUED_AT", traits: {"smithy.api#enumValue" => "ISSUED_AT"}))
    SearchCertificatesSortBy.add_member(:managed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED_BY", traits: {"smithy.api#enumValue" => "MANAGED_BY"}))
    SearchCertificatesSortBy.add_member(:export_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPORT_OPTION", traits: {"smithy.api#enumValue" => "EXPORT_OPTION"}))
    SearchCertificatesSortBy.add_member(:validation_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION_METHOD", traits: {"smithy.api#enumValue" => "VALIDATION_METHOD"}))
    SearchCertificatesSortBy.add_member(:imported_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORTED_AT", traits: {"smithy.api#enumValue" => "IMPORTED_AT"}))
    SearchCertificatesSortBy.add_member(:acme_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACME_ENDPOINT_ARN", traits: {"smithy.api#enumValue" => "ACME_ENDPOINT_ARN"}))
    SearchCertificatesSortBy.add_member(:acme_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACME_ACCOUNT_ID", traits: {"smithy.api#enumValue" => "ACME_ACCOUNT_ID"}))
    SearchCertificatesSortBy.add_member(:certificate_key_pair_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CERTIFICATE_KEY_PAIR_ORIGIN", traits: {"smithy.api#enumValue" => "CERTIFICATE_KEY_PAIR_ORIGIN"}))
    SearchCertificatesSortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SearchCertificatesSortOrder.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SortBy.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED_AT", traits: {"smithy.api#enumValue" => "CREATED_AT"}))
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    SubjectAlternativeNameFilter.add_member(:dns_name, Types::SubjectAlternativeNameFilter::DnsName, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsNameFilter, name: "DnsName"))
    SubjectAlternativeNameFilter.add_member(:unknown, Types::SubjectAlternativeNameFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SubjectAlternativeNameFilter.type = Types::SubjectAlternativeNameFilter
    SubjectFilter.add_member(:common_name, Types::SubjectFilter::CommonName, ::Smithy::Schema::Shapes::MemberShape.new(target: CommonNameFilter, name: "CommonName"))
    SubjectFilter.add_member(:unknown, Types::SubjectFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SubjectFilter.type = Types::SubjectFilter
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value"))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagPolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    TagPolicyException.type = Types::TagPolicyException
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityErrorMessage, name: "message"))
    ThrottlingException.add_member(:throttling_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingReasonList, name: "throttlingReasons"))
    ThrottlingException.type = Types::ThrottlingException
    ThrottlingReason.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: CoralAvailabilityThrottlingReason, name: "reason"))
    ThrottlingReason.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: CoralAvailabilityThrottledResource, name: "resource"))
    ThrottlingReason.type = Types::ThrottlingReason
    ThrottlingReasonList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingReason, name: "member"))
    TimeType.add_member(:minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINUTES", traits: {"smithy.api#enumValue" => "MINUTES"}))
    TimeType.add_member(:hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOURS", traits: {"smithy.api#enumValue" => "HOURS"}))
    TimeType.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAYS", traits: {"smithy.api#enumValue" => "DAYS"}))
    TimestampRange.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "Start"))
    TimestampRange.add_member(:end, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "End"))
    TimestampRange.type = Types::TimestampRange
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateAcmeDomainValidationRequest.add_member(:acme_domain_validation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeDomainValidationArn, name: "AcmeDomainValidationArn", traits: {"smithy.api#required" => {}}))
    UpdateAcmeDomainValidationRequest.add_member(:prevalidation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: PrevalidationOptions, name: "PrevalidationOptions"))
    UpdateAcmeDomainValidationRequest.type = Types::UpdateAcmeDomainValidationRequest
    UpdateAcmeEndpointRequest.add_member(:acme_endpoint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeEndpointArn, name: "AcmeEndpointArn", traits: {"smithy.api#required" => {}}))
    UpdateAcmeEndpointRequest.add_member(:authorization_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeAuthorizationBehavior, name: "AuthorizationBehavior"))
    UpdateAcmeEndpointRequest.add_member(:contact, ::Smithy::Schema::Shapes::MemberShape.new(target: AcmeContact, name: "Contact"))
    UpdateAcmeEndpointRequest.add_member(:certificate_authority, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAuthority, name: "CertificateAuthority"))
    UpdateAcmeEndpointRequest.type = Types::UpdateAcmeEndpointRequest
    UpdateCertificateOptionsRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn", traits: {"smithy.api#required" => {}}))
    UpdateCertificateOptionsRequest.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateOptions, name: "Options", traits: {"smithy.api#required" => {}}))
    UpdateCertificateOptionsRequest.type = Types::UpdateCertificateOptionsRequest
    UpdateStatus.add_member(:pending_domain_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_DOMAIN_VALIDATION", traits: {"smithy.api#enumValue" => "PENDING_DOMAIN_VALIDATION"}))
    UpdateStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    UpdateStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    UpdateSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateStatus, name: "Status"))
    UpdateSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateType, name: "Type"))
    UpdateSummary.add_member(:domain_validation_method_update_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainValidationMethodUpdateSummary, name: "DomainValidationMethodUpdateSummary"))
    UpdateSummary.add_member(:requested_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "RequestedAt"))
    UpdateSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "UpdatedAt"))
    UpdateSummary.type = Types::UpdateSummary
    UpdateType.add_member(:domain_validation_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN_VALIDATION_METHOD", traits: {"smithy.api#enumValue" => "DOMAIN_VALIDATION_METHOD"}))
    ValidationChallenge.add_member(:email_validation_challenge, Types::ValidationChallenge::EmailValidationChallenge, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailValidationChallenge, name: "EmailValidationChallenge"))
    ValidationChallenge.add_member(:dns_validation_challenge, Types::ValidationChallenge::DnsValidationChallenge, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsValidationChallenge, name: "DnsValidationChallenge"))
    ValidationChallenge.add_member(:unknown, Types::ValidationChallenge::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ValidationChallenge.type = Types::ValidationChallenge
    ValidationConfiguration.add_member(:validation_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationMethod, name: "ValidationMethod"))
    ValidationConfiguration.add_member(:validation_challenge, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationChallenge, name: "ValidationChallenge"))
    ValidationConfiguration.add_member(:validation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainStatus, name: "ValidationStatus"))
    ValidationConfiguration.type = Types::ValidationConfiguration
    ValidationEmailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionMessage, name: "message"))
    ValidationException.type = Types::ValidationException
    ValidationMethod.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL", traits: {"smithy.api#enumValue" => "EMAIL"}))
    ValidationMethod.add_member(:dns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DNS", traits: {"smithy.api#enumValue" => "DNS"}))
    ValidationMethod.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    X509AttributeFilter.add_member(:subject, Types::X509AttributeFilter::Subject, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectFilter, name: "Subject"))
    X509AttributeFilter.add_member(:subject_alternative_name, Types::X509AttributeFilter::SubjectAlternativeName, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectAlternativeNameFilter, name: "SubjectAlternativeName"))
    X509AttributeFilter.add_member(:extended_key_usage, Types::X509AttributeFilter::ExtendedKeyUsage, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedKeyUsageName, name: "ExtendedKeyUsage"))
    X509AttributeFilter.add_member(:key_usage, Types::X509AttributeFilter::KeyUsage, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyUsageName, name: "KeyUsage"))
    X509AttributeFilter.add_member(:key_algorithm, Types::X509AttributeFilter::KeyAlgorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAlgorithm, name: "KeyAlgorithm"))
    X509AttributeFilter.add_member(:serial_number, Types::X509AttributeFilter::SerialNumber, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumber, name: "SerialNumber"))
    X509AttributeFilter.add_member(:not_after, Types::X509AttributeFilter::NotAfter, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampRange, name: "NotAfter"))
    X509AttributeFilter.add_member(:not_before, Types::X509AttributeFilter::NotBefore, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampRange, name: "NotBefore"))
    X509AttributeFilter.add_member(:unknown, Types::X509AttributeFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    X509AttributeFilter.type = Types::X509AttributeFilter
    X509Attributes.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: DistinguishedName, name: "Issuer"))
    X509Attributes.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: DistinguishedName, name: "Subject"))
    X509Attributes.add_member(:subject_alternative_names, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralNameList, name: "SubjectAlternativeNames"))
    X509Attributes.add_member(:extended_key_usages, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedKeyUsageNames, name: "ExtendedKeyUsages"))
    X509Attributes.add_member(:key_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAlgorithm, name: "KeyAlgorithm"))
    X509Attributes.add_member(:key_usages, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyUsageNames, name: "KeyUsages"))
    X509Attributes.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumber, name: "SerialNumber"))
    X509Attributes.add_member(:not_after, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "NotAfter"))
    X509Attributes.add_member(:not_before, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "NotBefore"))
    X509Attributes.type = Types::X509Attributes

    CertificateManager = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.acm#CertificateManager"
      service.name = "CertificateManager"
      service.version = "2015-12-08"
      service.traits = {"aws.api#service" => {"sdkId" => "ACM", "endpointPrefix" => "acm", "arnNamespace" => "acm", "cloudTrailEventSource" => "acm.amazonaws.com", "cloudFormationName" => "CertificateManager"}, "aws.auth#sigv4" => {"name" => "acm"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Certificate Manager", "smithy.rules#clientContextParams" => {"ServiceType" => {"type" => "string", "documentation" => "The service type: ACM or ACM-ACME. Injected via @staticContextParams."}}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => true, "documentation" => "The AWS region to send requests to.", "type" => "string"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send requests.", "type" => "string"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "Use FIPS endpoints.", "type" => "boolean"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "Use dual-stack endpoints.", "type" => "boolean"}, "ServiceType" => {"required" => true, "documentation" => "The service type: ACM or ACM-ACME. Injected via @staticContextParams.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "stringEquals", "argv" => [{"ref" => "ServiceType"}, "ACM-ACME"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws"]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}], "results" => [{"conditions" => [], "endpoint" => {"url" => "{Endpoint}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS endpoints are not available for ACME operations", "type" => "error"}, {"documentation" => "ACME standard", "conditions" => [], "endpoint" => {"url" => "https://acm-acme.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"documentation" => "ACME operations are only available in commercial AWS partitions", "conditions" => [], "error" => "ACME operations are only available in commercial AWS partitions", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://acm-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://acm.{Region}.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"documentation" => "ACM FIPS standard", "conditions" => [], "endpoint" => {"url" => "https://acm-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://acm.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"documentation" => "ACM standard", "conditions" => [], "endpoint" => {"url" => "https://acm.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"documentation" => "Fallback error if region is not set", "conditions" => [], "error" => "Region must be set to resolve an endpoint.", "type" => "error"}], "root" => 2, "nodeCount" => 10, "nodes" => "/////wAAAAH/////AAAAAAX14QEAAAADAAAAAQAAAAQF9eEKAAAAAgAAAAkAAAAFAAAABAAAAAcAAAAGAAAABQX14QgF9eEJAAAABQX14QUAAAAIAAAABgX14QYF9eEHAAAAAwAAAAoF9eEEAAAABAX14QIF9eED"}}
      service.add_operation(:add_tags_to_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#AddTagsToCertificate"
        operation.name = "AddTagsToCertificate"
        operation.input = AddTagsToCertificateRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidArnException
        operation.errors << InvalidParameterException
        operation.errors << InvalidTagException
        operation.errors << ResourceNotFoundException
        operation.errors << TagPolicyException
        operation.errors << ThrottlingException
        operation.errors << TooManyTagsException
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM"}}}
      end)
      service.add_operation(:create_acme_domain_validation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#CreateAcmeDomainValidation"
        operation.name = "CreateAcmeDomainValidation"
        operation.input = CreateAcmeDomainValidationRequest
        operation.output = CreateAcmeDomainValidationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM-ACME"}}}
      end)
      service.add_operation(:create_acme_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#CreateAcmeEndpoint"
        operation.name = "CreateAcmeEndpoint"
        operation.input = CreateAcmeEndpointRequest
        operation.output = CreateAcmeEndpointResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM-ACME"}}}
      end)
      service.add_operation(:create_acme_external_account_binding, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#CreateAcmeExternalAccountBinding"
        operation.name = "CreateAcmeExternalAccountBinding"
        operation.input = CreateAcmeExternalAccountBindingRequest
        operation.output = CreateAcmeExternalAccountBindingResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM-ACME"}}}
      end)
      service.add_operation(:delete_acme_domain_validation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#DeleteAcmeDomainValidation"
        operation.name = "DeleteAcmeDomainValidation"
        operation.input = DeleteAcmeDomainValidationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM-ACME"}}}
      end)
      service.add_operation(:delete_acme_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#DeleteAcmeEndpoint"
        operation.name = "DeleteAcmeEndpoint"
        operation.input = DeleteAcmeEndpointRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM-ACME"}}}
      end)
      service.add_operation(:delete_acme_external_account_binding, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#DeleteAcmeExternalAccountBinding"
        operation.name = "DeleteAcmeExternalAccountBinding"
        operation.input = DeleteAcmeExternalAccountBindingRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM-ACME"}}}
      end)
      service.add_operation(:delete_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#DeleteCertificate"
        operation.name = "DeleteCertificate"
        operation.input = DeleteCertificateRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InvalidArnException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM"}}}
      end)
      service.add_operation(:describe_acme_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#DescribeAcmeAccount"
        operation.name = "DescribeAcmeAccount"
        operation.input = DescribeAcmeAccountRequest
        operation.output = DescribeAcmeAccountResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM-ACME"}}}
      end)
      service.add_operation(:describe_acme_domain_validation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#DescribeAcmeDomainValidation"
        operation.name = "DescribeAcmeDomainValidation"
        operation.input = DescribeAcmeDomainValidationRequest
        operation.output = DescribeAcmeDomainValidationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM-ACME"}}}
      end)
      service.add_operation(:describe_acme_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#DescribeAcmeEndpoint"
        operation.name = "DescribeAcmeEndpoint"
        operation.input = DescribeAcmeEndpointRequest
        operation.output = DescribeAcmeEndpointResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM-ACME"}}}
      end)
      service.add_operation(:describe_acme_external_account_binding, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#DescribeAcmeExternalAccountBinding"
        operation.name = "DescribeAcmeExternalAccountBinding"
        operation.input = DescribeAcmeExternalAccountBindingRequest
        operation.output = DescribeAcmeExternalAccountBindingResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM-ACME"}}}
      end)
      service.add_operation(:describe_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#DescribeCertificate"
        operation.name = "DescribeCertificate"
        operation.input = DescribeCertificateRequest
        operation.output = DescribeCertificateResponse
        operation.errors << InvalidArnException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM"}}}
      end)
      service.add_operation(:export_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#ExportCertificate"
        operation.name = "ExportCertificate"
        operation.input = ExportCertificateRequest
        operation.output = ExportCertificateResponse
        operation.errors << InvalidArnException
        operation.errors << RequestInProgressException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM"}}}
      end)
      service.add_operation(:get_account_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#GetAccountConfiguration"
        operation.name = "GetAccountConfiguration"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetAccountConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM"}}}
      end)
      service.add_operation(:get_acme_external_account_binding_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#GetAcmeExternalAccountBindingCredentials"
        operation.name = "GetAcmeExternalAccountBindingCredentials"
        operation.input = GetAcmeExternalAccountBindingCredentialsRequest
        operation.output = GetAcmeExternalAccountBindingCredentialsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM-ACME"}}}
      end)
      service.add_operation(:get_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#GetCertificate"
        operation.name = "GetCertificate"
        operation.input = GetCertificateRequest
        operation.output = GetCertificateResponse
        operation.errors << InvalidArnException
        operation.errors << RequestInProgressException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM"}}, "smithy.test#smokeTests" => [{"id" => "GetCertificateFailure", "params" => {"CertificateArn" => "arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:import_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#ImportCertificate"
        operation.name = "ImportCertificate"
        operation.input = ImportCertificateRequest
        operation.output = ImportCertificateResponse
        operation.errors << ConflictException
        operation.errors << InvalidArnException
        operation.errors << InvalidParameterException
        operation.errors << InvalidTagException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << TagPolicyException
        operation.errors << TooManyTagsException
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM"}}}
      end)
      service.add_operation(:list_acme_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#ListAcmeAccounts"
        operation.name = "ListAcmeAccounts"
        operation.input = ListAcmeAccountsRequest
        operation.output = ListAcmeAccountsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM-ACME"}}}
        operation[:paginator] = Paginators::ListAcmeAccounts.new
      end)
      service.add_operation(:list_acme_domain_validations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#ListAcmeDomainValidations"
        operation.name = "ListAcmeDomainValidations"
        operation.input = ListAcmeDomainValidationsRequest
        operation.output = ListAcmeDomainValidationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM-ACME"}}}
        operation[:paginator] = Paginators::ListAcmeDomainValidations.new
      end)
      service.add_operation(:list_acme_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#ListAcmeEndpoints"
        operation.name = "ListAcmeEndpoints"
        operation.input = ListAcmeEndpointsRequest
        operation.output = ListAcmeEndpointsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM-ACME"}}}
        operation[:paginator] = Paginators::ListAcmeEndpoints.new
      end)
      service.add_operation(:list_acme_external_account_bindings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#ListAcmeExternalAccountBindings"
        operation.name = "ListAcmeExternalAccountBindings"
        operation.input = ListAcmeExternalAccountBindingsRequest
        operation.output = ListAcmeExternalAccountBindingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM-ACME"}}}
        operation[:paginator] = Paginators::ListAcmeExternalAccountBindings.new
      end)
      service.add_operation(:list_certificate_domain_validations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#ListCertificateDomainValidations"
        operation.name = "ListCertificateDomainValidations"
        operation.input = ListCertificateDomainValidationsRequest
        operation.output = ListCertificateDomainValidationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgsException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM"}}}
        operation[:paginator] = Paginators::ListCertificateDomainValidations.new
      end)
      service.add_operation(:list_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#ListCertificates"
        operation.name = "ListCertificates"
        operation.input = ListCertificatesRequest
        operation.output = ListCertificatesResponse
        operation.errors << InvalidArgsException
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM"}}, "smithy.test#smokeTests" => [{"id" => "ListCertificatesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListCertificates.new
      end)
      service.add_operation(:list_tags_for_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#ListTagsForCertificate"
        operation.name = "ListTagsForCertificate"
        operation.input = ListTagsForCertificateRequest
        operation.output = ListTagsForCertificateResponse
        operation.errors << InvalidArnException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM"}}}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.api#tags" => ["newTaggingApi"], "smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM"}}}
      end)
      service.add_operation(:put_account_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#PutAccountConfiguration"
        operation.name = "PutAccountConfiguration"
        operation.input = PutAccountConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM"}}}
      end)
      service.add_operation(:remove_tags_from_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#RemoveTagsFromCertificate"
        operation.name = "RemoveTagsFromCertificate"
        operation.input = RemoveTagsFromCertificateRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidArnException
        operation.errors << InvalidParameterException
        operation.errors << InvalidTagException
        operation.errors << ResourceNotFoundException
        operation.errors << TagPolicyException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM"}}}
      end)
      service.add_operation(:renew_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#RenewCertificate"
        operation.name = "RenewCertificate"
        operation.input = RenewCertificateRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidArnException
        operation.errors << RequestInProgressException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM"}}}
      end)
      service.add_operation(:request_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#RequestCertificate"
        operation.name = "RequestCertificate"
        operation.input = RequestCertificateRequest
        operation.output = RequestCertificateResponse
        operation.errors << InvalidArnException
        operation.errors << InvalidDomainValidationOptionsException
        operation.errors << InvalidParameterException
        operation.errors << InvalidTagException
        operation.errors << LimitExceededException
        operation.errors << TagPolicyException
        operation.errors << TooManyTagsException
        operation.traits = {"smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM"}}}
      end)
      service.add_operation(:resend_validation_email, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#ResendValidationEmail"
        operation.name = "ResendValidationEmail"
        operation.input = ResendValidationEmailRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidArnException
        operation.errors << InvalidDomainValidationOptionsException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM"}}}
      end)
      service.add_operation(:revoke_acme_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#RevokeAcmeAccount"
        operation.name = "RevokeAcmeAccount"
        operation.input = RevokeAcmeAccountRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM-ACME"}}}
      end)
      service.add_operation(:revoke_acme_external_account_binding, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#RevokeAcmeExternalAccountBinding"
        operation.name = "RevokeAcmeExternalAccountBinding"
        operation.input = RevokeAcmeExternalAccountBindingRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM-ACME"}}}
      end)
      service.add_operation(:revoke_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#RevokeCertificate"
        operation.name = "RevokeCertificate"
        operation.input = RevokeCertificateRequest
        operation.output = RevokeCertificateResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InvalidArnException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM"}}}
      end)
      service.add_operation(:search_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#SearchCertificates"
        operation.name = "SearchCertificates"
        operation.input = SearchCertificatesRequest
        operation.output = SearchCertificatesResponse
        operation.errors << AccessDeniedException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM"}}, "smithy.test#smokeTests" => [{"id" => "SearchCertificatesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::SearchCertificates.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#tags" => ["newTaggingApi"], "smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM"}}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#tags" => ["newTaggingApi"], "smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM"}}}
      end)
      service.add_operation(:update_acme_domain_validation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#UpdateAcmeDomainValidation"
        operation.name = "UpdateAcmeDomainValidation"
        operation.input = UpdateAcmeDomainValidationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM-ACME"}}}
      end)
      service.add_operation(:update_acme_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#UpdateAcmeEndpoint"
        operation.name = "UpdateAcmeEndpoint"
        operation.input = UpdateAcmeEndpointRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM-ACME"}}}
      end)
      service.add_operation(:update_certificate_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#UpdateCertificateOptions"
        operation.name = "UpdateCertificateOptions"
        operation.input = UpdateCertificateOptionsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictException
        operation.errors << InvalidArnException
        operation.errors << InvalidStateException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"ServiceType" => {"value" => "ACM"}}}
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

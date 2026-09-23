# frozen_string_literal: true

# This is generated code!

module Aws::ACM
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#AccessDeniedException", name: "AccessDeniedException", traits: {"aws.protocols#awsQueryError" => {"code" => "AccessDenied", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AddTagsToCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#AddTagsToCertificateRequest", name: "AddTagsToCertificateRequest")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:acm:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*$"})
    AvailabilityErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#AvailabilityErrorMessage", name: "AvailabilityErrorMessage")
    CertificateBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#CertificateBody", name: "CertificateBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}, "smithy.api#pattern" => "^-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}(\\u000D?\\u000A)?$"})
    CertificateBodyBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.acm#CertificateBodyBlob", name: "CertificateBodyBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}})
    CertificateChain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#CertificateChain", name: "CertificateChain", traits: {"smithy.api#length" => {"min" => 1, "max" => 2097152}, "smithy.api#pattern" => "^(-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}\\u000D?\\u000A)*-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}(\\u000D?\\u000A)?$"})
    CertificateChainBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.acm#CertificateChainBlob", name: "CertificateChainBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 2097152}})
    CertificateDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#CertificateDetail", name: "CertificateDetail")
    CertificateExport = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#CertificateExport", name: "CertificateExport")
    CertificateManagedBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#CertificateManagedBy", name: "CertificateManagedBy")
    CertificateOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#CertificateOptions", name: "CertificateOptions")
    CertificateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#CertificateStatus", name: "CertificateStatus")
    CertificateStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#CertificateStatuses", name: "CertificateStatuses")
    CertificateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#CertificateSummary", name: "CertificateSummary")
    CertificateSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#CertificateSummaryList", name: "CertificateSummaryList")
    CertificateTransparencyLoggingPreference = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#CertificateTransparencyLoggingPreference", name: "CertificateTransparencyLoggingPreference")
    CertificateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#CertificateType", name: "CertificateType")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client"})
    DeleteCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DeleteCertificateRequest", name: "DeleteCertificateRequest")
    DescribeCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DescribeCertificateRequest", name: "DescribeCertificateRequest")
    DescribeCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DescribeCertificateResponse", name: "DescribeCertificateResponse")
    DomainList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#DomainList", name: "DomainList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    DomainNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#DomainNameString", name: "DomainNameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "^(\\*\\.)?(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"})
    DomainStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#DomainStatus", name: "DomainStatus")
    DomainValidation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DomainValidation", name: "DomainValidation")
    DomainValidationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#DomainValidationList", name: "DomainValidationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    DomainValidationOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#DomainValidationOption", name: "DomainValidationOption")
    DomainValidationOptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#DomainValidationOptionList", name: "DomainValidationOptionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ExpiryEventsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ExpiryEventsConfiguration", name: "ExpiryEventsConfiguration")
    ExportCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ExportCertificateRequest", name: "ExportCertificateRequest")
    ExportCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ExportCertificateResponse", name: "ExportCertificateResponse")
    ExtendedKeyUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ExtendedKeyUsage", name: "ExtendedKeyUsage")
    ExtendedKeyUsageFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#ExtendedKeyUsageFilterList", name: "ExtendedKeyUsageFilterList")
    ExtendedKeyUsageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#ExtendedKeyUsageList", name: "ExtendedKeyUsageList")
    ExtendedKeyUsageName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#ExtendedKeyUsageName", name: "ExtendedKeyUsageName")
    ExtendedKeyUsageNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#ExtendedKeyUsageNames", name: "ExtendedKeyUsageNames")
    FailureReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#FailureReason", name: "FailureReason")
    Filters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#Filters", name: "Filters")
    GetAccountConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#GetAccountConfigurationResponse", name: "GetAccountConfigurationResponse")
    GetCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#GetCertificateRequest", name: "GetCertificateRequest")
    GetCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#GetCertificateResponse", name: "GetCertificateResponse")
    HttpRedirect = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#HttpRedirect", name: "HttpRedirect")
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#IdempotencyToken", name: "IdempotencyToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^\\w+$"})
    ImportCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ImportCertificateRequest", name: "ImportCertificateRequest")
    ImportCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ImportCertificateResponse", name: "ImportCertificateResponse")
    InUseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#InUseList", name: "InUseList")
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
    ListCertificatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ListCertificatesRequest", name: "ListCertificatesRequest")
    ListCertificatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ListCertificatesResponse", name: "ListCertificatesResponse")
    ListTagsForCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ListTagsForCertificateRequest", name: "ListTagsForCertificateRequest")
    ListTagsForCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ListTagsForCertificateResponse", name: "ListTagsForCertificateResponse")
    MaxItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.acm#MaxItems", name: "MaxItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]*$"})
    NullableBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.acm#NullableBoolean", name: "NullableBoolean")
    PassphraseBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.acm#PassphraseBlob", name: "PassphraseBlob", traits: {"smithy.api#length" => {"min" => 4, "max" => 128}, "smithy.api#sensitive" => {}})
    PcaArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#PcaArn", name: "PcaArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:acm-pca:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*$"})
    PositiveInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.acm#PositiveInteger", name: "PositiveInteger", traits: {"smithy.api#range" => {"min" => 1}})
    PrivateKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#PrivateKey", name: "PrivateKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 524288}, "smithy.api#pattern" => "^-{5}BEGIN PRIVATE KEY-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END PRIVATE KEY-{5}(\\u000D?\\u000A)?$", "smithy.api#sensitive" => {}})
    PrivateKeyBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.acm#PrivateKeyBlob", name: "PrivateKeyBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 5120}, "smithy.api#sensitive" => {}})
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
    RevokeCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#RevokeCertificateRequest", name: "RevokeCertificateRequest")
    RevokeCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#RevokeCertificateResponse", name: "RevokeCertificateResponse")
    ServiceErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#ServiceErrorMessage", name: "ServiceErrorMessage")
    SortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#SortBy", name: "SortBy")
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#SortOrder", name: "SortOrder")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#String", name: "String")
    TStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.acm#TStamp", name: "TStamp")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*$"})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#TagPolicyException", name: "TagPolicyException", traits: {"smithy.api#error" => "client"})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ThrottlingException", name: "ThrottlingException", traits: {"aws.protocols#awsQueryError" => {"code" => "Throttling", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client"})
    UpdateCertificateOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#UpdateCertificateOptionsRequest", name: "UpdateCertificateOptionsRequest")
    ValidationEmailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.acm#ValidationEmailList", name: "ValidationEmailList")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.acm#ValidationException", name: "ValidationException", traits: {"aws.protocols#awsQueryError" => {"code" => "ValidationError", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.acm#ValidationExceptionMessage", name: "ValidationExceptionMessage")
    ValidationMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.acm#ValidationMethod", name: "ValidationMethod")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceErrorMessage, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AddTagsToCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn", traits: {"smithy.api#required" => {}}))
    AddTagsToCertificateRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    AddTagsToCertificateRequest.type = Types::AddTagsToCertificateRequest
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
    CertificateDetail.type = Types::CertificateDetail
    CertificateExport.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    CertificateExport.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    CertificateManagedBy.add_member(:cloudfront, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUDFRONT", traits: {"smithy.api#enumValue" => "CLOUDFRONT"}))
    CertificateOptions.add_member(:certificate_transparency_logging_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateTransparencyLoggingPreference, name: "CertificateTransparencyLoggingPreference"))
    CertificateOptions.add_member(:export, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateExport, name: "Export"))
    CertificateOptions.type = Types::CertificateOptions
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
    CertificateSummary.type = Types::CertificateSummary
    CertificateSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateSummary, name: "member"))
    CertificateTransparencyLoggingPreference.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    CertificateTransparencyLoggingPreference.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    CertificateType.add_member(:imported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORTED", traits: {"smithy.api#enumValue" => "IMPORTED"}))
    CertificateType.add_member(:amazon_issued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON_ISSUED", traits: {"smithy.api#enumValue" => "AMAZON_ISSUED"}))
    CertificateType.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVATE", traits: {"smithy.api#enumValue" => "PRIVATE"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ConflictException.type = Types::ConflictException
    DeleteCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn", traits: {"smithy.api#required" => {}}))
    DeleteCertificateRequest.type = Types::DeleteCertificateRequest
    DescribeCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn", traits: {"smithy.api#required" => {}}))
    DescribeCertificateRequest.type = Types::DescribeCertificateRequest
    DescribeCertificateResponse.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateDetail, name: "Certificate"))
    DescribeCertificateResponse.type = Types::DescribeCertificateResponse
    DomainList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameString, name: "member"))
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
    DomainValidationOption.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameString, name: "DomainName", traits: {"smithy.api#required" => {}}))
    DomainValidationOption.add_member(:validation_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameString, name: "ValidationDomain", traits: {"smithy.api#required" => {}}))
    DomainValidationOption.type = Types::DomainValidationOption
    DomainValidationOptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainValidationOption, name: "member"))
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
    GetAccountConfigurationResponse.add_member(:expiry_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpiryEventsConfiguration, name: "ExpiryEvents"))
    GetAccountConfigurationResponse.type = Types::GetAccountConfigurationResponse
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
    ListCertificatesRequest.add_member(:certificate_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateStatuses, name: "CertificateStatuses"))
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
    RevokeCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn", traits: {"smithy.api#required" => {}}))
    RevokeCertificateRequest.add_member(:revocation_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationReason, name: "RevocationReason", traits: {"smithy.api#required" => {}}))
    RevokeCertificateRequest.type = Types::RevokeCertificateRequest
    RevokeCertificateResponse.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn"))
    RevokeCertificateResponse.type = Types::RevokeCertificateResponse
    SortBy.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED_AT", traits: {"smithy.api#enumValue" => "CREATED_AT"}))
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value"))
    Tag.type = Types::Tag
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagPolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    TagPolicyException.type = Types::TagPolicyException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityErrorMessage, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    TooManyTagsException.type = Types::TooManyTagsException
    UpdateCertificateOptionsRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateArn", traits: {"smithy.api#required" => {}}))
    UpdateCertificateOptionsRequest.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateOptions, name: "Options", traits: {"smithy.api#required" => {}}))
    UpdateCertificateOptionsRequest.type = Types::UpdateCertificateOptionsRequest
    ValidationEmailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionMessage, name: "message"))
    ValidationException.type = Types::ValidationException
    ValidationMethod.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL", traits: {"smithy.api#enumValue" => "EMAIL"}))
    ValidationMethod.add_member(:dns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DNS", traits: {"smithy.api#enumValue" => "DNS"}))
    ValidationMethod.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))

    CertificateManager = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.acm#CertificateManager"
      service.name = "CertificateManager"
      service.version = "2015-12-08"
      service.traits = {"aws.api#service" => {"sdkId" => "ACM", "endpointPrefix" => "acm", "arnNamespace" => "acm", "cloudTrailEventSource" => "acm.amazonaws.com", "cloudFormationName" => "CertificateManager"}, "aws.auth#sigv4" => {"name" => "acm"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Certificate Manager"}
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
        operation.traits = {}
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
        operation.traits = {}
      end)
      service.add_operation(:describe_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#DescribeCertificate"
        operation.name = "DescribeCertificate"
        operation.input = DescribeCertificateRequest
        operation.output = DescribeCertificateResponse
        operation.errors << InvalidArnException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:export_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#ExportCertificate"
        operation.name = "ExportCertificate"
        operation.input = ExportCertificateRequest
        operation.output = ExportCertificateResponse
        operation.errors << InvalidArnException
        operation.errors << RequestInProgressException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_account_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#GetAccountConfiguration"
        operation.name = "GetAccountConfiguration"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetAccountConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#GetCertificate"
        operation.name = "GetCertificate"
        operation.input = GetCertificateRequest
        operation.output = GetCertificateResponse
        operation.errors << InvalidArnException
        operation.errors << RequestInProgressException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "GetCertificateFailure", "params" => {"CertificateArn" => "arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:import_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#ImportCertificate"
        operation.name = "ImportCertificate"
        operation.input = ImportCertificateRequest
        operation.output = ImportCertificateResponse
        operation.errors << InvalidArnException
        operation.errors << InvalidParameterException
        operation.errors << InvalidTagException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << TagPolicyException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:list_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#ListCertificates"
        operation.name = "ListCertificates"
        operation.input = ListCertificatesRequest
        operation.output = ListCertificatesResponse
        operation.errors << InvalidArgsException
        operation.errors << ValidationException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListCertificatesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListCertificates.new
      end)
      service.add_operation(:list_tags_for_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#ListTagsForCertificate"
        operation.name = "ListTagsForCertificate"
        operation.input = ListTagsForCertificateRequest
        operation.output = ListTagsForCertificateResponse
        operation.errors << InvalidArnException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
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
        operation.traits = {}
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
        operation.traits = {}
      end)
      service.add_operation(:renew_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#RenewCertificate"
        operation.name = "RenewCertificate"
        operation.input = RenewCertificateRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidArnException
        operation.errors << RequestInProgressException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
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
        operation.traits = {}
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
        operation.traits = {}
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
        operation.traits = {}
      end)
      service.add_operation(:update_certificate_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#UpdateCertificateOptions"
        operation.name = "UpdateCertificateOptions"
        operation.input = UpdateCertificateOptionsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidArnException
        operation.errors << InvalidStateException
        operation.errors << LimitExceededException
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

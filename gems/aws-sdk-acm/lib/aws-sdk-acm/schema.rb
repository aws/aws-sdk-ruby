# frozen_string_literal: true

# This is generated code!

module Aws::ACM
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#AccessDeniedException', name: 'AccessDeniedException', traits: {"aws.protocols#awsQueryError" => {"code" => "AccessDenied", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AddTagsToCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#AddTagsToCertificateRequest', name: 'AddTagsToCertificateRequest')
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acm#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:acm:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*$"})
    AvailabilityErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acm#AvailabilityErrorMessage', name: 'AvailabilityErrorMessage')
    CertificateBody = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acm#CertificateBody', name: 'CertificateBody', traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}, "smithy.api#pattern" => "^-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}(\\u000D?\\u000A)?$"})
    CertificateBodyBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.acm#CertificateBodyBlob', name: 'CertificateBodyBlob', traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}})
    CertificateChain = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acm#CertificateChain', name: 'CertificateChain', traits: {"smithy.api#length" => {"min" => 1, "max" => 2097152}, "smithy.api#pattern" => "^(-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}\\u000D?\\u000A)*-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}(\\u000D?\\u000A)?$"})
    CertificateChainBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.acm#CertificateChainBlob', name: 'CertificateChainBlob', traits: {"smithy.api#length" => {"min" => 1, "max" => 2097152}})
    CertificateDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#CertificateDetail', name: 'CertificateDetail')
    CertificateExport = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acm#CertificateExport', name: 'CertificateExport')
    CertificateManagedBy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acm#CertificateManagedBy', name: 'CertificateManagedBy')
    CertificateOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#CertificateOptions', name: 'CertificateOptions')
    CertificateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acm#CertificateStatus', name: 'CertificateStatus')
    CertificateStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acm#CertificateStatuses', name: 'CertificateStatuses')
    CertificateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#CertificateSummary', name: 'CertificateSummary')
    CertificateSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acm#CertificateSummaryList', name: 'CertificateSummaryList')
    CertificateTransparencyLoggingPreference = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acm#CertificateTransparencyLoggingPreference', name: 'CertificateTransparencyLoggingPreference')
    CertificateType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acm#CertificateType', name: 'CertificateType')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client"})
    DeleteCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#DeleteCertificateRequest', name: 'DeleteCertificateRequest')
    DescribeCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#DescribeCertificateRequest', name: 'DescribeCertificateRequest')
    DescribeCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#DescribeCertificateResponse', name: 'DescribeCertificateResponse')
    DomainList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acm#DomainList', name: 'DomainList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    DomainNameString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acm#DomainNameString', name: 'DomainNameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "^(\\*\\.)?(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"})
    DomainStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acm#DomainStatus', name: 'DomainStatus')
    DomainValidation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#DomainValidation', name: 'DomainValidation')
    DomainValidationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acm#DomainValidationList', name: 'DomainValidationList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    DomainValidationOption = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#DomainValidationOption', name: 'DomainValidationOption')
    DomainValidationOptionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acm#DomainValidationOptionList', name: 'DomainValidationOptionList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ExpiryEventsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#ExpiryEventsConfiguration', name: 'ExpiryEventsConfiguration')
    ExportCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#ExportCertificateRequest', name: 'ExportCertificateRequest')
    ExportCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#ExportCertificateResponse', name: 'ExportCertificateResponse')
    ExtendedKeyUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#ExtendedKeyUsage', name: 'ExtendedKeyUsage')
    ExtendedKeyUsageFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acm#ExtendedKeyUsageFilterList', name: 'ExtendedKeyUsageFilterList')
    ExtendedKeyUsageList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acm#ExtendedKeyUsageList', name: 'ExtendedKeyUsageList')
    ExtendedKeyUsageName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acm#ExtendedKeyUsageName', name: 'ExtendedKeyUsageName')
    ExtendedKeyUsageNames = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acm#ExtendedKeyUsageNames', name: 'ExtendedKeyUsageNames')
    FailureReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acm#FailureReason', name: 'FailureReason')
    Filters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#Filters', name: 'Filters')
    GetAccountConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#GetAccountConfigurationResponse', name: 'GetAccountConfigurationResponse')
    GetCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#GetCertificateRequest', name: 'GetCertificateRequest')
    GetCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#GetCertificateResponse', name: 'GetCertificateResponse')
    HttpRedirect = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#HttpRedirect', name: 'HttpRedirect')
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acm#IdempotencyToken', name: 'IdempotencyToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^\\w+$"})
    ImportCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#ImportCertificateRequest', name: 'ImportCertificateRequest')
    ImportCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#ImportCertificateResponse', name: 'ImportCertificateResponse')
    InUseList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acm#InUseList', name: 'InUseList')
    InvalidArgsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#InvalidArgsException', name: 'InvalidArgsException', traits: {"smithy.api#error" => "client"})
    InvalidArnException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#InvalidArnException', name: 'InvalidArnException', traits: {"smithy.api#error" => "client"})
    InvalidDomainValidationOptionsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#InvalidDomainValidationOptionsException', name: 'InvalidDomainValidationOptionsException', traits: {"smithy.api#error" => "client"})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client"})
    InvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#InvalidStateException', name: 'InvalidStateException', traits: {"smithy.api#error" => "client"})
    InvalidTagException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#InvalidTagException', name: 'InvalidTagException', traits: {"smithy.api#error" => "client"})
    KeyAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acm#KeyAlgorithm', name: 'KeyAlgorithm')
    KeyAlgorithmList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acm#KeyAlgorithmList', name: 'KeyAlgorithmList')
    KeyUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#KeyUsage', name: 'KeyUsage')
    KeyUsageFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acm#KeyUsageFilterList', name: 'KeyUsageFilterList')
    KeyUsageList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acm#KeyUsageList', name: 'KeyUsageList')
    KeyUsageName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acm#KeyUsageName', name: 'KeyUsageName')
    KeyUsageNames = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acm#KeyUsageNames', name: 'KeyUsageNames')
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListCertificatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#ListCertificatesRequest', name: 'ListCertificatesRequest')
    ListCertificatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#ListCertificatesResponse', name: 'ListCertificatesResponse')
    ListTagsForCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#ListTagsForCertificateRequest', name: 'ListTagsForCertificateRequest')
    ListTagsForCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#ListTagsForCertificateResponse', name: 'ListTagsForCertificateResponse')
    MaxItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.acm#MaxItems', name: 'MaxItems', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acm#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]*$"})
    NullableBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.acm#NullableBoolean', name: 'NullableBoolean')
    PassphraseBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.acm#PassphraseBlob', name: 'PassphraseBlob', traits: {"smithy.api#length" => {"min" => 4, "max" => 128}, "smithy.api#sensitive" => {}})
    PcaArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acm#PcaArn', name: 'PcaArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:acm-pca:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*$"})
    PositiveInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.acm#PositiveInteger', name: 'PositiveInteger', traits: {"smithy.api#range" => {"min" => 1}})
    PrivateKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acm#PrivateKey', name: 'PrivateKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 524288}, "smithy.api#pattern" => "^-{5}BEGIN PRIVATE KEY-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END PRIVATE KEY-{5}(\\u000D?\\u000A)?$", "smithy.api#sensitive" => {}})
    PrivateKeyBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.acm#PrivateKeyBlob', name: 'PrivateKeyBlob', traits: {"smithy.api#length" => {"min" => 1, "max" => 5120}, "smithy.api#sensitive" => {}})
    PutAccountConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#PutAccountConfigurationRequest', name: 'PutAccountConfigurationRequest')
    RecordType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acm#RecordType', name: 'RecordType')
    RemoveTagsFromCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#RemoveTagsFromCertificateRequest', name: 'RemoveTagsFromCertificateRequest')
    RenewCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#RenewCertificateRequest', name: 'RenewCertificateRequest')
    RenewalEligibility = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acm#RenewalEligibility', name: 'RenewalEligibility')
    RenewalStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acm#RenewalStatus', name: 'RenewalStatus')
    RenewalSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#RenewalSummary', name: 'RenewalSummary')
    RequestCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#RequestCertificateRequest', name: 'RequestCertificateRequest')
    RequestCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#RequestCertificateResponse', name: 'RequestCertificateResponse')
    RequestInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#RequestInProgressException', name: 'RequestInProgressException', traits: {"smithy.api#error" => "client"})
    ResendValidationEmailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#ResendValidationEmailRequest', name: 'ResendValidationEmailRequest')
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#ResourceInUseException', name: 'ResourceInUseException', traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    ResourceRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#ResourceRecord', name: 'ResourceRecord')
    RevocationReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acm#RevocationReason', name: 'RevocationReason')
    RevokeCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#RevokeCertificateRequest', name: 'RevokeCertificateRequest')
    RevokeCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#RevokeCertificateResponse', name: 'RevokeCertificateResponse')
    ServiceErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acm#ServiceErrorMessage', name: 'ServiceErrorMessage')
    SortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acm#SortBy', name: 'SortBy')
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acm#SortOrder', name: 'SortOrder')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acm#String', name: 'String')
    TStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.acm#TStamp', name: 'TStamp')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acm#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*$"})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acm#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#TagPolicyException', name: 'TagPolicyException', traits: {"smithy.api#error" => "client"})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acm#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#ThrottlingException', name: 'ThrottlingException', traits: {"aws.protocols#awsQueryError" => {"code" => "Throttling", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client"})
    UpdateCertificateOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#UpdateCertificateOptionsRequest', name: 'UpdateCertificateOptionsRequest')
    ValidationEmailList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.acm#ValidationEmailList', name: 'ValidationEmailList')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.acm#ValidationException', name: 'ValidationException', traits: {"aws.protocols#awsQueryError" => {"code" => "ValidationError", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.acm#ValidationExceptionMessage', name: 'ValidationExceptionMessage')
    ValidationMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.acm#ValidationMethod', name: 'ValidationMethod')

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceErrorMessage, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AddTagsToCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateArn', traits: {"smithy.api#required" => {}}))
    AddTagsToCertificateRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    AddTagsToCertificateRequest.type = Types::AddTagsToCertificateRequest
    CertificateDetail.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateArn'))
    CertificateDetail.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameString, location_name: 'DomainName'))
    CertificateDetail.add_member(:subject_alternative_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainList, location_name: 'SubjectAlternativeNames'))
    CertificateDetail.add_member(:managed_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateManagedBy, location_name: 'ManagedBy'))
    CertificateDetail.add_member(:domain_validation_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainValidationList, location_name: 'DomainValidationOptions'))
    CertificateDetail.add_member(:serial, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Serial'))
    CertificateDetail.add_member(:subject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Subject'))
    CertificateDetail.add_member(:issuer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Issuer'))
    CertificateDetail.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreatedAt'))
    CertificateDetail.add_member(:issued_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'IssuedAt'))
    CertificateDetail.add_member(:imported_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ImportedAt'))
    CertificateDetail.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateStatus, location_name: 'Status'))
    CertificateDetail.add_member(:revoked_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'RevokedAt'))
    CertificateDetail.add_member(:revocation_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationReason, location_name: 'RevocationReason'))
    CertificateDetail.add_member(:not_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NotBefore'))
    CertificateDetail.add_member(:not_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NotAfter'))
    CertificateDetail.add_member(:key_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: 'KeyAlgorithm'))
    CertificateDetail.add_member(:signature_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SignatureAlgorithm'))
    CertificateDetail.add_member(:in_use_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InUseList, location_name: 'InUseBy'))
    CertificateDetail.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'FailureReason'))
    CertificateDetail.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'Type'))
    CertificateDetail.add_member(:renewal_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenewalSummary, location_name: 'RenewalSummary'))
    CertificateDetail.add_member(:key_usages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsageList, location_name: 'KeyUsages'))
    CertificateDetail.add_member(:extended_key_usages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedKeyUsageList, location_name: 'ExtendedKeyUsages'))
    CertificateDetail.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn'))
    CertificateDetail.add_member(:renewal_eligibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenewalEligibility, location_name: 'RenewalEligibility'))
    CertificateDetail.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateOptions, location_name: 'Options'))
    CertificateDetail.type = Types::CertificateDetail
    CertificateExport.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    CertificateExport.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    CertificateManagedBy.add_member(:cloudfront, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUDFRONT', traits: {"smithy.api#enumValue" => "CLOUDFRONT"}))
    CertificateOptions.add_member(:certificate_transparency_logging_preference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateTransparencyLoggingPreference, location_name: 'CertificateTransparencyLoggingPreference'))
    CertificateOptions.add_member(:export, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateExport, location_name: 'Export'))
    CertificateOptions.type = Types::CertificateOptions
    CertificateStatus.add_member(:pending_validation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_VALIDATION', traits: {"smithy.api#enumValue" => "PENDING_VALIDATION"}))
    CertificateStatus.add_member(:issued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ISSUED', traits: {"smithy.api#enumValue" => "ISSUED"}))
    CertificateStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    CertificateStatus.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    CertificateStatus.add_member(:validation_timed_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATION_TIMED_OUT', traits: {"smithy.api#enumValue" => "VALIDATION_TIMED_OUT"}))
    CertificateStatus.add_member(:revoked, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVOKED', traits: {"smithy.api#enumValue" => "REVOKED"}))
    CertificateStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CertificateStatuses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateStatus)
    CertificateSummary.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateArn'))
    CertificateSummary.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameString, location_name: 'DomainName'))
    CertificateSummary.add_member(:subject_alternative_name_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainList, location_name: 'SubjectAlternativeNameSummaries'))
    CertificateSummary.add_member(:has_additional_subject_alternative_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'HasAdditionalSubjectAlternativeNames'))
    CertificateSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateStatus, location_name: 'Status'))
    CertificateSummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'Type'))
    CertificateSummary.add_member(:key_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: 'KeyAlgorithm'))
    CertificateSummary.add_member(:key_usages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsageNames, location_name: 'KeyUsages'))
    CertificateSummary.add_member(:extended_key_usages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedKeyUsageNames, location_name: 'ExtendedKeyUsages'))
    CertificateSummary.add_member(:export_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateExport, location_name: 'ExportOption'))
    CertificateSummary.add_member(:in_use, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'InUse'))
    CertificateSummary.add_member(:exported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Exported'))
    CertificateSummary.add_member(:renewal_eligibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenewalEligibility, location_name: 'RenewalEligibility'))
    CertificateSummary.add_member(:not_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NotBefore'))
    CertificateSummary.add_member(:not_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NotAfter'))
    CertificateSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreatedAt'))
    CertificateSummary.add_member(:issued_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'IssuedAt'))
    CertificateSummary.add_member(:imported_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ImportedAt'))
    CertificateSummary.add_member(:revoked_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'RevokedAt'))
    CertificateSummary.add_member(:managed_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateManagedBy, location_name: 'ManagedBy'))
    CertificateSummary.type = Types::CertificateSummary
    CertificateSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateSummary)
    CertificateTransparencyLoggingPreference.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    CertificateTransparencyLoggingPreference.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    CertificateType.add_member(:imported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORTED', traits: {"smithy.api#enumValue" => "IMPORTED"}))
    CertificateType.add_member(:amazon_issued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMAZON_ISSUED', traits: {"smithy.api#enumValue" => "AMAZON_ISSUED"}))
    CertificateType.add_member(:private, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATE', traits: {"smithy.api#enumValue" => "PRIVATE"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    DeleteCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateArn', traits: {"smithy.api#required" => {}}))
    DeleteCertificateRequest.type = Types::DeleteCertificateRequest
    DescribeCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateArn', traits: {"smithy.api#required" => {}}))
    DescribeCertificateRequest.type = Types::DescribeCertificateRequest
    DescribeCertificateResponse.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateDetail, location_name: 'Certificate'))
    DescribeCertificateResponse.type = Types::DescribeCertificateResponse
    DomainList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameString)
    DomainStatus.add_member(:pending_validation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_VALIDATION', traits: {"smithy.api#enumValue" => "PENDING_VALIDATION"}))
    DomainStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    DomainStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DomainValidation.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameString, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    DomainValidation.add_member(:validation_emails, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationEmailList, location_name: 'ValidationEmails'))
    DomainValidation.add_member(:validation_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameString, location_name: 'ValidationDomain'))
    DomainValidation.add_member(:validation_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus, location_name: 'ValidationStatus'))
    DomainValidation.add_member(:resource_record, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRecord, location_name: 'ResourceRecord'))
    DomainValidation.add_member(:http_redirect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpRedirect, location_name: 'HttpRedirect'))
    DomainValidation.add_member(:validation_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationMethod, location_name: 'ValidationMethod'))
    DomainValidation.type = Types::DomainValidation
    DomainValidationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainValidation)
    DomainValidationOption.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameString, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    DomainValidationOption.add_member(:validation_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameString, location_name: 'ValidationDomain', traits: {"smithy.api#required" => {}}))
    DomainValidationOption.type = Types::DomainValidationOption
    DomainValidationOptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainValidationOption)
    ExpiryEventsConfiguration.add_member(:days_before_expiry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: 'DaysBeforeExpiry'))
    ExpiryEventsConfiguration.type = Types::ExpiryEventsConfiguration
    ExportCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateArn', traits: {"smithy.api#required" => {}}))
    ExportCertificateRequest.add_member(:passphrase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PassphraseBlob, location_name: 'Passphrase', traits: {"smithy.api#required" => {}}))
    ExportCertificateRequest.type = Types::ExportCertificateRequest
    ExportCertificateResponse.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateBody, location_name: 'Certificate'))
    ExportCertificateResponse.add_member(:certificate_chain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateChain, location_name: 'CertificateChain'))
    ExportCertificateResponse.add_member(:private_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateKey, location_name: 'PrivateKey'))
    ExportCertificateResponse.type = Types::ExportCertificateResponse
    ExtendedKeyUsage.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedKeyUsageName, location_name: 'Name'))
    ExtendedKeyUsage.add_member(:oid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OID'))
    ExtendedKeyUsage.type = Types::ExtendedKeyUsage
    ExtendedKeyUsageFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedKeyUsageName)
    ExtendedKeyUsageList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedKeyUsage)
    ExtendedKeyUsageName.add_member(:tls_web_server_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLS_WEB_SERVER_AUTHENTICATION', traits: {"smithy.api#enumValue" => "TLS_WEB_SERVER_AUTHENTICATION"}))
    ExtendedKeyUsageName.add_member(:tls_web_client_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TLS_WEB_CLIENT_AUTHENTICATION', traits: {"smithy.api#enumValue" => "TLS_WEB_CLIENT_AUTHENTICATION"}))
    ExtendedKeyUsageName.add_member(:code_signing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CODE_SIGNING', traits: {"smithy.api#enumValue" => "CODE_SIGNING"}))
    ExtendedKeyUsageName.add_member(:email_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL_PROTECTION', traits: {"smithy.api#enumValue" => "EMAIL_PROTECTION"}))
    ExtendedKeyUsageName.add_member(:time_stamping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIME_STAMPING', traits: {"smithy.api#enumValue" => "TIME_STAMPING"}))
    ExtendedKeyUsageName.add_member(:ocsp_signing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OCSP_SIGNING', traits: {"smithy.api#enumValue" => "OCSP_SIGNING"}))
    ExtendedKeyUsageName.add_member(:ipsec_end_system, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPSEC_END_SYSTEM', traits: {"smithy.api#enumValue" => "IPSEC_END_SYSTEM"}))
    ExtendedKeyUsageName.add_member(:ipsec_tunnel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPSEC_TUNNEL', traits: {"smithy.api#enumValue" => "IPSEC_TUNNEL"}))
    ExtendedKeyUsageName.add_member(:ipsec_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPSEC_USER', traits: {"smithy.api#enumValue" => "IPSEC_USER"}))
    ExtendedKeyUsageName.add_member(:any, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANY', traits: {"smithy.api#enumValue" => "ANY"}))
    ExtendedKeyUsageName.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    ExtendedKeyUsageName.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    ExtendedKeyUsageNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedKeyUsageName)
    FailureReason.add_member(:no_available_contacts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_AVAILABLE_CONTACTS', traits: {"smithy.api#enumValue" => "NO_AVAILABLE_CONTACTS"}))
    FailureReason.add_member(:additional_verification_required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDITIONAL_VERIFICATION_REQUIRED', traits: {"smithy.api#enumValue" => "ADDITIONAL_VERIFICATION_REQUIRED"}))
    FailureReason.add_member(:domain_not_allowed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_NOT_ALLOWED', traits: {"smithy.api#enumValue" => "DOMAIN_NOT_ALLOWED"}))
    FailureReason.add_member(:invalid_public_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PUBLIC_DOMAIN', traits: {"smithy.api#enumValue" => "INVALID_PUBLIC_DOMAIN"}))
    FailureReason.add_member(:domain_validation_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_VALIDATION_DENIED', traits: {"smithy.api#enumValue" => "DOMAIN_VALIDATION_DENIED"}))
    FailureReason.add_member(:caa_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAA_ERROR', traits: {"smithy.api#enumValue" => "CAA_ERROR"}))
    FailureReason.add_member(:pca_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PCA_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "PCA_LIMIT_EXCEEDED"}))
    FailureReason.add_member(:pca_invalid_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PCA_INVALID_ARN', traits: {"smithy.api#enumValue" => "PCA_INVALID_ARN"}))
    FailureReason.add_member(:pca_invalid_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PCA_INVALID_STATE', traits: {"smithy.api#enumValue" => "PCA_INVALID_STATE"}))
    FailureReason.add_member(:pca_request_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PCA_REQUEST_FAILED', traits: {"smithy.api#enumValue" => "PCA_REQUEST_FAILED"}))
    FailureReason.add_member(:pca_name_constraints_validation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PCA_NAME_CONSTRAINTS_VALIDATION', traits: {"smithy.api#enumValue" => "PCA_NAME_CONSTRAINTS_VALIDATION"}))
    FailureReason.add_member(:pca_resource_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PCA_RESOURCE_NOT_FOUND', traits: {"smithy.api#enumValue" => "PCA_RESOURCE_NOT_FOUND"}))
    FailureReason.add_member(:pca_invalid_args, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PCA_INVALID_ARGS', traits: {"smithy.api#enumValue" => "PCA_INVALID_ARGS"}))
    FailureReason.add_member(:pca_invalid_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PCA_INVALID_DURATION', traits: {"smithy.api#enumValue" => "PCA_INVALID_DURATION"}))
    FailureReason.add_member(:pca_access_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PCA_ACCESS_DENIED', traits: {"smithy.api#enumValue" => "PCA_ACCESS_DENIED"}))
    FailureReason.add_member(:slr_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SLR_NOT_FOUND', traits: {"smithy.api#enumValue" => "SLR_NOT_FOUND"}))
    FailureReason.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    Filters.add_member(:extended_key_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtendedKeyUsageFilterList, location_name: 'extendedKeyUsage'))
    Filters.add_member(:key_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsageFilterList, location_name: 'keyUsage'))
    Filters.add_member(:key_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAlgorithmList, location_name: 'keyTypes'))
    Filters.add_member(:export_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateExport, location_name: 'exportOption'))
    Filters.add_member(:managed_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateManagedBy, location_name: 'managedBy'))
    Filters.type = Types::Filters
    GetAccountConfigurationResponse.add_member(:expiry_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiryEventsConfiguration, location_name: 'ExpiryEvents'))
    GetAccountConfigurationResponse.type = Types::GetAccountConfigurationResponse
    GetCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateArn', traits: {"smithy.api#required" => {}}))
    GetCertificateRequest.type = Types::GetCertificateRequest
    GetCertificateResponse.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateBody, location_name: 'Certificate'))
    GetCertificateResponse.add_member(:certificate_chain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateChain, location_name: 'CertificateChain'))
    GetCertificateResponse.type = Types::GetCertificateResponse
    HttpRedirect.add_member(:redirect_from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RedirectFrom'))
    HttpRedirect.add_member(:redirect_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RedirectTo'))
    HttpRedirect.type = Types::HttpRedirect
    ImportCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateArn'))
    ImportCertificateRequest.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateBodyBlob, location_name: 'Certificate', traits: {"smithy.api#required" => {}}))
    ImportCertificateRequest.add_member(:private_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateKeyBlob, location_name: 'PrivateKey', traits: {"smithy.api#required" => {}}))
    ImportCertificateRequest.add_member(:certificate_chain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateChainBlob, location_name: 'CertificateChain'))
    ImportCertificateRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ImportCertificateRequest.type = Types::ImportCertificateRequest
    ImportCertificateResponse.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateArn'))
    ImportCertificateResponse.type = Types::ImportCertificateResponse
    InUseList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    InvalidArgsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidArgsException.type = Types::InvalidArgsException
    InvalidArnException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidArnException.type = Types::InvalidArnException
    InvalidDomainValidationOptionsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidDomainValidationOptionsException.type = Types::InvalidDomainValidationOptionsException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidStateException.type = Types::InvalidStateException
    InvalidTagException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InvalidTagException.type = Types::InvalidTagException
    KeyAlgorithm.add_member(:rsa_1024, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_1024', traits: {"smithy.api#enumValue" => "RSA_1024"}))
    KeyAlgorithm.add_member(:rsa_2048, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_2048', traits: {"smithy.api#enumValue" => "RSA_2048"}))
    KeyAlgorithm.add_member(:rsa_3072, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_3072', traits: {"smithy.api#enumValue" => "RSA_3072"}))
    KeyAlgorithm.add_member(:rsa_4096, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_4096', traits: {"smithy.api#enumValue" => "RSA_4096"}))
    KeyAlgorithm.add_member(:ec_prime256v1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC_prime256v1', traits: {"smithy.api#enumValue" => "EC_prime256v1"}))
    KeyAlgorithm.add_member(:ec_secp384r1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC_secp384r1', traits: {"smithy.api#enumValue" => "EC_secp384r1"}))
    KeyAlgorithm.add_member(:ec_secp521r1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC_secp521r1', traits: {"smithy.api#enumValue" => "EC_secp521r1"}))
    KeyAlgorithmList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAlgorithm)
    KeyUsage.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsageName, location_name: 'Name'))
    KeyUsage.type = Types::KeyUsage
    KeyUsageFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsageName)
    KeyUsageList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsage)
    KeyUsageName.add_member(:digital_signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIGITAL_SIGNATURE', traits: {"smithy.api#enumValue" => "DIGITAL_SIGNATURE"}))
    KeyUsageName.add_member(:non_repudation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NON_REPUDATION', traits: {"smithy.api#enumValue" => "NON_REPUDIATION"}))
    KeyUsageName.add_member(:key_encipherment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEY_ENCIPHERMENT', traits: {"smithy.api#enumValue" => "KEY_ENCIPHERMENT"}))
    KeyUsageName.add_member(:data_encipherment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATA_ENCIPHERMENT', traits: {"smithy.api#enumValue" => "DATA_ENCIPHERMENT"}))
    KeyUsageName.add_member(:key_agreement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEY_AGREEMENT', traits: {"smithy.api#enumValue" => "KEY_AGREEMENT"}))
    KeyUsageName.add_member(:certificate_signing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CERTIFICATE_SIGNING', traits: {"smithy.api#enumValue" => "CERTIFICATE_SIGNING"}))
    KeyUsageName.add_member(:crl_signing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CRL_SIGNING', traits: {"smithy.api#enumValue" => "CRL_SIGNING"}))
    KeyUsageName.add_member(:enchiper_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENCHIPER_ONLY', traits: {"smithy.api#enumValue" => "ENCIPHER_ONLY"}))
    KeyUsageName.add_member(:decipher_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DECIPHER_ONLY', traits: {"smithy.api#enumValue" => "DECIPHER_ONLY"}))
    KeyUsageName.add_member(:any, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANY', traits: {"smithy.api#enumValue" => "ANY"}))
    KeyUsageName.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    KeyUsageNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsageName)
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListCertificatesRequest.add_member(:certificate_statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateStatuses, location_name: 'CertificateStatuses'))
    ListCertificatesRequest.add_member(:includes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'Includes'))
    ListCertificatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListCertificatesRequest.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'MaxItems'))
    ListCertificatesRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortBy, location_name: 'SortBy'))
    ListCertificatesRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'SortOrder'))
    ListCertificatesRequest.type = Types::ListCertificatesRequest
    ListCertificatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListCertificatesResponse.add_member(:certificate_summary_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateSummaryList, location_name: 'CertificateSummaryList'))
    ListCertificatesResponse.type = Types::ListCertificatesResponse
    ListTagsForCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateArn', traits: {"smithy.api#required" => {}}))
    ListTagsForCertificateRequest.type = Types::ListTagsForCertificateRequest
    ListTagsForCertificateResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ListTagsForCertificateResponse.type = Types::ListTagsForCertificateResponse
    PutAccountConfigurationRequest.add_member(:expiry_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiryEventsConfiguration, location_name: 'ExpiryEvents'))
    PutAccountConfigurationRequest.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken', traits: {"smithy.api#required" => {}}))
    PutAccountConfigurationRequest.type = Types::PutAccountConfigurationRequest
    RecordType.add_member(:cname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CNAME', traits: {"smithy.api#enumValue" => "CNAME"}))
    RemoveTagsFromCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateArn', traits: {"smithy.api#required" => {}}))
    RemoveTagsFromCertificateRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    RemoveTagsFromCertificateRequest.type = Types::RemoveTagsFromCertificateRequest
    RenewCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateArn', traits: {"smithy.api#required" => {}}))
    RenewCertificateRequest.type = Types::RenewCertificateRequest
    RenewalEligibility.add_member(:eligible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELIGIBLE', traits: {"smithy.api#enumValue" => "ELIGIBLE"}))
    RenewalEligibility.add_member(:ineligible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INELIGIBLE', traits: {"smithy.api#enumValue" => "INELIGIBLE"}))
    RenewalStatus.add_member(:pending_auto_renewal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_AUTO_RENEWAL', traits: {"smithy.api#enumValue" => "PENDING_AUTO_RENEWAL"}))
    RenewalStatus.add_member(:pending_validation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_VALIDATION', traits: {"smithy.api#enumValue" => "PENDING_VALIDATION"}))
    RenewalStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    RenewalStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    RenewalSummary.add_member(:renewal_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenewalStatus, location_name: 'RenewalStatus', traits: {"smithy.api#required" => {}}))
    RenewalSummary.add_member(:domain_validation_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainValidationList, location_name: 'DomainValidationOptions', traits: {"smithy.api#required" => {}}))
    RenewalSummary.add_member(:renewal_status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: 'RenewalStatusReason'))
    RenewalSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'UpdatedAt', traits: {"smithy.api#required" => {}}))
    RenewalSummary.type = Types::RenewalSummary
    RequestCertificateRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameString, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    RequestCertificateRequest.add_member(:validation_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationMethod, location_name: 'ValidationMethod'))
    RequestCertificateRequest.add_member(:subject_alternative_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainList, location_name: 'SubjectAlternativeNames'))
    RequestCertificateRequest.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'IdempotencyToken'))
    RequestCertificateRequest.add_member(:domain_validation_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainValidationOptionList, location_name: 'DomainValidationOptions'))
    RequestCertificateRequest.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateOptions, location_name: 'Options'))
    RequestCertificateRequest.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PcaArn, location_name: 'CertificateAuthorityArn'))
    RequestCertificateRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    RequestCertificateRequest.add_member(:key_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: 'KeyAlgorithm'))
    RequestCertificateRequest.add_member(:managed_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateManagedBy, location_name: 'ManagedBy'))
    RequestCertificateRequest.type = Types::RequestCertificateRequest
    RequestCertificateResponse.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateArn'))
    RequestCertificateResponse.type = Types::RequestCertificateResponse
    RequestInProgressException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    RequestInProgressException.type = Types::RequestInProgressException
    ResendValidationEmailRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateArn', traits: {"smithy.api#required" => {}}))
    ResendValidationEmailRequest.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameString, location_name: 'Domain', traits: {"smithy.api#required" => {}}))
    ResendValidationEmailRequest.add_member(:validation_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameString, location_name: 'ValidationDomain', traits: {"smithy.api#required" => {}}))
    ResendValidationEmailRequest.type = Types::ResendValidationEmailRequest
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceRecord.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    ResourceRecord.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    ResourceRecord.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    ResourceRecord.type = Types::ResourceRecord
    RevocationReason.add_member(:unspecified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSPECIFIED', traits: {"smithy.api#enumValue" => "UNSPECIFIED"}))
    RevocationReason.add_member(:key_compromise, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEY_COMPROMISE', traits: {"smithy.api#enumValue" => "KEY_COMPROMISE"}))
    RevocationReason.add_member(:ca_compromise, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CA_COMPROMISE', traits: {"smithy.api#enumValue" => "CA_COMPROMISE"}))
    RevocationReason.add_member(:affiliation_changed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFFILIATION_CHANGED', traits: {"smithy.api#enumValue" => "AFFILIATION_CHANGED"}))
    RevocationReason.add_member(:superceded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUPERCEDED', traits: {"smithy.api#enumValue" => "SUPERCEDED"}))
    RevocationReason.add_member(:superseded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUPERSEDED', traits: {"smithy.api#enumValue" => "SUPERSEDED"}))
    RevocationReason.add_member(:cessation_of_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CESSATION_OF_OPERATION', traits: {"smithy.api#enumValue" => "CESSATION_OF_OPERATION"}))
    RevocationReason.add_member(:certificate_hold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CERTIFICATE_HOLD', traits: {"smithy.api#enumValue" => "CERTIFICATE_HOLD"}))
    RevocationReason.add_member(:remove_from_crl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVE_FROM_CRL', traits: {"smithy.api#enumValue" => "REMOVE_FROM_CRL"}))
    RevocationReason.add_member(:privilege_withdrawn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVILEGE_WITHDRAWN', traits: {"smithy.api#enumValue" => "PRIVILEGE_WITHDRAWN"}))
    RevocationReason.add_member(:a_a_compromise, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'A_A_COMPROMISE', traits: {"smithy.api#enumValue" => "A_A_COMPROMISE"}))
    RevokeCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateArn', traits: {"smithy.api#required" => {}}))
    RevokeCertificateRequest.add_member(:revocation_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevocationReason, location_name: 'RevocationReason', traits: {"smithy.api#required" => {}}))
    RevokeCertificateRequest.type = Types::RevokeCertificateRequest
    RevokeCertificateResponse.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateArn'))
    RevokeCertificateResponse.type = Types::RevokeCertificateResponse
    SortBy.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED_AT', traits: {"smithy.api#enumValue" => "CREATED_AT"}))
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASCENDING', traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESCENDING', traits: {"smithy.api#enumValue" => "DESCENDING"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value'))
    Tag.type = Types::Tag
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagPolicyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    TagPolicyException.type = Types::TagPolicyException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityErrorMessage, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    TooManyTagsException.type = Types::TooManyTagsException
    UpdateCertificateOptionsRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateArn', traits: {"smithy.api#required" => {}}))
    UpdateCertificateOptionsRequest.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateOptions, location_name: 'Options', traits: {"smithy.api#required" => {}}))
    UpdateCertificateOptionsRequest.type = Types::UpdateCertificateOptionsRequest
    ValidationEmailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionMessage, location_name: 'message'))
    ValidationException.type = Types::ValidationException
    ValidationMethod.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "EMAIL"}))
    ValidationMethod.add_member(:dns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DNS', traits: {"smithy.api#enumValue" => "DNS"}))
    ValidationMethod.add_member(:http, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTP', traits: {"smithy.api#enumValue" => "HTTP"}))

    CertificateManager = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.acm#CertificateManager"
      service.name = "CertificateManager"
      service.version = "2015-12-08"
      service.traits = {"aws.api#service" => {"sdkId" => "ACM", "endpointPrefix" => "acm", "arnNamespace" => "acm", "cloudTrailEventSource" => "acm.amazonaws.com", "cloudFormationName" => "CertificateManager"}, "aws.auth#sigv4" => {"name" => "acm"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Certificate Manager"}
      service.add_operation(:add_tags_to_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#AddTagsToCertificate"
        operation.name = "AddTagsToCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsToCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#DeleteCertificate"
        operation.name = "DeleteCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#DescribeCertificate"
        operation.name = "DescribeCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCertificateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:export_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#ExportCertificate"
        operation.name = "ExportCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportCertificateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_account_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#GetAccountConfiguration"
        operation.name = "GetAccountConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#GetCertificate"
        operation.name = "GetCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCertificateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "GetCertificateFailure", "params" => {"CertificateArn" => "arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:import_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#ImportCertificate"
        operation.name = "ImportCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportCertificateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:list_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#ListCertificates"
        operation.name = "ListCertificates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCertificatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCertificatesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListCertificatesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListCertificates.new
      end)
      service.add_operation(:list_tags_for_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#ListTagsForCertificate"
        operation.name = "ListTagsForCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForCertificateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:put_account_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#PutAccountConfiguration"
        operation.name = "PutAccountConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:remove_tags_from_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#RemoveTagsFromCertificate"
        operation.name = "RemoveTagsFromCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsFromCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:renew_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#RenewCertificate"
        operation.name = "RenewCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RenewCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:request_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#RequestCertificate"
        operation.name = "RequestCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestCertificateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDomainValidationOptionsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:resend_validation_email, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#ResendValidationEmail"
        operation.name = "ResendValidationEmail"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResendValidationEmailRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDomainValidationOptionsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:revoke_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#RevokeCertificate"
        operation.name = "RevokeCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeCertificateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeCertificateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_certificate_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.acm#UpdateCertificateOptions"
        operation.name = "UpdateCertificateOptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCertificateOptionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
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

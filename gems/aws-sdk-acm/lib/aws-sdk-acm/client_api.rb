# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ACM
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AddTagsToCertificateRequest = Shapes::StructureShape.new(name: 'AddTagsToCertificateRequest')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AvailabilityErrorMessage = Shapes::StringShape.new(name: 'AvailabilityErrorMessage')
    CertificateBody = Shapes::StringShape.new(name: 'CertificateBody')
    CertificateBodyBlob = Shapes::BlobShape.new(name: 'CertificateBodyBlob')
    CertificateChain = Shapes::StringShape.new(name: 'CertificateChain')
    CertificateChainBlob = Shapes::BlobShape.new(name: 'CertificateChainBlob')
    CertificateDetail = Shapes::StructureShape.new(name: 'CertificateDetail')
    CertificateOptions = Shapes::StructureShape.new(name: 'CertificateOptions')
    CertificateStatus = Shapes::StringShape.new(name: 'CertificateStatus')
    CertificateStatuses = Shapes::ListShape.new(name: 'CertificateStatuses')
    CertificateSummary = Shapes::StructureShape.new(name: 'CertificateSummary')
    CertificateSummaryList = Shapes::ListShape.new(name: 'CertificateSummaryList')
    CertificateTransparencyLoggingPreference = Shapes::StringShape.new(name: 'CertificateTransparencyLoggingPreference')
    CertificateType = Shapes::StringShape.new(name: 'CertificateType')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    DeleteCertificateRequest = Shapes::StructureShape.new(name: 'DeleteCertificateRequest')
    DescribeCertificateRequest = Shapes::StructureShape.new(name: 'DescribeCertificateRequest')
    DescribeCertificateResponse = Shapes::StructureShape.new(name: 'DescribeCertificateResponse')
    DomainList = Shapes::ListShape.new(name: 'DomainList')
    DomainNameString = Shapes::StringShape.new(name: 'DomainNameString')
    DomainStatus = Shapes::StringShape.new(name: 'DomainStatus')
    DomainValidation = Shapes::StructureShape.new(name: 'DomainValidation')
    DomainValidationList = Shapes::ListShape.new(name: 'DomainValidationList')
    DomainValidationOption = Shapes::StructureShape.new(name: 'DomainValidationOption')
    DomainValidationOptionList = Shapes::ListShape.new(name: 'DomainValidationOptionList')
    ExpiryEventsConfiguration = Shapes::StructureShape.new(name: 'ExpiryEventsConfiguration')
    ExportCertificateRequest = Shapes::StructureShape.new(name: 'ExportCertificateRequest')
    ExportCertificateResponse = Shapes::StructureShape.new(name: 'ExportCertificateResponse')
    ExtendedKeyUsage = Shapes::StructureShape.new(name: 'ExtendedKeyUsage')
    ExtendedKeyUsageFilterList = Shapes::ListShape.new(name: 'ExtendedKeyUsageFilterList')
    ExtendedKeyUsageList = Shapes::ListShape.new(name: 'ExtendedKeyUsageList')
    ExtendedKeyUsageName = Shapes::StringShape.new(name: 'ExtendedKeyUsageName')
    ExtendedKeyUsageNames = Shapes::ListShape.new(name: 'ExtendedKeyUsageNames')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    Filters = Shapes::StructureShape.new(name: 'Filters')
    GetAccountConfigurationResponse = Shapes::StructureShape.new(name: 'GetAccountConfigurationResponse')
    GetCertificateRequest = Shapes::StructureShape.new(name: 'GetCertificateRequest')
    GetCertificateResponse = Shapes::StructureShape.new(name: 'GetCertificateResponse')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    ImportCertificateRequest = Shapes::StructureShape.new(name: 'ImportCertificateRequest')
    ImportCertificateResponse = Shapes::StructureShape.new(name: 'ImportCertificateResponse')
    InUseList = Shapes::ListShape.new(name: 'InUseList')
    InvalidArgsException = Shapes::StructureShape.new(name: 'InvalidArgsException')
    InvalidArnException = Shapes::StructureShape.new(name: 'InvalidArnException')
    InvalidDomainValidationOptionsException = Shapes::StructureShape.new(name: 'InvalidDomainValidationOptionsException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidStateException = Shapes::StructureShape.new(name: 'InvalidStateException')
    InvalidTagException = Shapes::StructureShape.new(name: 'InvalidTagException')
    KeyAlgorithm = Shapes::StringShape.new(name: 'KeyAlgorithm')
    KeyAlgorithmList = Shapes::ListShape.new(name: 'KeyAlgorithmList')
    KeyUsage = Shapes::StructureShape.new(name: 'KeyUsage')
    KeyUsageFilterList = Shapes::ListShape.new(name: 'KeyUsageFilterList')
    KeyUsageList = Shapes::ListShape.new(name: 'KeyUsageList')
    KeyUsageName = Shapes::StringShape.new(name: 'KeyUsageName')
    KeyUsageNames = Shapes::ListShape.new(name: 'KeyUsageNames')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListCertificatesRequest = Shapes::StructureShape.new(name: 'ListCertificatesRequest')
    ListCertificatesResponse = Shapes::StructureShape.new(name: 'ListCertificatesResponse')
    ListTagsForCertificateRequest = Shapes::StructureShape.new(name: 'ListTagsForCertificateRequest')
    ListTagsForCertificateResponse = Shapes::StructureShape.new(name: 'ListTagsForCertificateResponse')
    MaxItems = Shapes::IntegerShape.new(name: 'MaxItems')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    PassphraseBlob = Shapes::BlobShape.new(name: 'PassphraseBlob')
    PcaArn = Shapes::StringShape.new(name: 'PcaArn')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    PrivateKey = Shapes::StringShape.new(name: 'PrivateKey')
    PrivateKeyBlob = Shapes::BlobShape.new(name: 'PrivateKeyBlob')
    PutAccountConfigurationRequest = Shapes::StructureShape.new(name: 'PutAccountConfigurationRequest')
    RecordType = Shapes::StringShape.new(name: 'RecordType')
    RemoveTagsFromCertificateRequest = Shapes::StructureShape.new(name: 'RemoveTagsFromCertificateRequest')
    RenewCertificateRequest = Shapes::StructureShape.new(name: 'RenewCertificateRequest')
    RenewalEligibility = Shapes::StringShape.new(name: 'RenewalEligibility')
    RenewalStatus = Shapes::StringShape.new(name: 'RenewalStatus')
    RenewalSummary = Shapes::StructureShape.new(name: 'RenewalSummary')
    RequestCertificateRequest = Shapes::StructureShape.new(name: 'RequestCertificateRequest')
    RequestCertificateResponse = Shapes::StructureShape.new(name: 'RequestCertificateResponse')
    RequestInProgressException = Shapes::StructureShape.new(name: 'RequestInProgressException')
    ResendValidationEmailRequest = Shapes::StructureShape.new(name: 'ResendValidationEmailRequest')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceRecord = Shapes::StructureShape.new(name: 'ResourceRecord')
    RevocationReason = Shapes::StringShape.new(name: 'RevocationReason')
    ServiceErrorMessage = Shapes::StringShape.new(name: 'ServiceErrorMessage')
    SortBy = Shapes::StringShape.new(name: 'SortBy')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    String = Shapes::StringShape.new(name: 'String')
    TStamp = Shapes::TimestampShape.new(name: 'TStamp')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagPolicyException = Shapes::StructureShape.new(name: 'TagPolicyException')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    UpdateCertificateOptionsRequest = Shapes::StructureShape.new(name: 'UpdateCertificateOptionsRequest')
    ValidationEmailList = Shapes::ListShape.new(name: 'ValidationEmailList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionMessage = Shapes::StringShape.new(name: 'ValidationExceptionMessage')
    ValidationMethod = Shapes::StringShape.new(name: 'ValidationMethod')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ServiceErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AddTagsToCertificateRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    AddTagsToCertificateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    AddTagsToCertificateRequest.struct_class = Types::AddTagsToCertificateRequest

    CertificateDetail.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateArn"))
    CertificateDetail.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainNameString, location_name: "DomainName"))
    CertificateDetail.add_member(:subject_alternative_names, Shapes::ShapeRef.new(shape: DomainList, location_name: "SubjectAlternativeNames"))
    CertificateDetail.add_member(:domain_validation_options, Shapes::ShapeRef.new(shape: DomainValidationList, location_name: "DomainValidationOptions"))
    CertificateDetail.add_member(:serial, Shapes::ShapeRef.new(shape: String, location_name: "Serial"))
    CertificateDetail.add_member(:subject, Shapes::ShapeRef.new(shape: String, location_name: "Subject"))
    CertificateDetail.add_member(:issuer, Shapes::ShapeRef.new(shape: String, location_name: "Issuer"))
    CertificateDetail.add_member(:created_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "CreatedAt"))
    CertificateDetail.add_member(:issued_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "IssuedAt"))
    CertificateDetail.add_member(:imported_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "ImportedAt"))
    CertificateDetail.add_member(:status, Shapes::ShapeRef.new(shape: CertificateStatus, location_name: "Status"))
    CertificateDetail.add_member(:revoked_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "RevokedAt"))
    CertificateDetail.add_member(:revocation_reason, Shapes::ShapeRef.new(shape: RevocationReason, location_name: "RevocationReason"))
    CertificateDetail.add_member(:not_before, Shapes::ShapeRef.new(shape: TStamp, location_name: "NotBefore"))
    CertificateDetail.add_member(:not_after, Shapes::ShapeRef.new(shape: TStamp, location_name: "NotAfter"))
    CertificateDetail.add_member(:key_algorithm, Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: "KeyAlgorithm"))
    CertificateDetail.add_member(:signature_algorithm, Shapes::ShapeRef.new(shape: String, location_name: "SignatureAlgorithm"))
    CertificateDetail.add_member(:in_use_by, Shapes::ShapeRef.new(shape: InUseList, location_name: "InUseBy"))
    CertificateDetail.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    CertificateDetail.add_member(:type, Shapes::ShapeRef.new(shape: CertificateType, location_name: "Type"))
    CertificateDetail.add_member(:renewal_summary, Shapes::ShapeRef.new(shape: RenewalSummary, location_name: "RenewalSummary"))
    CertificateDetail.add_member(:key_usages, Shapes::ShapeRef.new(shape: KeyUsageList, location_name: "KeyUsages"))
    CertificateDetail.add_member(:extended_key_usages, Shapes::ShapeRef.new(shape: ExtendedKeyUsageList, location_name: "ExtendedKeyUsages"))
    CertificateDetail.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateAuthorityArn"))
    CertificateDetail.add_member(:renewal_eligibility, Shapes::ShapeRef.new(shape: RenewalEligibility, location_name: "RenewalEligibility"))
    CertificateDetail.add_member(:options, Shapes::ShapeRef.new(shape: CertificateOptions, location_name: "Options"))
    CertificateDetail.struct_class = Types::CertificateDetail

    CertificateOptions.add_member(:certificate_transparency_logging_preference, Shapes::ShapeRef.new(shape: CertificateTransparencyLoggingPreference, location_name: "CertificateTransparencyLoggingPreference"))
    CertificateOptions.struct_class = Types::CertificateOptions

    CertificateStatuses.member = Shapes::ShapeRef.new(shape: CertificateStatus)

    CertificateSummary.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateArn"))
    CertificateSummary.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainNameString, location_name: "DomainName"))
    CertificateSummary.add_member(:subject_alternative_name_summaries, Shapes::ShapeRef.new(shape: DomainList, location_name: "SubjectAlternativeNameSummaries"))
    CertificateSummary.add_member(:has_additional_subject_alternative_names, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "HasAdditionalSubjectAlternativeNames", metadata: {"box"=>true}))
    CertificateSummary.add_member(:status, Shapes::ShapeRef.new(shape: CertificateStatus, location_name: "Status"))
    CertificateSummary.add_member(:type, Shapes::ShapeRef.new(shape: CertificateType, location_name: "Type"))
    CertificateSummary.add_member(:key_algorithm, Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: "KeyAlgorithm"))
    CertificateSummary.add_member(:key_usages, Shapes::ShapeRef.new(shape: KeyUsageNames, location_name: "KeyUsages"))
    CertificateSummary.add_member(:extended_key_usages, Shapes::ShapeRef.new(shape: ExtendedKeyUsageNames, location_name: "ExtendedKeyUsages"))
    CertificateSummary.add_member(:in_use, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "InUse", metadata: {"box"=>true}))
    CertificateSummary.add_member(:exported, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "Exported", metadata: {"box"=>true}))
    CertificateSummary.add_member(:renewal_eligibility, Shapes::ShapeRef.new(shape: RenewalEligibility, location_name: "RenewalEligibility"))
    CertificateSummary.add_member(:not_before, Shapes::ShapeRef.new(shape: TStamp, location_name: "NotBefore"))
    CertificateSummary.add_member(:not_after, Shapes::ShapeRef.new(shape: TStamp, location_name: "NotAfter"))
    CertificateSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "CreatedAt"))
    CertificateSummary.add_member(:issued_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "IssuedAt"))
    CertificateSummary.add_member(:imported_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "ImportedAt"))
    CertificateSummary.add_member(:revoked_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "RevokedAt"))
    CertificateSummary.struct_class = Types::CertificateSummary

    CertificateSummaryList.member = Shapes::ShapeRef.new(shape: CertificateSummary)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    DeleteCertificateRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    DeleteCertificateRequest.struct_class = Types::DeleteCertificateRequest

    DescribeCertificateRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    DescribeCertificateRequest.struct_class = Types::DescribeCertificateRequest

    DescribeCertificateResponse.add_member(:certificate, Shapes::ShapeRef.new(shape: CertificateDetail, location_name: "Certificate"))
    DescribeCertificateResponse.struct_class = Types::DescribeCertificateResponse

    DomainList.member = Shapes::ShapeRef.new(shape: DomainNameString)

    DomainValidation.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainNameString, required: true, location_name: "DomainName"))
    DomainValidation.add_member(:validation_emails, Shapes::ShapeRef.new(shape: ValidationEmailList, location_name: "ValidationEmails"))
    DomainValidation.add_member(:validation_domain, Shapes::ShapeRef.new(shape: DomainNameString, location_name: "ValidationDomain"))
    DomainValidation.add_member(:validation_status, Shapes::ShapeRef.new(shape: DomainStatus, location_name: "ValidationStatus"))
    DomainValidation.add_member(:resource_record, Shapes::ShapeRef.new(shape: ResourceRecord, location_name: "ResourceRecord"))
    DomainValidation.add_member(:validation_method, Shapes::ShapeRef.new(shape: ValidationMethod, location_name: "ValidationMethod"))
    DomainValidation.struct_class = Types::DomainValidation

    DomainValidationList.member = Shapes::ShapeRef.new(shape: DomainValidation)

    DomainValidationOption.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainNameString, required: true, location_name: "DomainName"))
    DomainValidationOption.add_member(:validation_domain, Shapes::ShapeRef.new(shape: DomainNameString, required: true, location_name: "ValidationDomain"))
    DomainValidationOption.struct_class = Types::DomainValidationOption

    DomainValidationOptionList.member = Shapes::ShapeRef.new(shape: DomainValidationOption)

    ExpiryEventsConfiguration.add_member(:days_before_expiry, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "DaysBeforeExpiry"))
    ExpiryEventsConfiguration.struct_class = Types::ExpiryEventsConfiguration

    ExportCertificateRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    ExportCertificateRequest.add_member(:passphrase, Shapes::ShapeRef.new(shape: PassphraseBlob, required: true, location_name: "Passphrase"))
    ExportCertificateRequest.struct_class = Types::ExportCertificateRequest

    ExportCertificateResponse.add_member(:certificate, Shapes::ShapeRef.new(shape: CertificateBody, location_name: "Certificate"))
    ExportCertificateResponse.add_member(:certificate_chain, Shapes::ShapeRef.new(shape: CertificateChain, location_name: "CertificateChain"))
    ExportCertificateResponse.add_member(:private_key, Shapes::ShapeRef.new(shape: PrivateKey, location_name: "PrivateKey"))
    ExportCertificateResponse.struct_class = Types::ExportCertificateResponse

    ExtendedKeyUsage.add_member(:name, Shapes::ShapeRef.new(shape: ExtendedKeyUsageName, location_name: "Name"))
    ExtendedKeyUsage.add_member(:oid, Shapes::ShapeRef.new(shape: String, location_name: "OID"))
    ExtendedKeyUsage.struct_class = Types::ExtendedKeyUsage

    ExtendedKeyUsageFilterList.member = Shapes::ShapeRef.new(shape: ExtendedKeyUsageName)

    ExtendedKeyUsageList.member = Shapes::ShapeRef.new(shape: ExtendedKeyUsage)

    ExtendedKeyUsageNames.member = Shapes::ShapeRef.new(shape: ExtendedKeyUsageName)

    Filters.add_member(:extended_key_usage, Shapes::ShapeRef.new(shape: ExtendedKeyUsageFilterList, location_name: "extendedKeyUsage"))
    Filters.add_member(:key_usage, Shapes::ShapeRef.new(shape: KeyUsageFilterList, location_name: "keyUsage"))
    Filters.add_member(:key_types, Shapes::ShapeRef.new(shape: KeyAlgorithmList, location_name: "keyTypes"))
    Filters.struct_class = Types::Filters

    GetAccountConfigurationResponse.add_member(:expiry_events, Shapes::ShapeRef.new(shape: ExpiryEventsConfiguration, location_name: "ExpiryEvents"))
    GetAccountConfigurationResponse.struct_class = Types::GetAccountConfigurationResponse

    GetCertificateRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    GetCertificateRequest.struct_class = Types::GetCertificateRequest

    GetCertificateResponse.add_member(:certificate, Shapes::ShapeRef.new(shape: CertificateBody, location_name: "Certificate"))
    GetCertificateResponse.add_member(:certificate_chain, Shapes::ShapeRef.new(shape: CertificateChain, location_name: "CertificateChain"))
    GetCertificateResponse.struct_class = Types::GetCertificateResponse

    ImportCertificateRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateArn"))
    ImportCertificateRequest.add_member(:certificate, Shapes::ShapeRef.new(shape: CertificateBodyBlob, required: true, location_name: "Certificate"))
    ImportCertificateRequest.add_member(:private_key, Shapes::ShapeRef.new(shape: PrivateKeyBlob, required: true, location_name: "PrivateKey"))
    ImportCertificateRequest.add_member(:certificate_chain, Shapes::ShapeRef.new(shape: CertificateChainBlob, location_name: "CertificateChain"))
    ImportCertificateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ImportCertificateRequest.struct_class = Types::ImportCertificateRequest

    ImportCertificateResponse.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateArn"))
    ImportCertificateResponse.struct_class = Types::ImportCertificateResponse

    InUseList.member = Shapes::ShapeRef.new(shape: String)

    InvalidArgsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidArgsException.struct_class = Types::InvalidArgsException

    InvalidArnException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidArnException.struct_class = Types::InvalidArnException

    InvalidDomainValidationOptionsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidDomainValidationOptionsException.struct_class = Types::InvalidDomainValidationOptionsException

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidStateException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidStateException.struct_class = Types::InvalidStateException

    InvalidTagException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidTagException.struct_class = Types::InvalidTagException

    KeyAlgorithmList.member = Shapes::ShapeRef.new(shape: KeyAlgorithm)

    KeyUsage.add_member(:name, Shapes::ShapeRef.new(shape: KeyUsageName, location_name: "Name"))
    KeyUsage.struct_class = Types::KeyUsage

    KeyUsageFilterList.member = Shapes::ShapeRef.new(shape: KeyUsageName)

    KeyUsageList.member = Shapes::ShapeRef.new(shape: KeyUsage)

    KeyUsageNames.member = Shapes::ShapeRef.new(shape: KeyUsageName)

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListCertificatesRequest.add_member(:certificate_statuses, Shapes::ShapeRef.new(shape: CertificateStatuses, location_name: "CertificateStatuses"))
    ListCertificatesRequest.add_member(:includes, Shapes::ShapeRef.new(shape: Filters, location_name: "Includes"))
    ListCertificatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCertificatesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxItems, location_name: "MaxItems"))
    ListCertificatesRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortBy, location_name: "SortBy"))
    ListCertificatesRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListCertificatesRequest.struct_class = Types::ListCertificatesRequest

    ListCertificatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCertificatesResponse.add_member(:certificate_summary_list, Shapes::ShapeRef.new(shape: CertificateSummaryList, location_name: "CertificateSummaryList"))
    ListCertificatesResponse.struct_class = Types::ListCertificatesResponse

    ListTagsForCertificateRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    ListTagsForCertificateRequest.struct_class = Types::ListTagsForCertificateRequest

    ListTagsForCertificateResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForCertificateResponse.struct_class = Types::ListTagsForCertificateResponse

    PutAccountConfigurationRequest.add_member(:expiry_events, Shapes::ShapeRef.new(shape: ExpiryEventsConfiguration, location_name: "ExpiryEvents"))
    PutAccountConfigurationRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "IdempotencyToken"))
    PutAccountConfigurationRequest.struct_class = Types::PutAccountConfigurationRequest

    RemoveTagsFromCertificateRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    RemoveTagsFromCertificateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    RemoveTagsFromCertificateRequest.struct_class = Types::RemoveTagsFromCertificateRequest

    RenewCertificateRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    RenewCertificateRequest.struct_class = Types::RenewCertificateRequest

    RenewalSummary.add_member(:renewal_status, Shapes::ShapeRef.new(shape: RenewalStatus, required: true, location_name: "RenewalStatus"))
    RenewalSummary.add_member(:domain_validation_options, Shapes::ShapeRef.new(shape: DomainValidationList, required: true, location_name: "DomainValidationOptions"))
    RenewalSummary.add_member(:renewal_status_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "RenewalStatusReason"))
    RenewalSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: TStamp, required: true, location_name: "UpdatedAt"))
    RenewalSummary.struct_class = Types::RenewalSummary

    RequestCertificateRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainNameString, required: true, location_name: "DomainName"))
    RequestCertificateRequest.add_member(:validation_method, Shapes::ShapeRef.new(shape: ValidationMethod, location_name: "ValidationMethod"))
    RequestCertificateRequest.add_member(:subject_alternative_names, Shapes::ShapeRef.new(shape: DomainList, location_name: "SubjectAlternativeNames"))
    RequestCertificateRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "IdempotencyToken"))
    RequestCertificateRequest.add_member(:domain_validation_options, Shapes::ShapeRef.new(shape: DomainValidationOptionList, location_name: "DomainValidationOptions"))
    RequestCertificateRequest.add_member(:options, Shapes::ShapeRef.new(shape: CertificateOptions, location_name: "Options"))
    RequestCertificateRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: PcaArn, location_name: "CertificateAuthorityArn"))
    RequestCertificateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RequestCertificateRequest.add_member(:key_algorithm, Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: "KeyAlgorithm"))
    RequestCertificateRequest.struct_class = Types::RequestCertificateRequest

    RequestCertificateResponse.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateArn"))
    RequestCertificateResponse.struct_class = Types::RequestCertificateResponse

    RequestInProgressException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    RequestInProgressException.struct_class = Types::RequestInProgressException

    ResendValidationEmailRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    ResendValidationEmailRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainNameString, required: true, location_name: "Domain"))
    ResendValidationEmailRequest.add_member(:validation_domain, Shapes::ShapeRef.new(shape: DomainNameString, required: true, location_name: "ValidationDomain"))
    ResendValidationEmailRequest.struct_class = Types::ResendValidationEmailRequest

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceRecord.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ResourceRecord.add_member(:type, Shapes::ShapeRef.new(shape: RecordType, required: true, location_name: "Type"))
    ResourceRecord.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    ResourceRecord.struct_class = Types::ResourceRecord

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagPolicyException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TagPolicyException.struct_class = Types::TagPolicyException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: AvailabilityErrorMessage, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    UpdateCertificateOptionsRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    UpdateCertificateOptionsRequest.add_member(:options, Shapes::ShapeRef.new(shape: CertificateOptions, required: true, location_name: "Options"))
    UpdateCertificateOptionsRequest.struct_class = Types::UpdateCertificateOptionsRequest

    ValidationEmailList.member = Shapes::ShapeRef.new(shape: String)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ValidationExceptionMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-12-08"

      api.metadata = {
        "apiVersion" => "2015-12-08",
        "endpointPrefix" => "acm",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "ACM",
        "serviceFullName" => "AWS Certificate Manager",
        "serviceId" => "ACM",
        "signatureVersion" => "v4",
        "targetPrefix" => "CertificateManager",
        "uid" => "acm-2015-12-08",
      }

      api.add_operation(:add_tags_to_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTagsToCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsToCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: TagPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
      end)

      api.add_operation(:describe_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
      end)

      api.add_operation(:export_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExportCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: ExportCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RequestInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
      end)

      api.add_operation(:get_account_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetAccountConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RequestInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
      end)

      api.add_operation(:import_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: TagPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
      end)

      api.add_operation(:list_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCertificates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCertificatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCertificatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgsException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
      end)

      api.add_operation(:put_account_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAccountConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutAccountConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:remove_tags_from_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTagsFromCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsFromCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagException)
        o.errors << Shapes::ShapeRef.new(shape: TagPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:renew_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RenewCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RenewCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
      end)

      api.add_operation(:request_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RequestCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RequestCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: RequestCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDomainValidationOptionsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: TagPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:resend_validation_email, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResendValidationEmail"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResendValidationEmailRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDomainValidationOptionsException)
      end)

      api.add_operation(:update_certificate_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCertificateOptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCertificateOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
      end)
    end

  end
end

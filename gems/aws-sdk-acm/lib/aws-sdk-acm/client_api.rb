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
    AcmCertificateMetadata = Shapes::StructureShape.new(name: 'AcmCertificateMetadata')
    AcmCertificateMetadataFilter = Shapes::UnionShape.new(name: 'AcmCertificateMetadataFilter')
    AddTagsToCertificateRequest = Shapes::StructureShape.new(name: 'AddTagsToCertificateRequest')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AvailabilityErrorMessage = Shapes::StringShape.new(name: 'AvailabilityErrorMessage')
    CertificateBody = Shapes::StringShape.new(name: 'CertificateBody')
    CertificateBodyBlob = Shapes::BlobShape.new(name: 'CertificateBodyBlob')
    CertificateChain = Shapes::StringShape.new(name: 'CertificateChain')
    CertificateChainBlob = Shapes::BlobShape.new(name: 'CertificateChainBlob')
    CertificateDetail = Shapes::StructureShape.new(name: 'CertificateDetail')
    CertificateExport = Shapes::StringShape.new(name: 'CertificateExport')
    CertificateFilter = Shapes::UnionShape.new(name: 'CertificateFilter')
    CertificateFilterStatement = Shapes::UnionShape.new(name: 'CertificateFilterStatement')
    CertificateFilterStatementList = Shapes::ListShape.new(name: 'CertificateFilterStatementList')
    CertificateManagedBy = Shapes::StringShape.new(name: 'CertificateManagedBy')
    CertificateMetadata = Shapes::UnionShape.new(name: 'CertificateMetadata')
    CertificateOptions = Shapes::StructureShape.new(name: 'CertificateOptions')
    CertificateSearchResult = Shapes::StructureShape.new(name: 'CertificateSearchResult')
    CertificateSearchResultList = Shapes::ListShape.new(name: 'CertificateSearchResultList')
    CertificateStatus = Shapes::StringShape.new(name: 'CertificateStatus')
    CertificateStatuses = Shapes::ListShape.new(name: 'CertificateStatuses')
    CertificateSummary = Shapes::StructureShape.new(name: 'CertificateSummary')
    CertificateSummaryList = Shapes::ListShape.new(name: 'CertificateSummaryList')
    CertificateTransparencyLoggingPreference = Shapes::StringShape.new(name: 'CertificateTransparencyLoggingPreference')
    CertificateType = Shapes::StringShape.new(name: 'CertificateType')
    CommonNameFilter = Shapes::StructureShape.new(name: 'CommonNameFilter')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CoralAvailabilityThrottledResource = Shapes::StringShape.new(name: 'CoralAvailabilityThrottledResource')
    CoralAvailabilityThrottlingReason = Shapes::StringShape.new(name: 'CoralAvailabilityThrottlingReason')
    CustomAttribute = Shapes::StructureShape.new(name: 'CustomAttribute')
    CustomAttributeList = Shapes::ListShape.new(name: 'CustomAttributeList')
    DeleteCertificateRequest = Shapes::StructureShape.new(name: 'DeleteCertificateRequest')
    DescribeCertificateRequest = Shapes::StructureShape.new(name: 'DescribeCertificateRequest')
    DescribeCertificateResponse = Shapes::StructureShape.new(name: 'DescribeCertificateResponse')
    DistinguishedName = Shapes::StructureShape.new(name: 'DistinguishedName')
    DnsNameFilter = Shapes::StructureShape.new(name: 'DnsNameFilter')
    DomainComponentList = Shapes::ListShape.new(name: 'DomainComponentList')
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
    FilterString = Shapes::StringShape.new(name: 'FilterString')
    Filters = Shapes::StructureShape.new(name: 'Filters')
    GeneralName = Shapes::UnionShape.new(name: 'GeneralName')
    GeneralNameList = Shapes::ListShape.new(name: 'GeneralNameList')
    GetAccountConfigurationResponse = Shapes::StructureShape.new(name: 'GetAccountConfigurationResponse')
    GetCertificateRequest = Shapes::StructureShape.new(name: 'GetCertificateRequest')
    GetCertificateResponse = Shapes::StructureShape.new(name: 'GetCertificateResponse')
    HttpRedirect = Shapes::StructureShape.new(name: 'HttpRedirect')
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
    OtherName = Shapes::StructureShape.new(name: 'OtherName')
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
    RevokeCertificateRequest = Shapes::StructureShape.new(name: 'RevokeCertificateRequest')
    RevokeCertificateResponse = Shapes::StructureShape.new(name: 'RevokeCertificateResponse')
    SearchCertificatesRequest = Shapes::StructureShape.new(name: 'SearchCertificatesRequest')
    SearchCertificatesResponse = Shapes::StructureShape.new(name: 'SearchCertificatesResponse')
    SearchCertificatesSortBy = Shapes::StringShape.new(name: 'SearchCertificatesSortBy')
    SearchCertificatesSortOrder = Shapes::StringShape.new(name: 'SearchCertificatesSortOrder')
    SearchMaxResults = Shapes::IntegerShape.new(name: 'SearchMaxResults')
    SerialNumber = Shapes::StringShape.new(name: 'SerialNumber')
    ServiceErrorMessage = Shapes::StringShape.new(name: 'ServiceErrorMessage')
    SortBy = Shapes::StringShape.new(name: 'SortBy')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    String = Shapes::StringShape.new(name: 'String')
    SubjectAlternativeNameFilter = Shapes::UnionShape.new(name: 'SubjectAlternativeNameFilter')
    SubjectFilter = Shapes::UnionShape.new(name: 'SubjectFilter')
    TStamp = Shapes::TimestampShape.new(name: 'TStamp')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagPolicyException = Shapes::StructureShape.new(name: 'TagPolicyException')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    ThrottlingReason = Shapes::StructureShape.new(name: 'ThrottlingReason')
    ThrottlingReasonList = Shapes::ListShape.new(name: 'ThrottlingReasonList')
    TimestampRange = Shapes::StructureShape.new(name: 'TimestampRange')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    UpdateCertificateOptionsRequest = Shapes::StructureShape.new(name: 'UpdateCertificateOptionsRequest')
    ValidationEmailList = Shapes::ListShape.new(name: 'ValidationEmailList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionMessage = Shapes::StringShape.new(name: 'ValidationExceptionMessage')
    ValidationMethod = Shapes::StringShape.new(name: 'ValidationMethod')
    X509AttributeFilter = Shapes::UnionShape.new(name: 'X509AttributeFilter')
    X509Attributes = Shapes::StructureShape.new(name: 'X509Attributes')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ServiceErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AcmCertificateMetadata.add_member(:created_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "CreatedAt"))
    AcmCertificateMetadata.add_member(:exported, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "Exported"))
    AcmCertificateMetadata.add_member(:imported_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "ImportedAt"))
    AcmCertificateMetadata.add_member(:in_use, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "InUse"))
    AcmCertificateMetadata.add_member(:issued_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "IssuedAt"))
    AcmCertificateMetadata.add_member(:renewal_eligibility, Shapes::ShapeRef.new(shape: RenewalEligibility, location_name: "RenewalEligibility"))
    AcmCertificateMetadata.add_member(:revoked_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "RevokedAt"))
    AcmCertificateMetadata.add_member(:status, Shapes::ShapeRef.new(shape: CertificateStatus, location_name: "Status"))
    AcmCertificateMetadata.add_member(:renewal_status, Shapes::ShapeRef.new(shape: RenewalStatus, location_name: "RenewalStatus"))
    AcmCertificateMetadata.add_member(:type, Shapes::ShapeRef.new(shape: CertificateType, location_name: "Type"))
    AcmCertificateMetadata.add_member(:export_option, Shapes::ShapeRef.new(shape: CertificateExport, location_name: "ExportOption"))
    AcmCertificateMetadata.add_member(:managed_by, Shapes::ShapeRef.new(shape: CertificateManagedBy, location_name: "ManagedBy"))
    AcmCertificateMetadata.add_member(:validation_method, Shapes::ShapeRef.new(shape: ValidationMethod, location_name: "ValidationMethod"))
    AcmCertificateMetadata.struct_class = Types::AcmCertificateMetadata

    AcmCertificateMetadataFilter.add_member(:status, Shapes::ShapeRef.new(shape: CertificateStatus, location_name: "Status"))
    AcmCertificateMetadataFilter.add_member(:renewal_status, Shapes::ShapeRef.new(shape: RenewalStatus, location_name: "RenewalStatus"))
    AcmCertificateMetadataFilter.add_member(:type, Shapes::ShapeRef.new(shape: CertificateType, location_name: "Type"))
    AcmCertificateMetadataFilter.add_member(:in_use, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "InUse"))
    AcmCertificateMetadataFilter.add_member(:exported, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "Exported"))
    AcmCertificateMetadataFilter.add_member(:export_option, Shapes::ShapeRef.new(shape: CertificateExport, location_name: "ExportOption"))
    AcmCertificateMetadataFilter.add_member(:managed_by, Shapes::ShapeRef.new(shape: CertificateManagedBy, location_name: "ManagedBy"))
    AcmCertificateMetadataFilter.add_member(:validation_method, Shapes::ShapeRef.new(shape: ValidationMethod, location_name: "ValidationMethod"))
    AcmCertificateMetadataFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AcmCertificateMetadataFilter.add_member_subclass(:status, Types::AcmCertificateMetadataFilter::Status)
    AcmCertificateMetadataFilter.add_member_subclass(:renewal_status, Types::AcmCertificateMetadataFilter::RenewalStatus)
    AcmCertificateMetadataFilter.add_member_subclass(:type, Types::AcmCertificateMetadataFilter::Type)
    AcmCertificateMetadataFilter.add_member_subclass(:in_use, Types::AcmCertificateMetadataFilter::InUse)
    AcmCertificateMetadataFilter.add_member_subclass(:exported, Types::AcmCertificateMetadataFilter::Exported)
    AcmCertificateMetadataFilter.add_member_subclass(:export_option, Types::AcmCertificateMetadataFilter::ExportOption)
    AcmCertificateMetadataFilter.add_member_subclass(:managed_by, Types::AcmCertificateMetadataFilter::ManagedBy)
    AcmCertificateMetadataFilter.add_member_subclass(:validation_method, Types::AcmCertificateMetadataFilter::ValidationMethod)
    AcmCertificateMetadataFilter.add_member_subclass(:unknown, Types::AcmCertificateMetadataFilter::Unknown)
    AcmCertificateMetadataFilter.struct_class = Types::AcmCertificateMetadataFilter

    AddTagsToCertificateRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    AddTagsToCertificateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    AddTagsToCertificateRequest.struct_class = Types::AddTagsToCertificateRequest

    CertificateDetail.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateArn"))
    CertificateDetail.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainNameString, location_name: "DomainName"))
    CertificateDetail.add_member(:subject_alternative_names, Shapes::ShapeRef.new(shape: DomainList, location_name: "SubjectAlternativeNames"))
    CertificateDetail.add_member(:managed_by, Shapes::ShapeRef.new(shape: CertificateManagedBy, location_name: "ManagedBy"))
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

    CertificateFilter.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateArn"))
    CertificateFilter.add_member(:x509_attribute_filter, Shapes::ShapeRef.new(shape: X509AttributeFilter, location_name: "X509AttributeFilter"))
    CertificateFilter.add_member(:acm_certificate_metadata_filter, Shapes::ShapeRef.new(shape: AcmCertificateMetadataFilter, location_name: "AcmCertificateMetadataFilter"))
    CertificateFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CertificateFilter.add_member_subclass(:certificate_arn, Types::CertificateFilter::CertificateArn)
    CertificateFilter.add_member_subclass(:x509_attribute_filter, Types::CertificateFilter::X509AttributeFilter)
    CertificateFilter.add_member_subclass(:acm_certificate_metadata_filter, Types::CertificateFilter::AcmCertificateMetadataFilter)
    CertificateFilter.add_member_subclass(:unknown, Types::CertificateFilter::Unknown)
    CertificateFilter.struct_class = Types::CertificateFilter

    CertificateFilterStatement.add_member(:and, Shapes::ShapeRef.new(shape: CertificateFilterStatementList, location_name: "And"))
    CertificateFilterStatement.add_member(:or, Shapes::ShapeRef.new(shape: CertificateFilterStatementList, location_name: "Or"))
    CertificateFilterStatement.add_member(:not, Shapes::ShapeRef.new(shape: CertificateFilterStatement, location_name: "Not"))
    CertificateFilterStatement.add_member(:filter, Shapes::ShapeRef.new(shape: CertificateFilter, location_name: "Filter"))
    CertificateFilterStatement.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CertificateFilterStatement.add_member_subclass(:and, Types::CertificateFilterStatement::And)
    CertificateFilterStatement.add_member_subclass(:or, Types::CertificateFilterStatement::Or)
    CertificateFilterStatement.add_member_subclass(:not, Types::CertificateFilterStatement::Not)
    CertificateFilterStatement.add_member_subclass(:filter, Types::CertificateFilterStatement::Filter)
    CertificateFilterStatement.add_member_subclass(:unknown, Types::CertificateFilterStatement::Unknown)
    CertificateFilterStatement.struct_class = Types::CertificateFilterStatement

    CertificateFilterStatementList.member = Shapes::ShapeRef.new(shape: CertificateFilterStatement)

    CertificateMetadata.add_member(:acm_certificate_metadata, Shapes::ShapeRef.new(shape: AcmCertificateMetadata, location_name: "AcmCertificateMetadata"))
    CertificateMetadata.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CertificateMetadata.add_member_subclass(:acm_certificate_metadata, Types::CertificateMetadata::AcmCertificateMetadata)
    CertificateMetadata.add_member_subclass(:unknown, Types::CertificateMetadata::Unknown)
    CertificateMetadata.struct_class = Types::CertificateMetadata

    CertificateOptions.add_member(:certificate_transparency_logging_preference, Shapes::ShapeRef.new(shape: CertificateTransparencyLoggingPreference, location_name: "CertificateTransparencyLoggingPreference"))
    CertificateOptions.add_member(:export, Shapes::ShapeRef.new(shape: CertificateExport, location_name: "Export"))
    CertificateOptions.struct_class = Types::CertificateOptions

    CertificateSearchResult.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateArn"))
    CertificateSearchResult.add_member(:x509_attributes, Shapes::ShapeRef.new(shape: X509Attributes, location_name: "X509Attributes"))
    CertificateSearchResult.add_member(:certificate_metadata, Shapes::ShapeRef.new(shape: CertificateMetadata, location_name: "CertificateMetadata"))
    CertificateSearchResult.struct_class = Types::CertificateSearchResult

    CertificateSearchResultList.member = Shapes::ShapeRef.new(shape: CertificateSearchResult)

    CertificateStatuses.member = Shapes::ShapeRef.new(shape: CertificateStatus)

    CertificateSummary.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateArn"))
    CertificateSummary.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainNameString, location_name: "DomainName"))
    CertificateSummary.add_member(:subject_alternative_name_summaries, Shapes::ShapeRef.new(shape: DomainList, location_name: "SubjectAlternativeNameSummaries"))
    CertificateSummary.add_member(:has_additional_subject_alternative_names, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "HasAdditionalSubjectAlternativeNames"))
    CertificateSummary.add_member(:status, Shapes::ShapeRef.new(shape: CertificateStatus, location_name: "Status"))
    CertificateSummary.add_member(:type, Shapes::ShapeRef.new(shape: CertificateType, location_name: "Type"))
    CertificateSummary.add_member(:key_algorithm, Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: "KeyAlgorithm"))
    CertificateSummary.add_member(:key_usages, Shapes::ShapeRef.new(shape: KeyUsageNames, location_name: "KeyUsages"))
    CertificateSummary.add_member(:extended_key_usages, Shapes::ShapeRef.new(shape: ExtendedKeyUsageNames, location_name: "ExtendedKeyUsages"))
    CertificateSummary.add_member(:export_option, Shapes::ShapeRef.new(shape: CertificateExport, location_name: "ExportOption"))
    CertificateSummary.add_member(:in_use, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "InUse"))
    CertificateSummary.add_member(:exported, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "Exported"))
    CertificateSummary.add_member(:renewal_eligibility, Shapes::ShapeRef.new(shape: RenewalEligibility, location_name: "RenewalEligibility"))
    CertificateSummary.add_member(:not_before, Shapes::ShapeRef.new(shape: TStamp, location_name: "NotBefore"))
    CertificateSummary.add_member(:not_after, Shapes::ShapeRef.new(shape: TStamp, location_name: "NotAfter"))
    CertificateSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "CreatedAt"))
    CertificateSummary.add_member(:issued_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "IssuedAt"))
    CertificateSummary.add_member(:imported_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "ImportedAt"))
    CertificateSummary.add_member(:revoked_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "RevokedAt"))
    CertificateSummary.add_member(:managed_by, Shapes::ShapeRef.new(shape: CertificateManagedBy, location_name: "ManagedBy"))
    CertificateSummary.struct_class = Types::CertificateSummary

    CertificateSummaryList.member = Shapes::ShapeRef.new(shape: CertificateSummary)

    CommonNameFilter.add_member(:value, Shapes::ShapeRef.new(shape: FilterString, required: true, location_name: "Value"))
    CommonNameFilter.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, required: true, location_name: "ComparisonOperator"))
    CommonNameFilter.struct_class = Types::CommonNameFilter

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CustomAttribute.add_member(:object_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ObjectIdentifier"))
    CustomAttribute.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    CustomAttribute.struct_class = Types::CustomAttribute

    CustomAttributeList.member = Shapes::ShapeRef.new(shape: CustomAttribute)

    DeleteCertificateRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    DeleteCertificateRequest.struct_class = Types::DeleteCertificateRequest

    DescribeCertificateRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    DescribeCertificateRequest.struct_class = Types::DescribeCertificateRequest

    DescribeCertificateResponse.add_member(:certificate, Shapes::ShapeRef.new(shape: CertificateDetail, location_name: "Certificate"))
    DescribeCertificateResponse.struct_class = Types::DescribeCertificateResponse

    DistinguishedName.add_member(:common_name, Shapes::ShapeRef.new(shape: String, location_name: "CommonName"))
    DistinguishedName.add_member(:domain_components, Shapes::ShapeRef.new(shape: DomainComponentList, location_name: "DomainComponents"))
    DistinguishedName.add_member(:country, Shapes::ShapeRef.new(shape: String, location_name: "Country"))
    DistinguishedName.add_member(:custom_attributes, Shapes::ShapeRef.new(shape: CustomAttributeList, location_name: "CustomAttributes"))
    DistinguishedName.add_member(:distinguished_name_qualifier, Shapes::ShapeRef.new(shape: String, location_name: "DistinguishedNameQualifier"))
    DistinguishedName.add_member(:generation_qualifier, Shapes::ShapeRef.new(shape: String, location_name: "GenerationQualifier"))
    DistinguishedName.add_member(:given_name, Shapes::ShapeRef.new(shape: String, location_name: "GivenName"))
    DistinguishedName.add_member(:initials, Shapes::ShapeRef.new(shape: String, location_name: "Initials"))
    DistinguishedName.add_member(:locality, Shapes::ShapeRef.new(shape: String, location_name: "Locality"))
    DistinguishedName.add_member(:organization, Shapes::ShapeRef.new(shape: String, location_name: "Organization"))
    DistinguishedName.add_member(:organizational_unit, Shapes::ShapeRef.new(shape: String, location_name: "OrganizationalUnit"))
    DistinguishedName.add_member(:pseudonym, Shapes::ShapeRef.new(shape: String, location_name: "Pseudonym"))
    DistinguishedName.add_member(:serial_number, Shapes::ShapeRef.new(shape: String, location_name: "SerialNumber"))
    DistinguishedName.add_member(:state, Shapes::ShapeRef.new(shape: String, location_name: "State"))
    DistinguishedName.add_member(:surname, Shapes::ShapeRef.new(shape: String, location_name: "Surname"))
    DistinguishedName.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "Title"))
    DistinguishedName.struct_class = Types::DistinguishedName

    DnsNameFilter.add_member(:value, Shapes::ShapeRef.new(shape: FilterString, required: true, location_name: "Value"))
    DnsNameFilter.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, required: true, location_name: "ComparisonOperator"))
    DnsNameFilter.struct_class = Types::DnsNameFilter

    DomainComponentList.member = Shapes::ShapeRef.new(shape: String)

    DomainList.member = Shapes::ShapeRef.new(shape: DomainNameString)

    DomainValidation.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainNameString, required: true, location_name: "DomainName"))
    DomainValidation.add_member(:validation_emails, Shapes::ShapeRef.new(shape: ValidationEmailList, location_name: "ValidationEmails"))
    DomainValidation.add_member(:validation_domain, Shapes::ShapeRef.new(shape: DomainNameString, location_name: "ValidationDomain"))
    DomainValidation.add_member(:validation_status, Shapes::ShapeRef.new(shape: DomainStatus, location_name: "ValidationStatus"))
    DomainValidation.add_member(:resource_record, Shapes::ShapeRef.new(shape: ResourceRecord, location_name: "ResourceRecord"))
    DomainValidation.add_member(:http_redirect, Shapes::ShapeRef.new(shape: HttpRedirect, location_name: "HttpRedirect"))
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
    Filters.add_member(:export_option, Shapes::ShapeRef.new(shape: CertificateExport, location_name: "exportOption"))
    Filters.add_member(:managed_by, Shapes::ShapeRef.new(shape: CertificateManagedBy, location_name: "managedBy"))
    Filters.struct_class = Types::Filters

    GeneralName.add_member(:directory_name, Shapes::ShapeRef.new(shape: DistinguishedName, location_name: "DirectoryName"))
    GeneralName.add_member(:dns_name, Shapes::ShapeRef.new(shape: String, location_name: "DnsName"))
    GeneralName.add_member(:ip_address, Shapes::ShapeRef.new(shape: String, location_name: "IpAddress"))
    GeneralName.add_member(:other_name, Shapes::ShapeRef.new(shape: OtherName, location_name: "OtherName"))
    GeneralName.add_member(:registered_id, Shapes::ShapeRef.new(shape: String, location_name: "RegisteredId"))
    GeneralName.add_member(:rfc_822_name, Shapes::ShapeRef.new(shape: String, location_name: "Rfc822Name"))
    GeneralName.add_member(:uniform_resource_identifier, Shapes::ShapeRef.new(shape: String, location_name: "UniformResourceIdentifier"))
    GeneralName.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    GeneralName.add_member_subclass(:directory_name, Types::GeneralName::DirectoryName)
    GeneralName.add_member_subclass(:dns_name, Types::GeneralName::DnsName)
    GeneralName.add_member_subclass(:ip_address, Types::GeneralName::IpAddress)
    GeneralName.add_member_subclass(:other_name, Types::GeneralName::OtherName)
    GeneralName.add_member_subclass(:registered_id, Types::GeneralName::RegisteredId)
    GeneralName.add_member_subclass(:rfc_822_name, Types::GeneralName::Rfc822Name)
    GeneralName.add_member_subclass(:uniform_resource_identifier, Types::GeneralName::UniformResourceIdentifier)
    GeneralName.add_member_subclass(:unknown, Types::GeneralName::Unknown)
    GeneralName.struct_class = Types::GeneralName

    GeneralNameList.member = Shapes::ShapeRef.new(shape: GeneralName)

    GetAccountConfigurationResponse.add_member(:expiry_events, Shapes::ShapeRef.new(shape: ExpiryEventsConfiguration, location_name: "ExpiryEvents"))
    GetAccountConfigurationResponse.struct_class = Types::GetAccountConfigurationResponse

    GetCertificateRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    GetCertificateRequest.struct_class = Types::GetCertificateRequest

    GetCertificateResponse.add_member(:certificate, Shapes::ShapeRef.new(shape: CertificateBody, location_name: "Certificate"))
    GetCertificateResponse.add_member(:certificate_chain, Shapes::ShapeRef.new(shape: CertificateChain, location_name: "CertificateChain"))
    GetCertificateResponse.struct_class = Types::GetCertificateResponse

    HttpRedirect.add_member(:redirect_from, Shapes::ShapeRef.new(shape: String, location_name: "RedirectFrom"))
    HttpRedirect.add_member(:redirect_to, Shapes::ShapeRef.new(shape: String, location_name: "RedirectTo"))
    HttpRedirect.struct_class = Types::HttpRedirect

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

    OtherName.add_member(:object_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ObjectIdentifier"))
    OtherName.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    OtherName.struct_class = Types::OtherName

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
    RequestCertificateRequest.add_member(:managed_by, Shapes::ShapeRef.new(shape: CertificateManagedBy, location_name: "ManagedBy"))
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

    RevokeCertificateRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    RevokeCertificateRequest.add_member(:revocation_reason, Shapes::ShapeRef.new(shape: RevocationReason, required: true, location_name: "RevocationReason"))
    RevokeCertificateRequest.struct_class = Types::RevokeCertificateRequest

    RevokeCertificateResponse.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateArn"))
    RevokeCertificateResponse.struct_class = Types::RevokeCertificateResponse

    SearchCertificatesRequest.add_member(:filter_statement, Shapes::ShapeRef.new(shape: CertificateFilterStatement, location_name: "FilterStatement"))
    SearchCertificatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchMaxResults, location_name: "MaxResults"))
    SearchCertificatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchCertificatesRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SearchCertificatesSortBy, location_name: "SortBy"))
    SearchCertificatesRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SearchCertificatesSortOrder, location_name: "SortOrder"))
    SearchCertificatesRequest.struct_class = Types::SearchCertificatesRequest

    SearchCertificatesResponse.add_member(:results, Shapes::ShapeRef.new(shape: CertificateSearchResultList, location_name: "Results"))
    SearchCertificatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchCertificatesResponse.struct_class = Types::SearchCertificatesResponse

    SubjectAlternativeNameFilter.add_member(:dns_name, Shapes::ShapeRef.new(shape: DnsNameFilter, location_name: "DnsName"))
    SubjectAlternativeNameFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SubjectAlternativeNameFilter.add_member_subclass(:dns_name, Types::SubjectAlternativeNameFilter::DnsName)
    SubjectAlternativeNameFilter.add_member_subclass(:unknown, Types::SubjectAlternativeNameFilter::Unknown)
    SubjectAlternativeNameFilter.struct_class = Types::SubjectAlternativeNameFilter

    SubjectFilter.add_member(:common_name, Shapes::ShapeRef.new(shape: CommonNameFilter, location_name: "CommonName"))
    SubjectFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SubjectFilter.add_member_subclass(:common_name, Types::SubjectFilter::CommonName)
    SubjectFilter.add_member_subclass(:unknown, Types::SubjectFilter::Unknown)
    SubjectFilter.struct_class = Types::SubjectFilter

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagPolicyException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TagPolicyException.struct_class = Types::TagPolicyException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: AvailabilityErrorMessage, location_name: "message"))
    ThrottlingException.add_member(:throttling_reasons, Shapes::ShapeRef.new(shape: ThrottlingReasonList, location_name: "throttlingReasons"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ThrottlingReason.add_member(:reason, Shapes::ShapeRef.new(shape: CoralAvailabilityThrottlingReason, location_name: "reason"))
    ThrottlingReason.add_member(:resource, Shapes::ShapeRef.new(shape: CoralAvailabilityThrottledResource, location_name: "resource"))
    ThrottlingReason.struct_class = Types::ThrottlingReason

    ThrottlingReasonList.member = Shapes::ShapeRef.new(shape: ThrottlingReason)

    TimestampRange.add_member(:start, Shapes::ShapeRef.new(shape: TStamp, location_name: "Start"))
    TimestampRange.add_member(:end, Shapes::ShapeRef.new(shape: TStamp, location_name: "End"))
    TimestampRange.struct_class = Types::TimestampRange

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    UpdateCertificateOptionsRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    UpdateCertificateOptionsRequest.add_member(:options, Shapes::ShapeRef.new(shape: CertificateOptions, required: true, location_name: "Options"))
    UpdateCertificateOptionsRequest.struct_class = Types::UpdateCertificateOptionsRequest

    ValidationEmailList.member = Shapes::ShapeRef.new(shape: String)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ValidationExceptionMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    X509AttributeFilter.add_member(:subject, Shapes::ShapeRef.new(shape: SubjectFilter, location_name: "Subject"))
    X509AttributeFilter.add_member(:subject_alternative_name, Shapes::ShapeRef.new(shape: SubjectAlternativeNameFilter, location_name: "SubjectAlternativeName"))
    X509AttributeFilter.add_member(:extended_key_usage, Shapes::ShapeRef.new(shape: ExtendedKeyUsageName, location_name: "ExtendedKeyUsage"))
    X509AttributeFilter.add_member(:key_usage, Shapes::ShapeRef.new(shape: KeyUsageName, location_name: "KeyUsage"))
    X509AttributeFilter.add_member(:key_algorithm, Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: "KeyAlgorithm"))
    X509AttributeFilter.add_member(:serial_number, Shapes::ShapeRef.new(shape: SerialNumber, location_name: "SerialNumber"))
    X509AttributeFilter.add_member(:not_after, Shapes::ShapeRef.new(shape: TimestampRange, location_name: "NotAfter"))
    X509AttributeFilter.add_member(:not_before, Shapes::ShapeRef.new(shape: TimestampRange, location_name: "NotBefore"))
    X509AttributeFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    X509AttributeFilter.add_member_subclass(:subject, Types::X509AttributeFilter::Subject)
    X509AttributeFilter.add_member_subclass(:subject_alternative_name, Types::X509AttributeFilter::SubjectAlternativeName)
    X509AttributeFilter.add_member_subclass(:extended_key_usage, Types::X509AttributeFilter::ExtendedKeyUsage)
    X509AttributeFilter.add_member_subclass(:key_usage, Types::X509AttributeFilter::KeyUsage)
    X509AttributeFilter.add_member_subclass(:key_algorithm, Types::X509AttributeFilter::KeyAlgorithm)
    X509AttributeFilter.add_member_subclass(:serial_number, Types::X509AttributeFilter::SerialNumber)
    X509AttributeFilter.add_member_subclass(:not_after, Types::X509AttributeFilter::NotAfter)
    X509AttributeFilter.add_member_subclass(:not_before, Types::X509AttributeFilter::NotBefore)
    X509AttributeFilter.add_member_subclass(:unknown, Types::X509AttributeFilter::Unknown)
    X509AttributeFilter.struct_class = Types::X509AttributeFilter

    X509Attributes.add_member(:issuer, Shapes::ShapeRef.new(shape: DistinguishedName, location_name: "Issuer"))
    X509Attributes.add_member(:subject, Shapes::ShapeRef.new(shape: DistinguishedName, location_name: "Subject"))
    X509Attributes.add_member(:subject_alternative_names, Shapes::ShapeRef.new(shape: GeneralNameList, location_name: "SubjectAlternativeNames"))
    X509Attributes.add_member(:extended_key_usages, Shapes::ShapeRef.new(shape: ExtendedKeyUsageNames, location_name: "ExtendedKeyUsages"))
    X509Attributes.add_member(:key_algorithm, Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: "KeyAlgorithm"))
    X509Attributes.add_member(:key_usages, Shapes::ShapeRef.new(shape: KeyUsageNames, location_name: "KeyUsages"))
    X509Attributes.add_member(:serial_number, Shapes::ShapeRef.new(shape: SerialNumber, location_name: "SerialNumber"))
    X509Attributes.add_member(:not_after, Shapes::ShapeRef.new(shape: TStamp, location_name: "NotAfter"))
    X509Attributes.add_member(:not_before, Shapes::ShapeRef.new(shape: TStamp, location_name: "NotBefore"))
    X509Attributes.struct_class = Types::X509Attributes


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-12-08"

      api.metadata = {
        "apiVersion" => "2015-12-08",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "acm",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceAbbreviation" => "ACM",
        "serviceFullName" => "AWS Certificate Manager",
        "serviceId" => "ACM",
        "signatureVersion" => "v4",
        "signingName" => "acm",
        "targetPrefix" => "CertificateManager",
        "uid" => "acm-2015-12-08",
      }

      api.add_operation(:add_tags_to_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTagsToCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsToCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TagPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:export_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExportCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: ExportCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: RequestInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_account_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetAccountConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RequestInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:import_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TagPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCertificates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCertificatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCertificatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgsException)
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_account_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAccountConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutAccountConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:remove_tags_from_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTagsFromCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsFromCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TagPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:renew_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RenewCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RenewCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RequestInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:request_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RequestCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RequestCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: RequestCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TagPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDomainValidationOptionsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:resend_validation_email, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResendValidationEmail"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResendValidationEmailRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDomainValidationOptionsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:revoke_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RevokeCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: RevokeCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:search_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchCertificates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchCertificatesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchCertificatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_certificate_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCertificateOptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCertificateOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end

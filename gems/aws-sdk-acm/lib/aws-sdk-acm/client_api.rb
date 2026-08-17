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
    AcmeAccount = Shapes::StructureShape.new(name: 'AcmeAccount')
    AcmeAccountId = Shapes::StringShape.new(name: 'AcmeAccountId')
    AcmeAccountList = Shapes::ListShape.new(name: 'AcmeAccountList')
    AcmeAccountStatus = Shapes::StringShape.new(name: 'AcmeAccountStatus')
    AcmeAccountSummary = Shapes::StructureShape.new(name: 'AcmeAccountSummary')
    AcmeAuthorizationBehavior = Shapes::StringShape.new(name: 'AcmeAuthorizationBehavior')
    AcmeContact = Shapes::StringShape.new(name: 'AcmeContact')
    AcmeDomainValidation = Shapes::StructureShape.new(name: 'AcmeDomainValidation')
    AcmeDomainValidationArn = Shapes::StringShape.new(name: 'AcmeDomainValidationArn')
    AcmeDomainValidationFailureReason = Shapes::StringShape.new(name: 'AcmeDomainValidationFailureReason')
    AcmeDomainValidationList = Shapes::ListShape.new(name: 'AcmeDomainValidationList')
    AcmeDomainValidationStatus = Shapes::StringShape.new(name: 'AcmeDomainValidationStatus')
    AcmeDomainValidationSummary = Shapes::StructureShape.new(name: 'AcmeDomainValidationSummary')
    AcmeEndpoint = Shapes::StructureShape.new(name: 'AcmeEndpoint')
    AcmeEndpointArn = Shapes::StringShape.new(name: 'AcmeEndpointArn')
    AcmeEndpointList = Shapes::ListShape.new(name: 'AcmeEndpointList')
    AcmeEndpointStatus = Shapes::StringShape.new(name: 'AcmeEndpointStatus')
    AcmeEndpointSummary = Shapes::StructureShape.new(name: 'AcmeEndpointSummary')
    AcmeExternalAccountBinding = Shapes::StructureShape.new(name: 'AcmeExternalAccountBinding')
    AcmeExternalAccountBindingArn = Shapes::StringShape.new(name: 'AcmeExternalAccountBindingArn')
    AcmeExternalAccountBindingList = Shapes::ListShape.new(name: 'AcmeExternalAccountBindingList')
    AcmeExternalAccountBindingSummary = Shapes::StructureShape.new(name: 'AcmeExternalAccountBindingSummary')
    AddTagsToCertificateRequest = Shapes::StructureShape.new(name: 'AddTagsToCertificateRequest')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AvailabilityErrorMessage = Shapes::StringShape.new(name: 'AvailabilityErrorMessage')
    CertificateArn = Shapes::StringShape.new(name: 'CertificateArn')
    CertificateAuthority = Shapes::UnionShape.new(name: 'CertificateAuthority')
    CertificateBody = Shapes::StringShape.new(name: 'CertificateBody')
    CertificateBodyBlob = Shapes::BlobShape.new(name: 'CertificateBodyBlob')
    CertificateChain = Shapes::StringShape.new(name: 'CertificateChain')
    CertificateChainBlob = Shapes::BlobShape.new(name: 'CertificateChainBlob')
    CertificateDetail = Shapes::StructureShape.new(name: 'CertificateDetail')
    CertificateExport = Shapes::StringShape.new(name: 'CertificateExport')
    CertificateFilter = Shapes::UnionShape.new(name: 'CertificateFilter')
    CertificateFilterStatement = Shapes::UnionShape.new(name: 'CertificateFilterStatement')
    CertificateFilterStatementList = Shapes::ListShape.new(name: 'CertificateFilterStatementList')
    CertificateKeyPairOrigin = Shapes::StringShape.new(name: 'CertificateKeyPairOrigin')
    CertificateKeyPairOrigins = Shapes::ListShape.new(name: 'CertificateKeyPairOrigins')
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
    ContactList = Shapes::ListShape.new(name: 'ContactList')
    CoralAvailabilityThrottledResource = Shapes::StringShape.new(name: 'CoralAvailabilityThrottledResource')
    CoralAvailabilityThrottlingReason = Shapes::StringShape.new(name: 'CoralAvailabilityThrottlingReason')
    CreateAcmeDomainValidationRequest = Shapes::StructureShape.new(name: 'CreateAcmeDomainValidationRequest')
    CreateAcmeDomainValidationResponse = Shapes::StructureShape.new(name: 'CreateAcmeDomainValidationResponse')
    CreateAcmeEndpointRequest = Shapes::StructureShape.new(name: 'CreateAcmeEndpointRequest')
    CreateAcmeEndpointResponse = Shapes::StructureShape.new(name: 'CreateAcmeEndpointResponse')
    CreateAcmeExternalAccountBindingRequest = Shapes::StructureShape.new(name: 'CreateAcmeExternalAccountBindingRequest')
    CreateAcmeExternalAccountBindingResponse = Shapes::StructureShape.new(name: 'CreateAcmeExternalAccountBindingResponse')
    CustomAttribute = Shapes::StructureShape.new(name: 'CustomAttribute')
    CustomAttributeList = Shapes::ListShape.new(name: 'CustomAttributeList')
    DeleteAcmeDomainValidationRequest = Shapes::StructureShape.new(name: 'DeleteAcmeDomainValidationRequest')
    DeleteAcmeEndpointRequest = Shapes::StructureShape.new(name: 'DeleteAcmeEndpointRequest')
    DeleteAcmeExternalAccountBindingRequest = Shapes::StructureShape.new(name: 'DeleteAcmeExternalAccountBindingRequest')
    DeleteCertificateRequest = Shapes::StructureShape.new(name: 'DeleteCertificateRequest')
    DescribeAcmeAccountRequest = Shapes::StructureShape.new(name: 'DescribeAcmeAccountRequest')
    DescribeAcmeAccountResponse = Shapes::StructureShape.new(name: 'DescribeAcmeAccountResponse')
    DescribeAcmeDomainValidationRequest = Shapes::StructureShape.new(name: 'DescribeAcmeDomainValidationRequest')
    DescribeAcmeDomainValidationResponse = Shapes::StructureShape.new(name: 'DescribeAcmeDomainValidationResponse')
    DescribeAcmeEndpointRequest = Shapes::StructureShape.new(name: 'DescribeAcmeEndpointRequest')
    DescribeAcmeEndpointResponse = Shapes::StructureShape.new(name: 'DescribeAcmeEndpointResponse')
    DescribeAcmeExternalAccountBindingRequest = Shapes::StructureShape.new(name: 'DescribeAcmeExternalAccountBindingRequest')
    DescribeAcmeExternalAccountBindingResponse = Shapes::StructureShape.new(name: 'DescribeAcmeExternalAccountBindingResponse')
    DescribeCertificateRequest = Shapes::StructureShape.new(name: 'DescribeCertificateRequest')
    DescribeCertificateResponse = Shapes::StructureShape.new(name: 'DescribeCertificateResponse')
    DistinguishedName = Shapes::StructureShape.new(name: 'DistinguishedName')
    DnsNameFilter = Shapes::StructureShape.new(name: 'DnsNameFilter')
    DnsPrevalidationDetails = Shapes::StructureShape.new(name: 'DnsPrevalidationDetails')
    DnsPrevalidationOptions = Shapes::StructureShape.new(name: 'DnsPrevalidationOptions')
    DnsValidationChallenge = Shapes::StructureShape.new(name: 'DnsValidationChallenge')
    DomainComponentList = Shapes::ListShape.new(name: 'DomainComponentList')
    DomainList = Shapes::ListShape.new(name: 'DomainList')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    DomainNameString = Shapes::StringShape.new(name: 'DomainNameString')
    DomainScope = Shapes::StructureShape.new(name: 'DomainScope')
    DomainScopeOption = Shapes::StringShape.new(name: 'DomainScopeOption')
    DomainStatus = Shapes::StringShape.new(name: 'DomainStatus')
    DomainValidation = Shapes::StructureShape.new(name: 'DomainValidation')
    DomainValidationList = Shapes::ListShape.new(name: 'DomainValidationList')
    DomainValidationMethodUpdateSummary = Shapes::StructureShape.new(name: 'DomainValidationMethodUpdateSummary')
    DomainValidationOption = Shapes::StructureShape.new(name: 'DomainValidationOption')
    DomainValidationOptionList = Shapes::ListShape.new(name: 'DomainValidationOptionList')
    DomainValidationSummary = Shapes::StructureShape.new(name: 'DomainValidationSummary')
    DomainValidationSummaryList = Shapes::ListShape.new(name: 'DomainValidationSummaryList')
    EmailValidationChallenge = Shapes::StructureShape.new(name: 'EmailValidationChallenge')
    Expiration = Shapes::StructureShape.new(name: 'Expiration')
    ExpirationValueLong = Shapes::IntegerShape.new(name: 'ExpirationValueLong')
    ExpiryEventsConfiguration = Shapes::StructureShape.new(name: 'ExpiryEventsConfiguration')
    ExportCertificateRequest = Shapes::StructureShape.new(name: 'ExportCertificateRequest')
    ExportCertificateResponse = Shapes::StructureShape.new(name: 'ExportCertificateResponse')
    ExtendedKeyUsage = Shapes::StructureShape.new(name: 'ExtendedKeyUsage')
    ExtendedKeyUsageFilterList = Shapes::ListShape.new(name: 'ExtendedKeyUsageFilterList')
    ExtendedKeyUsageList = Shapes::ListShape.new(name: 'ExtendedKeyUsageList')
    ExtendedKeyUsageName = Shapes::StringShape.new(name: 'ExtendedKeyUsageName')
    ExtendedKeyUsageNames = Shapes::ListShape.new(name: 'ExtendedKeyUsageNames')
    FailureDetails = Shapes::StructureShape.new(name: 'FailureDetails')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    FilterString = Shapes::StringShape.new(name: 'FilterString')
    Filters = Shapes::StructureShape.new(name: 'Filters')
    GeneralName = Shapes::UnionShape.new(name: 'GeneralName')
    GeneralNameList = Shapes::ListShape.new(name: 'GeneralNameList')
    GetAccountConfigurationResponse = Shapes::StructureShape.new(name: 'GetAccountConfigurationResponse')
    GetAcmeExternalAccountBindingCredentialsRequest = Shapes::StructureShape.new(name: 'GetAcmeExternalAccountBindingCredentialsRequest')
    GetAcmeExternalAccountBindingCredentialsResponse = Shapes::StructureShape.new(name: 'GetAcmeExternalAccountBindingCredentialsResponse')
    GetCertificateRequest = Shapes::StructureShape.new(name: 'GetCertificateRequest')
    GetCertificateResponse = Shapes::StructureShape.new(name: 'GetCertificateResponse')
    HostedZoneId = Shapes::StringShape.new(name: 'HostedZoneId')
    HttpRedirect = Shapes::StructureShape.new(name: 'HttpRedirect')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    ImportCertificateRequest = Shapes::StructureShape.new(name: 'ImportCertificateRequest')
    ImportCertificateResponse = Shapes::StructureShape.new(name: 'ImportCertificateResponse')
    InUseList = Shapes::ListShape.new(name: 'InUseList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
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
    ListAcmeAccountsRequest = Shapes::StructureShape.new(name: 'ListAcmeAccountsRequest')
    ListAcmeAccountsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAcmeAccountsRequestMaxResultsInteger')
    ListAcmeAccountsResponse = Shapes::StructureShape.new(name: 'ListAcmeAccountsResponse')
    ListAcmeDomainValidationsRequest = Shapes::StructureShape.new(name: 'ListAcmeDomainValidationsRequest')
    ListAcmeDomainValidationsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAcmeDomainValidationsRequestMaxResultsInteger')
    ListAcmeDomainValidationsResponse = Shapes::StructureShape.new(name: 'ListAcmeDomainValidationsResponse')
    ListAcmeEndpointsRequest = Shapes::StructureShape.new(name: 'ListAcmeEndpointsRequest')
    ListAcmeEndpointsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAcmeEndpointsRequestMaxResultsInteger')
    ListAcmeEndpointsResponse = Shapes::StructureShape.new(name: 'ListAcmeEndpointsResponse')
    ListAcmeExternalAccountBindingsRequest = Shapes::StructureShape.new(name: 'ListAcmeExternalAccountBindingsRequest')
    ListAcmeExternalAccountBindingsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAcmeExternalAccountBindingsRequestMaxResultsInteger')
    ListAcmeExternalAccountBindingsResponse = Shapes::StructureShape.new(name: 'ListAcmeExternalAccountBindingsResponse')
    ListCertificateDomainValidationsRequest = Shapes::StructureShape.new(name: 'ListCertificateDomainValidationsRequest')
    ListCertificateDomainValidationsResponse = Shapes::StructureShape.new(name: 'ListCertificateDomainValidationsResponse')
    ListCertificatesRequest = Shapes::StructureShape.new(name: 'ListCertificatesRequest')
    ListCertificatesResponse = Shapes::StructureShape.new(name: 'ListCertificatesResponse')
    ListTagsForCertificateRequest = Shapes::StructureShape.new(name: 'ListTagsForCertificateRequest')
    ListTagsForCertificateResponse = Shapes::StructureShape.new(name: 'ListTagsForCertificateResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MacKey = Shapes::StringShape.new(name: 'MacKey')
    MaxItems = Shapes::IntegerShape.new(name: 'MaxItems')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    OtherName = Shapes::StructureShape.new(name: 'OtherName')
    PassphraseBlob = Shapes::BlobShape.new(name: 'PassphraseBlob')
    PcaArn = Shapes::StringShape.new(name: 'PcaArn')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    PrevalidationDetails = Shapes::UnionShape.new(name: 'PrevalidationDetails')
    PrevalidationOptions = Shapes::UnionShape.new(name: 'PrevalidationOptions')
    PrevalidationType = Shapes::StringShape.new(name: 'PrevalidationType')
    PrivateKey = Shapes::StringShape.new(name: 'PrivateKey')
    PrivateKeyBlob = Shapes::BlobShape.new(name: 'PrivateKeyBlob')
    PublicCertificateAuthority = Shapes::StructureShape.new(name: 'PublicCertificateAuthority')
    PublicKeyAlgorithm = Shapes::StringShape.new(name: 'PublicKeyAlgorithm')
    PublicKeyAlgorithmList = Shapes::ListShape.new(name: 'PublicKeyAlgorithmList')
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
    RevokeAcmeAccountRequest = Shapes::StructureShape.new(name: 'RevokeAcmeAccountRequest')
    RevokeAcmeExternalAccountBindingRequest = Shapes::StructureShape.new(name: 'RevokeAcmeExternalAccountBindingRequest')
    RevokeCertificateRequest = Shapes::StructureShape.new(name: 'RevokeCertificateRequest')
    RevokeCertificateResponse = Shapes::StructureShape.new(name: 'RevokeCertificateResponse')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    SearchCertificatesRequest = Shapes::StructureShape.new(name: 'SearchCertificatesRequest')
    SearchCertificatesResponse = Shapes::StructureShape.new(name: 'SearchCertificatesResponse')
    SearchCertificatesSortBy = Shapes::StringShape.new(name: 'SearchCertificatesSortBy')
    SearchCertificatesSortOrder = Shapes::StringShape.new(name: 'SearchCertificatesSortOrder')
    SearchMaxResults = Shapes::IntegerShape.new(name: 'SearchMaxResults')
    SerialNumber = Shapes::StringShape.new(name: 'SerialNumber')
    ServiceErrorMessage = Shapes::StringShape.new(name: 'ServiceErrorMessage')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SortBy = Shapes::StringShape.new(name: 'SortBy')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    String = Shapes::StringShape.new(name: 'String')
    SubjectAlternativeNameFilter = Shapes::UnionShape.new(name: 'SubjectAlternativeNameFilter')
    SubjectFilter = Shapes::UnionShape.new(name: 'SubjectFilter')
    TStamp = Shapes::TimestampShape.new(name: 'TStamp')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagPolicyException = Shapes::StructureShape.new(name: 'TagPolicyException')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    ThrottlingReason = Shapes::StructureShape.new(name: 'ThrottlingReason')
    ThrottlingReasonList = Shapes::ListShape.new(name: 'ThrottlingReasonList')
    TimeType = Shapes::StringShape.new(name: 'TimeType')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TimestampRange = Shapes::StructureShape.new(name: 'TimestampRange')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateAcmeDomainValidationRequest = Shapes::StructureShape.new(name: 'UpdateAcmeDomainValidationRequest')
    UpdateAcmeEndpointRequest = Shapes::StructureShape.new(name: 'UpdateAcmeEndpointRequest')
    UpdateCertificateOptionsRequest = Shapes::StructureShape.new(name: 'UpdateCertificateOptionsRequest')
    UpdateStatus = Shapes::StringShape.new(name: 'UpdateStatus')
    UpdateSummary = Shapes::StructureShape.new(name: 'UpdateSummary')
    UpdateType = Shapes::StringShape.new(name: 'UpdateType')
    ValidationChallenge = Shapes::UnionShape.new(name: 'ValidationChallenge')
    ValidationConfiguration = Shapes::StructureShape.new(name: 'ValidationConfiguration')
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
    AcmCertificateMetadata.add_member(:certificate_key_pair_origin, Shapes::ShapeRef.new(shape: CertificateKeyPairOrigin, location_name: "CertificateKeyPairOrigin"))
    AcmCertificateMetadata.add_member(:acme_endpoint_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AcmeEndpointArn"))
    AcmCertificateMetadata.add_member(:acme_account_id, Shapes::ShapeRef.new(shape: AcmeAccountId, location_name: "AcmeAccountId"))
    AcmCertificateMetadata.struct_class = Types::AcmCertificateMetadata

    AcmCertificateMetadataFilter.add_member(:status, Shapes::ShapeRef.new(shape: CertificateStatus, location_name: "Status"))
    AcmCertificateMetadataFilter.add_member(:renewal_status, Shapes::ShapeRef.new(shape: RenewalStatus, location_name: "RenewalStatus"))
    AcmCertificateMetadataFilter.add_member(:type, Shapes::ShapeRef.new(shape: CertificateType, location_name: "Type"))
    AcmCertificateMetadataFilter.add_member(:in_use, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "InUse"))
    AcmCertificateMetadataFilter.add_member(:exported, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "Exported"))
    AcmCertificateMetadataFilter.add_member(:export_option, Shapes::ShapeRef.new(shape: CertificateExport, location_name: "ExportOption"))
    AcmCertificateMetadataFilter.add_member(:managed_by, Shapes::ShapeRef.new(shape: CertificateManagedBy, location_name: "ManagedBy"))
    AcmCertificateMetadataFilter.add_member(:validation_method, Shapes::ShapeRef.new(shape: ValidationMethod, location_name: "ValidationMethod"))
    AcmCertificateMetadataFilter.add_member(:certificate_key_pair_origin, Shapes::ShapeRef.new(shape: CertificateKeyPairOrigin, location_name: "CertificateKeyPairOrigin"))
    AcmCertificateMetadataFilter.add_member(:acme_endpoint_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AcmeEndpointArn"))
    AcmCertificateMetadataFilter.add_member(:acme_account_id, Shapes::ShapeRef.new(shape: AcmeAccountId, location_name: "AcmeAccountId"))
    AcmCertificateMetadataFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AcmCertificateMetadataFilter.add_member_subclass(:status, Types::AcmCertificateMetadataFilter::Status)
    AcmCertificateMetadataFilter.add_member_subclass(:renewal_status, Types::AcmCertificateMetadataFilter::RenewalStatus)
    AcmCertificateMetadataFilter.add_member_subclass(:type, Types::AcmCertificateMetadataFilter::Type)
    AcmCertificateMetadataFilter.add_member_subclass(:in_use, Types::AcmCertificateMetadataFilter::InUse)
    AcmCertificateMetadataFilter.add_member_subclass(:exported, Types::AcmCertificateMetadataFilter::Exported)
    AcmCertificateMetadataFilter.add_member_subclass(:export_option, Types::AcmCertificateMetadataFilter::ExportOption)
    AcmCertificateMetadataFilter.add_member_subclass(:managed_by, Types::AcmCertificateMetadataFilter::ManagedBy)
    AcmCertificateMetadataFilter.add_member_subclass(:validation_method, Types::AcmCertificateMetadataFilter::ValidationMethod)
    AcmCertificateMetadataFilter.add_member_subclass(:certificate_key_pair_origin, Types::AcmCertificateMetadataFilter::CertificateKeyPairOrigin)
    AcmCertificateMetadataFilter.add_member_subclass(:acme_endpoint_arn, Types::AcmCertificateMetadataFilter::AcmeEndpointArn)
    AcmCertificateMetadataFilter.add_member_subclass(:acme_account_id, Types::AcmCertificateMetadataFilter::AcmeAccountId)
    AcmCertificateMetadataFilter.add_member_subclass(:unknown, Types::AcmCertificateMetadataFilter::Unknown)
    AcmCertificateMetadataFilter.struct_class = Types::AcmCertificateMetadataFilter

    AcmeAccount.add_member(:account_url, Shapes::ShapeRef.new(shape: String, location_name: "AccountUrl"))
    AcmeAccount.add_member(:public_key_thumbprint, Shapes::ShapeRef.new(shape: String, location_name: "PublicKeyThumbprint"))
    AcmeAccount.add_member(:status, Shapes::ShapeRef.new(shape: AcmeAccountStatus, location_name: "Status"))
    AcmeAccount.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    AcmeAccount.add_member(:acme_external_account_binding_arn, Shapes::ShapeRef.new(shape: AcmeExternalAccountBindingArn, location_name: "AcmeExternalAccountBindingArn"))
    AcmeAccount.add_member(:contacts, Shapes::ShapeRef.new(shape: ContactList, location_name: "Contacts"))
    AcmeAccount.struct_class = Types::AcmeAccount

    AcmeAccountList.member = Shapes::ShapeRef.new(shape: AcmeAccountSummary)

    AcmeAccountSummary.add_member(:account_url, Shapes::ShapeRef.new(shape: String, location_name: "AccountUrl"))
    AcmeAccountSummary.add_member(:public_key_thumbprint, Shapes::ShapeRef.new(shape: String, location_name: "PublicKeyThumbprint"))
    AcmeAccountSummary.add_member(:status, Shapes::ShapeRef.new(shape: AcmeAccountStatus, location_name: "Status"))
    AcmeAccountSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    AcmeAccountSummary.add_member(:acme_external_account_binding_arn, Shapes::ShapeRef.new(shape: AcmeExternalAccountBindingArn, location_name: "AcmeExternalAccountBindingArn"))
    AcmeAccountSummary.add_member(:contacts, Shapes::ShapeRef.new(shape: ContactList, location_name: "Contacts"))
    AcmeAccountSummary.struct_class = Types::AcmeAccountSummary

    AcmeDomainValidation.add_member(:acme_domain_validation_arn, Shapes::ShapeRef.new(shape: AcmeDomainValidationArn, location_name: "AcmeDomainValidationArn"))
    AcmeDomainValidation.add_member(:acme_endpoint_arn, Shapes::ShapeRef.new(shape: AcmeEndpointArn, location_name: "AcmeEndpointArn"))
    AcmeDomainValidation.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    AcmeDomainValidation.add_member(:prevalidation_type, Shapes::ShapeRef.new(shape: PrevalidationType, location_name: "PrevalidationType"))
    AcmeDomainValidation.add_member(:prevalidation_details, Shapes::ShapeRef.new(shape: PrevalidationDetails, location_name: "PrevalidationDetails"))
    AcmeDomainValidation.add_member(:status, Shapes::ShapeRef.new(shape: AcmeDomainValidationStatus, location_name: "Status"))
    AcmeDomainValidation.add_member(:failure_details, Shapes::ShapeRef.new(shape: FailureDetails, location_name: "FailureDetails"))
    AcmeDomainValidation.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    AcmeDomainValidation.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    AcmeDomainValidation.struct_class = Types::AcmeDomainValidation

    AcmeDomainValidationList.member = Shapes::ShapeRef.new(shape: AcmeDomainValidationSummary)

    AcmeDomainValidationSummary.add_member(:acme_domain_validation_arn, Shapes::ShapeRef.new(shape: AcmeDomainValidationArn, location_name: "AcmeDomainValidationArn"))
    AcmeDomainValidationSummary.add_member(:acme_endpoint_arn, Shapes::ShapeRef.new(shape: AcmeEndpointArn, location_name: "AcmeEndpointArn"))
    AcmeDomainValidationSummary.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    AcmeDomainValidationSummary.add_member(:prevalidation_type, Shapes::ShapeRef.new(shape: PrevalidationType, location_name: "PrevalidationType"))
    AcmeDomainValidationSummary.add_member(:prevalidation_details, Shapes::ShapeRef.new(shape: PrevalidationDetails, location_name: "PrevalidationDetails"))
    AcmeDomainValidationSummary.add_member(:status, Shapes::ShapeRef.new(shape: AcmeDomainValidationStatus, location_name: "Status"))
    AcmeDomainValidationSummary.add_member(:failure_details, Shapes::ShapeRef.new(shape: FailureDetails, location_name: "FailureDetails"))
    AcmeDomainValidationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    AcmeDomainValidationSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    AcmeDomainValidationSummary.struct_class = Types::AcmeDomainValidationSummary

    AcmeEndpoint.add_member(:acme_endpoint_arn, Shapes::ShapeRef.new(shape: AcmeEndpointArn, location_name: "AcmeEndpointArn"))
    AcmeEndpoint.add_member(:endpoint_url, Shapes::ShapeRef.new(shape: String, location_name: "EndpointUrl"))
    AcmeEndpoint.add_member(:status, Shapes::ShapeRef.new(shape: AcmeEndpointStatus, location_name: "Status"))
    AcmeEndpoint.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "FailureReason"))
    AcmeEndpoint.add_member(:authorization_behavior, Shapes::ShapeRef.new(shape: AcmeAuthorizationBehavior, location_name: "AuthorizationBehavior"))
    AcmeEndpoint.add_member(:contact, Shapes::ShapeRef.new(shape: AcmeContact, location_name: "Contact"))
    AcmeEndpoint.add_member(:certificate_authority, Shapes::ShapeRef.new(shape: CertificateAuthority, location_name: "CertificateAuthority"))
    AcmeEndpoint.add_member(:certificate_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "CertificateTags"))
    AcmeEndpoint.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    AcmeEndpoint.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    AcmeEndpoint.struct_class = Types::AcmeEndpoint

    AcmeEndpointList.member = Shapes::ShapeRef.new(shape: AcmeEndpointSummary)

    AcmeEndpointSummary.add_member(:acme_endpoint_arn, Shapes::ShapeRef.new(shape: AcmeEndpointArn, location_name: "AcmeEndpointArn"))
    AcmeEndpointSummary.add_member(:endpoint_url, Shapes::ShapeRef.new(shape: String, location_name: "EndpointUrl"))
    AcmeEndpointSummary.add_member(:status, Shapes::ShapeRef.new(shape: AcmeEndpointStatus, location_name: "Status"))
    AcmeEndpointSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "FailureReason"))
    AcmeEndpointSummary.add_member(:authorization_behavior, Shapes::ShapeRef.new(shape: AcmeAuthorizationBehavior, location_name: "AuthorizationBehavior"))
    AcmeEndpointSummary.add_member(:contact, Shapes::ShapeRef.new(shape: AcmeContact, location_name: "Contact"))
    AcmeEndpointSummary.add_member(:certificate_authority, Shapes::ShapeRef.new(shape: CertificateAuthority, location_name: "CertificateAuthority"))
    AcmeEndpointSummary.add_member(:certificate_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "CertificateTags"))
    AcmeEndpointSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    AcmeEndpointSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    AcmeEndpointSummary.struct_class = Types::AcmeEndpointSummary

    AcmeExternalAccountBinding.add_member(:acme_external_account_binding_arn, Shapes::ShapeRef.new(shape: AcmeExternalAccountBindingArn, location_name: "AcmeExternalAccountBindingArn"))
    AcmeExternalAccountBinding.add_member(:acme_endpoint_arn, Shapes::ShapeRef.new(shape: AcmeEndpointArn, location_name: "AcmeEndpointArn"))
    AcmeExternalAccountBinding.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    AcmeExternalAccountBinding.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpiresAt"))
    AcmeExternalAccountBinding.add_member(:revoked_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "RevokedAt"))
    AcmeExternalAccountBinding.add_member(:last_used_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUsedAt"))
    AcmeExternalAccountBinding.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    AcmeExternalAccountBinding.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    AcmeExternalAccountBinding.struct_class = Types::AcmeExternalAccountBinding

    AcmeExternalAccountBindingList.member = Shapes::ShapeRef.new(shape: AcmeExternalAccountBindingSummary)

    AcmeExternalAccountBindingSummary.add_member(:acme_external_account_binding_arn, Shapes::ShapeRef.new(shape: AcmeExternalAccountBindingArn, location_name: "AcmeExternalAccountBindingArn"))
    AcmeExternalAccountBindingSummary.add_member(:acme_endpoint_arn, Shapes::ShapeRef.new(shape: AcmeEndpointArn, location_name: "AcmeEndpointArn"))
    AcmeExternalAccountBindingSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    AcmeExternalAccountBindingSummary.add_member(:expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpiresAt"))
    AcmeExternalAccountBindingSummary.add_member(:revoked_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "RevokedAt"))
    AcmeExternalAccountBindingSummary.add_member(:last_used_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUsedAt"))
    AcmeExternalAccountBindingSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    AcmeExternalAccountBindingSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    AcmeExternalAccountBindingSummary.struct_class = Types::AcmeExternalAccountBindingSummary

    AddTagsToCertificateRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    AddTagsToCertificateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    AddTagsToCertificateRequest.struct_class = Types::AddTagsToCertificateRequest

    CertificateAuthority.add_member(:public_certificate_authority, Shapes::ShapeRef.new(shape: PublicCertificateAuthority, location_name: "PublicCertificateAuthority"))
    CertificateAuthority.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CertificateAuthority.add_member_subclass(:public_certificate_authority, Types::CertificateAuthority::PublicCertificateAuthority)
    CertificateAuthority.add_member_subclass(:unknown, Types::CertificateAuthority::Unknown)
    CertificateAuthority.struct_class = Types::CertificateAuthority

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
    CertificateDetail.add_member(:update_summary, Shapes::ShapeRef.new(shape: UpdateSummary, location_name: "UpdateSummary"))
    CertificateDetail.add_member(:certificate_key_pair_origin, Shapes::ShapeRef.new(shape: CertificateKeyPairOrigin, location_name: "CertificateKeyPairOrigin"))
    CertificateDetail.add_member(:acme_endpoint_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AcmeEndpointArn"))
    CertificateDetail.add_member(:acme_account_id, Shapes::ShapeRef.new(shape: AcmeAccountId, location_name: "AcmeAccountId"))
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

    CertificateKeyPairOrigins.member = Shapes::ShapeRef.new(shape: CertificateKeyPairOrigin)

    CertificateMetadata.add_member(:acm_certificate_metadata, Shapes::ShapeRef.new(shape: AcmCertificateMetadata, location_name: "AcmCertificateMetadata"))
    CertificateMetadata.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CertificateMetadata.add_member_subclass(:acm_certificate_metadata, Types::CertificateMetadata::AcmCertificateMetadata)
    CertificateMetadata.add_member_subclass(:unknown, Types::CertificateMetadata::Unknown)
    CertificateMetadata.struct_class = Types::CertificateMetadata

    CertificateOptions.add_member(:certificate_transparency_logging_preference, Shapes::ShapeRef.new(shape: CertificateTransparencyLoggingPreference, deprecated: true, location_name: "CertificateTransparencyLoggingPreference", metadata: {"deprecatedMessage" => "Certificate transparency logging opt-out is no longer available.", "deprecatedSince" => "12th June 2026"}))
    CertificateOptions.add_member(:export, Shapes::ShapeRef.new(shape: CertificateExport, location_name: "Export"))
    CertificateOptions.add_member(:validation_method, Shapes::ShapeRef.new(shape: ValidationMethod, location_name: "ValidationMethod"))
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
    CertificateSummary.add_member(:certificate_key_pair_origin, Shapes::ShapeRef.new(shape: CertificateKeyPairOrigin, location_name: "CertificateKeyPairOrigin"))
    CertificateSummary.struct_class = Types::CertificateSummary

    CertificateSummaryList.member = Shapes::ShapeRef.new(shape: CertificateSummary)

    CommonNameFilter.add_member(:value, Shapes::ShapeRef.new(shape: FilterString, required: true, location_name: "Value"))
    CommonNameFilter.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, required: true, location_name: "ComparisonOperator"))
    CommonNameFilter.struct_class = Types::CommonNameFilter

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ContactList.member = Shapes::ShapeRef.new(shape: String)

    CreateAcmeDomainValidationRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: String, location_name: "IdempotencyToken", metadata: {"idempotencyToken" => true}))
    CreateAcmeDomainValidationRequest.add_member(:acme_endpoint_arn, Shapes::ShapeRef.new(shape: AcmeEndpointArn, required: true, location_name: "AcmeEndpointArn"))
    CreateAcmeDomainValidationRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    CreateAcmeDomainValidationRequest.add_member(:prevalidation_options, Shapes::ShapeRef.new(shape: PrevalidationOptions, required: true, location_name: "PrevalidationOptions"))
    CreateAcmeDomainValidationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAcmeDomainValidationRequest.struct_class = Types::CreateAcmeDomainValidationRequest

    CreateAcmeDomainValidationResponse.add_member(:acme_domain_validation_arn, Shapes::ShapeRef.new(shape: AcmeDomainValidationArn, required: true, location_name: "AcmeDomainValidationArn"))
    CreateAcmeDomainValidationResponse.struct_class = Types::CreateAcmeDomainValidationResponse

    CreateAcmeEndpointRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: String, location_name: "IdempotencyToken", metadata: {"idempotencyToken" => true}))
    CreateAcmeEndpointRequest.add_member(:authorization_behavior, Shapes::ShapeRef.new(shape: AcmeAuthorizationBehavior, required: true, location_name: "AuthorizationBehavior"))
    CreateAcmeEndpointRequest.add_member(:contact, Shapes::ShapeRef.new(shape: AcmeContact, location_name: "Contact"))
    CreateAcmeEndpointRequest.add_member(:certificate_authority, Shapes::ShapeRef.new(shape: CertificateAuthority, required: true, location_name: "CertificateAuthority"))
    CreateAcmeEndpointRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAcmeEndpointRequest.add_member(:certificate_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "CertificateTags"))
    CreateAcmeEndpointRequest.struct_class = Types::CreateAcmeEndpointRequest

    CreateAcmeEndpointResponse.add_member(:acme_endpoint_arn, Shapes::ShapeRef.new(shape: AcmeEndpointArn, location_name: "AcmeEndpointArn"))
    CreateAcmeEndpointResponse.struct_class = Types::CreateAcmeEndpointResponse

    CreateAcmeExternalAccountBindingRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: String, location_name: "IdempotencyToken", metadata: {"idempotencyToken" => true}))
    CreateAcmeExternalAccountBindingRequest.add_member(:acme_endpoint_arn, Shapes::ShapeRef.new(shape: AcmeEndpointArn, required: true, location_name: "AcmeEndpointArn"))
    CreateAcmeExternalAccountBindingRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateAcmeExternalAccountBindingRequest.add_member(:expiration, Shapes::ShapeRef.new(shape: Expiration, location_name: "Expiration"))
    CreateAcmeExternalAccountBindingRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAcmeExternalAccountBindingRequest.struct_class = Types::CreateAcmeExternalAccountBindingRequest

    CreateAcmeExternalAccountBindingResponse.add_member(:external_account_binding, Shapes::ShapeRef.new(shape: AcmeExternalAccountBinding, location_name: "ExternalAccountBinding"))
    CreateAcmeExternalAccountBindingResponse.struct_class = Types::CreateAcmeExternalAccountBindingResponse

    CustomAttribute.add_member(:object_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ObjectIdentifier"))
    CustomAttribute.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    CustomAttribute.struct_class = Types::CustomAttribute

    CustomAttributeList.member = Shapes::ShapeRef.new(shape: CustomAttribute)

    DeleteAcmeDomainValidationRequest.add_member(:acme_domain_validation_arn, Shapes::ShapeRef.new(shape: AcmeDomainValidationArn, required: true, location_name: "AcmeDomainValidationArn"))
    DeleteAcmeDomainValidationRequest.struct_class = Types::DeleteAcmeDomainValidationRequest

    DeleteAcmeEndpointRequest.add_member(:acme_endpoint_arn, Shapes::ShapeRef.new(shape: AcmeEndpointArn, required: true, location_name: "AcmeEndpointArn"))
    DeleteAcmeEndpointRequest.struct_class = Types::DeleteAcmeEndpointRequest

    DeleteAcmeExternalAccountBindingRequest.add_member(:acme_external_account_binding_arn, Shapes::ShapeRef.new(shape: AcmeExternalAccountBindingArn, required: true, location_name: "AcmeExternalAccountBindingArn"))
    DeleteAcmeExternalAccountBindingRequest.struct_class = Types::DeleteAcmeExternalAccountBindingRequest

    DeleteCertificateRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    DeleteCertificateRequest.struct_class = Types::DeleteCertificateRequest

    DescribeAcmeAccountRequest.add_member(:acme_endpoint_arn, Shapes::ShapeRef.new(shape: AcmeEndpointArn, required: true, location_name: "AcmeEndpointArn"))
    DescribeAcmeAccountRequest.add_member(:account_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AccountUrl"))
    DescribeAcmeAccountRequest.struct_class = Types::DescribeAcmeAccountRequest

    DescribeAcmeAccountResponse.add_member(:acme_account, Shapes::ShapeRef.new(shape: AcmeAccount, location_name: "AcmeAccount"))
    DescribeAcmeAccountResponse.struct_class = Types::DescribeAcmeAccountResponse

    DescribeAcmeDomainValidationRequest.add_member(:acme_domain_validation_arn, Shapes::ShapeRef.new(shape: AcmeDomainValidationArn, required: true, location_name: "AcmeDomainValidationArn"))
    DescribeAcmeDomainValidationRequest.struct_class = Types::DescribeAcmeDomainValidationRequest

    DescribeAcmeDomainValidationResponse.add_member(:acme_domain_validation, Shapes::ShapeRef.new(shape: AcmeDomainValidation, location_name: "AcmeDomainValidation"))
    DescribeAcmeDomainValidationResponse.struct_class = Types::DescribeAcmeDomainValidationResponse

    DescribeAcmeEndpointRequest.add_member(:acme_endpoint_arn, Shapes::ShapeRef.new(shape: AcmeEndpointArn, required: true, location_name: "AcmeEndpointArn"))
    DescribeAcmeEndpointRequest.struct_class = Types::DescribeAcmeEndpointRequest

    DescribeAcmeEndpointResponse.add_member(:acme_endpoint, Shapes::ShapeRef.new(shape: AcmeEndpoint, location_name: "AcmeEndpoint"))
    DescribeAcmeEndpointResponse.struct_class = Types::DescribeAcmeEndpointResponse

    DescribeAcmeExternalAccountBindingRequest.add_member(:acme_external_account_binding_arn, Shapes::ShapeRef.new(shape: AcmeExternalAccountBindingArn, required: true, location_name: "AcmeExternalAccountBindingArn"))
    DescribeAcmeExternalAccountBindingRequest.struct_class = Types::DescribeAcmeExternalAccountBindingRequest

    DescribeAcmeExternalAccountBindingResponse.add_member(:external_account_binding, Shapes::ShapeRef.new(shape: AcmeExternalAccountBinding, location_name: "ExternalAccountBinding"))
    DescribeAcmeExternalAccountBindingResponse.struct_class = Types::DescribeAcmeExternalAccountBindingResponse

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

    DnsPrevalidationDetails.add_member(:domain_scope, Shapes::ShapeRef.new(shape: DomainScope, location_name: "DomainScope"))
    DnsPrevalidationDetails.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: HostedZoneId, location_name: "HostedZoneId"))
    DnsPrevalidationDetails.add_member(:resource_record, Shapes::ShapeRef.new(shape: ResourceRecord, location_name: "ResourceRecord"))
    DnsPrevalidationDetails.struct_class = Types::DnsPrevalidationDetails

    DnsPrevalidationOptions.add_member(:domain_scope, Shapes::ShapeRef.new(shape: DomainScope, location_name: "DomainScope"))
    DnsPrevalidationOptions.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: HostedZoneId, location_name: "HostedZoneId"))
    DnsPrevalidationOptions.struct_class = Types::DnsPrevalidationOptions

    DnsValidationChallenge.add_member(:resource_record, Shapes::ShapeRef.new(shape: ResourceRecord, location_name: "ResourceRecord"))
    DnsValidationChallenge.struct_class = Types::DnsValidationChallenge

    DomainComponentList.member = Shapes::ShapeRef.new(shape: String)

    DomainList.member = Shapes::ShapeRef.new(shape: DomainNameString)

    DomainScope.add_member(:exact_domain, Shapes::ShapeRef.new(shape: DomainScopeOption, location_name: "ExactDomain"))
    DomainScope.add_member(:subdomains, Shapes::ShapeRef.new(shape: DomainScopeOption, location_name: "Subdomains"))
    DomainScope.add_member(:wildcards, Shapes::ShapeRef.new(shape: DomainScopeOption, location_name: "Wildcards"))
    DomainScope.struct_class = Types::DomainScope

    DomainValidation.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainNameString, required: true, location_name: "DomainName"))
    DomainValidation.add_member(:validation_emails, Shapes::ShapeRef.new(shape: ValidationEmailList, location_name: "ValidationEmails"))
    DomainValidation.add_member(:validation_domain, Shapes::ShapeRef.new(shape: DomainNameString, location_name: "ValidationDomain"))
    DomainValidation.add_member(:validation_status, Shapes::ShapeRef.new(shape: DomainStatus, location_name: "ValidationStatus"))
    DomainValidation.add_member(:resource_record, Shapes::ShapeRef.new(shape: ResourceRecord, location_name: "ResourceRecord"))
    DomainValidation.add_member(:http_redirect, Shapes::ShapeRef.new(shape: HttpRedirect, location_name: "HttpRedirect"))
    DomainValidation.add_member(:validation_method, Shapes::ShapeRef.new(shape: ValidationMethod, location_name: "ValidationMethod"))
    DomainValidation.struct_class = Types::DomainValidation

    DomainValidationList.member = Shapes::ShapeRef.new(shape: DomainValidation)

    DomainValidationMethodUpdateSummary.add_member(:from, Shapes::ShapeRef.new(shape: ValidationMethod, location_name: "From"))
    DomainValidationMethodUpdateSummary.add_member(:to, Shapes::ShapeRef.new(shape: ValidationMethod, location_name: "To"))
    DomainValidationMethodUpdateSummary.struct_class = Types::DomainValidationMethodUpdateSummary

    DomainValidationOption.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainNameString, required: true, location_name: "DomainName"))
    DomainValidationOption.add_member(:validation_domain, Shapes::ShapeRef.new(shape: DomainNameString, required: true, location_name: "ValidationDomain"))
    DomainValidationOption.struct_class = Types::DomainValidationOption

    DomainValidationOptionList.member = Shapes::ShapeRef.new(shape: DomainValidationOption)

    DomainValidationSummary.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainNameString, required: true, location_name: "DomainName"))
    DomainValidationSummary.add_member(:active_validation_configuration, Shapes::ShapeRef.new(shape: ValidationConfiguration, location_name: "ActiveValidationConfiguration"))
    DomainValidationSummary.add_member(:requested_validation_configuration, Shapes::ShapeRef.new(shape: ValidationConfiguration, location_name: "RequestedValidationConfiguration"))
    DomainValidationSummary.struct_class = Types::DomainValidationSummary

    DomainValidationSummaryList.member = Shapes::ShapeRef.new(shape: DomainValidationSummary)

    EmailValidationChallenge.add_member(:validation_emails, Shapes::ShapeRef.new(shape: ValidationEmailList, location_name: "ValidationEmails"))
    EmailValidationChallenge.add_member(:validation_domain, Shapes::ShapeRef.new(shape: DomainNameString, location_name: "ValidationDomain"))
    EmailValidationChallenge.struct_class = Types::EmailValidationChallenge

    Expiration.add_member(:value, Shapes::ShapeRef.new(shape: ExpirationValueLong, required: true, location_name: "Value"))
    Expiration.add_member(:type, Shapes::ShapeRef.new(shape: TimeType, required: true, location_name: "Type"))
    Expiration.struct_class = Types::Expiration

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

    FailureDetails.add_member(:reason, Shapes::ShapeRef.new(shape: AcmeDomainValidationFailureReason, location_name: "Reason"))
    FailureDetails.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    FailureDetails.struct_class = Types::FailureDetails

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

    GetAcmeExternalAccountBindingCredentialsRequest.add_member(:acme_external_account_binding_arn, Shapes::ShapeRef.new(shape: AcmeExternalAccountBindingArn, required: true, location_name: "AcmeExternalAccountBindingArn"))
    GetAcmeExternalAccountBindingCredentialsRequest.struct_class = Types::GetAcmeExternalAccountBindingCredentialsRequest

    GetAcmeExternalAccountBindingCredentialsResponse.add_member(:key_id, Shapes::ShapeRef.new(shape: String, location_name: "KeyId"))
    GetAcmeExternalAccountBindingCredentialsResponse.add_member(:mac_key, Shapes::ShapeRef.new(shape: MacKey, location_name: "MacKey"))
    GetAcmeExternalAccountBindingCredentialsResponse.struct_class = Types::GetAcmeExternalAccountBindingCredentialsResponse

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

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

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

    ListAcmeAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAcmeAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAcmeAccountsRequestMaxResultsInteger, location_name: "MaxResults"))
    ListAcmeAccountsRequest.add_member(:acme_endpoint_arn, Shapes::ShapeRef.new(shape: AcmeEndpointArn, required: true, location_name: "AcmeEndpointArn"))
    ListAcmeAccountsRequest.struct_class = Types::ListAcmeAccountsRequest

    ListAcmeAccountsResponse.add_member(:acme_accounts, Shapes::ShapeRef.new(shape: AcmeAccountList, location_name: "AcmeAccounts"))
    ListAcmeAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAcmeAccountsResponse.struct_class = Types::ListAcmeAccountsResponse

    ListAcmeDomainValidationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAcmeDomainValidationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAcmeDomainValidationsRequestMaxResultsInteger, location_name: "MaxResults"))
    ListAcmeDomainValidationsRequest.add_member(:acme_endpoint_arn, Shapes::ShapeRef.new(shape: AcmeEndpointArn, required: true, location_name: "AcmeEndpointArn"))
    ListAcmeDomainValidationsRequest.struct_class = Types::ListAcmeDomainValidationsRequest

    ListAcmeDomainValidationsResponse.add_member(:acme_domain_validations, Shapes::ShapeRef.new(shape: AcmeDomainValidationList, location_name: "AcmeDomainValidations"))
    ListAcmeDomainValidationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAcmeDomainValidationsResponse.struct_class = Types::ListAcmeDomainValidationsResponse

    ListAcmeEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAcmeEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAcmeEndpointsRequestMaxResultsInteger, location_name: "MaxResults"))
    ListAcmeEndpointsRequest.struct_class = Types::ListAcmeEndpointsRequest

    ListAcmeEndpointsResponse.add_member(:acme_endpoints, Shapes::ShapeRef.new(shape: AcmeEndpointList, location_name: "AcmeEndpoints"))
    ListAcmeEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAcmeEndpointsResponse.struct_class = Types::ListAcmeEndpointsResponse

    ListAcmeExternalAccountBindingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAcmeExternalAccountBindingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAcmeExternalAccountBindingsRequestMaxResultsInteger, location_name: "MaxResults"))
    ListAcmeExternalAccountBindingsRequest.add_member(:acme_endpoint_arn, Shapes::ShapeRef.new(shape: AcmeEndpointArn, required: true, location_name: "AcmeEndpointArn"))
    ListAcmeExternalAccountBindingsRequest.struct_class = Types::ListAcmeExternalAccountBindingsRequest

    ListAcmeExternalAccountBindingsResponse.add_member(:external_account_bindings, Shapes::ShapeRef.new(shape: AcmeExternalAccountBindingList, location_name: "ExternalAccountBindings"))
    ListAcmeExternalAccountBindingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAcmeExternalAccountBindingsResponse.struct_class = Types::ListAcmeExternalAccountBindingsResponse

    ListCertificateDomainValidationsRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: CertificateArn, required: true, location_name: "CertificateArn"))
    ListCertificateDomainValidationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCertificateDomainValidationsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxItems, location_name: "MaxItems"))
    ListCertificateDomainValidationsRequest.struct_class = Types::ListCertificateDomainValidationsRequest

    ListCertificateDomainValidationsResponse.add_member(:domain_validation_summary_list, Shapes::ShapeRef.new(shape: DomainValidationSummaryList, location_name: "DomainValidationSummaryList"))
    ListCertificateDomainValidationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCertificateDomainValidationsResponse.struct_class = Types::ListCertificateDomainValidationsResponse

    ListCertificatesRequest.add_member(:certificate_statuses, Shapes::ShapeRef.new(shape: CertificateStatuses, location_name: "CertificateStatuses"))
    ListCertificatesRequest.add_member(:certificate_key_pair_origins, Shapes::ShapeRef.new(shape: CertificateKeyPairOrigins, location_name: "CertificateKeyPairOrigins"))
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

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    OtherName.add_member(:object_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ObjectIdentifier"))
    OtherName.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    OtherName.struct_class = Types::OtherName

    PrevalidationDetails.add_member(:dns_prevalidation, Shapes::ShapeRef.new(shape: DnsPrevalidationDetails, location_name: "DnsPrevalidation"))
    PrevalidationDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PrevalidationDetails.add_member_subclass(:dns_prevalidation, Types::PrevalidationDetails::DnsPrevalidation)
    PrevalidationDetails.add_member_subclass(:unknown, Types::PrevalidationDetails::Unknown)
    PrevalidationDetails.struct_class = Types::PrevalidationDetails

    PrevalidationOptions.add_member(:dns_prevalidation, Shapes::ShapeRef.new(shape: DnsPrevalidationOptions, location_name: "DnsPrevalidation"))
    PrevalidationOptions.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PrevalidationOptions.add_member_subclass(:dns_prevalidation, Types::PrevalidationOptions::DnsPrevalidation)
    PrevalidationOptions.add_member_subclass(:unknown, Types::PrevalidationOptions::Unknown)
    PrevalidationOptions.struct_class = Types::PrevalidationOptions

    PublicCertificateAuthority.add_member(:allowed_key_algorithms, Shapes::ShapeRef.new(shape: PublicKeyAlgorithmList, location_name: "AllowedKeyAlgorithms"))
    PublicCertificateAuthority.struct_class = Types::PublicCertificateAuthority

    PublicKeyAlgorithmList.member = Shapes::ShapeRef.new(shape: PublicKeyAlgorithm)

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

    RevokeAcmeAccountRequest.add_member(:acme_endpoint_arn, Shapes::ShapeRef.new(shape: AcmeEndpointArn, required: true, location_name: "AcmeEndpointArn"))
    RevokeAcmeAccountRequest.add_member(:account_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AccountUrl"))
    RevokeAcmeAccountRequest.struct_class = Types::RevokeAcmeAccountRequest

    RevokeAcmeExternalAccountBindingRequest.add_member(:acme_external_account_binding_arn, Shapes::ShapeRef.new(shape: AcmeExternalAccountBindingArn, required: true, location_name: "AcmeExternalAccountBindingArn"))
    RevokeAcmeExternalAccountBindingRequest.struct_class = Types::RevokeAcmeExternalAccountBindingRequest

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

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

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

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagPolicyException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TagPolicyException.struct_class = Types::TagPolicyException

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

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

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateAcmeDomainValidationRequest.add_member(:acme_domain_validation_arn, Shapes::ShapeRef.new(shape: AcmeDomainValidationArn, required: true, location_name: "AcmeDomainValidationArn"))
    UpdateAcmeDomainValidationRequest.add_member(:prevalidation_options, Shapes::ShapeRef.new(shape: PrevalidationOptions, location_name: "PrevalidationOptions"))
    UpdateAcmeDomainValidationRequest.struct_class = Types::UpdateAcmeDomainValidationRequest

    UpdateAcmeEndpointRequest.add_member(:acme_endpoint_arn, Shapes::ShapeRef.new(shape: AcmeEndpointArn, required: true, location_name: "AcmeEndpointArn"))
    UpdateAcmeEndpointRequest.add_member(:authorization_behavior, Shapes::ShapeRef.new(shape: AcmeAuthorizationBehavior, location_name: "AuthorizationBehavior"))
    UpdateAcmeEndpointRequest.add_member(:contact, Shapes::ShapeRef.new(shape: AcmeContact, location_name: "Contact"))
    UpdateAcmeEndpointRequest.add_member(:certificate_authority, Shapes::ShapeRef.new(shape: CertificateAuthority, location_name: "CertificateAuthority"))
    UpdateAcmeEndpointRequest.struct_class = Types::UpdateAcmeEndpointRequest

    UpdateCertificateOptionsRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    UpdateCertificateOptionsRequest.add_member(:options, Shapes::ShapeRef.new(shape: CertificateOptions, required: true, location_name: "Options"))
    UpdateCertificateOptionsRequest.struct_class = Types::UpdateCertificateOptionsRequest

    UpdateSummary.add_member(:status, Shapes::ShapeRef.new(shape: UpdateStatus, location_name: "Status"))
    UpdateSummary.add_member(:type, Shapes::ShapeRef.new(shape: UpdateType, location_name: "Type"))
    UpdateSummary.add_member(:domain_validation_method_update_summary, Shapes::ShapeRef.new(shape: DomainValidationMethodUpdateSummary, location_name: "DomainValidationMethodUpdateSummary"))
    UpdateSummary.add_member(:requested_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "RequestedAt"))
    UpdateSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "UpdatedAt"))
    UpdateSummary.struct_class = Types::UpdateSummary

    ValidationChallenge.add_member(:email_validation_challenge, Shapes::ShapeRef.new(shape: EmailValidationChallenge, location_name: "EmailValidationChallenge"))
    ValidationChallenge.add_member(:dns_validation_challenge, Shapes::ShapeRef.new(shape: DnsValidationChallenge, location_name: "DnsValidationChallenge"))
    ValidationChallenge.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ValidationChallenge.add_member_subclass(:email_validation_challenge, Types::ValidationChallenge::EmailValidationChallenge)
    ValidationChallenge.add_member_subclass(:dns_validation_challenge, Types::ValidationChallenge::DnsValidationChallenge)
    ValidationChallenge.add_member_subclass(:unknown, Types::ValidationChallenge::Unknown)
    ValidationChallenge.struct_class = Types::ValidationChallenge

    ValidationConfiguration.add_member(:validation_method, Shapes::ShapeRef.new(shape: ValidationMethod, location_name: "ValidationMethod"))
    ValidationConfiguration.add_member(:validation_challenge, Shapes::ShapeRef.new(shape: ValidationChallenge, location_name: "ValidationChallenge"))
    ValidationConfiguration.add_member(:validation_status, Shapes::ShapeRef.new(shape: DomainStatus, location_name: "ValidationStatus"))
    ValidationConfiguration.struct_class = Types::ValidationConfiguration

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
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_acme_domain_validation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAcmeDomainValidation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAcmeDomainValidationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAcmeDomainValidationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_acme_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAcmeEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAcmeEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAcmeEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_acme_external_account_binding, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAcmeExternalAccountBinding"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAcmeExternalAccountBindingRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAcmeExternalAccountBindingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_acme_domain_validation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAcmeDomainValidation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAcmeDomainValidationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_acme_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAcmeEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAcmeEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_acme_external_account_binding, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAcmeExternalAccountBinding"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAcmeExternalAccountBindingRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_acme_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAcmeAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAcmeAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAcmeAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_acme_domain_validation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAcmeDomainValidation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAcmeDomainValidationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAcmeDomainValidationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_acme_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAcmeEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAcmeEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAcmeEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_acme_external_account_binding, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAcmeExternalAccountBinding"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAcmeExternalAccountBindingRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAcmeExternalAccountBindingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:export_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExportCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: ExportCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RequestInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:get_acme_external_account_binding_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAcmeExternalAccountBindingCredentials"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAcmeExternalAccountBindingCredentialsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAcmeExternalAccountBindingCredentialsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RequestInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_acme_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAcmeAccounts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAcmeAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAcmeAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_acme_domain_validations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAcmeDomainValidations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAcmeDomainValidationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAcmeDomainValidationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_acme_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAcmeEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAcmeEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAcmeEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_acme_external_account_bindings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAcmeExternalAccountBindings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAcmeExternalAccountBindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAcmeExternalAccountBindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_certificate_domain_validations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCertificateDomainValidations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCertificateDomainValidationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCertificateDomainValidationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_token" => "next_token"
          }
        )
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_account_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAccountConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutAccountConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:renew_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RenewCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RenewCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: RequestInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:revoke_acme_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeAcmeAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RevokeAcmeAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:revoke_acme_external_account_binding, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeAcmeExternalAccountBinding"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RevokeAcmeExternalAccountBindingRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:revoke_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RevokeCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: RevokeCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:search_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchCertificates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchCertificatesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchCertificatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_acme_domain_validation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAcmeDomainValidation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAcmeDomainValidationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_acme_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAcmeEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAcmeEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_certificate_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCertificateOptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCertificateOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end

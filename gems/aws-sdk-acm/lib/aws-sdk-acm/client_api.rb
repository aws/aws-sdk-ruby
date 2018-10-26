# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ACM
  # @api private
  module ClientApi

    include Seahorse::Model

    AddTagsToCertificateRequest = Shapes::StructureShape.new(name: 'AddTagsToCertificateRequest')
    Arn = Shapes::StringShape.new(name: 'Arn')
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
    ExportCertificateRequest = Shapes::StructureShape.new(name: 'ExportCertificateRequest')
    ExportCertificateResponse = Shapes::StructureShape.new(name: 'ExportCertificateResponse')
    ExtendedKeyUsage = Shapes::StructureShape.new(name: 'ExtendedKeyUsage')
    ExtendedKeyUsageFilterList = Shapes::ListShape.new(name: 'ExtendedKeyUsageFilterList')
    ExtendedKeyUsageList = Shapes::ListShape.new(name: 'ExtendedKeyUsageList')
    ExtendedKeyUsageName = Shapes::StringShape.new(name: 'ExtendedKeyUsageName')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    Filters = Shapes::StructureShape.new(name: 'Filters')
    GetCertificateRequest = Shapes::StructureShape.new(name: 'GetCertificateRequest')
    GetCertificateResponse = Shapes::StructureShape.new(name: 'GetCertificateResponse')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    ImportCertificateRequest = Shapes::StructureShape.new(name: 'ImportCertificateRequest')
    ImportCertificateResponse = Shapes::StructureShape.new(name: 'ImportCertificateResponse')
    InUseList = Shapes::ListShape.new(name: 'InUseList')
    InvalidArnException = Shapes::StructureShape.new(name: 'InvalidArnException')
    InvalidDomainValidationOptionsException = Shapes::StructureShape.new(name: 'InvalidDomainValidationOptionsException')
    InvalidStateException = Shapes::StructureShape.new(name: 'InvalidStateException')
    InvalidTagException = Shapes::StructureShape.new(name: 'InvalidTagException')
    KeyAlgorithm = Shapes::StringShape.new(name: 'KeyAlgorithm')
    KeyAlgorithmList = Shapes::ListShape.new(name: 'KeyAlgorithmList')
    KeyUsage = Shapes::StructureShape.new(name: 'KeyUsage')
    KeyUsageFilterList = Shapes::ListShape.new(name: 'KeyUsageFilterList')
    KeyUsageList = Shapes::ListShape.new(name: 'KeyUsageList')
    KeyUsageName = Shapes::StringShape.new(name: 'KeyUsageName')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListCertificatesRequest = Shapes::StructureShape.new(name: 'ListCertificatesRequest')
    ListCertificatesResponse = Shapes::StructureShape.new(name: 'ListCertificatesResponse')
    ListTagsForCertificateRequest = Shapes::StructureShape.new(name: 'ListTagsForCertificateRequest')
    ListTagsForCertificateResponse = Shapes::StructureShape.new(name: 'ListTagsForCertificateResponse')
    MaxItems = Shapes::IntegerShape.new(name: 'MaxItems')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PassphraseBlob = Shapes::BlobShape.new(name: 'PassphraseBlob')
    PrivateKey = Shapes::StringShape.new(name: 'PrivateKey')
    PrivateKeyBlob = Shapes::BlobShape.new(name: 'PrivateKeyBlob')
    RecordType = Shapes::StringShape.new(name: 'RecordType')
    RemoveTagsFromCertificateRequest = Shapes::StructureShape.new(name: 'RemoveTagsFromCertificateRequest')
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
    String = Shapes::StringShape.new(name: 'String')
    TStamp = Shapes::TimestampShape.new(name: 'TStamp')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    UpdateCertificateOptionsRequest = Shapes::StructureShape.new(name: 'UpdateCertificateOptionsRequest')
    ValidationEmailList = Shapes::ListShape.new(name: 'ValidationEmailList')
    ValidationMethod = Shapes::StringShape.new(name: 'ValidationMethod')

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
    CertificateSummary.struct_class = Types::CertificateSummary

    CertificateSummaryList.member = Shapes::ShapeRef.new(shape: CertificateSummary)

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

    Filters.add_member(:extended_key_usage, Shapes::ShapeRef.new(shape: ExtendedKeyUsageFilterList, location_name: "extendedKeyUsage"))
    Filters.add_member(:key_usage, Shapes::ShapeRef.new(shape: KeyUsageFilterList, location_name: "keyUsage"))
    Filters.add_member(:key_types, Shapes::ShapeRef.new(shape: KeyAlgorithmList, location_name: "keyTypes"))
    Filters.struct_class = Types::Filters

    GetCertificateRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    GetCertificateRequest.struct_class = Types::GetCertificateRequest

    GetCertificateResponse.add_member(:certificate, Shapes::ShapeRef.new(shape: CertificateBody, location_name: "Certificate"))
    GetCertificateResponse.add_member(:certificate_chain, Shapes::ShapeRef.new(shape: CertificateChain, location_name: "CertificateChain"))
    GetCertificateResponse.struct_class = Types::GetCertificateResponse

    ImportCertificateRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateArn"))
    ImportCertificateRequest.add_member(:certificate, Shapes::ShapeRef.new(shape: CertificateBodyBlob, required: true, location_name: "Certificate"))
    ImportCertificateRequest.add_member(:private_key, Shapes::ShapeRef.new(shape: PrivateKeyBlob, required: true, location_name: "PrivateKey"))
    ImportCertificateRequest.add_member(:certificate_chain, Shapes::ShapeRef.new(shape: CertificateChainBlob, location_name: "CertificateChain"))
    ImportCertificateRequest.struct_class = Types::ImportCertificateRequest

    ImportCertificateResponse.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateArn"))
    ImportCertificateResponse.struct_class = Types::ImportCertificateResponse

    InUseList.member = Shapes::ShapeRef.new(shape: String)

    KeyAlgorithmList.member = Shapes::ShapeRef.new(shape: KeyAlgorithm)

    KeyUsage.add_member(:name, Shapes::ShapeRef.new(shape: KeyUsageName, location_name: "Name"))
    KeyUsage.struct_class = Types::KeyUsage

    KeyUsageFilterList.member = Shapes::ShapeRef.new(shape: KeyUsageName)

    KeyUsageList.member = Shapes::ShapeRef.new(shape: KeyUsage)

    ListCertificatesRequest.add_member(:certificate_statuses, Shapes::ShapeRef.new(shape: CertificateStatuses, location_name: "CertificateStatuses"))
    ListCertificatesRequest.add_member(:includes, Shapes::ShapeRef.new(shape: Filters, location_name: "Includes"))
    ListCertificatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCertificatesRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxItems, location_name: "MaxItems"))
    ListCertificatesRequest.struct_class = Types::ListCertificatesRequest

    ListCertificatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCertificatesResponse.add_member(:certificate_summary_list, Shapes::ShapeRef.new(shape: CertificateSummaryList, location_name: "CertificateSummaryList"))
    ListCertificatesResponse.struct_class = Types::ListCertificatesResponse

    ListTagsForCertificateRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    ListTagsForCertificateRequest.struct_class = Types::ListTagsForCertificateRequest

    ListTagsForCertificateResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForCertificateResponse.struct_class = Types::ListTagsForCertificateResponse

    RemoveTagsFromCertificateRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    RemoveTagsFromCertificateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    RemoveTagsFromCertificateRequest.struct_class = Types::RemoveTagsFromCertificateRequest

    RenewalSummary.add_member(:renewal_status, Shapes::ShapeRef.new(shape: RenewalStatus, required: true, location_name: "RenewalStatus"))
    RenewalSummary.add_member(:domain_validation_options, Shapes::ShapeRef.new(shape: DomainValidationList, required: true, location_name: "DomainValidationOptions"))
    RenewalSummary.struct_class = Types::RenewalSummary

    RequestCertificateRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainNameString, required: true, location_name: "DomainName"))
    RequestCertificateRequest.add_member(:validation_method, Shapes::ShapeRef.new(shape: ValidationMethod, location_name: "ValidationMethod"))
    RequestCertificateRequest.add_member(:subject_alternative_names, Shapes::ShapeRef.new(shape: DomainList, location_name: "SubjectAlternativeNames"))
    RequestCertificateRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "IdempotencyToken"))
    RequestCertificateRequest.add_member(:domain_validation_options, Shapes::ShapeRef.new(shape: DomainValidationOptionList, location_name: "DomainValidationOptions"))
    RequestCertificateRequest.add_member(:options, Shapes::ShapeRef.new(shape: CertificateOptions, location_name: "Options"))
    RequestCertificateRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateAuthorityArn"))
    RequestCertificateRequest.struct_class = Types::RequestCertificateRequest

    RequestCertificateResponse.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateArn"))
    RequestCertificateResponse.struct_class = Types::RequestCertificateResponse

    ResendValidationEmailRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    ResendValidationEmailRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainNameString, required: true, location_name: "Domain"))
    ResendValidationEmailRequest.add_member(:validation_domain, Shapes::ShapeRef.new(shape: DomainNameString, required: true, location_name: "ValidationDomain"))
    ResendValidationEmailRequest.struct_class = Types::ResendValidationEmailRequest

    ResourceRecord.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ResourceRecord.add_member(:type, Shapes::ShapeRef.new(shape: RecordType, required: true, location_name: "Type"))
    ResourceRecord.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    ResourceRecord.struct_class = Types::ResourceRecord

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    UpdateCertificateOptionsRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    UpdateCertificateOptionsRequest.add_member(:options, Shapes::ShapeRef.new(shape: CertificateOptions, required: true, location_name: "Options"))
    UpdateCertificateOptionsRequest.struct_class = Types::UpdateCertificateOptionsRequest

    ValidationEmailList.member = Shapes::ShapeRef.new(shape: String)


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
      end)

      api.add_operation(:delete_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
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
      end)

      api.add_operation(:list_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCertificates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCertificatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCertificatesResponse)
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

      api.add_operation(:remove_tags_from_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTagsFromCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsFromCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagException)
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

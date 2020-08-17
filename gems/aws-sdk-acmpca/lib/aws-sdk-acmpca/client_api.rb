# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ACMPCA
  # @api private
  module ClientApi

    include Seahorse::Model

    ASN1PrintableString64 = Shapes::StringShape.new(name: 'ASN1PrintableString64')
    ASN1Subject = Shapes::StructureShape.new(name: 'ASN1Subject')
    AWSPolicy = Shapes::StringShape.new(name: 'AWSPolicy')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    ActionList = Shapes::ListShape.new(name: 'ActionList')
    ActionType = Shapes::StringShape.new(name: 'ActionType')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AuditReportId = Shapes::StringShape.new(name: 'AuditReportId')
    AuditReportResponseFormat = Shapes::StringShape.new(name: 'AuditReportResponseFormat')
    AuditReportStatus = Shapes::StringShape.new(name: 'AuditReportStatus')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CertificateAuthorities = Shapes::ListShape.new(name: 'CertificateAuthorities')
    CertificateAuthority = Shapes::StructureShape.new(name: 'CertificateAuthority')
    CertificateAuthorityConfiguration = Shapes::StructureShape.new(name: 'CertificateAuthorityConfiguration')
    CertificateAuthorityStatus = Shapes::StringShape.new(name: 'CertificateAuthorityStatus')
    CertificateAuthorityType = Shapes::StringShape.new(name: 'CertificateAuthorityType')
    CertificateBody = Shapes::StringShape.new(name: 'CertificateBody')
    CertificateBodyBlob = Shapes::BlobShape.new(name: 'CertificateBodyBlob')
    CertificateChain = Shapes::StringShape.new(name: 'CertificateChain')
    CertificateChainBlob = Shapes::BlobShape.new(name: 'CertificateChainBlob')
    CertificateMismatchException = Shapes::StructureShape.new(name: 'CertificateMismatchException')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    CountryCodeString = Shapes::StringShape.new(name: 'CountryCodeString')
    CreateCertificateAuthorityAuditReportRequest = Shapes::StructureShape.new(name: 'CreateCertificateAuthorityAuditReportRequest')
    CreateCertificateAuthorityAuditReportResponse = Shapes::StructureShape.new(name: 'CreateCertificateAuthorityAuditReportResponse')
    CreateCertificateAuthorityRequest = Shapes::StructureShape.new(name: 'CreateCertificateAuthorityRequest')
    CreateCertificateAuthorityResponse = Shapes::StructureShape.new(name: 'CreateCertificateAuthorityResponse')
    CreatePermissionRequest = Shapes::StructureShape.new(name: 'CreatePermissionRequest')
    CrlConfiguration = Shapes::StructureShape.new(name: 'CrlConfiguration')
    CsrBlob = Shapes::BlobShape.new(name: 'CsrBlob')
    CsrBody = Shapes::StringShape.new(name: 'CsrBody')
    DeleteCertificateAuthorityRequest = Shapes::StructureShape.new(name: 'DeleteCertificateAuthorityRequest')
    DeletePermissionRequest = Shapes::StructureShape.new(name: 'DeletePermissionRequest')
    DeletePolicyRequest = Shapes::StructureShape.new(name: 'DeletePolicyRequest')
    DescribeCertificateAuthorityAuditReportRequest = Shapes::StructureShape.new(name: 'DescribeCertificateAuthorityAuditReportRequest')
    DescribeCertificateAuthorityAuditReportResponse = Shapes::StructureShape.new(name: 'DescribeCertificateAuthorityAuditReportResponse')
    DescribeCertificateAuthorityRequest = Shapes::StructureShape.new(name: 'DescribeCertificateAuthorityRequest')
    DescribeCertificateAuthorityResponse = Shapes::StructureShape.new(name: 'DescribeCertificateAuthorityResponse')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    GetCertificateAuthorityCertificateRequest = Shapes::StructureShape.new(name: 'GetCertificateAuthorityCertificateRequest')
    GetCertificateAuthorityCertificateResponse = Shapes::StructureShape.new(name: 'GetCertificateAuthorityCertificateResponse')
    GetCertificateAuthorityCsrRequest = Shapes::StructureShape.new(name: 'GetCertificateAuthorityCsrRequest')
    GetCertificateAuthorityCsrResponse = Shapes::StructureShape.new(name: 'GetCertificateAuthorityCsrResponse')
    GetCertificateRequest = Shapes::StructureShape.new(name: 'GetCertificateRequest')
    GetCertificateResponse = Shapes::StructureShape.new(name: 'GetCertificateResponse')
    GetPolicyRequest = Shapes::StructureShape.new(name: 'GetPolicyRequest')
    GetPolicyResponse = Shapes::StructureShape.new(name: 'GetPolicyResponse')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    ImportCertificateAuthorityCertificateRequest = Shapes::StructureShape.new(name: 'ImportCertificateAuthorityCertificateRequest')
    Integer1To5000 = Shapes::IntegerShape.new(name: 'Integer1To5000')
    InvalidArgsException = Shapes::StructureShape.new(name: 'InvalidArgsException')
    InvalidArnException = Shapes::StructureShape.new(name: 'InvalidArnException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidPolicyException = Shapes::StructureShape.new(name: 'InvalidPolicyException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    InvalidStateException = Shapes::StructureShape.new(name: 'InvalidStateException')
    InvalidTagException = Shapes::StructureShape.new(name: 'InvalidTagException')
    IssueCertificateRequest = Shapes::StructureShape.new(name: 'IssueCertificateRequest')
    IssueCertificateResponse = Shapes::StructureShape.new(name: 'IssueCertificateResponse')
    KeyAlgorithm = Shapes::StringShape.new(name: 'KeyAlgorithm')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListCertificateAuthoritiesRequest = Shapes::StructureShape.new(name: 'ListCertificateAuthoritiesRequest')
    ListCertificateAuthoritiesResponse = Shapes::StructureShape.new(name: 'ListCertificateAuthoritiesResponse')
    ListPermissionsRequest = Shapes::StructureShape.new(name: 'ListPermissionsRequest')
    ListPermissionsResponse = Shapes::StructureShape.new(name: 'ListPermissionsResponse')
    ListTagsRequest = Shapes::StructureShape.new(name: 'ListTagsRequest')
    ListTagsResponse = Shapes::StructureShape.new(name: 'ListTagsResponse')
    LockoutPreventedException = Shapes::StructureShape.new(name: 'LockoutPreventedException')
    MalformedCSRException = Shapes::StructureShape.new(name: 'MalformedCSRException')
    MalformedCertificateException = Shapes::StructureShape.new(name: 'MalformedCertificateException')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PermanentDeletionTimeInDays = Shapes::IntegerShape.new(name: 'PermanentDeletionTimeInDays')
    Permission = Shapes::StructureShape.new(name: 'Permission')
    PermissionAlreadyExistsException = Shapes::StructureShape.new(name: 'PermissionAlreadyExistsException')
    PermissionList = Shapes::ListShape.new(name: 'PermissionList')
    PositiveLong = Shapes::IntegerShape.new(name: 'PositiveLong')
    Principal = Shapes::StringShape.new(name: 'Principal')
    PutPolicyRequest = Shapes::StructureShape.new(name: 'PutPolicyRequest')
    RequestAlreadyProcessedException = Shapes::StructureShape.new(name: 'RequestAlreadyProcessedException')
    RequestFailedException = Shapes::StructureShape.new(name: 'RequestFailedException')
    RequestInProgressException = Shapes::StructureShape.new(name: 'RequestInProgressException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceOwner = Shapes::StringShape.new(name: 'ResourceOwner')
    RestoreCertificateAuthorityRequest = Shapes::StructureShape.new(name: 'RestoreCertificateAuthorityRequest')
    RevocationConfiguration = Shapes::StructureShape.new(name: 'RevocationConfiguration')
    RevocationReason = Shapes::StringShape.new(name: 'RevocationReason')
    RevokeCertificateRequest = Shapes::StructureShape.new(name: 'RevokeCertificateRequest')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    SigningAlgorithm = Shapes::StringShape.new(name: 'SigningAlgorithm')
    String = Shapes::StringShape.new(name: 'String')
    String128 = Shapes::StringShape.new(name: 'String128')
    String16 = Shapes::StringShape.new(name: 'String16')
    String253 = Shapes::StringShape.new(name: 'String253')
    String3 = Shapes::StringShape.new(name: 'String3')
    String3To255 = Shapes::StringShape.new(name: 'String3To255')
    String40 = Shapes::StringShape.new(name: 'String40')
    String5 = Shapes::StringShape.new(name: 'String5')
    String64 = Shapes::StringShape.new(name: 'String64')
    TStamp = Shapes::TimestampShape.new(name: 'TStamp')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagCertificateAuthorityRequest = Shapes::StructureShape.new(name: 'TagCertificateAuthorityRequest')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    UntagCertificateAuthorityRequest = Shapes::StructureShape.new(name: 'UntagCertificateAuthorityRequest')
    UpdateCertificateAuthorityRequest = Shapes::StructureShape.new(name: 'UpdateCertificateAuthorityRequest')
    Validity = Shapes::StructureShape.new(name: 'Validity')
    ValidityPeriodType = Shapes::StringShape.new(name: 'ValidityPeriodType')

    ASN1Subject.add_member(:country, Shapes::ShapeRef.new(shape: CountryCodeString, location_name: "Country"))
    ASN1Subject.add_member(:organization, Shapes::ShapeRef.new(shape: String64, location_name: "Organization"))
    ASN1Subject.add_member(:organizational_unit, Shapes::ShapeRef.new(shape: String64, location_name: "OrganizationalUnit"))
    ASN1Subject.add_member(:distinguished_name_qualifier, Shapes::ShapeRef.new(shape: ASN1PrintableString64, location_name: "DistinguishedNameQualifier"))
    ASN1Subject.add_member(:state, Shapes::ShapeRef.new(shape: String128, location_name: "State"))
    ASN1Subject.add_member(:common_name, Shapes::ShapeRef.new(shape: String64, location_name: "CommonName"))
    ASN1Subject.add_member(:serial_number, Shapes::ShapeRef.new(shape: ASN1PrintableString64, location_name: "SerialNumber"))
    ASN1Subject.add_member(:locality, Shapes::ShapeRef.new(shape: String128, location_name: "Locality"))
    ASN1Subject.add_member(:title, Shapes::ShapeRef.new(shape: String64, location_name: "Title"))
    ASN1Subject.add_member(:surname, Shapes::ShapeRef.new(shape: String40, location_name: "Surname"))
    ASN1Subject.add_member(:given_name, Shapes::ShapeRef.new(shape: String16, location_name: "GivenName"))
    ASN1Subject.add_member(:initials, Shapes::ShapeRef.new(shape: String5, location_name: "Initials"))
    ASN1Subject.add_member(:pseudonym, Shapes::ShapeRef.new(shape: String128, location_name: "Pseudonym"))
    ASN1Subject.add_member(:generation_qualifier, Shapes::ShapeRef.new(shape: String3, location_name: "GenerationQualifier"))
    ASN1Subject.struct_class = Types::ASN1Subject

    ActionList.member = Shapes::ShapeRef.new(shape: ActionType)

    CertificateAuthorities.member = Shapes::ShapeRef.new(shape: CertificateAuthority)

    CertificateAuthority.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CertificateAuthority.add_member(:owner_account, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerAccount"))
    CertificateAuthority.add_member(:created_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "CreatedAt"))
    CertificateAuthority.add_member(:last_state_change_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "LastStateChangeAt"))
    CertificateAuthority.add_member(:type, Shapes::ShapeRef.new(shape: CertificateAuthorityType, location_name: "Type"))
    CertificateAuthority.add_member(:serial, Shapes::ShapeRef.new(shape: String, location_name: "Serial"))
    CertificateAuthority.add_member(:status, Shapes::ShapeRef.new(shape: CertificateAuthorityStatus, location_name: "Status"))
    CertificateAuthority.add_member(:not_before, Shapes::ShapeRef.new(shape: TStamp, location_name: "NotBefore"))
    CertificateAuthority.add_member(:not_after, Shapes::ShapeRef.new(shape: TStamp, location_name: "NotAfter"))
    CertificateAuthority.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    CertificateAuthority.add_member(:certificate_authority_configuration, Shapes::ShapeRef.new(shape: CertificateAuthorityConfiguration, location_name: "CertificateAuthorityConfiguration"))
    CertificateAuthority.add_member(:revocation_configuration, Shapes::ShapeRef.new(shape: RevocationConfiguration, location_name: "RevocationConfiguration"))
    CertificateAuthority.add_member(:restorable_until, Shapes::ShapeRef.new(shape: TStamp, location_name: "RestorableUntil"))
    CertificateAuthority.struct_class = Types::CertificateAuthority

    CertificateAuthorityConfiguration.add_member(:key_algorithm, Shapes::ShapeRef.new(shape: KeyAlgorithm, required: true, location_name: "KeyAlgorithm"))
    CertificateAuthorityConfiguration.add_member(:signing_algorithm, Shapes::ShapeRef.new(shape: SigningAlgorithm, required: true, location_name: "SigningAlgorithm"))
    CertificateAuthorityConfiguration.add_member(:subject, Shapes::ShapeRef.new(shape: ASN1Subject, required: true, location_name: "Subject"))
    CertificateAuthorityConfiguration.struct_class = Types::CertificateAuthorityConfiguration

    CertificateMismatchException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    CertificateMismatchException.struct_class = Types::CertificateMismatchException

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    CreateCertificateAuthorityAuditReportRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateAuthorityArn"))
    CreateCertificateAuthorityAuditReportRequest.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "S3BucketName"))
    CreateCertificateAuthorityAuditReportRequest.add_member(:audit_report_response_format, Shapes::ShapeRef.new(shape: AuditReportResponseFormat, required: true, location_name: "AuditReportResponseFormat"))
    CreateCertificateAuthorityAuditReportRequest.struct_class = Types::CreateCertificateAuthorityAuditReportRequest

    CreateCertificateAuthorityAuditReportResponse.add_member(:audit_report_id, Shapes::ShapeRef.new(shape: AuditReportId, location_name: "AuditReportId"))
    CreateCertificateAuthorityAuditReportResponse.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, location_name: "S3Key"))
    CreateCertificateAuthorityAuditReportResponse.struct_class = Types::CreateCertificateAuthorityAuditReportResponse

    CreateCertificateAuthorityRequest.add_member(:certificate_authority_configuration, Shapes::ShapeRef.new(shape: CertificateAuthorityConfiguration, required: true, location_name: "CertificateAuthorityConfiguration"))
    CreateCertificateAuthorityRequest.add_member(:revocation_configuration, Shapes::ShapeRef.new(shape: RevocationConfiguration, location_name: "RevocationConfiguration"))
    CreateCertificateAuthorityRequest.add_member(:certificate_authority_type, Shapes::ShapeRef.new(shape: CertificateAuthorityType, required: true, location_name: "CertificateAuthorityType"))
    CreateCertificateAuthorityRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "IdempotencyToken"))
    CreateCertificateAuthorityRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateCertificateAuthorityRequest.struct_class = Types::CreateCertificateAuthorityRequest

    CreateCertificateAuthorityResponse.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateAuthorityArn"))
    CreateCertificateAuthorityResponse.struct_class = Types::CreateCertificateAuthorityResponse

    CreatePermissionRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateAuthorityArn"))
    CreatePermissionRequest.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, required: true, location_name: "Principal"))
    CreatePermissionRequest.add_member(:source_account, Shapes::ShapeRef.new(shape: AccountId, location_name: "SourceAccount"))
    CreatePermissionRequest.add_member(:actions, Shapes::ShapeRef.new(shape: ActionList, required: true, location_name: "Actions"))
    CreatePermissionRequest.struct_class = Types::CreatePermissionRequest

    CrlConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Enabled", metadata: {"box"=>true}))
    CrlConfiguration.add_member(:expiration_in_days, Shapes::ShapeRef.new(shape: Integer1To5000, location_name: "ExpirationInDays", metadata: {"box"=>true}))
    CrlConfiguration.add_member(:custom_cname, Shapes::ShapeRef.new(shape: String253, location_name: "CustomCname"))
    CrlConfiguration.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: String3To255, location_name: "S3BucketName"))
    CrlConfiguration.struct_class = Types::CrlConfiguration

    DeleteCertificateAuthorityRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateAuthorityArn"))
    DeleteCertificateAuthorityRequest.add_member(:permanent_deletion_time_in_days, Shapes::ShapeRef.new(shape: PermanentDeletionTimeInDays, location_name: "PermanentDeletionTimeInDays"))
    DeleteCertificateAuthorityRequest.struct_class = Types::DeleteCertificateAuthorityRequest

    DeletePermissionRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateAuthorityArn"))
    DeletePermissionRequest.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, required: true, location_name: "Principal"))
    DeletePermissionRequest.add_member(:source_account, Shapes::ShapeRef.new(shape: AccountId, location_name: "SourceAccount"))
    DeletePermissionRequest.struct_class = Types::DeletePermissionRequest

    DeletePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    DeletePolicyRequest.struct_class = Types::DeletePolicyRequest

    DescribeCertificateAuthorityAuditReportRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateAuthorityArn"))
    DescribeCertificateAuthorityAuditReportRequest.add_member(:audit_report_id, Shapes::ShapeRef.new(shape: AuditReportId, required: true, location_name: "AuditReportId"))
    DescribeCertificateAuthorityAuditReportRequest.struct_class = Types::DescribeCertificateAuthorityAuditReportRequest

    DescribeCertificateAuthorityAuditReportResponse.add_member(:audit_report_status, Shapes::ShapeRef.new(shape: AuditReportStatus, location_name: "AuditReportStatus"))
    DescribeCertificateAuthorityAuditReportResponse.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "S3BucketName"))
    DescribeCertificateAuthorityAuditReportResponse.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, location_name: "S3Key"))
    DescribeCertificateAuthorityAuditReportResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "CreatedAt"))
    DescribeCertificateAuthorityAuditReportResponse.struct_class = Types::DescribeCertificateAuthorityAuditReportResponse

    DescribeCertificateAuthorityRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateAuthorityArn"))
    DescribeCertificateAuthorityRequest.struct_class = Types::DescribeCertificateAuthorityRequest

    DescribeCertificateAuthorityResponse.add_member(:certificate_authority, Shapes::ShapeRef.new(shape: CertificateAuthority, location_name: "CertificateAuthority"))
    DescribeCertificateAuthorityResponse.struct_class = Types::DescribeCertificateAuthorityResponse

    GetCertificateAuthorityCertificateRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateAuthorityArn"))
    GetCertificateAuthorityCertificateRequest.struct_class = Types::GetCertificateAuthorityCertificateRequest

    GetCertificateAuthorityCertificateResponse.add_member(:certificate, Shapes::ShapeRef.new(shape: CertificateBody, location_name: "Certificate"))
    GetCertificateAuthorityCertificateResponse.add_member(:certificate_chain, Shapes::ShapeRef.new(shape: CertificateChain, location_name: "CertificateChain"))
    GetCertificateAuthorityCertificateResponse.struct_class = Types::GetCertificateAuthorityCertificateResponse

    GetCertificateAuthorityCsrRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateAuthorityArn"))
    GetCertificateAuthorityCsrRequest.struct_class = Types::GetCertificateAuthorityCsrRequest

    GetCertificateAuthorityCsrResponse.add_member(:csr, Shapes::ShapeRef.new(shape: CsrBody, location_name: "Csr"))
    GetCertificateAuthorityCsrResponse.struct_class = Types::GetCertificateAuthorityCsrResponse

    GetCertificateRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateAuthorityArn"))
    GetCertificateRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateArn"))
    GetCertificateRequest.struct_class = Types::GetCertificateRequest

    GetCertificateResponse.add_member(:certificate, Shapes::ShapeRef.new(shape: CertificateBody, location_name: "Certificate"))
    GetCertificateResponse.add_member(:certificate_chain, Shapes::ShapeRef.new(shape: CertificateChain, location_name: "CertificateChain"))
    GetCertificateResponse.struct_class = Types::GetCertificateResponse

    GetPolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    GetPolicyRequest.struct_class = Types::GetPolicyRequest

    GetPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: AWSPolicy, location_name: "Policy"))
    GetPolicyResponse.struct_class = Types::GetPolicyResponse

    ImportCertificateAuthorityCertificateRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateAuthorityArn"))
    ImportCertificateAuthorityCertificateRequest.add_member(:certificate, Shapes::ShapeRef.new(shape: CertificateBodyBlob, required: true, location_name: "Certificate"))
    ImportCertificateAuthorityCertificateRequest.add_member(:certificate_chain, Shapes::ShapeRef.new(shape: CertificateChainBlob, location_name: "CertificateChain"))
    ImportCertificateAuthorityCertificateRequest.struct_class = Types::ImportCertificateAuthorityCertificateRequest

    InvalidArgsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidArgsException.struct_class = Types::InvalidArgsException

    InvalidArnException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidArnException.struct_class = Types::InvalidArnException

    InvalidNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    InvalidPolicyException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidPolicyException.struct_class = Types::InvalidPolicyException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    InvalidStateException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidStateException.struct_class = Types::InvalidStateException

    InvalidTagException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidTagException.struct_class = Types::InvalidTagException

    IssueCertificateRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateAuthorityArn"))
    IssueCertificateRequest.add_member(:csr, Shapes::ShapeRef.new(shape: CsrBlob, required: true, location_name: "Csr"))
    IssueCertificateRequest.add_member(:signing_algorithm, Shapes::ShapeRef.new(shape: SigningAlgorithm, required: true, location_name: "SigningAlgorithm"))
    IssueCertificateRequest.add_member(:template_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "TemplateArn"))
    IssueCertificateRequest.add_member(:validity, Shapes::ShapeRef.new(shape: Validity, required: true, location_name: "Validity"))
    IssueCertificateRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "IdempotencyToken"))
    IssueCertificateRequest.struct_class = Types::IssueCertificateRequest

    IssueCertificateResponse.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateArn"))
    IssueCertificateResponse.struct_class = Types::IssueCertificateResponse

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListCertificateAuthoritiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCertificateAuthoritiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCertificateAuthoritiesRequest.add_member(:resource_owner, Shapes::ShapeRef.new(shape: ResourceOwner, location_name: "ResourceOwner"))
    ListCertificateAuthoritiesRequest.struct_class = Types::ListCertificateAuthoritiesRequest

    ListCertificateAuthoritiesResponse.add_member(:certificate_authorities, Shapes::ShapeRef.new(shape: CertificateAuthorities, location_name: "CertificateAuthorities"))
    ListCertificateAuthoritiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCertificateAuthoritiesResponse.struct_class = Types::ListCertificateAuthoritiesResponse

    ListPermissionsRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateAuthorityArn"))
    ListPermissionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPermissionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListPermissionsRequest.struct_class = Types::ListPermissionsRequest

    ListPermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionList, location_name: "Permissions"))
    ListPermissionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPermissionsResponse.struct_class = Types::ListPermissionsResponse

    ListTagsRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateAuthorityArn"))
    ListTagsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTagsRequest.struct_class = Types::ListTagsRequest

    ListTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsResponse.struct_class = Types::ListTagsResponse

    LockoutPreventedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    LockoutPreventedException.struct_class = Types::LockoutPreventedException

    MalformedCSRException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    MalformedCSRException.struct_class = Types::MalformedCSRException

    MalformedCertificateException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    MalformedCertificateException.struct_class = Types::MalformedCertificateException

    Permission.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CertificateAuthorityArn"))
    Permission.add_member(:created_at, Shapes::ShapeRef.new(shape: TStamp, location_name: "CreatedAt"))
    Permission.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, location_name: "Principal"))
    Permission.add_member(:source_account, Shapes::ShapeRef.new(shape: AccountId, location_name: "SourceAccount"))
    Permission.add_member(:actions, Shapes::ShapeRef.new(shape: ActionList, location_name: "Actions"))
    Permission.add_member(:policy, Shapes::ShapeRef.new(shape: AWSPolicy, location_name: "Policy"))
    Permission.struct_class = Types::Permission

    PermissionAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    PermissionAlreadyExistsException.struct_class = Types::PermissionAlreadyExistsException

    PermissionList.member = Shapes::ShapeRef.new(shape: Permission)

    PutPolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    PutPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: AWSPolicy, required: true, location_name: "Policy"))
    PutPolicyRequest.struct_class = Types::PutPolicyRequest

    RequestAlreadyProcessedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    RequestAlreadyProcessedException.struct_class = Types::RequestAlreadyProcessedException

    RequestFailedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    RequestFailedException.struct_class = Types::RequestFailedException

    RequestInProgressException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    RequestInProgressException.struct_class = Types::RequestInProgressException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RestoreCertificateAuthorityRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateAuthorityArn"))
    RestoreCertificateAuthorityRequest.struct_class = Types::RestoreCertificateAuthorityRequest

    RevocationConfiguration.add_member(:crl_configuration, Shapes::ShapeRef.new(shape: CrlConfiguration, location_name: "CrlConfiguration"))
    RevocationConfiguration.struct_class = Types::RevocationConfiguration

    RevokeCertificateRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateAuthorityArn"))
    RevokeCertificateRequest.add_member(:certificate_serial, Shapes::ShapeRef.new(shape: String128, required: true, location_name: "CertificateSerial"))
    RevokeCertificateRequest.add_member(:revocation_reason, Shapes::ShapeRef.new(shape: RevocationReason, required: true, location_name: "RevocationReason"))
    RevokeCertificateRequest.struct_class = Types::RevokeCertificateRequest

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagCertificateAuthorityRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateAuthorityArn"))
    TagCertificateAuthorityRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagCertificateAuthorityRequest.struct_class = Types::TagCertificateAuthorityRequest

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    UntagCertificateAuthorityRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateAuthorityArn"))
    UntagCertificateAuthorityRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    UntagCertificateAuthorityRequest.struct_class = Types::UntagCertificateAuthorityRequest

    UpdateCertificateAuthorityRequest.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CertificateAuthorityArn"))
    UpdateCertificateAuthorityRequest.add_member(:revocation_configuration, Shapes::ShapeRef.new(shape: RevocationConfiguration, location_name: "RevocationConfiguration"))
    UpdateCertificateAuthorityRequest.add_member(:status, Shapes::ShapeRef.new(shape: CertificateAuthorityStatus, location_name: "Status"))
    UpdateCertificateAuthorityRequest.struct_class = Types::UpdateCertificateAuthorityRequest

    Validity.add_member(:value, Shapes::ShapeRef.new(shape: PositiveLong, required: true, location_name: "Value", metadata: {"box"=>true}))
    Validity.add_member(:type, Shapes::ShapeRef.new(shape: ValidityPeriodType, required: true, location_name: "Type"))
    Validity.struct_class = Types::Validity


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-08-22"

      api.metadata = {
        "apiVersion" => "2017-08-22",
        "endpointPrefix" => "acm-pca",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "ACM-PCA",
        "serviceFullName" => "AWS Certificate Manager Private Certificate Authority",
        "serviceId" => "ACM PCA",
        "signatureVersion" => "v4",
        "targetPrefix" => "ACMPrivateCA",
        "uid" => "acm-pca-2017-08-22",
      }

      api.add_operation(:create_certificate_authority, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCertificateAuthority"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCertificateAuthorityRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCertificateAuthorityResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_certificate_authority_audit_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCertificateAuthorityAuditReport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCertificateAuthorityAuditReportRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCertificateAuthorityAuditReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: RequestInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: RequestFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:create_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePermission"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: PermissionAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: RequestFailedException)
      end)

      api.add_operation(:delete_certificate_authority, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCertificateAuthority"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCertificateAuthorityRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:delete_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePermission"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: RequestFailedException)
      end)

      api.add_operation(:delete_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: LockoutPreventedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_certificate_authority, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCertificateAuthority"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCertificateAuthorityRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCertificateAuthorityResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
      end)

      api.add_operation(:describe_certificate_authority_audit_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCertificateAuthorityAuditReport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCertificateAuthorityAuditReportRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCertificateAuthorityAuditReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgsException)
      end)

      api.add_operation(:get_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: RequestInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: RequestFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:get_certificate_authority_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCertificateAuthorityCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCertificateAuthorityCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCertificateAuthorityCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
      end)

      api.add_operation(:get_certificate_authority_csr, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCertificateAuthorityCsr"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCertificateAuthorityCsrRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCertificateAuthorityCsrResponse)
        o.errors << Shapes::ShapeRef.new(shape: RequestInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: RequestFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
      end)

      api.add_operation(:get_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: RequestFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:import_certificate_authority_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportCertificateAuthorityCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportCertificateAuthorityCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: RequestInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: RequestFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedCertificateException)
        o.errors << Shapes::ShapeRef.new(shape: CertificateMismatchException)
      end)

      api.add_operation(:issue_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "IssueCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: IssueCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: IssueCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgsException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedCSRException)
      end)

      api.add_operation(:list_certificate_authorities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCertificateAuthorities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCertificateAuthoritiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCertificateAuthoritiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPermissions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: RequestFailedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: LockoutPreventedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:restore_certificate_authority, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreCertificateAuthority"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreCertificateAuthorityRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
      end)

      api.add_operation(:revoke_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RevokeCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RequestAlreadyProcessedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: RequestFailedException)
      end)

      api.add_operation(:tag_certificate_authority, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagCertificateAuthority"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagCertificateAuthorityRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:untag_certificate_authority, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagCertificateAuthority"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagCertificateAuthorityRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagException)
      end)

      api.add_operation(:update_certificate_authority, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCertificateAuthority"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCertificateAuthorityRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPolicyException)
      end)
    end

  end
end

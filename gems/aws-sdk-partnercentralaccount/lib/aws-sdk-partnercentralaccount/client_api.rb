# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PartnerCentralAccount
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptConnectionInvitationRequest = Shapes::StructureShape.new(name: 'AcceptConnectionInvitationRequest')
    AcceptConnectionInvitationResponse = Shapes::StructureShape.new(name: 'AcceptConnectionInvitationResponse')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessDeniedExceptionReason = Shapes::StringShape.new(name: 'AccessDeniedExceptionReason')
    AccessType = Shapes::StringShape.new(name: 'AccessType')
    AccountSummary = Shapes::StructureShape.new(name: 'AccountSummary')
    AllianceLeadContact = Shapes::StructureShape.new(name: 'AllianceLeadContact')
    AssociateAwsTrainingCertificationEmailDomainRequest = Shapes::StructureShape.new(name: 'AssociateAwsTrainingCertificationEmailDomainRequest')
    AssociateAwsTrainingCertificationEmailDomainResponse = Shapes::StructureShape.new(name: 'AssociateAwsTrainingCertificationEmailDomainResponse')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    BusinessValidationCode = Shapes::StringShape.new(name: 'BusinessValidationCode')
    BusinessValidationError = Shapes::StructureShape.new(name: 'BusinessValidationError')
    BusinessVerificationDetails = Shapes::StructureShape.new(name: 'BusinessVerificationDetails')
    BusinessVerificationResponse = Shapes::StructureShape.new(name: 'BusinessVerificationResponse')
    CancelConnectionInvitationRequest = Shapes::StructureShape.new(name: 'CancelConnectionInvitationRequest')
    CancelConnectionInvitationResponse = Shapes::StructureShape.new(name: 'CancelConnectionInvitationResponse')
    CancelConnectionInvitationResponseInvitationMessageString = Shapes::StringShape.new(name: 'CancelConnectionInvitationResponseInvitationMessageString')
    CancelConnectionRequest = Shapes::StructureShape.new(name: 'CancelConnectionRequest')
    CancelConnectionRequestReasonString = Shapes::StringShape.new(name: 'CancelConnectionRequestReasonString')
    CancelConnectionResponse = Shapes::StructureShape.new(name: 'CancelConnectionResponse')
    CancelProfileUpdateTaskRequest = Shapes::StructureShape.new(name: 'CancelProfileUpdateTaskRequest')
    CancelProfileUpdateTaskResponse = Shapes::StructureShape.new(name: 'CancelProfileUpdateTaskResponse')
    Catalog = Shapes::StringShape.new(name: 'Catalog')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CompletionUrl = Shapes::StringShape.new(name: 'CompletionUrl')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictExceptionReason = Shapes::StringShape.new(name: 'ConflictExceptionReason')
    Connection = Shapes::StructureShape.new(name: 'Connection')
    ConnectionArn = Shapes::StringShape.new(name: 'ConnectionArn')
    ConnectionId = Shapes::StringShape.new(name: 'ConnectionId')
    ConnectionInvitationArn = Shapes::StringShape.new(name: 'ConnectionInvitationArn')
    ConnectionInvitationId = Shapes::StringShape.new(name: 'ConnectionInvitationId')
    ConnectionInvitationSummary = Shapes::StructureShape.new(name: 'ConnectionInvitationSummary')
    ConnectionInvitationSummaryList = Shapes::ListShape.new(name: 'ConnectionInvitationSummaryList')
    ConnectionPreferencesArn = Shapes::StringShape.new(name: 'ConnectionPreferencesArn')
    ConnectionSummary = Shapes::StructureShape.new(name: 'ConnectionSummary')
    ConnectionSummaryList = Shapes::ListShape.new(name: 'ConnectionSummaryList')
    ConnectionType = Shapes::StringShape.new(name: 'ConnectionType')
    ConnectionTypeDetail = Shapes::StructureShape.new(name: 'ConnectionTypeDetail')
    ConnectionTypeDetailMap = Shapes::MapShape.new(name: 'ConnectionTypeDetailMap')
    ConnectionTypeFilter = Shapes::StringShape.new(name: 'ConnectionTypeFilter')
    ConnectionTypeStatus = Shapes::StringShape.new(name: 'ConnectionTypeStatus')
    ConnectionTypeSummary = Shapes::StructureShape.new(name: 'ConnectionTypeSummary')
    ConnectionTypeSummaryMap = Shapes::MapShape.new(name: 'ConnectionTypeSummaryMap')
    CountryCode = Shapes::StringShape.new(name: 'CountryCode')
    CreateConnectionInvitationRequest = Shapes::StructureShape.new(name: 'CreateConnectionInvitationRequest')
    CreateConnectionInvitationRequestMessageString = Shapes::StringShape.new(name: 'CreateConnectionInvitationRequestMessageString')
    CreateConnectionInvitationResponse = Shapes::StructureShape.new(name: 'CreateConnectionInvitationResponse')
    CreateConnectionInvitationResponseInvitationMessageString = Shapes::StringShape.new(name: 'CreateConnectionInvitationResponseInvitationMessageString')
    CreatePartnerRequest = Shapes::StructureShape.new(name: 'CreatePartnerRequest')
    CreatePartnerResponse = Shapes::StructureShape.new(name: 'CreatePartnerResponse')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime', timestampFormat: "iso8601")
    DisassociateAwsTrainingCertificationEmailDomainRequest = Shapes::StructureShape.new(name: 'DisassociateAwsTrainingCertificationEmailDomainRequest')
    DisassociateAwsTrainingCertificationEmailDomainResponse = Shapes::StructureShape.new(name: 'DisassociateAwsTrainingCertificationEmailDomainResponse')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    Email = Shapes::StringShape.new(name: 'Email')
    EmailVerificationCode = Shapes::StringShape.new(name: 'EmailVerificationCode')
    ErrorDetail = Shapes::StructureShape.new(name: 'ErrorDetail')
    ErrorDetailList = Shapes::ListShape.new(name: 'ErrorDetailList')
    FieldValidationCode = Shapes::StringShape.new(name: 'FieldValidationCode')
    FieldValidationError = Shapes::StructureShape.new(name: 'FieldValidationError')
    GetAllianceLeadContactRequest = Shapes::StructureShape.new(name: 'GetAllianceLeadContactRequest')
    GetAllianceLeadContactResponse = Shapes::StructureShape.new(name: 'GetAllianceLeadContactResponse')
    GetConnectionInvitationRequest = Shapes::StructureShape.new(name: 'GetConnectionInvitationRequest')
    GetConnectionInvitationResponse = Shapes::StructureShape.new(name: 'GetConnectionInvitationResponse')
    GetConnectionInvitationResponseInvitationMessageString = Shapes::StringShape.new(name: 'GetConnectionInvitationResponseInvitationMessageString')
    GetConnectionPreferencesRequest = Shapes::StructureShape.new(name: 'GetConnectionPreferencesRequest')
    GetConnectionPreferencesResponse = Shapes::StructureShape.new(name: 'GetConnectionPreferencesResponse')
    GetConnectionRequest = Shapes::StructureShape.new(name: 'GetConnectionRequest')
    GetConnectionResponse = Shapes::StructureShape.new(name: 'GetConnectionResponse')
    GetPartnerRequest = Shapes::StructureShape.new(name: 'GetPartnerRequest')
    GetPartnerResponse = Shapes::StructureShape.new(name: 'GetPartnerResponse')
    GetProfileUpdateTaskRequest = Shapes::StructureShape.new(name: 'GetProfileUpdateTaskRequest')
    GetProfileUpdateTaskResponse = Shapes::StructureShape.new(name: 'GetProfileUpdateTaskResponse')
    GetProfileVisibilityRequest = Shapes::StructureShape.new(name: 'GetProfileVisibilityRequest')
    GetProfileVisibilityResponse = Shapes::StructureShape.new(name: 'GetProfileVisibilityResponse')
    GetVerificationRequest = Shapes::StructureShape.new(name: 'GetVerificationRequest')
    GetVerificationResponse = Shapes::StructureShape.new(name: 'GetVerificationResponse')
    IndustrySegment = Shapes::StringShape.new(name: 'IndustrySegment')
    IndustrySegmentList = Shapes::ListShape.new(name: 'IndustrySegmentList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvitationStatus = Shapes::StringShape.new(name: 'InvitationStatus')
    JurisdictionCode = Shapes::StringShape.new(name: 'JurisdictionCode')
    LegalName = Shapes::StringShape.new(name: 'LegalName')
    ListConnectionInvitationsRequest = Shapes::StructureShape.new(name: 'ListConnectionInvitationsRequest')
    ListConnectionInvitationsResponse = Shapes::StructureShape.new(name: 'ListConnectionInvitationsResponse')
    ListConnectionsRequest = Shapes::StructureShape.new(name: 'ListConnectionsRequest')
    ListConnectionsResponse = Shapes::StructureShape.new(name: 'ListConnectionsResponse')
    ListPartnersRequest = Shapes::StructureShape.new(name: 'ListPartnersRequest')
    ListPartnersResponse = Shapes::StructureShape.new(name: 'ListPartnersResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Locale = Shapes::StringShape.new(name: 'Locale')
    LocalizedContent = Shapes::StructureShape.new(name: 'LocalizedContent')
    LocalizedContentDescriptionString = Shapes::StringShape.new(name: 'LocalizedContentDescriptionString')
    LocalizedContentList = Shapes::ListShape.new(name: 'LocalizedContentList')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Participant = Shapes::UnionShape.new(name: 'Participant')
    ParticipantIdentifier = Shapes::StringShape.new(name: 'ParticipantIdentifier')
    ParticipantIdentifierList = Shapes::ListShape.new(name: 'ParticipantIdentifierList')
    ParticipantType = Shapes::StringShape.new(name: 'ParticipantType')
    PartnerArn = Shapes::StringShape.new(name: 'PartnerArn')
    PartnerDomain = Shapes::StructureShape.new(name: 'PartnerDomain')
    PartnerDomainList = Shapes::ListShape.new(name: 'PartnerDomainList')
    PartnerId = Shapes::StringShape.new(name: 'PartnerId')
    PartnerIdentifier = Shapes::StringShape.new(name: 'PartnerIdentifier')
    PartnerProfile = Shapes::StructureShape.new(name: 'PartnerProfile')
    PartnerProfileDescriptionString = Shapes::StringShape.new(name: 'PartnerProfileDescriptionString')
    PartnerProfileId = Shapes::StringShape.new(name: 'PartnerProfileId')
    PartnerProfileSummary = Shapes::StructureShape.new(name: 'PartnerProfileSummary')
    PartnerSummary = Shapes::StructureShape.new(name: 'PartnerSummary')
    PartnerSummaryList = Shapes::ListShape.new(name: 'PartnerSummaryList')
    PrimarySolutionType = Shapes::StringShape.new(name: 'PrimarySolutionType')
    ProfileTaskId = Shapes::StringShape.new(name: 'ProfileTaskId')
    ProfileTaskStatus = Shapes::StringShape.new(name: 'ProfileTaskStatus')
    ProfileValidationErrorReason = Shapes::StringShape.new(name: 'ProfileValidationErrorReason')
    ProfileVisibility = Shapes::StringShape.new(name: 'ProfileVisibility')
    PutAllianceLeadContactRequest = Shapes::StructureShape.new(name: 'PutAllianceLeadContactRequest')
    PutAllianceLeadContactResponse = Shapes::StructureShape.new(name: 'PutAllianceLeadContactResponse')
    PutProfileVisibilityRequest = Shapes::StructureShape.new(name: 'PutProfileVisibilityRequest')
    PutProfileVisibilityResponse = Shapes::StructureShape.new(name: 'PutProfileVisibilityResponse')
    RegistrantVerificationDetails = Shapes::StructureShape.new(name: 'RegistrantVerificationDetails')
    RegistrantVerificationResponse = Shapes::StructureShape.new(name: 'RegistrantVerificationResponse')
    RegistrationId = Shapes::StringShape.new(name: 'RegistrationId')
    RejectConnectionInvitationRequest = Shapes::StructureShape.new(name: 'RejectConnectionInvitationRequest')
    RejectConnectionInvitationRequestReasonString = Shapes::StringShape.new(name: 'RejectConnectionInvitationRequestReasonString')
    RejectConnectionInvitationResponse = Shapes::StructureShape.new(name: 'RejectConnectionInvitationResponse')
    RejectConnectionInvitationResponseInvitationMessageString = Shapes::StringShape.new(name: 'RejectConnectionInvitationResponseInvitationMessageString')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceNotFoundExceptionReason = Shapes::StringShape.new(name: 'ResourceNotFoundExceptionReason')
    Revision = Shapes::IntegerShape.new(name: 'Revision')
    SellerProfileId = Shapes::StringShape.new(name: 'SellerProfileId')
    SellerProfileSummary = Shapes::StructureShape.new(name: 'SellerProfileSummary')
    SendEmailVerificationCodeRequest = Shapes::StructureShape.new(name: 'SendEmailVerificationCodeRequest')
    SendEmailVerificationCodeResponse = Shapes::StructureShape.new(name: 'SendEmailVerificationCodeResponse')
    SensitiveUnicodeString = Shapes::StringShape.new(name: 'SensitiveUnicodeString')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceQuotaExceededExceptionReason = Shapes::StringShape.new(name: 'ServiceQuotaExceededExceptionReason')
    StartProfileUpdateTaskRequest = Shapes::StructureShape.new(name: 'StartProfileUpdateTaskRequest')
    StartProfileUpdateTaskResponse = Shapes::StructureShape.new(name: 'StartProfileUpdateTaskResponse')
    StartVerificationRequest = Shapes::StructureShape.new(name: 'StartVerificationRequest')
    StartVerificationResponse = Shapes::StructureShape.new(name: 'StartVerificationResponse')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResourceArn = Shapes::StringShape.new(name: 'TaggableResourceArn')
    TaskDetails = Shapes::StructureShape.new(name: 'TaskDetails')
    TaskDetailsDescriptionString = Shapes::StringShape.new(name: 'TaskDetailsDescriptionString')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UnicodeString = Shapes::StringShape.new(name: 'UnicodeString')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateConnectionPreferencesRequest = Shapes::StructureShape.new(name: 'UpdateConnectionPreferencesRequest')
    UpdateConnectionPreferencesRequestExcludedParticipantIdentifiersList = Shapes::ListShape.new(name: 'UpdateConnectionPreferencesRequestExcludedParticipantIdentifiersList')
    UpdateConnectionPreferencesResponse = Shapes::StructureShape.new(name: 'UpdateConnectionPreferencesResponse')
    Url = Shapes::StringShape.new(name: 'Url')
    ValidationError = Shapes::UnionShape.new(name: 'ValidationError')
    ValidationErrorList = Shapes::ListShape.new(name: 'ValidationErrorList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VerificationDetails = Shapes::UnionShape.new(name: 'VerificationDetails')
    VerificationResponseDetails = Shapes::UnionShape.new(name: 'VerificationResponseDetails')
    VerificationStatus = Shapes::StringShape.new(name: 'VerificationStatus')
    VerificationStatusReason = Shapes::StringShape.new(name: 'VerificationStatusReason')
    VerificationType = Shapes::StringShape.new(name: 'VerificationType')

    AcceptConnectionInvitationRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    AcceptConnectionInvitationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ConnectionInvitationId, required: true, location_name: "Identifier"))
    AcceptConnectionInvitationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    AcceptConnectionInvitationRequest.struct_class = Types::AcceptConnectionInvitationRequest

    AcceptConnectionInvitationResponse.add_member(:connection, Shapes::ShapeRef.new(shape: Connection, required: true, location_name: "Connection"))
    AcceptConnectionInvitationResponse.struct_class = Types::AcceptConnectionInvitationResponse

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    AccessDeniedException.add_member(:reason, Shapes::ShapeRef.new(shape: AccessDeniedExceptionReason, required: true, location_name: "Reason"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountSummary.add_member(:name, Shapes::ShapeRef.new(shape: UnicodeString, required: true, location_name: "Name"))
    AccountSummary.struct_class = Types::AccountSummary

    AllianceLeadContact.add_member(:first_name, Shapes::ShapeRef.new(shape: SensitiveUnicodeString, required: true, location_name: "FirstName"))
    AllianceLeadContact.add_member(:last_name, Shapes::ShapeRef.new(shape: SensitiveUnicodeString, required: true, location_name: "LastName"))
    AllianceLeadContact.add_member(:email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "Email"))
    AllianceLeadContact.add_member(:business_title, Shapes::ShapeRef.new(shape: SensitiveUnicodeString, required: true, location_name: "BusinessTitle"))
    AllianceLeadContact.struct_class = Types::AllianceLeadContact

    AssociateAwsTrainingCertificationEmailDomainRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    AssociateAwsTrainingCertificationEmailDomainRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: PartnerIdentifier, required: true, location_name: "Identifier"))
    AssociateAwsTrainingCertificationEmailDomainRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    AssociateAwsTrainingCertificationEmailDomainRequest.add_member(:email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "Email"))
    AssociateAwsTrainingCertificationEmailDomainRequest.add_member(:email_verification_code, Shapes::ShapeRef.new(shape: EmailVerificationCode, required: true, location_name: "EmailVerificationCode"))
    AssociateAwsTrainingCertificationEmailDomainRequest.struct_class = Types::AssociateAwsTrainingCertificationEmailDomainRequest

    AssociateAwsTrainingCertificationEmailDomainResponse.struct_class = Types::AssociateAwsTrainingCertificationEmailDomainResponse

    BusinessValidationError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    BusinessValidationError.add_member(:code, Shapes::ShapeRef.new(shape: BusinessValidationCode, required: true, location_name: "Code"))
    BusinessValidationError.struct_class = Types::BusinessValidationError

    BusinessVerificationDetails.add_member(:legal_name, Shapes::ShapeRef.new(shape: LegalName, required: true, location_name: "LegalName"))
    BusinessVerificationDetails.add_member(:registration_id, Shapes::ShapeRef.new(shape: RegistrationId, required: true, location_name: "RegistrationId"))
    BusinessVerificationDetails.add_member(:country_code, Shapes::ShapeRef.new(shape: CountryCode, required: true, location_name: "CountryCode"))
    BusinessVerificationDetails.add_member(:jurisdiction_of_incorporation, Shapes::ShapeRef.new(shape: JurisdictionCode, location_name: "JurisdictionOfIncorporation"))
    BusinessVerificationDetails.struct_class = Types::BusinessVerificationDetails

    BusinessVerificationResponse.add_member(:business_verification_details, Shapes::ShapeRef.new(shape: BusinessVerificationDetails, required: true, location_name: "BusinessVerificationDetails"))
    BusinessVerificationResponse.struct_class = Types::BusinessVerificationResponse

    CancelConnectionInvitationRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    CancelConnectionInvitationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ConnectionInvitationId, required: true, location_name: "Identifier"))
    CancelConnectionInvitationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CancelConnectionInvitationRequest.struct_class = Types::CancelConnectionInvitationRequest

    CancelConnectionInvitationResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    CancelConnectionInvitationResponse.add_member(:id, Shapes::ShapeRef.new(shape: ConnectionInvitationId, required: true, location_name: "Id"))
    CancelConnectionInvitationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ConnectionInvitationArn, required: true, location_name: "Arn"))
    CancelConnectionInvitationResponse.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, location_name: "ConnectionId"))
    CancelConnectionInvitationResponse.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, required: true, location_name: "ConnectionType"))
    CancelConnectionInvitationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedAt"))
    CancelConnectionInvitationResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "UpdatedAt"))
    CancelConnectionInvitationResponse.add_member(:expires_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExpiresAt"))
    CancelConnectionInvitationResponse.add_member(:other_participant_identifier, Shapes::ShapeRef.new(shape: ParticipantIdentifier, required: true, location_name: "OtherParticipantIdentifier"))
    CancelConnectionInvitationResponse.add_member(:participant_type, Shapes::ShapeRef.new(shape: ParticipantType, required: true, location_name: "ParticipantType"))
    CancelConnectionInvitationResponse.add_member(:status, Shapes::ShapeRef.new(shape: InvitationStatus, required: true, location_name: "Status"))
    CancelConnectionInvitationResponse.add_member(:invitation_message, Shapes::ShapeRef.new(shape: CancelConnectionInvitationResponseInvitationMessageString, required: true, location_name: "InvitationMessage"))
    CancelConnectionInvitationResponse.add_member(:inviter_email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "InviterEmail"))
    CancelConnectionInvitationResponse.add_member(:inviter_name, Shapes::ShapeRef.new(shape: SensitiveUnicodeString, required: true, location_name: "InviterName"))
    CancelConnectionInvitationResponse.struct_class = Types::CancelConnectionInvitationResponse

    CancelConnectionRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    CancelConnectionRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "Identifier"))
    CancelConnectionRequest.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, required: true, location_name: "ConnectionType"))
    CancelConnectionRequest.add_member(:reason, Shapes::ShapeRef.new(shape: CancelConnectionRequestReasonString, required: true, location_name: "Reason"))
    CancelConnectionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CancelConnectionRequest.struct_class = Types::CancelConnectionRequest

    CancelConnectionResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    CancelConnectionResponse.add_member(:id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "Id"))
    CancelConnectionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ConnectionArn, required: true, location_name: "Arn"))
    CancelConnectionResponse.add_member(:other_participant_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "OtherParticipantAccountId"))
    CancelConnectionResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "UpdatedAt"))
    CancelConnectionResponse.add_member(:connection_types, Shapes::ShapeRef.new(shape: ConnectionTypeDetailMap, required: true, location_name: "ConnectionTypes"))
    CancelConnectionResponse.struct_class = Types::CancelConnectionResponse

    CancelProfileUpdateTaskRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    CancelProfileUpdateTaskRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: PartnerIdentifier, required: true, location_name: "Identifier"))
    CancelProfileUpdateTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CancelProfileUpdateTaskRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: ProfileTaskId, required: true, location_name: "TaskId"))
    CancelProfileUpdateTaskRequest.struct_class = Types::CancelProfileUpdateTaskRequest

    CancelProfileUpdateTaskResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    CancelProfileUpdateTaskResponse.add_member(:arn, Shapes::ShapeRef.new(shape: PartnerArn, required: true, location_name: "Arn"))
    CancelProfileUpdateTaskResponse.add_member(:id, Shapes::ShapeRef.new(shape: PartnerId, required: true, location_name: "Id"))
    CancelProfileUpdateTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: ProfileTaskId, required: true, location_name: "TaskId"))
    CancelProfileUpdateTaskResponse.add_member(:task_details, Shapes::ShapeRef.new(shape: TaskDetails, required: true, location_name: "TaskDetails"))
    CancelProfileUpdateTaskResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "StartedAt"))
    CancelProfileUpdateTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: ProfileTaskStatus, required: true, location_name: "Status"))
    CancelProfileUpdateTaskResponse.add_member(:ended_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndedAt"))
    CancelProfileUpdateTaskResponse.add_member(:error_detail_list, Shapes::ShapeRef.new(shape: ErrorDetailList, location_name: "ErrorDetailList"))
    CancelProfileUpdateTaskResponse.struct_class = Types::CancelProfileUpdateTaskResponse

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ConflictException.add_member(:reason, Shapes::ShapeRef.new(shape: ConflictExceptionReason, required: true, location_name: "Reason"))
    ConflictException.struct_class = Types::ConflictException

    Connection.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    Connection.add_member(:id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "Id"))
    Connection.add_member(:arn, Shapes::ShapeRef.new(shape: ConnectionArn, required: true, location_name: "Arn"))
    Connection.add_member(:other_participant_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "OtherParticipantAccountId"))
    Connection.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "UpdatedAt"))
    Connection.add_member(:connection_types, Shapes::ShapeRef.new(shape: ConnectionTypeDetailMap, required: true, location_name: "ConnectionTypes"))
    Connection.struct_class = Types::Connection

    ConnectionInvitationSummary.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    ConnectionInvitationSummary.add_member(:id, Shapes::ShapeRef.new(shape: ConnectionInvitationId, required: true, location_name: "Id"))
    ConnectionInvitationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ConnectionInvitationArn, required: true, location_name: "Arn"))
    ConnectionInvitationSummary.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, location_name: "ConnectionId"))
    ConnectionInvitationSummary.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, required: true, location_name: "ConnectionType"))
    ConnectionInvitationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedAt"))
    ConnectionInvitationSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "UpdatedAt"))
    ConnectionInvitationSummary.add_member(:expires_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExpiresAt"))
    ConnectionInvitationSummary.add_member(:other_participant_identifier, Shapes::ShapeRef.new(shape: ParticipantIdentifier, required: true, location_name: "OtherParticipantIdentifier"))
    ConnectionInvitationSummary.add_member(:participant_type, Shapes::ShapeRef.new(shape: ParticipantType, required: true, location_name: "ParticipantType"))
    ConnectionInvitationSummary.add_member(:status, Shapes::ShapeRef.new(shape: InvitationStatus, required: true, location_name: "Status"))
    ConnectionInvitationSummary.struct_class = Types::ConnectionInvitationSummary

    ConnectionInvitationSummaryList.member = Shapes::ShapeRef.new(shape: ConnectionInvitationSummary)

    ConnectionSummary.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    ConnectionSummary.add_member(:id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "Id"))
    ConnectionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ConnectionArn, required: true, location_name: "Arn"))
    ConnectionSummary.add_member(:other_participant_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "OtherParticipantAccountId"))
    ConnectionSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "UpdatedAt"))
    ConnectionSummary.add_member(:connection_types, Shapes::ShapeRef.new(shape: ConnectionTypeSummaryMap, required: true, location_name: "ConnectionTypes"))
    ConnectionSummary.struct_class = Types::ConnectionSummary

    ConnectionSummaryList.member = Shapes::ShapeRef.new(shape: ConnectionSummary)

    ConnectionTypeDetail.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedAt"))
    ConnectionTypeDetail.add_member(:inviter_email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "InviterEmail"))
    ConnectionTypeDetail.add_member(:inviter_name, Shapes::ShapeRef.new(shape: SensitiveUnicodeString, required: true, location_name: "InviterName"))
    ConnectionTypeDetail.add_member(:status, Shapes::ShapeRef.new(shape: ConnectionTypeStatus, required: true, location_name: "Status"))
    ConnectionTypeDetail.add_member(:canceled_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CanceledAt"))
    ConnectionTypeDetail.add_member(:canceled_by, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "CanceledBy"))
    ConnectionTypeDetail.add_member(:other_participant, Shapes::ShapeRef.new(shape: Participant, required: true, location_name: "OtherParticipant"))
    ConnectionTypeDetail.struct_class = Types::ConnectionTypeDetail

    ConnectionTypeDetailMap.key = Shapes::ShapeRef.new(shape: ConnectionType)
    ConnectionTypeDetailMap.value = Shapes::ShapeRef.new(shape: ConnectionTypeDetail)

    ConnectionTypeSummary.add_member(:status, Shapes::ShapeRef.new(shape: ConnectionTypeStatus, required: true, location_name: "Status"))
    ConnectionTypeSummary.add_member(:other_participant, Shapes::ShapeRef.new(shape: Participant, required: true, location_name: "OtherParticipant"))
    ConnectionTypeSummary.struct_class = Types::ConnectionTypeSummary

    ConnectionTypeSummaryMap.key = Shapes::ShapeRef.new(shape: ConnectionType)
    ConnectionTypeSummaryMap.value = Shapes::ShapeRef.new(shape: ConnectionTypeSummary)

    CreateConnectionInvitationRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    CreateConnectionInvitationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateConnectionInvitationRequest.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, required: true, location_name: "ConnectionType"))
    CreateConnectionInvitationRequest.add_member(:email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "Email"))
    CreateConnectionInvitationRequest.add_member(:message, Shapes::ShapeRef.new(shape: CreateConnectionInvitationRequestMessageString, required: true, location_name: "Message"))
    CreateConnectionInvitationRequest.add_member(:name, Shapes::ShapeRef.new(shape: SensitiveUnicodeString, required: true, location_name: "Name"))
    CreateConnectionInvitationRequest.add_member(:receiver_identifier, Shapes::ShapeRef.new(shape: ParticipantIdentifier, required: true, location_name: "ReceiverIdentifier"))
    CreateConnectionInvitationRequest.struct_class = Types::CreateConnectionInvitationRequest

    CreateConnectionInvitationResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    CreateConnectionInvitationResponse.add_member(:id, Shapes::ShapeRef.new(shape: ConnectionInvitationId, required: true, location_name: "Id"))
    CreateConnectionInvitationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ConnectionInvitationArn, required: true, location_name: "Arn"))
    CreateConnectionInvitationResponse.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, location_name: "ConnectionId"))
    CreateConnectionInvitationResponse.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, required: true, location_name: "ConnectionType"))
    CreateConnectionInvitationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedAt"))
    CreateConnectionInvitationResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "UpdatedAt"))
    CreateConnectionInvitationResponse.add_member(:expires_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExpiresAt"))
    CreateConnectionInvitationResponse.add_member(:other_participant_identifier, Shapes::ShapeRef.new(shape: ParticipantIdentifier, required: true, location_name: "OtherParticipantIdentifier"))
    CreateConnectionInvitationResponse.add_member(:participant_type, Shapes::ShapeRef.new(shape: ParticipantType, required: true, location_name: "ParticipantType"))
    CreateConnectionInvitationResponse.add_member(:status, Shapes::ShapeRef.new(shape: InvitationStatus, required: true, location_name: "Status"))
    CreateConnectionInvitationResponse.add_member(:invitation_message, Shapes::ShapeRef.new(shape: CreateConnectionInvitationResponseInvitationMessageString, required: true, location_name: "InvitationMessage"))
    CreateConnectionInvitationResponse.add_member(:inviter_email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "InviterEmail"))
    CreateConnectionInvitationResponse.add_member(:inviter_name, Shapes::ShapeRef.new(shape: SensitiveUnicodeString, required: true, location_name: "InviterName"))
    CreateConnectionInvitationResponse.struct_class = Types::CreateConnectionInvitationResponse

    CreatePartnerRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    CreatePartnerRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreatePartnerRequest.add_member(:legal_name, Shapes::ShapeRef.new(shape: SensitiveUnicodeString, required: true, location_name: "LegalName"))
    CreatePartnerRequest.add_member(:primary_solution_type, Shapes::ShapeRef.new(shape: PrimarySolutionType, required: true, location_name: "PrimarySolutionType"))
    CreatePartnerRequest.add_member(:alliance_lead_contact, Shapes::ShapeRef.new(shape: AllianceLeadContact, required: true, location_name: "AllianceLeadContact"))
    CreatePartnerRequest.add_member(:email_verification_code, Shapes::ShapeRef.new(shape: EmailVerificationCode, required: true, location_name: "EmailVerificationCode"))
    CreatePartnerRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreatePartnerRequest.struct_class = Types::CreatePartnerRequest

    CreatePartnerResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    CreatePartnerResponse.add_member(:arn, Shapes::ShapeRef.new(shape: PartnerArn, required: true, location_name: "Arn"))
    CreatePartnerResponse.add_member(:id, Shapes::ShapeRef.new(shape: PartnerId, required: true, location_name: "Id"))
    CreatePartnerResponse.add_member(:legal_name, Shapes::ShapeRef.new(shape: SensitiveUnicodeString, required: true, location_name: "LegalName"))
    CreatePartnerResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedAt"))
    CreatePartnerResponse.add_member(:profile, Shapes::ShapeRef.new(shape: PartnerProfile, required: true, location_name: "Profile"))
    CreatePartnerResponse.add_member(:aws_training_certification_email_domains, Shapes::ShapeRef.new(shape: PartnerDomainList, location_name: "AwsTrainingCertificationEmailDomains"))
    CreatePartnerResponse.add_member(:alliance_lead_contact, Shapes::ShapeRef.new(shape: AllianceLeadContact, required: true, location_name: "AllianceLeadContact"))
    CreatePartnerResponse.struct_class = Types::CreatePartnerResponse

    DisassociateAwsTrainingCertificationEmailDomainRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    DisassociateAwsTrainingCertificationEmailDomainRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: PartnerIdentifier, required: true, location_name: "Identifier"))
    DisassociateAwsTrainingCertificationEmailDomainRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    DisassociateAwsTrainingCertificationEmailDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DisassociateAwsTrainingCertificationEmailDomainRequest.struct_class = Types::DisassociateAwsTrainingCertificationEmailDomainRequest

    DisassociateAwsTrainingCertificationEmailDomainResponse.struct_class = Types::DisassociateAwsTrainingCertificationEmailDomainResponse

    ErrorDetail.add_member(:locale, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Locale"))
    ErrorDetail.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ErrorDetail.add_member(:reason, Shapes::ShapeRef.new(shape: ProfileValidationErrorReason, required: true, location_name: "Reason"))
    ErrorDetail.struct_class = Types::ErrorDetail

    ErrorDetailList.member = Shapes::ShapeRef.new(shape: ErrorDetail)

    FieldValidationError.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    FieldValidationError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    FieldValidationError.add_member(:code, Shapes::ShapeRef.new(shape: FieldValidationCode, required: true, location_name: "Code"))
    FieldValidationError.struct_class = Types::FieldValidationError

    GetAllianceLeadContactRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    GetAllianceLeadContactRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: PartnerIdentifier, required: true, location_name: "Identifier"))
    GetAllianceLeadContactRequest.struct_class = Types::GetAllianceLeadContactRequest

    GetAllianceLeadContactResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    GetAllianceLeadContactResponse.add_member(:arn, Shapes::ShapeRef.new(shape: PartnerArn, required: true, location_name: "Arn"))
    GetAllianceLeadContactResponse.add_member(:id, Shapes::ShapeRef.new(shape: PartnerId, required: true, location_name: "Id"))
    GetAllianceLeadContactResponse.add_member(:alliance_lead_contact, Shapes::ShapeRef.new(shape: AllianceLeadContact, required: true, location_name: "AllianceLeadContact"))
    GetAllianceLeadContactResponse.struct_class = Types::GetAllianceLeadContactResponse

    GetConnectionInvitationRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    GetConnectionInvitationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ConnectionInvitationId, required: true, location_name: "Identifier"))
    GetConnectionInvitationRequest.struct_class = Types::GetConnectionInvitationRequest

    GetConnectionInvitationResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    GetConnectionInvitationResponse.add_member(:id, Shapes::ShapeRef.new(shape: ConnectionInvitationId, required: true, location_name: "Id"))
    GetConnectionInvitationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ConnectionInvitationArn, required: true, location_name: "Arn"))
    GetConnectionInvitationResponse.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, location_name: "ConnectionId"))
    GetConnectionInvitationResponse.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, required: true, location_name: "ConnectionType"))
    GetConnectionInvitationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedAt"))
    GetConnectionInvitationResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "UpdatedAt"))
    GetConnectionInvitationResponse.add_member(:expires_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExpiresAt"))
    GetConnectionInvitationResponse.add_member(:other_participant_identifier, Shapes::ShapeRef.new(shape: ParticipantIdentifier, required: true, location_name: "OtherParticipantIdentifier"))
    GetConnectionInvitationResponse.add_member(:participant_type, Shapes::ShapeRef.new(shape: ParticipantType, required: true, location_name: "ParticipantType"))
    GetConnectionInvitationResponse.add_member(:status, Shapes::ShapeRef.new(shape: InvitationStatus, required: true, location_name: "Status"))
    GetConnectionInvitationResponse.add_member(:invitation_message, Shapes::ShapeRef.new(shape: GetConnectionInvitationResponseInvitationMessageString, required: true, location_name: "InvitationMessage"))
    GetConnectionInvitationResponse.add_member(:inviter_email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "InviterEmail"))
    GetConnectionInvitationResponse.add_member(:inviter_name, Shapes::ShapeRef.new(shape: SensitiveUnicodeString, required: true, location_name: "InviterName"))
    GetConnectionInvitationResponse.struct_class = Types::GetConnectionInvitationResponse

    GetConnectionPreferencesRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    GetConnectionPreferencesRequest.struct_class = Types::GetConnectionPreferencesRequest

    GetConnectionPreferencesResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    GetConnectionPreferencesResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ConnectionPreferencesArn, required: true, location_name: "Arn"))
    GetConnectionPreferencesResponse.add_member(:access_type, Shapes::ShapeRef.new(shape: AccessType, required: true, location_name: "AccessType"))
    GetConnectionPreferencesResponse.add_member(:excluded_participant_ids, Shapes::ShapeRef.new(shape: ParticipantIdentifierList, location_name: "ExcludedParticipantIds"))
    GetConnectionPreferencesResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "UpdatedAt"))
    GetConnectionPreferencesResponse.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "Revision"))
    GetConnectionPreferencesResponse.struct_class = Types::GetConnectionPreferencesResponse

    GetConnectionRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    GetConnectionRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "Identifier"))
    GetConnectionRequest.struct_class = Types::GetConnectionRequest

    GetConnectionResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    GetConnectionResponse.add_member(:id, Shapes::ShapeRef.new(shape: ConnectionId, required: true, location_name: "Id"))
    GetConnectionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ConnectionArn, required: true, location_name: "Arn"))
    GetConnectionResponse.add_member(:other_participant_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "OtherParticipantAccountId"))
    GetConnectionResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "UpdatedAt"))
    GetConnectionResponse.add_member(:connection_types, Shapes::ShapeRef.new(shape: ConnectionTypeDetailMap, required: true, location_name: "ConnectionTypes"))
    GetConnectionResponse.struct_class = Types::GetConnectionResponse

    GetPartnerRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    GetPartnerRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: PartnerIdentifier, required: true, location_name: "Identifier"))
    GetPartnerRequest.struct_class = Types::GetPartnerRequest

    GetPartnerResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    GetPartnerResponse.add_member(:arn, Shapes::ShapeRef.new(shape: PartnerArn, required: true, location_name: "Arn"))
    GetPartnerResponse.add_member(:id, Shapes::ShapeRef.new(shape: PartnerId, required: true, location_name: "Id"))
    GetPartnerResponse.add_member(:legal_name, Shapes::ShapeRef.new(shape: SensitiveUnicodeString, required: true, location_name: "LegalName"))
    GetPartnerResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedAt"))
    GetPartnerResponse.add_member(:profile, Shapes::ShapeRef.new(shape: PartnerProfile, required: true, location_name: "Profile"))
    GetPartnerResponse.add_member(:aws_training_certification_email_domains, Shapes::ShapeRef.new(shape: PartnerDomainList, location_name: "AwsTrainingCertificationEmailDomains"))
    GetPartnerResponse.struct_class = Types::GetPartnerResponse

    GetProfileUpdateTaskRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    GetProfileUpdateTaskRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: PartnerIdentifier, required: true, location_name: "Identifier"))
    GetProfileUpdateTaskRequest.struct_class = Types::GetProfileUpdateTaskRequest

    GetProfileUpdateTaskResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    GetProfileUpdateTaskResponse.add_member(:arn, Shapes::ShapeRef.new(shape: PartnerArn, required: true, location_name: "Arn"))
    GetProfileUpdateTaskResponse.add_member(:id, Shapes::ShapeRef.new(shape: PartnerId, required: true, location_name: "Id"))
    GetProfileUpdateTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: ProfileTaskId, required: true, location_name: "TaskId"))
    GetProfileUpdateTaskResponse.add_member(:task_details, Shapes::ShapeRef.new(shape: TaskDetails, required: true, location_name: "TaskDetails"))
    GetProfileUpdateTaskResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "StartedAt"))
    GetProfileUpdateTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: ProfileTaskStatus, required: true, location_name: "Status"))
    GetProfileUpdateTaskResponse.add_member(:ended_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndedAt"))
    GetProfileUpdateTaskResponse.add_member(:error_detail_list, Shapes::ShapeRef.new(shape: ErrorDetailList, location_name: "ErrorDetailList"))
    GetProfileUpdateTaskResponse.struct_class = Types::GetProfileUpdateTaskResponse

    GetProfileVisibilityRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    GetProfileVisibilityRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: PartnerIdentifier, required: true, location_name: "Identifier"))
    GetProfileVisibilityRequest.struct_class = Types::GetProfileVisibilityRequest

    GetProfileVisibilityResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    GetProfileVisibilityResponse.add_member(:arn, Shapes::ShapeRef.new(shape: PartnerArn, required: true, location_name: "Arn"))
    GetProfileVisibilityResponse.add_member(:id, Shapes::ShapeRef.new(shape: PartnerId, required: true, location_name: "Id"))
    GetProfileVisibilityResponse.add_member(:visibility, Shapes::ShapeRef.new(shape: ProfileVisibility, required: true, location_name: "Visibility"))
    GetProfileVisibilityResponse.add_member(:profile_id, Shapes::ShapeRef.new(shape: PartnerProfileId, required: true, location_name: "ProfileId"))
    GetProfileVisibilityResponse.struct_class = Types::GetProfileVisibilityResponse

    GetVerificationRequest.add_member(:verification_type, Shapes::ShapeRef.new(shape: VerificationType, required: true, location_name: "VerificationType"))
    GetVerificationRequest.struct_class = Types::GetVerificationRequest

    GetVerificationResponse.add_member(:verification_type, Shapes::ShapeRef.new(shape: VerificationType, required: true, location_name: "VerificationType"))
    GetVerificationResponse.add_member(:verification_status, Shapes::ShapeRef.new(shape: VerificationStatus, required: true, location_name: "VerificationStatus"))
    GetVerificationResponse.add_member(:verification_status_reason, Shapes::ShapeRef.new(shape: VerificationStatusReason, location_name: "VerificationStatusReason"))
    GetVerificationResponse.add_member(:verification_response_details, Shapes::ShapeRef.new(shape: VerificationResponseDetails, required: true, location_name: "VerificationResponseDetails"))
    GetVerificationResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "StartedAt"))
    GetVerificationResponse.add_member(:completed_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CompletedAt"))
    GetVerificationResponse.struct_class = Types::GetVerificationResponse

    IndustrySegmentList.member = Shapes::ShapeRef.new(shape: IndustrySegment)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListConnectionInvitationsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    ListConnectionInvitationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConnectionInvitationsRequest.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, location_name: "ConnectionType"))
    ListConnectionInvitationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListConnectionInvitationsRequest.add_member(:other_participant_identifiers, Shapes::ShapeRef.new(shape: ParticipantIdentifierList, location_name: "OtherParticipantIdentifiers"))
    ListConnectionInvitationsRequest.add_member(:participant_type, Shapes::ShapeRef.new(shape: ParticipantType, location_name: "ParticipantType"))
    ListConnectionInvitationsRequest.add_member(:status, Shapes::ShapeRef.new(shape: InvitationStatus, location_name: "Status"))
    ListConnectionInvitationsRequest.struct_class = Types::ListConnectionInvitationsRequest

    ListConnectionInvitationsResponse.add_member(:connection_invitation_summaries, Shapes::ShapeRef.new(shape: ConnectionInvitationSummaryList, required: true, location_name: "ConnectionInvitationSummaries"))
    ListConnectionInvitationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConnectionInvitationsResponse.struct_class = Types::ListConnectionInvitationsResponse

    ListConnectionsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    ListConnectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConnectionsRequest.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionTypeFilter, location_name: "ConnectionType"))
    ListConnectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListConnectionsRequest.add_member(:other_participant_identifiers, Shapes::ShapeRef.new(shape: ParticipantIdentifierList, location_name: "OtherParticipantIdentifiers"))
    ListConnectionsRequest.struct_class = Types::ListConnectionsRequest

    ListConnectionsResponse.add_member(:connection_summaries, Shapes::ShapeRef.new(shape: ConnectionSummaryList, required: true, location_name: "ConnectionSummaries"))
    ListConnectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConnectionsResponse.struct_class = Types::ListConnectionsResponse

    ListPartnersRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    ListPartnersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPartnersRequest.struct_class = Types::ListPartnersRequest

    ListPartnersResponse.add_member(:partner_summary_list, Shapes::ShapeRef.new(shape: PartnerSummaryList, required: true, location_name: "PartnerSummaryList"))
    ListPartnersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPartnersResponse.struct_class = Types::ListPartnersResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LocalizedContent.add_member(:display_name, Shapes::ShapeRef.new(shape: UnicodeString, required: true, location_name: "DisplayName"))
    LocalizedContent.add_member(:description, Shapes::ShapeRef.new(shape: LocalizedContentDescriptionString, required: true, location_name: "Description"))
    LocalizedContent.add_member(:website_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "WebsiteUrl"))
    LocalizedContent.add_member(:logo_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "LogoUrl"))
    LocalizedContent.add_member(:locale, Shapes::ShapeRef.new(shape: Locale, required: true, location_name: "Locale"))
    LocalizedContent.struct_class = Types::LocalizedContent

    LocalizedContentList.member = Shapes::ShapeRef.new(shape: LocalizedContent)

    Participant.add_member(:partner_profile, Shapes::ShapeRef.new(shape: PartnerProfileSummary, location_name: "PartnerProfile"))
    Participant.add_member(:seller_profile, Shapes::ShapeRef.new(shape: SellerProfileSummary, location_name: "SellerProfile"))
    Participant.add_member(:account, Shapes::ShapeRef.new(shape: AccountSummary, location_name: "Account"))
    Participant.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Participant.add_member_subclass(:partner_profile, Types::Participant::PartnerProfile)
    Participant.add_member_subclass(:seller_profile, Types::Participant::SellerProfile)
    Participant.add_member_subclass(:account, Types::Participant::Account)
    Participant.add_member_subclass(:unknown, Types::Participant::Unknown)
    Participant.struct_class = Types::Participant

    ParticipantIdentifierList.member = Shapes::ShapeRef.new(shape: ParticipantIdentifier)

    PartnerDomain.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    PartnerDomain.add_member(:registered_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "RegisteredAt"))
    PartnerDomain.struct_class = Types::PartnerDomain

    PartnerDomainList.member = Shapes::ShapeRef.new(shape: PartnerDomain)

    PartnerProfile.add_member(:display_name, Shapes::ShapeRef.new(shape: UnicodeString, required: true, location_name: "DisplayName"))
    PartnerProfile.add_member(:description, Shapes::ShapeRef.new(shape: PartnerProfileDescriptionString, required: true, location_name: "Description"))
    PartnerProfile.add_member(:website_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "WebsiteUrl"))
    PartnerProfile.add_member(:logo_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "LogoUrl"))
    PartnerProfile.add_member(:primary_solution_type, Shapes::ShapeRef.new(shape: PrimarySolutionType, required: true, location_name: "PrimarySolutionType"))
    PartnerProfile.add_member(:industry_segments, Shapes::ShapeRef.new(shape: IndustrySegmentList, required: true, location_name: "IndustrySegments"))
    PartnerProfile.add_member(:translation_source_locale, Shapes::ShapeRef.new(shape: Locale, required: true, location_name: "TranslationSourceLocale"))
    PartnerProfile.add_member(:localized_contents, Shapes::ShapeRef.new(shape: LocalizedContentList, location_name: "LocalizedContents"))
    PartnerProfile.add_member(:profile_id, Shapes::ShapeRef.new(shape: PartnerProfileId, location_name: "ProfileId"))
    PartnerProfile.struct_class = Types::PartnerProfile

    PartnerProfileSummary.add_member(:id, Shapes::ShapeRef.new(shape: PartnerProfileId, required: true, location_name: "Id"))
    PartnerProfileSummary.add_member(:name, Shapes::ShapeRef.new(shape: UnicodeString, required: true, location_name: "Name"))
    PartnerProfileSummary.struct_class = Types::PartnerProfileSummary

    PartnerSummary.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    PartnerSummary.add_member(:arn, Shapes::ShapeRef.new(shape: PartnerArn, required: true, location_name: "Arn"))
    PartnerSummary.add_member(:id, Shapes::ShapeRef.new(shape: PartnerId, required: true, location_name: "Id"))
    PartnerSummary.add_member(:legal_name, Shapes::ShapeRef.new(shape: SensitiveUnicodeString, required: true, location_name: "LegalName"))
    PartnerSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedAt"))
    PartnerSummary.struct_class = Types::PartnerSummary

    PartnerSummaryList.member = Shapes::ShapeRef.new(shape: PartnerSummary)

    PutAllianceLeadContactRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    PutAllianceLeadContactRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: PartnerIdentifier, required: true, location_name: "Identifier"))
    PutAllianceLeadContactRequest.add_member(:alliance_lead_contact, Shapes::ShapeRef.new(shape: AllianceLeadContact, required: true, location_name: "AllianceLeadContact"))
    PutAllianceLeadContactRequest.add_member(:email_verification_code, Shapes::ShapeRef.new(shape: EmailVerificationCode, location_name: "EmailVerificationCode"))
    PutAllianceLeadContactRequest.struct_class = Types::PutAllianceLeadContactRequest

    PutAllianceLeadContactResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    PutAllianceLeadContactResponse.add_member(:arn, Shapes::ShapeRef.new(shape: PartnerArn, required: true, location_name: "Arn"))
    PutAllianceLeadContactResponse.add_member(:id, Shapes::ShapeRef.new(shape: PartnerId, required: true, location_name: "Id"))
    PutAllianceLeadContactResponse.add_member(:alliance_lead_contact, Shapes::ShapeRef.new(shape: AllianceLeadContact, required: true, location_name: "AllianceLeadContact"))
    PutAllianceLeadContactResponse.struct_class = Types::PutAllianceLeadContactResponse

    PutProfileVisibilityRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    PutProfileVisibilityRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: PartnerIdentifier, required: true, location_name: "Identifier"))
    PutProfileVisibilityRequest.add_member(:visibility, Shapes::ShapeRef.new(shape: ProfileVisibility, required: true, location_name: "Visibility"))
    PutProfileVisibilityRequest.struct_class = Types::PutProfileVisibilityRequest

    PutProfileVisibilityResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    PutProfileVisibilityResponse.add_member(:arn, Shapes::ShapeRef.new(shape: PartnerArn, required: true, location_name: "Arn"))
    PutProfileVisibilityResponse.add_member(:id, Shapes::ShapeRef.new(shape: PartnerId, required: true, location_name: "Id"))
    PutProfileVisibilityResponse.add_member(:visibility, Shapes::ShapeRef.new(shape: ProfileVisibility, required: true, location_name: "Visibility"))
    PutProfileVisibilityResponse.add_member(:profile_id, Shapes::ShapeRef.new(shape: PartnerProfileId, required: true, location_name: "ProfileId"))
    PutProfileVisibilityResponse.struct_class = Types::PutProfileVisibilityResponse

    RegistrantVerificationDetails.struct_class = Types::RegistrantVerificationDetails

    RegistrantVerificationResponse.add_member(:completion_url, Shapes::ShapeRef.new(shape: CompletionUrl, required: true, location_name: "CompletionUrl"))
    RegistrantVerificationResponse.add_member(:completion_url_expires_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CompletionUrlExpiresAt"))
    RegistrantVerificationResponse.struct_class = Types::RegistrantVerificationResponse

    RejectConnectionInvitationRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    RejectConnectionInvitationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ConnectionInvitationId, required: true, location_name: "Identifier"))
    RejectConnectionInvitationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    RejectConnectionInvitationRequest.add_member(:reason, Shapes::ShapeRef.new(shape: RejectConnectionInvitationRequestReasonString, location_name: "Reason"))
    RejectConnectionInvitationRequest.struct_class = Types::RejectConnectionInvitationRequest

    RejectConnectionInvitationResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    RejectConnectionInvitationResponse.add_member(:id, Shapes::ShapeRef.new(shape: ConnectionInvitationId, required: true, location_name: "Id"))
    RejectConnectionInvitationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ConnectionInvitationArn, required: true, location_name: "Arn"))
    RejectConnectionInvitationResponse.add_member(:connection_id, Shapes::ShapeRef.new(shape: ConnectionId, location_name: "ConnectionId"))
    RejectConnectionInvitationResponse.add_member(:connection_type, Shapes::ShapeRef.new(shape: ConnectionType, required: true, location_name: "ConnectionType"))
    RejectConnectionInvitationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedAt"))
    RejectConnectionInvitationResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "UpdatedAt"))
    RejectConnectionInvitationResponse.add_member(:expires_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExpiresAt"))
    RejectConnectionInvitationResponse.add_member(:other_participant_identifier, Shapes::ShapeRef.new(shape: ParticipantIdentifier, required: true, location_name: "OtherParticipantIdentifier"))
    RejectConnectionInvitationResponse.add_member(:participant_type, Shapes::ShapeRef.new(shape: ParticipantType, required: true, location_name: "ParticipantType"))
    RejectConnectionInvitationResponse.add_member(:status, Shapes::ShapeRef.new(shape: InvitationStatus, required: true, location_name: "Status"))
    RejectConnectionInvitationResponse.add_member(:invitation_message, Shapes::ShapeRef.new(shape: RejectConnectionInvitationResponseInvitationMessageString, required: true, location_name: "InvitationMessage"))
    RejectConnectionInvitationResponse.add_member(:inviter_email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "InviterEmail"))
    RejectConnectionInvitationResponse.add_member(:inviter_name, Shapes::ShapeRef.new(shape: SensitiveUnicodeString, required: true, location_name: "InviterName"))
    RejectConnectionInvitationResponse.struct_class = Types::RejectConnectionInvitationResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:reason, Shapes::ShapeRef.new(shape: ResourceNotFoundExceptionReason, required: true, location_name: "Reason"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SellerProfileSummary.add_member(:id, Shapes::ShapeRef.new(shape: SellerProfileId, required: true, location_name: "Id"))
    SellerProfileSummary.add_member(:name, Shapes::ShapeRef.new(shape: UnicodeString, required: true, location_name: "Name"))
    SellerProfileSummary.struct_class = Types::SellerProfileSummary

    SendEmailVerificationCodeRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    SendEmailVerificationCodeRequest.add_member(:email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "Email"))
    SendEmailVerificationCodeRequest.struct_class = Types::SendEmailVerificationCodeRequest

    SendEmailVerificationCodeResponse.struct_class = Types::SendEmailVerificationCodeResponse

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:reason, Shapes::ShapeRef.new(shape: ServiceQuotaExceededExceptionReason, required: true, location_name: "Reason"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartProfileUpdateTaskRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    StartProfileUpdateTaskRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: PartnerIdentifier, required: true, location_name: "Identifier"))
    StartProfileUpdateTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartProfileUpdateTaskRequest.add_member(:task_details, Shapes::ShapeRef.new(shape: TaskDetails, required: true, location_name: "TaskDetails"))
    StartProfileUpdateTaskRequest.struct_class = Types::StartProfileUpdateTaskRequest

    StartProfileUpdateTaskResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    StartProfileUpdateTaskResponse.add_member(:arn, Shapes::ShapeRef.new(shape: PartnerArn, required: true, location_name: "Arn"))
    StartProfileUpdateTaskResponse.add_member(:id, Shapes::ShapeRef.new(shape: PartnerId, required: true, location_name: "Id"))
    StartProfileUpdateTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: ProfileTaskId, required: true, location_name: "TaskId"))
    StartProfileUpdateTaskResponse.add_member(:task_details, Shapes::ShapeRef.new(shape: TaskDetails, required: true, location_name: "TaskDetails"))
    StartProfileUpdateTaskResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "StartedAt"))
    StartProfileUpdateTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: ProfileTaskStatus, required: true, location_name: "Status"))
    StartProfileUpdateTaskResponse.add_member(:ended_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndedAt"))
    StartProfileUpdateTaskResponse.add_member(:error_detail_list, Shapes::ShapeRef.new(shape: ErrorDetailList, location_name: "ErrorDetailList"))
    StartProfileUpdateTaskResponse.struct_class = Types::StartProfileUpdateTaskResponse

    StartVerificationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartVerificationRequest.add_member(:verification_details, Shapes::ShapeRef.new(shape: VerificationDetails, location_name: "VerificationDetails"))
    StartVerificationRequest.struct_class = Types::StartVerificationRequest

    StartVerificationResponse.add_member(:verification_type, Shapes::ShapeRef.new(shape: VerificationType, required: true, location_name: "VerificationType"))
    StartVerificationResponse.add_member(:verification_status, Shapes::ShapeRef.new(shape: VerificationStatus, required: true, location_name: "VerificationStatus"))
    StartVerificationResponse.add_member(:verification_status_reason, Shapes::ShapeRef.new(shape: VerificationStatusReason, location_name: "VerificationStatusReason"))
    StartVerificationResponse.add_member(:verification_response_details, Shapes::ShapeRef.new(shape: VerificationResponseDetails, required: true, location_name: "VerificationResponseDetails"))
    StartVerificationResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "StartedAt"))
    StartVerificationResponse.add_member(:completed_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CompletedAt"))
    StartVerificationResponse.struct_class = Types::StartVerificationResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TaskDetails.add_member(:display_name, Shapes::ShapeRef.new(shape: UnicodeString, required: true, location_name: "DisplayName"))
    TaskDetails.add_member(:description, Shapes::ShapeRef.new(shape: TaskDetailsDescriptionString, required: true, location_name: "Description"))
    TaskDetails.add_member(:website_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "WebsiteUrl"))
    TaskDetails.add_member(:logo_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "LogoUrl"))
    TaskDetails.add_member(:primary_solution_type, Shapes::ShapeRef.new(shape: PrimarySolutionType, required: true, location_name: "PrimarySolutionType"))
    TaskDetails.add_member(:industry_segments, Shapes::ShapeRef.new(shape: IndustrySegmentList, required: true, location_name: "IndustrySegments"))
    TaskDetails.add_member(:translation_source_locale, Shapes::ShapeRef.new(shape: Locale, required: true, location_name: "TranslationSourceLocale"))
    TaskDetails.add_member(:localized_contents, Shapes::ShapeRef.new(shape: LocalizedContentList, location_name: "LocalizedContents"))
    TaskDetails.struct_class = Types::TaskDetails

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "ServiceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "QuotaCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateConnectionPreferencesRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    UpdateConnectionPreferencesRequest.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "Revision"))
    UpdateConnectionPreferencesRequest.add_member(:access_type, Shapes::ShapeRef.new(shape: AccessType, required: true, location_name: "AccessType"))
    UpdateConnectionPreferencesRequest.add_member(:excluded_participant_identifiers, Shapes::ShapeRef.new(shape: UpdateConnectionPreferencesRequestExcludedParticipantIdentifiersList, location_name: "ExcludedParticipantIdentifiers"))
    UpdateConnectionPreferencesRequest.struct_class = Types::UpdateConnectionPreferencesRequest

    UpdateConnectionPreferencesRequestExcludedParticipantIdentifiersList.member = Shapes::ShapeRef.new(shape: ParticipantIdentifier)

    UpdateConnectionPreferencesResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    UpdateConnectionPreferencesResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ConnectionPreferencesArn, required: true, location_name: "Arn"))
    UpdateConnectionPreferencesResponse.add_member(:access_type, Shapes::ShapeRef.new(shape: AccessType, required: true, location_name: "AccessType"))
    UpdateConnectionPreferencesResponse.add_member(:excluded_participant_ids, Shapes::ShapeRef.new(shape: ParticipantIdentifierList, location_name: "ExcludedParticipantIds"))
    UpdateConnectionPreferencesResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "UpdatedAt"))
    UpdateConnectionPreferencesResponse.add_member(:revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "Revision"))
    UpdateConnectionPreferencesResponse.struct_class = Types::UpdateConnectionPreferencesResponse

    ValidationError.add_member(:field_validation_error, Shapes::ShapeRef.new(shape: FieldValidationError, location_name: "FieldValidationError"))
    ValidationError.add_member(:business_validation_error, Shapes::ShapeRef.new(shape: BusinessValidationError, location_name: "BusinessValidationError"))
    ValidationError.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ValidationError.add_member_subclass(:field_validation_error, Types::ValidationError::FieldValidationError)
    ValidationError.add_member_subclass(:business_validation_error, Types::ValidationError::BusinessValidationError)
    ValidationError.add_member_subclass(:unknown, Types::ValidationError::Unknown)
    ValidationError.struct_class = Types::ValidationError

    ValidationErrorList.member = Shapes::ShapeRef.new(shape: ValidationError)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "Reason"))
    ValidationException.add_member(:error_details, Shapes::ShapeRef.new(shape: ValidationErrorList, location_name: "ErrorDetails"))
    ValidationException.struct_class = Types::ValidationException

    VerificationDetails.add_member(:business_verification_details, Shapes::ShapeRef.new(shape: BusinessVerificationDetails, location_name: "BusinessVerificationDetails"))
    VerificationDetails.add_member(:registrant_verification_details, Shapes::ShapeRef.new(shape: RegistrantVerificationDetails, location_name: "RegistrantVerificationDetails"))
    VerificationDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    VerificationDetails.add_member_subclass(:business_verification_details, Types::VerificationDetails::BusinessVerificationDetails)
    VerificationDetails.add_member_subclass(:registrant_verification_details, Types::VerificationDetails::RegistrantVerificationDetails)
    VerificationDetails.add_member_subclass(:unknown, Types::VerificationDetails::Unknown)
    VerificationDetails.struct_class = Types::VerificationDetails

    VerificationResponseDetails.add_member(:business_verification_response, Shapes::ShapeRef.new(shape: BusinessVerificationResponse, location_name: "BusinessVerificationResponse"))
    VerificationResponseDetails.add_member(:registrant_verification_response, Shapes::ShapeRef.new(shape: RegistrantVerificationResponse, location_name: "RegistrantVerificationResponse"))
    VerificationResponseDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    VerificationResponseDetails.add_member_subclass(:business_verification_response, Types::VerificationResponseDetails::BusinessVerificationResponse)
    VerificationResponseDetails.add_member_subclass(:registrant_verification_response, Types::VerificationResponseDetails::RegistrantVerificationResponse)
    VerificationResponseDetails.add_member_subclass(:unknown, Types::VerificationResponseDetails::Unknown)
    VerificationResponseDetails.struct_class = Types::VerificationResponseDetails


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2025-04-04"

      api.metadata = {
        "apiVersion" => "2025-04-04",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "partnercentral-account",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "Partner Central Account API",
        "serviceId" => "PartnerCentral Account",
        "signatureVersion" => "v4",
        "signingName" => "partnercentral-account",
        "targetPrefix" => "PartnerCentralAccount",
        "uid" => "partnercentral-account-2025-04-04",
      }

      api.add_operation(:accept_connection_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptConnectionInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AcceptConnectionInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptConnectionInvitationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:associate_aws_training_certification_email_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateAwsTrainingCertificationEmailDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateAwsTrainingCertificationEmailDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateAwsTrainingCertificationEmailDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:cancel_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:cancel_connection_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelConnectionInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelConnectionInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelConnectionInvitationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:cancel_profile_update_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelProfileUpdateTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelProfileUpdateTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelProfileUpdateTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_connection_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConnectionInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateConnectionInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConnectionInvitationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_partner, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePartner"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePartnerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePartnerResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:disassociate_aws_training_certification_email_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateAwsTrainingCertificationEmailDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateAwsTrainingCertificationEmailDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateAwsTrainingCertificationEmailDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_alliance_lead_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAllianceLeadContact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAllianceLeadContactRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAllianceLeadContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_connection_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnectionInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetConnectionInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectionInvitationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_connection_preferences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnectionPreferences"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetConnectionPreferencesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectionPreferencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_partner, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPartner"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPartnerRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPartnerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_profile_update_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProfileUpdateTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetProfileUpdateTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProfileUpdateTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_profile_visibility, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProfileVisibility"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetProfileVisibilityRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProfileVisibilityResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_verification, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVerification"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetVerificationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVerificationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_connection_invitations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConnectionInvitations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListConnectionInvitationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConnectionInvitationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConnections"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListConnectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConnectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_partners, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPartners"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPartnersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPartnersResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_alliance_lead_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAllianceLeadContact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutAllianceLeadContactRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAllianceLeadContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_profile_visibility, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutProfileVisibility"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutProfileVisibilityRequest)
        o.output = Shapes::ShapeRef.new(shape: PutProfileVisibilityResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:reject_connection_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectConnectionInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RejectConnectionInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: RejectConnectionInvitationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:send_email_verification_code, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendEmailVerificationCode"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendEmailVerificationCodeRequest)
        o.output = Shapes::ShapeRef.new(shape: SendEmailVerificationCodeResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:start_profile_update_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartProfileUpdateTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartProfileUpdateTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: StartProfileUpdateTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_verification, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartVerification"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartVerificationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartVerificationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_connection_preferences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConnectionPreferences"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateConnectionPreferencesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConnectionPreferencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end

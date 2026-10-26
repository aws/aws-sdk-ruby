# frozen_string_literal: true

# This is generated code!

module Aws::PartnerCentralAccount
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptConnectionInvitationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#AcceptConnectionInvitationRequest", name: "AcceptConnectionInvitationRequest")
    AcceptConnectionInvitationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#AcceptConnectionInvitationResponse", name: "AcceptConnectionInvitationResponse")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDeniedExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralaccount#AccessDeniedExceptionReason", name: "AccessDeniedExceptionReason")
    AccessType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralaccount#AccessType", name: "AccessType")
    AccountSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#AccountSummary", name: "AccountSummary")
    AllianceLeadContact = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#AllianceLeadContact", name: "AllianceLeadContact")
    AssociateAwsTrainingCertificationEmailDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#AssociateAwsTrainingCertificationEmailDomainRequest", name: "AssociateAwsTrainingCertificationEmailDomainRequest")
    AssociateAwsTrainingCertificationEmailDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#AssociateAwsTrainingCertificationEmailDomainResponse", name: "AssociateAwsTrainingCertificationEmailDomainResponse")
    AssociatedPartnerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralaccount#AssociatedPartnerList", name: "AssociatedPartnerList", traits: {"smithy.api#length" => {"max" => 6}})
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#AwsAccountId", name: "AwsAccountId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    BusinessValidationCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralaccount#BusinessValidationCode", name: "BusinessValidationCode")
    BusinessValidationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#BusinessValidationError", name: "BusinessValidationError")
    BusinessVerificationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#BusinessVerificationDetails", name: "BusinessVerificationDetails")
    BusinessVerificationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#BusinessVerificationResponse", name: "BusinessVerificationResponse")
    CancelConnectionInvitationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#CancelConnectionInvitationRequest", name: "CancelConnectionInvitationRequest")
    CancelConnectionInvitationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#CancelConnectionInvitationResponse", name: "CancelConnectionInvitationResponse")
    CancelConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#CancelConnectionRequest", name: "CancelConnectionRequest")
    CancelConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#CancelConnectionResponse", name: "CancelConnectionResponse")
    CancelProfileUpdateTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#CancelProfileUpdateTaskRequest", name: "CancelProfileUpdateTaskRequest")
    CancelProfileUpdateTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#CancelProfileUpdateTaskResponse", name: "CancelProfileUpdateTaskResponse")
    Catalog = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#Catalog", name: "Catalog", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9-_]+$"})
    CompletionUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#CompletionUrl", name: "CompletionUrl")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralaccount#ConflictExceptionReason", name: "ConflictExceptionReason")
    Connection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#Connection", name: "Connection")
    ConnectionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#ConnectionArn", name: "ConnectionArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^arn:[a-zA-Z0-9-]+:partnercentral:[a-z0-9\\-]*::catalog/[a-zA-Z]+/connection/pac-[A-Za-z0-9]{13}$"})
    ConnectionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#ConnectionId", name: "ConnectionId", traits: {"smithy.api#pattern" => "^pac-[A-Za-z0-9]{13}$"})
    ConnectionInvitationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#ConnectionInvitationArn", name: "ConnectionInvitationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^arn:[a-zA-Z0-9-]+:partnercentral:[a-z0-9\\-]*::catalog/[a-zA-Z]+/connection-invitation/pacinv-[A-Za-z0-9]{13}$"})
    ConnectionInvitationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#ConnectionInvitationId", name: "ConnectionInvitationId", traits: {"smithy.api#pattern" => "^pacinv-[A-Za-z0-9]{13}$"})
    ConnectionInvitationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#ConnectionInvitationSummary", name: "ConnectionInvitationSummary")
    ConnectionInvitationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralaccount#ConnectionInvitationSummaryList", name: "ConnectionInvitationSummaryList")
    ConnectionPreferencesArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#ConnectionPreferencesArn", name: "ConnectionPreferencesArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^arn:[a-zA-Z0-9-]+:partnercentral:[a-z0-9\\-]*:[0-9]{12}:catalog/[a-zA-Z]+/connection-preferences$"})
    ConnectionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#ConnectionSummary", name: "ConnectionSummary")
    ConnectionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralaccount#ConnectionSummaryList", name: "ConnectionSummaryList")
    ConnectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralaccount#ConnectionType", name: "ConnectionType")
    ConnectionTypeDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#ConnectionTypeDetail", name: "ConnectionTypeDetail")
    ConnectionTypeDetailMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.partnercentralaccount#ConnectionTypeDetailMap", name: "ConnectionTypeDetailMap")
    ConnectionTypeFilter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#ConnectionTypeFilter", name: "ConnectionTypeFilter", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z_-]+(:[a-zA-Z]+)?$"})
    ConnectionTypeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralaccount#ConnectionTypeStatus", name: "ConnectionTypeStatus")
    ConnectionTypeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#ConnectionTypeSummary", name: "ConnectionTypeSummary")
    ConnectionTypeSummaryMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.partnercentralaccount#ConnectionTypeSummaryMap", name: "ConnectionTypeSummaryMap")
    CountryCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#CountryCode", name: "CountryCode", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[A-Z]{2}$"})
    CreateConnectionInvitationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#CreateConnectionInvitationRequest", name: "CreateConnectionInvitationRequest")
    CreateConnectionInvitationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#CreateConnectionInvitationResponse", name: "CreateConnectionInvitationResponse")
    CreatePartnerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#CreatePartnerRequest", name: "CreatePartnerRequest")
    CreatePartnerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#CreatePartnerResponse", name: "CreatePartnerResponse")
    DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.partnercentralaccount#DateTime", name: "DateTime", traits: {"smithy.api#timestampFormat" => "date-time"})
    DisassociateAwsTrainingCertificationEmailDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#DisassociateAwsTrainingCertificationEmailDomainRequest", name: "DisassociateAwsTrainingCertificationEmailDomainRequest")
    DisassociateAwsTrainingCertificationEmailDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#DisassociateAwsTrainingCertificationEmailDomainResponse", name: "DisassociateAwsTrainingCertificationEmailDomainResponse")
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#DomainName", name: "DomainName", traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "^[a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(\\.[a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$"})
    Email = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#Email", name: "Email", traits: {"smithy.api#length" => {"min" => 1, "max" => 320}, "smithy.api#pattern" => "^[a-zA-Z0-9.!\#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$"})
    EmailVerificationCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#EmailVerificationCode", name: "EmailVerificationCode", traits: {"smithy.api#length" => {"min" => 6, "max" => 6}, "smithy.api#pattern" => "^[0-9]+$", "smithy.api#sensitive" => {}})
    ErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#ErrorDetail", name: "ErrorDetail")
    ErrorDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralaccount#ErrorDetailList", name: "ErrorDetailList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    FieldValidationCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralaccount#FieldValidationCode", name: "FieldValidationCode")
    FieldValidationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#FieldValidationError", name: "FieldValidationError")
    GetAllianceLeadContactRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#GetAllianceLeadContactRequest", name: "GetAllianceLeadContactRequest")
    GetAllianceLeadContactResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#GetAllianceLeadContactResponse", name: "GetAllianceLeadContactResponse")
    GetConnectionInvitationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#GetConnectionInvitationRequest", name: "GetConnectionInvitationRequest")
    GetConnectionInvitationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#GetConnectionInvitationResponse", name: "GetConnectionInvitationResponse")
    GetConnectionPreferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#GetConnectionPreferencesRequest", name: "GetConnectionPreferencesRequest")
    GetConnectionPreferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#GetConnectionPreferencesResponse", name: "GetConnectionPreferencesResponse")
    GetConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#GetConnectionRequest", name: "GetConnectionRequest")
    GetConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#GetConnectionResponse", name: "GetConnectionResponse")
    GetPartnerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#GetPartnerRequest", name: "GetPartnerRequest")
    GetPartnerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#GetPartnerResponse", name: "GetPartnerResponse")
    GetProfileUpdateTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#GetProfileUpdateTaskRequest", name: "GetProfileUpdateTaskRequest")
    GetProfileUpdateTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#GetProfileUpdateTaskResponse", name: "GetProfileUpdateTaskResponse")
    GetProfileVisibilityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#GetProfileVisibilityRequest", name: "GetProfileVisibilityRequest")
    GetProfileVisibilityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#GetProfileVisibilityResponse", name: "GetProfileVisibilityResponse")
    GetQualificationsAssociationDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#GetQualificationsAssociationDetailsRequest", name: "GetQualificationsAssociationDetailsRequest")
    GetQualificationsAssociationDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#GetQualificationsAssociationDetailsResponse", name: "GetQualificationsAssociationDetailsResponse")
    GetQualificationsAssociationTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#GetQualificationsAssociationTaskRequest", name: "GetQualificationsAssociationTaskRequest")
    GetQualificationsAssociationTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#GetQualificationsAssociationTaskResponse", name: "GetQualificationsAssociationTaskResponse")
    GetQualificationsDisassociationTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#GetQualificationsDisassociationTaskRequest", name: "GetQualificationsDisassociationTaskRequest")
    GetQualificationsDisassociationTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#GetQualificationsDisassociationTaskResponse", name: "GetQualificationsDisassociationTaskResponse")
    GetVerificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#GetVerificationRequest", name: "GetVerificationRequest")
    GetVerificationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#GetVerificationResponse", name: "GetVerificationResponse")
    Headquarters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#Headquarters", name: "Headquarters")
    IndustrySegment = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralaccount#IndustrySegment", name: "IndustrySegment")
    IndustrySegmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralaccount#IndustrySegmentList", name: "IndustrySegmentList", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InvitationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralaccount#InvitationStatus", name: "InvitationStatus")
    JurisdictionCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#JurisdictionCode", name: "JurisdictionCode", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[A-Z0-9]{2}$"})
    LegalName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#LegalName", name: "LegalName", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}, "smithy.api#pattern" => "^[\\u0020-\\u007E\\u00A0-\\uD7FF\\uE000-\\uFFFD]+$", "smithy.api#sensitive" => {}})
    ListConnectionInvitationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#ListConnectionInvitationsRequest", name: "ListConnectionInvitationsRequest")
    ListConnectionInvitationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#ListConnectionInvitationsResponse", name: "ListConnectionInvitationsResponse")
    ListConnectionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#ListConnectionsRequest", name: "ListConnectionsRequest")
    ListConnectionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#ListConnectionsResponse", name: "ListConnectionsResponse")
    ListPartnersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#ListPartnersRequest", name: "ListPartnersRequest")
    ListPartnersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#ListPartnersResponse", name: "ListPartnersResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    Locale = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#Locale", name: "Locale", traits: {"smithy.api#pattern" => "^[a-z]{2}-[A-Z]{2}$"})
    LocalizedContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#LocalizedContent", name: "LocalizedContent")
    LocalizedContentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralaccount#LocalizedContentList", name: "LocalizedContentList", traits: {"smithy.api#length" => {"max" => 20}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.partnercentralaccount#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\S]+$"})
    Participant = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.partnercentralaccount#Participant", name: "Participant")
    ParticipantIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#ParticipantIdentifier", name: "ParticipantIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ParticipantIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralaccount#ParticipantIdentifierList", name: "ParticipantIdentifierList", traits: {"smithy.api#uniqueItems" => {}})
    ParticipantType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralaccount#ParticipantType", name: "ParticipantType")
    PartnerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#PartnerArn", name: "PartnerArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^arn:[a-z-]+:partnercentral:[a-z0-9-]+:[0-9]{12}:catalog/[A-Za-z-_]+/partner/partner-[A-Za-z0-9]{13}$"})
    PartnerDomain = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#PartnerDomain", name: "PartnerDomain")
    PartnerDomainList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralaccount#PartnerDomainList", name: "PartnerDomainList", traits: {"smithy.api#length" => {"max" => 100}})
    PartnerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#PartnerId", name: "PartnerId", traits: {"smithy.api#pattern" => "^partner-[A-Za-z0-9]{13}$"})
    PartnerIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#PartnerIdentifier", name: "PartnerIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^(partner-[A-Za-z0-9]{13}|arn:[a-z-]+:partnercentral:[a-z0-9-]+:[0-9]{12}:catalog/[A-Za-z-_]+/partner/partner-[A-Za-z0-9]{13})$"})
    PartnerProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#PartnerProfile", name: "PartnerProfile")
    PartnerProfileId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#PartnerProfileId", name: "PartnerProfileId", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^pprofile-[A-Za-z0-9]{13}$"})
    PartnerProfileSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#PartnerProfileSummary", name: "PartnerProfileSummary")
    PartnerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#PartnerSummary", name: "PartnerSummary")
    PartnerSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralaccount#PartnerSummaryList", name: "PartnerSummaryList", traits: {"smithy.api#length" => {"max" => 50}})
    PrimarySolutionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralaccount#PrimarySolutionType", name: "PrimarySolutionType")
    ProfileTaskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#ProfileTaskId", name: "ProfileTaskId", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}, "smithy.api#pattern" => "^pprofiletask-[A-Za-z0-9]{13}$"})
    ProfileTaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralaccount#ProfileTaskStatus", name: "ProfileTaskStatus")
    ProfileValidationErrorReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralaccount#ProfileValidationErrorReason", name: "ProfileValidationErrorReason")
    ProfileVisibility = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralaccount#ProfileVisibility", name: "ProfileVisibility")
    PutAllianceLeadContactRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#PutAllianceLeadContactRequest", name: "PutAllianceLeadContactRequest")
    PutAllianceLeadContactResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#PutAllianceLeadContactResponse", name: "PutAllianceLeadContactResponse")
    PutProfileVisibilityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#PutProfileVisibilityRequest", name: "PutProfileVisibilityRequest")
    PutProfileVisibilityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#PutProfileVisibilityResponse", name: "PutProfileVisibilityResponse")
    QualificationsAssociationPartner = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#QualificationsAssociationPartner", name: "QualificationsAssociationPartner")
    QualificationsAssociationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralaccount#QualificationsAssociationStatus", name: "QualificationsAssociationStatus")
    QualificationsAssociationTaskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#QualificationsAssociationTaskId", name: "QualificationsAssociationTaskId", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}, "smithy.api#pattern" => "^pqatask-[A-Za-z0-9]{13}$"})
    QualificationsAssociationTaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralaccount#QualificationsAssociationTaskStatus", name: "QualificationsAssociationTaskStatus")
    QualificationsDisassociationTaskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#QualificationsDisassociationTaskId", name: "QualificationsDisassociationTaskId", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}, "smithy.api#pattern" => "^pqdtask-[A-Za-z0-9]{13}$"})
    QualificationsDisassociationTaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralaccount#QualificationsDisassociationTaskStatus", name: "QualificationsDisassociationTaskStatus")
    RegistrantVerificationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#RegistrantVerificationDetails", name: "RegistrantVerificationDetails")
    RegistrantVerificationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#RegistrantVerificationResponse", name: "RegistrantVerificationResponse")
    RegistrationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#RegistrationId", name: "RegistrationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}, "smithy.api#pattern" => "^[\\u0020-\\u007E\\u00A0-\\uD7FF\\uE000-\\uFFFD]+$", "smithy.api#sensitive" => {}})
    RejectConnectionInvitationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#RejectConnectionInvitationRequest", name: "RejectConnectionInvitationRequest")
    RejectConnectionInvitationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#RejectConnectionInvitationResponse", name: "RejectConnectionInvitationResponse")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceNotFoundExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralaccount#ResourceNotFoundExceptionReason", name: "ResourceNotFoundExceptionReason")
    Revision = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.partnercentralaccount#Revision", name: "Revision")
    SellerProfileId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#SellerProfileId", name: "SellerProfileId", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    SellerProfileSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#SellerProfileSummary", name: "SellerProfileSummary")
    SendEmailVerificationCodeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#SendEmailVerificationCodeRequest", name: "SendEmailVerificationCodeRequest")
    SendEmailVerificationCodeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#SendEmailVerificationCodeResponse", name: "SendEmailVerificationCodeResponse")
    SensitiveUnicodeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#SensitiveUnicodeString", name: "SensitiveUnicodeString", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}, "smithy.api#pattern" => "^[\\u0020-\\u007E\\u00A0-\\uD7FF\\uE000-\\uFFFD]+$", "smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceQuotaExceededExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralaccount#ServiceQuotaExceededExceptionReason", name: "ServiceQuotaExceededExceptionReason")
    StartProfileUpdateTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#StartProfileUpdateTaskRequest", name: "StartProfileUpdateTaskRequest")
    StartProfileUpdateTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#StartProfileUpdateTaskResponse", name: "StartProfileUpdateTaskResponse")
    StartQualificationsAssociationTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#StartQualificationsAssociationTaskRequest", name: "StartQualificationsAssociationTaskRequest")
    StartQualificationsAssociationTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#StartQualificationsAssociationTaskResponse", name: "StartQualificationsAssociationTaskResponse")
    StartQualificationsDisassociationTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#StartQualificationsDisassociationTaskRequest", name: "StartQualificationsDisassociationTaskRequest")
    StartQualificationsDisassociationTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#StartQualificationsDisassociationTaskResponse", name: "StartQualificationsDisassociationTaskResponse")
    StartVerificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#StartVerificationRequest", name: "StartVerificationRequest")
    StartVerificationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#StartVerificationResponse", name: "StartVerificationResponse")
    SubdivisionCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#SubdivisionCode", name: "SubdivisionCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}, "smithy.api#pattern" => "^[A-Z0-9]{1,3}$"})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralaccount#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralaccount#TagList", name: "TagList", traits: {"smithy.api#length" => {"max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"max" => 256}})
    TaggableResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#TaggableResourceArn", name: "TaggableResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^arn:[a-z-]+:partnercentral:[a-z0-9-]+:[0-9]{12}:[A-Za-z0-9._:/-]+$"})
    TaskDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#TaskDetails", name: "TaskDetails")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    UnicodeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#UnicodeString", name: "UnicodeString", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}, "smithy.api#pattern" => "^[\\u0020-\\u007E\\u00A0-\\uD7FF\\uE000-\\uFFFD]+$"})
    UnicodeStringIncludingNewLine = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#UnicodeStringIncludingNewLine", name: "UnicodeStringIncludingNewLine", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}, "smithy.api#pattern" => "^[\\u0020-\\u007E\\u00A0-\\uD7FF\\uE000-\\uFFFD\\n]+$"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateConnectionPreferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#UpdateConnectionPreferencesRequest", name: "UpdateConnectionPreferencesRequest")
    UpdateConnectionPreferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#UpdateConnectionPreferencesResponse", name: "UpdateConnectionPreferencesResponse")
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#Url", name: "Url", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^(https|HTTPS):\\/\\/[^\\/\\s]+(\\/\\S*)?$"})
    ValidationError = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.partnercentralaccount#ValidationError", name: "ValidationError")
    ValidationErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralaccount#ValidationErrorList", name: "ValidationErrorList")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralaccount#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralaccount#ValidationExceptionReason", name: "ValidationExceptionReason")
    VerificationDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.partnercentralaccount#VerificationDetails", name: "VerificationDetails")
    VerificationResponseDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.partnercentralaccount#VerificationResponseDetails", name: "VerificationResponseDetails")
    VerificationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralaccount#VerificationStatus", name: "VerificationStatus")
    VerificationStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralaccount#VerificationStatusReason", name: "VerificationStatusReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[\\u0020-\\u007E\\u00A0-\\uD7FF\\uE000-\\uFFFD]+$"})
    VerificationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralaccount#VerificationType", name: "VerificationType")

    AcceptConnectionInvitationRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    AcceptConnectionInvitationRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionInvitationId, name: "Identifier", traits: {"smithy.api#required" => {}}))
    AcceptConnectionInvitationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    AcceptConnectionInvitationRequest.type = Types::AcceptConnectionInvitationRequest
    AcceptConnectionInvitationResponse.add_member(:connection, ::Smithy::Schema::Shapes::MemberShape.new(target: Connection, name: "Connection", traits: {"smithy.api#required" => {}}))
    AcceptConnectionInvitationResponse.type = Types::AcceptConnectionInvitationResponse
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDeniedExceptionReason, name: "Reason", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessDeniedExceptionReason.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    AccessDeniedExceptionReason.add_member(:incompatible_benefit_aws_partner_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_BENEFIT_AWS_PARTNER_STATE", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_BENEFIT_AWS_PARTNER_STATE"}))
    AccessType.add_member(:allow_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW_ALL", traits: {"smithy.api#enumValue" => "ALLOW_ALL"}))
    AccessType.add_member(:deny_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENY_ALL", traits: {"smithy.api#enumValue" => "DENY_ALL"}))
    AccessType.add_member(:allow_by_default_deny_some, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW_BY_DEFAULT_DENY_SOME", traits: {"smithy.api#enumValue" => "ALLOW_BY_DEFAULT_DENY_SOME"}))
    AccountSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: UnicodeString, name: "Name", traits: {"smithy.api#required" => {}}))
    AccountSummary.type = Types::AccountSummary
    AllianceLeadContact.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveUnicodeString, name: "FirstName", traits: {"smithy.api#required" => {}}))
    AllianceLeadContact.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveUnicodeString, name: "LastName", traits: {"smithy.api#required" => {}}))
    AllianceLeadContact.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "Email", traits: {"smithy.api#required" => {}}))
    AllianceLeadContact.add_member(:business_title, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveUnicodeString, name: "BusinessTitle", traits: {"smithy.api#required" => {}}))
    AllianceLeadContact.type = Types::AllianceLeadContact
    AssociateAwsTrainingCertificationEmailDomainRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    AssociateAwsTrainingCertificationEmailDomainRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    AssociateAwsTrainingCertificationEmailDomainRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    AssociateAwsTrainingCertificationEmailDomainRequest.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "Email", traits: {"smithy.api#required" => {}}))
    AssociateAwsTrainingCertificationEmailDomainRequest.add_member(:email_verification_code, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailVerificationCode, name: "EmailVerificationCode", traits: {"smithy.api#required" => {}}))
    AssociateAwsTrainingCertificationEmailDomainRequest.type = Types::AssociateAwsTrainingCertificationEmailDomainRequest
    AssociateAwsTrainingCertificationEmailDomainResponse.type = Types::AssociateAwsTrainingCertificationEmailDomainResponse
    AssociatedPartnerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationsAssociationPartner, name: "member"))
    BusinessValidationCode.add_member(:incompatible_connection_invitation_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_CONNECTION_INVITATION_REQUEST", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_CONNECTION_INVITATION_REQUEST"}))
    BusinessValidationCode.add_member(:incompatible_legal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_LEGAL_NAME", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_LEGAL_NAME"}))
    BusinessValidationCode.add_member(:incompatible_know_your_business_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_KNOW_YOUR_BUSINESS_STATUS", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_KNOW_YOUR_BUSINESS_STATUS"}))
    BusinessValidationCode.add_member(:incompatible_identity_verification_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_IDENTITY_VERIFICATION_STATUS", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_IDENTITY_VERIFICATION_STATUS"}))
    BusinessValidationCode.add_member(:invalid_account_linking_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ACCOUNT_LINKING_STATUS", traits: {"smithy.api#enumValue" => "INVALID_ACCOUNT_LINKING_STATUS"}))
    BusinessValidationCode.add_member(:invalid_account_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ACCOUNT_STATE", traits: {"smithy.api#enumValue" => "INVALID_ACCOUNT_STATE"}))
    BusinessValidationCode.add_member(:incompatible_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_DOMAIN", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_DOMAIN"}))
    BusinessValidationCode.add_member(:ineligible_account_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INELIGIBLE_ACCOUNT_TIER", traits: {"smithy.api#enumValue" => "INELIGIBLE_ACCOUNT_TIER"}))
    BusinessValidationCode.add_member(:missing_active_subsidiary_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_ACTIVE_SUBSIDIARY_CONNECTION", traits: {"smithy.api#enumValue" => "MISSING_ACTIVE_SUBSIDIARY_CONNECTION"}))
    BusinessValidationCode.add_member(:incompatible_subsidiary_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_SUBSIDIARY_CONNECTION", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_SUBSIDIARY_CONNECTION"}))
    BusinessValidationCode.add_member(:incompatible_primary_partner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_PRIMARY_PARTNER", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_PRIMARY_PARTNER"}))
    BusinessValidationCode.add_member(:qualifications_association_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUALIFICATIONS_ASSOCIATION_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "QUALIFICATIONS_ASSOCIATION_LIMIT_EXCEEDED"}))
    BusinessValidationCode.add_member(:qualifications_association_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUALIFICATIONS_ASSOCIATION_NOT_FOUND", traits: {"smithy.api#enumValue" => "QUALIFICATIONS_ASSOCIATION_NOT_FOUND"}))
    BusinessValidationCode.add_member(:qualifications_association_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUALIFICATIONS_ASSOCIATION_EXISTS", traits: {"smithy.api#enumValue" => "QUALIFICATIONS_ASSOCIATION_EXISTS"}))
    BusinessValidationError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    BusinessValidationError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessValidationCode, name: "Code", traits: {"smithy.api#required" => {}}))
    BusinessValidationError.type = Types::BusinessValidationError
    BusinessVerificationDetails.add_member(:legal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LegalName, name: "LegalName", traits: {"smithy.api#required" => {}}))
    BusinessVerificationDetails.add_member(:registration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationId, name: "RegistrationId", traits: {"smithy.api#required" => {}}))
    BusinessVerificationDetails.add_member(:country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "CountryCode", traits: {"smithy.api#required" => {}}))
    BusinessVerificationDetails.add_member(:jurisdiction_of_incorporation, ::Smithy::Schema::Shapes::MemberShape.new(target: JurisdictionCode, name: "JurisdictionOfIncorporation"))
    BusinessVerificationDetails.type = Types::BusinessVerificationDetails
    BusinessVerificationResponse.add_member(:business_verification_details, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessVerificationDetails, name: "BusinessVerificationDetails", traits: {"smithy.api#required" => {}}))
    BusinessVerificationResponse.add_member(:completion_url, ::Smithy::Schema::Shapes::MemberShape.new(target: CompletionUrl, name: "CompletionUrl"))
    BusinessVerificationResponse.add_member(:completion_url_expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CompletionUrlExpiresAt"))
    BusinessVerificationResponse.type = Types::BusinessVerificationResponse
    CancelConnectionInvitationRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    CancelConnectionInvitationRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionInvitationId, name: "Identifier", traits: {"smithy.api#required" => {}}))
    CancelConnectionInvitationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CancelConnectionInvitationRequest.type = Types::CancelConnectionInvitationRequest
    CancelConnectionInvitationResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    CancelConnectionInvitationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionInvitationId, name: "Id", traits: {"smithy.api#required" => {}}))
    CancelConnectionInvitationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionInvitationArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    CancelConnectionInvitationResponse.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "ConnectionId"))
    CancelConnectionInvitationResponse.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, name: "ConnectionType", traits: {"smithy.api#required" => {}}))
    CancelConnectionInvitationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    CancelConnectionInvitationResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    CancelConnectionInvitationResponse.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ExpiresAt"))
    CancelConnectionInvitationResponse.add_member(:other_participant_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantIdentifier, name: "OtherParticipantIdentifier", traits: {"smithy.api#required" => {}}))
    CancelConnectionInvitationResponse.add_member(:participant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantType, name: "ParticipantType", traits: {"smithy.api#required" => {}}))
    CancelConnectionInvitationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InvitationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    CancelConnectionInvitationResponse.add_member(:invitation_message, ::Smithy::Schema::Shapes::MemberShape.new(target: UnicodeStringIncludingNewLine, name: "InvitationMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    CancelConnectionInvitationResponse.add_member(:inviter_email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "InviterEmail", traits: {"smithy.api#required" => {}}))
    CancelConnectionInvitationResponse.add_member(:inviter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveUnicodeString, name: "InviterName", traits: {"smithy.api#required" => {}}))
    CancelConnectionInvitationResponse.type = Types::CancelConnectionInvitationResponse
    CancelConnectionRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    CancelConnectionRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "Identifier", traits: {"smithy.api#required" => {}}))
    CancelConnectionRequest.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, name: "ConnectionType", traits: {"smithy.api#required" => {}}))
    CancelConnectionRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Reason", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#required" => {}}))
    CancelConnectionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CancelConnectionRequest.type = Types::CancelConnectionRequest
    CancelConnectionResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    CancelConnectionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "Id", traits: {"smithy.api#required" => {}}))
    CancelConnectionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    CancelConnectionResponse.add_member(:other_participant_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "OtherParticipantAccountId", traits: {"smithy.api#required" => {}}))
    CancelConnectionResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    CancelConnectionResponse.add_member(:connection_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionTypeDetailMap, name: "ConnectionTypes", traits: {"smithy.api#required" => {}}))
    CancelConnectionResponse.type = Types::CancelConnectionResponse
    CancelProfileUpdateTaskRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    CancelProfileUpdateTaskRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    CancelProfileUpdateTaskRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CancelProfileUpdateTaskRequest.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileTaskId, name: "TaskId", traits: {"smithy.api#required" => {}}))
    CancelProfileUpdateTaskRequest.type = Types::CancelProfileUpdateTaskRequest
    CancelProfileUpdateTaskResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    CancelProfileUpdateTaskResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    CancelProfileUpdateTaskResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerId, name: "Id", traits: {"smithy.api#required" => {}}))
    CancelProfileUpdateTaskResponse.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileTaskId, name: "TaskId", traits: {"smithy.api#required" => {}}))
    CancelProfileUpdateTaskResponse.add_member(:task_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDetails, name: "TaskDetails", traits: {"smithy.api#required" => {}}))
    CancelProfileUpdateTaskResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartedAt", traits: {"smithy.api#required" => {}}))
    CancelProfileUpdateTaskResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileTaskStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    CancelProfileUpdateTaskResponse.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "EndedAt"))
    CancelProfileUpdateTaskResponse.add_member(:error_detail_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetailList, name: "ErrorDetailList"))
    CancelProfileUpdateTaskResponse.type = Types::CancelProfileUpdateTaskResponse
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictExceptionReason, name: "Reason", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConflictExceptionReason.add_member(:conflict_client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFLICT_CLIENT_TOKEN", traits: {"smithy.api#enumValue" => "CONFLICT_CLIENT_TOKEN"}))
    ConflictExceptionReason.add_member(:duplicate_partner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUPLICATE_PARTNER", traits: {"smithy.api#enumValue" => "DUPLICATE_PARTNER"}))
    ConflictExceptionReason.add_member(:incompatible_profile_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_PROFILE_STATE", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_PROFILE_STATE"}))
    ConflictExceptionReason.add_member(:incompatible_partner_profile_task_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_PARTNER_PROFILE_TASK_STATE", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_PARTNER_PROFILE_TASK_STATE"}))
    ConflictExceptionReason.add_member(:duplicate_connection_invitation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUPLICATE_CONNECTION_INVITATION", traits: {"smithy.api#enumValue" => "DUPLICATE_CONNECTION_INVITATION"}))
    ConflictExceptionReason.add_member(:incompatible_connection_invitation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_CONNECTION_INVITATION_STATE", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_CONNECTION_INVITATION_STATE"}))
    ConflictExceptionReason.add_member(:incompatible_connection_invitation_receiver, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_CONNECTION_INVITATION_RECEIVER", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_CONNECTION_INVITATION_RECEIVER"}))
    ConflictExceptionReason.add_member(:duplicate_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUPLICATE_CONNECTION", traits: {"smithy.api#enumValue" => "DUPLICATE_CONNECTION"}))
    ConflictExceptionReason.add_member(:incompatible_connection_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_CONNECTION_STATE", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_CONNECTION_STATE"}))
    ConflictExceptionReason.add_member(:incompatible_connection_preferences_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_CONNECTION_PREFERENCES_REVISION", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_CONNECTION_PREFERENCES_REVISION"}))
    ConflictExceptionReason.add_member(:account_already_verified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_ALREADY_VERIFIED", traits: {"smithy.api#enumValue" => "ACCOUNT_ALREADY_VERIFIED"}))
    ConflictExceptionReason.add_member(:verification_already_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERIFICATION_ALREADY_IN_PROGRESS", traits: {"smithy.api#enumValue" => "VERIFICATION_ALREADY_IN_PROGRESS"}))
    ConflictExceptionReason.add_member(:incompatible_qualifications_association_task_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPATIBLE_QUALIFICATIONS_ASSOCIATION_TASK_STATE", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_QUALIFICATIONS_ASSOCIATION_TASK_STATE"}))
    Connection.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    Connection.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "Id", traits: {"smithy.api#required" => {}}))
    Connection.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    Connection.add_member(:other_participant_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "OtherParticipantAccountId", traits: {"smithy.api#required" => {}}))
    Connection.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    Connection.add_member(:connection_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionTypeDetailMap, name: "ConnectionTypes", traits: {"smithy.api#required" => {}}))
    Connection.type = Types::Connection
    ConnectionInvitationSummary.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ConnectionInvitationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionInvitationId, name: "Id", traits: {"smithy.api#required" => {}}))
    ConnectionInvitationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionInvitationArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    ConnectionInvitationSummary.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "ConnectionId"))
    ConnectionInvitationSummary.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, name: "ConnectionType", traits: {"smithy.api#required" => {}}))
    ConnectionInvitationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    ConnectionInvitationSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    ConnectionInvitationSummary.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ExpiresAt"))
    ConnectionInvitationSummary.add_member(:other_participant_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantIdentifier, name: "OtherParticipantIdentifier", traits: {"smithy.api#required" => {}}))
    ConnectionInvitationSummary.add_member(:participant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantType, name: "ParticipantType", traits: {"smithy.api#required" => {}}))
    ConnectionInvitationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InvitationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    ConnectionInvitationSummary.type = Types::ConnectionInvitationSummary
    ConnectionInvitationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionInvitationSummary, name: "member"))
    ConnectionSummary.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ConnectionSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "Id", traits: {"smithy.api#required" => {}}))
    ConnectionSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    ConnectionSummary.add_member(:other_participant_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "OtherParticipantAccountId", traits: {"smithy.api#required" => {}}))
    ConnectionSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    ConnectionSummary.add_member(:connection_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionTypeSummaryMap, name: "ConnectionTypes", traits: {"smithy.api#required" => {}}))
    ConnectionSummary.type = Types::ConnectionSummary
    ConnectionSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionSummary, name: "member"))
    ConnectionType.add_member(:opportunity_collaboration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPPORTUNITY_COLLABORATION", traits: {"smithy.api#enumValue" => "OPPORTUNITY_COLLABORATION"}))
    ConnectionType.add_member(:subsidiary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBSIDIARY", traits: {"smithy.api#enumValue" => "SUBSIDIARY"}))
    ConnectionTypeDetail.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    ConnectionTypeDetail.add_member(:inviter_email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "InviterEmail", traits: {"smithy.api#required" => {}}))
    ConnectionTypeDetail.add_member(:inviter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveUnicodeString, name: "InviterName", traits: {"smithy.api#required" => {}}))
    ConnectionTypeDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionTypeStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    ConnectionTypeDetail.add_member(:canceled_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CanceledAt"))
    ConnectionTypeDetail.add_member(:canceled_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "CanceledBy"))
    ConnectionTypeDetail.add_member(:other_participant, ::Smithy::Schema::Shapes::MemberShape.new(target: Participant, name: "OtherParticipant", traits: {"smithy.api#required" => {}}))
    ConnectionTypeDetail.type = Types::ConnectionTypeDetail
    ConnectionTypeDetailMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, name: "key"))
    ConnectionTypeDetailMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionTypeDetail, name: "value"))
    ConnectionTypeStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ConnectionTypeStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    ConnectionTypeSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionTypeStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    ConnectionTypeSummary.add_member(:other_participant, ::Smithy::Schema::Shapes::MemberShape.new(target: Participant, name: "OtherParticipant", traits: {"smithy.api#required" => {}}))
    ConnectionTypeSummary.type = Types::ConnectionTypeSummary
    ConnectionTypeSummaryMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, name: "key"))
    ConnectionTypeSummaryMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionTypeSummary, name: "value"))
    CreateConnectionInvitationRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    CreateConnectionInvitationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateConnectionInvitationRequest.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, name: "ConnectionType", traits: {"smithy.api#required" => {}}))
    CreateConnectionInvitationRequest.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "Email", traits: {"smithy.api#required" => {}}))
    CreateConnectionInvitationRequest.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: UnicodeStringIncludingNewLine, name: "Message", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    CreateConnectionInvitationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveUnicodeString, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateConnectionInvitationRequest.add_member(:receiver_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantIdentifier, name: "ReceiverIdentifier", traits: {"smithy.api#required" => {}}))
    CreateConnectionInvitationRequest.type = Types::CreateConnectionInvitationRequest
    CreateConnectionInvitationResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    CreateConnectionInvitationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionInvitationId, name: "Id", traits: {"smithy.api#required" => {}}))
    CreateConnectionInvitationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionInvitationArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    CreateConnectionInvitationResponse.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "ConnectionId"))
    CreateConnectionInvitationResponse.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, name: "ConnectionType", traits: {"smithy.api#required" => {}}))
    CreateConnectionInvitationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    CreateConnectionInvitationResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    CreateConnectionInvitationResponse.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ExpiresAt"))
    CreateConnectionInvitationResponse.add_member(:other_participant_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantIdentifier, name: "OtherParticipantIdentifier", traits: {"smithy.api#required" => {}}))
    CreateConnectionInvitationResponse.add_member(:participant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantType, name: "ParticipantType", traits: {"smithy.api#required" => {}}))
    CreateConnectionInvitationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InvitationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    CreateConnectionInvitationResponse.add_member(:invitation_message, ::Smithy::Schema::Shapes::MemberShape.new(target: UnicodeStringIncludingNewLine, name: "InvitationMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    CreateConnectionInvitationResponse.add_member(:inviter_email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "InviterEmail", traits: {"smithy.api#required" => {}}))
    CreateConnectionInvitationResponse.add_member(:inviter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveUnicodeString, name: "InviterName", traits: {"smithy.api#required" => {}}))
    CreateConnectionInvitationResponse.type = Types::CreateConnectionInvitationResponse
    CreatePartnerRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    CreatePartnerRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreatePartnerRequest.add_member(:legal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveUnicodeString, name: "LegalName", traits: {"smithy.api#required" => {}}))
    CreatePartnerRequest.add_member(:primary_solution_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimarySolutionType, name: "PrimarySolutionType", traits: {"smithy.api#required" => {}}))
    CreatePartnerRequest.add_member(:alliance_lead_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: AllianceLeadContact, name: "AllianceLeadContact", traits: {"smithy.api#required" => {}}))
    CreatePartnerRequest.add_member(:email_verification_code, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailVerificationCode, name: "EmailVerificationCode", traits: {"smithy.api#required" => {}}))
    CreatePartnerRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreatePartnerRequest.type = Types::CreatePartnerRequest
    CreatePartnerResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    CreatePartnerResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    CreatePartnerResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerId, name: "Id", traits: {"smithy.api#required" => {}}))
    CreatePartnerResponse.add_member(:legal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveUnicodeString, name: "LegalName", traits: {"smithy.api#required" => {}}))
    CreatePartnerResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    CreatePartnerResponse.add_member(:profile, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerProfile, name: "Profile", traits: {"smithy.api#required" => {}}))
    CreatePartnerResponse.add_member(:aws_training_certification_email_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerDomainList, name: "AwsTrainingCertificationEmailDomains"))
    CreatePartnerResponse.add_member(:alliance_lead_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: AllianceLeadContact, name: "AllianceLeadContact", traits: {"smithy.api#required" => {}}))
    CreatePartnerResponse.type = Types::CreatePartnerResponse
    DisassociateAwsTrainingCertificationEmailDomainRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    DisassociateAwsTrainingCertificationEmailDomainRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    DisassociateAwsTrainingCertificationEmailDomainRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DisassociateAwsTrainingCertificationEmailDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "DomainName", traits: {"smithy.api#required" => {}}))
    DisassociateAwsTrainingCertificationEmailDomainRequest.type = Types::DisassociateAwsTrainingCertificationEmailDomainRequest
    DisassociateAwsTrainingCertificationEmailDomainResponse.type = Types::DisassociateAwsTrainingCertificationEmailDomainResponse
    ErrorDetail.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Locale", traits: {"smithy.api#required" => {}}))
    ErrorDetail.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ErrorDetail.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileValidationErrorReason, name: "Reason", traits: {"smithy.api#required" => {}}))
    ErrorDetail.type = Types::ErrorDetail
    ErrorDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, name: "member"))
    FieldValidationCode.add_member(:required_field_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRED_FIELD_MISSING", traits: {"smithy.api#enumValue" => "REQUIRED_FIELD_MISSING"}))
    FieldValidationCode.add_member(:duplicate_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUPLICATE_VALUE", traits: {"smithy.api#enumValue" => "DUPLICATE_VALUE"}))
    FieldValidationCode.add_member(:invalid_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_VALUE", traits: {"smithy.api#enumValue" => "INVALID_VALUE"}))
    FieldValidationCode.add_member(:invalid_string_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_STRING_FORMAT", traits: {"smithy.api#enumValue" => "INVALID_STRING_FORMAT"}))
    FieldValidationCode.add_member(:too_many_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOO_MANY_VALUES", traits: {"smithy.api#enumValue" => "TOO_MANY_VALUES"}))
    FieldValidationCode.add_member(:action_not_permitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTION_NOT_PERMITTED", traits: {"smithy.api#enumValue" => "ACTION_NOT_PERMITTED"}))
    FieldValidationCode.add_member(:invalid_enum_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ENUM_VALUE", traits: {"smithy.api#enumValue" => "INVALID_ENUM_VALUE"}))
    FieldValidationError.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#required" => {}}))
    FieldValidationError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    FieldValidationError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldValidationCode, name: "Code", traits: {"smithy.api#required" => {}}))
    FieldValidationError.type = Types::FieldValidationError
    GetAllianceLeadContactRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetAllianceLeadContactRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    GetAllianceLeadContactRequest.type = Types::GetAllianceLeadContactRequest
    GetAllianceLeadContactResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetAllianceLeadContactResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetAllianceLeadContactResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerId, name: "Id", traits: {"smithy.api#required" => {}}))
    GetAllianceLeadContactResponse.add_member(:alliance_lead_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: AllianceLeadContact, name: "AllianceLeadContact", traits: {"smithy.api#required" => {}}))
    GetAllianceLeadContactResponse.type = Types::GetAllianceLeadContactResponse
    GetConnectionInvitationRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetConnectionInvitationRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionInvitationId, name: "Identifier", traits: {"smithy.api#required" => {}}))
    GetConnectionInvitationRequest.type = Types::GetConnectionInvitationRequest
    GetConnectionInvitationResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetConnectionInvitationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionInvitationId, name: "Id", traits: {"smithy.api#required" => {}}))
    GetConnectionInvitationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionInvitationArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetConnectionInvitationResponse.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "ConnectionId"))
    GetConnectionInvitationResponse.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, name: "ConnectionType", traits: {"smithy.api#required" => {}}))
    GetConnectionInvitationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    GetConnectionInvitationResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    GetConnectionInvitationResponse.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ExpiresAt"))
    GetConnectionInvitationResponse.add_member(:other_participant_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantIdentifier, name: "OtherParticipantIdentifier", traits: {"smithy.api#required" => {}}))
    GetConnectionInvitationResponse.add_member(:participant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantType, name: "ParticipantType", traits: {"smithy.api#required" => {}}))
    GetConnectionInvitationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InvitationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    GetConnectionInvitationResponse.add_member(:invitation_message, ::Smithy::Schema::Shapes::MemberShape.new(target: UnicodeStringIncludingNewLine, name: "InvitationMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    GetConnectionInvitationResponse.add_member(:inviter_email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "InviterEmail", traits: {"smithy.api#required" => {}}))
    GetConnectionInvitationResponse.add_member(:inviter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveUnicodeString, name: "InviterName", traits: {"smithy.api#required" => {}}))
    GetConnectionInvitationResponse.type = Types::GetConnectionInvitationResponse
    GetConnectionPreferencesRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetConnectionPreferencesRequest.type = Types::GetConnectionPreferencesRequest
    GetConnectionPreferencesResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetConnectionPreferencesResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionPreferencesArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetConnectionPreferencesResponse.add_member(:access_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessType, name: "AccessType", traits: {"smithy.api#required" => {}}))
    GetConnectionPreferencesResponse.add_member(:excluded_participant_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantIdentifierList, name: "ExcludedParticipantIds"))
    GetConnectionPreferencesResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    GetConnectionPreferencesResponse.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Revision, name: "Revision", traits: {"smithy.api#required" => {}}))
    GetConnectionPreferencesResponse.type = Types::GetConnectionPreferencesResponse
    GetConnectionRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetConnectionRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "Identifier", traits: {"smithy.api#required" => {}}))
    GetConnectionRequest.type = Types::GetConnectionRequest
    GetConnectionResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetConnectionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "Id", traits: {"smithy.api#required" => {}}))
    GetConnectionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetConnectionResponse.add_member(:other_participant_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "OtherParticipantAccountId", traits: {"smithy.api#required" => {}}))
    GetConnectionResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    GetConnectionResponse.add_member(:connection_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionTypeDetailMap, name: "ConnectionTypes", traits: {"smithy.api#required" => {}}))
    GetConnectionResponse.type = Types::GetConnectionResponse
    GetPartnerRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetPartnerRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    GetPartnerRequest.type = Types::GetPartnerRequest
    GetPartnerResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetPartnerResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetPartnerResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerId, name: "Id", traits: {"smithy.api#required" => {}}))
    GetPartnerResponse.add_member(:legal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveUnicodeString, name: "LegalName", traits: {"smithy.api#required" => {}}))
    GetPartnerResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    GetPartnerResponse.add_member(:profile, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerProfile, name: "Profile", traits: {"smithy.api#required" => {}}))
    GetPartnerResponse.add_member(:aws_training_certification_email_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerDomainList, name: "AwsTrainingCertificationEmailDomains"))
    GetPartnerResponse.type = Types::GetPartnerResponse
    GetProfileUpdateTaskRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetProfileUpdateTaskRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    GetProfileUpdateTaskRequest.type = Types::GetProfileUpdateTaskRequest
    GetProfileUpdateTaskResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetProfileUpdateTaskResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetProfileUpdateTaskResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerId, name: "Id", traits: {"smithy.api#required" => {}}))
    GetProfileUpdateTaskResponse.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileTaskId, name: "TaskId", traits: {"smithy.api#required" => {}}))
    GetProfileUpdateTaskResponse.add_member(:task_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDetails, name: "TaskDetails", traits: {"smithy.api#required" => {}}))
    GetProfileUpdateTaskResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartedAt", traits: {"smithy.api#required" => {}}))
    GetProfileUpdateTaskResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileTaskStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    GetProfileUpdateTaskResponse.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "EndedAt"))
    GetProfileUpdateTaskResponse.add_member(:error_detail_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetailList, name: "ErrorDetailList"))
    GetProfileUpdateTaskResponse.type = Types::GetProfileUpdateTaskResponse
    GetProfileVisibilityRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetProfileVisibilityRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    GetProfileVisibilityRequest.type = Types::GetProfileVisibilityRequest
    GetProfileVisibilityResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetProfileVisibilityResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetProfileVisibilityResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerId, name: "Id", traits: {"smithy.api#required" => {}}))
    GetProfileVisibilityResponse.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVisibility, name: "Visibility", traits: {"smithy.api#required" => {}}))
    GetProfileVisibilityResponse.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerProfileId, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    GetProfileVisibilityResponse.type = Types::GetProfileVisibilityResponse
    GetQualificationsAssociationDetailsRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetQualificationsAssociationDetailsRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    GetQualificationsAssociationDetailsRequest.type = Types::GetQualificationsAssociationDetailsRequest
    GetQualificationsAssociationDetailsResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetQualificationsAssociationDetailsResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetQualificationsAssociationDetailsResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerId, name: "Id", traits: {"smithy.api#required" => {}}))
    GetQualificationsAssociationDetailsResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationsAssociationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    GetQualificationsAssociationDetailsResponse.add_member(:primary_partner, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationsAssociationPartner, name: "PrimaryPartner"))
    GetQualificationsAssociationDetailsResponse.add_member(:associated_partners, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedPartnerList, name: "AssociatedPartners"))
    GetQualificationsAssociationDetailsResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "UpdatedAt"))
    GetQualificationsAssociationDetailsResponse.type = Types::GetQualificationsAssociationDetailsResponse
    GetQualificationsAssociationTaskRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetQualificationsAssociationTaskRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    GetQualificationsAssociationTaskRequest.type = Types::GetQualificationsAssociationTaskRequest
    GetQualificationsAssociationTaskResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetQualificationsAssociationTaskResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetQualificationsAssociationTaskResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerId, name: "Id", traits: {"smithy.api#required" => {}}))
    GetQualificationsAssociationTaskResponse.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationsAssociationTaskId, name: "TaskId", traits: {"smithy.api#required" => {}}))
    GetQualificationsAssociationTaskResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationsAssociationTaskStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    GetQualificationsAssociationTaskResponse.add_member(:primary_partner, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationsAssociationPartner, name: "PrimaryPartner", traits: {"smithy.api#required" => {}}))
    GetQualificationsAssociationTaskResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartedAt", traits: {"smithy.api#required" => {}}))
    GetQualificationsAssociationTaskResponse.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "EndedAt"))
    GetQualificationsAssociationTaskResponse.type = Types::GetQualificationsAssociationTaskResponse
    GetQualificationsDisassociationTaskRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetQualificationsDisassociationTaskRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    GetQualificationsDisassociationTaskRequest.type = Types::GetQualificationsDisassociationTaskRequest
    GetQualificationsDisassociationTaskResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetQualificationsDisassociationTaskResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetQualificationsDisassociationTaskResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerId, name: "Id", traits: {"smithy.api#required" => {}}))
    GetQualificationsDisassociationTaskResponse.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationsDisassociationTaskId, name: "TaskId", traits: {"smithy.api#required" => {}}))
    GetQualificationsDisassociationTaskResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationsDisassociationTaskStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    GetQualificationsDisassociationTaskResponse.add_member(:associated_partner, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationsAssociationPartner, name: "AssociatedPartner", traits: {"smithy.api#required" => {}}))
    GetQualificationsDisassociationTaskResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartedAt", traits: {"smithy.api#required" => {}}))
    GetQualificationsDisassociationTaskResponse.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "EndedAt"))
    GetQualificationsDisassociationTaskResponse.type = Types::GetQualificationsDisassociationTaskResponse
    GetVerificationRequest.add_member(:verification_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationType, name: "VerificationType", traits: {"smithy.api#required" => {}}))
    GetVerificationRequest.type = Types::GetVerificationRequest
    GetVerificationResponse.add_member(:verification_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationType, name: "VerificationType", traits: {"smithy.api#required" => {}}))
    GetVerificationResponse.add_member(:verification_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationStatus, name: "VerificationStatus", traits: {"smithy.api#required" => {}}))
    GetVerificationResponse.add_member(:verification_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationStatusReason, name: "VerificationStatusReason"))
    GetVerificationResponse.add_member(:verification_response_details, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationResponseDetails, name: "VerificationResponseDetails", traits: {"smithy.api#required" => {}}))
    GetVerificationResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartedAt", traits: {"smithy.api#required" => {}}))
    GetVerificationResponse.add_member(:completed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CompletedAt"))
    GetVerificationResponse.type = Types::GetVerificationResponse
    Headquarters.add_member(:country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "CountryCode", traits: {"smithy.api#required" => {}}))
    Headquarters.add_member(:subdivision_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SubdivisionCode, name: "SubdivisionCode", traits: {"smithy.api#required" => {}}))
    Headquarters.type = Types::Headquarters
    IndustrySegment.add_member(:agriculture_mining, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGRICULTURE_MINING", traits: {"smithy.api#enumValue" => "AGRICULTURE_MINING"}))
    IndustrySegment.add_member(:biotechnology, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BIOTECHNOLOGY", traits: {"smithy.api#enumValue" => "BIOTECHNOLOGY"}))
    IndustrySegment.add_member(:business_consumer_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS_CONSUMER_SERVICES", traits: {"smithy.api#enumValue" => "BUSINESS_CONSUMER_SERVICES"}))
    IndustrySegment.add_member(:business_serv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS_SERV", traits: {"smithy.api#enumValue" => "BUSINESS_SERV"}))
    IndustrySegment.add_member(:communications, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMMUNICATIONS", traits: {"smithy.api#enumValue" => "COMMUNICATIONS"}))
    IndustrySegment.add_member(:computer_hardware, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPUTER_HARDWARE", traits: {"smithy.api#enumValue" => "COMPUTER_HARDWARE"}))
    IndustrySegment.add_member(:computers_electronics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPUTERS_ELECTRONICS", traits: {"smithy.api#enumValue" => "COMPUTERS_ELECTRONICS"}))
    IndustrySegment.add_member(:computer_software, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPUTER_SOFTWARE", traits: {"smithy.api#enumValue" => "COMPUTER_SOFTWARE"}))
    IndustrySegment.add_member(:consumer_goods, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONSUMER_GOODS", traits: {"smithy.api#enumValue" => "CONSUMER_GOODS"}))
    IndustrySegment.add_member(:consumer_related, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONSUMER_RELATED", traits: {"smithy.api#enumValue" => "CONSUMER_RELATED"}))
    IndustrySegment.add_member(:education, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EDUCATION", traits: {"smithy.api#enumValue" => "EDUCATION"}))
    IndustrySegment.add_member(:energy_utilities, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENERGY_UTILITIES", traits: {"smithy.api#enumValue" => "ENERGY_UTILITIES"}))
    IndustrySegment.add_member(:financial_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINANCIAL_SERVICES", traits: {"smithy.api#enumValue" => "FINANCIAL_SERVICES"}))
    IndustrySegment.add_member(:gaming, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GAMING", traits: {"smithy.api#enumValue" => "GAMING"}))
    IndustrySegment.add_member(:government, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GOVERNMENT", traits: {"smithy.api#enumValue" => "GOVERNMENT"}))
    IndustrySegment.add_member(:government_education_public_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GOVERNMENT_EDUCATION_PUBLIC_SERVICES", traits: {"smithy.api#enumValue" => "GOVERNMENT_EDUCATION_PUBLIC_SERVICES"}))
    IndustrySegment.add_member(:healthcare, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALTHCARE", traits: {"smithy.api#enumValue" => "HEALTHCARE"}))
    IndustrySegment.add_member(:healthcare_pharmaceuticals_biotech, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALTHCARE_PHARMACEUTICALS_BIOTECH", traits: {"smithy.api#enumValue" => "HEALTHCARE_PHARMACEUTICALS_BIOTECH"}))
    IndustrySegment.add_member(:industrial_energy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INDUSTRIAL_ENERGY", traits: {"smithy.api#enumValue" => "INDUSTRIAL_ENERGY"}))
    IndustrySegment.add_member(:internet_specific, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNET_SPECIFIC", traits: {"smithy.api#enumValue" => "INTERNET_SPECIFIC"}))
    IndustrySegment.add_member(:life_sciences, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIFE_SCIENCES", traits: {"smithy.api#enumValue" => "LIFE_SCIENCES"}))
    IndustrySegment.add_member(:manufacturing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANUFACTURING", traits: {"smithy.api#enumValue" => "MANUFACTURING"}))
    IndustrySegment.add_member(:media_entertainment_leisure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIA_ENTERTAINMENT_LEISURE", traits: {"smithy.api#enumValue" => "MEDIA_ENTERTAINMENT_LEISURE"}))
    IndustrySegment.add_member(:media_entertainment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIA_ENTERTAINMENT", traits: {"smithy.api#enumValue" => "MEDIA_ENTERTAINMENT"}))
    IndustrySegment.add_member(:medical_health, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDICAL_HEALTH", traits: {"smithy.api#enumValue" => "MEDICAL_HEALTH"}))
    IndustrySegment.add_member(:non_profit_organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NON_PROFIT_ORGANIZATION", traits: {"smithy.api#enumValue" => "NON_PROFIT_ORGANIZATION"}))
    IndustrySegment.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    IndustrySegment.add_member(:professional_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROFESSIONAL_SERVICES", traits: {"smithy.api#enumValue" => "PROFESSIONAL_SERVICES"}))
    IndustrySegment.add_member(:real_estate_construction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REAL_ESTATE_CONSTRUCTION", traits: {"smithy.api#enumValue" => "REAL_ESTATE_CONSTRUCTION"}))
    IndustrySegment.add_member(:retail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETAIL", traits: {"smithy.api#enumValue" => "RETAIL"}))
    IndustrySegment.add_member(:retail_wholesale_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETAIL_WHOLESALE_DISTRIBUTION", traits: {"smithy.api#enumValue" => "RETAIL_WHOLESALE_DISTRIBUTION"}))
    IndustrySegment.add_member(:semiconductor_electr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEMICONDUCTOR_ELECTR", traits: {"smithy.api#enumValue" => "SEMICONDUCTOR_ELECTR"}))
    IndustrySegment.add_member(:software_internet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOFTWARE_INTERNET", traits: {"smithy.api#enumValue" => "SOFTWARE_INTERNET"}))
    IndustrySegment.add_member(:telecommunications, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TELECOMMUNICATIONS", traits: {"smithy.api#enumValue" => "TELECOMMUNICATIONS"}))
    IndustrySegment.add_member(:transportation_logistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSPORTATION_LOGISTICS", traits: {"smithy.api#enumValue" => "TRANSPORTATION_LOGISTICS"}))
    IndustrySegment.add_member(:travel_hospitality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRAVEL_HOSPITALITY", traits: {"smithy.api#enumValue" => "TRAVEL_HOSPITALITY"}))
    IndustrySegment.add_member(:wholesale_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WHOLESALE_DISTRIBUTION", traits: {"smithy.api#enumValue" => "WHOLESALE_DISTRIBUTION"}))
    IndustrySegmentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IndustrySegment, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    InvitationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    InvitationStatus.add_member(:accepted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCEPTED", traits: {"smithy.api#enumValue" => "ACCEPTED"}))
    InvitationStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    InvitationStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    InvitationStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    ListConnectionInvitationsRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ListConnectionInvitationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListConnectionInvitationsRequest.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, name: "ConnectionType"))
    ListConnectionInvitationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 20}))
    ListConnectionInvitationsRequest.add_member(:other_participant_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantIdentifierList, name: "OtherParticipantIdentifiers", traits: {"smithy.api#length" => {"max" => 100}}))
    ListConnectionInvitationsRequest.add_member(:participant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantType, name: "ParticipantType"))
    ListConnectionInvitationsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InvitationStatus, name: "Status"))
    ListConnectionInvitationsRequest.type = Types::ListConnectionInvitationsRequest
    ListConnectionInvitationsResponse.add_member(:connection_invitation_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionInvitationSummaryList, name: "ConnectionInvitationSummaries", traits: {"smithy.api#required" => {}}))
    ListConnectionInvitationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListConnectionInvitationsResponse.type = Types::ListConnectionInvitationsResponse
    ListConnectionsRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ListConnectionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListConnectionsRequest.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionTypeFilter, name: "ConnectionType"))
    ListConnectionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 20}))
    ListConnectionsRequest.add_member(:other_participant_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantIdentifierList, name: "OtherParticipantIdentifiers", traits: {"smithy.api#length" => {"max" => 100}}))
    ListConnectionsRequest.type = Types::ListConnectionsRequest
    ListConnectionsResponse.add_member(:connection_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionSummaryList, name: "ConnectionSummaries", traits: {"smithy.api#required" => {}}))
    ListConnectionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListConnectionsResponse.type = Types::ListConnectionsResponse
    ListPartnersRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ListPartnersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPartnersRequest.type = Types::ListPartnersRequest
    ListPartnersResponse.add_member(:partner_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerSummaryList, name: "PartnerSummaryList", traits: {"smithy.api#required" => {}}))
    ListPartnersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPartnersResponse.type = Types::ListPartnersResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LocalizedContent.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UnicodeString, name: "DisplayName", traits: {"smithy.api#required" => {}}))
    LocalizedContent.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: UnicodeString, name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 600}, "smithy.api#required" => {}}))
    LocalizedContent.add_member(:website_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "WebsiteUrl", traits: {"smithy.api#required" => {}}))
    LocalizedContent.add_member(:logo_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "LogoUrl", traits: {"smithy.api#required" => {}}))
    LocalizedContent.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "Locale", traits: {"smithy.api#required" => {}}))
    LocalizedContent.type = Types::LocalizedContent
    LocalizedContentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalizedContent, name: "member"))
    Participant.add_member(:partner_profile, Types::Participant::PartnerProfile, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerProfileSummary, name: "PartnerProfile"))
    Participant.add_member(:seller_profile, Types::Participant::SellerProfile, ::Smithy::Schema::Shapes::MemberShape.new(target: SellerProfileSummary, name: "SellerProfile"))
    Participant.add_member(:account, Types::Participant::Account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSummary, name: "Account"))
    Participant.add_member(:unknown, Types::Participant::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Participant.type = Types::Participant
    ParticipantIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantIdentifier, name: "member"))
    ParticipantType.add_member(:sender, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SENDER", traits: {"smithy.api#enumValue" => "SENDER"}))
    ParticipantType.add_member(:receiver, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECEIVER", traits: {"smithy.api#enumValue" => "RECEIVER"}))
    PartnerDomain.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "DomainName", traits: {"smithy.api#required" => {}}))
    PartnerDomain.add_member(:registered_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "RegisteredAt", traits: {"smithy.api#required" => {}}))
    PartnerDomain.type = Types::PartnerDomain
    PartnerDomainList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerDomain, name: "member"))
    PartnerProfile.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UnicodeString, name: "DisplayName", traits: {"smithy.api#required" => {}}))
    PartnerProfile.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: UnicodeString, name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 600}, "smithy.api#required" => {}}))
    PartnerProfile.add_member(:website_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "WebsiteUrl", traits: {"smithy.api#required" => {}}))
    PartnerProfile.add_member(:logo_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "LogoUrl", traits: {"smithy.api#required" => {}}))
    PartnerProfile.add_member(:primary_solution_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimarySolutionType, name: "PrimarySolutionType", traits: {"smithy.api#required" => {}}))
    PartnerProfile.add_member(:industry_segments, ::Smithy::Schema::Shapes::MemberShape.new(target: IndustrySegmentList, name: "IndustrySegments", traits: {"smithy.api#required" => {}}))
    PartnerProfile.add_member(:translation_source_locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "TranslationSourceLocale", traits: {"smithy.api#required" => {}}))
    PartnerProfile.add_member(:localized_contents, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalizedContentList, name: "LocalizedContents"))
    PartnerProfile.add_member(:headquarters, ::Smithy::Schema::Shapes::MemberShape.new(target: Headquarters, name: "Headquarters"))
    PartnerProfile.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerProfileId, name: "ProfileId"))
    PartnerProfile.type = Types::PartnerProfile
    PartnerProfileSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerProfileId, name: "Id", traits: {"smithy.api#required" => {}}))
    PartnerProfileSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: UnicodeString, name: "Name", traits: {"smithy.api#required" => {}}))
    PartnerProfileSummary.type = Types::PartnerProfileSummary
    PartnerSummary.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    PartnerSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    PartnerSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerId, name: "Id", traits: {"smithy.api#required" => {}}))
    PartnerSummary.add_member(:legal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveUnicodeString, name: "LegalName", traits: {"smithy.api#required" => {}}))
    PartnerSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    PartnerSummary.type = Types::PartnerSummary
    PartnerSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerSummary, name: "member"))
    PrimarySolutionType.add_member(:software_products, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOFTWARE_PRODUCTS", traits: {"smithy.api#enumValue" => "SOFTWARE_PRODUCTS"}))
    PrimarySolutionType.add_member(:consulting_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONSULTING_SERVICES", traits: {"smithy.api#enumValue" => "CONSULTING_SERVICES"}))
    PrimarySolutionType.add_member(:professional_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROFESSIONAL_SERVICES", traits: {"smithy.api#enumValue" => "PROFESSIONAL_SERVICES"}))
    PrimarySolutionType.add_member(:managed_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED_SERVICES", traits: {"smithy.api#enumValue" => "MANAGED_SERVICES"}))
    PrimarySolutionType.add_member(:hardware_products, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HARDWARE_PRODUCTS", traits: {"smithy.api#enumValue" => "HARDWARE_PRODUCTS"}))
    PrimarySolutionType.add_member(:communication_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMMUNICATION_SERVICES", traits: {"smithy.api#enumValue" => "COMMUNICATION_SERVICES"}))
    PrimarySolutionType.add_member(:value_added_resale_aws_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALUE_ADDED_RESALE_AWS_SERVICES", traits: {"smithy.api#enumValue" => "VALUE_ADDED_RESALE_AWS_SERVICES"}))
    PrimarySolutionType.add_member(:training_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRAINING_SERVICES", traits: {"smithy.api#enumValue" => "TRAINING_SERVICES"}))
    ProfileTaskStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ProfileTaskStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    ProfileTaskStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ProfileTaskStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ProfileValidationErrorReason.add_member(:invalid_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_CONTENT", traits: {"smithy.api#enumValue" => "INVALID_CONTENT"}))
    ProfileValidationErrorReason.add_member(:duplicate_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUPLICATE_PROFILE", traits: {"smithy.api#enumValue" => "DUPLICATE_PROFILE"}))
    ProfileValidationErrorReason.add_member(:invalid_logo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_LOGO", traits: {"smithy.api#enumValue" => "INVALID_LOGO"}))
    ProfileValidationErrorReason.add_member(:invalid_logo_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_LOGO_URL", traits: {"smithy.api#enumValue" => "INVALID_LOGO_URL"}))
    ProfileValidationErrorReason.add_member(:invalid_logo_file, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_LOGO_FILE", traits: {"smithy.api#enumValue" => "INVALID_LOGO_FILE"}))
    ProfileValidationErrorReason.add_member(:invalid_logo_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_LOGO_SIZE", traits: {"smithy.api#enumValue" => "INVALID_LOGO_SIZE"}))
    ProfileValidationErrorReason.add_member(:invalid_website_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_WEBSITE_URL", traits: {"smithy.api#enumValue" => "INVALID_WEBSITE_URL"}))
    ProfileVisibility.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVATE", traits: {"smithy.api#enumValue" => "PRIVATE"}))
    ProfileVisibility.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC", traits: {"smithy.api#enumValue" => "PUBLIC"}))
    PutAllianceLeadContactRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    PutAllianceLeadContactRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    PutAllianceLeadContactRequest.add_member(:alliance_lead_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: AllianceLeadContact, name: "AllianceLeadContact", traits: {"smithy.api#required" => {}}))
    PutAllianceLeadContactRequest.add_member(:email_verification_code, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailVerificationCode, name: "EmailVerificationCode"))
    PutAllianceLeadContactRequest.type = Types::PutAllianceLeadContactRequest
    PutAllianceLeadContactResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    PutAllianceLeadContactResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    PutAllianceLeadContactResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerId, name: "Id", traits: {"smithy.api#required" => {}}))
    PutAllianceLeadContactResponse.add_member(:alliance_lead_contact, ::Smithy::Schema::Shapes::MemberShape.new(target: AllianceLeadContact, name: "AllianceLeadContact", traits: {"smithy.api#required" => {}}))
    PutAllianceLeadContactResponse.type = Types::PutAllianceLeadContactResponse
    PutProfileVisibilityRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    PutProfileVisibilityRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    PutProfileVisibilityRequest.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVisibility, name: "Visibility", traits: {"smithy.api#required" => {}}))
    PutProfileVisibilityRequest.type = Types::PutProfileVisibilityRequest
    PutProfileVisibilityResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    PutProfileVisibilityResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    PutProfileVisibilityResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerId, name: "Id", traits: {"smithy.api#required" => {}}))
    PutProfileVisibilityResponse.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileVisibility, name: "Visibility", traits: {"smithy.api#required" => {}}))
    PutProfileVisibilityResponse.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerProfileId, name: "ProfileId", traits: {"smithy.api#required" => {}}))
    PutProfileVisibilityResponse.type = Types::PutProfileVisibilityResponse
    QualificationsAssociationPartner.add_member(:profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerProfileId, name: "ProfileId"))
    QualificationsAssociationPartner.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "AccountId"))
    QualificationsAssociationPartner.type = Types::QualificationsAssociationPartner
    QualificationsAssociationStatus.add_member(:associated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSOCIATED", traits: {"smithy.api#enumValue" => "ASSOCIATED"}))
    QualificationsAssociationStatus.add_member(:not_associated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_ASSOCIATED", traits: {"smithy.api#enumValue" => "NOT_ASSOCIATED"}))
    QualificationsAssociationTaskStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    QualificationsAssociationTaskStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    QualificationsDisassociationTaskStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    QualificationsDisassociationTaskStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    RegistrantVerificationDetails.type = Types::RegistrantVerificationDetails
    RegistrantVerificationResponse.add_member(:completion_url, ::Smithy::Schema::Shapes::MemberShape.new(target: CompletionUrl, name: "CompletionUrl", traits: {"smithy.api#required" => {}}))
    RegistrantVerificationResponse.add_member(:completion_url_expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CompletionUrlExpiresAt", traits: {"smithy.api#required" => {}}))
    RegistrantVerificationResponse.type = Types::RegistrantVerificationResponse
    RejectConnectionInvitationRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    RejectConnectionInvitationRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionInvitationId, name: "Identifier", traits: {"smithy.api#required" => {}}))
    RejectConnectionInvitationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    RejectConnectionInvitationRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Reason", traits: {"smithy.api#length" => {"max" => 256}}))
    RejectConnectionInvitationRequest.type = Types::RejectConnectionInvitationRequest
    RejectConnectionInvitationResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    RejectConnectionInvitationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionInvitationId, name: "Id", traits: {"smithy.api#required" => {}}))
    RejectConnectionInvitationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionInvitationArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    RejectConnectionInvitationResponse.add_member(:connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionId, name: "ConnectionId"))
    RejectConnectionInvitationResponse.add_member(:connection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, name: "ConnectionType", traits: {"smithy.api#required" => {}}))
    RejectConnectionInvitationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    RejectConnectionInvitationResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    RejectConnectionInvitationResponse.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ExpiresAt"))
    RejectConnectionInvitationResponse.add_member(:other_participant_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantIdentifier, name: "OtherParticipantIdentifier", traits: {"smithy.api#required" => {}}))
    RejectConnectionInvitationResponse.add_member(:participant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantType, name: "ParticipantType", traits: {"smithy.api#required" => {}}))
    RejectConnectionInvitationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InvitationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    RejectConnectionInvitationResponse.add_member(:invitation_message, ::Smithy::Schema::Shapes::MemberShape.new(target: UnicodeStringIncludingNewLine, name: "InvitationMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    RejectConnectionInvitationResponse.add_member(:inviter_email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "InviterEmail", traits: {"smithy.api#required" => {}}))
    RejectConnectionInvitationResponse.add_member(:inviter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveUnicodeString, name: "InviterName", traits: {"smithy.api#required" => {}}))
    RejectConnectionInvitationResponse.type = Types::RejectConnectionInvitationResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNotFoundExceptionReason, name: "Reason", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceNotFoundExceptionReason.add_member(:partner_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTNER_NOT_FOUND", traits: {"smithy.api#enumValue" => "PARTNER_NOT_FOUND"}))
    ResourceNotFoundExceptionReason.add_member(:partner_profile_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTNER_PROFILE_NOT_FOUND", traits: {"smithy.api#enumValue" => "PARTNER_PROFILE_NOT_FOUND"}))
    ResourceNotFoundExceptionReason.add_member(:partner_profile_task_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTNER_PROFILE_TASK_NOT_FOUND", traits: {"smithy.api#enumValue" => "PARTNER_PROFILE_TASK_NOT_FOUND"}))
    ResourceNotFoundExceptionReason.add_member(:partner_domain_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTNER_DOMAIN_NOT_FOUND", traits: {"smithy.api#enumValue" => "PARTNER_DOMAIN_NOT_FOUND"}))
    ResourceNotFoundExceptionReason.add_member(:sender_profile_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SENDER_PROFILE_NOT_FOUND", traits: {"smithy.api#enumValue" => "SENDER_PROFILE_NOT_FOUND"}))
    ResourceNotFoundExceptionReason.add_member(:receiver_profile_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECEIVER_PROFILE_NOT_FOUND", traits: {"smithy.api#enumValue" => "RECEIVER_PROFILE_NOT_FOUND"}))
    ResourceNotFoundExceptionReason.add_member(:connection_invitation_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTION_INVITATION_NOT_FOUND", traits: {"smithy.api#enumValue" => "CONNECTION_INVITATION_NOT_FOUND"}))
    ResourceNotFoundExceptionReason.add_member(:connection_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTION_NOT_FOUND", traits: {"smithy.api#enumValue" => "CONNECTION_NOT_FOUND"}))
    ResourceNotFoundExceptionReason.add_member(:verification_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERIFICATION_NOT_FOUND", traits: {"smithy.api#enumValue" => "VERIFICATION_NOT_FOUND"}))
    ResourceNotFoundExceptionReason.add_member(:qualifications_association_task_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUALIFICATIONS_ASSOCIATION_TASK_NOT_FOUND", traits: {"smithy.api#enumValue" => "QUALIFICATIONS_ASSOCIATION_TASK_NOT_FOUND"}))
    ResourceNotFoundExceptionReason.add_member(:qualifications_disassociation_task_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUALIFICATIONS_DISASSOCIATION_TASK_NOT_FOUND", traits: {"smithy.api#enumValue" => "QUALIFICATIONS_DISASSOCIATION_TASK_NOT_FOUND"}))
    SellerProfileSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SellerProfileId, name: "Id", traits: {"smithy.api#required" => {}}))
    SellerProfileSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: UnicodeString, name: "Name", traits: {"smithy.api#required" => {}}))
    SellerProfileSummary.type = Types::SellerProfileSummary
    SendEmailVerificationCodeRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    SendEmailVerificationCodeRequest.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "Email", traits: {"smithy.api#required" => {}}))
    SendEmailVerificationCodeRequest.type = Types::SendEmailVerificationCodeRequest
    SendEmailVerificationCodeResponse.type = Types::SendEmailVerificationCodeResponse
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceQuotaExceededExceptionReason, name: "Reason", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceQuotaExceededExceptionReason.add_member(:limit_exceeded_number_of_email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIMIT_EXCEEDED_NUMBER_OF_EMAIL", traits: {"smithy.api#enumValue" => "LIMIT_EXCEEDED_NUMBER_OF_EMAIL"}))
    ServiceQuotaExceededExceptionReason.add_member(:limit_exceeded_number_of_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIMIT_EXCEEDED_NUMBER_OF_DOMAIN", traits: {"smithy.api#enumValue" => "LIMIT_EXCEEDED_NUMBER_OF_DOMAIN"}))
    ServiceQuotaExceededExceptionReason.add_member(:limit_exceeded_number_of_connection_invitation_per_day, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIMIT_EXCEEDED_NUMBER_OF_CONNECTION_INVITATION_PER_DAY", traits: {"smithy.api#enumValue" => "LIMIT_EXCEEDED_NUMBER_OF_CONNECTION_INVITATION_PER_DAY"}))
    ServiceQuotaExceededExceptionReason.add_member(:limit_exceeded_number_of_active_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIMIT_EXCEEDED_NUMBER_OF_ACTIVE_CONNECTION", traits: {"smithy.api#enumValue" => "LIMIT_EXCEEDED_NUMBER_OF_ACTIVE_CONNECTION"}))
    ServiceQuotaExceededExceptionReason.add_member(:limit_exceeded_number_of_open_connection_invitation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIMIT_EXCEEDED_NUMBER_OF_OPEN_CONNECTION_INVITATION", traits: {"smithy.api#enumValue" => "LIMIT_EXCEEDED_NUMBER_OF_OPEN_CONNECTION_INVITATION"}))
    ServiceQuotaExceededExceptionReason.add_member(:limit_exceeded_number_of_profile_update_per_day, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIMIT_EXCEEDED_NUMBER_OF_PROFILE_UPDATE_PER_DAY", traits: {"smithy.api#enumValue" => "LIMIT_EXCEEDED_NUMBER_OF_PROFILE_UPDATE_PER_DAY"}))
    ServiceQuotaExceededExceptionReason.add_member(:limit_exceeded_number_of_profile_visibility_update_per_day, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIMIT_EXCEEDED_NUMBER_OF_PROFILE_VISIBILITY_UPDATE_PER_DAY", traits: {"smithy.api#enumValue" => "LIMIT_EXCEEDED_NUMBER_OF_PROFILE_VISIBILITY_UPDATE_PER_DAY"}))
    StartProfileUpdateTaskRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    StartProfileUpdateTaskRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    StartProfileUpdateTaskRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartProfileUpdateTaskRequest.add_member(:task_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDetails, name: "TaskDetails", traits: {"smithy.api#required" => {}}))
    StartProfileUpdateTaskRequest.type = Types::StartProfileUpdateTaskRequest
    StartProfileUpdateTaskResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    StartProfileUpdateTaskResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    StartProfileUpdateTaskResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerId, name: "Id", traits: {"smithy.api#required" => {}}))
    StartProfileUpdateTaskResponse.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileTaskId, name: "TaskId", traits: {"smithy.api#required" => {}}))
    StartProfileUpdateTaskResponse.add_member(:task_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDetails, name: "TaskDetails", traits: {"smithy.api#required" => {}}))
    StartProfileUpdateTaskResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartedAt", traits: {"smithy.api#required" => {}}))
    StartProfileUpdateTaskResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileTaskStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    StartProfileUpdateTaskResponse.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "EndedAt"))
    StartProfileUpdateTaskResponse.add_member(:error_detail_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetailList, name: "ErrorDetailList"))
    StartProfileUpdateTaskResponse.type = Types::StartProfileUpdateTaskResponse
    StartQualificationsAssociationTaskRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    StartQualificationsAssociationTaskRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    StartQualificationsAssociationTaskRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartQualificationsAssociationTaskRequest.add_member(:primary_partner, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationsAssociationPartner, name: "PrimaryPartner", traits: {"smithy.api#required" => {}}))
    StartQualificationsAssociationTaskRequest.type = Types::StartQualificationsAssociationTaskRequest
    StartQualificationsAssociationTaskResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    StartQualificationsAssociationTaskResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    StartQualificationsAssociationTaskResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerId, name: "Id", traits: {"smithy.api#required" => {}}))
    StartQualificationsAssociationTaskResponse.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationsAssociationTaskId, name: "TaskId", traits: {"smithy.api#required" => {}}))
    StartQualificationsAssociationTaskResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationsAssociationTaskStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    StartQualificationsAssociationTaskResponse.add_member(:primary_partner, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationsAssociationPartner, name: "PrimaryPartner", traits: {"smithy.api#required" => {}}))
    StartQualificationsAssociationTaskResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartedAt", traits: {"smithy.api#required" => {}}))
    StartQualificationsAssociationTaskResponse.type = Types::StartQualificationsAssociationTaskResponse
    StartQualificationsDisassociationTaskRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    StartQualificationsDisassociationTaskRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    StartQualificationsDisassociationTaskRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartQualificationsDisassociationTaskRequest.add_member(:associated_partner, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationsAssociationPartner, name: "AssociatedPartner", traits: {"smithy.api#required" => {}}))
    StartQualificationsDisassociationTaskRequest.type = Types::StartQualificationsDisassociationTaskRequest
    StartQualificationsDisassociationTaskResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    StartQualificationsDisassociationTaskResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    StartQualificationsDisassociationTaskResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerId, name: "Id", traits: {"smithy.api#required" => {}}))
    StartQualificationsDisassociationTaskResponse.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationsDisassociationTaskId, name: "TaskId", traits: {"smithy.api#required" => {}}))
    StartQualificationsDisassociationTaskResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationsDisassociationTaskStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    StartQualificationsDisassociationTaskResponse.add_member(:associated_partner, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationsAssociationPartner, name: "AssociatedPartner", traits: {"smithy.api#required" => {}}))
    StartQualificationsDisassociationTaskResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartedAt", traits: {"smithy.api#required" => {}}))
    StartQualificationsDisassociationTaskResponse.type = Types::StartQualificationsDisassociationTaskResponse
    StartVerificationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartVerificationRequest.add_member(:verification_details, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationDetails, name: "VerificationDetails"))
    StartVerificationRequest.type = Types::StartVerificationRequest
    StartVerificationResponse.add_member(:verification_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationType, name: "VerificationType", traits: {"smithy.api#required" => {}}))
    StartVerificationResponse.add_member(:verification_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationStatus, name: "VerificationStatus", traits: {"smithy.api#required" => {}}))
    StartVerificationResponse.add_member(:verification_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationStatusReason, name: "VerificationStatusReason"))
    StartVerificationResponse.add_member(:verification_response_details, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationResponseDetails, name: "VerificationResponseDetails", traits: {"smithy.api#required" => {}}))
    StartVerificationResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartedAt", traits: {"smithy.api#required" => {}}))
    StartVerificationResponse.add_member(:completed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CompletedAt"))
    StartVerificationResponse.type = Types::StartVerificationResponse
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TaskDetails.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UnicodeString, name: "DisplayName", traits: {"smithy.api#required" => {}}))
    TaskDetails.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: UnicodeString, name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 600}, "smithy.api#required" => {}}))
    TaskDetails.add_member(:website_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "WebsiteUrl", traits: {"smithy.api#required" => {}}))
    TaskDetails.add_member(:logo_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "LogoUrl", traits: {"smithy.api#required" => {}}))
    TaskDetails.add_member(:primary_solution_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimarySolutionType, name: "PrimarySolutionType", traits: {"smithy.api#required" => {}}))
    TaskDetails.add_member(:industry_segments, ::Smithy::Schema::Shapes::MemberShape.new(target: IndustrySegmentList, name: "IndustrySegments", traits: {"smithy.api#required" => {}}))
    TaskDetails.add_member(:translation_source_locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "TranslationSourceLocale", traits: {"smithy.api#required" => {}}))
    TaskDetails.add_member(:localized_contents, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalizedContentList, name: "LocalizedContents"))
    TaskDetails.add_member(:headquarters, ::Smithy::Schema::Shapes::MemberShape.new(target: Headquarters, name: "Headquarters"))
    TaskDetails.type = Types::TaskDetails
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ServiceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "QuotaCode"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateConnectionPreferencesRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    UpdateConnectionPreferencesRequest.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Revision, name: "Revision", traits: {"smithy.api#required" => {}}))
    UpdateConnectionPreferencesRequest.add_member(:access_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessType, name: "AccessType", traits: {"smithy.api#required" => {}}))
    UpdateConnectionPreferencesRequest.add_member(:excluded_participant_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantIdentifierList, name: "ExcludedParticipantIdentifiers", traits: {"smithy.api#length" => {"max" => 100}}))
    UpdateConnectionPreferencesRequest.type = Types::UpdateConnectionPreferencesRequest
    UpdateConnectionPreferencesResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: Catalog, name: "Catalog", traits: {"smithy.api#required" => {}}))
    UpdateConnectionPreferencesResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionPreferencesArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    UpdateConnectionPreferencesResponse.add_member(:access_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessType, name: "AccessType", traits: {"smithy.api#required" => {}}))
    UpdateConnectionPreferencesResponse.add_member(:excluded_participant_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantIdentifierList, name: "ExcludedParticipantIds"))
    UpdateConnectionPreferencesResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    UpdateConnectionPreferencesResponse.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Revision, name: "Revision", traits: {"smithy.api#required" => {}}))
    UpdateConnectionPreferencesResponse.type = Types::UpdateConnectionPreferencesResponse
    ValidationError.add_member(:field_validation_error, Types::ValidationError::FieldValidationError, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldValidationError, name: "FieldValidationError"))
    ValidationError.add_member(:business_validation_error, Types::ValidationError::BusinessValidationError, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessValidationError, name: "BusinessValidationError"))
    ValidationError.add_member(:unknown, Types::ValidationError::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ValidationError.type = Types::ValidationError
    ValidationErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationError, name: "member"))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "Reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationErrorList, name: "ErrorDetails"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:request_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUEST_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "REQUEST_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:business_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "BUSINESS_VALIDATION_FAILED"}))
    VerificationDetails.add_member(:business_verification_details, Types::VerificationDetails::BusinessVerificationDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessVerificationDetails, name: "BusinessVerificationDetails"))
    VerificationDetails.add_member(:registrant_verification_details, Types::VerificationDetails::RegistrantVerificationDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrantVerificationDetails, name: "RegistrantVerificationDetails"))
    VerificationDetails.add_member(:unknown, Types::VerificationDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    VerificationDetails.type = Types::VerificationDetails
    VerificationResponseDetails.add_member(:business_verification_response, Types::VerificationResponseDetails::BusinessVerificationResponse, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessVerificationResponse, name: "BusinessVerificationResponse"))
    VerificationResponseDetails.add_member(:registrant_verification_response, Types::VerificationResponseDetails::RegistrantVerificationResponse, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrantVerificationResponse, name: "RegistrantVerificationResponse"))
    VerificationResponseDetails.add_member(:unknown, Types::VerificationResponseDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    VerificationResponseDetails.type = Types::VerificationResponseDetails
    VerificationStatus.add_member(:pending_customer_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_CUSTOMER_ACTION", traits: {"smithy.api#enumValue" => "PENDING_CUSTOMER_ACTION"}))
    VerificationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    VerificationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    VerificationStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    VerificationStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    VerificationType.add_member(:business_verification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS_VERIFICATION", traits: {"smithy.api#enumValue" => "BUSINESS_VERIFICATION"}))
    VerificationType.add_member(:registrant_verification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTRANT_VERIFICATION", traits: {"smithy.api#enumValue" => "REGISTRANT_VERIFICATION"}))

    PartnerCentralAccount = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.partnercentralaccount#PartnerCentralAccount"
      service.name = "PartnerCentralAccount"
      service.version = "2025-04-04"
      service.traits = {"aws.api#service" => {"sdkId" => "PartnerCentral Account", "endpointPrefix" => "partnercentral-account", "arnNamespace" => "partnercentral", "cloudTrailEventSource" => "partnercentral-account.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "partnercentral-account"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Partner Central Account API", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://partnercentral-account-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://partnercentral-account.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEFAAAAAgAAAAUF9eEFAAAAAwX14QMF9eEEAAAAAwX14QEF9eEC"}}
      service.add_operation(:accept_connection_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#AcceptConnectionInvitation"
        operation.name = "AcceptConnectionInvitation"
        operation.input = AcceptConnectionInvitationRequest
        operation.output = AcceptConnectionInvitationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:associate_aws_training_certification_email_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#AssociateAwsTrainingCertificationEmailDomain"
        operation.name = "AssociateAwsTrainingCertificationEmailDomain"
        operation.input = AssociateAwsTrainingCertificationEmailDomainRequest
        operation.output = AssociateAwsTrainingCertificationEmailDomainResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:cancel_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#CancelConnection"
        operation.name = "CancelConnection"
        operation.input = CancelConnectionRequest
        operation.output = CancelConnectionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:cancel_connection_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#CancelConnectionInvitation"
        operation.name = "CancelConnectionInvitation"
        operation.input = CancelConnectionInvitationRequest
        operation.output = CancelConnectionInvitationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:cancel_profile_update_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#CancelProfileUpdateTask"
        operation.name = "CancelProfileUpdateTask"
        operation.input = CancelProfileUpdateTaskRequest
        operation.output = CancelProfileUpdateTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_connection_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#CreateConnectionInvitation"
        operation.name = "CreateConnectionInvitation"
        operation.input = CreateConnectionInvitationRequest
        operation.output = CreateConnectionInvitationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_partner, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#CreatePartner"
        operation.name = "CreatePartner"
        operation.input = CreatePartnerRequest
        operation.output = CreatePartnerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_aws_training_certification_email_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#DisassociateAwsTrainingCertificationEmailDomain"
        operation.name = "DisassociateAwsTrainingCertificationEmailDomain"
        operation.input = DisassociateAwsTrainingCertificationEmailDomainRequest
        operation.output = DisassociateAwsTrainingCertificationEmailDomainResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_alliance_lead_contact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#GetAllianceLeadContact"
        operation.name = "GetAllianceLeadContact"
        operation.input = GetAllianceLeadContactRequest
        operation.output = GetAllianceLeadContactResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#GetConnection"
        operation.name = "GetConnection"
        operation.input = GetConnectionRequest
        operation.output = GetConnectionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_connection_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#GetConnectionInvitation"
        operation.name = "GetConnectionInvitation"
        operation.input = GetConnectionInvitationRequest
        operation.output = GetConnectionInvitationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_connection_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#GetConnectionPreferences"
        operation.name = "GetConnectionPreferences"
        operation.input = GetConnectionPreferencesRequest
        operation.output = GetConnectionPreferencesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_partner, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#GetPartner"
        operation.name = "GetPartner"
        operation.input = GetPartnerRequest
        operation.output = GetPartnerResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetPartnerFailsWithInvalidIdentifier", "params" => {"Catalog" => "AWS", "Identifier" => "partner-0123456789abc"}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_profile_update_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#GetProfileUpdateTask"
        operation.name = "GetProfileUpdateTask"
        operation.input = GetProfileUpdateTaskRequest
        operation.output = GetProfileUpdateTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_profile_visibility, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#GetProfileVisibility"
        operation.name = "GetProfileVisibility"
        operation.input = GetProfileVisibilityRequest
        operation.output = GetProfileVisibilityResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_qualifications_association_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#GetQualificationsAssociationDetails"
        operation.name = "GetQualificationsAssociationDetails"
        operation.input = GetQualificationsAssociationDetailsRequest
        operation.output = GetQualificationsAssociationDetailsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_qualifications_association_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#GetQualificationsAssociationTask"
        operation.name = "GetQualificationsAssociationTask"
        operation.input = GetQualificationsAssociationTaskRequest
        operation.output = GetQualificationsAssociationTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_qualifications_disassociation_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#GetQualificationsDisassociationTask"
        operation.name = "GetQualificationsDisassociationTask"
        operation.input = GetQualificationsDisassociationTaskRequest
        operation.output = GetQualificationsDisassociationTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_verification, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#GetVerification"
        operation.name = "GetVerification"
        operation.input = GetVerificationRequest
        operation.output = GetVerificationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_connection_invitations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#ListConnectionInvitations"
        operation.name = "ListConnectionInvitations"
        operation.input = ListConnectionInvitationsRequest
        operation.output = ListConnectionInvitationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConnectionInvitations.new
      end)
      service.add_operation(:list_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#ListConnections"
        operation.name = "ListConnections"
        operation.input = ListConnectionsRequest
        operation.output = ListConnectionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConnections.new
      end)
      service.add_operation(:list_partners, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#ListPartners"
        operation.name = "ListPartners"
        operation.input = ListPartnersRequest
        operation.output = ListPartnersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPartners.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListTagsFailsWithInvalidArn", "params" => {"ResourceArn" => "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/partner-0123456789abc"}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:put_alliance_lead_contact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#PutAllianceLeadContact"
        operation.name = "PutAllianceLeadContact"
        operation.input = PutAllianceLeadContactRequest
        operation.output = PutAllianceLeadContactResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_profile_visibility, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#PutProfileVisibility"
        operation.name = "PutProfileVisibility"
        operation.input = PutProfileVisibilityRequest
        operation.output = PutProfileVisibilityResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:reject_connection_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#RejectConnectionInvitation"
        operation.name = "RejectConnectionInvitation"
        operation.input = RejectConnectionInvitationRequest
        operation.output = RejectConnectionInvitationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:send_email_verification_code, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#SendEmailVerificationCode"
        operation.name = "SendEmailVerificationCode"
        operation.input = SendEmailVerificationCodeRequest
        operation.output = SendEmailVerificationCodeResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:start_profile_update_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#StartProfileUpdateTask"
        operation.name = "StartProfileUpdateTask"
        operation.input = StartProfileUpdateTaskRequest
        operation.output = StartProfileUpdateTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_qualifications_association_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#StartQualificationsAssociationTask"
        operation.name = "StartQualificationsAssociationTask"
        operation.input = StartQualificationsAssociationTaskRequest
        operation.output = StartQualificationsAssociationTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_qualifications_disassociation_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#StartQualificationsDisassociationTask"
        operation.name = "StartQualificationsDisassociationTask"
        operation.input = StartQualificationsDisassociationTaskRequest
        operation.output = StartQualificationsDisassociationTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_verification, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#StartVerification"
        operation.name = "StartVerification"
        operation.input = StartVerificationRequest
        operation.output = StartVerificationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "TagResourceFailsWithInvalidArn", "params" => {"ResourceArn" => "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/partner-0123456789abc", "Tags" => [{"Key" => "SmokeTestKey", "Value" => "SmokeTestValue"}]}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "UntagResourceFailsWithInvalidArn", "params" => {"ResourceArn" => "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/partner-0123456789abc", "TagKeys" => ["SmokeTestKey"]}, "expect" => {"failure" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:update_connection_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralaccount#UpdateConnectionPreferences"
        operation.name = "UpdateConnectionPreferences"
        operation.input = UpdateConnectionPreferencesRequest
        operation.output = UpdateConnectionPreferencesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
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

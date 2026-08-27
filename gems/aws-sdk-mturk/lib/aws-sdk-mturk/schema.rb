# frozen_string_literal: true

# This is generated code!

module Aws::MTurk
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptQualificationRequestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#AcceptQualificationRequestRequest", name: "AcceptQualificationRequestRequest")
    AcceptQualificationRequestResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#AcceptQualificationRequestResponse", name: "AcceptQualificationRequestResponse")
    ApproveAssignmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ApproveAssignmentRequest", name: "ApproveAssignmentRequest")
    ApproveAssignmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ApproveAssignmentResponse", name: "ApproveAssignmentResponse")
    Assignment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#Assignment", name: "Assignment")
    AssignmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mturk#AssignmentList", name: "AssignmentList")
    AssignmentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mturk#AssignmentStatus", name: "AssignmentStatus")
    AssignmentStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mturk#AssignmentStatusList", name: "AssignmentStatusList")
    AssociateQualificationWithWorkerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#AssociateQualificationWithWorkerRequest", name: "AssociateQualificationWithWorkerRequest")
    AssociateQualificationWithWorkerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#AssociateQualificationWithWorkerResponse", name: "AssociateQualificationWithWorkerResponse")
    BonusPayment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#BonusPayment", name: "BonusPayment")
    BonusPaymentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mturk#BonusPaymentList", name: "BonusPaymentList")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.mturk#Boolean", name: "Boolean")
    Comparator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mturk#Comparator", name: "Comparator")
    CountryParameters = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mturk#CountryParameters", name: "CountryParameters", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    CreateAdditionalAssignmentsForHITRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#CreateAdditionalAssignmentsForHITRequest", name: "CreateAdditionalAssignmentsForHITRequest")
    CreateAdditionalAssignmentsForHITResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#CreateAdditionalAssignmentsForHITResponse", name: "CreateAdditionalAssignmentsForHITResponse")
    CreateHITRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#CreateHITRequest", name: "CreateHITRequest")
    CreateHITResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#CreateHITResponse", name: "CreateHITResponse")
    CreateHITTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#CreateHITTypeRequest", name: "CreateHITTypeRequest")
    CreateHITTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#CreateHITTypeResponse", name: "CreateHITTypeResponse")
    CreateHITWithHITTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#CreateHITWithHITTypeRequest", name: "CreateHITWithHITTypeRequest")
    CreateHITWithHITTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#CreateHITWithHITTypeResponse", name: "CreateHITWithHITTypeResponse")
    CreateQualificationTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#CreateQualificationTypeRequest", name: "CreateQualificationTypeRequest")
    CreateQualificationTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#CreateQualificationTypeResponse", name: "CreateQualificationTypeResponse")
    CreateWorkerBlockRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#CreateWorkerBlockRequest", name: "CreateWorkerBlockRequest")
    CreateWorkerBlockResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#CreateWorkerBlockResponse", name: "CreateWorkerBlockResponse")
    CurrencyAmount = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mturk#CurrencyAmount", name: "CurrencyAmount", traits: {"smithy.api#pattern" => "^[0-9]+(\\.)?[0-9]{0,2}$"})
    CustomerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mturk#CustomerId", name: "CustomerId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^A[A-Z0-9]+$"})
    CustomerIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mturk#CustomerIdList", name: "CustomerIdList")
    DeleteHITRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#DeleteHITRequest", name: "DeleteHITRequest")
    DeleteHITResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#DeleteHITResponse", name: "DeleteHITResponse")
    DeleteQualificationTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#DeleteQualificationTypeRequest", name: "DeleteQualificationTypeRequest")
    DeleteQualificationTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#DeleteQualificationTypeResponse", name: "DeleteQualificationTypeResponse")
    DeleteWorkerBlockRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#DeleteWorkerBlockRequest", name: "DeleteWorkerBlockRequest")
    DeleteWorkerBlockResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#DeleteWorkerBlockResponse", name: "DeleteWorkerBlockResponse")
    DisassociateQualificationFromWorkerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#DisassociateQualificationFromWorkerRequest", name: "DisassociateQualificationFromWorkerRequest")
    DisassociateQualificationFromWorkerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#DisassociateQualificationFromWorkerResponse", name: "DisassociateQualificationFromWorkerResponse")
    EntityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mturk#EntityId", name: "EntityId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Z0-9]+$"})
    EventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mturk#EventType", name: "EventType")
    EventTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mturk#EventTypeList", name: "EventTypeList")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mturk#ExceptionMessage", name: "ExceptionMessage")
    GetAccountBalanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#GetAccountBalanceRequest", name: "GetAccountBalanceRequest")
    GetAccountBalanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#GetAccountBalanceResponse", name: "GetAccountBalanceResponse")
    GetAssignmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#GetAssignmentRequest", name: "GetAssignmentRequest")
    GetAssignmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#GetAssignmentResponse", name: "GetAssignmentResponse")
    GetFileUploadURLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#GetFileUploadURLRequest", name: "GetFileUploadURLRequest")
    GetFileUploadURLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#GetFileUploadURLResponse", name: "GetFileUploadURLResponse")
    GetHITRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#GetHITRequest", name: "GetHITRequest")
    GetHITResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#GetHITResponse", name: "GetHITResponse")
    GetQualificationScoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#GetQualificationScoreRequest", name: "GetQualificationScoreRequest")
    GetQualificationScoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#GetQualificationScoreResponse", name: "GetQualificationScoreResponse")
    GetQualificationTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#GetQualificationTypeRequest", name: "GetQualificationTypeRequest")
    GetQualificationTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#GetQualificationTypeResponse", name: "GetQualificationTypeResponse")
    HIT = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#HIT", name: "HIT")
    HITAccessActions = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mturk#HITAccessActions", name: "HITAccessActions")
    HITLayoutParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#HITLayoutParameter", name: "HITLayoutParameter")
    HITLayoutParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mturk#HITLayoutParameterList", name: "HITLayoutParameterList")
    HITList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mturk#HITList", name: "HITList")
    HITReviewStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mturk#HITReviewStatus", name: "HITReviewStatus")
    HITStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mturk#HITStatus", name: "HITStatus")
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mturk#IdempotencyToken", name: "IdempotencyToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mturk#Integer", name: "Integer")
    IntegerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mturk#IntegerList", name: "IntegerList")
    ListAssignmentsForHITRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ListAssignmentsForHITRequest", name: "ListAssignmentsForHITRequest")
    ListAssignmentsForHITResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ListAssignmentsForHITResponse", name: "ListAssignmentsForHITResponse")
    ListBonusPaymentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ListBonusPaymentsRequest", name: "ListBonusPaymentsRequest")
    ListBonusPaymentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ListBonusPaymentsResponse", name: "ListBonusPaymentsResponse")
    ListHITsForQualificationTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ListHITsForQualificationTypeRequest", name: "ListHITsForQualificationTypeRequest")
    ListHITsForQualificationTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ListHITsForQualificationTypeResponse", name: "ListHITsForQualificationTypeResponse")
    ListHITsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ListHITsRequest", name: "ListHITsRequest")
    ListHITsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ListHITsResponse", name: "ListHITsResponse")
    ListQualificationRequestsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ListQualificationRequestsRequest", name: "ListQualificationRequestsRequest")
    ListQualificationRequestsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ListQualificationRequestsResponse", name: "ListQualificationRequestsResponse")
    ListQualificationTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ListQualificationTypesRequest", name: "ListQualificationTypesRequest")
    ListQualificationTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ListQualificationTypesResponse", name: "ListQualificationTypesResponse")
    ListReviewPolicyResultsForHITRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ListReviewPolicyResultsForHITRequest", name: "ListReviewPolicyResultsForHITRequest")
    ListReviewPolicyResultsForHITResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ListReviewPolicyResultsForHITResponse", name: "ListReviewPolicyResultsForHITResponse")
    ListReviewableHITsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ListReviewableHITsRequest", name: "ListReviewableHITsRequest")
    ListReviewableHITsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ListReviewableHITsResponse", name: "ListReviewableHITsResponse")
    ListWorkerBlocksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ListWorkerBlocksRequest", name: "ListWorkerBlocksRequest")
    ListWorkerBlocksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ListWorkerBlocksResponse", name: "ListWorkerBlocksResponse")
    ListWorkersWithQualificationTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ListWorkersWithQualificationTypeRequest", name: "ListWorkersWithQualificationTypeRequest")
    ListWorkersWithQualificationTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ListWorkersWithQualificationTypeResponse", name: "ListWorkersWithQualificationTypeResponse")
    Locale = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#Locale", name: "Locale")
    LocaleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mturk#LocaleList", name: "LocaleList")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mturk#Long", name: "Long")
    NotificationSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#NotificationSpecification", name: "NotificationSpecification")
    NotificationTransport = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mturk#NotificationTransport", name: "NotificationTransport")
    NotifyWorkersFailureCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mturk#NotifyWorkersFailureCode", name: "NotifyWorkersFailureCode")
    NotifyWorkersFailureStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#NotifyWorkersFailureStatus", name: "NotifyWorkersFailureStatus")
    NotifyWorkersFailureStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mturk#NotifyWorkersFailureStatusList", name: "NotifyWorkersFailureStatusList")
    NotifyWorkersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#NotifyWorkersRequest", name: "NotifyWorkersRequest")
    NotifyWorkersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#NotifyWorkersResponse", name: "NotifyWorkersResponse")
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mturk#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ParameterMapEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ParameterMapEntry", name: "ParameterMapEntry")
    ParameterMapEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mturk#ParameterMapEntryList", name: "ParameterMapEntryList")
    PolicyParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#PolicyParameter", name: "PolicyParameter")
    PolicyParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mturk#PolicyParameterList", name: "PolicyParameterList")
    Qualification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#Qualification", name: "Qualification")
    QualificationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mturk#QualificationList", name: "QualificationList")
    QualificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#QualificationRequest", name: "QualificationRequest")
    QualificationRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mturk#QualificationRequestList", name: "QualificationRequestList")
    QualificationRequirement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#QualificationRequirement", name: "QualificationRequirement")
    QualificationRequirementList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mturk#QualificationRequirementList", name: "QualificationRequirementList")
    QualificationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mturk#QualificationStatus", name: "QualificationStatus")
    QualificationType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#QualificationType", name: "QualificationType")
    QualificationTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mturk#QualificationTypeList", name: "QualificationTypeList")
    QualificationTypeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mturk#QualificationTypeStatus", name: "QualificationTypeStatus")
    RejectAssignmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#RejectAssignmentRequest", name: "RejectAssignmentRequest")
    RejectAssignmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#RejectAssignmentResponse", name: "RejectAssignmentResponse")
    RejectQualificationRequestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#RejectQualificationRequestRequest", name: "RejectQualificationRequestRequest")
    RejectQualificationRequestResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#RejectQualificationRequestResponse", name: "RejectQualificationRequestResponse")
    RequestError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#RequestError", name: "RequestError", traits: {"aws.protocols#awsQueryError" => {"code" => "RequestError", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResultSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mturk#ResultSize", name: "ResultSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ReviewActionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ReviewActionDetail", name: "ReviewActionDetail")
    ReviewActionDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mturk#ReviewActionDetailList", name: "ReviewActionDetailList")
    ReviewActionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mturk#ReviewActionStatus", name: "ReviewActionStatus")
    ReviewPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ReviewPolicy", name: "ReviewPolicy")
    ReviewPolicyLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mturk#ReviewPolicyLevel", name: "ReviewPolicyLevel")
    ReviewPolicyLevelList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mturk#ReviewPolicyLevelList", name: "ReviewPolicyLevelList")
    ReviewReport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ReviewReport", name: "ReviewReport")
    ReviewResultDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ReviewResultDetail", name: "ReviewResultDetail")
    ReviewResultDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mturk#ReviewResultDetailList", name: "ReviewResultDetailList")
    ReviewableHITStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mturk#ReviewableHITStatus", name: "ReviewableHITStatus")
    SendBonusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#SendBonusRequest", name: "SendBonusRequest")
    SendBonusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#SendBonusResponse", name: "SendBonusResponse")
    SendTestEventNotificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#SendTestEventNotificationRequest", name: "SendTestEventNotificationRequest")
    SendTestEventNotificationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#SendTestEventNotificationResponse", name: "SendTestEventNotificationResponse")
    ServiceFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#ServiceFault", name: "ServiceFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceFault", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mturk#String", name: "String")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mturk#StringList", name: "StringList")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.mturk#Timestamp", name: "Timestamp")
    TurkErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mturk#TurkErrorCode", name: "TurkErrorCode")
    UpdateExpirationForHITRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#UpdateExpirationForHITRequest", name: "UpdateExpirationForHITRequest")
    UpdateExpirationForHITResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#UpdateExpirationForHITResponse", name: "UpdateExpirationForHITResponse")
    UpdateHITReviewStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#UpdateHITReviewStatusRequest", name: "UpdateHITReviewStatusRequest")
    UpdateHITReviewStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#UpdateHITReviewStatusResponse", name: "UpdateHITReviewStatusResponse")
    UpdateHITTypeOfHITRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#UpdateHITTypeOfHITRequest", name: "UpdateHITTypeOfHITRequest")
    UpdateHITTypeOfHITResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#UpdateHITTypeOfHITResponse", name: "UpdateHITTypeOfHITResponse")
    UpdateNotificationSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#UpdateNotificationSettingsRequest", name: "UpdateNotificationSettingsRequest")
    UpdateNotificationSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#UpdateNotificationSettingsResponse", name: "UpdateNotificationSettingsResponse")
    UpdateQualificationTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#UpdateQualificationTypeRequest", name: "UpdateQualificationTypeRequest")
    UpdateQualificationTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#UpdateQualificationTypeResponse", name: "UpdateQualificationTypeResponse")
    WorkerBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mturk#WorkerBlock", name: "WorkerBlock")
    WorkerBlockList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mturk#WorkerBlockList", name: "WorkerBlockList")

    AcceptQualificationRequestRequest.add_member(:qualification_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "QualificationRequestId", traits: {"smithy.api#required" => {}}))
    AcceptQualificationRequestRequest.add_member(:integer_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "IntegerValue"))
    AcceptQualificationRequestRequest.type = Types::AcceptQualificationRequestRequest
    AcceptQualificationRequestResponse.type = Types::AcceptQualificationRequestResponse
    ApproveAssignmentRequest.add_member(:assignment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "AssignmentId", traits: {"smithy.api#required" => {}}))
    ApproveAssignmentRequest.add_member(:requester_feedback, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequesterFeedback"))
    ApproveAssignmentRequest.add_member(:override_rejection, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "OverrideRejection"))
    ApproveAssignmentRequest.type = Types::ApproveAssignmentRequest
    ApproveAssignmentResponse.type = Types::ApproveAssignmentResponse
    Assignment.add_member(:assignment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "AssignmentId"))
    Assignment.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "WorkerId"))
    Assignment.add_member(:hit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "HITId"))
    Assignment.add_member(:assignment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssignmentStatus, name: "AssignmentStatus"))
    Assignment.add_member(:auto_approval_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "AutoApprovalTime"))
    Assignment.add_member(:accept_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "AcceptTime"))
    Assignment.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTime"))
    Assignment.add_member(:approval_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ApprovalTime"))
    Assignment.add_member(:rejection_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "RejectionTime"))
    Assignment.add_member(:deadline, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Deadline"))
    Assignment.add_member(:answer, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Answer"))
    Assignment.add_member(:requester_feedback, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequesterFeedback"))
    Assignment.type = Types::Assignment
    AssignmentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Assignment, name: "member")
    AssignmentStatus.add_member(:submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Submitted", traits: {"smithy.api#enumValue" => "Submitted"}))
    AssignmentStatus.add_member(:approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Approved", traits: {"smithy.api#enumValue" => "Approved"}))
    AssignmentStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Rejected", traits: {"smithy.api#enumValue" => "Rejected"}))
    AssignmentStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssignmentStatus, name: "member")
    AssociateQualificationWithWorkerRequest.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "QualificationTypeId", traits: {"smithy.api#required" => {}}))
    AssociateQualificationWithWorkerRequest.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "WorkerId", traits: {"smithy.api#required" => {}}))
    AssociateQualificationWithWorkerRequest.add_member(:integer_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "IntegerValue"))
    AssociateQualificationWithWorkerRequest.add_member(:send_notification, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SendNotification"))
    AssociateQualificationWithWorkerRequest.type = Types::AssociateQualificationWithWorkerRequest
    AssociateQualificationWithWorkerResponse.type = Types::AssociateQualificationWithWorkerResponse
    BonusPayment.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "WorkerId"))
    BonusPayment.add_member(:bonus_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyAmount, name: "BonusAmount"))
    BonusPayment.add_member(:assignment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "AssignmentId"))
    BonusPayment.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Reason"))
    BonusPayment.add_member(:grant_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "GrantTime"))
    BonusPayment.type = Types::BonusPayment
    BonusPaymentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BonusPayment, name: "member")
    Comparator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LessThan", traits: {"smithy.api#enumValue" => "LessThan"}))
    Comparator.add_member(:less_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LessThanOrEqualTo", traits: {"smithy.api#enumValue" => "LessThanOrEqualTo"}))
    Comparator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GreaterThan", traits: {"smithy.api#enumValue" => "GreaterThan"}))
    Comparator.add_member(:greater_than_or_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GreaterThanOrEqualTo", traits: {"smithy.api#enumValue" => "GreaterThanOrEqualTo"}))
    Comparator.add_member(:equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EqualTo", traits: {"smithy.api#enumValue" => "EqualTo"}))
    Comparator.add_member(:not_equal_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotEqualTo", traits: {"smithy.api#enumValue" => "NotEqualTo"}))
    Comparator.add_member(:exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Exists", traits: {"smithy.api#enumValue" => "Exists"}))
    Comparator.add_member(:does_not_exist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DoesNotExist", traits: {"smithy.api#enumValue" => "DoesNotExist"}))
    Comparator.add_member(:in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "In", traits: {"smithy.api#enumValue" => "In"}))
    Comparator.add_member(:not_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotIn", traits: {"smithy.api#enumValue" => "NotIn"}))
    CreateAdditionalAssignmentsForHITRequest.add_member(:hit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "HITId", traits: {"smithy.api#required" => {}}))
    CreateAdditionalAssignmentsForHITRequest.add_member(:number_of_additional_assignments, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfAdditionalAssignments", traits: {"smithy.api#required" => {}}))
    CreateAdditionalAssignmentsForHITRequest.add_member(:unique_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "UniqueRequestToken"))
    CreateAdditionalAssignmentsForHITRequest.type = Types::CreateAdditionalAssignmentsForHITRequest
    CreateAdditionalAssignmentsForHITResponse.type = Types::CreateAdditionalAssignmentsForHITResponse
    CreateHITRequest.add_member(:max_assignments, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxAssignments"))
    CreateHITRequest.add_member(:auto_approval_delay_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "AutoApprovalDelayInSeconds"))
    CreateHITRequest.add_member(:lifetime_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "LifetimeInSeconds", traits: {"smithy.api#required" => {}}))
    CreateHITRequest.add_member(:assignment_duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "AssignmentDurationInSeconds", traits: {"smithy.api#required" => {}}))
    CreateHITRequest.add_member(:reward, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyAmount, name: "Reward", traits: {"smithy.api#required" => {}}))
    CreateHITRequest.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Title", traits: {"smithy.api#required" => {}}))
    CreateHITRequest.add_member(:keywords, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Keywords"))
    CreateHITRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description", traits: {"smithy.api#required" => {}}))
    CreateHITRequest.add_member(:question, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Question"))
    CreateHITRequest.add_member(:requester_annotation, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequesterAnnotation"))
    CreateHITRequest.add_member(:qualification_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationRequirementList, name: "QualificationRequirements"))
    CreateHITRequest.add_member(:unique_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "UniqueRequestToken"))
    CreateHITRequest.add_member(:assignment_review_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewPolicy, name: "AssignmentReviewPolicy"))
    CreateHITRequest.add_member(:hit_review_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewPolicy, name: "HITReviewPolicy"))
    CreateHITRequest.add_member(:hit_layout_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "HITLayoutId"))
    CreateHITRequest.add_member(:hit_layout_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: HITLayoutParameterList, name: "HITLayoutParameters"))
    CreateHITRequest.type = Types::CreateHITRequest
    CreateHITResponse.add_member(:hit, ::Smithy::Schema::Shapes::MemberShape.new(target: HIT, name: "HIT"))
    CreateHITResponse.type = Types::CreateHITResponse
    CreateHITTypeRequest.add_member(:auto_approval_delay_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "AutoApprovalDelayInSeconds"))
    CreateHITTypeRequest.add_member(:assignment_duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "AssignmentDurationInSeconds", traits: {"smithy.api#required" => {}}))
    CreateHITTypeRequest.add_member(:reward, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyAmount, name: "Reward", traits: {"smithy.api#required" => {}}))
    CreateHITTypeRequest.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Title", traits: {"smithy.api#required" => {}}))
    CreateHITTypeRequest.add_member(:keywords, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Keywords"))
    CreateHITTypeRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description", traits: {"smithy.api#required" => {}}))
    CreateHITTypeRequest.add_member(:qualification_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationRequirementList, name: "QualificationRequirements"))
    CreateHITTypeRequest.type = Types::CreateHITTypeRequest
    CreateHITTypeResponse.add_member(:hit_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "HITTypeId"))
    CreateHITTypeResponse.type = Types::CreateHITTypeResponse
    CreateHITWithHITTypeRequest.add_member(:hit_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "HITTypeId", traits: {"smithy.api#required" => {}}))
    CreateHITWithHITTypeRequest.add_member(:max_assignments, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxAssignments"))
    CreateHITWithHITTypeRequest.add_member(:lifetime_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "LifetimeInSeconds", traits: {"smithy.api#required" => {}}))
    CreateHITWithHITTypeRequest.add_member(:question, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Question"))
    CreateHITWithHITTypeRequest.add_member(:requester_annotation, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequesterAnnotation"))
    CreateHITWithHITTypeRequest.add_member(:unique_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "UniqueRequestToken"))
    CreateHITWithHITTypeRequest.add_member(:assignment_review_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewPolicy, name: "AssignmentReviewPolicy"))
    CreateHITWithHITTypeRequest.add_member(:hit_review_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewPolicy, name: "HITReviewPolicy"))
    CreateHITWithHITTypeRequest.add_member(:hit_layout_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "HITLayoutId"))
    CreateHITWithHITTypeRequest.add_member(:hit_layout_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: HITLayoutParameterList, name: "HITLayoutParameters"))
    CreateHITWithHITTypeRequest.type = Types::CreateHITWithHITTypeRequest
    CreateHITWithHITTypeResponse.add_member(:hit, ::Smithy::Schema::Shapes::MemberShape.new(target: HIT, name: "HIT"))
    CreateHITWithHITTypeResponse.type = Types::CreateHITWithHITTypeResponse
    CreateQualificationTypeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateQualificationTypeRequest.add_member(:keywords, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Keywords"))
    CreateQualificationTypeRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description", traits: {"smithy.api#required" => {}}))
    CreateQualificationTypeRequest.add_member(:qualification_type_status, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationTypeStatus, name: "QualificationTypeStatus", traits: {"smithy.api#required" => {}}))
    CreateQualificationTypeRequest.add_member(:retry_delay_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "RetryDelayInSeconds"))
    CreateQualificationTypeRequest.add_member(:test, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Test"))
    CreateQualificationTypeRequest.add_member(:answer_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AnswerKey"))
    CreateQualificationTypeRequest.add_member(:test_duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TestDurationInSeconds"))
    CreateQualificationTypeRequest.add_member(:auto_granted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoGranted"))
    CreateQualificationTypeRequest.add_member(:auto_granted_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "AutoGrantedValue"))
    CreateQualificationTypeRequest.type = Types::CreateQualificationTypeRequest
    CreateQualificationTypeResponse.add_member(:qualification_type, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationType, name: "QualificationType"))
    CreateQualificationTypeResponse.type = Types::CreateQualificationTypeResponse
    CreateWorkerBlockRequest.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "WorkerId", traits: {"smithy.api#required" => {}}))
    CreateWorkerBlockRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Reason", traits: {"smithy.api#required" => {}}))
    CreateWorkerBlockRequest.type = Types::CreateWorkerBlockRequest
    CreateWorkerBlockResponse.type = Types::CreateWorkerBlockResponse
    CustomerIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "member")
    DeleteHITRequest.add_member(:hit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "HITId", traits: {"smithy.api#required" => {}}))
    DeleteHITRequest.type = Types::DeleteHITRequest
    DeleteHITResponse.type = Types::DeleteHITResponse
    DeleteQualificationTypeRequest.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "QualificationTypeId", traits: {"smithy.api#required" => {}}))
    DeleteQualificationTypeRequest.type = Types::DeleteQualificationTypeRequest
    DeleteQualificationTypeResponse.type = Types::DeleteQualificationTypeResponse
    DeleteWorkerBlockRequest.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "WorkerId", traits: {"smithy.api#required" => {}}))
    DeleteWorkerBlockRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Reason"))
    DeleteWorkerBlockRequest.type = Types::DeleteWorkerBlockRequest
    DeleteWorkerBlockResponse.type = Types::DeleteWorkerBlockResponse
    DisassociateQualificationFromWorkerRequest.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "WorkerId", traits: {"smithy.api#required" => {}}))
    DisassociateQualificationFromWorkerRequest.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "QualificationTypeId", traits: {"smithy.api#required" => {}}))
    DisassociateQualificationFromWorkerRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Reason"))
    DisassociateQualificationFromWorkerRequest.type = Types::DisassociateQualificationFromWorkerRequest
    DisassociateQualificationFromWorkerResponse.type = Types::DisassociateQualificationFromWorkerResponse
    EventType.add_member(:assignment_accepted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AssignmentAccepted", traits: {"smithy.api#enumValue" => "AssignmentAccepted"}))
    EventType.add_member(:assignment_abandoned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AssignmentAbandoned", traits: {"smithy.api#enumValue" => "AssignmentAbandoned"}))
    EventType.add_member(:assignment_returned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AssignmentReturned", traits: {"smithy.api#enumValue" => "AssignmentReturned"}))
    EventType.add_member(:assignment_submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AssignmentSubmitted", traits: {"smithy.api#enumValue" => "AssignmentSubmitted"}))
    EventType.add_member(:assignment_rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AssignmentRejected", traits: {"smithy.api#enumValue" => "AssignmentRejected"}))
    EventType.add_member(:assignment_approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AssignmentApproved", traits: {"smithy.api#enumValue" => "AssignmentApproved"}))
    EventType.add_member(:hit_created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HITCreated", traits: {"smithy.api#enumValue" => "HITCreated"}))
    EventType.add_member(:hit_expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HITExpired", traits: {"smithy.api#enumValue" => "HITExpired"}))
    EventType.add_member(:hit_reviewable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HITReviewable", traits: {"smithy.api#enumValue" => "HITReviewable"}))
    EventType.add_member(:hit_extended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HITExtended", traits: {"smithy.api#enumValue" => "HITExtended"}))
    EventType.add_member(:hit_disposed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HITDisposed", traits: {"smithy.api#enumValue" => "HITDisposed"}))
    EventType.add_member(:ping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ping", traits: {"smithy.api#enumValue" => "Ping"}))
    EventTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, name: "member")
    GetAccountBalanceRequest.type = Types::GetAccountBalanceRequest
    GetAccountBalanceResponse.add_member(:available_balance, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyAmount, name: "AvailableBalance"))
    GetAccountBalanceResponse.add_member(:on_hold_balance, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyAmount, name: "OnHoldBalance"))
    GetAccountBalanceResponse.type = Types::GetAccountBalanceResponse
    GetAssignmentRequest.add_member(:assignment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "AssignmentId", traits: {"smithy.api#required" => {}}))
    GetAssignmentRequest.type = Types::GetAssignmentRequest
    GetAssignmentResponse.add_member(:assignment, ::Smithy::Schema::Shapes::MemberShape.new(target: Assignment, name: "Assignment"))
    GetAssignmentResponse.add_member(:hit, ::Smithy::Schema::Shapes::MemberShape.new(target: HIT, name: "HIT"))
    GetAssignmentResponse.type = Types::GetAssignmentResponse
    GetFileUploadURLRequest.add_member(:assignment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "AssignmentId", traits: {"smithy.api#required" => {}}))
    GetFileUploadURLRequest.add_member(:question_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "QuestionIdentifier", traits: {"smithy.api#required" => {}}))
    GetFileUploadURLRequest.type = Types::GetFileUploadURLRequest
    GetFileUploadURLResponse.add_member(:file_upload_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FileUploadURL"))
    GetFileUploadURLResponse.type = Types::GetFileUploadURLResponse
    GetHITRequest.add_member(:hit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "HITId", traits: {"smithy.api#required" => {}}))
    GetHITRequest.type = Types::GetHITRequest
    GetHITResponse.add_member(:hit, ::Smithy::Schema::Shapes::MemberShape.new(target: HIT, name: "HIT"))
    GetHITResponse.type = Types::GetHITResponse
    GetQualificationScoreRequest.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "QualificationTypeId", traits: {"smithy.api#required" => {}}))
    GetQualificationScoreRequest.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "WorkerId", traits: {"smithy.api#required" => {}}))
    GetQualificationScoreRequest.type = Types::GetQualificationScoreRequest
    GetQualificationScoreResponse.add_member(:qualification, ::Smithy::Schema::Shapes::MemberShape.new(target: Qualification, name: "Qualification"))
    GetQualificationScoreResponse.type = Types::GetQualificationScoreResponse
    GetQualificationTypeRequest.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "QualificationTypeId", traits: {"smithy.api#required" => {}}))
    GetQualificationTypeRequest.type = Types::GetQualificationTypeRequest
    GetQualificationTypeResponse.add_member(:qualification_type, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationType, name: "QualificationType"))
    GetQualificationTypeResponse.type = Types::GetQualificationTypeResponse
    HIT.add_member(:hit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "HITId"))
    HIT.add_member(:hit_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "HITTypeId"))
    HIT.add_member(:hit_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "HITGroupId"))
    HIT.add_member(:hit_layout_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "HITLayoutId"))
    HIT.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    HIT.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Title"))
    HIT.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    HIT.add_member(:question, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Question"))
    HIT.add_member(:keywords, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Keywords"))
    HIT.add_member(:hit_status, ::Smithy::Schema::Shapes::MemberShape.new(target: HITStatus, name: "HITStatus"))
    HIT.add_member(:max_assignments, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxAssignments"))
    HIT.add_member(:reward, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyAmount, name: "Reward"))
    HIT.add_member(:auto_approval_delay_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "AutoApprovalDelayInSeconds"))
    HIT.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Expiration"))
    HIT.add_member(:assignment_duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "AssignmentDurationInSeconds"))
    HIT.add_member(:requester_annotation, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequesterAnnotation"))
    HIT.add_member(:qualification_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationRequirementList, name: "QualificationRequirements"))
    HIT.add_member(:hit_review_status, ::Smithy::Schema::Shapes::MemberShape.new(target: HITReviewStatus, name: "HITReviewStatus"))
    HIT.add_member(:number_of_assignments_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfAssignmentsPending"))
    HIT.add_member(:number_of_assignments_available, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfAssignmentsAvailable"))
    HIT.add_member(:number_of_assignments_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfAssignmentsCompleted"))
    HIT.type = Types::HIT
    HITAccessActions.add_member(:accept, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Accept", traits: {"smithy.api#enumValue" => "Accept"}))
    HITAccessActions.add_member(:preview_and_accept, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PreviewAndAccept", traits: {"smithy.api#enumValue" => "PreviewAndAccept"}))
    HITAccessActions.add_member(:discover_preview_and_accept, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DiscoverPreviewAndAccept", traits: {"smithy.api#enumValue" => "DiscoverPreviewAndAccept"}))
    HITLayoutParameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    HITLayoutParameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value", traits: {"smithy.api#required" => {}}))
    HITLayoutParameter.type = Types::HITLayoutParameter
    HITLayoutParameterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: HITLayoutParameter, name: "member")
    HITList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: HIT, name: "member")
    HITReviewStatus.add_member(:not_reviewed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotReviewed", traits: {"smithy.api#enumValue" => "NotReviewed"}))
    HITReviewStatus.add_member(:marked_for_review, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MarkedForReview", traits: {"smithy.api#enumValue" => "MarkedForReview"}))
    HITReviewStatus.add_member(:reviewed_appropriate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReviewedAppropriate", traits: {"smithy.api#enumValue" => "ReviewedAppropriate"}))
    HITReviewStatus.add_member(:reviewed_inappropriate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReviewedInappropriate", traits: {"smithy.api#enumValue" => "ReviewedInappropriate"}))
    HITStatus.add_member(:assignable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Assignable", traits: {"smithy.api#enumValue" => "Assignable"}))
    HITStatus.add_member(:unassignable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unassignable", traits: {"smithy.api#enumValue" => "Unassignable"}))
    HITStatus.add_member(:reviewable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Reviewable", traits: {"smithy.api#enumValue" => "Reviewable"}))
    HITStatus.add_member(:reviewing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Reviewing", traits: {"smithy.api#enumValue" => "Reviewing"}))
    HITStatus.add_member(:disposed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disposed", traits: {"smithy.api#enumValue" => "Disposed"}))
    IntegerList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "member")
    ListAssignmentsForHITRequest.add_member(:hit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "HITId", traits: {"smithy.api#required" => {}}))
    ListAssignmentsForHITRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListAssignmentsForHITRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultSize, name: "MaxResults"))
    ListAssignmentsForHITRequest.add_member(:assignment_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: AssignmentStatusList, name: "AssignmentStatuses"))
    ListAssignmentsForHITRequest.type = Types::ListAssignmentsForHITRequest
    ListAssignmentsForHITResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListAssignmentsForHITResponse.add_member(:num_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumResults"))
    ListAssignmentsForHITResponse.add_member(:assignments, ::Smithy::Schema::Shapes::MemberShape.new(target: AssignmentList, name: "Assignments"))
    ListAssignmentsForHITResponse.type = Types::ListAssignmentsForHITResponse
    ListBonusPaymentsRequest.add_member(:hit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "HITId"))
    ListBonusPaymentsRequest.add_member(:assignment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "AssignmentId"))
    ListBonusPaymentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListBonusPaymentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultSize, name: "MaxResults"))
    ListBonusPaymentsRequest.type = Types::ListBonusPaymentsRequest
    ListBonusPaymentsResponse.add_member(:num_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumResults"))
    ListBonusPaymentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListBonusPaymentsResponse.add_member(:bonus_payments, ::Smithy::Schema::Shapes::MemberShape.new(target: BonusPaymentList, name: "BonusPayments"))
    ListBonusPaymentsResponse.type = Types::ListBonusPaymentsResponse
    ListHITsForQualificationTypeRequest.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "QualificationTypeId", traits: {"smithy.api#required" => {}}))
    ListHITsForQualificationTypeRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListHITsForQualificationTypeRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultSize, name: "MaxResults"))
    ListHITsForQualificationTypeRequest.type = Types::ListHITsForQualificationTypeRequest
    ListHITsForQualificationTypeResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListHITsForQualificationTypeResponse.add_member(:num_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumResults"))
    ListHITsForQualificationTypeResponse.add_member(:hi_ts, ::Smithy::Schema::Shapes::MemberShape.new(target: HITList, name: "HITs"))
    ListHITsForQualificationTypeResponse.type = Types::ListHITsForQualificationTypeResponse
    ListHITsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListHITsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultSize, name: "MaxResults"))
    ListHITsRequest.type = Types::ListHITsRequest
    ListHITsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListHITsResponse.add_member(:num_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumResults"))
    ListHITsResponse.add_member(:hi_ts, ::Smithy::Schema::Shapes::MemberShape.new(target: HITList, name: "HITs"))
    ListHITsResponse.type = Types::ListHITsResponse
    ListQualificationRequestsRequest.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "QualificationTypeId"))
    ListQualificationRequestsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListQualificationRequestsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultSize, name: "MaxResults"))
    ListQualificationRequestsRequest.type = Types::ListQualificationRequestsRequest
    ListQualificationRequestsResponse.add_member(:num_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumResults"))
    ListQualificationRequestsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListQualificationRequestsResponse.add_member(:qualification_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationRequestList, name: "QualificationRequests"))
    ListQualificationRequestsResponse.type = Types::ListQualificationRequestsResponse
    ListQualificationTypesRequest.add_member(:query, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Query"))
    ListQualificationTypesRequest.add_member(:must_be_requestable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "MustBeRequestable", traits: {"smithy.api#required" => {}}))
    ListQualificationTypesRequest.add_member(:must_be_owned_by_caller, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "MustBeOwnedByCaller"))
    ListQualificationTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListQualificationTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultSize, name: "MaxResults"))
    ListQualificationTypesRequest.type = Types::ListQualificationTypesRequest
    ListQualificationTypesResponse.add_member(:num_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumResults"))
    ListQualificationTypesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListQualificationTypesResponse.add_member(:qualification_types, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationTypeList, name: "QualificationTypes"))
    ListQualificationTypesResponse.type = Types::ListQualificationTypesResponse
    ListReviewPolicyResultsForHITRequest.add_member(:hit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "HITId", traits: {"smithy.api#required" => {}}))
    ListReviewPolicyResultsForHITRequest.add_member(:policy_levels, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewPolicyLevelList, name: "PolicyLevels"))
    ListReviewPolicyResultsForHITRequest.add_member(:retrieve_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RetrieveActions"))
    ListReviewPolicyResultsForHITRequest.add_member(:retrieve_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RetrieveResults"))
    ListReviewPolicyResultsForHITRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListReviewPolicyResultsForHITRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultSize, name: "MaxResults"))
    ListReviewPolicyResultsForHITRequest.type = Types::ListReviewPolicyResultsForHITRequest
    ListReviewPolicyResultsForHITResponse.add_member(:hit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "HITId"))
    ListReviewPolicyResultsForHITResponse.add_member(:assignment_review_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewPolicy, name: "AssignmentReviewPolicy"))
    ListReviewPolicyResultsForHITResponse.add_member(:hit_review_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewPolicy, name: "HITReviewPolicy"))
    ListReviewPolicyResultsForHITResponse.add_member(:assignment_review_report, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewReport, name: "AssignmentReviewReport"))
    ListReviewPolicyResultsForHITResponse.add_member(:hit_review_report, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewReport, name: "HITReviewReport"))
    ListReviewPolicyResultsForHITResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListReviewPolicyResultsForHITResponse.type = Types::ListReviewPolicyResultsForHITResponse
    ListReviewableHITsRequest.add_member(:hit_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "HITTypeId"))
    ListReviewableHITsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewableHITStatus, name: "Status"))
    ListReviewableHITsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListReviewableHITsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultSize, name: "MaxResults"))
    ListReviewableHITsRequest.type = Types::ListReviewableHITsRequest
    ListReviewableHITsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListReviewableHITsResponse.add_member(:num_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumResults"))
    ListReviewableHITsResponse.add_member(:hi_ts, ::Smithy::Schema::Shapes::MemberShape.new(target: HITList, name: "HITs"))
    ListReviewableHITsResponse.type = Types::ListReviewableHITsResponse
    ListWorkerBlocksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListWorkerBlocksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultSize, name: "MaxResults"))
    ListWorkerBlocksRequest.type = Types::ListWorkerBlocksRequest
    ListWorkerBlocksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListWorkerBlocksResponse.add_member(:num_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumResults"))
    ListWorkerBlocksResponse.add_member(:worker_blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerBlockList, name: "WorkerBlocks"))
    ListWorkerBlocksResponse.type = Types::ListWorkerBlocksResponse
    ListWorkersWithQualificationTypeRequest.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "QualificationTypeId", traits: {"smithy.api#required" => {}}))
    ListWorkersWithQualificationTypeRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationStatus, name: "Status"))
    ListWorkersWithQualificationTypeRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListWorkersWithQualificationTypeRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultSize, name: "MaxResults"))
    ListWorkersWithQualificationTypeRequest.type = Types::ListWorkersWithQualificationTypeRequest
    ListWorkersWithQualificationTypeResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListWorkersWithQualificationTypeResponse.add_member(:num_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumResults"))
    ListWorkersWithQualificationTypeResponse.add_member(:qualifications, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationList, name: "Qualifications"))
    ListWorkersWithQualificationTypeResponse.type = Types::ListWorkersWithQualificationTypeResponse
    Locale.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryParameters, name: "Country", traits: {"smithy.api#required" => {}}))
    Locale.add_member(:subdivision, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryParameters, name: "Subdivision"))
    Locale.type = Types::Locale
    LocaleList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "member")
    NotificationSpecification.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Destination", traits: {"smithy.api#required" => {}}))
    NotificationSpecification.add_member(:transport, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationTransport, name: "Transport", traits: {"smithy.api#required" => {}}))
    NotificationSpecification.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Version", traits: {"smithy.api#required" => {}}))
    NotificationSpecification.add_member(:event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypeList, name: "EventTypes", traits: {"smithy.api#required" => {}}))
    NotificationSpecification.type = Types::NotificationSpecification
    NotificationTransport.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Email", traits: {"smithy.api#enumValue" => "Email"}))
    NotificationTransport.add_member(:sqs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQS", traits: {"smithy.api#enumValue" => "SQS"}))
    NotificationTransport.add_member(:sns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNS", traits: {"smithy.api#enumValue" => "SNS"}))
    NotifyWorkersFailureCode.add_member(:soft_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SoftFailure", traits: {"smithy.api#enumValue" => "SoftFailure"}))
    NotifyWorkersFailureCode.add_member(:hard_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HardFailure", traits: {"smithy.api#enumValue" => "HardFailure"}))
    NotifyWorkersFailureStatus.add_member(:notify_workers_failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyWorkersFailureCode, name: "NotifyWorkersFailureCode"))
    NotifyWorkersFailureStatus.add_member(:notify_workers_failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NotifyWorkersFailureMessage"))
    NotifyWorkersFailureStatus.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "WorkerId"))
    NotifyWorkersFailureStatus.type = Types::NotifyWorkersFailureStatus
    NotifyWorkersFailureStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyWorkersFailureStatus, name: "member")
    NotifyWorkersRequest.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Subject", traits: {"smithy.api#required" => {}}))
    NotifyWorkersRequest.add_member(:message_text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MessageText", traits: {"smithy.api#required" => {}}))
    NotifyWorkersRequest.add_member(:worker_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerIdList, name: "WorkerIds", traits: {"smithy.api#required" => {}}))
    NotifyWorkersRequest.type = Types::NotifyWorkersRequest
    NotifyWorkersResponse.add_member(:notify_workers_failure_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: NotifyWorkersFailureStatusList, name: "NotifyWorkersFailureStatuses"))
    NotifyWorkersResponse.type = Types::NotifyWorkersResponse
    ParameterMapEntry.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key"))
    ParameterMapEntry.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Values"))
    ParameterMapEntry.type = Types::ParameterMapEntry
    ParameterMapEntryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterMapEntry, name: "member")
    PolicyParameter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key"))
    PolicyParameter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Values"))
    PolicyParameter.add_member(:map_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterMapEntryList, name: "MapEntries"))
    PolicyParameter.type = Types::PolicyParameter
    PolicyParameterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyParameter, name: "member")
    Qualification.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "QualificationTypeId"))
    Qualification.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "WorkerId"))
    Qualification.add_member(:grant_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "GrantTime"))
    Qualification.add_member(:integer_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "IntegerValue"))
    Qualification.add_member(:locale_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "LocaleValue"))
    Qualification.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationStatus, name: "Status"))
    Qualification.type = Types::Qualification
    QualificationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Qualification, name: "member")
    QualificationRequest.add_member(:qualification_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "QualificationRequestId"))
    QualificationRequest.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "QualificationTypeId"))
    QualificationRequest.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "WorkerId"))
    QualificationRequest.add_member(:test, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Test"))
    QualificationRequest.add_member(:answer, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Answer"))
    QualificationRequest.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubmitTime"))
    QualificationRequest.type = Types::QualificationRequest
    QualificationRequestList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationRequest, name: "member")
    QualificationRequirement.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "QualificationTypeId", traits: {"smithy.api#required" => {}}))
    QualificationRequirement.add_member(:comparator, ::Smithy::Schema::Shapes::MemberShape.new(target: Comparator, name: "Comparator", traits: {"smithy.api#required" => {}}))
    QualificationRequirement.add_member(:integer_values, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerList, name: "IntegerValues"))
    QualificationRequirement.add_member(:locale_values, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleList, name: "LocaleValues"))
    QualificationRequirement.add_member(:required_to_preview, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RequiredToPreview", traits: {"smithy.api#deprecated" => {}}))
    QualificationRequirement.add_member(:actions_guarded, ::Smithy::Schema::Shapes::MemberShape.new(target: HITAccessActions, name: "ActionsGuarded"))
    QualificationRequirement.type = Types::QualificationRequirement
    QualificationRequirementList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationRequirement, name: "member")
    QualificationStatus.add_member(:granted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Granted", traits: {"smithy.api#enumValue" => "Granted"}))
    QualificationStatus.add_member(:revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Revoked", traits: {"smithy.api#enumValue" => "Revoked"}))
    QualificationType.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "QualificationTypeId"))
    QualificationType.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    QualificationType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    QualificationType.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    QualificationType.add_member(:keywords, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Keywords"))
    QualificationType.add_member(:qualification_type_status, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationTypeStatus, name: "QualificationTypeStatus"))
    QualificationType.add_member(:test, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Test"))
    QualificationType.add_member(:test_duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TestDurationInSeconds"))
    QualificationType.add_member(:answer_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AnswerKey"))
    QualificationType.add_member(:retry_delay_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "RetryDelayInSeconds"))
    QualificationType.add_member(:is_requestable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsRequestable"))
    QualificationType.add_member(:auto_granted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoGranted"))
    QualificationType.add_member(:auto_granted_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "AutoGrantedValue"))
    QualificationType.type = Types::QualificationType
    QualificationTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationType, name: "member")
    QualificationTypeStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Active", traits: {"smithy.api#enumValue" => "Active"}))
    QualificationTypeStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Inactive", traits: {"smithy.api#enumValue" => "Inactive"}))
    RejectAssignmentRequest.add_member(:assignment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "AssignmentId", traits: {"smithy.api#required" => {}}))
    RejectAssignmentRequest.add_member(:requester_feedback, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequesterFeedback", traits: {"smithy.api#required" => {}}))
    RejectAssignmentRequest.type = Types::RejectAssignmentRequest
    RejectAssignmentResponse.type = Types::RejectAssignmentResponse
    RejectQualificationRequestRequest.add_member(:qualification_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "QualificationRequestId", traits: {"smithy.api#required" => {}}))
    RejectQualificationRequestRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Reason"))
    RejectQualificationRequestRequest.type = Types::RejectQualificationRequestRequest
    RejectQualificationRequestResponse.type = Types::RejectQualificationRequestResponse
    RequestError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    RequestError.add_member(:turk_error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: TurkErrorCode, name: "TurkErrorCode"))
    RequestError.type = Types::RequestError
    ReviewActionDetail.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "ActionId"))
    ReviewActionDetail.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ActionName"))
    ReviewActionDetail.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "TargetId"))
    ReviewActionDetail.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetType"))
    ReviewActionDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewActionStatus, name: "Status"))
    ReviewActionDetail.add_member(:complete_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CompleteTime"))
    ReviewActionDetail.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Result"))
    ReviewActionDetail.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    ReviewActionDetail.type = Types::ReviewActionDetail
    ReviewActionDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewActionDetail, name: "member")
    ReviewActionStatus.add_member(:intended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Intended", traits: {"smithy.api#enumValue" => "Intended"}))
    ReviewActionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Succeeded", traits: {"smithy.api#enumValue" => "Succeeded"}))
    ReviewActionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    ReviewActionStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Cancelled", traits: {"smithy.api#enumValue" => "Cancelled"}))
    ReviewPolicy.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    ReviewPolicy.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyParameterList, name: "Parameters"))
    ReviewPolicy.type = Types::ReviewPolicy
    ReviewPolicyLevel.add_member(:assignment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Assignment", traits: {"smithy.api#enumValue" => "Assignment"}))
    ReviewPolicyLevel.add_member(:hit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIT", traits: {"smithy.api#enumValue" => "HIT"}))
    ReviewPolicyLevelList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewPolicyLevel, name: "member")
    ReviewReport.add_member(:review_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewResultDetailList, name: "ReviewResults"))
    ReviewReport.add_member(:review_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewActionDetailList, name: "ReviewActions"))
    ReviewReport.type = Types::ReviewReport
    ReviewResultDetail.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "ActionId"))
    ReviewResultDetail.add_member(:subject_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "SubjectId"))
    ReviewResultDetail.add_member(:subject_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubjectType"))
    ReviewResultDetail.add_member(:question_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "QuestionId"))
    ReviewResultDetail.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key"))
    ReviewResultDetail.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    ReviewResultDetail.type = Types::ReviewResultDetail
    ReviewResultDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewResultDetail, name: "member")
    ReviewableHITStatus.add_member(:reviewable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Reviewable", traits: {"smithy.api#enumValue" => "Reviewable"}))
    ReviewableHITStatus.add_member(:reviewing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Reviewing", traits: {"smithy.api#enumValue" => "Reviewing"}))
    SendBonusRequest.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "WorkerId", traits: {"smithy.api#required" => {}}))
    SendBonusRequest.add_member(:bonus_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyAmount, name: "BonusAmount", traits: {"smithy.api#required" => {}}))
    SendBonusRequest.add_member(:assignment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "AssignmentId", traits: {"smithy.api#required" => {}}))
    SendBonusRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Reason", traits: {"smithy.api#required" => {}}))
    SendBonusRequest.add_member(:unique_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "UniqueRequestToken"))
    SendBonusRequest.type = Types::SendBonusRequest
    SendBonusResponse.type = Types::SendBonusResponse
    SendTestEventNotificationRequest.add_member(:notification, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationSpecification, name: "Notification", traits: {"smithy.api#required" => {}}))
    SendTestEventNotificationRequest.add_member(:test_event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, name: "TestEventType", traits: {"smithy.api#required" => {}}))
    SendTestEventNotificationRequest.type = Types::SendTestEventNotificationRequest
    SendTestEventNotificationResponse.type = Types::SendTestEventNotificationResponse
    ServiceFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ServiceFault.add_member(:turk_error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: TurkErrorCode, name: "TurkErrorCode"))
    ServiceFault.type = Types::ServiceFault
    StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    UpdateExpirationForHITRequest.add_member(:hit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "HITId", traits: {"smithy.api#required" => {}}))
    UpdateExpirationForHITRequest.add_member(:expire_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExpireAt", traits: {"smithy.api#required" => {}}))
    UpdateExpirationForHITRequest.type = Types::UpdateExpirationForHITRequest
    UpdateExpirationForHITResponse.type = Types::UpdateExpirationForHITResponse
    UpdateHITReviewStatusRequest.add_member(:hit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "HITId", traits: {"smithy.api#required" => {}}))
    UpdateHITReviewStatusRequest.add_member(:revert, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Revert"))
    UpdateHITReviewStatusRequest.type = Types::UpdateHITReviewStatusRequest
    UpdateHITReviewStatusResponse.type = Types::UpdateHITReviewStatusResponse
    UpdateHITTypeOfHITRequest.add_member(:hit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "HITId", traits: {"smithy.api#required" => {}}))
    UpdateHITTypeOfHITRequest.add_member(:hit_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "HITTypeId", traits: {"smithy.api#required" => {}}))
    UpdateHITTypeOfHITRequest.type = Types::UpdateHITTypeOfHITRequest
    UpdateHITTypeOfHITResponse.type = Types::UpdateHITTypeOfHITResponse
    UpdateNotificationSettingsRequest.add_member(:hit_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "HITTypeId", traits: {"smithy.api#required" => {}}))
    UpdateNotificationSettingsRequest.add_member(:notification, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationSpecification, name: "Notification"))
    UpdateNotificationSettingsRequest.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Active"))
    UpdateNotificationSettingsRequest.type = Types::UpdateNotificationSettingsRequest
    UpdateNotificationSettingsResponse.type = Types::UpdateNotificationSettingsResponse
    UpdateQualificationTypeRequest.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "QualificationTypeId", traits: {"smithy.api#required" => {}}))
    UpdateQualificationTypeRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    UpdateQualificationTypeRequest.add_member(:qualification_type_status, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationTypeStatus, name: "QualificationTypeStatus"))
    UpdateQualificationTypeRequest.add_member(:test, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Test"))
    UpdateQualificationTypeRequest.add_member(:answer_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AnswerKey"))
    UpdateQualificationTypeRequest.add_member(:test_duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TestDurationInSeconds"))
    UpdateQualificationTypeRequest.add_member(:retry_delay_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "RetryDelayInSeconds"))
    UpdateQualificationTypeRequest.add_member(:auto_granted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoGranted"))
    UpdateQualificationTypeRequest.add_member(:auto_granted_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "AutoGrantedValue"))
    UpdateQualificationTypeRequest.type = Types::UpdateQualificationTypeRequest
    UpdateQualificationTypeResponse.add_member(:qualification_type, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationType, name: "QualificationType"))
    UpdateQualificationTypeResponse.type = Types::UpdateQualificationTypeResponse
    WorkerBlock.add_member(:worker_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "WorkerId"))
    WorkerBlock.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Reason"))
    WorkerBlock.type = Types::WorkerBlock
    WorkerBlockList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerBlock, name: "member")

    MTurkRequesterServiceV20170117 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.mturk#MTurkRequesterServiceV20170117"
      service.name = "MTurkRequesterServiceV20170117"
      service.version = "2017-01-17"
      service.traits = {"aws.api#service" => {"sdkId" => "MTurk", "arnNamespace" => "mturk-requester", "cloudFormationName" => "MTurk", "cloudTrailEventSource" => "mturk.amazonaws.com", "docId" => "mturk-requester-2017-01-17", "endpointPrefix" => "mturk-requester"}, "aws.auth#sigv4" => {"name" => "mturk-requester"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Mechanical Turk", "smithy.api#xmlNamespace" => {"uri" => "http://requester.mturk.com/2017-01-17/"}}
      service.add_operation(:accept_qualification_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#AcceptQualificationRequest"
        operation.name = "AcceptQualificationRequest"
        operation.input = AcceptQualificationRequestRequest
        operation.output = AcceptQualificationRequestResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {}
      end)
      service.add_operation(:approve_assignment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ApproveAssignment"
        operation.name = "ApproveAssignment"
        operation.input = ApproveAssignmentRequest
        operation.output = ApproveAssignmentResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_qualification_with_worker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#AssociateQualificationWithWorker"
        operation.name = "AssociateQualificationWithWorker"
        operation.input = AssociateQualificationWithWorkerRequest
        operation.output = AssociateQualificationWithWorkerResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {}
      end)
      service.add_operation(:create_additional_assignments_for_hit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#CreateAdditionalAssignmentsForHIT"
        operation.name = "CreateAdditionalAssignmentsForHIT"
        operation.input = CreateAdditionalAssignmentsForHITRequest
        operation.output = CreateAdditionalAssignmentsForHITResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {}
      end)
      service.add_operation(:create_hit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#CreateHIT"
        operation.name = "CreateHIT"
        operation.input = CreateHITRequest
        operation.output = CreateHITResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {}
      end)
      service.add_operation(:create_hit_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#CreateHITType"
        operation.name = "CreateHITType"
        operation.input = CreateHITTypeRequest
        operation.output = CreateHITTypeResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_hit_with_hit_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#CreateHITWithHITType"
        operation.name = "CreateHITWithHITType"
        operation.input = CreateHITWithHITTypeRequest
        operation.output = CreateHITWithHITTypeResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {}
      end)
      service.add_operation(:create_qualification_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#CreateQualificationType"
        operation.name = "CreateQualificationType"
        operation.input = CreateQualificationTypeRequest
        operation.output = CreateQualificationTypeResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {}
      end)
      service.add_operation(:create_worker_block, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#CreateWorkerBlock"
        operation.name = "CreateWorkerBlock"
        operation.input = CreateWorkerBlockRequest
        operation.output = CreateWorkerBlockResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {}
      end)
      service.add_operation(:delete_hit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#DeleteHIT"
        operation.name = "DeleteHIT"
        operation.input = DeleteHITRequest
        operation.output = DeleteHITResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_qualification_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#DeleteQualificationType"
        operation.name = "DeleteQualificationType"
        operation.input = DeleteQualificationTypeRequest
        operation.output = DeleteQualificationTypeResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_worker_block, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#DeleteWorkerBlock"
        operation.name = "DeleteWorkerBlock"
        operation.input = DeleteWorkerBlockRequest
        operation.output = DeleteWorkerBlockResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_qualification_from_worker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#DisassociateQualificationFromWorker"
        operation.name = "DisassociateQualificationFromWorker"
        operation.input = DisassociateQualificationFromWorkerRequest
        operation.output = DisassociateQualificationFromWorkerResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {}
      end)
      service.add_operation(:get_account_balance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#GetAccountBalance"
        operation.name = "GetAccountBalance"
        operation.input = GetAccountBalanceRequest
        operation.output = GetAccountBalanceResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_assignment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#GetAssignment"
        operation.name = "GetAssignment"
        operation.input = GetAssignmentRequest
        operation.output = GetAssignmentResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_file_upload_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#GetFileUploadURL"
        operation.name = "GetFileUploadURL"
        operation.input = GetFileUploadURLRequest
        operation.output = GetFileUploadURLResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_hit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#GetHIT"
        operation.name = "GetHIT"
        operation.input = GetHITRequest
        operation.output = GetHITResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_qualification_score, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#GetQualificationScore"
        operation.name = "GetQualificationScore"
        operation.input = GetQualificationScoreRequest
        operation.output = GetQualificationScoreResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_qualification_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#GetQualificationType"
        operation.name = "GetQualificationType"
        operation.input = GetQualificationTypeRequest
        operation.output = GetQualificationTypeResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_assignments_for_hit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListAssignmentsForHIT"
        operation.name = "ListAssignmentsForHIT"
        operation.input = ListAssignmentsForHITRequest
        operation.output = ListAssignmentsForHITResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListAssignmentsForHIT.new
      end)
      service.add_operation(:list_bonus_payments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListBonusPayments"
        operation.name = "ListBonusPayments"
        operation.input = ListBonusPaymentsRequest
        operation.output = ListBonusPaymentsResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListBonusPayments.new
      end)
      service.add_operation(:list_hi_ts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListHITs"
        operation.name = "ListHITs"
        operation.input = ListHITsRequest
        operation.output = ListHITsResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListHITs.new
      end)
      service.add_operation(:list_hi_ts_for_qualification_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListHITsForQualificationType"
        operation.name = "ListHITsForQualificationType"
        operation.input = ListHITsForQualificationTypeRequest
        operation.output = ListHITsForQualificationTypeResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListHITsForQualificationType.new
      end)
      service.add_operation(:list_qualification_requests, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListQualificationRequests"
        operation.name = "ListQualificationRequests"
        operation.input = ListQualificationRequestsRequest
        operation.output = ListQualificationRequestsResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListQualificationRequests.new
      end)
      service.add_operation(:list_qualification_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListQualificationTypes"
        operation.name = "ListQualificationTypes"
        operation.input = ListQualificationTypesRequest
        operation.output = ListQualificationTypesResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListQualificationTypes.new
      end)
      service.add_operation(:list_review_policy_results_for_hit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListReviewPolicyResultsForHIT"
        operation.name = "ListReviewPolicyResultsForHIT"
        operation.input = ListReviewPolicyResultsForHITRequest
        operation.output = ListReviewPolicyResultsForHITResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListReviewPolicyResultsForHIT.new
      end)
      service.add_operation(:list_reviewable_hi_ts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListReviewableHITs"
        operation.name = "ListReviewableHITs"
        operation.input = ListReviewableHITsRequest
        operation.output = ListReviewableHITsResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListReviewableHITs.new
      end)
      service.add_operation(:list_worker_blocks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListWorkerBlocks"
        operation.name = "ListWorkerBlocks"
        operation.input = ListWorkerBlocksRequest
        operation.output = ListWorkerBlocksResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListWorkerBlocks.new
      end)
      service.add_operation(:list_workers_with_qualification_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListWorkersWithQualificationType"
        operation.name = "ListWorkersWithQualificationType"
        operation.input = ListWorkersWithQualificationTypeRequest
        operation.output = ListWorkersWithQualificationTypeResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListWorkersWithQualificationType.new
      end)
      service.add_operation(:notify_workers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#NotifyWorkers"
        operation.name = "NotifyWorkers"
        operation.input = NotifyWorkersRequest
        operation.output = NotifyWorkersResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {}
      end)
      service.add_operation(:reject_assignment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#RejectAssignment"
        operation.name = "RejectAssignment"
        operation.input = RejectAssignmentRequest
        operation.output = RejectAssignmentResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:reject_qualification_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#RejectQualificationRequest"
        operation.name = "RejectQualificationRequest"
        operation.input = RejectQualificationRequestRequest
        operation.output = RejectQualificationRequestResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {}
      end)
      service.add_operation(:send_bonus, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#SendBonus"
        operation.name = "SendBonus"
        operation.input = SendBonusRequest
        operation.output = SendBonusResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {}
      end)
      service.add_operation(:send_test_event_notification, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#SendTestEventNotification"
        operation.name = "SendTestEventNotification"
        operation.input = SendTestEventNotificationRequest
        operation.output = SendTestEventNotificationResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {}
      end)
      service.add_operation(:update_expiration_for_hit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#UpdateExpirationForHIT"
        operation.name = "UpdateExpirationForHIT"
        operation.input = UpdateExpirationForHITRequest
        operation.output = UpdateExpirationForHITResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_hit_review_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#UpdateHITReviewStatus"
        operation.name = "UpdateHITReviewStatus"
        operation.input = UpdateHITReviewStatusRequest
        operation.output = UpdateHITReviewStatusResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_hit_type_of_hit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#UpdateHITTypeOfHIT"
        operation.name = "UpdateHITTypeOfHIT"
        operation.input = UpdateHITTypeOfHITRequest
        operation.output = UpdateHITTypeOfHITResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_notification_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#UpdateNotificationSettings"
        operation.name = "UpdateNotificationSettings"
        operation.input = UpdateNotificationSettingsRequest
        operation.output = UpdateNotificationSettingsResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_qualification_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#UpdateQualificationType"
        operation.name = "UpdateQualificationType"
        operation.input = UpdateQualificationTypeRequest
        operation.output = UpdateQualificationTypeResponse
        operation.errors << RequestError
        operation.errors << ServiceFault
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
